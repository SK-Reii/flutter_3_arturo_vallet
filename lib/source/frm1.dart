import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class MyForm1 extends StatefulWidget 
{
  const MyForm1({Key? key}) : super(key: key);

  @override
  State<MyForm1> createState() 
  {
    return _MyForm1();
  }
}

class _MyForm1 extends State<MyForm1> 
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
                    name: 'nombre',
                    decoration: InputDecoration(labelText: 'Nombre'),
                    validator: FormBuilderValidators.required(),
                  ),
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
                  FormBuilderDateTimePicker
                  (
                    name: 'fecha_nacimiento',
                    inputType: InputType.date,
                    decoration: InputDecoration(labelText: 'Fecha nacimiento'),
                    validator: FormBuilderValidators.required(),
                  ),
                  FormBuilderDropdown
                  (
                    name: 'sexo',
                    decoration: InputDecoration(labelText: 'Sexo'),
                    validator: FormBuilderValidators.required(),
                    items: ['Masculino', 'Femenino', 'Otro']
                    .map((sexo) => DropdownMenuItem
                    (
                      value: sexo,
                      child: Text('$sexo'),
                    ))
                    .toList(),
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