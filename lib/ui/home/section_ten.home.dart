import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:layout/layout.dart';
import 'package:website/ui/home/section_seven.home.dart';
import 'package:website/ui/widgets/action_button.dart';

class SectionTenHome extends StatefulWidget {
  const SectionTenHome({super.key});

  @override
  State<SectionTenHome> createState() => _SectionTenHomeState();
}

class _SectionTenHomeState extends State<SectionTenHome>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _controller = ScrollController();
  double _scrollPosition = 0.0;

  List<String> lkwsList = [
    'assets/img/lkw-one.webp',
    'assets/img/lkw-two.webp',
    'assets/img/lkw-three.webp',
  ];

  @override
  void initState() {
    super.initState();
    _startScrolling();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startScrolling() {
    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      _controller.animateTo(
        _scrollPosition + 100,
        duration: const Duration(seconds: 2),
        curve: Curves.linear,
      );
      _scrollPosition += 100;
      _startScrolling();
    });
  }

  openProfile() {
    showDialog(
      context: context,
      builder: (builder) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          padding: context.breakpoint > LayoutBreakpoint.xs
              ? const EdgeInsets.all(20.0)
              : null,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close_rounded,
                    size: 50,
                    shadows: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  color: Colors.white,
                  child: SingleChildScrollView(
                      child: SectionSevenHome(
                    modal: context.breakpoint == LayoutBreakpoint.xs,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: context.breakpoint > LayoutBreakpoint.md ? 50 : 0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: context.breakpoint > LayoutBreakpoint.xs
            ? Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(
                        height: 1,
                      ),
                      children: [
                        TextSpan(
                          text: 'Bereit für einen reibungslosen Umzug?\n',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: context.breakpoint > LayoutBreakpoint.xs
                                ? 35
                                : 30,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Kontaktieren Sie uns jetzt, damit wir Ihre individuellen Anforderungen besprechen können. Lassen Sie uns Ihren Umzug stressfrei gestalten!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: context.breakpoint > LayoutBreakpoint.xs
                                ? 25
                                : 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SingleChildScrollView(
                        controller: _controller,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(99, (index) {
                            int imageIndex = index % 3;

                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Image.asset(
                                lkwsList[imageIndex],
                                fit: BoxFit.fitHeight,
                              ),
                            );
                          }),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: ActionButton(
                          text: 'Jetzt Wagen bestellen',
                          width: context.breakpoint > LayoutBreakpoint.xs
                              ? 300
                              : 200,
                          onPressed: openProfile,
                          color: Theme.of(context).colorScheme.secondary,
                          borderSize: 2,
                          glowSize: 2,
                          borderColor: Theme.of(context).colorScheme.secondary,
                          shadowColor: Colors.grey,
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: context.breakpoint > LayoutBreakpoint.xs
                                ? 24
                                : 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SingleChildScrollView(
                          controller: _controller,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: List.generate(99, (index) {
                              int imageIndex = index % 3;

                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Image.asset(
                                  lkwsList[imageIndex],
                                  fit: BoxFit.fitHeight,
                                ),
                              );
                            }),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: ActionButton(
                            text: 'Jetzt Wagen bestellen',
                            width: context.breakpoint > LayoutBreakpoint.xs
                                ? 300
                                : 220,
                            onPressed: openProfile,
                            color: Theme.of(context).colorScheme.secondary,
                            borderSize: 2,
                            glowSize: 2,
                            borderColor:
                                Theme.of(context).colorScheme.secondary,
                            shadowColor: Colors.grey,
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: context.breakpoint > LayoutBreakpoint.xs
                                  ? 24
                                  : 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(
                        height: 1,
                      ),
                      children: [
                        TextSpan(
                          text: 'Bereit für einen reibungslosen Umzug?\n',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: context.breakpoint > LayoutBreakpoint.xs
                                ? 35
                                : 30,
                          ),
                        ),
                        TextSpan(
                          text:
                              'Kontaktieren Sie uns jetzt, damit wir Ihre individuellen Anforderungen besprechen können. Lassen Sie uns Ihren Umzug stressfrei gestalten!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: context.breakpoint > LayoutBreakpoint.xs
                                ? 25
                                : 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
