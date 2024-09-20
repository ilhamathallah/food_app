part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    double listItemWidth = MediaQuery.of(context).size.width - 2 * defaultMargin;

    return ListView(
      children: [
        //   header
        Container(
          color: Colors.white,
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Food Market',
                    style: blackFonStyle1,
                  ),
                  Text(
                    "Let's get some foods",
                    style: blackFonStyle2,
                  )
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/736x/c8/4b/1b/c84b1bc7fb9fe438e9ac111af9db1b94.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
        //   card food
        Container(
          height: 220,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: defaultMargin),
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: mockFoods
                  .map(
                    (food) => Padding(
                      padding: EdgeInsets.only(
                          left: (food == mockFoods.first) ? defaultMargin : 0,
                          right: defaultMargin),
                      child: FoodCard(
                        food: food,
                      ),
                    ),
                  )
                  .toList()),
        ),
        //   tab layout
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              CustomTabBar(
                  selectedIndex: selectedIndex,
                  titles: ['New taste', 'popular', 'recomended'],
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              Builder(builder: (_) {
                List<Food> foods = (selectedIndex == 0)
                    ? mockFoods
                    : (selectedIndex == 1)
                        ? []
                        : [];
                return Column(
                    children: foods
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FoodListItem(
                                food: e,
                                itemWidth: listItemWidth,
                              ),
                            ))
                        .toList());
              }),
              SizedBox(height: 80,)
            ],
          ),
        )
      ],
    );
  }
}
