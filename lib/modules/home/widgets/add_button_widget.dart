import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:split_it/theme/app_theme.dart';

class AddButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  const AddButtonWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(BorderSide(
                width: 1.5,
                color: AppTheme.colors.addBorderHome,
              ))),
          width: 48,
          height: 56,
          child: Center(
              child: Icon(
            Icons.add,
            color: AppTheme.colors.addButton,
          )),
        ));
  }
}
