part of 'widget.dart';

class TabBarCustom extends StatelessWidget {
  final int selectedIndex;
  final List<String> title;
  final Function(int)? onTap;
  TabBarCustom({
    required this.title,
    this.selectedIndex = 0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            height: 1,
            color: "F2F2F2".toColor(),
          ),
          Row(
            children: title
                .map((e) => Padding(
                      padding: EdgeInsets.only(left: defaultMargin),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          /////untuk text yang terpilih
                          GestureDetector(
                            onTap: () {
                              if (onTap != null) {
                                onTap!(title.indexOf(e));
                              }
                            },
                            child: Text(
                              e,
                              style: (title.indexOf(e) == selectedIndex)
                                  ? blackFontStyle3.copyWith(
                                      fontWeight: FontWeight.w500)
                                  : greyTextFont,
                            ),
                          ),
                          ////Garis hitam yang terpilih
                          Container(
                              width: 40,
                              height: 3,
                              margin: EdgeInsets.only(top: 13),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.5),
                                color: (title.indexOf(e) == selectedIndex)
                                    ? "020202".toColor()
                                    : Colors.transparent,
                              ))
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
