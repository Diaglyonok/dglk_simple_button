library dglk_simple_button;

import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  final String title;
  final VoidCallback? callback;
  final Widget? child;
  final double borderRadius;
  final Color? backgroundColor;
  final Color? disabledTextColor;

  final TextStyle? textStyle;
  final bool withShadow;
  final Color? shadowColor;

  const SimpleButton(
      {Key? key,
      this.callback,
      required this.title,
      this.disabledTextColor,
      this.child,
      this.borderRadius = 12.0,
      this.backgroundColor,
      this.textStyle,
      this.withShadow = false,
      this.shadowColor})
      : super(key: key);

  Color getColor(BuildContext context) =>
      backgroundColor ?? Theme.of(context).colorScheme.secondary;

  @override
  Widget build(BuildContext context) {
    bool isDisabled = callback == null;
    final style = (textStyle ??
        Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSecondary,
            ));
    return InkWell(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 256),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: isDisabled
                ? Color.alphaBlend(Colors.white.withOpacity(0.5), getColor(context))
                : getColor(context),
            boxShadow: !withShadow
                ? null
                : [
                    BoxShadow(
                        offset: const Offset(0.0, 2.0),
                        blurRadius: 8.0,
                        spreadRadius: 0.0,
                        color: shadowColor ?? Colors.black.withOpacity(0.24))
                  ],
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              borderRadius: BorderRadius.circular(borderRadius),
              onTap: callback,
              child: Center(
                child: child ?? Text(title, semanticsLabel: title, style: style),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
