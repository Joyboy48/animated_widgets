import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _width = 200.0;
  var _height = 100.0;


  @override
  Widget build(BuildContext context) {
    bool flag = false;

    return Scaffold(
        appBar: AppBar(

          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Foo Animation'),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(duration: Duration(seconds: 2),
              width: _width,
              height: _height,
              color: Colors.grey,),
              ElevatedButton(onPressed: (){

                if(flag){
                  _width = 100;
                  _height = 200;
                  flag = false;
                }else{
                   _width = 200.0;
                   _height = 100.0;
                   flag = true;
                }


                setState(() {

                });

              }, child: Text('Animate'))
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}