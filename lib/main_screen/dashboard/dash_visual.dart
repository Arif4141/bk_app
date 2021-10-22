import 'package:bk_app/main_screen/dashboard/chart_data.dart';
import 'package:bk_app/utility/constant.dart';
import 'package:bk_app/utility/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class DashBoardVisual extends StatefulWidget {
  const DashBoardVisual({
    Key? key,
  }) : super(key: key);

  @override
  State<DashBoardVisual> createState() => _DashBoardVisualState();
}

class _DashBoardVisualState extends State<DashBoardVisual> {
  final _controller = PageController(initialPage: 0);
  final _currentPageNotifier = ValueNotifier<int>(0);
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isMobile(context) ? 400 : 500,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        // color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: !kIsWeb
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: PageView(
                        controller: _controller,
                        onPageChanged: (int index) {
                          _currentPageNotifier.value = index;
                        },
                        children: [
                          LineChartSample2(),
                          LineChartSample2(),
                        ]))
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: PageView(
                    controller: _controller,
                    onPageChanged: (int index) {
                      _currentPageNotifier.value = index;
                    },
                    children: [
                      LineChartSample2(),
                      LineChartSample2(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        _controller.previousPage(
                            duration: _kDuration, curve: _kCurve);
                      },
                      child: Text('Sebelumnya'),
                    ),
                    TextButton(
                      onPressed: () {
                        _controller.nextPage(
                            duration: _kDuration, curve: _kCurve);
                      },
                      child: Text('Selanjutnya'),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
