class Corporation {
  final String name, source, description, index;
  final List<String>? useIt;
  final DateTime startDate, endDate;
  final List<Map<String, dynamic>> settings;
  final String? pointMeFelt, problemsFutureCountermeasures;
  final List<String>? operatingEnvironment, assignedTask;

  Corporation(
      {this.useIt,
      this.problemsFutureCountermeasures,
      this.pointMeFelt,
      this.operatingEnvironment,
      this.assignedTask,
      required this.settings,
      required this.index,
      required this.startDate,
      required this.endDate,
      required this.name,
      required this.source,
      required this.description});
}

final List<Corporation> corporation_projects = [
  Corporation(
    index: '0',
    name: "T社",
    source: "再エネシステム(蓄電池発電所向け開発)",
    description: "アービトラージタイムシフト",
    useIt: [
      'Spring Frame Work',
      'Vue JS',
      'AWS',
      'Docker',
    ],
    pointMeFelt: 'point_me_felt_ans_0',
    assignedTask: ['Frontend', 'Backend'],
    operatingEnvironment: ['local', 'verfiy'],
    settings: [
      {'title': '調査分析', 'isOK': false},
      {'title': '基本設定', 'isOK': false},
      {'title': '詳細設計', 'isOK': false},
      {'title': '製造単体', 'isOK': true},
      {'title': '総合単体', 'isOK': true},
      {'title': '総合試験', 'isOK': true},
      {'title': '運用業務', 'isOK': false},
    ],
    startDate: DateTime(2022, 11),
    endDate: DateTime(2023, 1),
  ),
];
