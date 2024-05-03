import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:layout/layout.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:website/ui/home/section_eight.home.dart';
import 'package:website/ui/home/section_eleven.home.dart';
import 'package:website/ui/home/section_five.home.dart';
import 'package:website/ui/home/section_four.home.dart';
import 'package:website/ui/home/section_nine.home.dart';
import 'package:website/ui/home/section_one.home.dart';
import 'package:website/ui/home/section_seven.home.dart';
import 'package:website/ui/home/section_six.home.dart';
import 'package:website/ui/home/section_ten.home.dart';
import 'package:website/ui/home/section_three.home.dart';
import 'package:website/ui/home/section_two.home.dart';
import 'package:website/ui/widgets/contact_floating_button.dart';
import 'package:website/ui/widgets/footer.widget.dart';
import 'package:website/widgets/menu.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    this.tag,
  });

  final String? tag;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AutoScrollController scrollController = AutoScrollController();
  bool _showMiddle = false;

  @override
  void initState() {
    super.initState();
    if (widget.tag == 'about') {
      Future.delayed(1.seconds).then((_) {
        scrollController.scrollToIndex(
          10,
          preferPosition: AutoScrollPosition.end,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ShowMiddlePointer(
      showMiddle: _showMiddle,
      toggleShowMiddle: (show) {
        setState(() {
          _showMiddle = show;
        });
      },
      child: Scaffold(
        appBar: Menu(
          isHome: true,
          scrollController: scrollController,
        ),
        endDrawer: SideBar(
          isHome: true,
          buildContext: context,
          scrollController: scrollController,
        ),
        backgroundColor: const Color.fromARGB(255, 116, 116, 116),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: ListView(
                controller: scrollController,
                children: [
                  AutoScrollTag(
                    key: const ValueKey(1),
                    index: 1,
                    controller: scrollController,
                    child: SectionOneHome(
                      autoScrollController: scrollController,
                    ),
                  ),
                  AutoScrollTag(
                    key: const ValueKey(2),
                    index: 2,
                    controller: scrollController,
                    child: const SectionTwoHome(),
                  ),
                  AutoScrollTag(
                    key: const ValueKey(3),
                    index: 3,
                    controller: scrollController,
                    child: const SectionThreeHome(),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        AutoScrollTag(
                          key: const ValueKey(4),
                          index: 4,
                          controller: scrollController,
                          child: const SectionFourHome(),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(5),
                          index: 5,
                          controller: scrollController,
                          child: SectionFiveHome(
                            scrollController: scrollController,
                          ),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(6),
                          index: 6,
                          controller: scrollController,
                          child: const SectionSixHome(),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(7),
                          index: 7,
                          controller: scrollController,
                          child: const SectionSevenHome(),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(8),
                          index: 8,
                          controller: scrollController,
                          child: const SectionEightHome(),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(9),
                          index: 9,
                          controller: scrollController,
                          child: const SectionNineHome(),
                        ),
                        AutoScrollTag(
                          key: const ValueKey(10),
                          index: 10,
                          controller: scrollController,
                          child: const SectionTenHome(),
                        ),
                      ],
                    ),
                  ),
                  AutoScrollTag(
                    key: const ValueKey(11),
                    index: 11,
                    controller: scrollController,
                    child: const SectionElevenHome(),
                  ),
                  const Footer(),
                ],
              ),
            ),

            // Middle Cursor
            if (_showMiddle && context.breakpoint == LayoutBreakpoint.xs)
              Animate(
                effects: const [
                  MoveEffect(
                    curve: Curves.easeIn,
                    duration: Duration(milliseconds: 500),
                    begin: Offset(-20, 0),
                  )
                ],
                child: GestureDetector(
                  onVerticalDragUpdate: (details) {
                    // Calculate scroll delta based on the gesture
                    double delta = details.primaryDelta ?? 0;
                    // Adjust the scroll position
                    scrollController.jumpTo(scrollController.offset - delta);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          Colors.transparent,
                          Colors.white.withOpacity(0.2),
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            // if (_showMiddle && context.breakpoint == LayoutBreakpoint.xs)
            //   Positioned(
            //     top: MediaQuery.of(context).size.height / 2 - 75,
            //     left: 0,
            //     child: Animate(
            //       effects: const [
            //         MoveEffect(
            //           curve: Curves.easeIn,
            //           duration: Duration(milliseconds: 500),
            //           begin: Offset(-20, 0),
            //         )
            //       ],
            //       child: Container(
            //         padding: const EdgeInsets.all(4),
            //         decoration: BoxDecoration(
            //           shape: BoxShape.circle,
            //           color: Colors.white,
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.white.withOpacity(0.8),
            //               blurRadius: 10,
            //               spreadRadius: 10,
            //             ),
            //             BoxShadow(
            //               color: Colors.white.withOpacity(0.6),
            //               blurRadius: 100,
            //               spreadRadius: 100,
            //             ),
            //           ],
            //         ),
            //         child: const Icon(
            //           Icons.arrow_right_sharp,
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ),

            // contakt floating
            Positioned(
              bottom: context.breakpoint > LayoutBreakpoint.xs ? 20 : 5,
              right: context.breakpoint > LayoutBreakpoint.xs ? 20 : 5,
              child: ContactFloatingButton(context: context),
            ),
          ],
        ),
      ),
    );
  }
}

class ShowMiddlePointer extends InheritedWidget {
  const ShowMiddlePointer({
    super.key,
    this.showMiddle = false,
    required super.child,
    required this.toggleShowMiddle,
  });

  final bool showMiddle;
  final Function(bool) toggleShowMiddle;

  static ShowMiddlePointer? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShowMiddlePointer>();
  }

  @override
  bool updateShouldNotify(ShowMiddlePointer oldWidget) {
    return showMiddle != oldWidget.showMiddle;
  }
}
