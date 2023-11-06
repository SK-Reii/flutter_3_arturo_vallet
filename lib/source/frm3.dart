import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class MyForm3 extends StatefulWidget 
{
  const MyForm3({Key? key}) : super(key: key);

  @override
  State<MyForm3> createState() 
  {
    return _MyForm3();
  }
}

class _MyForm3 extends State<MyForm3> 
{
  final _formKey = GlobalKey<FormBuilderState>();

  @override
    Widget build(BuildContext context) {
      return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FormBuilder
            (
              key: _formKey,
              child: Column
              (
                children: <Widget>
                [
                  FormBuilderCheckbox(name: "Animales", title: Text("Animales")),   
                  FormBuilderCheckbox(name: "Juegos", title: Text("Juegos")),   
                  FormBuilderCheckbox(name: "Moda", title: Text("Moda")),      
                  FormBuilderCheckbox(name: "Nuevas tecnologias", title: Text("Nuevas tecnologias")),   
                  FormBuilderCheckbox(name: "Estudios", title: Text("Estudios")),   
                  FormBuilderCheckbox(name: "Musica", title: Text("Muscica")),       
                  ElevatedButton
                  (
                    onPressed: () 
                    {
                      Navigator.of(context).pop();
                    },
                    child: Text('Enviar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }