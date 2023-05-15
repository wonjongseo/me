import 'package:get/get.dart';

class Project {
  final String index, title, description;

  final String? frontend, backend;
  final String? homepagePath, githubPath;
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
    title: 'Japanese Vocabulary Program',
    description: 'It is The Japanese Vocabulary Program using Swing of Java',
    backend: 'Java',
    useThat: ['Swing'],
    githubPath: 'https://github.com/wonjongseo/japanese',
    images: [
      'assets/japan_java_swing/1.png',
      'assets/japan_java_swing/2.png',
      'assets/japan_java_swing/3.png',
      'assets/japan_java_swing/4.png',
      'assets/japan_java_swing/5.png',
      'assets/japan_java_swing/6.png',
      'assets/japan_java_swing/7.png',
    ],
  ),
  Project(
    index: '1',
    title: 'XML maker',
    description: 'It is The XML Maker Program using Swing of Java',
    backend: 'Java',
    useThat: ['Swing'],
    githubPath: 'https://github.com/wonjongseo/xml-maker',
    images: [],
  ),
  Project(
    index: '2',
    title: 'Youtube Clone Coding.',
    description:
        'It is The Youtube Clone Coding Project for improving Skill of Express, MongoDB and Java Script.',
    backend: 'Node JS',
    frontend: 'Pug, Scss',
    useThat: ['bcrypt', 'aws-sdk', 'babel', 'webpack'],
    githubPath: 'https://github.com/wonjongseo/youtube',
    specifications: [
      'Authentication',
      'Watching a Video',
      'Recording a Video',
      'Uploading a Video',
      'Editing a Video',
      'Deleting a Video',
    ],
    images: [
      'assets/youtube/1.png',
      'assets/youtube/2.png',
      'assets/youtube/3.png',
      'assets/youtube/4.png',
      'assets/youtube/5.png',
    ],
    // homepagePath: 'https://wonjongseo.github.io/',
  ),
  Project(
      index: '3',
      title: 'Instagram Clone Coding.',
      description:
          'It is The Instagram Clone Coding Project for improving Skill of Graph Ql and React JS',
      backend: 'Graph QL',
      frontend: 'React Js',
      useThat: ['githubPathollo/client', 'graphql', 'styled-components'],
      githubPath:
          'https://github.com/wonjongseo/insta-server\nhttps://github.com/wonjongseo/insta-server',
      images: [],
      homepagePath: 'https://wonjongseo.github.io/'),
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
        'assets/shopping/1.png',
        'assets/shopping/9.png',
        'assets/shopping/10.png',
        'assets/shopping/11.png',
        'assets/shopping/12.png',
        'assets/shopping/2.png',
        'assets/shopping/3.png',
        'assets/shopping/4.png',
        'assets/shopping/5.png',
        'assets/shopping/6.png',
        'assets/shopping/8.png',
        'assets/shopping/13.png',
        'assets/shopping/14.png',
        'assets/shopping/15.png',
        'assets/shopping/16.png',
        'assets/shopping/17.jpeg',
        'assets/shopping/18.jpeg',
        'assets/shopping/19.png',
        'assets/shopping/20.jpeg',
        'assets/shopping/21.jpeg',
        'assets/shopping/22.jpeg',
        'assets/shopping/23.jpeg',
      ]),
  Project(
      index: '6',
      title: "Won Food App",
      description: "",
      frontend: 'Flutter',
      specifications: [
        'Splash Screen',
        'Login Screen',
        'Forgot Password Screen',
        'OTP code verification Screen',
        'Sign Up Screen',
        'Quick survey Screen',
        'Home Screen',
        'Food details Screen',
        'Food style screen ',
        'Order Screen',
        'CheckOut Screen',
        'Pay Screen',
        'Pay Method Screen',
        'Add New Address Screen',
        'Order Status Screen',
        'Update Profile Screen',
      ],
      githubPath: 'https://github.com/wonjongseo/won_food ',
      useThat: [
        'cached_network_image',
        'animations',
        'get',
      ],
      images: [
        'assets/food_app/1.png',
        'assets/food_app/2.png',
        'assets/food_app/3.png',
        'assets/food_app/4.png',
        'assets/food_app/5.png',
        'assets/food_app/6.png',
        'assets/food_app/7.png',
        'assets/food_app/8.png',
        'assets/food_app/9.png',
        'assets/food_app/10.png',
        'assets/food_app/11.png',
        'assets/food_app/12.png',
        'assets/food_app/13.png',
        'assets/food_app/14.png',
        'assets/food_app/15.png',
        'assets/food_app/16.png',
        'assets/food_app/17.png',
        'assets/food_app/18.png',
      ]),
  Project(
      index: '7',
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
        'Authentication',
        'Uploading posts',
        'Watching posts',
        'Pushing a notification to nearby users',
        'analyzing images'
      ],
      images: [
        'assets/pet/1.png',
        'assets/pet/2.png',
        'assets/pet/3.png',
        'assets/pet/4.png',
        'assets/pet/5.png',
        'assets/pet/6.png',
        'assets/pet/7.png',
        'assets/pet/8.png',
        'assets/pet/9.png',
        'assets/pet/10.png',
        'assets/pet/11.png',
        'assets/pet/12.png',
      ]),
  Project(
      index: '8',
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
        'assets/toeic/1.jpg',
        'assets/toeic/2.jpg',
        'assets/toeic/3.jpg',
        'assets/toeic/4.jpg',
        'assets/toeic/5.jpg',
        'assets/toeic/6.jpg',
        'assets/toeic/7.jpg',
        'assets/toeic/8.jpg',
        'assets/toeic/9.jpg',
        'assets/toeic/10.jpg',
        'assets/toeic/11.jpg',
        'assets/toeic/12.jpg',
        'assets/toeic/13.jpg',
      ]),
  Project(
      index: '9',
      title: "Responsive Portfolio Web",
      description: "",
      frontend: 'Flutter',
      specifications: [
        'Responsive Web Page',
        'Supporting multi lanauge',
      ],
      githubPath: 'https://github.com/wonjongseo/me',
      useThat: [
        'get',
        'carousel_slider',
        'animated_text_kit',
      ],
      images: [
        'assets/responsive/1.png',
        'assets/responsive/2.png',
        'assets/responsive/3.png',
        'assets/responsive/4.png',
        'assets/responsive/5.png',
        'assets/responsive/6.png',
        'assets/responsive/7.png',
        'assets/responsive/8.png',
        'assets/responsive/9.png',
        'assets/responsive/10.png',
        'assets/responsive/10.png',
      ]),
  Project(
      index: '10',
      title: "JLPT App",
      description: "JLPT App created by Flutter",
      frontend: 'Flutter',
      specifications: [
        'Saving My Voca',
        'Studying JLPT Words and Grammars',
        'Testing JLPT words and Grammars',
      ],
      githubPath: 'https://wonjongseo.github.io/#/home',
      useThat: ['get', 'hive', 'animate_do'],
      images: []),
];
