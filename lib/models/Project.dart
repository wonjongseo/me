import 'package:get/get.dart';

class Project {
  final String index, title, description;

  final String? frontend, backend;
  final String? androidUrl, appleUrl;
  final String? homepagePath, githubPath;
  final List<String>? useThat;
  final List<String>? specifications;
  final List<String> images;

  Project(
      {required this.index,
      required this.title,
      required this.description,
      required this.images,
      this.homepagePath,
      this.frontend,
      this.backend,
      this.useThat,
      this.specifications,
      this.githubPath,
      this.androidUrl,
      this.appleUrl});

  String descriptionToLocale(String index) {
    return 'index_${index}_description'.tr;
  }

  String specificationsToLocale(String index, int specificationsIndex) {
    return 'index_${index}_specifications_$specificationsIndex'.tr;
  }
}
