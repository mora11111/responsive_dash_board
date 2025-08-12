import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({
    super.key,
  });

  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'August 2025',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'August 2025',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'August 2025',
        price: r'$20,129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
            items.length,
            (index) => Expanded(
                    child: Padding(
                  padding: index == 1
                      ? const EdgeInsets.symmetric(horizontal: 12.0)
                      : EdgeInsets.zero,
                  child: AllExpensesItem(itemModel: items[index]),
                ))),
      ],
    );
  }
}
