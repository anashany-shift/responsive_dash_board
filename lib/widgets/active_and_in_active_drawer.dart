import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/models/drawer_item_model.dart';
import 'package:responsive_app/utils/app_style.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:SvgPicture.asset( drawerItemModel.image),
      title: Text(drawerItemModel.title,
      style:AppStyle.styleRegular16 ,
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing:Container(
        width: 3.3,
        color:Color(0xff4EB7F2),
      ) ,
      leading:SvgPicture.asset( drawerItemModel.image),
      title: Text(drawerItemModel.title,
      style:AppStyle.styleBold16,
    
      ),
    );
  }
}