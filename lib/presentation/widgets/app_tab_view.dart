import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:base_project/utils/res/app_data.dart';

class AppTabView extends StatefulWidget {
  final Map<String, Widget Function(void Function(ScrollController))> tabs;

  AppTabView({
    required this.tabs,
  });

  @override
  _AppTabViewState createState() => _AppTabViewState();
}

class _AppTabViewState extends State<AppTabView> {
  bool showAppBar = true;
  int _selectedTabIndex = 0;
  final CarouselController _controller = CarouselController();

  void onScroll(ScrollController _controller) {
    if (showAppBar != (_controller.offset <= 0.0)) {
      setState(() => showAppBar = _controller.offset <= 0.0);
    }
  }

  List<Widget> get _tabsMenu {
    final List<Widget> _tabs = [];

    for (int i = 0; i < widget.tabs.keys.length; i++) {
      _tabs.add(
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                _controller.animateToPage(i, curve: Curves.fastOutSlowIn);
                setState(() => _selectedTabIndex = i);
              },
              child: Center(
                child: Text(
                  widget.tabs.keys.elementAt(i),
                  style: AppData.textStyles.buttons(
                    color: i == _selectedTabIndex ? DefaultAppColors.black : DefaultAppColors.greyTwo,
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      if (i != widget.tabs.keys.length - 1) {
        _tabs.add(
          Container(
            width: 1.0,
            height: double.infinity,
            color: DefaultAppColors.black,
          ),
        );
      }
    }

    return _tabs;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: AppData.durations.milliseconds200,
          height: showAppBar ? 40.0 : 0.0,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            border: Border.all(color: DefaultAppColors.black),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(children: _tabsMenu),
        ),
        if (showAppBar) const SizedBox(height: 20.0),
        Container(
          width: double.infinity,
          height: 1.0,
          color: DefaultAppColors.greyTwo,
        ),
        Expanded(
          child: CarouselSlider.builder(
            carouselController: _controller,
            options: CarouselOptions(
              height: double.infinity,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollPhysics: BouncingScrollPhysics(),
              onPageChanged: (index, reason) => setState(() => _selectedTabIndex = index),
            ),
            itemCount: widget.tabs.values.length,
            itemBuilder: (BuildContext context, int index, int val) {
              return widget.tabs.values.elementAt(index)(onScroll);
            },
          ),
        ),
      ],
    );
  }
}
