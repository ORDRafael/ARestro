import 'package:flutter/material.dart';
import 'package:restaurante/utils/my_colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: size.width * 0.9,
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.02,),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Encuentra un restaurante cerca',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                      ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Buscar',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.mic_none_outlined),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            SizedBox(
              width: size.width * 0.9,
              child: Row(
                children: [
                  const Text(
                    'Restaurantes populares',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Ver todos',
                      style: TextStyle(
                        color: MyColors.primary,
                      fontSize: 15,
                    ),
                      ),
                  ),
                ],
              ),
            ),
             Column(
               children: [
                 RestaurantCard(
                  onTap: () {
                    Navigator.pushNamed(context, '/restaurantDetails');
                 },
                 ),
                 SizedBox(height: size.height * 0.01,),
                 RestaurantCard(
                  onTap: () {
                    Navigator.pushNamed(context, '/restaurantDetails');
                 },
                  
                 ),
                 SizedBox(height: size.height * 0.01,),
                 const RestaurantCard(),
                 SizedBox(height: size.height * 0.01,),
                 const RestaurantCard(),
                 SizedBox(height: size.height * 0.01,),
                 const RestaurantCard(),
                 SizedBox(height: size.height * 0.01,),
                 const RestaurantCard(),
                 SizedBox(height: size.height * 0.01,),
                 const RestaurantCard(),
                 SizedBox(height: size.height * 0.01,),
                 const RestaurantCard(),
                 SizedBox(height: size.height * 0.01,),
                 const RestaurantCard(),
                 SizedBox(height: size.height * 0.01,),
                 const RestaurantCard(),
                 SizedBox(height: size.height * 0.01,),
               ],
             ),
          ],
        ),
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {

  final VoidCallback? onTap;

  const RestaurantCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: Colors.white,
         child: Column(
           children: [
             Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage('https://lh3.googleusercontent.com/p/AF1QipMwH6nVzV2mT-266kvhOvV3x4ZK5ZReUqPC93Op=s680-w680-h510'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  
                ),
                const SizedBox(width: 10,),
                 Expanded(
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Nombre del restaurante',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            ),
                          SizedBox(width: 10,),
                          Icon(Icons.star, color: MyColors.primary,),
                        ],
                      ),
                      Text(
                        'Location',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 12,
                        ),
                        
                        ),
                      const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut.'),
                    ],
                             ),
                 ),
              ],
             ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Row(
                  children: [
                    Icon(Icons.map_outlined),
                    SizedBox(width: 10,),
                    Text('1.2 km desde tu ubicación'),
                    Spacer(),
                    Text('Disponible'),
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