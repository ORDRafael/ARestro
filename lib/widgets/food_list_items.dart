import 'package:flutter/material.dart';
import 'package:restaurante/config/utils/my_colors.dart';

class ListItem extends StatelessWidget {

  final String image;
  final String title;
  final String subtitle;
  final String price;
  final VoidCallback? onTap;

    ListItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.onTap,
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
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            width: size.width * 0.4,
            
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Column(
                children: [
                  Image.asset(image, fit: BoxFit.cover, width: double.infinity, height: size.height * 0.2),
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
                   SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(price,
                    style: TextStyle(
                      fontSize: size.height * 0.02,
                      fontWeight: FontWeight.w500,
                      color: MyColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}