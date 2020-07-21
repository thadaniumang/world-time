import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isEmpty ? ModalRoute.of(context).settings.arguments: data;
    print(data);

    String bgImage = data['isDay'] ? 'day.jpg' : 'night.jpg';
    Color bgColor = data['isDay'] ? Colors.blue[700] : Colors.black;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 150.0, 0, 0),
              child: Column(
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () async {
                        dynamic result = await Navigator.pushNamed(context, '/location');
                        setState(() {
                          data = {
                            'time': result['time'],
                            'location': result['location'],
                            'isDay': result['isDay']
                          };
                        });
                      },
                      icon: Icon(
                          Icons.edit_location,
                        color: Colors.grey[350],
                      ),
                      label: Text(
                        'Edit Location',
                      style: TextStyle(
                          color: Colors.grey[350]
                        ),
                      ),
                  ),
                  SizedBox(height: 17.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[100]
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 75,
                      color: Colors.grey[100]
                    ),
                  ),
                ],
              ),
            ),
          ),
      )
    );
  }
}
