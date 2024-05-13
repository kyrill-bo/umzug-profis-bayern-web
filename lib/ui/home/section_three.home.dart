import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:layout/layout.dart';
import 'package:website/ui/home/section_seven.home.dart';
import 'package:website/ui/widgets/action_button.dart';

class SectionThreeHome extends StatefulWidget {
  const SectionThreeHome({super.key});

  @override
  State<SectionThreeHome> createState() => _SectionThreeHomeState();
}

class _SectionThreeHomeState extends State<SectionThreeHome> {
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
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: context.breakpoint > LayoutBreakpoint.md ? 100 : 20,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 116, 116, 116),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 116, 116, 116),
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.005, 0.25, 0.85],
        ),
      ),
      child: Column(
        children: [
          Text(
            'Bereit für einen reibungslosen Umzug?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: context.breakpoint > LayoutBreakpoint.xs ? 40 : 30,
            ),
          ),
          const Text(
            'Kontaktieren Sie uns jetzt, damit wir Ihre individuellen Anforderungen besprechen können. Lassen Sie uns Ihren Umzug stressfrei gestalten!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const Gap(20),
          ActionButton(
            text: 'JETZT KONTAKTIEREN',
            color: const Color.fromARGB(255, 254, 246, 0),
            borderColor: const Color.fromARGB(255, 254, 246, 0),
            borderSize: 2.5,
            glowSize: 2.5,
            onPressed: openProfile,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}
