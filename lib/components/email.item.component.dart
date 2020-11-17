import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ui_clone_gmail/controllers/email.item.component.controller.dart';
import 'package:ui_clone_gmail/models/email.model.dart';

class EmailItemComponent extends StatelessWidget {
  
  EmailModel _email;

  EmailItemComponentController _controller;

  EmailItemComponent({@required EmailModel email}){
    this._email = email;
    this._controller = EmailItemComponentController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        isThreeLine: true,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            '${_email.fotoUrl}'
          ),
        ),
        title: Row(
          children: [
            Expanded(
              flex: 80,
              child: Text(
                '${_email.remetente}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[600]
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: Text(
                '${_email.data}',
                maxLines: 1,
                textAlign: TextAlign.right,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12
                ),
              ),
            ),
          ]
        ),
        subtitle: Row(
          children: [
            Expanded(
              flex: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${_email.titulo}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    '${_email.mensagem}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: GestureDetector(
                onTap: _controller.changeFavEmail,
                child: Observer(
                  builder: (_) => Icon(
                    _controller.favEmail ? Icons.star : Icons.star_border,
                    color: _controller.favEmail ? Colors.amber : Colors.grey[600],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
