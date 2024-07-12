import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  final void Function()? onTap;
  final double width;
  final Widget image;
  final String title;

  const CarouselWidget({
    super.key,
    required this.onTap,
    required this.image,
    required this.width,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            width: width,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: image,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              title,
              maxLines: 5,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
