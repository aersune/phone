import 'package:flutter/material.dart';

import 'abs.dart';

void main() =>  runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late String showingtext = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child:Column(
            children: [
              const SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text( showingtext, style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Add Number', style: TextStyle(color: Colors.blue, fontSize: 20),)
                ],
              ),
              const SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                          showingtext += "1";
                      });
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      padding: const EdgeInsets.all(7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('1', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: (){
                        setState(() {
                          showingtext += "2";
                        });
                      },
                      child: Abs(number: "2",subtitle: "ABS",)),
                  InkWell( onTap: (){
                    setState(() {
                      showingtext += "3";
                    });
                  },child: Abs(number: "3",subtitle: "DEF",)),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell( onTap: (){
                    setState(() {
                      showingtext += "4";
                    });
                  },child: Abs(number: "4",subtitle: "GHI",)),
                  InkWell( onTap: (){
                    setState(() {
                      showingtext += "5";
                    });
                  },child: Abs(number: "5",subtitle: "JKL",)),
                  InkWell( onTap: (){
                    setState(() {
                      showingtext += "6";
                    });
                  },child: Abs(number: "6",subtitle: "JKL",)),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        showingtext += "7";
                      });
                    },
                    child: Abs(number: "7",subtitle: "PQRS",),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        showingtext += "8";
                      });
                    },
                   child: Abs(number: "8",subtitle: "TUV",),
                  ),
                  InkWell(
                    onTap: (){
                     setState(() {
                       showingtext += "9";
                     });
                    },
                    child: Abs(number: "9",subtitle: "WXYZ",),
                  ),

                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        showingtext += "*";
                      });
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      padding: const EdgeInsets.all(7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('*', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),
                  ),
                  InkWell(
                      onTap: (){
                        setState(() {
                          showingtext += "0";
                        });
                      },
                      child: Abs(number: "0",subtitle: "+",)),
                  InkWell(
                    onTap: (){
                      setState(() {
                        showingtext += "#";
                      });
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      padding: const EdgeInsets.all(7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('#', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    padding: const EdgeInsets.all(7),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.greenAccent,
                    ),
                    padding: const EdgeInsets.all(7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.phone, size: 30,)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        showingtext = showingtext.substring(0, showingtext.length -1);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle
                      ),
                      width: 70,
                      height: 70,
                      padding: const EdgeInsets.all(7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Icon(Icons.backspace, size: 30, color: Colors.grey)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}


