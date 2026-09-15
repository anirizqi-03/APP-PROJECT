import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Daftar Profil'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          
          child: SizedBox(
            height: 380,
            child: ListView(
             
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              children: const [
                // Kartu Pertama
                ProfileCardWidget(
                  name: 'Ani Rizqi',
                  role: 'Developer',
                  imageUrl: 'https://i.pravatar.cc/150?img=5',
                  bio: 'Fokus pada pengembangan Web & Mobile UI.',
                ),
                SizedBox(width: 16),
                // Kartu Kedua
                ProfileCardWidget(
                  name: 'Anggie Octavia',
                  role: 'Gammers',
                  imageUrl: 'https://i.pravatar.cc/150?img=12',
                  bio: 'Tertarik Game Game terbaru yang penuh Challange',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ProfileCardWidget extends StatelessWidget {
  final String name;
  final String role;
  final String imageUrl;
  final String bio;

  const ProfileCardWidget({
    super.key,
    required this.name,
    required this.role,
    required this.imageUrl,
    required this.bio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 12),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            role,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Divider(thickness: 1, color: Colors.black12),
          ),
          Text(
            bio,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.email, color: Colors.indigo, size: 24),
              SizedBox(width: 20),
              Icon(Icons.phone, color: Colors.indigo, size: 24),
            ],
          ),
        ],
      ),
    );
  }
}