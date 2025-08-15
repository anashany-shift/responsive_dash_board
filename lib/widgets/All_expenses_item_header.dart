import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.imagePath,this.arrowColor, this.imageBackgroundColor, this.imageColor,});
  final String imagePath ;
  final Color? imageBackgroundColor , imageColor,arrowColor;// Update with your actual SVG path

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color:imageBackgroundColor?? Color(0xfffafafa),
          
            shape: OvalBorder()),
            child: Center(
              child: SvgPicture.asset(
                         imagePath,
                         colorFilter:ColorFilter.mode(imageColor?? Color(0xff4eb7f2), BlendMode.srcIn) ,

              ),
            ),
        
            
        ),
        Spacer(),
           Icon(Icons.keyboard_arrow_right, color:arrowColor?? Color(0xff064061),),
        
      ],
    );
  }
}

