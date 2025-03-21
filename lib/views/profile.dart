import 'package:flutter/material.dart';
import 'package:restaurante/utils/my_colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: MyColors.primary.withOpacity(0.4), // Color del círculo detrás
                      shape: BoxShape.circle,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://media.istockphoto.com/id/1090878494/es/foto/retrato-de-joven-sonriente-a-hombre-guapo-en-camiseta-polo-azul-aislado-sobre-fondo-gris-de.jpg?s=612x612&w=0&k=20&c=dHFsDEJSZ1kuSO4wTDAEaGOJEF-HuToZ6Gt-E2odc6U='),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: (){}, 
                      icon: const Icon(
                        Icons.camera_alt,
                        size: 30,
                        color: MyColors.primary,
                        ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                width: size.width * 0.9,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Información personal',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.0),
                      child:  Row(
                        children: [
                          Text(
                            'Tu nombre',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Rafael Ordaz',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.0),
                      child:  Row(
                        children: [
                          Text(
                            'Ocupación',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Programador',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.0),
                      child:  Row(
                        children: [
                          Text(
                            'Dirección',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Puerta Maraven',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: 15.0),
                      child:  Row(
                        children: [
                          const Text(
                            'Correo',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                            ),
                          ),
                          const Spacer(),
                          Switch(
                            activeColor: MyColors.primary,
                            inactiveThumbColor: Colors.black,
                            inactiveTrackColor: Colors.white,
                            value: switchValue, 
                            onChanged: (bool value){
                              setState(() {
                                switchValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Información de contacto',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.0),
                      child:  Row(
                        children: [
                          Text(
                            'Teléfono',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                            ),
                          ),
                          Spacer(),
                          Text(
                            '+58 424 6560053',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 15.0),
                      child:  Row(
                        children: [
                          Text(
                            'Correo',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey
                            ),
                          ),
                          Spacer(),
                          Text(
                            'rafaelordaz16@gmail.com',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    SizedBox(
                      width: size.width * 0.9,
                      height: size.height * 0.08,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: (){}, 
                          child: const Text(
                            'Editar',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}