import 'package:flutter/material.dart';

class JadwalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Jadwal Pelajaran'),
              onPressed: () {
                },
            ),
            ElevatedButton(
              child: Text('Jadwal Ujian'),
              onPressed: () {
                },
            ),
            ElevatedButton(
              child: Text('Jadwal Ekstrakurikuler'),
              onPressed: () {
              },
            ),
            ElevatedButton(
              child: Text('Jadwal Rapat Guru'),
              onPressed: () {
                },
            ),
          ],
        ),
      ),
    );
  }
}
