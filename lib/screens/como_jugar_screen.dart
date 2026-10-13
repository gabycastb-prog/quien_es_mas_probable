import 'package:flutter/material.dart';
import '../widgets/regla_item.dart';

class ComoJugarScreen extends StatelessWidget {
  const ComoJugarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFF7B2CBF),
            borderRadius: BorderRadius.circular(22),
          ),
          child: const Column(
            children: [
              Icon(Icons.style, size: 60, color: Colors.white),
              SizedBox(height: 12),
              Text(
                '¿Quién es más probable que...?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'El juego para descubrir qué piensan tus amigos de ti.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFEDE0FF),
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 26),
        const Text(
          'REGLAS',
          style: TextStyle(
            color: Color(0xFFD1B3FF),
            fontSize: 16,
            fontWeight: FontWeight.w300,
            letterSpacing: 6,
          ),
        ),
        const SizedBox(height: 14),
        const ReglaItem(
          numero: 1,
          titulo: 'Reúnanse',
          descripcion: 'Junten a Kenay, Alaska, Benjamin y Tobyas alrededor del celular.',
        ),
        const ReglaItem(
          numero: 2,
          titulo: 'Escojan una categoría',
          descripcion: 'En la pestaña Jugar elijan entre Videojuegos, Películas, Moda o Arte.',
        ),
        const ReglaItem(
          numero: 3,
          titulo: 'Lean la carta',
          descripcion: 'Alguien lee en voz alta la pregunta mientras todos miran la imagen.',
        ),
        const ReglaItem(
          numero: 4,
          titulo: 'Voten',
          descripcion: 'Decidan entre todos quién es más probable y toquen su nombre. Se suma un voto y pasa a la siguiente carta.',
        ),
        const ReglaItem(
          numero: 5,
          titulo: 'Gana el más votado',
          descripcion: 'Al final, quien tenga más votos es el más probable del grupo. Usen Reiniciar para jugar otra vez.',
        ),
        const SizedBox(height: 20),
        const Center(
          child: Text(
            'Hecho por Hanna Castaño',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              letterSpacing: 2,
            ),
          ),
        ),
      ],
    );
  }
}