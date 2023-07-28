class UserModel {
  String? name;
  String? image;
  String? phoneNumber;
  String? role;
  String? address;
  String password;

  UserModel(
      {required this.name,
      required this.address,
      required this.image,
      required this.phoneNumber,
      required this.password,
      required this.role});
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        image: json["image"],
        phoneNumber: json["phone number"],
        role: json["role"],
        address: json["address"],
        password: json['password'],
      );
}
