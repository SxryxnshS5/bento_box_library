import 'package:flutter/material.dart';

class BentoBoxWithImage extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;

  const BentoBoxWithImage({
    super.key,
    required this.height,
    required this.width,
    required this.imagePath,
  });

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
