import 'package:flutter/material.dart';

class ProfileData {
  final String id;
  final String name;
  final String role;
  final String imageUrl;
  final String bio;

  const ProfileData({
    required this.id,
    required this.name,
    required this.role,
    required this.imageUrl,
    required this.bio,
  });
}

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});


    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.indigo,
        ),
        home: const HomePage(),
      );
    }
  }

  class HomePage extends StatelessWidget {
    const HomePage({super.key});

    final List<ProfileData> profiles = const [
      ProfileData(
        id: '1',
        name: 'Ani Rizqi',
        role: 'Teknik Informatika',
        imageUrl: 'https://i.pravatar.cc/150?img=5',
        bio: 'Fokus pada pengembangan Web dan Mobile UI.',
      ),
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('Kartu Profil Interaktif'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        
        body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          itemCount: profiles.length,
          itemBuilder: (context, index) {
            final profile = profiles[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ProfileCard(profile: profile),
            );
          },
        ),
      );
    }
  }

  class ProfileCard extends StatefulWidget {
    final ProfileData profile;
    const ProfileCard({
      super.key,
      required this.profile,
    });

    @override
    State<ProfileCard> createState() => _ProfileCardState();
  }

  class _ProfileCardState extends State<ProfileCard> {
    bool _isLiked = false;
    int _likeCount = 0;

    void _toggleLike() {
      setState(() {
        _isLiked = !_isLiked;
        if (_isLiked) {
          _likeCount++;
        } else {
          _likeCount--;
        }
      });
    }

    void _resetLike() {
      setState(() {
        _isLiked = false;
        _likeCount = 0;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(0, 4),
              )
            ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(widget.profile.imageUrl),
              ),
              const SizedBox(height: 12),

              Text(
                widget.profile.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),

              Text(
                widget.profile.role,
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
                widget.profile.bio,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedScale(
                    scale: _isLiked? 1.25 : 1.0,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    child: IconButton(
                      onPressed: _toggleLike,
                      icon: Icon(
                        _isLiked ? Icons.favorite : Icons.favorite_border,
                        color: _isLiked ? Colors.red : Colors.grey, size: 28,
                      ),
                    ),
                    ),
                    const SizedBox(width: 4),

                    Text(
                      '$_likeCount',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                ],
              ),

              const SizedBox(height: 8),

              TextButton. icon(
                onPressed: _resetLike,
                icon: const Icon(Icons.refresh, size:16, color: Colors.grey),
                label: const Text(
                  'Reset Like',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ],
        ),
      ),
    );
  }
}