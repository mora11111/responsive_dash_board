import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        SizedBox(
          width: 420,
          child: Text('My Card',
          style: AppStyles.styleSemiBold20(context),),
        ),
        const SizedBox(
          height: 20,
        ),
        const MyCardPageView(),
        const SizedBox(
          height: 20,
        ),
        const DotsIndicator(),
      ],
    );
  }
}

//update dot indicator state depend on page view
