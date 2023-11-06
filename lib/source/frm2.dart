import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class MyForm2 extends StatefulWidget 
{
  const MyForm2({Key? key}) : super(key: key);

  @override
  State<MyForm2> createState() 
  {
    return _MyForm2();
  }
}

class _MyForm2 extends State<MyForm2> 
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
                  FormBuilderTextField
                  (
                    name: 'email',
                    decoration: InputDecoration(labelText: 'Correo electrónico'),
                    validator: FormBuilderValidators.email(),
                  ),
                  FormBuilderTextField
                  (
                    name: 'password',
                    decoration: InputDecoration(labelText: 'Contraseña'),
                    obscureText: true,
                    validator: FormBuilderValidators.compose
                    (
                      [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.minLength(6),
                        FormBuilderValidators.maxLength(15),
                      ],
                    ),
                  ),           
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