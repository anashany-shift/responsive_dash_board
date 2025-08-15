import 'package:flutter/material.dart';
import 'package:responsive_app/models/drawer_item_model.dart';
import 'package:responsive_app/models/user_info_list_tile_model.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widgets/active_and_in_active_Drawer.dart';
import 'package:responsive_app/widgets/drawer_item_list_view.dart';
import 'package:responsive_app/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 1),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoListTileModel: UserInfoListTileModel(
                  image: AppAssets.imagesAvatar3,
                  title: "Lekan Okeowo",
                  subtitle: "demo@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(height: 20),
                ),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting system",
                        image: AppAssets.imagesSetting2)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout account",
                        image: AppAssets.imagesLogout)),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
