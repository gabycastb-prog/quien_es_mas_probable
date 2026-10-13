import 'package:flutter/material.dart';

class CategoriaCard extends StatelessWidget {
  final String nombre;
  final String imagen;
  final String descripcion;

  const CategoriaCard({
    super.key,
    required this.nombre,
    required this.imagen,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: const Color(0xFFD1B3FF), width: 3),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              color: const Color(0xFF1A0B2E),
              child: Text(
                nombre,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 4,
                ),
              ),
            ),
            Image.network(
              imagen,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: const Color(0xFF1A0B2E),
              child: Column(
                children: [
                  Text(
                    descripcion,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '4 PREGUNTAS',
                    style: TextStyle(
                      color: Color(0xFFD1B3FF),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}