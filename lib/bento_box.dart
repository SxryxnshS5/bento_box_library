// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

/// A customizable widget for displaying a title and subtitle in a rounded container.
class BentoBox extends StatelessWidget {
  /// The height of the BentoBox.
  final double height;

  /// The width of the BentoBox.
  final double width;

  /// The title text displayed at the top of the BentoBox.
  final String title;

  /// The subtitle text displayed below the title in the BentoBox.
  final String subtitle;

  /// The background color of the BentoBox.
  /// Defaults to a translucent primary color from the current theme.
  final Color? boxColor;

  /// The color of the title text.
  /// Defaults to white if not specified.
  final Color? titleColor;

  /// The color of the subtitle text.
  /// Defaults to white with 70% opacity if not specified.
  final Color? subtitleColor;

  /// Creates a BentoBox widget.
  ///
  /// Requires [height], [width], [title], and [subtitle].
  /// Optional parameters include [boxColor], [titleColor], and [subtitleColor].
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
