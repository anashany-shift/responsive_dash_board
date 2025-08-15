import 'package:flutter/material.dart';
import 'package:responsive_app/models/drawer_item_model.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widgets/drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({
    super.key,
  });

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: "Dashboard", image: AppAssets.imagesDashboard),
    DrawerItemModel(
        title: "My Transaction", image: AppAssets.imagesTransaction),
    DrawerItemModel(title: "Statistics", image: AppAssets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", image: AppAssets.imagesWallet2),
    DrawerItemModel(title: "My Investments", image: AppAssets.imagesInvestment),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
                print(activeIndex);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
