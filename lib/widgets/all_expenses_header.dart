import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_style.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
  
      children: [
        Text('All Expenses',style: AppStyle.styleSemiBold20,),
        Expanded(
          child: SizedBox(),
        ),  
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Color(0xffE5E5E5), width: 1),
            ),
           
          ),
          child: Row(
            children: [
              Text("Monthly",style:AppStyle.styleMedium16,),
              SizedBox(width: 18,),
              Icon(Icons.keyboard_arrow_down_outlined, color: Color(0xff064061),),
              ],
          ),
        )
      ],
    );
  }
}