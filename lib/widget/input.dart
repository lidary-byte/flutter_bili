import 'package:flutter_bili/constants/app_constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Input extends StatelessWidget {
  TextEditingController? controller;
  final Function(String value)? onEditingComplete;
  final String? hintText;

  Input({
    this.onEditingComplete,
    this.controller,
    this.hintText,
    super.key,
  }) {
    controller ??= TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8.0),
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        // 未选中时候的颜色
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
        if (onEditingComplete != null) {
          onEditingComplete!(controller?.text ?? '');
        }
      },
      textInputAction: TextInputAction.search,
      style: TextStyle(color: kFontColorPallets[1]),
    );
  }
}
