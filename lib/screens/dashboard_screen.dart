import 'package:find_movie/auto_route.gr.dart';
import 'package:find_movie/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Welcome to Find Movie!",
                style: TextStyle(color: AppColors.appColor, fontSize: 35),
              ),
              const SizedBox(height: 50),
              const Text(
                "Cieszę się, że jesteś tutaj. "
                "Nasza aplikacja została stworzona specjalnie dla osób, które szukają idealnego filmu na wieczór. "
                "Niezależnie od tego, czy jesteś fanem akcji, romansów, czy kochasz kino grozy, nasza aplikacja pomoże Ci znaleźć film, który idealnie trafi w Twój gust.",
                style: TextStyle(color: AppColors.appColor, fontSize: 25),
              ),
              const SizedBox(height: 300), // Adjust the space as needed
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.router.push(const LoginScreenRoute());
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFF251605),
                        backgroundColor: AppColors.appColor,
                        fixedSize: const Size(170, 50)),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'ZALOGUJ SIĘ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.router.push(const RegisterScreenRoute());
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFF251605),
                        backgroundColor: AppColors.appColor,
                        fixedSize: const Size(200, 50)),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'ZAREJESTRUJ SIĘ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
