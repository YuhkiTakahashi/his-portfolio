import 'package:flutter/material.dart';
import 'package:yuhkitakahashi/widgets/navigation_bar/navigation_bar.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static const String _title = 'Yuhki Takahashi and his Portfolio';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/links': (context) => LinksPage(),
        '/admin': (context) => AdminPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        NavigationBar(),
        Text('Home Page'),
        TextButton(
          onPressed: () {Navigator.pushNamed(context, '/links');},
          child:Text('Links'),
        ),
        TextButton(
          onPressed: () {Navigator.pushNamed(context, '/admin');},
          child:Text('Admin'),
        )
      ],),
    );
  }
}

class LinksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        NavigationBar(),
        Text('Links'),
        TextButton(
          onPressed: () {Navigator.maybePop(context);},
          child:Text('Home'),
        )
      ],),
    );
  }
}

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Administrator\'s Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Administrator\'s Page'),
        ),
        body: Center(
          child: Row(
            children: [
              Text('Password')
              // TextField()
            ],
          ),
        )
      )
    );
  }
}