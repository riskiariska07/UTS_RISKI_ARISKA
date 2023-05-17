import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Sekolah'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
           image: AssetImage('assets/3.jpg'),
           fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ElevatedButton.icon(
                icon: Icon(Icons.person),
                label: Text('Siswa'),
                style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
                onPressed: () {
                  Navigator.pushNamed(context, '/siswa');
                },
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.school),
                label: Text('Guru'),
                style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
                onPressed: () {
                  Navigator.pushNamed(context, '/guru');
                },
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.calendar_today),
                label: Text('Jadwal'),
                style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
                onPressed: () {
                  Navigator.pushNamed(context, '/jadwal');
                },
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.assignment),
                label: Text('Nilai'),
                style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
                onPressed: () async {
                  final data = await Navigator.pushNamed(context, '/nilai');
                  print('Data yang diterima: $data');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
