import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';
import 'package:flutter_application_2/pages/chat_page.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/profile_page.dart';
import 'package:flutter_application_2/pages/property_detail_page.dart';
import 'package:flutter_application_2/pages/signup_page.dart';
import 'package:flutter_application_2/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
        child: const MyApp(),
      ),
    );

enum ThemeModeType { light, dark }

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
);
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.indigo,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Provider.of<ThemeProvider>(context).themeData.brightness,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: GoogleFonts.poppins().fontFamily,
              )),
      routes: {
        '/': (context) => const SignUpPage(),
        MyRoutes.homePageRoute: (context) => const HomePage(),
        MyRoutes.signupRoute: (context) => const SignUpPage(),
        MyRoutes.propertyDetailRoute: (context) => const PropertyDetailPage(),
        MyRoutes.profileRoute: (context) => const ProfilePage(),
        MyRoutes.indexRoute: (context) => const IndexPage(),
        MyRoutes.chatRoute: (context) => const ChatPage(),
      },
    );
  }
}

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightTheme;
  ThemeData get themeData => _themeData;

  void toggleTheme() {
    _themeData = _themeData == lightTheme ? darkTheme : lightTheme;
    notifyListeners();
  }
}
