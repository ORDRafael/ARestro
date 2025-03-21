import 'package:flutter/material.dart';
import 'package:restaurante/config/routes/routes.dart';
import 'package:restaurante/config/utils/my_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _rememberMe = false;
  void rememberMe(bool value) {
    _rememberMe = value;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: size.width * 0.8,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: SizedBox(
                      width: 125,
                      height: 125,
                      child: Image.asset('assets/logo.png'),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(vertical: 20.0),
                    child:  Text('Iniciar sesión',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  SizedBox(
                    width: size.width * 0.8,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        
                        hintText: 'ejemplo@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Contraseña',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                  SizedBox(
                    width: size.width * 0.8,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        
                        hintText: '*********',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01),
                   Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        fillColor: const WidgetStatePropertyAll( Colors.white),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: _rememberMe, 
                        onChanged: (value){
                          setState(() {
                            rememberMe(value!);
                          });
                        },
                        side: WidgetStateBorderSide.resolveWith(
                          (states) => const BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                       ),
                      const Text('Recuerdame',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, AppRoutes.forgotPassword);
                        }, 
                        child: const Text('Olvidaste tu contraseña?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                                 ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: size.width * 0.8,
                      height: size.height * 0.06,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, AppRoutes.home);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ), 
                        child: const Text('Iniciar sesión',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0,),
                          child: Text('O continua con',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(),
                        ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                 SizedBox(
                  width: size.width * 0.8,
                    height: size.height * 0.06,
                   child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey), // Borde del botón
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                    child: Row(
                      children: [
                        Image.network(
                          'https://img.icons8.com/?size=512&id=17949&format=png',
                          height: 30,
                        ),
                        const Expanded( // Hace que el texto ocupe el espacio restante y se centre
                          child: Text(
                            'Login with Google',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            textAlign: TextAlign.center, // Centra el texto dentro del espacio disponible
                          ),
                        ),
                      ],
                    ),
                                   ),
                 ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('No tienes cuenta?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, AppRoutes.signUp);
                        }, 
                        child: const Text('Regístrate',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                        ),))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}