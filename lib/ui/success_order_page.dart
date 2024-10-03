part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IllustrationPage(
      title: "Order Foods are on the way",
      subtitle: 'Just stay at home while we are\npreparing your best food',
      picturePath: 'assets/bike.png',
      buttonTitle1: 'Order Other Foods',
      buttonTap1: (){
        Get.offAll(MainPages(initialPage: 1));
      },
      buttonTitle2: 'View My Other',
      buttonTap2: (){},
    );
  }
}
