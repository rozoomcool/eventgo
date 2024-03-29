import 'dart:convert';

import 'package:eventgo/Screens/login&registr/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'components/signin_button.dart';

class RegistrationPage extends StatelessWidget {
  final userNameController = TextEditingController();
  final userSurnameController = TextEditingController();
  final userNickNameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  void signUserUp() async {
    try {
      //URI запроса
      var url = Uri.parse("http://localhost:80/register");
      //Header запроса
      //content-type служит для задания кодировки сообщению
      //без него сервак не обработает запрос
      Map<String, String> headers = {'Content-Type': 'application/json'};
      //Тело запроса в json формате
      final msg = jsonEncode({
        "firstname": userNameController.text,
        "lastname": userSurnameController.text,
        "nickname": userNickNameController.text,
        "password": passwordController.text
      });
      //Сам запрос
      var response = await http.post(url, body: msg, headers: headers);
      //Ответ сервера на наш запрос
      //Статус код служит для обобщения ошибок(200 - все ок, 500 - ошибки сервера и тд)
      print('${response.statusCode}');
      //Тело ответа на наш запрос
      print('${response.body}');
    } catch (error) {
      print('$error');
    }
  }

  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 60),
                const Icon(
                  Icons.lock_open,
                  size: 80,
                ),
                const SizedBox(height: 30),
                Text(
                  'Создайте свой аккаунт.',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(height: 20),
                TextFieldWidget(
                  controller: userNameController,
                  hintText: 'Имя',
                  obscureText: false,
                  icon: const Icon(Icons.person),
                ),
                const SizedBox(height: 20),
                TextFieldWidget(
                  controller: userSurnameController,
                  hintText: 'Фамилия',
                  obscureText: false,
                  icon: const Icon(Icons.person_2),
                ),
                const SizedBox(height: 20),
                TextFieldWidget(
                  controller: userNickNameController,
                  hintText: 'Никнейм',
                  obscureText: false,
                  icon: const Icon(Icons.person_3),
                ),
                const SizedBox(height: 20),
                TextFieldWidget(
                  controller: emailController,
                  hintText: 'Почта',
                  obscureText: false,
                  icon: const Icon(Icons.email),
                ),
                const SizedBox(height: 20),
                TextFieldWidget(
                  controller: passwordController,
                  hintText: 'Пароль',
                  obscureText: true,
                  icon: const Icon(Icons.password),
                ),
                const SizedBox(height: 30),
                SignButton(
                  text: 'Sign Up',
                  onTap: signUserUp,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Уже есть аккаунт?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Войти',
                      ),
                    ),
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
