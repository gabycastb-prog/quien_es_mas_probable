import 'package:flutter/material.dart';
import './screens/jugar_screen.dart';
import './screens/categorias_screen.dart';
import './screens/como_jugar_screen.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _selectedIndex = 0;

  void _cambiarSeccion(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String titulo = 'PROBABILIDAD';
    Widget pantalla = const JugarScreen();

    if (_selectedIndex == 1) {
      titulo = 'CATEGORÍAS';
      pantalla = const CategoriasScreen();
    }
    if (_selectedIndex == 2) {
      titulo = 'CÓMO JUGAR';
      pantalla = const ComoJugarScreen();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          titulo,
          style: const TextStyle(
            color: Color(0xFFD1B3FF),
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 6,
          ),
        ),
      ),
      body: pantalla,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _cambiarSeccion,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1A0B2E),
        selectedItemColor: const Color(0xFFD1B3FF),
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.style_outlined),
            activeIcon: Icon(Icons.style),
            label: 'Jugar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            activeIcon: Icon(Icons.grid_view),
            label: 'Categorías',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            activeIcon: Icon(Icons.help),
            label: 'Cómo jugar',
          ),
        ],
      ),
    );
  }
}