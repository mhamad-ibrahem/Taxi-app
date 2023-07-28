class ProfileModel {
  String name;
  String image;
  String phoneNumber;
  String role;
  String address;

  ProfileModel(
      {required this.name,
      required this.address,
      required this.image,
      required this.phoneNumber,
      required this.role});
  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        name: json["name"],
        image: json["image"],
        phoneNumber: json["phone number"],
        role: json["role"],
        address: json["address"],
      );
}
