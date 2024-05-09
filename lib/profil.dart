import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage:
                      AssetImage('asset_media/image/profile_image.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Ranty Maria',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  '220103069',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              buildListItem(Icons.shopping_cart, 'Pesanan', () {}),
              buildListItem(Icons.notifications, 'Notifikasi', () {}),
              buildListItem(Icons.security, 'Keamanan Akun', () {}),
              buildListItem(Icons.settings, 'Atur Akun', () {}),
              buildListItem(Icons.edit, 'Edit Foto Profil', () {}),
              buildListItem(Icons.edit, 'Edit Nama Pengguna', () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
