part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IllustrationPage(
      title: "Order Foods are on the way",
      subtitle: 'Just stay at home while we are\npreparing your best food',
      picturePath: 'assets/bike.png',
      buttonTitle1: 'order other foods',
      buttonTap1: (){},
      buttonTitle2: 'Order Other Foods',
      buttonTap2: (){},
    );
  }
}
