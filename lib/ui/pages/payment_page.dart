part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction? transaction;

  const PaymentPage({this.transaction});

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Payment",
      subtitle: "You diserve better meal",
      onBackButtonPressed: () {},
      backColor: "FAFAFC".toColor(),
      child: Column(
        children: [
          ///BAGIAN ATAS
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            padding:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Ordered',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                    transaction!.food!.picturePath),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 189,
                              child: Text(
                                transaction!.food!.name,
                                style: blackFontStyle2,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                              ),
                            ),
                            Text(
                              NumberFormat.currency(
                                      locale: 'id-ID',
                                      symbol: 'IDR',
                                      decimalDigits: 0)
                                  .format(transaction!.food!.price),
                              style: greyTextFont.copyWith(fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                      '${transaction!.quantity} items(s)',
                      style: greyTextFont.copyWith(fontSize: 13),
                    ),
                  ],
                ),

                ///judul content
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Text(
                    'Detail Transaction',
                    style: blackFontStyle3,
                  ),
                ),

                ///content transaction
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction!.food!.name,
                        style: greyTextFont,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'IDR ',
                                decimalDigits: 0)
                            .format(transaction!.quantity *
                                transaction!.food!.price),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                ////Jarak antar data
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Driver",
                        style: greyTextFont,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'IDR ',
                                decimalDigits: 0)
                            .format(25000),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                ////Jarak antar data
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Tax 10%",
                        style: greyTextFont,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'IDR ',
                                decimalDigits: 0)
                            .format(transaction!.quantity *
                                transaction!.food!.price *
                                0.1),
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                ////Jarak antar data
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Total Price",
                        style: greyTextFont,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                symbol: 'IDR ',
                                decimalDigits: 0)
                            .format(transaction!.quantity *
                                    transaction!.food!.price *
                                    1.1 +
                                25000),
                        style: blackFontStyle3.copyWith(
                            fontWeight: FontWeight.w500,
                            color: "1ABC9C".toColor()),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                ///judul content
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 8),
                  child: Text(
                    'Deliver to:',
                    style: blackFontStyle3,
                  ),
                ),

                ///content transaction
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Home",
                        style: greyTextFont,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction!.user!.name,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                ////Jarak antar data
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Phone No.",
                        style: greyTextFont,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction!.user!.phoneNumber,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                ////Jarak antar data
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "Address",
                        style: greyTextFont,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction!.user!.address,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                ////Jarak antar data
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "House No.",
                        style: greyTextFont,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction!.user!.houseNumber,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                ////Jarak antar data
                SizedBox(
                  height: 6,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        "City",
                        style: greyTextFont,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 -
                          defaultMargin -
                          5,
                      child: Text(
                        transaction!.user!.city,
                        style: blackFontStyle3,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: defaultMargin * 3),
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(mainColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                    child: Text(
                      'Checkout Now',
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
