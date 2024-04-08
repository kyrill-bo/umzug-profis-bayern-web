import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class PreloadProvider extends InheritedWidget {
  final bool isLoaded;

  const PreloadProvider({
    super.key,
    required this.isLoaded,
    required super.child,
  });

  static PreloadProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PreloadProvider>()!;
  }

  @override
  bool updateShouldNotify(PreloadProvider oldWidget) {
    return isLoaded != oldWidget.isLoaded;
  }
}
