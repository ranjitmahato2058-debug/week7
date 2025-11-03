import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    // return Center(child: Text('Build section will go here'));
    return Scaffold(
      appBar: AppBar(title: Text('WhatsApp'),),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.circle),
            title: Text('sydney student support'),
            subtitle: Text('This is a group of student who discuss about new project in future', maxLines: 1, overflow: TextOverflow.ellipsis,),
            trailing: Icon(Icons.favorite),
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('You have clicked....'),
                  duration: Duration(seconds: 3),)

              );

            },
            ),

            ListTile(
            leading: Icon(Icons.circle),
            title: Text('Melbourne student support'),
            subtitle: Text('This is a group of student who discuss about new project in future', maxLines: 1, overflow: TextOverflow.ellipsis,),
            trailing: Icon(Icons.favorite),
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('You have clicked....'),
                  duration: Duration(seconds: 3),)
              );
            },
            ),
        ],
      ),
    );
    }
}