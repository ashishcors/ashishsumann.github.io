import 'package:flutter/material.dart';

class ResumeSection extends StatelessWidget {
  final String title;
  final Widget content;

  const ResumeSection({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title.toUpperCase(),
              style: Theme.of(context).textTheme.overline?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
            ),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 4,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                content,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
