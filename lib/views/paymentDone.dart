import 'package:flutter/material.dart';
import 'package:restaurante/routes/routes.dart';
import 'package:restaurante/utils/my_colors.dart';

class Paymentdone extends StatelessWidget {
  const Paymentdone({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100.0,
            ),
            const Text(
              'Pago realizado con éxito',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 30),
                Icon(Icons.star, color: Colors.yellow, size: 30),
                Icon(Icons.star, color: Colors.yellow, size: 30),
                Icon(Icons.star, color: Color(0x81FFEB3B), size: 30),
                Icon(Icons.star_half_outlined, color: Color(0x81FFEB3B), size: 30),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.note_alt_outlined, color: MyColors.primary, size: 30),
                SizedBox(width: 10),
                Text('Leave a review', style: TextStyle(fontSize: 20)),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: size.width * 0.9,
              child: Row(
                children: [
                  SizedBox(
                    width: size.width * 0.5,
                    height: size.height * 0.06,
                    child: FilledButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: const WidgetStatePropertyAll(MyColors.primary),
                        
                      ),
                      onPressed: (){
                        Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.mainScreen, (route) => false);
                      },  
                      child: const Text('Enviar', style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: size.width * 0.35,
                    height: size.height * 0.06,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        side: const WidgetStatePropertyAll(BorderSide(color: MyColors.primary)),
                        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: const WidgetStatePropertyAll(Colors.white),
                        
                      ),
                      onPressed: (){
                        Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.mainScreen, (route) => false);
                      }, 
                      child: const Text('Saltar', style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}