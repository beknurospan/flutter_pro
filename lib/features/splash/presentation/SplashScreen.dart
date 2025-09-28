import 'package:flutter/material.dart';
import 'package:flutter_pro/features/splash/presentation/widgets/InfoRow.dart';
import 'package:flutter_pro/features/splash/presentation/widgets/InfoSvgRow.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF12AA73), Color(0xFF135B46)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Smartr",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: 200,
                height: 211,
                child: Image.asset(
                  "assets/images/signup.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 24),

              const Text(
                "Fresh look, same login.",
                style: TextStyle(
                  color: Color(0xFFF4F4F4),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 32),

              const InfoSvgRow(
                assetPath: "assets/icons/sync.svg",
                text: "SmartRecruiters candidate portal is now Smartr.",
              ),
              const SizedBox(height: 16),
              const InfoRow(
                icon: Icons.login,
                text: "Enter the same login info used for your SmartrProfile",
              ),
              const SizedBox(height: 16),
              const InfoRow(
                icon: Icons.refresh,
                text: "If login details were saved, you may need to re-save.",
              ),
              const SizedBox(height: 32),

              const Text(
                "Why Smartr? Read here",
                style: TextStyle(
                  color: Colors.white70,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFBFDBD1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 16,
                  ),
                ),
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(
                    color: Color(0xFF135B46),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
