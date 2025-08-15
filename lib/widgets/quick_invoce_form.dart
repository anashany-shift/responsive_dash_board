import 'package:flutter/material.dart';

import 'title_text_field.dart';

class QuickInvoceForm extends StatelessWidget {
  const QuickInvoceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
          Expanded(
            child: TitleTextField(
              title: "Customer Name",
              hintText: "type customer name",
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TitleTextField(
                title: "Customer Email", hintText: "type email address"),
          ),
        ]),
        SizedBox(
          height: 24,),
         Row(
          children: [
          Expanded(
            child: TitleTextField(
              title: "Item Name",
              hintText: "type item name",
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TitleTextField(
                title: "Customer Email", hintText: "type email address"),
          ),
        ]),
      ],
    );
  }
}
