import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    print('left button got pressed');
                  },
                  child: Image.asset('images/dice4.png'))),
          SizedBox(width: 20.0),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    print('right button got pressed');
                  },
                  child: Image.asset('images/dice2.png')))
        ]),
      ),
    );
  }
}
