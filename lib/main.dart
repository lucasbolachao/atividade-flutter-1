import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diário de Viagem',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF1c3166), // Cor primária do app
        scaffoldBackgroundColor: Colors.white, // Cor de fundo padrão
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1c3166), // Cor da AppBar
          titleTextStyle: TextStyle(
            color: Colors.white, // Cor branca para o texto da AppBar
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF00a9d4), // Cor dos botões
            foregroundColor: Colors.white, // Cor do texto dos botões
            textStyle: TextStyle(fontSize: 18),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Color(0xFF240047), // Cor de texto
          ),
          titleLarge: TextStyle(
            color: Color(0xFF40ffdc), // Cor de títulos
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE0F7FA), // Cor mais clara no topo
              Color(0xFF00a9d4), // Cor mais escura na parte inferior
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Título grande
              Text(
                'Diário de Viagem',
                style: TextStyle(
                  fontSize: 32, // Tamanho da fonte
                  fontWeight: FontWeight.bold, // Negrito
                  color: Color(0xFF1c3166), // Cor do texto
                ),
              ),
              SizedBox(height: 32), // Espaçamento abaixo do título

              // Botão de Login
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()), // Chama a tela de Login
                  );
                },
                child: Text('Login'),
              ),
              SizedBox(height: 16),

              // Botão de Registrar
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()), // Chama a tela de Registro
                  );
                },
                child: Text('Registrar'),
              ),
              SizedBox(height: 16),

              // Terceiro botão (você pode definir a ação depois)
              ElevatedButton(
                onPressed: () {
                  // Ação para o terceiro botão
                },
                child: Text('Outro'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
