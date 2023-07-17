import 'package:flutter/material.dart';

class GradientTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final List<Color>? colors;
  final double radius;
  final double? width;
  final Color? borderColor;
  final Widget child;
  final bool shadows;

  const GradientTextButton({
    Key? key,
    required this.onPressed,
    this.colors,
    this.radius = 0.0,
    this.shadows = false,
    this.width,
    this.borderColor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(

        child: Container(
          width: width ?? double.infinity,
          decoration: BoxDecoration(
            boxShadow: shadows ? [
              BoxShadow(color: Colors.black,blurRadius: 5)
            ] : null,
            gradient: colors != null
                ? LinearGradient(
                    colors: colors!,
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                : null,
            borderRadius: BorderRadius.circular(radius),
            border: borderColor != null
                ? Border.all(color: borderColor!, width: 1.0)
                : null,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Center(child: child),
        ),
      ),
    );
  }
}