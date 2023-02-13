import 'package:flutter/cupertino.dart';

class Project {
  final String index, title, description;
  final String? homepagePath, githubPath;
  final String? frontend, backend;
  final List<String>? useThat;
  final List<String>? specifications;
  final List<String> images;
  Project({
    required this.index,
    required this.title,
    required this.description,
    required this.images,
    this.homepagePath,
    this.frontend,
    this.backend,
    this.useThat,
    this.specifications,
    this.githubPath,
  });
}

List<Project> demo_projects = [
  Project(
      index: '0',
      title: "Toeic vocabulary App",
      description: "Creating For Learning The Toeic",
      homepagePath: 'https://wonjongseo.github.io/toeic/#/',
      frontend: 'Flutter',
      specifications: [
        'Saving My Voca',
        'Toggling like of a word',
        'Studying toeic words a day '
            'Testing toeic words',
        'Showing the example of word',
      ],
      images: [
        'assets/project1/1.jpg',
        'assets/project1/2.jpg',
        'assets/project1/3.jpg',
        'assets/project1/4.jpg',
        'assets/project1/5.jpg',
        'assets/project1/6.jpg',
        'assets/project1/7.jpg',
        'assets/project1/8.jpg',
        'assets/project1/9.jpg',
        'assets/project1/10.jpg',
        'assets/project1/11.jpg',
        'assets/project1/12.jpg',
        'assets/project1/13.jpg',
      ]),
  Project(index: '12', title: "", description: "", images: []),
  Project(index: '12', title: "", description: "", images: []),
  Project(index: '12', title: "", description: "", images: []),
  Project(index: '12', title: "", description: "", images: []),
  Project(index: '12', title: "", description: "", images: []),
  Project(index: '12', title: "", description: "", images: []),
  Project(index: '12', title: "", description: "", images: []),
  Project(index: '12', title: "", description: "", images: []),
  Project(index: '12', title: "", description: "", images: []),
  Project(index: '12', title: "", description: "", images: []),
  Project(index: '12', title: "", description: "", images: []),
];
