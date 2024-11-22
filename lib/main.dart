import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(KerjainAjaApp());
}

class KerjainAjaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KerjainAja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade700, Colors.blue.shade300],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Ilustrasi atau Icon
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/images/landing_image.png', // Pastikan file ini tersedia
                    height: 200,
                  ),
                ),
                // Nama aplikasi
                Text(
                  "KerjainAja",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 4),
                        blurRadius: 10,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                // Tagline
                Text(
                  "Solusi cepat untuk setiap pekerjaanmu!",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                // Tombol Login
                ElevatedButton(
                  onPressed: () {
                    // Navigasi langsung ke LoginPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue.shade700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
