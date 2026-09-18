import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _notlpController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _tanggalLahirController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();


  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // Avatar dengan Icon Plus
              Stack(
                alignment: Alignment.topRight,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xFFF0F0F5),
                    child: Icon(Icons.person, size: 50, color: Color(0xFF6C5CE7)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Color(0xFF6C5CE7),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, size: 16, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 20),

              // Title & Subtitle
              const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Sign up to get started with your dashboard.',
                style: TextStyle(fontSize: 13, color: Colors.grey[600]),
              ),
              const SizedBox(height: 24),

              _buildInputLabel('Username'),
              TextField(
                controller: _usernameController,
                obscureText: true,
                decoration: _buildInputDecoration('Create Username'),
              ),
              const SizedBox(height: 24),

              // Form Input Full Name
              _buildInputLabel('Full Name'),
              TextField(
                controller: _nameController,
                decoration: _buildInputDecoration('Enter your name'),
              ),
              const SizedBox(height: 16),

              // Form Input Email
              _buildInputLabel('Email'),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: _buildInputDecoration('Enter your email'),
              ),
              const SizedBox(height: 16),

              _buildInputLabel('No Tlp'),
              TextField(
                controller: _notlpController,
                obscureText: true,
                decoration: _buildInputDecoration('Enter your number'),
              ),
              const SizedBox(height: 24),

              _buildInputLabel('Gender'),
              TextField(
                controller: _genderController,
                obscureText: true,
                decoration: _buildInputDecoration('Enter your gender'),
              ),
              const SizedBox(height: 24),

              _buildInputLabel('Tanggal Lahir'),
              TextField(
                controller: _tanggalLahirController,
                obscureText: true,
                decoration: _buildInputDecoration('Enter your birthday'),
              ),
              const SizedBox(height: 24),

              _buildInputLabel('Alamat'),
              TextField(
                controller: _alamatController,
                obscureText: true,
                decoration: _buildInputDecoration('Enter your address'),
              ),
              const SizedBox(height: 24),

              // Form Input Password
              _buildInputLabel('Password'),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: _buildInputDecoration('Create a password'),
              ),
              const SizedBox(height: 24),

              // Tombol Create Account
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6C5CE7),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Account Created for ${_nameController.text}!')),
                    );
                  },
                  child: const Text(
                    'Create Account',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Divider "Or"
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey[300])),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Or', style: TextStyle(color: Colors.grey[500])),
                  ),
                  Expanded(child: Divider(color: Colors.grey[300])),
                ],
              ),
              const SizedBox(height: 20),

              // Circular Social Media Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCircleSocialIcon(Icons.g_mobiledata, Colors.red),
                  const SizedBox(width: 16),
                  _buildCircleSocialIcon(Icons.apple, Colors.black),
                  const SizedBox(width: 16),
                  _buildCircleSocialIcon(Icons.facebook, Colors.blue),
                ],
              ),
              const SizedBox(height: 32),

              // Bottom Sign In
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah Punya Akun? ', style: TextStyle(color: Colors.grey[600])),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xFF6C5CE7),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputLabel(String label) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 6.0),
        child: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 13,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  InputDecoration _buildInputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey[300]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF6C5CE7)),
      ),
    );
  }

  Widget _buildCircleSocialIcon(IconData icon, Color color) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Icon(icon, color: color, size: 24),
    );
  }
}