import 'package:flutter/material.dart';

class BentoBox extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final String subtitle;
  final Color? boxColor;
  final Color? titleColor;
  final Color? subtitleColor;

  const BentoBox({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.subtitle,
    this.boxColor,
    this.titleColor,
    this.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color:
            boxColor ?? Theme.of(context).colorScheme.primary.withOpacity(0.40),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: titleColor ?? Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(
                color: subtitleColor ?? Colors.white70,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
