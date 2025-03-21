import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:restaurante/config/routes/routes.dart';
import 'package:restaurante/config/utils/my_colors.dart';
import 'package:restaurante/views/principal/product_detail_screen.dart';
import 'package:restaurante/widgets/food_list_items.dart';

class RestaurantDetails extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<String> images;

  RestaurantDetails({
    super.key,
    required this.title,
    required this.subtitle,

    required this.images,
  });

  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/food1.png',
      'images': [
        'https://content.clara.es/medio/2024/05/23/dieta-sin-carbohidratos-21-dias_31932d9e_240523095936_900x900.webp',
        'https://media-cdn.tripadvisor.com/media/photo-s/06/16/ef/fc/soup-dive.jpg',
        'https://thumbs.dreamstime.com/b/filete-de-salm%C3%B3n-asado-y-ensalada-tomate-vegetal-fresco-con-queso-crema-261115873.jpg',
      ],
      'title': 'Plato del dia',
      'subtitle': 'Con papas fritas',
      'price': '\$10.00',
    },
    {
    'image': 'assets/food2.png',
      'images': [
        'https://glovo.dhmedia.io/image/menus-glovo/products/d7b9058d7c3fdae51cf4d06c2adf8e4af9102e6a30a54e8ad80f298382c34397?t=W3siYXV0byI6eyJxIjoibG93In19LHsicmVzaXplIjp7IndpZHRoIjoyNjAsImhlaWdodCI6MjYwfX1d',
        'https://www.shutterstock.com/image-photo/caesar-salad-delicious-chicken-crackers-260nw-2506911213.jpg',
        'https://roviandaplus.com/wp-content/uploads/2022/06/Ensalada-Cesar-1-300x300.jpg',
      ],
    'title': 'Recomendacion',
    'subtitle': 'Con papas fritas',
    'price': '\$10.00',
  },
  {
    'image': 'assets/food3.png',
    'title': '',
    'subtitle': 'Con papas fritas',
    'price': '\$10.00',
  },
  {
    'image': 'assets/food1.png',
    'title': 'Hamburguesa',
    'subtitle': 'Con papas fritas',
    'price': '\$10.00',
  },
  {
    'image': 'assets/food2.png',
    'title': 'Hamburguesa',
    'subtitle': 'Con papas fritas',
    'price': '\$10.00',
  },
  {
    'image': 'assets/food3.png',
    'title': 'Hamburguesa',
    'subtitle': 'Con papas fritas',
    'price': '\$10.00',
  },
  {
    'image': 'assets/food1.png',
    'title': 'Hamburguesa',
    'subtitle': 'Con papas fritas',
    'price': '\$10.00',
  },
  ];

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
                    Text(
                        title,
                        style: TextStyle(
                          fontSize: size.height * 0.03, // Ajusta el tamaño del texto
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.star_half_rounded, color: Color.fromARGB(255, 235, 214, 25)), // Icono de estrella
                      const Text('4.5', style: TextStyle(color: Colors.grey)), // Calificación
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
                       Padding(
                         padding: const EdgeInsets.all(0),
                         child: Row(
                          children: [
                            const Icon(
                              Icons.map_rounded, 
                              color: MyColors.primary,
                              size: 13,
                              ),
                            const Text(
                              '1.2km desde tu ubicacion', 
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ), // Distancia
                            const Spacer(),
                            TextButton(
                              onPressed: (){}, 
                              child: const Text(
                                'Ver en Google Maps', 
                                style: TextStyle(
                                  color: MyColors.primary,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                                               ),
                       ),
                     
                      // Text(
                      //   subtitle,
                      //   style: TextStyle(
                      //     fontSize: size.height * 0.02, // Ajusta el tamaño del texto
                      //     color: Colors.grey,
                      //   ),
                      // ),
                      Text(
                        'Descripcion',
                        style: TextStyle(
                          fontSize: size.height * 0.025, // Ajusta el tamaño del texto
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        ),
                        SizedBox(height: size.height * 0.01),
                       Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hac.',
                        style: TextStyle(
                          fontSize: size.height * 0.02, // Ajusta el tamaño del texto
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: size.height * 0.025),
                      Text(
                        'Especialidades',
                        style: TextStyle(
                          fontSize: size.height * 0.025, // Ajusta el tamaño del texto
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: size.height * 0.02), // Espacio entre los textos
                      Column(
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.done, color: MyColors.primary),
                              Text('Zona Wi-Fi'),
                              Spacer(),
                              Icon(Icons.done, color: MyColors.primary),
                              Text('Baños'),
                            ],
                          ),
                          SizedBox(height: size.height * 0.01),
                          const Row(
                            children: [
                              Icon(Icons.done, color: MyColors.primary),
                              Text('Estacionamiento'),
                              Spacer(),
                              Icon(Icons.done, color: MyColors.primary),
                              Text('Mesas al aire libre'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.02),
                      Row(
                        children: [
                          Text(
                            'Mejores ofertas',
                            style: TextStyle(
                              fontSize: size.height * 0.025, // Ajusta el tamaño del texto
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: (){}, 
                            child: const Text('Ver todo', style: TextStyle(color: MyColors.primary)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: size.height * 0.29,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length, //aqui puedes usar provider para obtener la cantidad de items
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: ListItem(
                          image: items[index]['image']!,
                          title: items[index]['title']!,
                          subtitle: items[index]['subtitle']!,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailScreen(
                                  images: items[index]['images']!,
                                  title: items[index]['title']!,
                                  subtitle: items[index]['subtitle']!,
                                  price: items[index]['price']!,
                                ),
                              ),
                            );
                          },
                          price: items[index]['price']!,
                        ),
                      );
                    },
                  ),
                ),
                      SizedBox(height: size.height * 0.03),
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
                                Navigator.pushNamed(context, AppRoutes.tables);
                              }, 
                              child: const Text('Ver mesas disponibles')),
                          )),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}