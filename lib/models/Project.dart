import 'package:get/get.dart';

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

  String descriptionToLocale(String index) {
    return 'index_${index}_description'.tr;
  }

  String specificationsToLocale(String index, int specificationsIndex) {
    return 'index_${index}_specifications_$specificationsIndex'.tr;
  }
}

List<Project> my_projects = [
  Project(
      index: '0',
      title: "Responsive Portfolio Web",
      description: "",
      frontend: 'Flutter',
      specifications: [
        'Responsive Web Page',
        'Supporting multi lanauge',
      ],
      useThat: [
        'get'
            'carousel_slider',
        'animated_text_kit'
      ],
      images: []),
  Project(
      index: '1',
      title: "Toeic vocabulary App.",
      description:
          "You can easily learn TOEIC words, and you can improve metacognition by using a simple test. You can also learn and test your own words in addition to the built-in words.",
      homepagePath: 'https://wonjongseo.github.io/toeic/#/',
      frontend: 'Flutter',
      specifications: [
        'Saving My Voca',
        'Toggling like of a word',
        'Studying toeic words a day',
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

  Project(
      index: '2',
      title: "Pet Detective Agency.",
      githubPath: 'https://github.com/IOSpring/PetDetective',
      description:
          "If a pet is lost, AI technology can analyze the characteristics of the pet and provide information on the pet to nearby users to prevent the loss of the pet.",
      backend: 'Spring Frame Work, Express',
      useThat: [
        'Spring Boot',
        'Spring Data Jpa',
        'Amazon S3',
        'Redis'
      ],
      specifications: [
        'authentication',
        'Uploading posts',
        'Watching posts',
        'Pushing a notification to nearby users',
        'analyzing images'
      ],
      images: [
        'assets/project2/1.png',
        'assets/project2/2.png',
        'assets/project2/3.png',
        'assets/project2/4.png',
        'assets/project2/5.png',
        'assets/project2/6.png',
        'assets/project2/7.png',
        'assets/project2/8.png',
        'assets/project2/9.png',
        'assets/project2/10.png',
        'assets/project2/11.png',
        'assets/project2/12.png',
      ]),
  Project(
      index: '3',
      title: "Online Shopping mall.",
      githubPath: 'https://github.com/wonjongseo/online-shoppingmall',
      backend: 'Spring frame work',
      useThat: [
        'Spring Boot',
        'Spring Data Jpa',
        'Spring Security',
        'Spring mail',
        'Spring JJwt',
        'Amazon S3',
      ],
      specifications: [
        'authentication',
        'Reviewing projects',
        'Changing the user infomation',
        'Adding products to the basket',
        'Managing users',
        'Managing products',
        'Managing a banner'
      ],
      description:
          "It is an online shopping mall project to improve skills using spring and JPA.",
      images: [
        'assets/project3/1.png',
        'assets/project3/2.png',
        'assets/project3/3.png',
        'assets/project3/4.png',
        'assets/project3/5.png',
        'assets/project3/6.png',
        'assets/project3/7.png',
        'assets/project3/8.png',
        'assets/project3/9.png',
        'assets/project3/10.png',
        'assets/project3/11.png',
        'assets/project3/12.png',
        'assets/project3/13.png',
        'assets/project3/14.png',
        'assets/project3/15.png',
        'assets/project3/16.png',
        'assets/project3/17.png',
        'assets/project3/18.png',
        'assets/project3/19.png',
        'assets/project3/20.png',
        'assets/project3/21.png',
        'assets/project3/22.png',
        'assets/project3/23.png',
        'assets/project3/24.png',
        'assets/project3/25.png',
        'assets/project3/26.png',
        'assets/project3/27.jpeg',
        'assets/project3/28.jpeg',
        'assets/project3/29.jpeg',
        'assets/project3/30.jpeg',
        'assets/project3/31.png',
        'assets/project3/32.jpeg',
        'assets/project3/33.jpeg',
        'assets/project3/34.jpeg',
        'assets/project3/35.png',
        'assets/project3/36.jpeg',
        'assets/project3/37.jpeg',
        'assets/project3/38.jpeg',
        'assets/project3/39.jpeg',
        'assets/project3/40.jpeg',
      ]),

  Project(
      index: '4',
      title: 'Netflix Clone Coding.',
      description:
          'It is The Netflix Clone Coding Project for improving Skill of React JS',
      frontend: 'React Js',
      useThat: ['axois', 'prop-types', 'styled-components'],
      githubPath: 'https://github.com/wonjongseo/netfilx',
      homepagePath: 'https://wonjongseo.github.io/',
      images: []),

  Project(
      index: '5',
      title: 'Instagram Clone Coding.',
      description:
          'It is The Instagram Clone Coding Project for improving Skill of Graph Ql and React JS',
      backend: 'Graph QL',
      frontend: 'React Js',
      useThat: ['githubPathollo/client', 'graphql', 'styled-components'],
      githubPath: 'https://github.com/wonjongseo/netfilx',
      images: [],
      homepagePath: 'https://wonjongseo.github.io/'),
  // Project(index: '12', title: "", description: "", images: []),
  // Project(index: '12', title: "", description: "", images: []),
  // Project(index: '12', title: "", description: "", images: []),
  // Project(index: '12', title: "", description: "", images: []),
  // Project(index: '12', title: "", description: "", images: []),
  // Project(index: '12', title: "", description: "", images: []),
  // Project(index: '12', title: "", description: "", images: []),
  // Project(index: '12', title: "", description: "", images: []),
];
