import 'package:flutter/material.dart';
import 'package:project_uts/data/details.dart';
import 'package:project_uts/data/list_tempat.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mendapatkan informasi tentang ukuran layar menggunakan MediaQuery
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Destinasi Wisata Di Bali',
          style: TextStyle(
            fontFamily: 'MyCustomFont',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 37, 134, 244),
      ),
      body: ListView.builder(
          itemCount: dataWisata.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              lokasii: dataWisata[index],
                            )));
              },
              child: Card(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          dataWisata[index].image,
                          width: screenSize.width *
                              0.2, // Menggunakan persentase lebar layar
                          height: screenSize.width *
                              0.2, // Menggunakan persentase lebar layar
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width *
                          0.3, // Menggunakan persentase lebar layar
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dataWisata[index].name,
                            style: TextStyle(
                              fontFamily: 'MyCustomFont',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'HTM : ${dataWisata[index].htm}',
                          ),
                          ClipOval(
                            child: Material(
                              color: Color.fromARGB(255, 168, 170, 168),
                              child: InkWell(
                                splashColor: Colors.red,
                                child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Icon(Icons.favorite)),
                                onTap: () {},
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
