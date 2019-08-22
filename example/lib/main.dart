import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_plugin_drawer/flutter_plugin_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(backgroundColor: Colors.white),
        home: Scaffold(resizeToAvoidBottomPadding: false, body: DrawerContainer()));
  }
}

class DrawerContainer extends StatefulWidget {
  @override
  _DrawerContainerState createState() => _DrawerContainerState();
}

class _DrawerContainerState extends State<DrawerContainer> {
  @override
  Widget build(BuildContext context) {
    var screenH = MediaQuery.of(context).size.height;

    return Container(
      child: FlutterPluginDrawer(
          body: Container(
            color: Colors.black12,
            child: Align(
              child: Text('触摸下方抽屉向上移动'),
            ),
          ),
          dragContainer: DragContainer(
              drawer: Container(
                child: OverscrollNotificationWidget(
                  child: Column(
                      children: <Widget>[
                        Container(
                          height: 6.0,
                          width: 45.0,
                          margin: const EdgeInsets.only(top: 10.0, bottom: 10),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 214, 215, 218),
                              borderRadius:
                              BorderRadius.all(const Radius.circular(5.0))),
                        ),
                        Container(
                          height: screenH * 0.8 - 26,
                          child: ListView(
                            children: <Widget>[
                              Container(
                                color: Colors.red,
                                height: 300,
                              ),
                              Container(
                                color: Colors.blue,
                                height: 300,
                              ),
                              Container(
                                color: Colors.lime,
                                height: 300,
                              )
                            ],
                          ),
                        )
                      ]
                  ),
                ),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 244, 248),
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0))),
              ),
              defaultShowHeight: screenH * 0.1,
              height: screenH * 0.8)),
    );
  }
}
