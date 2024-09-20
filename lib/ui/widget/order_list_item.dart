part of 'widgets.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem(
      {super.key, required this.itemWidth, required this.transaction});

  final Transaction transaction;
  final double itemWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: NetworkImage(
                transaction.food?.picturePath ??
                    'https://ui-avatars.com/api/?name=${transaction.food?.name}',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: itemWidth! - 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.food?.name ?? 'No Name',
                style: blackFonStyle2,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                children: [
                  Text(transaction.quantity.toString() + ' Item(s) ~ '),
                  Text(
                    NumberFormat.currency(
                      symbol: 'IDR ',
                      decimalDigits: 0,
                      locale: 'id-ID',
                    ).format(transaction.total),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(convertDateTimeDisplay(transaction.dateTime!)),
                (transaction.status == TransactionStatus.delivered)
                    ? Text('Delivered', style: blackFonStyle2.copyWith(color: Colors.green),)
                    : (transaction.status == TransactionStatus.delivered)
                    ? Text('Canceled', style: blackFonStyle2.copyWith(color: Colors.red),)
                    : (transaction.status == TransactionStatus.delivered)
                    ? Text('Pending', style: blackFonStyle2.copyWith(color: Colors.yellow),)
                    : Text('On Delivery', style: blackFonStyle2.copyWith(color: Colors.blue),)
              ],
        ))
      ],
    );
  }
}
