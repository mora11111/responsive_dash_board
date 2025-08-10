import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        Expanded(child: SizedBox()),
        Container(
          padding: EdgeInsets.all(12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
                borderRadius: BorderRadius.circular(12)),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Color(0xFF064061),
              ),
            ],
          ),
        )
      ],
    );
  }
}
