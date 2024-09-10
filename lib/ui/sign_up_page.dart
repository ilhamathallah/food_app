part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GeneralPage(
        title: "Sign Up",
        subtitle: 'Create your account',
        onBackButtonPressed: (){
          Get.back();
        },
        child: Column(
          children: <Widget> [
            // name
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
              child: Text(
                'Your name',
                style: blackFonStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFonStyle,
                    hintText: 'enter your name'),
              ),
            ),
            // email
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 6, defaultMargin, 6),
              child: Text(
                'Email Address',
                style: blackFonStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFonStyle,
                    hintText: 'Type your email address'),
              ),
            ),
            // password
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 6, defaultMargin, 6),
              child: Text(
                'Password',
                style: blackFonStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: TextField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFonStyle,
                    hintText: 'Type your password'),
              ),
            ),
            // button
            Container(
              width: double.infinity,
              height: 45,
              margin: EdgeInsets.only(top: 24),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Get.to(() => AddressPage());
                },
                child: Text(
                  'Continue',
                  style: blackFonStyle3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
