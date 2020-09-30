import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Página 1'),
      ),
      body: PageView(
        controller: null,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text(
                  'Páginas',
                  style: TextStyle(fontSize: 30),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.first_page),
              title: Text('Página 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.last_page),
              title: Text('Página 3'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
