import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in or create an account'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                      side: const BorderSide(color: Colors.black, width: 1),
                    ),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  icon: Image.asset('assets/icons/icons8-google-48.png',
                      width: 24, height: 24),
                  label: const Text(
                    'Continue with Google',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      // fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ))),
        ],
      ),
    );
  }
}
