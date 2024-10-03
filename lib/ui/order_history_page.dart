part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(builder: (_, state) {
      if (state is TransactionLoaded) {
        if (state.transaction.length == 0) {
          return IllustrationPage(
            title: 'Ouch! Hungry',
            subtitle: 'Seems like you have not\nordered any food yet',
            picturePath: 'assets/food_wishes.png',
            buttonTitle1: 'find food',
            buttonTap1: () {},
          );
        } else {
          double ListItemWidth =
              MediaQuery.of(context).size.width - 2 * defaultMargin;
          return ListView(
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
                    const SizedBox(
                      height: 16,
                    ),
                    Builder(builder: (_){
                      List<Transaction> transactions = (selectedIndex == 0
                          ? state.transaction
                          .where((e) => e.status == TransactionStatus.on_delivery ||
                          e.status == TransactionStatus.pending)
                          .toList()
                          : state.transaction
                          .where((e) => e.status == TransactionStatus.canceled ||
                          e.status == TransactionStatus.delivered)
                          .toList());
                      return Column(
                        children: transactions
                            .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OrderListItem(
                            transaction: e,
                            itemWidth: ListItemWidth,
                          ),
                        ))
                            .toList(),
                      );
                    })
                  ],
                ),
              ),
            ],
          );
        }
      } else {
        return Center(
          child: loadingIndicator,
        );
      }
    });
  }
}
