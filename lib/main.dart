import 'package:flutter/material.dart';

void main() {
  runApp(const ModusApp());
}

// COLORES
const Color turquesa = Color(0xFF008C91);
const Color azul = Color(0xFF142D4E);
const Color fondo = Color(0xFFF7F9FC);

// DATOS VACÍOS
final List sugerencias = [];
final List incidencias = [];

class ModusApp extends StatelessWidget {
  const ModusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MODUS',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: fondo,
        colorScheme: ColorScheme.fromSeed(
          seedColor: turquesa,
        ),
      ),
      home: const LoginPage(),
    );
  }
}

// BOTÓN PRINCIPAL
Widget boton(String texto, VoidCallback accion) {
  return SizedBox(
    width: double.infinity,
    child: FilledButton(
      onPressed: accion,
      style: FilledButton.styleFrom(
        backgroundColor: turquesa,
        padding: const EdgeInsets.all(16),
      ),
      child: Text(texto),
    ),
  );
}

// INICIO DE SESIÓN
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                const Icon(
                  Icons.school_outlined,
                  size: 100,
                  color: turquesa,
                ),
                const SizedBox(height: 10),
                const Text(
                  'MODUS',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: azul,
                  ),
                ),
                const Text(
                  'Mejora tu centro, entre todos',
                  style: TextStyle(color: azul),
                ),
                const SizedBox(height: 55),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo electrónico',
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 25),
                boton('Iniciar sesión', () {}),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegistroPage(),
                      ),
                    );
                  },
                  child: const Text('Crear cuenta'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// PANTALLA DE REGISTRO PROVISIONAL
class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crear cuenta')),
      body: const Center(
        child: Text('Pantalla de registro'),
      ),
    );
  }
}