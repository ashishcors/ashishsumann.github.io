import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile {
  final firstName = "Ashish";
  final lastName = "Suman";

  String name() => "$firstName $lastName";

  final email = "ashishsumancse@gmail.com";
  final mobile = "+91-9199292681";
  final address = "Ranchi, Jharkhand, India";

  final links = [
    Link(
      icon: FontAwesomeIcons.github,
      url: "https://github.com/ashishsumann",
    ),
    Link(
      icon: FontAwesomeIcons.linkedin,
      url: "https://www.linkedin.com/in/ashishx21/",
    ),
    Link(
      icon: FontAwesomeIcons.twitter,
      url: "https://twitter.com/CallMe_Ashish",
    ),
    Link(
      icon: FontAwesomeIcons.facebook,
      url: "https://www.facebook.com/AshishX21/",
    ),
  ];

  final languages = ["English", "Hindi"];

  final skills = [
    SkillGroup(
      name: "Programming",
      skills: [
        "Kotlin",
        "Dart",
        "Typescript",
        "C",
        "Python",
      ],
    ),
    SkillGroup(
      name: "Frameworks",
      skills: [
        "Native Android",
        "Flutter",
        "NodeJs",
      ],
    ),
    SkillGroup(
      name: "Others",
      skills: [
        "Clean Architecture",
        "Test Driven Development",
        "Dependency Injection",
        "MVVM",
        "Unit Testing",
        "UI Testing"
      ],
    ),
  ];

  final librariesAndTools = [
    "Retrofit",
    "Room",
    "Coroutines",
    "Flows",
    "Coil",
    "Dagger 2",
    "Firebase",
    "ML Kit",
    "JUnit",
    "Espresso"
  ];

  final workExperiences = [
    WorkExperience(
      company: "Mutual Mobile",
      location: "Remote Work",
      position: "Android Engineer II",
      durationFrom: "Dec 2020",
      durationTo: "Present",
      works: [
        "Worked on a library module to authenticate and pull activity data of user from various fitness services like fitbit, google fit etc",
        "Worked on flutter template project to demonstrate best practices with clean code & testing.",
        "Worked on continuous discovery, evaluation and implementation of new technologies.",
        "Explored Kotlin Multi-platform Mobile, Flutter, with best practices.",
      ],
    ),
    WorkExperience(
      company: "Mutual Mobile",
      location: "Hyderabad (IN) / Remote Work",
      position: "Associate Engineer (Android)",
      durationFrom: "Dec 2019",
      durationTo: "Nov 2020",
      works: [
        "Implemented features for various applications in Kotlin.",
        "Worked closely with core technology teams and other platform teams to balance cross-platform consistency with Android-optimization.",
        "Implemented Clean Architecture & Dagger with various Android components.",
        "Worked on room integration in android to create an offline first application with room driven UI.",
      ],
    ),
  ];

  final projects = [
    Project(
        title: "Frameshift",
        at: "Mutual Mobile",
        durationFrom: "Aug 2020",
        durationTo: "Dec 2020",
        description:
            "Frameshift is a Fitness & Nutrition tracking application for Trevor Kashey Nutrition. The android application with modern & best practices for a scalable application.",
        techStack: [
          "Android",
          "Clean Architecture",
          "MVVM",
          "Dagger 2",
          "Room",
          "Flows",
          "Retrofit",
          "Unit & UI Testing"
        ]),
    Project(
        title: "Notes App",
        durationFrom: "Sep 2020",
        durationTo: "Present",
        description:
            "A simple notes app made in flutter to demonstrate best practices with clean code, firebase auth & storage, support for Android, iOS & Web.",
        techStack: [
          "Flutter",
          "Flutter Web",
          "GetX",
          "Routing",
          "Clean Architecture",
          "Flutter Web",
          "Firebase",
          "Dependency Injection"
        ]),
    Project(
        title: "Hints",
        durationFrom: "Jun 2018",
        durationTo: "Present",
        description:
            "The app consists of the questions, notes, syllabus, notifications, etc. for B.Tech and GATE Examination. Also there is community forum which is tailored as per students' requirement and their branch/college.",
        techStack: [
          "Android",
          "Volley",
          "Picasso",
          "PHP",
          "MySql",
        ]),
    Project(
        title: "YTM Player",
        durationFrom: "Sep 2018",
        durationTo: "Sep 2020",
        description:
            "YTM Player is an android app. This allows playing YouTube videos in a pop-up window, so that user can multitask while viewing any video. Feature included support for 10+ languages, dark mode & AMOLED dark mode, create, import & manage playlists, lots of gestures, and more.",
        techStack: [
          "Android",
          "Retrofit",
          "Room",
          "MVVM",
          "PHP",
          "MySql",
        ]),
  ];

  final educations = [
    Education(
      course: "B. Tech",
      specialization: "Computer Science & Engineering",
      institute: "Chaibasa Engineering College",
      location: "Chaibasa (Jharkhand)",
      score: "7.5 CGPA",
      duration: "2015-2019",
    ),
    Education(
      course: "Intermediate",
      institute: "Vikas Vidyalaya",
      location: "Ranchi (Jharkhand)",
      score: "67.7%",
      duration: "March 2015",
    ),
    Education(
      course: "Matriculation",
      institute: "Mount Carmel School",
      location: "Ranchi (Jharkhand)",
      score: "85.5%",
      duration: "March 2013",
    )
  ];
}

class Link {
  final IconData icon;
  final String url;

  Link({required this.icon, required this.url});
}

class SkillGroup {
  final String name;
  final List<String> skills;

  SkillGroup({required this.name, required this.skills});
}

class Education {
  final String course;
  final String? specialization;
  final String institute;
  final String location;
  final String score;
  final String duration;

  Education({
    required this.course,
    this.specialization,
    required this.institute,
    required this.location,
    required this.score,
    required this.duration,
  });
}

class WorkExperience {
  final String company;
  final String location;
  final String position;
  final String durationFrom;
  final String durationTo;
  final List<String> works;

  WorkExperience({
    required this.company,
    required this.location,
    required this.position,
    required this.durationFrom,
    required this.durationTo,
    required this.works,
  });
}

class Project {
  final String title;
  final String? at;
  final String durationFrom;
  final String durationTo;
  final String description;
  final List<String> techStack;

  Project({
    required this.title,
    this.at,
    required this.durationFrom,
    required this.durationTo,
    required this.description,
    required this.techStack,
  });
}
