import 'package:flutter/material.dart';



class LoginPage extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    final TextEditingController usernameController = TextEditingController();

    final TextEditingController passwordController = TextEditingController();



    return Scaffold(

      appBar: AppBar(

        title: Text('Login'),

      ),

      body: Padding(

        padding: const EdgeInsets.all(16.0),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            TextField(

              controller: usernameController,

              decoration: InputDecoration(labelText: 'Usuário'),

            ),

            TextField(

              controller: passwordController,

              decoration: InputDecoration(labelText: 'Senha'),

              obscureText: true,

            ),

            SizedBox(height: 16),

            ElevatedButton(

              onPressed: () {

                String username = usernameController.text;

                String password = passwordController.text;



                if (username == "admin" && password == "1234") {

                  ScaffoldMessenger.of(context).showSnackBar(

                    SnackBar(content: Text('Login bem-sucedido')),

                  );

                } else {

                  ScaffoldMessenger.of(context).showSnackBar(

                    SnackBar(content: Text('Credenciais inválidas')),

                  );

                }

              },

              child: Text('Entrar'),

            ),

          ],

        ),

      ),

    );

  }

}
