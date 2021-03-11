import 'package:ashish_cv/resume/resume_content.dart';
import 'package:flutter/material.dart';

class ResumeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResumeContent(),
      ),
    );
  }
}
