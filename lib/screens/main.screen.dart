import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ui_clone_gmail/components/menu.component.dart';
import 'package:ui_clone_gmail/controllers/main.screen.controller.dart';
import 'package:ui_clone_gmail/pages/principal.page.dart';

import 'search.screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MainScreenController controller;
  ScrollController scrollController;

  GlobalKey<ScaffoldState> scaffoldKey;

  void timer(bool scroll){
    Timer(Duration(milliseconds: 1), (){
      controller.changeVisibleAppBar(scroll);
    });
  }

  @override
  void initState() {
    super.initState();
    controller = MainScreenController();
    scrollController = scrollController;
    scaffoldKey = GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark
    ));
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      drawer: MenuComponent(),
      body: SafeArea(
        child: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (_, scroll){
            timer(!scroll);
            return [
              SliverAppBar(
                snap: true,
                floating: true,
                elevation: 0,
                toolbarHeight: 65,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                title: Hero(
                  tag: '123',
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 20,
                            child: Material(
                              clipBehavior: Clip.antiAlias,
                              type: MaterialType.transparency,
                              shape: CircleBorder(),
                              child: IconButton(
                                color: Colors.black,
                                icon: Icon(Icons.menu), 
                                onPressed: () => scaffoldKey.currentState.openDrawer(),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 60,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                  .push(
                                    PageRouteBuilder(
                                      barrierColor: Colors.black26,
                                      opaque: false,
                                      pageBuilder: (context, animation, secondaryAnimation) {
                                        return SearchScreen();
                                      },
                                      transitionsBuilder: (
                                        context,animation,secondaryAnimation,child) {
                                          return child;
                                      },
                                    )
                                  );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                child: Text(
                                  'Pesquisar no e-mail',
                                  style: TextStyle(
                                    color: Colors.grey[600]
                                  ),
                                ),
                              ),
                            )
                          ),
                          Expanded(
                            flex: 20,
                            child: IconButton(
                              icon: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1493666438817'
                                  '-866a91353ca9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1498&q=80'
                                ),
                              ), 
                              onPressed: null
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: PrincipalPage()
        ),  
      ),
      floatingActionButton: Observer(
        builder: (_) => controller.visibleAppBar ? FloatingActionButton.extended(
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.edit_outlined,
            color: Colors.red,
          ),
          label: Text(
            'Escrever',
            style: TextStyle(
              color: Colors.red
            ),
          ),
          onPressed: () => null
        ) : FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.edit_outlined,
            color: Colors.red,
          ),
          onPressed: () => null
        ),
      )
    );
  }
}
