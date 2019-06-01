import 'package:flutter/material.dart';
import 'package:latihan_flutter/login.dart';


void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Icon(Icons.people),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text("My Question"),
              ),
              ListTile(
                leading: Icon(Icons.headset_off),
                title: Text("My Answer"),
              )
            ],
          ),
        ),
        
        floatingActionButton: new FloatingActionButton(
          onPressed: () {
            _settingModalBottomSheet(context);
          },
          child: new Icon(Icons.add),
        ),

        body: Container(
          color: Colors.grey[300],
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.account_circle),
                            SizedBox(
                              width: 8,
                            ),
                            Text("username"),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Material(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Solved",
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text(
                                "Lorem Ipsum",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                              SizedBox(
                                height: 8,
                              ),
                              Image.network(
                                  "https://cdn0.tnwcdn.com/wp-content/blogs.dir/1/files/2018/03/google-stackoverflow-796x417.png"),
                              Divider(),
                              TextFormField(
                                decoration: new InputDecoration(
                                  icon: Icon(Icons.comment),
                                  labelText: 'Comment',
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.title),
                      labelText: 'Title',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.description),
                      labelText: 'Description',
                    ),
                    keyboardType: TextInputType.multiline,
                  ),
                ],
              )
            ],
          ),
        );
      });
}
