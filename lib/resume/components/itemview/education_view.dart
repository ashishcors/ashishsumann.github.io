import 'package:ashish_cv/profile.dart';
import 'package:flutter/material.dart';

class EducationView extends StatelessWidget {
  final Education education;

  const EducationView(this.education, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              education.institute,
              style: theme.textTheme.bodyText1
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 4),
            Text(
              education.location,
              style: theme.textTheme.bodyText2?.copyWith(color: Colors.grey),
            ),
          ],
        ),
        Text(
          "${education.course} ${education.specialization ?? ""}",
          style: theme.textTheme.bodyText1,
        ),
        Text(
          "(${education.score})",
          style:
              theme.textTheme.subtitle1?.copyWith(fontStyle: FontStyle.italic),
        ),
        Text(
          education.duration.toUpperCase(),
          style: theme.textTheme.caption?.copyWith(color: Colors.blue),
        ),
      ],
    );
  }
}
