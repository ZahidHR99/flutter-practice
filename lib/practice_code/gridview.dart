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
  HomeActivity({super.key});

  var MyItems = [
    {
      "img":
          "https://cdn.prod.website-files.com/5f841209f4e71b2d70034471/6078b650748b8558d46ffb7f_Flutter%20app%20development.png",
      "title": "Zahid HR 1 "
    },
    {
      "img":
          "https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png",
      "title": "Zahid HR 2"
    },
    {
      "img":
          "https://miro.medium.com/v2/resize:fit:1400/1*vgN2zojqiIYu23JPVuaSiA.jpeg",
      "title": "Zahid HR 3"
    },
    {
      "img":
          "https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png",
      "title": "Zahid HR 4"
    },
    {
      "img":
          "https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png",
      "title": "Zahid HR 5"
    },
    {
      "img":
          "https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png",
      "title": "Zahid HR 6"
    }
  ];

  mySanckBar(context, msg) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
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
          title: Text("Zahid App"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 1, childAspectRatio: 1.2),
          itemCount: MyItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  mySanckBar(context, MyItems[index]['title']);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 200,
                  child:
                      Image.network(MyItems[index]['img']!, fit: BoxFit.fill),
                ));
          },
        ));
  }
}
