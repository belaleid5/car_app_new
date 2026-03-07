import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

enum ImagesType { svg, png, network, asset, file, memory, networkSvg }

class CustomImage extends StatelessWidget {
  const CustomImage({
    required this.imageType,
    required this.imagePath,
    super.key,
    this.height,
    this.borderRadius = 5.0,
    this.width,
    this.boxFit = BoxFit.fill,
    this.color,
    this.applySvgColor = false,
    this. fallbackPath,
  });

  final ImagesType imageType;
  final String imagePath;
  final double? height;
  final double borderRadius;
  final double? width;
  final BoxFit boxFit;
  final Color? color;
  final bool applySvgColor;
  final String? fallbackPath;

  String get _securePath => imagePath.replaceFirst('http://', 'https://');

  bool _isValidUrl(String url) {
    final uri = Uri.tryParse(url);
    return uri != null && uri.hasAbsolutePath && uri.hasScheme;
  }

  Widget _errorImage() {
    return ErrorImage(
      errorHeight: height,
      errorWidth: width,
      fit: boxFit,
      fallbackPath: fallbackPath,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;

    switch (imageType) {
      case ImagesType.svg:
        imageWidget = SvgPicture.asset(
          imagePath,
          height: height,
          width: width,
          fit: boxFit,
          colorFilter: applySvgColor
              ? ColorFilter.mode(color ?? Colors.red, BlendMode.srcIn)
              : null,
        );

      case ImagesType.networkSvg:
        debugPrint('🔵 networkSvg URL: $_securePath');
        if (!_isValidUrl(_securePath)) {
          debugPrint('❌ Invalid URL: $_securePath');
          return _errorImage();
        }
        imageWidget = _SvgNetworkImage(
          url: _securePath,
          height: height,
          width: width,
          fit: boxFit,
          colorFilter: applySvgColor
              ? ColorFilter.mode(color ?? Colors.red, BlendMode.srcIn)
              : null,
          errorWidget: _errorImage(),
          placeholder: _PlaceholderImage(width: width, height: height),
        );

      case ImagesType.png:
      case ImagesType.asset:
        imageWidget = Image.asset(
          imagePath,
          height: height,
          width: width,
          color: color,
          fit: boxFit,
          errorBuilder: (context, error, stackTrace) {
            debugPrint('❌ Asset image error: $error');
            return _errorImage();
          },
        );

      case ImagesType.file:
        imageWidget = Image.file(
          File(imagePath),
          height: height,
          width: width,
          color: color,
          fit: boxFit,
          errorBuilder: (context, error, stackTrace) {
            debugPrint('❌ File image error: $error');
            return _errorImage();
          },
        );

      case ImagesType.memory:
        imageWidget = Image.memory(
          base64Decode(imagePath.split('base64,').last),
          height: height,
          width: width,
          color: color,
          fit: boxFit,
          errorBuilder: (context, error, stackTrace) {
            debugPrint('❌ Memory image error: $error');
            return _errorImage();
          },
        );

      case ImagesType.network:
        debugPrint('🔵 network URL: $_securePath');
        if (!_isValidUrl(_securePath)) {
          debugPrint('❌ Invalid URL: $_securePath');
          return _errorImage();
        }
        imageWidget = kIsWeb
            ? Image.network(
                _securePath,
                height: height,
                width: width,
                color: color,
                fit: boxFit,
                errorBuilder: (context, error, stackTrace) {
                  debugPrint('❌ Network image error: $error');
                  return _errorImage();
                },
              )
            : CachedNetworkImage(
                imageUrl: _securePath,
                height: height,
                width: width,
                color: color,
                fit: boxFit,
                placeholder: (context, url) {
                  debugPrint('⏳ Loading network image: $url');
                  return _PlaceholderImage(
                    width: width,
                    height: height,
                  );
                },
                errorWidget: (context, url, error) {
                  debugPrint('❌ CachedNetworkImage error: $error');
                  return _errorImage();
                },
              );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: imageWidget,
    );
  }
}

class _SvgNetworkImage extends StatefulWidget {
  const _SvgNetworkImage({
    required this.url,
    required this.errorWidget,
    required this.placeholder,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
    this.colorFilter,
  });

  final String url;
  final double? height;
  final double? width;
  final BoxFit fit;
  final ColorFilter? colorFilter;
  final Widget errorWidget;
  final Widget placeholder;

  @override
  State<_SvgNetworkImage> createState() => _SvgNetworkImageState();
}

class _SvgNetworkImageState extends State<_SvgNetworkImage> {
  String? _svgData;
  bool _hasError = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadSvg();
  }

  Future<void> _loadSvg() async {
    try {
      final response = await http.get(Uri.parse(widget.url));
      if (response.statusCode == 200) {
        debugPrint('✅ SVG loaded: ${widget.url}');
        if (mounted) {
          setState(() {
            _svgData = response.body;
            _isLoading = false;
          });
        }
      } else {
        debugPrint('❌ SVG error status: ${response.statusCode}');
        if (mounted) {
          setState(() {
            _hasError = true;
            _isLoading = false;
          });
        }
      }
    } catch (e) {
      debugPrint('❌ SVG fetch error: $e');
      if (mounted) {
        setState(() {
          _hasError = true;
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) return widget.placeholder;
    if (_hasError || _svgData == null) return widget.errorWidget;

    return SvgPicture.string(
      _svgData!,
      height: widget.height,
      width: widget.width,
      fit: widget.fit,
      colorFilter: widget.colorFilter,
    );
  }
}

class _PlaceholderImage extends StatelessWidget {
  const _PlaceholderImage({this.width, this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.grey.shade100,
      child: Center(
        child: SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}

class ErrorImage extends StatelessWidget {
  const ErrorImage({
    super.key,
    this.errorWidth,
    this.errorHeight,
    this.fit,
    this.fallbackPath,
  });

  final double? errorWidth;
  final double? errorHeight;
  final BoxFit? fit;
  final String? fallbackPath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      fallbackPath??AppImages.errorImage,
      height: errorHeight ?? 92,
      width: errorWidth ?? 92,
      fit: fit ?? BoxFit.cover,
    );
  }
}
