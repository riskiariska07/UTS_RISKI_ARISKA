import 'package:flutter/material.dart';
import 'package:pcs_riski/guru_page.dart';
import 'package:pcs_riski/home_page.dart';
import 'package:pcs_riski/jadwal_page.dart';
import 'package:pcs_riski/nilai_page.dart';
import 'package:pcs_riski/siswa_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Map<String, WidgetBuilder> routes = {
    '/siswa': (context) => SiswaPage(),
    '/guru': (context) => GuruPage(),
    '/jadwal': (context) => JadwalPage(),
    '/nilai': (context) => NilaiPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Sekolah',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => HomePage();
            break;
          case '/siswa':
            builder = (BuildContext context) => SiswaPage();
            break;
          case '/guru': {
            builder = (BuildContext context) => GuruPage();
            break;
          }
          case '/jadwal': {
            builder = (BuildContext context) => JadwalPage();
            break;
          }
          case '/nilai': {
            builder = (BuildContext context) => NilaiPage();
            break;
          }
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
