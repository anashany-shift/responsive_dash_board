import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_item_model.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});
  static const items = [
    AllExpensesItemModel(
        icon: AppAssets.imagesBalance,
        title: "Balance",
        price: r" $20,129",
        date: "April 2022"),
    AllExpensesItemModel(
        icon: AppAssets.imagesIncome,
        title: "Income",
        price: r" $20,129",
        date: "April 2022"),
    AllExpensesItemModel(
        icon: AppAssets.imagesExpense,
        title: "Expense",
        price: r" $20,129",
        date: "April 2022"),
  ];
  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  // Replace with your actual SVG path
  int activeindex = 0;
  // Change this to true if you want to show active items
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemListView.items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (activeindex != index) {
                  setState(() {
                    activeindex = index;
                    print(activeindex);
                  }); // Toggle active state on tap
                }
              });
            },
            child: Padding(
              padding: index == 1 // second item (0-based index)
                  ? const EdgeInsets.symmetric(
                      horizontal: 8.0) // your desired padding
                  : EdgeInsets.zero,
              child: AllExpensesItem(
                itemModel: item,
                isActive: activeindex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
