import 'package:flutter/material.dart';
import 'package:template_project/screen/signin.dart';

class HomeLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  // Remove border
                  border: Border.all(color: Colors.transparent),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Assuming your image asset is named 'garuda.jpg'
                      Image.asset(
                        'images/garuda.png',
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'Selamat Datang di Timnas Indonesia',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Tindakan saat tombol Sign In ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // Sesuaikan nilai untuk mengatur tingkat kelengkungan
                      ),
                    ),
                    child: const Text('Sign In'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Tindakan saat tombol Sign Up ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}