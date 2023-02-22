class Skill {
  final String language;
  final double value;
  const Skill({required this.language, required this.value});
}

class DB extends Skill {
  DB({required super.language, required super.value});
}

class Language extends Skill {
  Language({required super.language, required super.value});
}

class FrameWork extends Skill {
  FrameWork({required super.language, required super.value});
}

List<Map<String, String>> infoList = [
  {'title': 'Name', 'text': 'programmer_residence'},
  {'title': 'Residence', 'text': 'programmer_residence'},
  // {'title': 'City', 'text': 'programmer_city'},
  {'title': 'Age', 'text': 'programmer_age'},
  {'title': 'Kakao / Line', 'text': 'visionwill'},
  {'title': 'Email', 'text': 'visionwill3322@gmail.com'},
  {'title': 'School', 'text': 'academic_ability'},
];

List<FrameWork> frameWorkList = [
  FrameWork(language: 'Spring', value: 90),
  FrameWork(language: 'JPA', value: 70),
  FrameWork(language: 'Express', value: 80),
  FrameWork(language: 'Apollo Server', value: 60),
  FrameWork(language: 'Flutter', value: 80),
  FrameWork(language: 'React', value: 75),
];

List<Language> langaugeList = [
  Language(language: 'C', value: 80),
  Language(language: 'Java', value: 80),
  Language(language: 'JavaScript', value: 80),
  Language(language: 'Dart', value: 80),
  Language(language: 'Python', value: 80),
  Language(language: 'HTML', value: 80),
  Language(language: 'CSS', value: 80),
];

List<String> knowledges = ['Git', 'Aws', 'Heroku', 'Netlify'];
