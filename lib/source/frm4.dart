import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class MyForm4 extends StatefulWidget 
{
  const MyForm4({Key? key}) : super(key: key);

  @override
  State<MyForm4> createState() 
  {
    return _MyForm4();
  }
}

class _MyForm4 extends State<MyForm4> 
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
                  FormBuilderChoiceChip(
                    name: 'Satisfaccion',
                    decoration: InputDecoration(labelText: 'Puntua tu satisfaccion con el servicio:', border: OutlineInputBorder()),
                    labelPadding: EdgeInsets.all(3),
                    spacing: 10,
                    options: [
                      FormBuilderChipOption(value: "Baja"),
                      FormBuilderChipOption(value: "Pobre"),
                      FormBuilderChipOption(value: "Media"),
                      FormBuilderChipOption(value: "Deseable"),
                      FormBuilderChipOption(value: "Alta"),
                    ],
                  ),SizedBox(height: 16.0),
                   FormBuilderDropdown
                  (
                    name: 'recomendarias',
                    decoration: InputDecoration(labelText: 'Recomendarias el producto a un amigo?'),
                    validator: FormBuilderValidators.required(),
                    items: ['Si', 'No', 'Tal vez', 'No lo se, no lo he probado']
                    .map((recomendarias) => DropdownMenuItem
                    (
                      value: recomendarias,
                      child: Text('$recomendarias'),
                    ))
                    .toList(),
                  ),SizedBox(height: 16.0),
                  FormBuilderTextField(name: 'Puntos a mejorar',decoration: InputDecoration(labelText: 'Puntos a mejorar'), validator: FormBuilderValidators.required(),),
                  SizedBox(height: 16.0),
                  FormBuilderSlider(name: 'Puntuacion',decoration: InputDecoration(labelText: 'Puntuacion del tecnico:'), min: 0.0, max: 10.0, initialValue: 1.0, divisions: 10, activeColor: Colors.red, inactiveColor: Colors.pink,),
                  SizedBox(height: 16.0),
                  FormBuilderDateTimePicker
                  (
                    name: 'fecha_encuesta',
                    inputType: InputType.date,
                    decoration: InputDecoration(labelText: 'Fecha de la encuesta'),
                    validator: FormBuilderValidators.required(),
                  ),
                  SizedBox(height: 16.0),
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