import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_item_model.dart';

import '../utils/app_style.dart';
import 'All_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Color(0xffe0e0e0), width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imagePath: itemModel.icon,
          ),
          SizedBox(
            height: 34,
          ),
          Text(itemModel.title, style: AppStyle.styleMedium16),
          SizedBox(
            height: 8,
          ),
          Text(itemModel.date, style: AppStyle.styleRegular14),
          SizedBox(
            height: 16,
          ),
          Text(itemModel.price, style: AppStyle.styleSemiBold24),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
      decoration: ShapeDecoration(
        color: Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Color(0xffe0e0e0), width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
              imagePath: itemModel.icon,
              arrowColor: Colors.white,
              imageBackgroundColor: Colors.white.withValues(alpha: 0.1),
              imageColor: Colors.white),
          SizedBox(
            height: 34,
          ),
          Text(itemModel.title,
              style: AppStyle.styleMedium16.copyWith(color: Colors.white)),
          SizedBox(
            height: 8,
          ),
          Text(itemModel.date,
              style: AppStyle.styleRegular14.copyWith(color: Colors.white)),
          SizedBox(
            height: 16,
          ),
          Text(itemModel.price,
              style: AppStyle.styleSemiBold24.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
