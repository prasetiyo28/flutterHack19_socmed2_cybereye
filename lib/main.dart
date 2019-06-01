import 'package:flutter/material.dart';
// import 'package:latihan_flutter/login.dart';
import 'package:latihan_flutter/detail.dart';

void main() {
  runApp(MaterialApp(
    home:Home(),
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
      resizeToAvoidBottomPadding: true,
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30,),
                    Text("Bayu Adi Prasetiyo",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                    
                    ),
                    Text("bayu28.bap@gmail.com",style: TextStyle(color: Colors.white),),
                    SizedBox(height: 20,),
                    Row(children: <Widget>[
                      Icon(Icons.monetization_on,color: Colors.amber,),
                      Text("100",style: TextStyle(color: Colors.white),)
                    ],)

                  ],
                ),
                decoration: 
                BoxDecoration(
                  gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.blue[800],
            Colors.blue[700],
            Colors.blue[600],
            Colors.blue[400],
          ],
        ),),
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
              ),

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
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: ListView(
            padding: EdgeInsets.all(10),
            shrinkWrap: true,
            children: <Widget>[
              Text("Add Your Issue",textAlign: TextAlign.center,style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 20,
              ),
              Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Antu_insert-image.svg/512px-Antu_insert-image.svg.png",height: 50, width: 50,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.title),
                  labelText: 'Title',
                ),
              ),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  
                  icon: Icon(Icons.description),
                  labelText: 'Description',
                ),
                keyboardType: TextInputType.multiline,
              ),
              OutlineButton(child: Text("Save")),
              
            
            ],
          ),
        );
      });
}
