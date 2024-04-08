import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:layout/layout.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xFF2d2d2f),
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Color(0xFF2d2d2f),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          context.breakpoint <= LayoutBreakpoint.xs
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    logoAndSocial(context),
                    const Gap(20),
                    rechtliches(context),
                    const Gap(20),
                    contact(context),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    logoAndSocial(context),
                    rechtliches(context),
                    contact(context),
                  ],
                ),
          const Divider(),
          Text(
            '© ${DateTime.now().year}. Alle Rechte vorbehalten.',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Column contact(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'KONTAKT',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.place,
              color: Theme.of(context).primaryColor,
            ),
            const Gap(10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Umzug Profis Bayern',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                Text(
                  'Brucknerstraße 6',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '84034 Landshut',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
        const Gap(10),
        Row(
          children: [
            Icon(
              Icons.email,
              color: Theme.of(context).primaryColor,
            ),
            const Gap(10),
            const Text(
              'info@umzugprofisbayern.de',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        const Gap(10),
        Row(
          children: [
            Icon(
              Icons.phone,
              color: Theme.of(context).primaryColor,
            ),
            const Gap(10),
            const Text(
              '0172 - 30 50 125',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column rechtliches(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'RECHTLICHES',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const Text(
          'Impressum',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const Text(
          'Datenschutz',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const Text(
          'AGBs',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        const Text(
          'Cookie-Richtlinie (EU)',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Column logoAndSocial(BuildContext context) {
    return Column(
      crossAxisAlignment: context.breakpoint > LayoutBreakpoint.xs
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: context.breakpoint > LayoutBreakpoint.xs
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/logo.webp',
                fit: BoxFit.fitHeight,
              ),
              Gap(
                context.breakpoint > LayoutBreakpoint.sm ? 10 : 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Image.asset(
                  'assets/img/logo-text.webp',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: context.breakpoint > LayoutBreakpoint.xs
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: const [
            Icon(Icons.facebook),
            Gap(10),
            Icon(Icons.facebook),
          ],
        ),
      ],
    );
  }
}
