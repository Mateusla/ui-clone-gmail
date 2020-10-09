import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  FocusNode foco;

  void setFocus() async {
    await Future.delayed(Duration(milliseconds: 400));
    FocusScope.of(context).requestFocus(foco);
  }

  @override
  void initState() {
    super.initState();
    foco = FocusNode();
    setFocus();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark
    ));
    return Hero(
      tag: '123',
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            titleSpacing: 1,
            toolbarHeight: 65,
            title: Row(
              children: [
                Expanded(
                  flex: 20,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Material(
                      clipBehavior: Clip.antiAlias,
                      type: MaterialType.transparency,
                      shape: CircleBorder(),
                      child: IconButton(
                        color: Colors.black,
                        icon: Icon(Icons.arrow_back),
                        onPressed: () => Navigator.of(context).pop()
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 60,
                  child: TextField(
                    focusNode: foco,
                    decoration: InputDecoration(
                      hintText: 'Pesquisar no e-mail',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 20,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.mic,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                )
              ],
            )
          )
        ),
      ),
    );
  }
}
