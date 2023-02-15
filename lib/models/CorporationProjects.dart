class Corporation {
  final String name, source, description, index;
  final List<String>? useIt;
  final DateTime startDate, endDate;
  final List<Map<String, dynamic>> settings;
  final bool investigativeAnalysis,
      basicConfiguration,
      detailedDesign,
      manufacturingSingleTest,
      integratedSingleTest,
      comprehensiveTest,
      operationalTesting;

  Corporation(
      {this.useIt,
      required this.settings,
      required this.index,
      required this.startDate,
      required this.endDate,
      required this.investigativeAnalysis,
      required this.basicConfiguration,
      required this.detailedDesign,
      required this.manufacturingSingleTest,
      required this.integratedSingleTest,
      required this.comprehensiveTest,
      required this.operationalTesting,
      required this.name,
      required this.source,
      required this.description});
}

/*

調査分析 investigative analysis
基本設定 basic configuration

詳細設計 Detailed Design,
製造単体、 Manufacturing single test,
総合単体 Integrated single test,
総合試験 Comprehensive test,
運用業務 operational testing





 */

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
    settings: [
      {'title': '調査分析', 'isOK': true},
      {'title': '基本設定', 'isOK': false},
      {'title': '詳細設計', 'isOK': false},
      {'title': '製造単体', 'isOK': false},
      {'title': '総合単体', 'isOK': true},
      {'title': '総合試験', 'isOK': true},
      {'title': '運用業務', 'isOK': false},
    ],
    startDate: DateTime(2022, 11),
    endDate: DateTime(2023, 1),
    investigativeAnalysis: false,
    basicConfiguration: false,
    detailedDesign: false,
    manufacturingSingleTest: true,
    integratedSingleTest: true,
    comprehensiveTest: true,
    operationalTesting: false,
  ),
  Corporation(
    index: '1',
    startDate: DateTime(2022, 11),
    endDate: DateTime(2023, 1),
    name: "T社",
    source: "再エネシステム(蓄電池発電所向け開発)",
    description: "アービトラージタイムシフト",
    useIt: ['Spring Frame Work', 'Vue JS', 'AWS', 'Docker', 'A5'],
    settings: [
      {'title': '調査分析', 'isOK': true},
      {'title': '基本設定', 'isOK': false},
      {'title': '詳細設計', 'isOK': false},
      {'title': '製造単体', 'isOK': false},
      {'title': '総合単体', 'isOK': true},
      {'title': '総合試験', 'isOK': true},
      {'title': '運用業務', 'isOK': false},
    ],
    investigativeAnalysis: false,
    basicConfiguration: false,
    detailedDesign: false,
    manufacturingSingleTest: false,
    integratedSingleTest: false,
    comprehensiveTest: false,
    operationalTesting: false,
  ),
  Corporation(
    index: '1',
    name: "T社",
    source: "再エネシステム(蓄電池発電所向け開発)",
    description: "アービトラージタイムシフト",
    useIt: [
      'Spring Frame Work',
      'Vue JS',
      'AWS',
      'Docker',
    ],
    settings: [
      {'title': '調査分析', 'isOK': true},
      {'title': '基本設定', 'isOK': false},
      {'title': '詳細設計', 'isOK': false},
      {'title': '製造単体', 'isOK': false},
      {'title': '総合単体', 'isOK': true},
      {'title': '総合試験', 'isOK': true},
      {'title': '運用業務', 'isOK': false},
    ],
    startDate: DateTime(2022, 11),
    endDate: DateTime(2023, 1),
    investigativeAnalysis: false,
    basicConfiguration: false,
    detailedDesign: false,
    manufacturingSingleTest: false,
    integratedSingleTest: false,
    comprehensiveTest: false,
    operationalTesting: false,
  ),
  Corporation(
    index: '2',
    name: "T社",
    source: "再エネシステム(蓄電池発電所向け開発)",
    description: "アービトラージタイムシフト",
    useIt: [
      'Spring Frame Work',
      'Vue JS',
      'AWS',
      'Docker',
    ],
    settings: [
      {'title': '調査分析', 'isOK': true},
      {'title': '基本設定', 'isOK': false},
      {'title': '詳細設計', 'isOK': false},
      {'title': '製造単体', 'isOK': false},
      {'title': '総合単体', 'isOK': true},
      {'title': '総合試験', 'isOK': true},
      {'title': '運用業務', 'isOK': false},
    ],
    startDate: DateTime(2022, 11),
    endDate: DateTime(2023, 1),
    investigativeAnalysis: false,
    basicConfiguration: false,
    detailedDesign: false,
    manufacturingSingleTest: false,
    integratedSingleTest: false,
    comprehensiveTest: false,
    operationalTesting: false,
  ),
  Corporation(
    index: '3',
    name: "T社",
    source: "再エネシステム(蓄電池発電所向け開発)",
    description: "アービトラージタイムシフト",
    useIt: [
      'Spring Frame Work',
      'Vue JS',
      'AWS',
      'Docker',
    ],
    settings: [
      {'title': '調査分析', 'isOK': true},
      {'title': '基本設定', 'isOK': false},
      {'title': '詳細設計', 'isOK': false},
      {'title': '製造単体', 'isOK': false},
      {'title': '総合単体', 'isOK': true},
      {'title': '総合試験', 'isOK': true},
      {'title': '運用業務', 'isOK': false},
    ],
    startDate: DateTime(2022, 11),
    endDate: DateTime(2023, 1),
    investigativeAnalysis: false,
    basicConfiguration: false,
    detailedDesign: false,
    manufacturingSingleTest: false,
    integratedSingleTest: false,
    comprehensiveTest: false,
    operationalTesting: false,
  ),
];
