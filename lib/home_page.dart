import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication/auth_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(title: Text("Halmaan homeScreen")),
      body: Center(
        child: ElevatedButton(
          child: Text("Sign out"),
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Future.delayed(Duration(seconds: 3), () {
              Center(
                child: CircularProgressIndicator(),
              );
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AuthScreenPage()));
            });
          },
        ),
      ),
    );
  }
}
