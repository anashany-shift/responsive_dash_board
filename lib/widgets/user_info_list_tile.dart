import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/models/user_info_list_tile_model.dart';
import 'package:responsive_app/utils/app_style.dart';


class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key, required this.userInfoListTileModel, });
  final UserInfoListTileModel userInfoListTileModel;


  @override
  Widget build(BuildContext context) {
    return Card(
      color:Color(0xffFAFAFA) ,
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoListTileModel.image),
          title: Text(
            userInfoListTileModel.title,
            style: AppStyle.styleSemiBold16,
          ),
          subtitle: Text(userInfoListTileModel.subtitle, style: AppStyle.styleRegular12),
        ),
      ),
    );
  }
}
