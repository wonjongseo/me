class Skill {
  final String language, image;
  final double value;
  const Skill(
      {required this.image, required this.language, required this.value});
}

class DB extends Skill {
  DB({required super.image, required super.language, required super.value});
}

class Language extends Skill {
  Language(
      {required super.image, required super.language, required super.value});
}

class FrameWork extends Skill {
  FrameWork(
      {required super.image, required super.language, required super.value});
}

String imageUrl = 'assets/stack';

List<Map<String, String>> infoList = [
  {'title': 'Name', 'text': 'programmer_residence'},
  {'title': 'Residence', 'text': 'programmer_residence'},
  {'title': 'Age', 'text': 'programmer_age'},
  {'title': 'Kakao / Line', 'text': 'visionwill'},
  {'title': 'Email', 'text': 'visionwill3322@gmail.com'},
  {'title': 'School', 'text': 'academic_ability'},
];

List<FrameWork> frameWorkList = [
  FrameWork(
      image: '$imageUrl/icons8-spring-48.png', language: 'Spring', value: 90),
  FrameWork(
      image: '$imageUrl/icons8-spring-48.png', language: 'JPA', value: 70),
  FrameWork(
      image: '$imageUrl/icons8-nodejs-48.png', language: 'Express', value: 80),
  FrameWork(
      image: '$imageUrl/icons8-spring-48.png',
      language: 'Apollo Server',
      value: 60),
  FrameWork(
      image: '$imageUrl/icons8-flutter-48.png', language: 'Flutter', value: 80),
  FrameWork(
      image: '$imageUrl/icons8-react-40.png', language: 'React', value: 75),
  FrameWork(
      image: '$imageUrl/icons8-vue-js-48.png', language: 'Vue', value: 75),
  FrameWork(
      image: '$imageUrl/icons8-react-native-48.png',
      language: 'React Native',
      value: 75),
];

List<Language> langaugeList = [
  Language(image: '$imageUrl/icons8-cプログラミング-48.png', language: 'C', value: 80),
  Language(image: '$imageUrl/icons8-c++-48.png', language: 'C++', value: 80),
  Language(image: '$imageUrl/icons8-java.png', language: 'Java', value: 80),
  Language(
      image: '$imageUrl/icons8-javascript-48.png',
      language: 'JavaScript',
      value: 80),
  Language(image: '$imageUrl/icons8-dart-48.png', language: 'Dart', value: 80),
  Language(
      image: '$imageUrl/icons8-python-48.png', language: 'Python', value: 80),
  Language(image: '$imageUrl/icons8-html-48.png', language: 'HTML', value: 80),
  Language(image: '$imageUrl/icons8-css-48.png', language: 'CSS', value: 80),
];

List<String> knowledges = ['Git', 'Aws', 'Heroku', 'Netlify'];
