part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustartionPage(
        title: "You've Made Order",
        subtitle: "Just stay at home while we are\npreparing your best food",
        imgPath: "assets/bike.png",
        buttonTitle1: "Order Other Foods",
        buttonTap1: () {},
        buttonTitle2: "View My Order",
        buttonTap2: () {},
      ),
    );
  }
}
