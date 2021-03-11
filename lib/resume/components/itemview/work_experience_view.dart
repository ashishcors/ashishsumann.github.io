import 'package:ashish_cv/profile.dart';
import 'package:ashish_cv/resume/components/bullet_list.dart';
import 'package:flutter/material.dart';

class WorkExperienceView extends StatelessWidget {
  final WorkExperience experience;

  const WorkExperienceView(this.experience, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 4.0,
          children: [
            Text(
              experience.company,
              style: theme.textTheme.bodyText1
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              experience.location,
              style: theme.textTheme.bodyText1?.copyWith(color: Colors.grey),
            )
          ],
        ),
        Text(experience.position, style: theme.textTheme.subtitle1),
        Text(
          "${experience.durationFrom} - ${experience.durationTo}",
          style: theme.textTheme.caption?.copyWith(color: Colors.blue),
        ),
        BulletList(
            children: experience.works
                .map((e) => Expanded(
                      child: Text(e),
                    ))
                .toList())
      ],
    );
  }
}
