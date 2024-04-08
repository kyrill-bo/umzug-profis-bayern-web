import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';

class ActionButton extends StatefulWidget {
  const ActionButton({
    super.key,
    required this.text,
    this.width = 200,
    this.color = const Color(0xFF44a6d8),
    this.borderSize = 1,
    this.glowSize = 1,
    this.borderColor = const Color(0xFF44a6d8),
    this.shadowColor = const Color(0xFF44a6d8),
    this.onPressed,
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  });

  final double? width;

  final String text;
  final Color color;
  final double borderSize;
  final double glowSize;

  final Color borderColor;
  final Color shadowColor;

  final TextStyle textStyle;

  final VoidCallback? onPressed;

  @override
  State<ActionButton> createState() => ActionButtonState();
}

class ActionButtonState extends State<ActionButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHover = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedGradientBorder(
          borderSize: widget.borderSize,
          glowSize: widget.glowSize,
          gradientColors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
          borderRadius: BorderRadius.circular(30),
          child: Material(
            borderRadius: BorderRadius.circular(30),
            elevation: isHover ? 20 : 0,
            shadowColor: widget.shadowColor,
            child: Container(
              width: widget.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: widget.borderColor,
                ),
              ),
              child: Center(
                child: FittedBox(
                  child: Text(
                    widget.text,
                    maxLines: 1,
                    style: widget.textStyle,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
