import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';


class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    this.initialValue = false,
    this.onChanged,
  });
  final bool initialValue;
  final ValueChanged<bool>? onChanged;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.4,
      child: Checkbox(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        side: BorderSide(
          color: context.color.button,
          width:0.2 ,
        ),
        splashRadius: 2,
        value: _value,
        onChanged: (v) {
          setState(() {
            _value = v ?? false;
          });
          widget.onChanged?.call(v ?? false);
        },
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
