import 'package:flutter/material.dart';
import 'package:flutter_finance/constants/app_color.dart';
import 'package:flutter_finance/constants/app_image.dart';
import 'package:flutter_finance/features/sign-in/page.dart';
import 'package:flutter_finance/features/sign-up/page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    void _navigateToSignInPage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignInPage()),
      );
    }

    void _navigateToSignUpPage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUpPage()),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(AppColor.lightBlue), Color(AppColor.darkBlue)],
                ),
              ),
              child: Center(
                child: Image.asset(
                  AppImage.brazucaBrowsing,
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.4,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [
                      Color(AppColor.lightBlue),
                      Color(AppColor.darkBlue)
                    ],
                  ).createShader(bounds),
                  child: const Text(
                    'Bem-vindo ao Finstein',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'O Finstein é um aplicativo de finanças pessoais que te ajuda a organizar suas finanças e a alcançar seus objetivos financeiros.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: _navigateToSignUpPage,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(screenWidth * 0.9, 50),
                    backgroundColor: const Color(AppColor.darkBlue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'Iniciar',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: _navigateToSignInPage,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Já tem uma conta? ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Entrar',
                          style: TextStyle(
                            color: Color(AppColor.darkBlue),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
