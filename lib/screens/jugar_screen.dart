import 'package:flutter/material.dart';
import '../widgets/carta_pregunta.dart';

class JugarScreen extends StatefulWidget {
  const JugarScreen({super.key});

  @override
  State<JugarScreen> createState() => _JugarScreenState();
}

class _JugarScreenState extends State<JugarScreen> {
  String _categoria = 'VIDEOJUEGOS';
  int _carta = 1;
  int _votosKenay = 0;
  int _votosAlaska = 0;
  int _votosBenjamin = 0;
  int _votosTobyas = 0;
  String _ultimoElegido = '';

  void _cambiarCategoria(String nueva) {
    setState(() {
      _categoria = nueva;
      _carta = 1;
      _ultimoElegido = '';
    });
  }

  void _votar(String nombre) {
    setState(() {
      if (nombre == 'Kenay') {
        _votosKenay++;
      }
      if (nombre == 'Alaska') {
        _votosAlaska++;
      }
      if (nombre == 'Benjamin') {
        _votosBenjamin++;
      }
      if (nombre == 'Tobyas') {
        _votosTobyas++;
      }
      _ultimoElegido = nombre;
      _carta++;
      if (_carta > 4) {
        _carta = 1;
      }
    });
  }

  void _saltarCarta() {
    setState(() {
      _ultimoElegido = '';
      _carta++;
      if (_carta > 4) {
        _carta = 1;
      }
    });
  }

  void _reiniciar() {
    setState(() {
      _votosKenay = 0;
      _votosAlaska = 0;
      _votosBenjamin = 0;
      _votosTobyas = 0;
      _ultimoElegido = '';
      _carta = 1;
    });
  }

  Widget _botonCategoria(String nombre) {
    bool activa = _categoria == nombre;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {
          _cambiarCategoria(nombre);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: activa ? const Color(0xFFD1B3FF) : const Color(0xFF2A1245),
          foregroundColor: activa ? const Color(0xFF1A0B2E) : const Color(0xFFD1B3FF),
          padding: const EdgeInsets.symmetric(horizontal: 22),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          nombre,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }

  Widget _botonJugador(String nombre, int votos) {
    return ElevatedButton(
      onPressed: () {
        _votar(nombre);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2A1245),
        foregroundColor: const Color(0xFFD1B3FF),
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            nombre,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            votos == 1 ? '$votos voto' : '$votos votos',
            style: const TextStyle(fontSize: 12, color: Colors.white70),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String pregunta = '';
    String imagen = '';

    if (_categoria == 'VIDEOJUEGOS') {
      if (_carta == 1) {
        pregunta = 'se quede despierto toda la noche jugando?';
        imagen = 'https://media.licdn.com/dms/image/v2/D4D12AQGxbLKDFkuENA/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1661451221419?e=2147483647&v=beta&t=WGbWftaCmL7KvwSOlHSnVQAsX3vq0ivJGwZW74pphiw';
      }
      if (_carta == 2) {
        pregunta = 'rompa el control por perder una partida?';
        imagen = 'https://cdn.shopify.com/s/files/1/2241/8433/files/gamesir_cms_upload_1_2_34bd1bf7cf.webp?v=1782912291';
      }
      if (_carta == 3) {
        pregunta = 'gaste todo su dinero en un videojuego?';
        imagen = 'https://img.lalr.co/cms/2020/03/13194904/videojuegos.jpg?size=xl';
      }
      if (_carta == 4) {
        pregunta = 'se vuelva un streamer famoso?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVg1MHP-FebJ8YhdYzLi6H7SSyniqSapuJduMBewVPNQJ4hB1o7FKXUk9p&s=10';
      }
    }

    if (_categoria == 'PELÍCULAS') {
      if (_carta == 1) {
        pregunta = 'llore viendo una película de Disney?';
        imagen = 'https://album.mediaset.es/eimg/2023/03/16/matthew-mcconaughey-en-la-pelicula-interstellar_783f.jpg?w=1200';
      }
      if (_carta == 2) {
        pregunta = 'se quede dormido en el cine?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1JyAGy0vVpF75ftof_Auo-px9ulhl0JKHAR7Twgg_I_6ZuXGDAld4Haqu&s=10';
      }
      if (_carta == 3) {
        pregunta = 'vea la misma película más de diez veces?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjazXti0trcrx8eI-7Y4acbsnePYGHQQeoC4T9LatVfpF7q1xsWord1X0&s=10';
      }
      if (_carta == 4) {
        pregunta = 'grite en una película de terror?';
        imagen = 'https://media.cnn.com/api/v1/images/stellar/prod/cnne-978675-gritos-stock-super-tease.jpeg?c=16x9&q=h_833,w_1480,c_fill';
      }
    }

    if (_categoria == 'MODA') {
      if (_carta == 1) {
        pregunta = 'gaste todo su sueldo en ropa?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSiTlvYXSiEryrvjmrnZAdUv8_4LYRhomraw-UunG2x8E5Ji0YyO4K5xt8&s=10';
      }
      if (_carta == 2) {
        pregunta = 'se cambie de outfit tres veces antes de salir?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq_TgaUEjZ7_d_N8Ye69CJgSgTbNQ0U_s3MYBOTVITM29VoAVayBwIGpw&s=10';
      }
      if (_carta == 3) {
        pregunta = 'se vuelva modelo de pasarela?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBA7jwMmXWw2nIAxjzGzZBiRV-bRowX6sguPLjl4pvfLyhSCgpDj_qg5A&s=10';
      }
      if (_carta == 4) {
        pregunta = 'use zapatos incómodos solo por verse bien?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7yxwMhecfhC1HTPLTkNLbMkjyI_Txx6z0teMHgNJJ5K5dAoRd5_VEgTIV&s=10';
      }
    }

    if (_categoria == 'ARTE') {
      if (_carta == 1) {
        pregunta = 'pinte un cuadro que llegue a un museo?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3OSAm6eCR0yjfXPjYqqWD581I-d32JSXmQxdHjimxr-zfHS_3NW6oCSw&s=10';
      }
      if (_carta == 2) {
        pregunta = 'se haga un tatuaje sin pensarlo dos veces?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjqmNZ3KcIA012C5s4TUVK6954WQNy5qmJNkwpVONmNpGnA-Y-jVlX5Lo&s=10';
      }
      if (_carta == 3) {
        pregunta = 'llore frente a una obra de arte?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCuC0kgrqkmviVZplQw-JGLuJyNpbQM_tUJyEBLMIoopxm6B0NlvOOgYs&s=10';
      }
      if (_carta == 4) {
        pregunta = 'dibuje en el cuaderno en vez de poner atención en clase?';
        imagen = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkOpo-IlQY5OrIz-CTs9LFnoBnBrk5LBCf3MEed_pADnmO2ScCVwtS6ck&s=10';
      }
    }

    String lider = '';
    int maximo = 0;

    if (_votosKenay > maximo) {
      maximo = _votosKenay;
      lider = 'Kenay';
    }
    if (_votosAlaska > maximo) {
      maximo = _votosAlaska;
      lider = 'Alaska';
    }
    if (_votosBenjamin > maximo) {
      maximo = _votosBenjamin;
      lider = 'Benjamin';
    }
    if (_votosTobyas > maximo) {
      maximo = _votosTobyas;
      lider = 'Tobyas';
    }

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        SizedBox(
          height: 46,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _botonCategoria('VIDEOJUEGOS'),
              _botonCategoria('PELÍCULAS'),
              _botonCategoria('MODA'),
              _botonCategoria('ARTE'),
            ],
          ),
        ),
        const SizedBox(height: 18),
        Text(
          'CARTA $_carta DE 4',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 4,
          ),
        ),
        const SizedBox(height: 20),
        CartaPregunta(
          pregunta: pregunta,
          imagen: imagen,
          categoria: _categoria,
        ),
        const SizedBox(height: 22),
        const Text(
          'ELIGE A UN JUGADOR',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFD1B3FF),
            fontSize: 14,
            fontWeight: FontWeight.w300,
            letterSpacing: 5,
          ),
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            Expanded(child: _botonJugador('Kenay', _votosKenay)),
            const SizedBox(width: 12),
            Expanded(child: _botonJugador('Alaska', _votosAlaska)),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: _botonJugador('Benjamin', _votosBenjamin)),
            const SizedBox(width: 12),
            Expanded(child: _botonJugador('Tobyas', _votosTobyas)),
          ],
        ),
        const SizedBox(height: 16),
        if (maximo > 0) ...[
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: const Color(0xFFD1B3FF),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.emoji_events, color: Color(0xFF1A0B2E)),
                const SizedBox(width: 8),
                Text(
                  maximo == 1
                      ? 'Va ganando: $lider con $maximo voto'
                      : 'Va ganando: $lider con $maximo votos',
                  style: const TextStyle(
                    color: Color(0xFF1A0B2E),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
        if (_ultimoElegido != '') ...[
          Text(
            '$_ultimoElegido fue elegido en la carta anterior',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white70, fontSize: 13),
          ),
          const SizedBox(height: 16),
        ],
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: _saltarCarta,
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color(0xFFD1B3FF),
                  side: const BorderSide(color: Color(0xFF7B2CBF)),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: const Text('Saltar carta'),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextButton(
                onPressed: _reiniciar,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.grey,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: const Text('Reiniciar'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}