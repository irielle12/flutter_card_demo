import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Card'),
          centerTitle: true,
        ),
        body: Center(
          child: ProfileCard(),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.white,
      child: SizedBox(
        width: 300,
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/300',
                ),
              ),
              SizedBox(height: 10),
              Text('Jane Doe',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Software Engineer'),
              Spacer(),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('📩 You contacted Jane!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: Icon(Icons.email),
                label: Text('Contact'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
