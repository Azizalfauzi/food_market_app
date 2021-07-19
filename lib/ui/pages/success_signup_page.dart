part of 'pages.dart';

class SuccessSignupPage extends StatelessWidget {
  const SuccessSignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustartionPage(
        title: "Yeay! Completed",
        subtitle: "Now you are able to order\nsome foods as a self reward",
        imgPath: "assets/food_wishes.png",
        buttonTitle1: "Find Foods",
        buttonTap1: () {},
      ),
    );
  }
}
