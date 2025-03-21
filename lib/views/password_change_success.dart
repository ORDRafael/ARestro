import 'package:flutter/material.dart';
import 'package:restaurante/routes/routes.dart';
import 'package:restaurante/utils/my_colors.dart';


class PasswordChangeSuccess extends StatelessWidget {
  const PasswordChangeSuccess ({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, bottom: 25),
                  child: SizedBox(
                    width: 125,
                    height: 125,
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20.0, left: 40, right: 40),
                  child: Text('Has cambiado tu contraseña',
                  textAlign: TextAlign.center,
                    style: TextStyle(
                      
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(bottom: 21),
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: size.width * 0.8,
                      child:  Text('El cambio de contraseña se ha realizado con éxito',
                      textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                ),
               
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: SizedBox(
                    width: size.width * 0.8,
                    height: size.height * 0.06,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, AppRoutes.login);
                      },
                      child: const Text('Volver al login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
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