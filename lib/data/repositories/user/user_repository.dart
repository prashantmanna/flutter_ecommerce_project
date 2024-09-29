import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_ecommerce_project/data/repositories/authentication/AuthenticationRepository.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

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

  Future<UserModel> fetchUserData() async{
    try{
      final doc = await _db.collection('Users').doc(AuthenticationRepository.instance.authUser?.uid).get();
      if(doc.exists){
        return UserModel.fromSnapshot(doc);
      }else {
        return UserModel.empty();
      }
    } catch(e){
      throw "Something went wrong , Please try again!";
    }
  }

  Future<void> updateUserData(UserModel updatedUser) async{
    try{
      await _db.collection("Users").doc(updatedUser.id).update(updatedUser.toJson());
    }catch(e){
        throw "Something went wrong , Please try again";
    }
  }

  Future<void> updateSingleField(Map<String,dynamic> json)async{
    try{
      await _db.collection("Users").doc(AuthenticationRepository.instance.authUser?.uid).update(json);
    } catch(e){
      throw "Something went wrong , Please try again";
    }
  }

  Future<void> deleteData(String uid) async{
    try{
      await _db.collection("Users").doc(uid).delete();
    }catch(e){
      throw "Something went wrong, Please try again";
    }
  }

  Future<void> removeUserRecord(String uid) async{
    try{
      await _db.collection("Users").doc(uid).delete();
    }catch(e){
      throw "Something went wrong , Please try again";
    }
  }

  Future<String> uploadImage(String path,XFile image) async{
    try{
      final ref = FirebaseStorage.instance.ref(path).child(image.name);
      await ref.putFile(File(image.path));

      final url = ref.getDownloadURL();
      return url;

    }catch(e){
      throw "Something went wrong,";
    }
  }
}