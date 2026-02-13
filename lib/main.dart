import 'package:flutter/material.dart';

void main() => runApp(const AppFloreria());

class AppFloreria extends StatelessWidget {
  const AppFloreria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FloreriaFilaColumna(),
      title: 'Floreria',
    );
  }
}

class FloreriaFilaColumna extends StatelessWidget {
  const FloreriaFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Floreria",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF4CAF50),
        actions: const [
          Icon(Icons.shopping_cart, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Primera Fila
            Expanded(
              child: Row(
                children: [
                  _crearContenedorGrande(
                      const Color(0xFFFFE082), "Girasol", Icons.local_florist),
                  _crearContenedorGrande(
                      const Color(0xFFFDD835), "Margarita", Icons.local_florist),
                ],
              ),
            ),

            // Segunda Fila
            Expanded(
              child: Row(
                children: [
                  _crearContenedorGrande(
                      const Color(0xFFF48FB1), "Tulipán", Icons.filter_vintage),
                  _crearContenedorGrande(
                      const Color(0xFFCE93D8), "Lavanda", Icons.spa),
                ],
              ),
            ),

            // Tercera Fila
            Expanded(
              child: Row(
                children: [
                  _crearContenedorGrande(
                      const Color(0xFF90CAF9), "Hortensia", Icons.public),
                  _crearContenedorGrande(
                      const Color(0xFFE57373), "Rosa", Icons.favorite),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearContenedorGrande(Color color, String nombreFlor, IconData icono) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icono,
              size: 50,
              color: Colors.black, // Color del ícono cambiado a negro
            ),
            const SizedBox(height: 10),
            Text(
              nombreFlor,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Color del texto cambiado a negro
              ),
            ),
          ],
        ),
      ),
    );
  }
}