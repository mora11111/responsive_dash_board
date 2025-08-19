import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_secton_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IncomeSectionHeader(),
      ],
    );
  }
}

