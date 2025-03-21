import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:restaurante/routes/routes.dart';
import 'package:restaurante/utils/my_colors.dart';

class ProductDetailScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final List<String> images;

  const ProductDetailScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items: images.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return SizedBox(
                        width: size.width * 0.9, // Ajusta el ancho de la imagen
                        height: size.height * 0.4, // Ajusta la altura de la imagen
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                          child: Image.network(image, fit: BoxFit.cover)),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  height: size.height * 0.4,
                  viewportFraction: 1.0,
                  enlargeCenterPage: true,
                ),
              ),
              SizedBox(height: size.height * 0.02), // Espacio entre la imagen y el texto
              SizedBox(
                width: size.width * 0.9, // Ajusta el ancho del contenedor
                child: Row(
                  children: [
                    Text('Popular',
                        style: TextStyle(
                          fontSize: size.height * 0.020, // Ajusta el tamaño del texto
                          fontWeight: FontWeight.bold,
                          color: MyColors.primary,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.favorite_border, color: MyColors.primary,),
                      ),
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.gps_fixed, color: MyColors.primary,)),
                  ],
                ),
              ),
              SizedBox(
                width: size.width * 0.9, // Ajusta el ancho del contenedor
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Asegura que los textos estén alineados a la izquierda
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: size.height * 0.03, // Ajusta el tamaño del texto
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: size.height * 0.01), // Espacio entre los textos
                      const Row(
                        children: [
                          Icon(Icons.star_half_rounded, color:  Color.fromARGB(255, 235, 214, 25)), // Icono de estrella
                          Text('4.5', style: TextStyle(color: Colors.grey)), // Calificación
                          Spacer(),
                          Icon(Icons.shopify_outlined, color: MyColors.primary), // Punto
                          Text('2000+ órdenes', style: TextStyle(color: Colors.grey)), // Tipo de entrega
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      // Text(
                      //   subtitle,
                      //   style: TextStyle(
                      //     fontSize: size.height * 0.02, // Ajusta el tamaño del texto
                      //     color: Colors.grey,
                      //   ),
                      // ),
                       Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen un libro de textos especimen.',
                        style: TextStyle(
                          fontSize: size.height * 0.02, // Ajusta el tamaño del texto
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: size.height * 0.02), // Espacio entre los textos
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: size.height * 0.025, // Ajusta el tamaño del texto
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Center(
                          child: SizedBox(
                            width: size.width * 0.8, // Ajusta el ancho del contenedor
                            child: FilledButton(
                              style: FilledButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                backgroundColor: MyColors.primary,
                                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.02),
                              ),
                              onPressed: (){
                                Navigator.pushNamed(context, AppRoutes.orderDetails);
                              }, 
                              child: const Text('Agregar al carrito')),
                          )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}