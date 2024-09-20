part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;
  List<Transaction> inProgres = mockTransaction
      .where((e) =>
          e.status == TransactionStatus.on_delivery ||
          e.status == TransactionStatus.pending)
      .toList();
  List<Transaction> past = mockTransaction
      .where((e) =>
          e.status == TransactionStatus.canceled ||
          e.status == TransactionStatus.delivered)
      .toList();

  @override

  Widget build(BuildContext context) {

    double ListItemWidth = MediaQuery.of(context).size.width - 2 * defaultMargin;

    return (inProgres.length == 0 && past.length == 0)
        ? IllustrationPage(
            title: 'Ouch! Hungry',
            subtitle: 'Seems like you have not\nordered any food yet',
            picturePath: 'assets/food_wishes.png',
            buttonTitle1: 'find food',
            buttonTap1: () {})
        : ListView(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                margin: EdgeInsets.only(bottom: defaultMargin),
                padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your orders',
                      style: blackFonStyle2,
                    ),
                    Text(
                      'Wait fot the best meal',
                      style: blackFonStyle3,
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    CustomTabBar(
                      selectedIndex: selectedIndex,
                      titles: ['In Progress', 'Past Orders'],
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
                      children: (selectedIndex == 0 ? inProgres : past)
                          .map((e) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OrderListItem(
                                    transaction: e,
                                  itemWidth: ListItemWidth,
                                ),
                              ))
                          .toList(),
                    )
                  ],
                ),
              ),
            ],
          );
  }
}
