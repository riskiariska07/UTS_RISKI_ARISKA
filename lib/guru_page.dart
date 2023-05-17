import 'package:flutter/material.dart';

class GuruPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Guru'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: NetworkImage(
                'https://www.seekpng.com/png/detail/392-3925195_gambar-guru-png-chibi-muslim-school-vector.png',
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Riski Ariska,S.Pd',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Matematika',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton.icon(
              icon: Icon(Icons.calendar_today),
              label: Text('Jadwal Mengajar'),
              onPressed: () {
                Navigator.pushNamed(context, '/jadwal');
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.assignment),
              label: Text('Penilaian'),
              onPressed: () {
                Navigator.pushNamed(context, '/penilaian');
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.event_note),
              label: Text('Tugas'),
              onPressed: () {
                Navigator.pushNamed(context, '/tugas');
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.info),
              label: Text('Informasi Siswa'),
              onPressed: () {
                Navigator.pushNamed(context, '/informasi');
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.message),
              label: Text('Pesan'),
              onPressed: () {
                Navigator.pushNamed(context, '/pesan');
              },
            ),
          ],
        ),
      ),
    );
  }
}
