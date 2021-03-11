import 'package:flutter/material.dart';

import '../profile.dart';
import '../responsive/responsive.dart';
import 'components/header.dart';
import 'components/itemview/education_view.dart';
import 'components/itemview/project_view.dart';
import 'components/itemview/skill_view.dart';
import 'components/itemview/work_experience_view.dart';
import 'components/resume_section.dart';

class ResumeContent extends StatelessWidget {
  final profile = Profile();

  @override
  Widget build(BuildContext context) {
    final header = Header(profile: profile);

    final experience = ResumeSection(
        title: "Experience",
        content: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildExperience(context),
          ),
        ));

    final education = ResumeSection(
        title: "Education",
        content: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildEducation(context),
          ),
        ));

    final skills = ResumeSection(
        title: "Skills",
        content: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildSkills(context),
          ),
        ));

    final librariesAndTools = ResumeSection(
        title: "Libraries & Tools",
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildLibrariesAndTools(context),
        ));

    final projects = ResumeSection(
        title: "Projects",
        content: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildProjects(context),
          ),
        ));

    final languages = ResumeSection(
        title: "Languages",
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildLanguages(context),
        ));

    return SingleChildScrollView(
      child: Responsive(
        mobile: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header,
            experience,
            education,
            skills,
            librariesAndTools,
            projects,
            languages,
          ],
        ),
        tablet: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [experience, education, projects],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [skills, librariesAndTools, languages],
                  ),
                ),
              ],
            ),
          ],
        ),
        desktop: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [experience, education, projects],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [skills, librariesAndTools, languages],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildExperience(BuildContext context) {
    return profile.workExperiences
        .map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: WorkExperienceView(e),
            ))
        .toList();
  }

  List<Widget> _buildEducation(BuildContext context) {
    return profile.educations
        .map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: EducationView(e),
            ))
        .toList();
  }

  List<Widget> _buildSkills(BuildContext context) {
    return profile.skills
        .map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SkillView(e),
            ))
        .toList();
  }

  List<Widget> _buildLibrariesAndTools(BuildContext context) {
    return profile.librariesAndTools.map((e) => Text("$e")).toList();
  }

  List<Widget> _buildProjects(BuildContext context) {
    return profile.projects
        .map((e) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ProjectView(e),
            ))
        .toList();
  }

  List<Widget> _buildLanguages(BuildContext context) {
    return profile.languages.map((e) => Text("$e")).toList();
  }
}
