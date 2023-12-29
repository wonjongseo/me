// import 'dart:io';

// import 'package:cloudinary_public/cloudinary_public.dart';
// import 'package:wonjongseo/models/Project.dart';

// class UploadProjectService {
//   Future<void> postNewProject({
//     required String title,
//  required String projecrTitle,
//  required String description,
//   String? frontend,
//   String? backend,
//   String? androidUrl,
//   String? appleUrl,
//   String? websiteUrl,
//   String? githubUrl,
//   String? specifications,
//   String? useThat,
//  required List<File> images,

//   }) async{
// try {
//       String cloudName = 'dmoeilguy';
//       String uploadPreset = 'gtc30nsb';

//       final cloudinary = CloudinaryPublic(cloudName, uploadPreset);
//       List<String> imageUrls = [];
//       for (var image in images) {
//         CloudinaryResponse res = await cloudinary.uploadFile(
//             CloudinaryFile.fromFile(image.path, folder: projecrTitle));

//         imageUrls.add(res.secureUrl);
//       }

//       Product newProduct = Product(
//           name: name,
//           description: description,
//           price: price,
//           quantity: quantity,
//           category: category,
//           images: imageUrls,
//           ratings: []);

//       http.Response response = await http.post(
//         Uri.parse('$baseUrl/admin/add-product'),
//         body: newProduct.toJson(),
//         headers: <String, String>{
//           'x-auth-token': user.token,
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//       );

//       httpErrorHandleFunction(
//           response: response,
//           context: context,
//           onSuccess: () {
//             showSnackBar(context, 'Product Added Successfully!');
//             Navigator.pop(context);
//           });
//     } catch (error) {
//       showSnackBar(context, error.toString());
//     }
//   }
// }