import 'package:flutter/material.dart';
import 'package:flutter_application_4/chat_page/chat_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/images.png"),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Telegram",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  "The world's fastest messaging app. It is free and secure.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                const SizedBox(height: 16.0),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                      
                    );
                    
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Start Messaging',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}