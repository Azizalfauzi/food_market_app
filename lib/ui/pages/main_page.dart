part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ////STACK PALING BAWAH
          Container(
            color: Colors.white,
          ),
          ////STACK UNTUK WARNA
          SafeArea(
            child: Container(
              color: "FAFAFC".toColor(),
            ),
          ),
          /////BODY
          SafeArea(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              children: [
                Center(
                  child: FoodPage(),
                ),
                Center(
                  child: OrderHistoryPage(),
                ),
                Center(
                  child: Text('Profle'),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavbar(
              selectedIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
                pageController.jumpToPage(selectedIndex);
              },
            ),
          )
        ],
      ),
    );
  }
}
