part of 'shared.dart';

const double defaultMargin = 24;

Color mainColor = "FFC700".toColor();
Color greyColor = "8D92A3".toColor();

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: mainColor,
);

TextStyle greyFonStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFonStyle1 = GoogleFonts.poppins().copyWith(
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w500);
TextStyle blackFonStyle2 = GoogleFonts.poppins().copyWith(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w700);
TextStyle blackFonStyle3 = GoogleFonts.poppins().copyWith(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w300);
