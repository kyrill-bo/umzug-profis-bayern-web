import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:layout/layout.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:smooth_scroll_multiplatform/smooth_scroll_multiplatform.dart';

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

  bool disableScroll = false;

  @override
  void initState() {
    super.initState();
    if (widget.tag == 'about') {
      setState(() {
        disableScroll = true;
      });
      Future.delayed(1200.milliseconds).then((_) {
        scrollController
            .scrollToIndex(
          9,
          preferPosition: context.breakpoint > LayoutBreakpoint.xs
              ? AutoScrollPosition.end
              : AutoScrollPosition.middle,
          duration: 500.milliseconds,
        )
            .then((value) {
          setState(() {
            disableScroll = false;
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: DynMouseScroll(
              builder: (context, scontroller, physics) {
                return SingleChildScrollView(
                  controller: scrollController,
                  physics: disableScroll
                      ? const NeverScrollableScrollPhysics()
                      : physics,
                  child: Column(
                    // controller: scrollController,
                    // physics: physics,
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
                      AutoScrollTag(
                        key: const ValueKey(11),
                        index: 11,
                        controller: scrollController,
                        child: const SectionElevenHome(),
                      ),
                      const Footer(),
                    ],
                  ),
                );
              },
            ),
          ),

          // contakt floating
          Positioned(
            bottom: context.breakpoint > LayoutBreakpoint.xs ? 20 : 5,
            right: context.breakpoint > LayoutBreakpoint.xs ? 20 : 5,
            child: ContactFloatingButton(context: context),
          ),
        ],
      ),
    );
  }
}
