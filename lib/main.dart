
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/routes.dart';

void main() => runApp(const TutoFlutterApp());

class TutoFlutterApp extends StatelessWidget {
  const TutoFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'sans-serif',
      ),
    );
  }
}

// --- NUEVA PALETA DE COLORES ---
// He cambiado el azul por un verde esmeralda moderno
const Color primaryButtonColor = Color(0xFF2ECC71); 
const Color secondaryButtonBorder = Color(0xFF34495E); // Un gris azulado oscuro para el borde
const Color fieldBorder = Color(0xFFDBDBDB);
const Color textGrey = Color(0xFF707070);

// ==========================================/
// 1. PANTALLA DE BIENVENIDA (CENTRAL)
// ==========================================/
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text("Welcome", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                  const SizedBox(height: 20),
                  Text(
                    "Slash Flutter provides extraordinary flutter\ntutorials. Do Subscribe!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                ],
              ),
              Image.network(
                'https://raw.githubusercontent.com/joelDB7/mis-imagenes/refs/heads/main/loglog.png',
                height: 300,
              ),
              Column(
                children: <Widget>[
                  // Botón Login (Borde Oscuro)
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => context.go('/login'),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: secondaryButtonBorder, width: 2),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text("Login", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: secondaryButtonBorder)),
                  ),
                  const SizedBox(height: 20),
                  // Botón Sign Up (Verde Esmeralda)
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => context.go('/signup'),
                    color: primaryButtonColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: const Text("Sign up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ==========================================/
// 2. PANTALLA DE LOGIN (DERECHA)
// ==========================================/
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => context.go('/'),
          icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              const Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text("Login to your account", style: TextStyle(fontSize: 15, color: textGrey)),
              const SizedBox(height: 30),
              const InputFormField(label: "Email"),
              const InputFormField(label: "Password", obscureText: true),
              const SizedBox(height: 10),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () => context.go('/'),
                color: primaryButtonColor,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: const Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Don't have an account?"),
                  GestureDetector(
                    onTap: () => context.go('/signup'),
                    child: const Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: primaryButtonColor)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Image.network(
                'https://raw.githubusercontent.com/joelDB7/mis-imagenes/refs/heads/main/logauuu.jfif',
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==========================================/
// 3. PANTALLA DE SIGN UP (IZQUIERDA)
// ==========================================/
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => context.go('/'),
          icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              const Text("Sign up", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text("Create an account, It's free", style: TextStyle(fontSize: 15, color: textGrey)),
              const SizedBox(height: 30),
              const InputFormField(label: "Username"),
              const InputFormField(label: "Email"),
              const InputFormField(label: "Password", obscureText: true),
              const InputFormField(label: "Confirm Password", obscureText: true),
              const SizedBox(height: 20),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed: () => context.go('/'),
                color: primaryButtonColor,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: const Text("Sign up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Already have an account?"),
                  GestureDetector(
                    onTap: () => context.go('/login'),
                    child: const Text(" Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: primaryButtonColor)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

// --- WIDGET AUXILIAR PARA INPUTS ---
class InputFormField extends StatelessWidget {
  final String label;
  final bool obscureText;

  const InputFormField({
    super.key,
    required this.label,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87)),
        const SizedBox(height: 5),
        TextField(
          obscureText: obscureText,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: fieldBorder)),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primaryButtonColor)),
            border: OutlineInputBorder(borderSide: BorderSide(color: fieldBorder)),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
