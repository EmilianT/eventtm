import 'package:eventtm/utils/constants/text_strings.dart';
import 'package:eventtm/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:eventtm/features/authentication/screens/onboarding/onboarding.dart';

import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: EventTMTexts.appTitle,
      themeMode: ThemeMode.system,
      theme: EventTMAppTheme.lightTheme,
      darkTheme: EventTMAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
