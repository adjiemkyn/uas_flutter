import 'package:flutter/material.dart';
import 'package:project_uts/data/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar wisata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: Colors.grey[200],
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 57, fontWeight: FontWeight.w400),
          displayMedium: TextStyle(fontSize: 45, fontWeight: FontWeight.w400),
          displaySmall: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
          headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
          headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),
      home: const home(),
    );
  }
}

// class ResponsiveHome extends StatelessWidget {
//   const ResponsiveHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Mendapatkan informasi tentang ukuran layar menggunakan MediaQuery
//     final Size screenSize = MediaQuery.of(context).size;

//     // Menentukan faktor skala berdasarkan lebar layar
//     double scaleFactor = 1.0;
//     if (screenSize.width >= 600 && screenSize.width < 900) {
//       scaleFactor = 0.8; // Lebar layar 600-899px
//     } else if (screenSize.width >= 900) {
//       scaleFactor = 1; // Lebar layar 900px atau lebih
//     }

//     return Scaffold(
//       body: Center(
//         child: FractionallySizedBox(
//           widthFactor: scaleFactor,
//           child: Container(
//             child: home(),
//           ),
//         ),
//       ),
//     );
//   }
// }
