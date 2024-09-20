part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key, required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Payment',
      subtitle: 'You deserve better meal',
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: <Widget>[
          //   header
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            padding: EdgeInsets.symmetric(vertical: 12),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Item Orders',
                  style: blackFonStyle3.copyWith(fontSize: 16),
                ),
                SizedBox(height: 12),
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(
                            10,
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  transaction.food!.picturePath!))),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 189,
                          child: Text(
                            transaction.food!.name!,
                            style: blackFonStyle2,
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                          ),
                        ),
                        Text(NumberFormat.currency(
                                symbol: 'IDR ',
                                decimalDigits: 0,
                                locale: 'id_ID')
                            .format(transaction.food!.price))
                      ],
                    ),
                    Expanded(
                      child: Text(
                        "${transaction.quantity} item(s)",
                        style: greyFonStyle.copyWith(fontSize: 13),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                  height: 12,
                ),
                Text(
                  'Details Transaction',
                  style: blackFonStyle3.copyWith(fontSize: 16),
                ),
                SizedBox(height: 12),
                // makanan
                Row(
                  children: [
                    Text(transaction.food!.name!, style: blackFonStyle3),
                    Spacer(),
                    Text(NumberFormat.currency(
                            symbol: 'IDR', locale: 'id_ID', decimalDigits: 0)
                        .format(transaction.food!.price!))
                  ],
                ),
                SizedBox(height: 12),
                // quantity
                Row(
                  children: [
                    Text(
                      'Quantity',
                      style: blackFonStyle3,
                    ),
                    Spacer(),
                    Text(
                      '${transaction.quantity.toString()} item(s)',
                    )
                  ],
                ),
                SizedBox(height: 12),
                // quantity
                Row(
                  children: [
                    Text(
                      'Subtotal',
                      style: blackFonStyle3,
                    ),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                              symbol: 'IDR', decimalDigits: 0, locale: 'id_ID')
                          .format(
                              transaction.food!.price! * transaction.quantity!),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                  height: 12,
                ),
                SizedBox(height: 12),
                // tax
                Row(
                  children: [
                    Text(
                      'Tax 10%',
                      style: blackFonStyle3,
                    ),
                    Spacer(),
                    Text(NumberFormat.currency(
                            symbol: 'IDR', decimalDigits: 0, locale: 'id_ID')
                        .format(transaction.food!.price! *
                            transaction.quantity! *
                            0.1)),
                  ],
                ),
                SizedBox(height: 12),
                // driver
                Row(
                  children: [
                    Text(
                      'Driver',
                      style: blackFonStyle3,
                    ),
                    Spacer(),
                    Text(NumberFormat.currency(
                            symbol: 'IDR', decimalDigits: 0, locale: 'id_ID')
                        .format(50000)),
                  ],
                ),
                SizedBox(height: 12),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                  height: 12,
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      'Total',
                      style: blackFonStyle2,
                    ),
                    Spacer(),
                    Text(NumberFormat.currency(
                            symbol: 'IDR ', decimalDigits: 0, locale: 'id_ID')
                        .format(transaction.total))
                  ],
                ),
                SizedBox(height: 12),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                  height: 12,
                ),
                Text(
                  'Deliver to:',
                  style: blackFonStyle3,
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Nama Penerima:',
                      style: blackFonStyle3,
                    ),
                    Spacer(),
                    Text(mockUser.name!)
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Email Penerima:',
                      style: blackFonStyle3,
                    ),
                    Spacer(),
                    Text(mockUser.email!)
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Phone Number:',
                      style: blackFonStyle3,
                    ),
                    Spacer(),
                    Text(mockUser.phoneNumber!)
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'Address:',
                      style: blackFonStyle3,
                    ),
                    Spacer(),
                    Text(mockUser.address!)
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'House Number:',
                      style: blackFonStyle3,
                    ),
                    Spacer(),
                    Text(mockUser.houseNumber!)
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      'City:',
                      style: blackFonStyle3,
                    ),
                    Spacer(),
                    Text(mockUser.city!)
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                      onPressed: (){},
                      child: Text('Order Now', style: blackFonStyle3.copyWith(
                        color: Colors.white
                      ),)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
