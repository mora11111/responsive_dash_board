import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (flTouchEvent, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            }),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? -1.5 : null,
            radius: activeIndex == 0 ? 50 : 40,
            title: activeIndex == 0 ?   'Design service'  : '40%',
            value: 40,
            titleStyle:
                AppStyles.styleMedium16(context).copyWith(color:activeIndex == 0 ? null : Colors.white),
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? -1.5 : null,
            radius: activeIndex == 1 ? 50 : 40,
            title: activeIndex == 1 ? 'Design product' : '25%',
            value: 25,
            titleStyle:
                AppStyles.styleMedium16(context).copyWith(color:activeIndex == 1 ? null : Colors.white),
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? -1.5 : null,
            radius: activeIndex == 2 ? 50 : 40,
            title: activeIndex == 2 ? 'Product royalty' : '20%',
            value: 20,
            titleStyle:
                AppStyles.styleMedium16(context).copyWith(color:activeIndex == 2 ? null : Colors.white),
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? -1.5 : null,
            radius: activeIndex == 3 ? 50 : 40,
            title: activeIndex == 3 ? 'Other' : '22%',
            value: 22,
            titleStyle:
                AppStyles.styleMedium16(context).copyWith(color: activeIndex == 3 ? null : Colors.black),
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
