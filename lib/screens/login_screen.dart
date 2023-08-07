import 'package:find_movie/BLoC/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
      ),
      body: BlocProvider(
        create: (context) => LoginBloc(),
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            state.maybeWhen(
              failure: (message) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(message)));
              },
              success: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Email/'),
                    onChanged: (value) => context
                        .read<LoginBloc>()
                        .add(LoginEvent.emailChanged(value)),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    onChanged: (value) => context
                        .read<LoginBloc>()
                        .add(LoginEvent.passwordChanged(value)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context
                            .read<LoginBloc>()
                            .add(const LoginEvent.submitted());
                      },
                      child: const Text('Log In'),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
