part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            ////HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Food Market',
                        style: blackFontStyle1,
                      ),
                      Text(
                        "Let's get some foods",
                        style: greyTextFont.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/login-app-6b3d6.appspot.com/o/pics%2F9E9TKm33PrSjCBIKf2oGc54SDV73?alt=media&token=14eabbf8-8367-4b96-9aee-cd6b9d031d5a'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            )

            ///LISTFOOD
            ///LIST OF FOOD TAP
          ],
        )
      ],
    );
  }
}
