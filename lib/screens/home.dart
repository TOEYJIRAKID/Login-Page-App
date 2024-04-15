import 'package:crud/models/config.dart';
import 'package:crud/screens/UserForm.dart';
import 'package:crud/screens/userinfo.dart';
import 'package:flutter/material.dart';
import 'package:crud/main.dart';
import 'package:crud/models/users.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  static const routeName = "/";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget mainBody = Container();
  List<Users> _userList = [];

  Future<void> getUsers() async {
    var url = Uri.http(Configure.server, "users");
    var resp = await http.get(url);
    setState(() {
      _userList = usersFromJson(resp.body);
      mainBody = showUser();
    });
    return;
  }

  Future<void> removeUsers(user) async {
    var url = Uri.http(Configure.server, "users/${user.id}");
    var resp = await http.delete(url);
    print(resp.body);
    return;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Users user = Configure.login;
    if (user.id != null) {
      getUsers();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const SideMenu(),
      body: mainBody,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          String result = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => UserFrom()));
          if (result == "refresh") {
            getUsers();
          }
          ;
        },
        child: const Icon(Icons.person_add_alt_1),
      ),
    );
  }

  Widget showUser() {
    return ListView.builder(
      itemCount: _userList.length,
      itemBuilder: (context, index) {
        Users user = _userList[index];
        return Dismissible(
          key: UniqueKey(),
          direction: DismissDirection.endToStart,
          child: ListTile(
            title: Text("${user.fullname}"),
            subtitle: Text("${user.email}"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserInfo(),
                      settings: RouteSettings(arguments: user)));
            },
            trailing: IconButton(
              onPressed: () async {
                String result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserFrom(),
                        settings: RouteSettings(arguments: user)));
                if (result == "refresh") {
                  getUsers();
                }
                ;
              },
              icon: Icon(Icons.edit),
            ),
          ),
          onDismissed: (direction) {
            removeUsers(user);
          },
          background: Container(
            color: Colors.red,
            margin: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
