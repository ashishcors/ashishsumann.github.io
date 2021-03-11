import 'package:ashish_cv/profile.dart';
import 'package:flutter/material.dart';

class SkillView extends StatelessWidget {
  final SkillGroup skillGroup;

  const SkillView(this.skillGroup, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final skills = skillGroup.skills.join(", ");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skillGroup.name,
          style:
              theme.textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          skills,
          style: theme.textTheme.subtitle1,
        ),
      ],
    );
  }
}
