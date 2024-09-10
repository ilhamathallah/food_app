part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController houseNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Profile',
      subtitle: "Make sure it's valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          // gambar
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
          // text address
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              'Address',
              style: blackFonStyle2,
            ),
          ),
          // field address
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type your address',
                  hintStyle: greyFonStyle),
            ),
          ),
          // phone number
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 6),
            child: Text(
              'Phone number',
              style: blackFonStyle2,
            ),
          ),
          // field phone
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type your phone number',
                  hintStyle: greyFonStyle),
            ),
          ),

          // house number
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 6),
            child: Text(
              'House number',
              style: blackFonStyle2,
            ),
          ),
          // field house
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextField(
              controller: houseNumberController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type your house number',
                  hintStyle: greyFonStyle),
            ),
          ),

          // text city
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(defaultMargin, 10, defaultMargin, 6),
            child: Text(
              'City',
              style: blackFonStyle2,
            ),
          ),
          // city
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: DropdownButton(items: [
                DropdownMenuItem(
                  child: Text('Bandung'),
                  value: 'Bandung',
                ),
                DropdownMenuItem(
                  child: Text('Cirebon'),
                  value: 'Cirebon',
                ),
                DropdownMenuItem(
                  child: Text('Batam'),
                  value: 'Batam',
                ),
                DropdownMenuItem(
                  child: Text('Palembang'),
                  value: 'Palembang',
                ),
              ], onChanged: (item) {},
              isExpanded: true,
              underline: SizedBox(),)),

          Container(
            width: double.infinity,
            height: 45,
            margin: EdgeInsets.only(top: 24),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: Text(
                'Continue',
                style: blackFonStyle3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
