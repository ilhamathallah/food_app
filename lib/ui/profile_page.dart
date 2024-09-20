part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  List<String> account = [
    'Edit profile',
    'Home address',
    'Security',
    'Payments',
    'Sign out'
  ];
  List<String> foodMarket = [
    'Rate app',
    'Help Center',
    'Privacy & Policy',
    'Term & Conditinons',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 110,
              height: 110,
              margin: EdgeInsets.only(top: 26),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/photo_border.png'),
              )),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://ui-avatars.com/api/?name=Ilham+Athallah'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(height: 18),
            Text(
              '${mockUser.name}',
              style: blackFonStyle1,
            ),
            Text(
              '${mockUser.email}',
              style: blackFonStyle1.copyWith(color: Colors.grey),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              margin: EdgeInsets.only(top: 10),
            ),
            Container(
              child: CustomTabBar(
                selectedIndex: selectedIndex,
                titles: ['Account', 'Food Market'],
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Column(
              children: (selectedIndex == 0
                  ? account
                  : foodMarket)
                  .map((e) => Padding(
                padding: const EdgeInsets.only(
                  right: defaultMargin,
                  left: defaultMargin,
                  bottom: 16,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e,
                          style: blackFonStyle3,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: greyColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
