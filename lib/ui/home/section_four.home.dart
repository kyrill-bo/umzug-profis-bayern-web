import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:layout/layout.dart';

class SectionFourHome extends StatefulWidget {
  const SectionFourHome({super.key});

  @override
  State<SectionFourHome> createState() => _SectionFourHomeState();
}

class _SectionFourHomeState extends State<SectionFourHome>
    with AutomaticKeepAliveClientMixin {
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
        horizontal: context.breakpoint > LayoutBreakpoint.md ? 100 : 20,
      ),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: context.breakpoint > LayoutBreakpoint.md ? 40 : 30,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text:
                      'Willkommen bei${context.breakpoint < LayoutBreakpoint.md ? '\n' : ''} Umzug Profis',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: ' Bayern',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const Gap(30),
          Animate(
            delay: 500.milliseconds,
            effects: const [
              MoveEffect(
                begin: Offset(0, 50),
              ),
              FadeEffect(),
            ],
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/icon-strong.webp',
                      height: 80,
                    ),
                    const Text(
                      'Mit über 20 Jahren Berufserfahrung',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'sind wir stolz darauf, zu dem führenden Unternehmen in der Branche zu gehören.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Gap(20),
          Animate(
            delay: 1000.milliseconds,
            effects: const [
              MoveEffect(
                begin: Offset(0, 50),
              ),
              FadeEffect(),
            ],
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/icon-tree.webp',
                      height: 80,
                    ),
                    const Text(
                      'Das notwendige Erfolgsgeheimnis',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'liegt darin, ihre Wünsche zu erreihen.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Gap(20),
          Animate(
            delay: 1500.milliseconds,
            effects: const [
              MoveEffect(
                begin: Offset(0, 50),
              ),
              FadeEffect(),
            ],
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/icon-lampe.webp',
                      height: 80,
                    ),
                    const Text(
                      'Maßgeschneiderte Lösungen',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'die Ihren individuellen Anforderungen entsprechen.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Gap(20),
          Animate(
            delay: 2000.milliseconds,
            effects: const [
              MoveEffect(
                begin: Offset(0, 50),
              ),
              FadeEffect(),
            ],
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/icon-rabatt.webp',
                      height: 80,
                    ),
                    const Text(
                      'Preiswerte Angebote!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'Überzeugen Sie sich selbst, nehmen Sie jetzt Kontakt auf.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Gap(20),
          Animate(
            delay: 2500.milliseconds,
            effects: const [
              MoveEffect(
                begin: Offset(0, 50),
              ),
              FadeEffect(),
            ],
            child: Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/icon-hand.webp',
                      height: 80,
                    ),
                    Text(
                      'Warum!?${context.breakpoint == LayoutBreakpoint.xs ? '\n' : ''} "Umzug Profis Bayern"',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const Text(
                      'Ein Familienbetrieb mit vertraulichen, starken und sicheren Händen.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
