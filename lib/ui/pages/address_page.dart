part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String? _chosenValue;
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController houseController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: "Address",
      subtitle: "Make sure it's valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            margin:
                EdgeInsets.fromLTRB(defaultMargin, 26 * 2, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              'Phone Number',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyTextFont,
                hintText: "Type your phone number",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              'Address',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyTextFont,
                hintText: "Type your address",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              'House Number',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: TextField(
              controller: houseController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: greyTextFont,
                hintText: "Type your house number",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            width: double.infinity,
            child: Text(
              'City',
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black),
            ),
            child: DropdownButton<String>(
              value: _chosenValue,
              //elevation: 5,
              style: blackFontStyle3,
              isExpanded: true,
              underline: SizedBox(),
              items: <String>[
                'Jakarta',
                'Bandung',
                'Semarang',
                'Surabaya',
                'Yogyakarta',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              hint: Text(
                "Please choose a city",
                style: blackFontStyle3,
              ),
              onChanged: (value) {
                setState(() {
                  _chosenValue = value!;
                  print(_chosenValue);
                });
              },
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: defaultMargin * 2),
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
                'Sign Up Now',
                style: GoogleFonts.poppins()
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
