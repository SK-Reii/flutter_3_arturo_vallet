import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_3_arturo_vallet/code_page.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'source/frm1.dart';
import 'source/frm2.dart';
import 'source/frm3.dart';
import 'source/frm4.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget 
{
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) 
  {
    return const MaterialApp
    (
      title: 'Arturo Vallet S2AM',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: 
      [
        FormBuilderLocalizations.delegate,
        ...GlobalMaterialLocalizations.delegates,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: FormBuilderLocalizations.supportedLocales,
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget 
{
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return CodePage
    (
      title: 'Formularios',
      child: ListView
      (
        children: <Widget>
        [
          ListTile
          (
            title: const Text('Form 1'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () 
            {
              Navigator.of(context).push
              (
                MaterialPageRoute
                (
                  builder: (context) 
                  {
                    return const CodePage
                    (
                      title: 'Register',
                      child: MyForm1(),
                    );
                  },
                ),
              );
            },
          ),ListTile
          (
            title: const Text('Form 2'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () 
            {
              Navigator.of(context).push
              (
                MaterialPageRoute
                (
                  builder: (context) 
                  {
                    return const CodePage
                    (
                      title: 'Log In',
                      child: MyForm2(),
                    );
                  },
                ),
              );
            },
          ),ListTile
          (
            title: const Text('Form 3'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () 
            {
              Navigator.of(context).push
              (
                MaterialPageRoute
                (
                  builder: (context) 
                  {
                    return const CodePage
                    (
                      title: 'Aspectos de interes',
                      child: MyForm3(),
                    );
                  },
                ),
              );
            },
          ),ListTile
          (
            title: const Text('Form 4'),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () 
            {
              Navigator.of(context).push
              (
                MaterialPageRoute
                (
                  builder: (context) 
                  {
                    return const CodePage
                    (
                      title: 'Encusta de satisfaccion',
                      child: MyForm4(),
                    );
                  },
                ),
              );
            },
          ),]
          ),
          );
          }
          }