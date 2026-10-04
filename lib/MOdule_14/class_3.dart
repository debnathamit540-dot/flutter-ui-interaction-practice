import 'package:flutter/material.dart';

import '../Module_12/module12_class1.dart';
import '../Module_12/module12_grid.dart';
import '../module11/module_11_clsss2.dart';

class Module14_class3 extends StatefulWidget {
  const Module14_class3({super.key});

  @override
  State<Module14_class3> createState() => _Module14_class3State();
}

class _Module14_class3State extends State<Module14_class3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabbar'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              color: Colors.green,
              child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.limeAccent,
                  borderRadius: BorderRadius.circular(18)
                ),

                  tabs: [
                    Tab(
                      icon: Icon(Icons.home),
                      text: 'Home',
                    ),Tab(
                      icon: Icon(Icons.favorite),
                      text: 'Favourite',
                    ),Tab(
                      icon: Icon(Icons.settings),
                      text: 'Settings',
                    ),
                  ]),
            ),
          ),

        ),
        body: TabBarView(children:[

          // Container(
          //   child: Center(child: Text('Home', style: TextStyle(fontSize: 25, color: Colors.white),)),
          //   decoration: BoxDecoration(
          //     color: Colors.indigo,
          //
          //   ),
          // ),
          // Container(
          //   child: Center(child: Text('Favourite', style: TextStyle(fontSize: 25, color: Colors.white),)),
          //   decoration: BoxDecoration(
          //     color: Colors.purple,
          //
          //   ),
          // ),
          // Container(
          //   child: Center(child: Text('Settings', style: TextStyle(fontSize: 25, color: Colors.white),)),
          //   decoration: BoxDecoration(
          //     color: Colors.deepOrange,
          //
          //   ),
          // ),


          Module11Clsss2(),
          Module12Class1(),
          Module12Grid(),

        ]),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://tse3.mm.bing.net/th/id/OIP.ctLCSX9vGeOzsUAtg36-lQHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3'),
                  ),
                  SizedBox(height: 5,),
                  Text('Taufiqur Omar',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                  Text('taufiquromar23@gmail.com',
                  style: TextStyle(fontSize: 14),),
                ],
              )
              ),
              ListTile(
                onTap: (){

                },
                title: Text('List Item - 1'),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                title: Text('List Item - 2'),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                title: Text('List Item - 3'),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                title: Text('List Item - 4'),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                title: Text('List Item - 5'),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                title: Text('List Item - 6'),
              ),
              Divider(),
              ListTile(
                onTap: (){

                },
                title: Text('List Item - 7'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
