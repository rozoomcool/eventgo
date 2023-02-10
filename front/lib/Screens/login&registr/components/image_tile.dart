import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String imageUrl;
  const ImageTile({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(
        imageUrl,
        height: 50,
      ),
    );
  }
}
