import 'package:drawer/favourites_page.dart';
import 'package:drawer/notifications_page.dart';
import 'package:drawer/people_page.dart';
import 'package:drawer/plugins_page.dart';
import 'package:drawer/update_page.dart';
import 'package:drawer/user_page.dart';
import 'package:drawer/workflow_page.dart';
import 'package:flutter/material.dart';

class HomaPage extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);
  //const HomaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name = 'Aurona';
    final email = 'aurona@gmail.com';
    final urlImage =
        'https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=772&q=80';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Drawer",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
          child: Material(
        color: Colors.blue,
        child: ListView(
          padding: Padding,
          children: [
            buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          UserPage(name: name, urlImage: urlImage),
                    ))),
            SizedBox(
              height: 48,
            ),
            buildMenuItem(
              text: 'People',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Favourites',
              icon: Icons.favorite_border,
              onClicked: () => selectedItem(context, 1),
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Workflow',
              icon: Icons.workspaces_outline,
              onClicked: () => selectedItem(context, 2),
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Update',
              icon: Icons.update,
              onClicked: () => selectedItem(context, 3),
            ),
            SizedBox(
              height: 16,
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              height: 24,
            ),
            buildMenuItem(
              text: 'Plugins',
              icon: Icons.account_tree_rounded,
              onClicked: () => selectedItem(context, 4),
            ),
            SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Notifications',
              icon: Icons.notifications_outlined,
              onClicked: () => selectedItem(context, 5),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      )),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: Padding.add(
            EdgeInsets.symmetric(vertical: 40),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(urlImage),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavouritesPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WorkflowPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UpdatePage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PluginsPage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NotificationsPage(),
        ));
        break;
    }
  }
}
