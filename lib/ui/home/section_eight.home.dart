import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:layout/layout.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:website/utils/scroll.behavior.dart';

class SectionEightHome extends StatefulWidget {
  const SectionEightHome({super.key});

  @override
  State<SectionEightHome> createState() => _SectionEightHomeState();
}

class _SectionEightHomeState extends State<SectionEightHome> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: context.breakpoint > LayoutBreakpoint.md ? 100 : 20,
      ),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                height: 1,
              ),
              children: [
                TextSpan(
                  text: 'Als Gewinner\n',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                const TextSpan(
                  text: 'profitieren Sie davon',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (context.breakpoint > LayoutBreakpoint.sm)
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      controller.previousPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 60,
                    ),
                  ),
                ),
              if (context.breakpoint > LayoutBreakpoint.sm) const Gap(20),
              Expanded(
                child: Container(
                  height: 300,
                  width: context.breakpoint > LayoutBreakpoint.md ? 600 : null,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 15,
                      )
                    ],
                  ),
                  child: PageView(
                    controller: controller,
                    scrollBehavior: AppScrollBehavior(),
                    children: [
                      pageItem(
                        context,
                        'Keine bösen Überraschungen',
                        'Mit Umzug Profis Bayern werden Sie keine versteckten Kosten erhalten.',
                      ),
                      pageItem(
                        context,
                        'Schnelle Kommunikation',
                        'Ihre individuelle Wünsche sind uns wichtig, deshalb arbeiten wir schnell.',
                      ),
                      pageItem(
                        context,
                        'Kostenfreie Besichtigung',
                        'Unverbindliche Besichtigung und kostenloses Angebot.',
                      ),
                      pageItem(
                        context,
                        'Top Preise - Top Team',
                        'Bei Umzug Profis Bayern profitieren Sie nicht nur von besten Preisverhältnis, sondern Sie erwartet ein starkes, motiviertes Team mit einer dynamischen herangehensweise.',
                      ),
                      pageItem(
                        context,
                        'Kundensupport',
                        'Unser freundliches Kundensupport-Team steht Ihnen jederzeit zur Verfügung, um Fragen zu beantworten und Unterstützung zu bieten.',
                      ),
                    ],
                  ),
                ),
              ),
              if (context.breakpoint > LayoutBreakpoint.sm) const Gap(20),
              if (context.breakpoint > LayoutBreakpoint.sm)
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      controller.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 60,
                    ),
                  ),
                ),
            ],
          ),
          const Gap(10),
          SmoothPageIndicator(
            controller: controller,
            count: 5,
            effect: WormEffect(
              activeDotColor: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget pageItem(
    BuildContext context,
    String title,
    String text,
  ) {
    return Padding(
      padding: context.breakpoint > LayoutBreakpoint.xs
          ? const EdgeInsets.all(20)
          : const EdgeInsets.only(
              top: 20,
              left: 20,
              bottom: 5,
              right: 20,
            ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.access_time_rounded,
            size: 80,
            color: Theme.of(context).primaryColor,
          ),
          Gap(context.breakpoint > LayoutBreakpoint.xs ? 20 : 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: context.breakpoint > LayoutBreakpoint.xs ? 32 : 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(context.breakpoint > LayoutBreakpoint.xs ? 20 : 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: context.breakpoint > LayoutBreakpoint.xs ? 24 : 15,
            ),
          ),
          if (context.breakpoint == LayoutBreakpoint.xs) const Spacer(),
          if (context.breakpoint == LayoutBreakpoint.xs)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                  ),
                ),
                const Gap(20),
                GestureDetector(
                  onTap: () {
                    controller.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
