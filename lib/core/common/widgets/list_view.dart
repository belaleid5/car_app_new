import 'dart:async';

import 'package:car_app_new/core/common/widgets/loading_widget.dart';
import 'package:car_app_new/core/common/widgets/smooth_list_view.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class PaginatedListView<T> extends StatefulWidget {
  const PaginatedListView({
    super.key,
    this.itemCount = 0,
    required this.itemBuilder,
    this.isLoading = false,
    this.showScrollToTop = false,
    this.hasMore = true,
    this.shrinkWrap = false,
    this.isSmoothListView = true,
    this.reverse = false,
    this.loadMore,
    this.physics,
    this.refreshCallback,
    this.loadingWidget,
    this.preloadThreshold = 200.0,
    this.padding = EdgeInsets.zero,
    this.scrollDirection = Axis.vertical,
  });
  final int itemCount;
  final EdgeInsets padding;
  final IndexedWidgetBuilder itemBuilder;
  final bool isLoading;
  final bool hasMore;
  final bool shrinkWrap;
  final bool isSmoothListView;
  final ScrollPhysics? physics;
  final VoidCallback? loadMore;
  final bool showScrollToTop;
  final bool reverse;
  final Future<void> Function()? refreshCallback;
  final Widget? loadingWidget;
  final double preloadThreshold;
  final Axis scrollDirection;

  @override
  State<PaginatedListView<dynamic>> createState() => _PaginatedListViewState();
}

class _PaginatedListViewState extends State<PaginatedListView<dynamic>> {
  final _controller = ScrollController();
  Timer? _debounceTimer;
  bool internalShowScrollToTop = false;

  void _scrollListener() {
    if (skipPagination) return;

    if (!_controller.hasClients) return;
    if (widget.showScrollToTop && widget.scrollDirection == Axis.vertical) {
      setState(() {
        internalShowScrollToTop = _controller.offset > 200;
      });
    }
    if (_controller.offset >=
            _controller.position.maxScrollExtent - widget.preloadThreshold &&
        !_controller.position.outOfRange) {
      if (_debounceTimer?.isActive ?? false) return;

      _debounceTimer = Timer(const Duration(milliseconds: 300), () {
        widget.loadMore?.call();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkInitialFill());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkInitialFill());
  }

  @override
  void didUpdateWidget(covariant PaginatedListView<dynamic> oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkInitialFill());
  }

  bool get skipPagination => widget.isLoading || !widget.hasMore;

  void _checkInitialFill() {
    if (skipPagination) return;

    if (_controller.position.maxScrollExtent == 0) {
      widget.loadMore?.call();
    }
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _controller
      ..removeListener(_scrollListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final listView = Stack(
      children: [
        CustomListView(
          controller: _controller,
          itemCount: widget.itemCount,
          shrinkWrap: widget.shrinkWrap,
          padding: widget.padding,
          hasMore: widget.hasMore,
          itemBuilder: widget.itemBuilder,
          loadingWidget: widget.loadingWidget,
          isSmoothListView: widget.isSmoothListView,
          physics: widget.physics,
          reverse: widget.reverse,
          scrollDirection: widget.scrollDirection,
        ),
        if (widget.showScrollToTop &&
            internalShowScrollToTop &&
            widget.scrollDirection == Axis.vertical)
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              backgroundColor: context.color.primary,
              onPressed: () => _controller.animateTo(
                0,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              ),
              child: const Icon(Icons.arrow_upward, color: Colors.white),
            ),
          ),
      ],
    );

    if (widget.itemCount == 0 && !widget.isLoading) {
      return widget.refreshCallback != null
          ? SafeArea(
              child: RefreshIndicator(
                key: const Key('_ui1'),
                color: context.color.white,
                backgroundColor: context.color.primary,
                onRefresh: widget.refreshCallback!,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: const SizedBox(),
                  ),
                ),
              ),
            )
          : const SizedBox();
    }
    return widget.refreshCallback != null
        ? SafeArea(
            child: RefreshIndicator(
              key: const Key('_ui2'),
              color: context.color.white,
              backgroundColor: context.color.primary,
              onRefresh: widget.refreshCallback!,
              child: listView,
            ),
          )
        : listView;
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.controller,
    required this.itemCount,
    required this.hasMore,
    required this.itemBuilder,
    this.loadingWidget,
    this.reverse = false,
    this.shrinkWrap = false,
    this.physics,
    required this.isSmoothListView,
    this.padding = EdgeInsets.zero,
    this.scrollDirection = Axis.vertical,
  });
  final ScrollController controller;
  final int itemCount;
  final bool hasMore;
  final IndexedWidgetBuilder itemBuilder;
  final Widget? loadingWidget;
  final bool isSmoothListView;
  final bool reverse;
  final bool shrinkWrap;
  final EdgeInsets padding;
  final ScrollPhysics? physics;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    return isSmoothListView
        ? SmoothListView.builder(
            padding: padding,
            reverse: reverse,
            scrollDirection: scrollDirection,
            controller: controller,
            duration: const Duration(milliseconds: 300),
            itemBuilder: (context, index) {
              if (index < itemCount) {
                return itemBuilder(context, index);
              }

              return loadingWidget ??
                  const Center(child: LoadingWidget(size: 15));
            },
            itemCount: itemCount + (hasMore ? 1 : 0),
          )
        : ListView.builder(
            reverse: reverse,
            scrollDirection: scrollDirection,
            controller: controller,
            physics: physics,
            shrinkWrap: shrinkWrap,
            padding: padding,
            itemBuilder: (context, index) {
              if (index < itemCount) {
                return itemBuilder(context, index);
              }

              return loadingWidget ??
                  const Center(child: Center(child: LoadingWidget(size: 15)));
            },
            itemCount: itemCount + (hasMore ? 1 : 0),
          );
  }
}
