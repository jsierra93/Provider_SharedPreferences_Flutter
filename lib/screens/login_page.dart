import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/provider.dart';
import 'package:provider_example/share_preferences.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    StorageUtil.inicializar();
    return Scaffold(
      appBar: AppBar(title: Text('provider - SharePreferences')),
      body: Container(
        width: double.infinity,
        color: Colors.black38,
        child: Column(
          children: <Widget>[
            Text(myProvider.mitexto +
                ' => Autenticado: ' +
                myProvider.isAutenticado.toString()),
            RaisedButton(
                child: Text('Login'),
                onPressed: () {
                  myProvider.mitexto = 'Provider';
                  myProvider.isAutenticado = true;
                  StorageUtil.putBool('isAutenticado', true);
                }),
            RaisedButton(
                child: Text('Log Out'),
                onPressed: () {
                  if (myProvider.isAutenticado) {
                    myProvider.mitexto = 'Provider';

                    myProvider.isAutenticado = false;
                    StorageUtil.putBool('isAutenticado', false);
                  }
                }),
            RaisedButton(
                child: Text('Preferences'),
                onPressed: () {
                  StorageUtil.putString('texto', 'Shared Prefereces');
                  myProvider.mitexto = StorageUtil.getString('texto');
                  myProvider.isAutenticado = StorageUtil.getBool('isAutenticado');
                }),
          ],
        ),
      ),
    );
  }
}
