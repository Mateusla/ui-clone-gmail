import 'package:flutter/material.dart';
import 'package:ui_clone_gmail/components/email.item.component.dart';
import 'package:ui_clone_gmail/models/email.model.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => Future.delayed(Duration(seconds: 2)),
      backgroundColor: Colors.white,
      child: Scrollbar(
        thickness: 4,
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (_, i) => EmailItemComponent(
            email: EmailModel(
              remetente: 'José',
              titulo: 'Aproveite essa oportunidade.',
              mensagem: 'Agora é a hora de aprender a desenvolver',
              data: '10 de jan',
              fotoUrl: 'https://images.unsplash.com/photo-1530268729831-'
              '4b0b9e170218?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
            ),
          )
        )
      ),
    );
  }
}
