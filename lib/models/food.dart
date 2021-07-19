part of 'models.dart';

class Food extends Equatable {
  final int? id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath = "",
      this.name = "",
      this.description = "",
      this.ingredients = "",
      this.price = 0,
      this.rate = 0});

  @override
  List<Object?> get props => [
        id,
        picturePath,
        name,
        description,
        ingredients,
        price,
        rate,
      ];
}

List<Food> mockFoods = [
  Food(
    id: 1,
    picturePath:
        "https://firebasestorage.googleapis.com/v0/b/login-app-6b3d6.appspot.com/o/pics%2FResep-Sate-Ponorogo.jpg?alt=media&token=a0ebce01-5ff2-4253-acbb-11c494e868cf",
    name: "Sate Ayam Ponorogo",
    description: "Sate khas daerah ponorogo",
    ingredients: "Ayam,Bawang merah,Bawang putih,Kecap",
    price: 25000,
    rate: 4.5,
  ),
  Food(
    id: 2,
    picturePath:
        "https://firebasestorage.googleapis.com/v0/b/login-app-6b3d6.appspot.com/o/pics%2Fnasi-padang.jpeg?alt=media&token=cab2e1e0-d5fb-494b-a166-5c5c6e76cce6",
    name: "Nasi Padang",
    description: "Makanan khas padang",
    ingredients: "Ayam,Telur dadar,Bumbu rahasia,sayur singkong",
    price: 35000,
    rate: 4.1,
  ),
  Food(
    id: 3,
    picturePath:
        "https://firebasestorage.googleapis.com/v0/b/login-app-6b3d6.appspot.com/o/pics%2Fseblak.jpg?alt=media&token=e1b04732-0524-49fd-97f1-3df1db566c17",
    name: "Seblak Jeletot",
    description: "Makanan khas bandung",
    ingredients: "Kerupuk,Bawang merah,Bawang putih,Garam,Gula",
    price: 22000,
    rate: 4.7,
  ),
];
