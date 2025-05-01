import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          height: 200,
          child: Card(
            elevation: 5,
            margin: EdgeInsets.all(16),
            child: Center(
              child: Text(
                "Got questions or feedback? We'd love to hear from you! Reach out to us via email, call, or visit our store. We're here to make your bakery experience delightful!",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
