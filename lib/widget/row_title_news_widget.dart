import 'package:flutter/material.dart';

class RowTitleNewsWidget extends StatelessWidget {
  final String title;
  final double width;
  final Color? colorTitle;
  final Color? colorDivider;
  const RowTitleNewsWidget({
    super.key,
    required this.title,
    required this.width,
    this.colorTitle,
    this.colorDivider,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: colorTitle,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 3,
          width: width,
          color: colorDivider,
        ),
      ],
    );
  }
}
