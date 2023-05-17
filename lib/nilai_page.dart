import 'package:flutter/material.dart';

class NilaiPage extends StatefulWidget {
  @override
  _NilaiPageState createState() => _NilaiPageState();
}

class _NilaiPageState extends State<NilaiPage> {
  String data = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Nilai'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Masukkan data nilai',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              setState(() {
                data = value;
              });
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            child: Text('Kirim'),
            onPressed: () {
              Navigator.pop(context, data);
            },
          ),
        ],
      ),
    );
  }
}
