import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/UserModel.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserData(UserModel user) async{
    try{
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } catch(e){
      throw "Something went wrong , Please try again!";
    }
  }
}