import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:layout/layout.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:website/ui/home/section_seven.home.dart';
import 'package:website/ui/widgets/action_button.dart';

class SectionOneHome extends StatefulWidget {
  const SectionOneHome({
    super.key,
    required this.autoScrollController,
  });

  final AutoScrollController autoScrollController;

  @override
  State<SectionOneHome> createState() => _SectionOneHomeState();
}

class _SectionOneHomeState extends State<SectionOneHome>
    with AutomaticKeepAliveClientMixin {
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
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            context.breakpoint > LayoutBreakpoint.xs
                ? 'assets/img/s1-bg.webp'
                : 'assets/img/bg-p2.webp',
          ),
          fit: BoxFit.fitHeight,
          alignment: context.breakpoint > LayoutBreakpoint.xs
              ? Alignment.centerRight
              : Alignment.centerLeft,
        ),
      ),
      child: Container(
        color: Colors.black.withOpacity(0.4),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                context.breakpoint > LayoutBreakpoint.xs
                    ? 'assets/img/s1-bg-two.webp'
                    : 'assets/img/bg-p2-two.webp',
              ),
              fit: BoxFit.fitHeight,
              alignment: context.breakpoint > LayoutBreakpoint.xs
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
            ),
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: MediaQuery.of(context).size.width >= 1000
                        ? textWidget(context)
                        : Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
              MediaQuery.of(context).size.width < 1000
                  ? textWidget(context)
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Container textWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Wir bewegen Ihr Zuhause,\n',
                    style: TextStyle(
                      fontSize:
                          context.breakpoint > LayoutBreakpoint.xs ? 45 : 28,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                      shadows: const [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 5,
                        ),
                        Shadow(
                          color: Colors.black,
                          blurRadius: 5,
                        ),
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                  TextSpan(
                    text: 'mit Umzug Profis ',
                    style: TextStyle(
                      fontSize:
                          context.breakpoint > LayoutBreakpoint.xs ? 30 : 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: const [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                        )
                      ],
                    ),
                  ),
                  TextSpan(
                    text: 'Bayern',
                    style: TextStyle(
                      fontSize:
                          context.breakpoint > LayoutBreakpoint.xs ? 40 : 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                      shadows: const [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 5,
                        ),
                        Shadow(
                          color: Colors.black,
                          blurRadius: 5,
                        ),
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                  TextSpan(
                    text: ' sind Sie auf der sicheren Seite.',
                    style: TextStyle(
                      fontSize:
                          context.breakpoint > LayoutBreakpoint.xs ? 30 : 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: const [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(20),
          if (context.breakpoint > LayoutBreakpoint.xs)
            Row(
              children: [
                ActionButton(
                  text: 'KONTAKT AUFNEHMEN',
                  onPressed: openProfile,
                  width: 230,
                ),
                const Gap(10),
                ActionButton(
                  text: 'ERFAHREN SIE MEHR',
                  width: 230,
                  onPressed: () {
                    widget.autoScrollController.scrollToIndex(
                      10,
                      preferPosition: AutoScrollPosition.end,
                    );
                  },
                ),
              ],
            )
          else
            Column(
              children: [
                ActionButton(
                  text: 'KONTAKT AUFNEHMEN',
                  onPressed: openProfile,
                  width: 220,
                ),
                const Gap(10),
                ActionButton(
                  text: 'ERFAHREN SIE MEHR',
                  onPressed: () {
                    widget.autoScrollController.scrollToIndex(
                      10,
                      preferPosition: AutoScrollPosition.end,
                    );
                  },
                  width: 220,
                ),
              ],
            )
        ],
      ),
    );
  }
}
