import 'package:flutter/material.dart';
import 'package:project_uts/data/list_tempat.dart';

class DetailScreen extends StatelessWidget {
  final lokasi lokasii;

  const DetailScreen({Key? key, required this.lokasii}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  width: 600,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              lokasii.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            Text('HTM: ${lokasii.htm}'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                lokasii.deskripsi,
                maxLines: 15,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'MyCustomFont',
                  fontSize: 20,
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
