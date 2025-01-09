import 'package:flutter/material.dart';
import 'package:template_project/screen/messages.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Welcome Satrio', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Satrio', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Image.asset('images/timnas.jpeg', width: double.infinity),
              SizedBox(height: 10),
              Text('Keep Moving Up', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('Your journey to success starts here.', style: TextStyle(fontSize: 14, color: Colors.grey)),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories', style: TextStyle(fontSize: 24)),
                  TextButton(onPressed: () {}, child: Text('See All')),
                ],
              ),
              Wrap(
                spacing: 10,
                children: [
                  CategoryButton('IKLAN'),
                  CategoryButton('Business'),
                  CategoryButton('Finance & Business'),
                  CategoryButton('BOLA'),
                ],
              ),

              SizedBox(height: 40),
              Text('Top Course', style: TextStyle(fontSize: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CourseCard('TIM 1', 'images/1.jpg'),
                  CourseCard('TIM 2', 'images/2.jpg'),
                  CourseCard('TIM 3', 'images/3.jpg'),
                  CourseCard('TIM 4', 'images/4.jpg'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(
                icon: Icon(Icons.message),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MessagesScreen()),
                  );
                },
              ),
              IconButton(icon: Icon(Icons.book), onPressed: () {}),
              IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
  Widget CategoryButton(String title) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFF0F0F0),
        foregroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
  Widget CourseCard(String title, String imagePath) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imagePath, width: 220, height: 120, fit: BoxFit.cover),
        ),
        SizedBox(height: 8),
        Text(title, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}