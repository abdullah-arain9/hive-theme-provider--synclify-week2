import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:synclifyinternship/color.dart';
import 'package:synclifyinternship/week_1task/loginscreen.dart';
import 'package:synclifyinternship/week_2task/home.dart';
import 'package:synclifyinternship/week_2task/theme_provider.dart';
import 'package:synclifyinternship/week_2task/usersession.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  bool isloggedin = await usersession.isloggedin();

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider()..loadTheme(),
      child: MyApp(startscreen: isloggedin ? homee() : login()),
    ),
  );
}

class MyApp extends StatelessWidget {
  final Widget startscreen;
  const MyApp({super.key, required this.startscreen});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            scaffoldBackgroundColor: AppColors.offWhite,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.grey.shade900,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: Brightness.dark,
            ),
          ),
          home: startscreen,
        );
      },
    );
  }
}