import 'package:flutter/material.dart';
import 'service_detail_page.dart';
import 'about_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> categories = [
    {'title': 'Desain', 'icon': '🎨'},
    {'title': 'Belanja', 'icon': '🛒'},
    {'title': 'Kebersihan', 'icon': '🧹'},
    {'title': 'Coding', 'icon': '💻'},
    {'title': 'Fotografi', 'icon': '📸'},
    {'title': 'Transportasi', 'icon': '🚗'},
    {'title': 'Musik', 'icon': '🎵'},
    {'title': 'Lainnya', 'icon': '🔧'},
  ];

  // Status tampilan saat ini: true untuk Grid View, false untuk List View
  bool isGridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KerjainAja - Home"),
        actions: [
          IconButton(
            icon: Icon(isGridView ? Icons.view_list : Icons.grid_view),
            onPressed: () {
              setState(() {
                isGridView = !isGridView; // Ganti status tampilan
              });
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person, size: 40),
                  ),
                  SizedBox(height: 10),
                  Text("irfan",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  Text("irfan@example.com",
                      style: TextStyle(fontSize: 14, color: Colors.white70)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: isGridView
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Jumlah kolom
                  crossAxisSpacing: 8.0, // Jarak horizontal antar item
                  mainAxisSpacing: 8.0, // Jarak vertikal antar item
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return _buildCategoryItem(categories[index]);
                },
              )
            : ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return _buildCategoryItem(categories[index]);
                },
              ),
      ),
    );
  }

  // Widget untuk item kategori
  Widget _buildCategoryItem(Map<String, String> category) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ServiceDetailPage()),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: isGridView
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      category['icon']!,
                      style: TextStyle(fontSize: 40),
                    ),
                    SizedBox(height: 10),
                    Text(
                      category['title']!,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            : ListTile(
                leading: Text(
                  category['icon']!,
                  style: TextStyle(fontSize: 30),
                ),
                title: Text(
                  category['title']!,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}
