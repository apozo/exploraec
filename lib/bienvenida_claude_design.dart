import 'package:flutter/material.dart';

class BienvenidaScreenClaudeDesign extends StatelessWidget {
  const BienvenidaScreenClaudeDesign({super.key});

  static const _fuente = 'Plus Jakarta Sans';

  static const _fondo = Color(0xFFF7F9FB);
  static const _primario = Color(0xFF000000);
  static const _textoPrincipal = Color(0xFF191C1E);
  static const _textoSecundario = Color(0xFF45474C);
  static const _textoBoton = Color(0xFFFFFFFF);
  static const _acento = Color(0xFF006C4A);
  static const _superficieIcono = Color(0xFFFFFFFF);
  static const _bordeIcono = Color(0x4DC5C6CD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _fondo,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 96,
                      height: 96,
                      decoration: BoxDecoration(
                        color: _superficieIcono,
                        shape: BoxShape.circle,
                        border: Border.all(color: _bordeIcono),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x140F1A2C),
                            offset: Offset(0, 12),
                            blurRadius: 32,
                            spreadRadius: -8,
                          ),
                          BoxShadow(
                            color: Color(0x080F1A2C),
                            offset: Offset(0, 4),
                            blurRadius: 12,
                            spreadRadius: -2,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.explore_outlined,
                        size: 40,
                        color: _acento,
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'ExploraEC',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: _fuente,
                        fontSize: 36,
                        height: 40 / 36,
                        fontWeight: FontWeight.w800,
                        fontVariations: [FontVariation.weight(800)],
                        letterSpacing: -0.9,
                        color: _textoPrincipal,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Descubre lugares increíbles cerca de ti',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: _fuente,
                        fontSize: 16,
                        height: 24 / 16,
                        fontWeight: FontWeight.w400,
                        fontVariations: [FontVariation.weight(400)],
                        color: _textoSecundario,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _primario,
                    foregroundColor: _textoBoton,
                    elevation: 6,
                    shadowColor: const Color(0x40111C2E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    textStyle: const TextStyle(
                      fontFamily: _fuente,
                      fontSize: 15,
                      height: 20 / 15,
                      fontWeight: FontWeight.w700,
                      fontVariations: [FontVariation.weight(700)],
                      letterSpacing: 0.15,
                    ),
                  ),
                  child: const Text('Empezar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
