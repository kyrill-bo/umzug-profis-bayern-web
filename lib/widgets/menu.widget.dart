import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:go_router/go_router.dart';
import 'package:layout/layout.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:website/ui/home/section_seven.home.dart';

class Menu extends StatefulWidget implements PreferredSizeWidget {
  const Menu({
    super.key,
    required this.scrollController,
    this.isHome = false,
    this.isService = false,
  });

  final AutoScrollController scrollController;

  final bool isHome;
  final bool isService;

  @override
  State<Menu> createState() => _MenuState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _MenuState extends State<Menu> {
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
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          bottom: -2,
          left: -2,
          right: -2,
          top: 0,
          child: AnimatedGradientBorder(
            borderSize: 1,
            glowSize: 0,
            gradientColors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
            borderRadius: BorderRadius.zero,
            child: const SizedBox(
              height: 4,
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          left: 0,
          right: 0,
          top: 0,
          child: Container(
            height: 75,
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 5,
            ),
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
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.go('/');
                  },
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical:
                            context.breakpoint > LayoutBreakpoint.sm ? 5 : 10,
                      ),
                      child: Row(
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
                  ),
                ),
                const Spacer(),
                if (context.breakpoint > LayoutBreakpoint.sm)
                  Row(
                    children: [
                      MenuButton(
                        text: 'Home',
                        active: widget.isHome,
                        onTap: () {
                          context.go('/');
                        },
                      ),
                      const Gap(5),
                      MenuButton(
                        text: 'Leistungen',
                        active: widget.isService,
                        onTap: () {
                          context.go('/?service=Privatumzug');
                        },
                      ),
                      const Gap(5),
                      MenuButton(
                        text: 'Über uns',
                        onTap: () {
                          if (widget.isHome) {
                            widget.scrollController.scrollToIndex(
                              10,
                              preferPosition: AutoScrollPosition.end,
                            );
                          } else {
                            context.go(Uri(path: '/', queryParameters: {
                              '#': 'about',
                            }).toString());
                          }
                        },
                      ),
                      const Gap(5),
                      MenuButton(
                        text: 'Kontakt',
                        onTap: openProfile,
                      ),
                    ],
                  ),
                if (context.breakpoint <= LayoutBreakpoint.sm)
                  GestureDetector(
                    onTap: () => Scaffold.of(context).openEndDrawer(),
                    child: const Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MenuButton extends StatefulWidget {
  const MenuButton({
    super.key,
    required this.text,
    this.active = false,
    this.onTap,
  });

  final String text;
  final bool active;
  final VoidCallback? onTap;

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedGradientBorder(
      borderSize: 2,
      glowSize: 2,
      gradientColors: isHover
          ? [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ]
          : [
              Colors.transparent,
            ],
      borderRadius: BorderRadius.circular(30),
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHover = false;
          });
        },
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.onTap,
          child: Material(
            elevation: isHover ? 5 : 0,
            borderRadius: BorderRadius.circular(30),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: widget.active
                    ? Colors.white
                    : Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: isHover || widget.active
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                ),
              ),
              child: Text(
                widget.text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: widget.active ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 150,
      child: Column(
        children: [
          Image.asset(
            'assets/img/logo.webp',
            fit: BoxFit.fitWidth,
          ),
          const MenuButton(text: 'Home'),
          const MenuButton(text: 'Leistungen'),
          const MenuButton(text: 'Über uns'),
          const MenuButton(text: 'Kontakt'),
        ],
      ),
    );
  }
}
