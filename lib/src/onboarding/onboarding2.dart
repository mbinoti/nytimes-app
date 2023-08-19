import 'package:flutter/material.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned(
                  top: 220,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '''Let's make your account.\nIt'll give you access to more in our\napp:''',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 30),
                      linha(
                        context,
                        'assets/icons/icons8-padlock-50.png',
                        'UnLock more stories each month',
                      ),
                      const SizedBox(height: 25),
                      linha(
                        context,
                        'assets/icons/icons8-cloud-download-32.png',
                        'Read saved stories offline',
                      ),
                      const SizedBox(height: 25),
                      linha(
                        context,
                        'assets/icons/icons8-message-48.png',
                        'Engage inlively discussions',
                      ),
                      const SizedBox(height: 25),
                      linha(
                        context,
                        'assets/icons/icons8-star-30.png',
                        'Follow your favorite topics',
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 10,
                  right: 10,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            1), // Define o raio de arredondamento dos cantos
                      ),
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('Create a free account'),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget linha(BuildContext context, String img, String txt) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Image.asset(img, width: 24, height: 24), // O ícone
      const SizedBox(width: 10), // Espaço entre o ícone e o texto
      Text(
        txt,
        style: const TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
      ), // O texto
    ],
  );
}
