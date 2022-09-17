import 'dart:async';
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_launcher_icons/abs/icon_generator.dart';
import 'package:flutter_launcher_icons/android.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_launcher_icons/custom_exceptions.dart';
import 'package:flutter_launcher_icons/flutter_launcher_icons_config.dart';
import 'package:flutter_launcher_icons/ios.dart';
import 'package:flutter_launcher_icons/logger.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_launcher_icons/pubspec_parser.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:flutter_launcher_icons/web/web_icon_generator.dart';
import 'package:flutter_launcher_icons/web/web_template.dart';
import 'package:flutter_launcher_icons/windows/windows_icon_generator.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:device_preview/device_preview.dart';
void main()
{

  runApp(
    DevicePreview( enabled: false,
    tools: [
         ...DevicePreview.defaultTools
    ],
    
    builder: (context) => MyApp())
    );

}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ((context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
            const ResponsiveBreakpoint.resize(600, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
      )),
      title: 'Splash Screen',
      
      theme: ThemeData(
      
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}