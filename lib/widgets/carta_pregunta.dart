import 'package:flutter/material.dart';

class CartaPregunta extends StatelessWidget {
  final String pregunta;
  final String imagen;
  final String categoria;

  const CartaPregunta({
    super.key,
    required this.pregunta,
    required this.imagen,
    required this.categoria,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: const Color(0xFF7B2CBF),
              child: const Text(
                '¿Quién es más probable que...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  height: 1.1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 14),
              child: Text(
                pregunta,
                style: const TextStyle(
                  color: Color(0xFF1A0B2E),
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  imagen,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Container(
              height: 1,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                categoria,
                style: const TextStyle(
                  color: Color(0xFF7B2CBF),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 4,
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}