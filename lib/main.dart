import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:layout/layout.dart';
import 'package:website/ui/pages/city.page.dart';
import 'package:website/ui/pages/home.page.dart';
import 'package:website/ui/pages/service.page.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoRouter _router;

  @override
  void initState() {
    _router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            if (state.uri.queryParameters.containsKey('service')) {
              return ServicePage(
                service: state.uri.queryParameters['service']!,
              );
            }

            if (state.uri.queryParameters.containsKey('city')) {
              return CityPage(
                city: state.uri.queryParameters['city']!,
              );
            }

            return HomePage(
              tag: state.uri.queryParameters['#'],
            );
          },
        ),
      ],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp.router(
        title: 'Umzug Profis Bayern',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            background: const Color(0xFF2d2d2f),
            seedColor: const Color(0xFF44a6d8),
            primary: const Color(0xFF44a6d8),
            secondary: const Color(0xFFfef500),
          ),
        ),
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        supportedLocales: const [
          Locale('de'),
        ],
        routerConfig: _router,
      ),
    );
  }
}
