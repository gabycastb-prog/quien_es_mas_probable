import 'package:flutter/material.dart';
import '../widgets/categoria_card.dart';

class CategoriasScreen extends StatelessWidget {
  const CategoriasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        Text(
          'Escoge tu categoría favorita en la pestaña Jugar',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 14,
            height: 1.4,
          ),
        ),
        SizedBox(height: 20),
        CategoriaCard(
          nombre: 'VIDEOJUEGOS',
          imagen: 'https://www.shutterstock.com/shutterstock/videos/4056339131/thumb/1.jpg?ip=x480',
          descripcion: '¿Quién vive pegado al control y quién nunca ha pasado del primer nivel? Que empiece la partida.',
        ),
        CategoriaCard(
          nombre: 'PELÍCULAS',
          imagen: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGD3kM0fHORkkUWPFlAhIWLMDBnjb1QqzKz0cx5All-mhyIUHbrbXCQ-0&s=10',
          descripcion: 'Palomitas listas. Descubran quién llora con todo y quién se duerme en la mitad de la función.',
        ),
        CategoriaCard(
          nombre: 'MODA',
          imagen: 'https://cdn.shopify.com/s/files/1/0040/4668/4209/files/Regina_Romero_Origen_de_tendencias_Armani_FW25.jpg?v=1750294534',
          descripcion: 'Outfits, pasarelas y compras impulsivas. ¿Quién del grupo es el más fashion?',
        ),
        CategoriaCard(
          nombre: 'ARTE',
          imagen: 'https://thumb.wikimedia.org/wikipedia/commons/thumb/b/b6/Sebastiano_Ricci_002.jpg/250px-Sebastiano_Ricci_002.jpg?utm_source=es.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
          descripcion: 'Pinceles, museos y cuadernos rayados. Descubran quién tiene alma de artista.',
        ),
      ],
    );
  }
}