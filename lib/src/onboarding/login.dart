import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Log in or create an account',
              style: TextStyle(
                fontFamily: 'Bookman',
                color: Colors.black,
                fontSize: 18,
              )),
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
              top: 10,
              left: 30,
              right: 40,
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontFamily: 'Bookman',
                    color: Colors.black,
                    fontSize: 12,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'By continuing, you agree to updated ',
                    ),
                    TextSpan(
                      text: 'Terms of Sale,\n ',
                    ),
                    TextSpan(
                      text: 'Terms of Service, ',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                    ),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 70,
              left: 30,
              right: 30,
              child: TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontFamily: 'Bookman',
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 135,
              left: 30,
              right: 30,
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromHeight(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontFamily: 'Bookman',
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 200,
              left: 30,
              right: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(color: Colors.black, thickness: 0.5),
                  ),
                  Text(
                    ' OR ',
                    style: TextStyle(fontFamily: 'Bookman', fontSize: 10),
                  ),
                  Expanded(
                    child: Divider(color: Colors.black, thickness: 0.5),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 240,
              left: 30,
              right: 30,
              child: bottom(
                'assets/icons/icons8-google-48.png',
                'Continue with Google',
              ),
            ),
            Positioned(
              top: 300,
              left: 30,
              right: 30,
              child: bottom(
                'assets/icons/icons8-facebook-48.png',
                'Continue with Facebook',
              ),
            ),

            // criar uma linha com um divider com a palavra OR centralizada.
          ],
        ),
      ),
    );
  }

  ElevatedButton bottom(String icon, String msg) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1),
            side: const BorderSide(color: Colors.black, width: 1),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        onPressed: () {},
        icon: Image.asset(icon, width: 24, height: 24),
        label: Text(
          msg,
          style: const TextStyle(
            fontFamily: 'Bookman',
            fontSize: 10,
          ),
        ));
  }
}
