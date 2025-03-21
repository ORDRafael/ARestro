import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:restaurante/config/utils/my_colors.dart';
import 'package:restaurante/views/principal/product_detail_screen.dart';
import 'package:restaurante/views/principal/restaurant_details.dart';
import 'package:restaurante/widgets/food_list_items.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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

  final List<Map<String, dynamic>> itemsRestaurant = [
    {
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_6ML8T7XiItHlEaZvz1HAYf8h56FEavZgRg&s',
      'images': [
       'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/02/45/41/interior-del-bar.jpg?w=1100&h=700&s=1',
       'https://previews.123rf.com/images/4045qd/4045qd1507/4045qd150700145/47158220-restaurantes-de-comida-r%C3%A1pida.jpg',
       'https://www.tripadvisor.com.ve/Restaurants-g316095-Punto_Fijo_Paraguana_Peninsula_Central_Western_Region.html',
      ],
      'title': 'Geralds',
      'subtitle': 'Comida rapida',
    },
    {
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYe-dCfQz3cdeQEk094MJgnzfYelFH4yx6ZQ&s',
    'images': [
        'https://www.google.com/imgres?q=marios%20maraven&imgurl=https%3A%2F%2Fdynamic-media-cdn.tripadvisor.com%2Fmedia%2Fphoto-o%2F0e%2F2f%2F79%2Ff0%2Fplato.jpg%3Fw%3D800%26h%3D-1%26s%3D1&imgrefurl=https%3A%2F%2Fwww.tripadvisor.cl%2FRestaurant_Review-g316095-d12009783-Reviews-Marios_American_Food-Punto_Fijo_Paraguana_Peninsula_Central_Western_Region.html&docid=ug-rjycf9SzCsM&tbnid=RymGNxMhamS5WM&vet=12ahUKEwifqfay1eeLAxVHSzABHcSJKEYQM3oECG4QAA..i&w=750&h=463&hcb=2&itg=1&ved=2ahUKEwifqfay1eeLAxVHSzABHcSJKEYQM3oECG4QAA',
      ],
    'title': 'Marios',
    'subtitle': 'Comida rapida',
    },
    {
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrQuai_ztoVRAEFI-W4OIgHQaXw1d1I9IM1w&s',
    'images': [
        'https://content.clara.es/medio/2024/05/23/dieta-sin-carbohidratos-21-dias_31932d9e_240523095936_900x900.webp',
        'https://media-cdn.tripadvisor.com/media/photo-s/06/16/ef/fc/soup-dive.jpg',
        'https://thumbs.dreamstime.com/b/filete-de-salm%C3%B3n-asado-y-ensalada-tomate-vegetal-fresco-con-queso-crema-261115873.jpg',
      ],
    'title': 'Queros',
    'subtitle': 'Comida rapida',
    },
    {
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_6ML8T7XiItHlEaZvz1HAYf8h56FEavZgRg&s',
      'images': [
        'https://content.clara.es/medio/2024/05/23/dieta-sin-carbohidratos-21-dias_31932d9e_240523095936_900x900.webp',
        'https://media-cdn.tripadvisor.com/media/photo-s/06/16/ef/fc/soup-dive.jpg',
        'https://thumbs.dreamstime.com/b/filete-de-salm%C3%B3n-asado-y-ensalada-tomate-vegetal-fresco-con-queso-crema-261115873.jpg',
      ],
      'title': 'Geralds',
      'subtitle': 'Comida rapida',
    },
    {
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYe-dCfQz3cdeQEk094MJgnzfYelFH4yx6ZQ&s',
    'images': [
        'https://content.clara.es/medio/2024/05/23/dieta-sin-carbohidratos-21-dias_31932d9e_240523095936_900x900.webp',
        'https://media-cdn.tripadvisor.com/media/photo-s/06/16/ef/fc/soup-dive.jpg',
        'https://thumbs.dreamstime.com/b/filete-de-salm%C3%B3n-asado-y-ensalada-tomate-vegetal-fresco-con-queso-crema-261115873.jpg',
      ],
    'title': 'Marios',
    'subtitle': 'Comida rapida',
    },
    {
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrQuai_ztoVRAEFI-W4OIgHQaXw1d1I9IM1w&s',
    'images': [
        'https://content.clara.es/medio/2024/05/23/dieta-sin-carbohidratos-21-dias_31932d9e_240523095936_900x900.webp',
        'https://media-cdn.tripadvisor.com/media/photo-s/06/16/ef/fc/soup-dive.jpg',
        'https://thumbs.dreamstime.com/b/filete-de-salm%C3%B3n-asado-y-ensalada-tomate-vegetal-fresco-con-queso-crema-261115873.jpg',
      ],
    'title': 'Queros',
    'subtitle': 'Comida rapida',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                  width: size.width * 0.8, 
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/food-menu-banner-template-design-0c9bde00aa99322dbd05b1e627eff618_screen.jpg?ts=1734465670', 
                          fit: BoxFit.cover,
                          width: double.infinity,
                          ),
                        ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/delicious-food-banner-template-design-cd3994e39458960f4f33e73b8c60edb9_screen.jpg?ts=1645769305', 
                          fit: BoxFit.cover,
                          width: double.infinity,
                          ),
                        ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://img.freepik.com/vector-premium/comida-diseno-portada-facebook-menu-restaurante-plantilla-redes-sociales_608886-396.jpg', 
                          fit: BoxFit.cover,
                          width: double.infinity,
                          ),
                        ),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      height: size.height * 0.2,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  width: size.width * 0.8,
                  height: size.height * 0.05,
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: MyColors.primary,
                          width: 1,
                          )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 0.1,
                          )
                      ),
                      hintText: 'Buscar',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic_none),
                    ),
                  ),
                ),
                
                SizedBox(
                  width: size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Mejores ofertas',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          overlayColor: MyColors.primary,
                        ),
                        onPressed: (){
                          Navigator.pushNamed(context, '/offers');
                        }, 
                        child: const Text(
                          'Ver todos',
                          style: TextStyle(
                            color: MyColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                 SizedBox(
                  height: size.height * 0.01,
                ),
                // Lista de ofertas
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
                SizedBox(
                  width: size.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Restaurantes cerca',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          overlayColor: MyColors.primary,
                        ),
                        onPressed: (){}, 
                        child: const Text(
                          'Ver todos',
                          style: TextStyle(
                            color: MyColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                // Restaurantes cerca
                SizedBox(
                  height: size.height * 0.29,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemsRestaurant.length, //aqui puedes usar provider para obtener la cantidad de items
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: _RestaurantListItem(
                          image: itemsRestaurant[index]['image']!, 
                          title: itemsRestaurant[index]['title']!, 
                          subtitle: itemsRestaurant[index]['subtitle']!,
                          onTap:() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RestaurantDetails(
                                  images: itemsRestaurant[index]['images']!,
                                  title: itemsRestaurant[index]['title']!,
                                  subtitle: itemsRestaurant[index]['subtitle']!,
                                 
                              )
                            ));
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}



class _RestaurantListItem extends StatelessWidget {

  final String image;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const _RestaurantListItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: size.width * 0.35,
        height: size.height * 0.25,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(image, fit: BoxFit.cover, width: double.infinity, height: size.height * 0.2),),
            Text(title,
              style: TextStyle(
                fontSize: size.height * 0.02,
                fontWeight: FontWeight.w500,
              ),
            ),
      
            Text(subtitle,
              style: TextStyle(
                fontSize: size.height * 0.012,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}