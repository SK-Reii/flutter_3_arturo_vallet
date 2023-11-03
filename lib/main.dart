import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Recuperar el valor d\'un camp de text',
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget{
  const MyCustomForm({super.key});
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void alertDialog(BuildContext context){
    showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(myController.text),
                actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Cierra el AlertDialog cuando se presiona este botón.
                        Navigator.of(context).pop();
                      },
                      child: Text('Cerrar'),
                    ),
                  ],
              );
            }
          );
  }

  void simpleDialog(BuildContext context){
    showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(myController.text),
              );
            }
          );
  }

  void showSnackBar(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(myController.text),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Tanca',
          onPressed: () {
            // Code to execute.
          },
        ),
      ),
    );
  }

  void showModalButtonSheet(BuildContext context){
   
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(myController.text),
                      ElevatedButton(
                        child: const Text('Tanca'),
                        onPressed: () => Navigator.pop(context),
                      )
                    ],
                  ),
                ),
              );
            },
          );
          
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar el valor d\'un camp de text'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              alertDialog(context);
            },
            tooltip: 'Mostrar el valor del camp de text',
            child: const Icon(Icons.text_fields),
            backgroundColor: Colors.green,
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              showSnackBar(context);
            },
            tooltip: 'Mostrar snackBar',
            child: const Icon(Icons.settings_backup_restore),
            backgroundColor: Colors.purple,
          ),
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              showModalButtonSheet(context);
            },
            tooltip: 'Mostrar ModalButtonSheet',
            child: const Icon(Icons.abc_outlined),
            backgroundColor: Colors.pink,
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
            simpleDialog(context);
          },
          tooltip: 'Mostrar el SimpleDialog',
          child: const Icon(Icons.text_format_rounded),
                            backgroundColor: Colors.yellow,
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              myController.clear();
            },
            tooltip: 'Netejar el camp de text',
            child: const Icon(Icons.clear),
          ),
        ],
      )
    );
  }
}
