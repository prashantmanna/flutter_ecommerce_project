import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_ecommerce_project/data/repositories/categories/CategoryRepository.dart';
import 'package:flutter_ecommerce_project/features/shop/models/category_model.dart';
import 'package:flutter_ecommerce_project/utils/constants/Loaders.dart';
import 'package:get/get.dart';

import '../../../utils/helpers/FirebaseStorageService.dart';

class CategoryController extends GetxController{
  static CategoryController get instance => Get.find();
  
  final categoryRepository = Get.put(CategoryRepository());
  final RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  final RxList<CategoryModel> featuredCategory = <CategoryModel>[].obs;
  final db = FirebaseFirestore.instance;
  final reloading = false.obs;
  @override
  void onInit() {
    super.onInit();
    reloading.value = true;
    fetchCategories();
  }
  Future<void> fetchCategories() async{
    try{
      reloading.value = true;
      final categories = await categoryRepository.getAllCategories();
      allCategories.assignAll(categories);
      featuredCategory.assignAll(allCategories.where((item)=> item.isFeatured && item.parentId.isEmpty).take(8).toList());

    }on FirebaseException catch(e){
      Loaders.errorSnackBar(title: "Oh Snap!",message: e.toString());
    }finally{
      reloading.value = false;
    }
  }
  Future<void> uploadData(List<CategoryModel> categories) async{
    try{
      final storage = Get.put(FirebaseStorageService());
      for(var category in categories){
        final file = await storage.getImageFromDataAssets(category.image);
        final url = await storage.uploadImageData('categories',file,category.name);
        category.image = url;
        await db.collection("categories").doc(category.id).set(category.toJson());
      }
    }on FirebaseException catch(e){
      throw "Something went wrong, Please Try again";
    }
  }
}