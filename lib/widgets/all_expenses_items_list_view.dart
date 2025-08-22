import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({
    super.key,
  });

  @override
  State<AllExpensesItemsListView> createState() => _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final items = [
    const AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'August 2025',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'August 2025',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'August 2025',
        price: r'$20,129'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(0),
            child: AllExpensesItem(
              isSelected: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(width: 12), // Replace padding with SizedBox
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(1),
            child: AllExpensesItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(width: 12), // Add another SizedBox if needed
        Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(2),
            child: AllExpensesItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}