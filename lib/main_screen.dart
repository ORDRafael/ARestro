import 'package:flutter/material.dart';
import 'package:restaurante/config/routes/routes.dart';
import 'package:restaurante/config/utils/my_colors.dart';
import 'package:restaurante/views/principal/home.dart';
import 'package:restaurante/views/principal/order_details.dart';
import 'package:restaurante/views/principal/search.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  final screens = [
    HomeScreen(),
    SearchScreen(),
    OrderDetails(),
  ];
  
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawerEnableOpenDragGesture: true,
        key: _scaffoldKey,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: MyColors.primary,
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://media.istockphoto.com/id/1090878494/es/foto/retrato-de-joven-sonriente-a-hombre-guapo-en-camiseta-polo-azul-aislado-sobre-fondo-gris-de.jpg?s=612x612&w=0&k=20&c=dHFsDEJSZ1kuSO4wTDAEaGOJEF-HuToZ6Gt-E2odc6U='),
                )
              ),
              ListTile(
                title: const Text('Mis pedidos'),
                onTap: (){
                  Navigator.of(context).pushNamed('/pedidos');
                },
              ),
              ListTile(
                title: const Text('Configuracion'),
                onTap: (){
                  Navigator.of(context).pushNamed('/config');
                },
              ),
               ListTile(
                title: Text('Ayuda y soporte'),
                onTap: (){
                  Navigator.of(context).pushNamed('/helpAndSupport');
                },
              ),
               ListTile(
                title: const Text('Cerrar sesión'),
                onTap: (){
                  Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.login, (route) => false);
                },
              ),
            ],
          ),
          ),
      appBar: AppBar(
          leading: IconButton(onPressed: (){
            _scaffoldKey.currentState?.openDrawer();
          }, icon: const Icon(Icons.menu_open_outlined)),
          backgroundColor: Colors.white,
          elevation: 10,
          title: Image.asset('assets/logo2.png', width: size.width * 0.6, height: 50),
          
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/profile');
                }, 
                icon: const Icon(Icons.person),
              ),
            ),
          ],
        ),
      body: IndexedStack(
        index: _selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: MyColors.primary,
        backgroundColor: Colors.white,
        elevation: 10.0,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold
        ),
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}