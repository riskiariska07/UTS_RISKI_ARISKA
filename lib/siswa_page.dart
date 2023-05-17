import 'package:flutter/material.dart';

class SiswaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Siswa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: NetworkImage(
                'https://i0.wp.com/library.kissclipart.com/20180919/ge/kissclipart-gambar-kartun-anak-sekolah-sd-clipart-national-exa-17d696f89f6c0127.jpg',
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Tobrian Saputra',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Kelas 10A',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 30.0),
            ElevatedButton.icon(
              icon: Icon(Icons.calendar_today),
              label: Text('Jadwal Pelajaran'),
              onPressed: () {
                Navigator.pushNamed(context, '/jadwal');
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
              label: Text('Informasi Sekolah'),
              onPressed: () {
                Navigator.pushNamed(context, '/informasi');
              },
            ),
          ],
        ),
      ),
    );
  }
}
