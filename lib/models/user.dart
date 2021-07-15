part of 'models.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? address;
  final String? houseNumber;
  final String? phoneNumber;
  final String? city;
  final String? picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});
  @override
  List<Object?> get props => [
        id,
        name,
        email,
        address,
        houseNumber,
        phoneNumber,
        city,
        picturePath,
      ];
}

User mockUser = User(
  id: 1,
  name: "Aziz Alfauzi",
  email: "aziz@gmail.com",
  address: "Bandung",
  houseNumber: "6621",
  phoneNumber: "082",
  city: "Bandung",
  picturePath:
      "https://firebasestorage.googleapis.com/v0/b/login-app-6b3d6.appspot.com/o/pics%2F9E9TKm33PrSjCBIKf2oGc54SDV73?alt=media&token=14eabbf8-8367-4b96-9aee-cd6b9d031d5a",
);
