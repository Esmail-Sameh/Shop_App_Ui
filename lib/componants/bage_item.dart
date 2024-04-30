import 'package:flutter/cupertino.dart';

class BageItem extends StatelessWidget {
  final String bageText;
  final IconData bageIcon;
  final Color bageColor;
  final Color fontColor;
  final void Function()? onTap;

  const BageItem(
      {super.key,
      required this.bageText,
      required this.bageIcon,
      required this.bageColor,
      required this.fontColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 110,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bageColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child:Row(
          children: [
            Text(bageText, style: TextStyle(color: fontColor , fontWeight: FontWeight.w600),),
            Spacer(),
            Icon(bageIcon),
          ],
        ),
      ),
    );
  }
}
