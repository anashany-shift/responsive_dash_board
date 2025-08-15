import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widgets/user_info_list_tile.dart';
import 'package:responsive_app/models/user_info_list_tile_model.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoListTileModel(
        image: AppAssets.imagesAvatar1,
        title: "Anas",
        subtitle: "Madraniadi20@gmail"),
    UserInfoListTileModel(
        image: AppAssets.imagesAvatar2,
        title: "Hany",
        subtitle: "Madraniadi20@gmail"),
    UserInfoListTileModel(
        image: AppAssets.imagesAvatar3,
        title: "Hassan",
        subtitle: "Madraniadi20@gmail"),
  ];

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal  ,
      child: Row(
        children: items.map((item) => IntrinsicWidth(
          child: UserInfoListTile(userInfoListTileModel: item),
        )).toList(),    
      ),
    );
   
  }
}