import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [
        Color(0xFF297FA9),
        Color(0xffc6dde3)
      ]
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Welcome(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(80),
                child:      ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF42A5F5),
                                Color(0xFF42A5F5),
                                Color(0xFF42A5F5),
                              ],
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        style:
                        TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(10.0),
                          textStyle: const TextStyle(fontSize: 30),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/nav');
                        },
                        child: const Text('Get Started'),
                      ),
                    ],
                  ),
                )
              )
            ],
          )
        ],
      ),
    );
  }
}



//WELCOME ANIMATION
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
      return TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: 1),
        duration: const Duration(milliseconds: 850),
        builder: (BuildContext context, double size, Widget? child) {
          return Opacity(
              opacity: size,
              child: Padding(
                  padding: EdgeInsets.only(top: size*20),
                  child: child
              )
          );
        },
        child: Container(
          alignment: Alignment.topCenter,
          child: const SafeArea(
            child: Text('HYDE', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white70),
            ),
          ),
        ),
      );
    }
  }







