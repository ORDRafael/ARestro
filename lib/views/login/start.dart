import 'package:flutter/material.dart';
import 'package:restaurante/config/routes/routes.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:180.0, bottom: 35),
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                const Text('ARestro',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top: 130.0, bottom: 10),
                      child: SizedBox(
                        width: size.width * 0.8,
                        height: size.height * 0.06,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.green[700],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                            )
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.login);
                          },
                          child: const Text('Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      height: size.height * 0.06,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                          )
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, AppRoutes.signUp);
                        }, 
                        child: const Text('Sign Up',
                        style: TextStyle(
                          color: Colors.grey,
                           fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}