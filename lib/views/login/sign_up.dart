import 'package:flutter/material.dart';
import 'package:restaurante/config/routes/routes.dart';
import 'package:restaurante/config/utils/my_colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: MyColors.primary),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          heightFactor: 1,
          child: SizedBox(
            width: size.width * 0.8,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: SizedBox(
                      width: 125,
                      height: 125,
                      child: Image.asset('assets/logo.png'),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(bottom: 25.0),
                    child:  Text('Crea tu cuenta',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      width: size.width * 0.8,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          
                          hintText: 'Ingresa tu nombre',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          )
                        ),
                      ),
                    ),
                  ),
              
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      width: size.width * 0.8,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          
                          hintText: 'Ingresa tu correo',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          )
                        ),
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      width: size.width * 0.8,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          
                          hintText: 'Ingresa tu número de teléfono',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
              
                  SizedBox(
                    width: size.width * 0.8,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        
                        hintText: 'Ingresa tu contraseña',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      ),
                    ),
                  ),
                   
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                    child: SizedBox(
                      width: size.width * 0.8,
                      height: size.height * 0.06,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, AppRoutes.home);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ), 
                        child: const Text('Registrarse',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
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
                 
                  GestureDetector(
                    onTap: (){
                      print('SignUp with Google');
                    },
                    child: SizedBox(
                      width: size.width * 0.8,
                      height: size.height * 0.06,
                      child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Image.network(
                    'https://img.icons8.com/?size=512&id=17949&format=png',
                    height: 40,
                    width: 40,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Padding(
                                  padding: EdgeInsets.only(left:40.0),
                                  child: Text(
                    'SignUp with Google',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                                  ),
                                ),
                        ],
                      ),)
                    ),
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