// lib/shared/widgets/custom_shape_container.dart
// NO CHANGES NEEDED HERE from the previous good version.
// It will use the new HeaderClipper automatically if you update HeaderClipper's defaults,
// OR you can pass specific clipper parameters to CustomShapeContainer if you made
// HeaderClipper's parameters configurable in CustomShapeContainer's constructor.

import 'package:flutter/material.dart';
import 'header_clipper.dart'; // Ensure this path is correct

class CustomShapeContainer extends StatelessWidget {
  final Widget? child;
  final double? height;
  final double? width;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  // Option 1: Rely on HeaderClipper's new defaults
  const CustomShapeContainer({
    Key? key,
    this.child,
    this.height,
    this.width,
    this.color,
    this.padding,
    this.margin,
  }) : super(key: key);

  // Option 2: If you want to pass clipper params through CustomShapeContainer
  // final double cp1xFactor;
  // final double cp1yFactor;
  // // ... other clipper params
  // const CustomShapeContainer({
  //   Key? key,
  //   this.child,
  //   this.height,
  //   this.width,
  //   this.color,
  //   this.padding,
  //   this.margin,
  //   // Default these to match your new HeaderClipper desired defaults
  //   this.cp1xFactor = 0.75, // Default from new HeaderClipper
  //   this.cp1yFactor = 1.0,  // Default from new HeaderClipper
  //   // ... other params
  // }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Color effectiveColor = color ?? theme.colorScheme.primary;

    Widget current = Container(
      height: height,
      width: width ?? double.infinity,
      color: effectiveColor,
    );

    current = ClipPath(
      // Option 1:
      clipper: HeaderClipper(), // Uses the new defaults set in HeaderClipper
      // Option 2:
      // clipper: HeaderClipper(
      //  cp1xFactor: cp1xFactor,
      //  cp1yFactor: cp1yFactor,
      //  // ... pass other params
      // ),
      child: current,
    );

    if (child != null) {
      current = Stack(
        children: [
          Positioned.fill(child: current),
          Padding(
            padding: padding ?? EdgeInsets.zero,
            child: child!,
          ),
        ],
      );
    }

    if (margin != null) {
      current = Padding(
        padding: margin!,
        child: current,
      );
    }
    return (height == null || width == null) && (child == null)
        ? SizedBox(height: height, width: width, child: current)
        : current;
  }
}
