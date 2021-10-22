import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample2 extends StatefulWidget {
  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool harian_button = true;
  bool bulanan_button = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
              // color: Color(0xff232d37),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 12.0, top: 40, bottom: 12),
              child: LineChart(
                bulanan_button ? DataBulanan() : mainData(),
              ),
            ),
          );
        }),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     SizedBox(
        //       height: 38,
        //       child: TextButton(
        //         onPressed: () {
        //           setState(() {
        //             bulanan_button = false;
        //             harian_button = true;
        //           });
        //         },
        //         child: Text(
        //           'Harian',
        //           style: TextStyle(
        //               fontSize: 15,
        //               color: harian_button
        //                   ? Colors.white
        //                   : Colors.white.withOpacity(0.5)),
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 38,
        //       child: TextButton(
        //         onPressed: () {
        //           setState(() {
        //             bulanan_button = true;
        //             harian_button = false;
        //           });
        //         },
        //         child: Text(
        //           'Bulanan',
        //           style: TextStyle(
        //               fontSize: 15,
        //               color: bulanan_button
        //                   ? Colors.white
        //                   : Colors.white.withOpacity(0.5)),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (context, value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'SU';
              case 2:
                return 'MO';
              case 4:
                return 'TU';
              case 6:
                return 'WE';
              case 8:
                return 'TH';
              case 10:
                return 'FR';
              case 12:
                return 'SA';
            }
            return '';
          },
          margin: 13,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 20000:
                return '20k';
              case 40000:
                return '40k';
              case 60000:
                return '60k';
              case 80000:
                return '80k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 8,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 12,
      minY: 0,
      maxY: 80000,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 35000),
            FlSpot(2, 50000),
            FlSpot(4, 20000),
            FlSpot(6, 40000),
            FlSpot(8, 25000),
            FlSpot(10, 45000),
            FlSpot(12, 55000),
          ],
          isCurved: true,
          curveSmoothness: 0.3,
          colors: gradientColors,
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: false,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData DataBulanan() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (context, value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '1';
              case 1:
                return '2';
              case 2:
                return '3';
              case 3:
                return '4';
              case 4:
                return '5';
              case 5:
                return '6';
              case 6:
                return '7';
              case 7:
                return '8';
              case 8:
                return '9';
              case 9:
                return '10';
              case 10:
                return '11';
              case 11:
                return '12';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 20000:
                return '20k';
              case 40000:
                return '40k';
              case 60000:
                return '60k';
              case 80000:
                return '80k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 80000,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 35000),
            FlSpot(1, 50000),
            FlSpot(2, 20000),
            FlSpot(3, 40000),
            FlSpot(4, 25000),
            FlSpot(5, 45000),
            FlSpot(6, 55000),
            FlSpot(7, 35000),
            FlSpot(8, 50000),
            FlSpot(9, 20000),
            FlSpot(10, 40000),
            FlSpot(11, 25000),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!,
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!,
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
  }
}
