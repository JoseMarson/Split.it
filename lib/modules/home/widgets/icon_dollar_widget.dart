import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

enum IconDollarType { send, receive }

class IconDollarWidget extends StatelessWidget {
  final IconDollarType type;

  const IconDollarWidget({Key? key, required this.type}) : super(key: key);

  Color get _backgroundColor => type == IconDollarType.receive
      ? AppTheme.colors.receiveAmountText.withOpacity(0.1)
      : AppTheme.colors.payAmountText.withOpacity(0.1);

  String get pathImage =>
      'assets/images/dollar-${type == IconDollarType.receive ? 'receive' : 'send'}.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        pathImage,
      ),
    );
  }
}
