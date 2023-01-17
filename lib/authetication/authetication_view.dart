import 'package:flutter/material.dart';
import '../components/text_field.dart';

class AutheticationView extends StatefulWidget {
  const AutheticationView({super.key});

  @override
  State<AutheticationView> createState() => _AutheticationViewState();
}

class _AutheticationViewState extends State<AutheticationView> {
  bool _showSignIn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 250, 16, 0),
        child: Column(
          children: [
            TextInputField(_showSignIn),
            GestureDetector(
              onTap: () {
                _showSignIn = !_showSignIn;
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
