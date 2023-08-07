import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Welcome to Find Movie!",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text(
              "Here is where you will find the latest updates and news about the application. Stay tuned for more features!",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.router.pushNamed('/login'),
              child: const Text('Log In'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () => context.router.pushNamed('/register'),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
