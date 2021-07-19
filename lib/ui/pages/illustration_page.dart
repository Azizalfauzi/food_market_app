part of 'pages.dart';

class IllustartionPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgPath;
  final String buttonTitle1;
  final String? buttonTitle2;
  final Function? buttonTap1;
  final Function? buttonTap2;

  const IllustartionPage(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imgPath,
      required this.buttonTitle1,
      this.buttonTitle2,
      this.buttonTap1,
      this.buttonTap2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imgPath))),
          ),
          Text(
            title,
            style: blackFontStyle3.copyWith(fontSize: 20),
          ),
          Text(
            subtitle,
            style: greyTextFont.copyWith(fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 12),
            width: 200,
            height: 45,
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
                buttonTitle1,
                style: GoogleFonts.poppins()
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          (buttonTap2 == null)
              ? SizedBox()
              : SizedBox(
                  height: 45,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(greyColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                    child: Text(
                      buttonTitle2 ?? "Title",
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
