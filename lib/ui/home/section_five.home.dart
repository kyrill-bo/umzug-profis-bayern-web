import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:layout/layout.dart';
import 'package:website/ui/home/section_seven.home.dart';
import 'package:website/ui/widgets/action_button.dart';

class SectionFiveHome extends StatefulWidget {
  const SectionFiveHome({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<SectionFiveHome> createState() => _SectionFiveHomeState();
}

class _SectionFiveHomeState extends State<SectionFiveHome>
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
          padding: const EdgeInsets.all(20.0),
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
              const Expanded(
                child: Material(
                  child: SingleChildScrollView(child: SectionSevenHome()),
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
      padding: const EdgeInsets.symmetric(
        vertical: 50,
      ),
      color: Colors.white,
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
                  text: 'Planung und Durchführung ihres Umzugs\n',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize:
                        context.breakpoint > LayoutBreakpoint.xs ? 40 : 30,
                  ),
                ),
                TextSpan(
                  text: 'Ein reibungsloser Ablauf garantiert',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:
                        context.breakpoint > LayoutBreakpoint.xs ? 35 : 20,
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          if (context.breakpoint <= LayoutBreakpoint.sm)
            Stack(
              alignment: Alignment.topCenter,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) => AspectRatio(
                    aspectRatio: 1.5,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                          ),
                        ],
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            'assets/img/hand-keys.webp',
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.bottomLeft,
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.7,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                LayoutBuilder(
                  builder: (context, constraints) => Padding(
                    padding: EdgeInsets.only(
                      top: constraints.maxWidth / 1.5 * 0.5,
                      left: 15,
                      right: 15,
                    ),
                    child: textContent(context),
                  ),
                ),
              ],
            ),
          if (context.breakpoint > LayoutBreakpoint.xs)
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.breakpoint > LayoutBreakpoint.xs ? 100 : 0,
              ),
              child: Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 100,
                        bottom: 50,
                      ),
                      child: Container(
                        width: 800,
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/img/hand-keys.webp',
                        ),
                      ),
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) => Padding(
                        padding: EdgeInsets.only(
                          top: constraints.maxWidth / 1.5 * 0.5,
                          left: 15,
                          right: 15,
                        ),
                        child: textContent(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const Gap(20),
          Text(
            'Was wir tun werden',
            style: TextStyle(
              fontSize: context.breakpoint > LayoutBreakpoint.xs ? 40 : 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(20),
          LayoutBuilder(
            builder: (context, constraints) {
              final divider = context.layout.value(xs: 1, sm: 2, md: 2, lg: 3);

              final size = constraints.maxWidth / divider - 20;

              return Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  ProfitierenItem(
                    width: size,
                    height: context.breakpoint == LayoutBreakpoint.xs
                        ? null
                        : size * 0.8,
                    img: 'assets/img/home-box.webp',
                    title: 'Individueller Umzugsplan',
                    text:
                        'Basierend auf Ihren Bedürfnissen erstellen wir einen maßgeschneiderten Umzugsplan, der alle Details berücksichtigt, um einen reibungslosen Ablauf zu gewährleisten.',
                  ),
                  ProfitierenItem(
                    width: size,
                    height: context.breakpoint == LayoutBreakpoint.xs
                        ? null
                        : size * 0.8,
                    img: 'assets/img/switch-packages.webp',
                    title: 'Verpackungsservice',
                    text:
                        'Unsere erfahrenen Mitarbeiter kümmern sich um das sichere Verpacken Ihres gesamten Inventars, von empfindlichen Gegenständen bis hin zu Möbeln, um Schäden zu vermeiden.',
                  ),
                  ProfitierenItem(
                    width: size,
                    height: context.breakpoint == LayoutBreakpoint.xs
                        ? null
                        : size * 0.8,
                    img: 'assets/img/montage.webp',
                    title: 'Möbelmontage und -demontage',
                    text:
                        'Wir demontieren und montieren Ihre Möbel professionell, um Zeit zu sparen und sicherzustellen, dass sie sicher transportiert werden.',
                  ),
                  ProfitierenItem(
                    width: size,
                    height: context.breakpoint == LayoutBreakpoint.xs
                        ? null
                        : size * 0.8,
                    img: 'assets/img/side-lkw.webp',
                    title: 'Professionelle Transportmittel',
                    text:
                        'Wir verfügen über eine Flotte von Fahrzeugen in verschiedenen Größen, um Ihren Umzug effizient und ohne Verzögerungen durchzuführen.',
                  ),
                  ProfitierenItem(
                    width: size,
                    height: context.breakpoint == LayoutBreakpoint.xs
                        ? null
                        : size * 0.8,
                    img: 'assets/img/time-lkw.webp',
                    title: 'Zeitgerechte Lieferung',
                    text:
                        'Wir halten uns strikt an den vereinbarten Zeitplan und liefern Ihr Eigentum pünktlich an die Zieladresse.',
                  ),
                  ProfitierenItem(
                    width: size,
                    height: context.breakpoint == LayoutBreakpoint.xs
                        ? null
                        : size * 0.8,
                    img: 'assets/img/cleaner.webp',
                    title: 'Endreinigungsservice',
                    text:
                        'Nach dem Umzug bieten wir auch einen Endreinigungsservice an, um sicherzustellen, dass Ihr altes Zuhause ordentlich und sauber hinterlassen wird.',
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Padding textContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 15,
        bottom: 15,
      ),
      child: Container(
        width: 600,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15,
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Umzugsanfrage senden',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const Gap(5),
                context.breakpoint > LayoutBreakpoint.xs
                    ? Icon(
                        Icons.email,
                        color: Theme.of(context).colorScheme.secondary,
                      )
                    : Expanded(
                        child: Icon(
                          Icons.email,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                context.breakpoint > LayoutBreakpoint.xs
                    ? Icon(
                        Icons.phone,
                        color: Theme.of(context).colorScheme.secondary,
                      )
                    : Expanded(
                        child: Icon(
                          Icons.phone,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
              ],
            ),
            const Gap(20),
            const Text(
              'Ab jetzt übernehmen wir! Nach einem Wunschtermin gönnen Sie sich einen Kaffee, denn ihr Umzug ist sogut wie erledigt.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const Gap(20),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 15,
                    )
                  ],
                ),
                child: ActionButton(
                  text: 'JETZT KONTAKTIEREN',
                  color: Theme.of(context).colorScheme.secondary,
                  borderSize: 2,
                  glowSize: 2,
                  borderColor: Theme.of(context).colorScheme.secondary,
                  shadowColor: Colors.grey,
                  onPressed: openProfile,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfitierenItem extends StatefulWidget {
  const ProfitierenItem({
    super.key,
    required this.width,
    required this.height,
    required this.title,
    required this.text,
    required this.img,
  });

  final String img;
  final double width;
  final double? height;
  final String title;
  final String text;

  @override
  State<ProfitierenItem> createState() => _ProfitierenItemState();
}

class _ProfitierenItemState extends State<ProfitierenItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    if (context.breakpoint == LayoutBreakpoint.xs) {
      isHover = true;
    }

    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHover = false;
        });
      },
      child: Material(
        elevation: isHover ? 20 : 0,
        borderOnForeground: false,
        color: Colors.white,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: widget.width,
          height: widget.height,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: context.breakpoint > LayoutBreakpoint.xs
                ? null
                : Border.all(
                    color: Colors.grey.shade300,
                  ),
          ),
          child: Column(
            children: [
              Image.asset(
                widget.img,
                height: 80,
              ),
              const Gap(20),
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(20),
              Text(
                widget.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
