class Learn {
  final String? name;
  final String? description;
  final String? gitPath;
  final String? homepagePath;
  final String? language;
  final String? backend;
  final String? frontend;
  final List<String>? useit;
  final String index;

  const Learn(
      {required this.index,
      this.name,
      this.description,
      this.backend,
      this.frontend,
      this.language,
      this.useit,
      this.gitPath,
      this.homepagePath});
}

List<Learn> learns = [
  Learn(
      index: '0',
      name: 'Netflix Clone Coding.',
      description: 'Build The Netflix for Learning React JS.',
      frontend: 'React Js',
      useit: ['axois', 'prop-types', 'styled-components'],
      gitPath: 'https://github.com/wonjongseo/netfilx',
      homepagePath: 'https://jongseo-netflix.netlify.app/#/'),
  Learn(
      index: '1',
      name: 'Instagram Clone Coding.',
      description: 'Build The Instagram for Learning Graph QL & React JS ',
      backend: 'Graph QL',
      frontend: 'React Js',
      useit: ['apollo/client', 'graphql', 'styled-components'],
      gitPath: 'https://github.com/wonjongseo/netfilx',
      homepagePath: 'https://jongseo-instagrame.netlify.app'),
];
