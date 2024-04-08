import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout/layout.dart';
import 'package:website/ui/home/section_seven.home.dart';

class ContactFloatingButton extends StatelessWidget {
  const ContactFloatingButton({
    super.key,
    required this.context,
  });

  final BuildContext context;

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
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Jetzt Kontakt aufnehmen',
      child: GestureDetector(
        onTap: openProfile,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: AnimatedGradientBorder(
                  borderSize: 2,
                  glowSize: 2,
                  gradientColors: [
                    Theme.of(context).colorScheme.primary.withOpacity(0.4),
                    Theme.of(context).colorScheme.secondary.withOpacity(0.4),
                  ],
                  borderRadius: BorderRadius.circular(18),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(18),
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/img/logo.webp',
                          ),
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width:
                            context.breakpoint > LayoutBreakpoint.sm ? 40 : 15,
                        height:
                            context.breakpoint > LayoutBreakpoint.sm ? 40 : 15,
                      ),
                    ),
                  ),
                ),
              ),
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  WavyAnimatedText(
                    'KONTAKT',
                    textAlign: TextAlign.center,
                    textStyle: GoogleFonts.archivoBlack(
                      fontWeight: FontWeight.bold,
                      fontSize:
                          context.breakpoint > LayoutBreakpoint.sm ? 16 : 12,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
