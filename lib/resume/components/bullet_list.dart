import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<Widget> children;

  const BulletList({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: children
          .map(
            (e) => Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Icon(Icons.circle, size: 5),
                ),
                e,
              ],
            ),
          )
          .toList(),
    );
  }
}
