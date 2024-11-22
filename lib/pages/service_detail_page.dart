import 'package:flutter/material.dart';
import 'booking_page.dart';

class ServiceDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Layanan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Desain Grafis",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("⭐⭐⭐⭐⭐ (4.8 / 5.0)"),
            SizedBox(height: 20),
            Text(
              "Deskripsi layanan: Membantu membuat desain logo, poster, dan lainnya.",
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage()),
                );
              },
              child: Text("Pesan Sekarang"),
            )
          ],
        ),
      ),
    );
  }
}
