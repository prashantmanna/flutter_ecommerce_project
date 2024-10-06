import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_ecommerce_project/features/shop/models/category_model.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetxController{
  static CategoryRepository get instance => Get.find();
  final db = FirebaseFirestore.instance;

  Future<List<CategoryModel>> getAllCategories() async{
    try{
      final snapshot = await db.collection("categories").get();
      final list = snapshot.docs.map((e)=>CategoryModel.fromSnapshot(e)).toList();
      return list;
    }catch(e){
      throw "Something went wrong, Please try again";
    }
  }
}