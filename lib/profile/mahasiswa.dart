import 'package:flutter/material.dart';

class MahasiswaPage extends StatefulWidget {
  const MahasiswaPage({super.key});

  @override
  State<MahasiswaPage> createState() => _MahasiswaPageState();
}

class _MahasiswaPageState extends State<MahasiswaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelompok Kecebong'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Nama Anggota Kelompok',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text('1. Ani Rizqi', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('2. Erix Agung Wibowo', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('3. Permana Aji', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('4. Iqbal R ', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('5. Figor S', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('6. Fabi F', style: TextStyle(fontSize: 16)),
          ],
      ),
    ),
    );
  }
}
