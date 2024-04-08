import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:layout/layout.dart';

class SectionNineHome extends StatefulWidget {
  const SectionNineHome({super.key});

  @override
  State<SectionNineHome> createState() => _SectionNineHomeState();
}

class _SectionNineHomeState extends State<SectionNineHome> {
  CarouselController controller = CarouselController();

  bool isOpen = false;

  openModal() {
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
              Expanded(
                child: Material(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Gap(10),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: const TextStyle(
                              height: 0.8,
                            ),
                            children: [
                              TextSpan(
                                text: 'Über uns\n',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45,
                                ),
                              ),
                              const TextSpan(
                                text: 'Willkommen bei Umzug Profis Bayern',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(20),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Ihrer',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const TextSpan(
                                  text:
                                      ' erstklassigen Umzugsfirma mit über 20 Jahren Berufserfahrung. Wir sind stolz darauf, zu den führenden Unternehmen in der Branche zu gehören, und unser Erfolgsgeheimnis liegt in unserer unerschütterlichen Hingabe zu schnellem Arbeiten, professionellem Auftreten und absoluter Zuverlässigkeit.',
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ),
                        // const Text(
                        //   'Ihrer erstklassigen Umzugsfirma mit über 20 Jahren Berufserfahrung. Wir sind stolz darauf, zu den führenden Unternehmen in der Branche zu gehören, und unser Erfolgsgeheimnis liegt in unserer unerschütterlichen Hingabe zu schnellem Arbeiten, professionellem Auftreten und absoluter Zuverlässigkeit.',
                        //   textAlign: TextAlign.justify,
                        //   style: TextStyle(
                        //     fontSize: 16,
                        //   ),
                        // ),
                        const Gap(10),
                        Animate(
                          effects: [
                            FadeEffect(
                              curve: Curves.easeIn,
                              delay: 300.ms,
                            ),
                            MoveEffect(
                              curve: Curves.easeIn,
                              delay: 300.ms,
                              begin: const Offset(0, 50),
                            ),
                          ],
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Unsere',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const TextSpan(
                                  text:
                                      ' langjährige Erfahrung hat uns gezeigt, dass kein Umzug gleich ist. Daher bieten wir maßgeschneiderte Lösungen, die Ihren individuellen Anforderungen entsprechen. Unser engagiertes Team steht Ihnen vom ersten Kontakt bis zur vollständigen Durchführung Ihres Umzugs mit Rat und Tat zur Seite.',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // child: const Text(
                          //   'Unsere langjährige Erfahrung hat uns gezeigt, dass kein Umzug gleich ist. Daher bieten wir maßgeschneiderte Lösungen, die Ihren individuellen Anforderungen entsprechen. Unser engagiertes Team steht Ihnen vom ersten Kontakt bis zur vollständigen Durchführung Ihres Umzugs mit Rat und Tat zur Seite.',
                          //   textAlign: TextAlign.justify,
                          //   style: TextStyle(
                          //     fontSize: 16,
                          //   ),
                          // ),
                        ),
                        const Gap(10),
                        Animate(
                          effects: [
                            FadeEffect(
                              curve: Curves.easeIn,
                              delay: 600.ms,
                            ),
                            MoveEffect(
                              curve: Curves.easeIn,
                              delay: 600.ms,
                              begin: const Offset(0, 50),
                            ),
                          ],
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Was',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const TextSpan(
                                  text:
                                      ' uns auszeichnet, sind nicht nur unsere preiswerten Angebote, sondern auch unsere flexiblen Arbeitszeiten, die es uns ermöglichen, uns nahtlos in Ihren Zeitplan einzufügen. Wir verstehen, dass Zeit kostbar ist, und wir arbeiten effizient, um Ihren Umzug so reibungslos und stressfrei wie möglich zu gestalten.',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // child: const Text(
                          //   'Was uns auszeichnet, sind nicht nur unsere preiswerten Angebote, sondern auch unsere flexiblen Arbeitszeiten, die es uns ermöglichen, uns nahtlos in Ihren Zeitplan einzufügen. Wir verstehen, dass Zeit kostbar ist, und wir arbeiten effizient, um Ihren Umzug so reibungslos und stressfrei wie möglich zu gestalten.',
                          //   textAlign: TextAlign.justify,
                          //   style: TextStyle(
                          //     fontSize: 16,
                          //   ),
                          // ),
                        ),
                        const Gap(10),
                        Animate(
                          effects: [
                            FadeEffect(
                              curve: Curves.easeIn,
                              delay: 900.ms,
                            ),
                            MoveEffect(
                              curve: Curves.easeIn,
                              delay: 900.ms,
                              begin: const Offset(0, 50),
                            ),
                          ],
                          child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Warum',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const TextSpan(
                                  text:
                                      ' sollten Sie mit uns arbeiten? Weil wir nicht nur Umzüge durchführen, sondern auch Vertrauen aufbauen. Mit Umzug Profis Bayern können Sie sich darauf verlassen, dass Ihr Umzug in den besten Händen ist. Kontaktieren Sie uns noch heute, um mehr darüber zu erfahren, wie wir Ihnen helfen können, Ihren Umzug reibungslos zu gestalten.',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // child: const Text(
                          //   'Warum sollten Sie mit uns arbeiten? Weil wir nicht nur Umzüge durchführen, sondern auch Vertrauen aufbauen. Mit Umzug Profis Bayern können Sie sich darauf verlassen, dass Ihr Umzug in den besten Händen ist. Kontaktieren Sie uns noch heute, um mehr darüber zu erfahren, wie wir Ihnen helfen können, Ihren Umzug reibungslos zu gestalten.',
                          //   textAlign: TextAlign.justify,
                          //   style: TextStyle(
                          //     fontSize: 16,
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
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
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: context.breakpoint > LayoutBreakpoint.xs ? 100 : 20,
      ),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                height: 0.8,
              ),
              children: [
                TextSpan(
                  text: 'Über uns\n',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
                const TextSpan(
                  text: 'Willkommen bei Umzug Profis Bayern',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          SizedBox(
            width: context.breakpoint > LayoutBreakpoint.sm ? 800 : null,
            child: Column(
              children: [
                const Text(
                  'Ihrer erstklassigen Umzugsfirma mit über 20 Jahren Berufserfahrung. Wir sind stolz darauf, zu den führenden Unternehmen in der Branche zu gehören, und unser Erfolgsgeheimnis liegt in unserer unerschütterlichen Hingabe zu schnellem Arbeiten, professionellem Auftreten und absoluter Zuverlässigkeit.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                isOpen
                    ? Column(
                        children: [
                          const Gap(10),
                          Animate(
                            effects: [
                              FadeEffect(
                                curve: Curves.easeIn,
                                delay: 300.ms,
                              ),
                              MoveEffect(
                                curve: Curves.easeIn,
                                delay: 300.ms,
                                begin: const Offset(0, 50),
                              ),
                            ],
                            child: const Text(
                              'Unsere langjährige Erfahrung hat uns gezeigt, dass kein Umzug gleich ist. Daher bieten wir maßgeschneiderte Lösungen, die Ihren individuellen Anforderungen entsprechen. Unser engagiertes Team steht Ihnen vom ersten Kontakt bis zur vollständigen Durchführung Ihres Umzugs mit Rat und Tat zur Seite.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Gap(10),
                          Animate(
                            effects: [
                              FadeEffect(
                                curve: Curves.easeIn,
                                delay: 600.ms,
                              ),
                              MoveEffect(
                                curve: Curves.easeIn,
                                delay: 600.ms,
                                begin: const Offset(0, 50),
                              ),
                            ],
                            child: const Text(
                              'Was uns auszeichnet, sind nicht nur unsere preiswerten Angebote, sondern auch unsere flexiblen Arbeitszeiten, die es uns ermöglichen, uns nahtlos in Ihren Zeitplan einzufügen. Wir verstehen, dass Zeit kostbar ist, und wir arbeiten effizient, um Ihren Umzug so reibungslos und stressfrei wie möglich zu gestalten.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Gap(10),
                          Animate(
                            effects: [
                              FadeEffect(
                                curve: Curves.easeIn,
                                delay: 900.ms,
                              ),
                              MoveEffect(
                                curve: Curves.easeIn,
                                delay: 900.ms,
                                begin: const Offset(0, 50),
                              ),
                            ],
                            child: const Text(
                              'Warum sollten Sie mit uns arbeiten? Weil wir nicht nur Umzüge durchführen, sondern auch Vertrauen aufbauen. Mit Umzug Profis Bayern können Sie sich darauf verlassen, dass Ihr Umzug in den besten Händen ist. Kontaktieren Sie uns noch heute, um mehr darüber zu erfahren, wie wir Ihnen helfen können, Ihren Umzug reibungslos zu gestalten.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            if (context.breakpoint == LayoutBreakpoint.xs) {
                              openModal();

                              return;
                            }

                            setState(() {
                              isOpen = true;
                            });
                          },
                          borderRadius: BorderRadius.circular(10),
                          child: Row(
                            children: [
                              const Expanded(child: Divider()),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Mehr Lesen',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const Expanded(child: Divider()),
                            ],
                          ),
                        ),
                      ),
              ],
            ),
          ),
          const Gap(20),

          // next section
          const Text(
            'Das sagen unsere Kunden',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const Gap(20),
          SizedBox(
            height: 215,
            width: MediaQuery.of(context).size.width * 0.8,
            child: CarouselSlider(
              carouselController: controller,
              items: List.generate(6, (index) {
                return Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ],
                );
              }),
              options: CarouselOptions(
                autoPlayInterval: const Duration(seconds: 5),
                viewportFraction: context.layout.value(
                  xs: 0.8,
                  sm: 0.6,
                  md: 0.4,
                  lg: 0.3,
                ),
                animateToClosest: true,
                aspectRatio: 1.6,
                enlargeCenterPage: false,
                autoPlay: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
