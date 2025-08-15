import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_style.dart';
import 'package:responsive_app/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title,required this.hintText});
  final String title,hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: AppStyle.styleMedium16,),
        SizedBox(height: 12,),
      CustomTextField(hintText: hintText),

      ],
    );
  }
}