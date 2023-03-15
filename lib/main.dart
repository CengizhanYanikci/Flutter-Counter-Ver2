import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sayaç Uygulaması',
      theme: ThemeData.dark(),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int counter = 0;
  double fontSize = 100;


  Color _TextColor(int count){
    if(count > 0){
      return Colors.blue;
    }else if(count == 0){
      return Colors.yellow;
    }else{
      return Colors.red;
    }
  }
 void incrementFontsize(){
   setState(() {
     fontSize+=5;
   });
 }

  void decrementFontsize(){
    setState(() {
      fontSize-=5;
    });
  }





  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sayaç Uygulaması'),
        actions: [
          IconButton(
            onPressed: incrementFontsize,
            icon: Icon(Icons.add_circle),
          ),
          IconButton(
            onPressed: decrementFontsize,
            icon: Icon(Icons.remove_circle),
          ),
        ],



      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sayaç Değeri',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: fontSize,
                color: _TextColor(counter), // Renk burada belirlenir.
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: incrementCounter,
                  child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white30,
                  ),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: decrementCounter,
                  child: Icon(Icons.remove),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
   }
}