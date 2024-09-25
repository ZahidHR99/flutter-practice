import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.red),
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text("Alert !"),
            content: Text("Do you want to delete"),
            actions: [
              TextButton(
                  onPressed: () {
                    MySnackbar("Deleted Success", context);
                    Navigator.of(context).pop();
                  },
                  child: Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No")),
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(25),
      backgroundColor: Colors.red,
      foregroundColor: Colors.green,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Zahid App Bar"),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                MySnackbar("I am Edit", context);
              },
              icon: Icon(Icons.edit)),
          IconButton(
              onPressed: () {
                MySnackbar("I am Delete", context);
              },
              icon: Icon(Icons.delete)),
          IconButton(
              onPressed: () {
                MySnackbar("I am Save", context);
              },
              icon: Icon(Icons.save)),
          IconButton(
              onPressed: () {
                MySnackbar("I am Icon", context);
              },
              icon: Icon(Icons.comment))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
        onPressed: () {
          MySnackbar("I am floating action button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackbar("I am home bottom menu", context);
          }
          if (index == 1) {
            MySnackbar("I am contact bottom menu", context);
          }
          if (index == 2) {
            MySnackbar("I am profile bottom menu", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.red),
                  accountName: Text("Zahid HR",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255))),
                  accountEmail: Text("zahidhr99@gmail.com",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255))),
                  currentAccountPicture: Image.network(
                      "https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png"),
                  onDetailsPressed: () {
                    MySnackbar("This is profile", context);
                  },
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackbar("Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Email"),
              onTap: () {
                MySnackbar("Email", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                MySnackbar("Profile", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              onTap: () {
                MySnackbar("Email", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              onTap: () {
                MySnackbar("Phone", context);
              },
            ),
          ],
        ),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        TextButton(
            onPressed: () {
              MySnackbar("Hello, This is a button", context);
            },
            child: const Text('Text Button')),
        ElevatedButton(
            onPressed: () {
              MySnackbar("This is Elevated Button", context);
            },
            child: const Text("Elevated Button")),
        OutlinedButton(
            onPressed: () {
              MyAlertDialog(context);
            },
            child: const Text("Elevated Button")),
      ]),
    );
  }
}
