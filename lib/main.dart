import 'package:flutter/material.dart';
import 'package:flutter_application_4/db/db_helper.dart';
import 'package:flutter_application_4/home_page.dart';
import 'package:flutter_application_4/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_file.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();  
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [        
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt','BR')],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,      
      themeMode: ThemeMode.light,
      home: const Homepage(),
      
    );
  }
}



