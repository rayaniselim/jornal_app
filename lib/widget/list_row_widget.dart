import 'package:flutter/material.dart';

import '../model/lists.dart';

class ListRowWdiget extends StatelessWidget {
  const ListRowWdiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: Colors.grey[200],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topics.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              topics[index],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        },
      ),
    );
  }
}
