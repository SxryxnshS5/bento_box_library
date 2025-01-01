import 'package:flutter/material.dart';

class BentoBoxWithImage extends StatelessWidget {
  final double height;
  final double width;
  final String profilePictureUrl;

  const BentoBoxWithImage({
    super.key,
    required this.height,
    required this.width,
    required this.profilePictureUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(profilePictureUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
