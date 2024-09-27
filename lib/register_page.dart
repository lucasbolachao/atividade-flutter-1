import 'package:flutter/material.dart';



class RegisterPage extends StatefulWidget {

  @override

  _RegisterPageState createState() => _RegisterPageState();

}



class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController objetivoController = TextEditingController();

  final TextEditingController destinoController = TextEditingController();

  final TextEditingController orcamentoController = TextEditingController();

  final TextEditingController checklistController = TextEditingController();



  // Lista de viagens (pode ser substituído por uma solução de armazenamento no futuro)

  List<Map<String, dynamic>> viagens = [];



  // Adicionar viagem

  void adicionarViagem() {

    setState(() {

      viagens.add({

        'objetivo': objetivoController.text,

        'destino': destinoController.text,

        'orcamento': orcamentoController.text,

        'checklist': checklistController.text,

      });



      // Limpar os campos após o registro

      objetivoController.clear();

      destinoController.clear();

      orcamentoController.clear();

      checklistController.clear();

    });

  }



  // Remover viagem

  void removerViagem(int index) {

    setState(() {

      viagens.removeAt(index);

    });

  }



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Registrar Viagem'),

      ),

      body: Padding(

        padding: const EdgeInsets.all(16.0),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            TextField(

              controller: objetivoController,

              decoration: InputDecoration(labelText: 'Objetivo da Viagem'),

            ),

            TextField(

              controller: destinoController,

              decoration: InputDecoration(labelText: 'Destino'),

            ),

            TextField(

              controller: orcamentoController,

              decoration: InputDecoration(labelText: 'Orçamento'),

              keyboardType: TextInputType.number,

            ),

            TextField(

              controller: checklistController,

              decoration: InputDecoration(labelText: 'Checklist de Atividades'),

            ),

            SizedBox(height: 16),



            // Botão para registrar a viagem

            ElevatedButton(

              onPressed: adicionarViagem,

              child: Text('Registrar Viagem'),

            ),

            SizedBox(height: 16),



            // Exibir lista de viagens registradas

            Expanded(

              child: ListView.builder(

                itemCount: viagens.length,

                itemBuilder: (context, index) {

                  final viagem = viagens[index];

                  return Card(

                    margin: EdgeInsets.symmetric(vertical: 8),

                    child: ListTile(

                      title: Text('Destino: ${viagem['destino']}'),

                      subtitle: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Text('Objetivo: ${viagem['objetivo']}'),

                          Text('Orçamento: ${viagem['orcamento']}'),

                          Text('Checklist: ${viagem['checklist']}'),

                        ],

                      ),

                      trailing: IconButton(

                        icon: Icon(Icons.delete, color: Colors.red),

                        onPressed: () => removerViagem(index),

                      ),

                    ),

                  );

                },

              ),

            ),

          ],

        ),

      ),

    );

  }

}

