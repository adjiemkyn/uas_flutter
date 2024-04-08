import 'package:flutter/material.dart';
import 'package:project_uts/data/list_tempat.dart';

class DetailScreen extends StatelessWidget {
  final lokasi lokasii;

  const DetailScreen({Key? key, required this.lokasii}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mendapatkan informasi tentang ukuran layar menggunakan MediaQuery
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          lokasii.name,
          style: TextStyle(
            fontFamily: 'MyCustomFont',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 37, 134, 244),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  lokasii.image,
                  width: screenSize.width *
                      0.6, // Lebar gambar mengikuti lebar layar
                  height: screenSize.width *
                      0.35, // Tinggi gambar mengikuti lebar layar dengan rasio tertentu
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              lokasii.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenSize.width *
                    0.03, // Ukuran font mengikuti lebar layar
              ),
            ),
            Text('HTM: ${lokasii.htm}'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                lokasii.deskripsi,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'MyCustomFont',
                  fontSize: screenSize.width *
                      0.02, // Ukuran font mengikuti lebar layar
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
