part of 'widget.dart';

class OrderListItem extends StatelessWidget {
  final Transaction transaction;
  final double itemWidth;

  OrderListItem({
    required this.transaction,
    required this.itemWidth,
  });

  String convertDateTime(DateTime dateTime) {
    String month;
    switch (dateTime.month) {
      case 1:
        month = "Jan";
        break;
      case 2:
        month = "Feb";
        break;
      case 3:
        month = "Mar";
        break;
      case 4:
        month = "Apr";
        break;
      case 5:
        month = "May";
        break;
      case 6:
        month = "Jun";
        break;
      case 7:
        month = "Jul";
        break;
      case 8:
        month = "Aug";
        break;
      case 9:
        month = "Sep";
        break;
      case 10:
        month = "Oct";
        break;
      case 11:
        month = "Nov";
        break;
      default:
        month = "Des";
    }
    return month + ' ${dateTime.day},${dateTime.hour}:${dateTime.minute}';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(transaction.food!.picturePath),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          width: itemWidth - 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.food!.name,
                style: blackFontStyle2,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                "${transaction.quantity}items(s)" +
                    NumberFormat.currency(
                            symbol: 'IDR', decimalDigits: 0, locale: 'id-ID')
                        .format(transaction.total),
                style: greyTextFont.copyWith(fontSize: 13),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 110,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                convertDateTime(transaction.dateTime),
                style: greyTextFont,
              ),
              (transaction.status == TransactionStatus.canceled)
                  ? Text(
                      'Cancelled',
                      style: GoogleFonts.poppins(
                          color: "D9435E".toColor(), fontSize: 10),
                    )
                  : (transaction.status == TransactionStatus.pending)
                      ? Text(
                          'Pending',
                          style: GoogleFonts.poppins(
                              color: "D9435E".toColor(), fontSize: 10),
                        )
                      : (transaction.status == TransactionStatus.onDelivery)
                          ? Text(
                              'On Delivery',
                              style: GoogleFonts.poppins(
                                  color: "1ABC9C".toColor(), fontSize: 10),
                            )
                          : SizedBox()
            ],
          ),
        )
      ],
    );
  }
}
