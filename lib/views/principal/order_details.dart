import 'package:flutter/material.dart';
import 'package:restaurante/config/routes/routes.dart';
import 'package:restaurante/config/utils/my_colors.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Details'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: size.width * 0.9,
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Detalle de la orden',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                  ),
                 Pedido(size: size),
                  SizedBox(
                  height: size.height * 0.02,
                ),
                 Pedido(size: size),
                  SizedBox(
                  height: size.height * 0.02,
                ),
                 Pedido(size: size),
                  SizedBox(
                  height: size.height * 0.02,
                ),
                 Pedido(size: size),
                 SizedBox(
                  height: size.height * 0.06,
                ),
                Container(
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/logo.png'), 
                      fit: BoxFit.cover),
                    color: MyColors.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Sub-total',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              ),
                            Spacer(),
                            Text(
                              '\$14',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Delivery Charge',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              ),
                            Spacer(),
                            Text(
                              '\$1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Descuento',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              ),
                            Spacer(),
                            Text(
                              '\$0',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            Spacer(),
                            Text(
                              '\$15',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          width: size.width * 0.8,
                          height: size.height * 0.06,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, AppRoutes.paymentDone);
                            }, 
                            child: const Text('Ordenar', 
                              style: TextStyle(
                              color: MyColors.primary,
                              fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

class Pedido extends StatefulWidget {
  const Pedido({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<Pedido> createState() => _PedidoState();
}

class _PedidoState extends State<Pedido> {

  int count = 0;

  void add(){
    setState(() {
      count++;
    });
  }

  void remove(){
    setState(() {
      if(count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       SizedBox(
        width: widget.size.width * 0.15, // Ajusta el ancho de la imagen
        height: widget.size.height * 0.076, // Ajusta la altura de la imagen
        child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/food-menu-banner-template-design-0c9bde00aa99322dbd05b1e627eff618_screen.jpg?ts=1734465670', 
          fit: BoxFit.cover),
          ),
        ),
       const SizedBox(
         width: 10,
       ),
       const Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             'Hamburguesa',
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w400,
             ),
             ),
           Text(
             'Marios',
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w400,
               color: Colors.grey,
             ),
             ),
           Text(
             '\$15',
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
               color: MyColors.primary
             ),
             ),
              SizedBox(
               width: 10,
             ),
         ],
       ),
       const Spacer(),
        IconButton(
         onPressed: (){
           remove();
         }, 
         icon: const Icon(Icons.remove, color: MyColors.primary,),
         style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
           backgroundColor: WidgetStateProperty.all(Colors.grey[200]),
         ),
       ),
       const SizedBox(
         width: 10,
       ),
       Text('$count'),
       const SizedBox(
         width: 10,
       ),
        IconButton(
         onPressed: (){
          add();
         }, 
         icon: const Icon(Icons.add, color: Colors.white,),
         style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
           backgroundColor: WidgetStateProperty.all(MyColors.primary),
         ),
       ),
       SizedBox(
     height: widget.size.height * 0.02,
                  ),
            
     ],
                  );
  }
}