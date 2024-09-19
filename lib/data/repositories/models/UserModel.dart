
import '../../../utils/device/Formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture
});

  String get fullName => '$firstName $lastName';
  String get formattedPhoneNo => Formatter.formatPhoneNumber(phoneNumber);
  static List<String> nameParts(fullName) => fullName.split(" ");

  static UserModel empty() => UserModel(id: '', firstName: '', lastName: '', userName: '', email: '', phoneNumber: '', profilePicture: '');

  Map<String,dynamic> toJson(){
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': userName,
      'Email': email,
      'phone number': phoneNumber,
      'profile picture': profilePicture
    };
  }
}