part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;
  List<Transaction> inProgress = mockTransaction
      .where((element) =>
          element.status == TransactionStatus.onDelivery ||
          element.status == TransactionStatus.pending)
      .toList();
  List<Transaction> past = mockTransaction
      .where((element) =>
          element.status == TransactionStatus.deliver ||
          element.status == TransactionStatus.canceled)
      .toList();
  @override
  Widget build(BuildContext context) {
    if (inProgress.length == 0 && past.length == 0) {
      return IllustartionPage(
        title: 'Ouch! Hungry',
        subtitle: "Seems you like have not\nordered any food yet",
        imgPath: 'assets/love_burger.png',
        buttonTitle1: "Find Foods",
        buttonTap1: () {},
      );
    } else {
      double itemWidth = MediaQuery.of(context).size.width - 2 * defaultMargin;
      return ListView(
        children: [
          Column(
            children: [
              /////HEADER
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: defaultMargin),
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Orders',
                      style: blackFontStyle1,
                    ),
                    Text(
                      'Wait for the best meal',
                      style: greyTextFont.copyWith(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              /////BODY
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    TabBarCustom(
                      title: ['In Progress', 'Past Orders'],
                      selectedIndex: selectedIndex,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: (selectedIndex == 0 ? inProgress : past)
                          .map((e) => Padding(
                                padding: const EdgeInsets.only(
                                  right: defaultMargin,
                                  left: defaultMargin,
                                  bottom: 16,
                                ),
                                child: OrderListItem(
                                    transaction: e, itemWidth: itemWidth),
                              ))
                          .toList(),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      );
    }
  }
}
