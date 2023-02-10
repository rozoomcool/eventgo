import 'package:flutter/material.dart';
import 'components/image_tile.dart';
import 'components/textfield.dart';
import 'components/signin_button.dart';

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 90),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 30),
                Text(
                  'Войдите в ваш аккаунт.',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),
                TextFieldWidget(
                  controller: usernameController,
                  hintText: 'Username',
                  icon: const Icon(Icons.person),
                  obscureText: false,
                ),
                const SizedBox(height: 25),
                TextFieldWidget(
                  controller: passwordController,
                  hintText: 'Password',
                  icon: const Icon(Icons.lock_outline),
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0)
                      .copyWith(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Забыли пароль?',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SignButton(
                  text: 'Sign In',
                  onTap: signUserIn,
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2.0,
                          color: Colors.grey[300],
                        ),
                      ),
                      Text(
                        'Или зайти с помощью',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2.0,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ImageTile(imageUrl: 'assets/icons/google.png'),
                    SizedBox(
                      width: 10,
                    ),
                    ImageTile(imageUrl: 'assets/icons/facebook.png'),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Нет аккаунта?',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Зарегистрируйся!'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
