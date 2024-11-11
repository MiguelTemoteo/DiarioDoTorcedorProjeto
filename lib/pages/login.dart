import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aula_913/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                Text(
                  'Diário do Torcedor\n Login',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: const Color(0xFF388E3C),
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 16),
                const SizedBox(height: 32),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || !value.contains("@")) {
                      return "Você precisa digitar um e-mail válido!";
                    }
                    return null;
                  },
                  decoration: buildInputDecoration('E-mail'),
                  cursorColor: const Color(0xFF388E3C),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  controller: senhaController,
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return "Você precisa digitar uma senha válida!";
                    }
                    return null;
                  },
                  decoration: buildInputDecoration('Senha'),
                  cursorColor: const Color(0xFF388E3C), //
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      String email = emailController.text;
                      String senha = senhaController.text;

                      if (email == 'usuario@gmail.com' && senha == 'senha123') {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      } else {
                        print('Usuário e/ou Senha incorreto(s)!');
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4CAF50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Login',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration(String label) {
    return InputDecoration(
      label: Text(label),
      floatingLabelStyle: GoogleFonts.montserrat(
        color: const Color(0xFF388E3C),
        fontWeight: FontWeight.w600,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          width: 2,
          color: Color(0xFF388E3C),
        ),
      ),
    );
  }
}