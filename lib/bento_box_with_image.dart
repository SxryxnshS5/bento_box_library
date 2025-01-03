import 'package:flutter/material.dart';

/// A widget for displaying an image in a rounded container.
/// Supports both local asset paths and network URLs for the image.
class BentoBoxWithImage extends StatelessWidget {
  /// The height of the BentoBoxWithImage.
  final double height;

  /// The width of the BentoBoxWithImage.
  final double width;

  /// The path to the image to display.
  /// Can be a local asset path (e.g., `'assets/image.png'`) or a network URL.
  final String imagePath;

  /// Creates a BentoBoxWithImage widget.
  ///
  /// Requires [height], [width], and [imagePath].
  const BentoBoxWithImage({
    super.key,
    required this.height,
    required this.width,
    required this.imagePath,
  });

  /// Determines if the given [path] is a local asset.
  /// Returns `true` if the path starts with `'assets/'`.
  bool _isLocalAsset(String path) {
    return path.startsWith('assets/');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: _isLocalAsset(imagePath)
              ? AssetImage(imagePath) as ImageProvider
              : NetworkImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
