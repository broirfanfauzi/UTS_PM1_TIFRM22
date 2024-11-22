import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang Kami"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tentang Aplikasi KerjainAja",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "KerjainAja adalah platform yang membantu kamu menyelesaikan tugas dengan cepat, "
              "efisien, dan terpercaya. Temukan berbagai layanan mulai dari desain grafis, "
              "kebersihan, belanja, hingga coding!",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              "Hubungi kami untuk informasi lebih lanjut!",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali ke Beranda"),
            ),
          ],
        ),
      ),
    );
  }
}
