import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ui_clone_gmail/controllers/menu.component.controller.dart';

class MenuComponent extends StatelessWidget {
  List<MenuItem> principal = [
    MenuItem(label: 'Principal', controller: MenuComponentController(), icon: Icons.article, trail: '+99'),
    MenuItem(label: 'Social', controller: MenuComponentController(), icon: Icons.group_outlined),
    MenuItem(label: 'Promoção', controller: MenuComponentController(), icon: Icons.local_offer_outlined),
  ];
  List<MenuItem> marcadores = [
    MenuItem(label: 'Com estrela', controller: MenuComponentController(), icon: Icons.star_border),
    MenuItem(label: 'Adiados', icon: Icons.access_time, controller: MenuComponentController(), trail: '40'),
    MenuItem(label: 'Importante', icon: Icons.label_important_outline, controller: MenuComponentController()),
    MenuItem(label: 'Enviados', icon: Icons.send, controller: MenuComponentController()),
    MenuItem(label: 'Rascunhos', icon: Icons.insert_drive_file_outlined, controller: MenuComponentController(), trail: '9'),
    MenuItem(label: 'Todos os e-mails', icon: Icons.mail_outline, controller: MenuComponentController(), trail: '+99'),
    MenuItem(label: 'Spam', icon: Icons.report_gmailerrorred_rounded, controller: MenuComponentController(), trail: '60'),
    MenuItem(label: 'Lixeira', icon: Icons.delete_outline, controller: MenuComponentController(), trail: '5'),
  ];
  List<MenuItem> apps = [
    MenuItem(label: 'Agenda', icon: Icons.calendar_today, controller: MenuComponentController()),
    MenuItem(label: 'Contatos', icon: Icons.account_circle_outlined, controller: MenuComponentController()),
  ];
  List<MenuItem> confAndFeedback = [
    MenuItem(label: 'Configurações', icon: Icons.settings, controller: MenuComponentController()),
    MenuItem(label: 'Ajuda e Feedback', icon: Icons.help_outline, controller: MenuComponentController()),
  ];

  List<Widget> principais({@required List<MenuItem> itens}){
    List<Widget> widgets = [];
    for (int i = 0; i < itens.length; i++)
      widgets.add(
        Observer(builder: (_) {
          return ListTile(
            dense: true,
            tileColor: itens[i].controller.isActive ? 
                Colors.red[50] : null,
            leading: Icon(
              itens[i].icon,
              color: itens[i].controller.isActive ? 
                Colors.red : Colors.grey[700]
            ),
            title: Text(
              '${itens[i].label}',
              style: TextStyle(
                color: itens[i].controller.isActive ? 
                Colors.red : Colors.grey[700]
              ),
            ),
            trailing: itens[i].trail == null ? null
            : Text(
              itens[i].trail,
              style: TextStyle(
                color: itens[i].controller.isActive ? 
                Colors.red : Colors.grey[700]
              ),
            ),
            onTap: (){
              List<MenuItem> aux = [];
              aux.addAll(itens);
              aux.removeAt(i);
              for(int j=0; j<aux.length; j++){
                if(aux[j].controller.isActive)
                  aux[j].controller.changeIsActive();
              }
              itens[i].controller.changeIsActive();
            },
          );
        }
      )
    );

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scrollbar(
        thickness: 4,
        child: Container(
          margin: EdgeInsets.only(right: 8),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Gmail Clone',
                  style: TextStyle(color: Colors.red[600], fontSize: 18),
                ),
              ),
              ListTile(
                dense: true,
                leading: Icon(
                  Icons.my_library_books_rounded,
                  color: Colors.grey[700],
                ),
                title: Text(
                  'Todas as Cx. entrada',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(height: 8,),
              Column(
                children: principais(itens: principal),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'TODOS OS MARCADORES',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12
                  ),
                ),
              ),
              Column(
                children: principais(itens: marcadores),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'GOOGLE APPS',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 12
                  ),
                ),
              ),
              Column(
                children: principais(itens: apps),
              ),
              SizedBox(height: 8,),
              Column(
                children: principais(itens: confAndFeedback),
              ),
              SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  IconData icon;
  String label;
  String trail;
  MenuComponentController controller;

  MenuItem({this.icon, this.controller, this.label, this.trail});
}
