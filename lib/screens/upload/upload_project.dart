import 'dart:io';
import 'package:cloudinary_public/cloudinary_public.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:wonjongseo/utils/utilsFunction.dart';

class UploadProject extends StatefulWidget {
  static const pathName = '/upload-project';
  const UploadProject({super.key});
  static const String routeName = '/add-product ';
  @override
  State<UploadProject> createState() => _UploadProjectState();
}

class _UploadProjectState extends State<UploadProject> {
  final _formKey = GlobalKey<FormState>();

  bool isHoldUrlTextEditing = false;
  bool isHoldLanguageTextEditing = false;

  late TextEditingController _projecrTitleController;
  late TextEditingController _descriptionController;
  late TextEditingController _frontendController;
  late TextEditingController _backendController;
  late TextEditingController _androidUrlController;
  late TextEditingController _appleUrlController;
  late TextEditingController _websiteUrlController;
  late TextEditingController _githubUrlController;

  late TextEditingController _specificationsController;
  late TextEditingController _useThatController;
  // final AdminService addProductService = AdminService();
  List<File> images = [];
  List<String> productCategories = [];
  String category = 'Mobile';
  int categoryIndex = 0;
  bool isSubmit = false;
  List<String> specifications = [];

  void addProduct() async {
    if (images.isEmpty) {
      // showSnackBar(context, 'Please Select one more image');
    }
    if (_formKey.currentState!.validate()) {
      isSubmit = true;

      String cloudName = 'dmoeilguy';
      String uploadPreset = 'gtc30nsb';
      final cloudinary = CloudinaryPublic(cloudName, uploadPreset);
      List<String> imageUrls = [];
      for (var image in images) {
        print('image.path : ${image.path}');

        CloudinaryResponse res = await cloudinary.uploadFile(
            CloudinaryFile.fromFile(image.path,
                folder: '$category/${_projecrTitleController.text}'));

        imageUrls.add(res.secureUrl);
      }
      // await addProductService.postNewProduct(
      //   category: productCategories[categoryIndex],
      //   context: context,
      //   name: _productNameController.text,
      //   description: _descriptionController.text,
      //   price: double.parse(_priceController.text),
      //   quantity: double.parse(_quantityController.text),
      //   images: images,
      // );
    }
  }

  void selectImages() async {
    if (isSubmit) return;
    var res = await pickImages();
    images = res;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _projecrTitleController = TextEditingController();
    _descriptionController = TextEditingController();
    _frontendController = TextEditingController();
    _backendController = TextEditingController();

    _androidUrlController = TextEditingController();
    _appleUrlController = TextEditingController();
    _websiteUrlController = TextEditingController();
    _githubUrlController = TextEditingController();
    _specificationsController = TextEditingController();
    _useThatController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _projecrTitleController.dispose();
    _descriptionController.dispose();
    _frontendController.dispose();
    _backendController.dispose();

    _androidUrlController.dispose();
    _appleUrlController.dispose();
    _websiteUrlController.dispose();
    _githubUrlController.dispose();
    _specificationsController.dispose();
    _useThatController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                // gradient: GlobalVariables.appBarGradient,
                ),
          ),
          title: const Text(
            'Add Product',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: isSubmit ? Colors.grey : null,
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        if (images.isEmpty)
                          GestureDetector(
                            onTap: selectImages,
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(10),
                              dashPattern: const [10, 4],
                              strokeCap: StrokeCap.round,
                              color: Colors.white60,
                              child: Container(
                                  margin: const EdgeInsets.all(8),
                                  width: double.infinity,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.folder_open,
                                        size: 40,
                                      ),
                                      const SizedBox(height: 15),
                                      Text(
                                        'Select Projects Images',
                                        style: TextStyle(
                                          color: Colors.grey.shade400,
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          )
                        else
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 200,
                              viewportFraction: 1,
                              autoPlay: images.length != 1 ? true : false,
                            ),
                            items: List.generate(
                              images.length,
                              (index) {
                                return Opacity(
                                  opacity: isSubmit ? 0.2 : 1,
                                  child: Image.file(
                                    images[index],
                                    fit: BoxFit.contain,
                                    height: 200,
                                  ),
                                );
                              },
                            ),
                          ),
                        const SizedBox(height: 30),
                        CustomTextField(
                            isDisable: isSubmit,
                            controller: _projecrTitleController,
                            hintText: 'Prject Title'),
                        const SizedBox(height: 10),
                        CustomTextField(
                          isDisable: isSubmit,
                          controller: _descriptionController,
                          hintText: 'Description',
                          isRequired: false,
                          maxLines: 5,
                        ),
                        const SizedBox(height: 10),
                        CustomTextField(
                          isDisable: isSubmit,
                          controller: _specificationsController,
                          keyboardType: TextInputType.number,
                          hintText: 'Specifications (splitted by commma)',
                        ),

                        const SizedBox(height: 10),
                        CustomTextField(
                          isDisable: isSubmit,
                          controller: _useThatController,
                          keyboardType: TextInputType.number,
                          hintText: 'uses (splitted by commma)',
                        ),
                        //----
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 8),
                          child: TextButton(
                            onPressed: () {
                              isHoldLanguageTextEditing =
                                  !isHoldLanguageTextEditing;
                              setState(() {});
                            },
                            child: Text(isHoldLanguageTextEditing
                                ? 'Fold'
                                : 'See Forms of Language'),
                          ),
                        ),
                        if (isHoldLanguageTextEditing) ...[
                          CustomTextField(
                              isDisable: isSubmit,
                              controller: _frontendController,
                              keyboardType: TextInputType.number,
                              hintText: 'Frontend Language'),
                          const SizedBox(height: 10),
                          CustomTextField(
                              isDisable: isSubmit,
                              controller: _backendController,
                              keyboardType: TextInputType.number,
                              hintText: 'Backend Language'),
                        ],
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 8),
                          child: TextButton(
                            onPressed: () {
                              isHoldUrlTextEditing = !isHoldUrlTextEditing;
                              setState(() {});
                            },
                            child: Text(isHoldUrlTextEditing
                                ? 'Fold'
                                : 'See Forms of Url'),
                          ),
                        ),
                        if (isHoldUrlTextEditing) ...[
                          CustomTextField(
                              isRequired: false,
                              isDisable: isSubmit,
                              controller: _androidUrlController,
                              keyboardType: TextInputType.number,
                              hintText: 'Google Play Store Url'),
                          const SizedBox(height: 10),
                          CustomTextField(
                              isRequired: false,
                              isDisable: isSubmit,
                              controller: _appleUrlController,
                              keyboardType: TextInputType.number,
                              hintText: 'Apple Store Url'),
                          const SizedBox(height: 10),
                          CustomTextField(
                              isRequired: false,
                              isDisable: isSubmit,
                              controller: _websiteUrlController,
                              keyboardType: TextInputType.number,
                              hintText: 'Website Url'),
                          const SizedBox(height: 10),
                          CustomTextField(
                              isRequired: false,
                              isDisable: isSubmit,
                              controller: _githubUrlController,
                              keyboardType: TextInputType.number,
                              hintText: 'Github Url'),
                          const SizedBox(height: 10),
                        ],
                        // FutureBuilder(
                        //   future:
                        //       addProductService.getProductCategories(context),
                        //   builder: (context, snapshot) {
                        //     if (snapshot.hasData) {
                        //       productCategories = snapshot.data!;
                        //       return SizedBox(
                        //         width: double.infinity,
                        //         child: DropdownButton(
                        //           icon: const Icon(Icons.keyboard_arrow_down),
                        //           value: productCategories[categoryIndex],
                        //           items: productCategories
                        //               .map(
                        //                 (category) => DropdownMenuItem(
                        //                   value: category,
                        //                   child: Text(category),
                        //                 ),
                        //               )
                        //               .toList(),
                        //           onChanged: (value) {
                        //             int temp =
                        //                 productCategories.indexOf(value!);
                        //             categoryIndex = temp;
                        //             setState(() {});
                        //           },
                        //         ),
                        //       );
                        //     } else {
                        //       // return HttpErrorMessageBox(
                        //       //     errorMsg: snapshot.error.toString());
                        //     }
                        //   },
                        // ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                            onPressed: addProduct, child: Text('Uplaod')),
                        // CustomButton(
                        //   text: 'Sell',
                        //   onTap: () {
                        //     addProduct();
                        //   },
                        // ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (isSubmit) Loader()
          ],
        ),
      ),
    );
  }
}

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
          // color: GlobalVariables.,
          ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.maxLines = 1,
      this.isRequired = true,
      this.isDisable = false,
      this.keyboardType,
      this.isObscureText = false,
      this.textColor = Colors.white60,
      this.isNoValidator = false});
  final bool isNoValidator;
  final TextEditingController controller;
  final String hintText;
  final bool isRequired;
  final bool isDisable;
  final bool isObscureText;
  final TextInputType? keyboardType;
  final Color? textColor;

  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: isDisable,
      obscureText: isObscureText,
      style: TextStyle(color: textColor),
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: textColor),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      validator: (val) {
        if (isNoValidator) return null;
        if (keyboardType != null && keyboardType == TextInputType.number) {
          // if (!isNumeric(val!)) {
          //   return 'Please Input a Number TextEnter';
          // }
        }
        if (!isRequired) return null;
        if (val!.isEmpty) {
          return 'Enter your $hintText';
        }

        return null;
      },
      maxLines: maxLines,
    );
  }
}
