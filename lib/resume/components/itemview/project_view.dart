import 'package:ashish_cv/profile.dart';
import 'package:flutter/material.dart';

class ProjectView extends StatelessWidget {
  final Project project;

  const ProjectView(this.project, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title =
        project.at == null ? project.title : "${project.title} | ${project.at}";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              theme.textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          "${project.durationFrom} - ${project.durationTo}",
          style: theme.textTheme.caption?.copyWith(color: Colors.blue),
        ),
        Text(
          project.description,
          style: theme.textTheme.bodyText1,
        ),
        Wrap(
          spacing: 4.0,
          runSpacing: 4.0,
          children: project.techStack
              .map((e) => Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      child: Text(e,
                          style: theme.textTheme.caption
                              ?.copyWith(color: Colors.white)),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }
}
