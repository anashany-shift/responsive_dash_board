import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyle.styleSemiBold20,
        ),
        Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration:
              ShapeDecoration(shape: OvalBorder(), color: Color(0xffFafafa)),
          child: Icon(
            Icons.add,
            color: Color(0xff4eb7f2),
          ),
        )
      ],
    );
  }
}
