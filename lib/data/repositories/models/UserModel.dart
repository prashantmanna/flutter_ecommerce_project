import '../../../utils/device/Formatter.dart';

class UserModel {
  final dynamic id;
  late dynamic firstName;
  late dynamic lastName;
  final dynamic userName;
  final dynamic email;
  late dynamic phoneNumber;
  late dynamic profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get fullName => '$firstName $lastName';
  String get formattedPhoneNo => Formatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(String fullName) => fullName.split(" ");

  static UserModel empty() => UserModel(
    id: '',
    firstName: '',
    lastName: '',
    userName: '',
    email: '',
    phoneNumber: '',
    profilePicture: '',
  );
  Map<String, String> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
    };
  }
}
