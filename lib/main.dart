import 'package:flutter/material.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Screen1(

      ) ,
    );
  }//-----
}
class Screen1 extends StatefulWidget {
  Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int num = 1;
  int weight = 1;
  double value =100;
  String selectedGender = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          title: Text("BMI Calculator",style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
        ) ,
        body: Column(
          children: [
            Expanded(child: Row(
                children:[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        splashColor: Colors.teal,
                        onTap: () {
                          setState(() {
                            selectedGender = "male";
                          });
                        },

                        child: Container(

                          decoration: BoxDecoration( color: selectedGender == "male" ? Colors.blue : Colors.grey,borderRadius: BorderRadius.circular(20) ,),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male ,size: 80,),
                              Text("male",style: TextStyle(fontSize: 30),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        splashColor: Colors.teal,
                        onTap: () {
                          setState(() {
                            selectedGender = "female";
                          });
                        },
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration( color: selectedGender == "female" ? Colors.pink : Colors.grey,borderRadius: BorderRadius.circular(20),),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Icon(Icons.female ,size: 80,),
                              Text("female",style: TextStyle(fontSize: 30),)
                            ],
                          ),

                        ),
                      ),
                    ),
                  )
                ]
            )),

            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                splashColor: Colors.teal,
                onTap: (){
                  setState(() {

                  });
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey , borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hight",),
                      Text("$value",),
                      Slider(value: value, onChanged: (double x){
                        setState(() {

                        });
                        value = x;
                      },min: 100,max: 200,activeColor: Colors.pink,inactiveColor: Colors.blueGrey,)
                    ],
                  ),
                ),
              ),
            )),
            Expanded(child: Row(
                children:[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        splashColor: Colors.teal,
                        onTap: (){
                          setState(() {

                          });
                        },
                        child: Container(
                          decoration: BoxDecoration( color:Colors.grey,borderRadius: BorderRadius.circular(20) ),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("weight",style: TextStyle(fontSize: 30),),
                              Text("$weight",style: TextStyle(fontSize: 30),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      onPressed: (){

                                        weight ++;
                                        setState(() {

                                        });
                                      },
                                      backgroundColor: Colors.green,
                                      child: const Icon(Icons.add)
                                  ),
                                  SizedBox(
                                    width: 20,

                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      if (weight>0){
                                        weight--;}
                                      setState(() {

                                      });
                                    },
                                    backgroundColor: Colors.green,
                                    child: const Icon(Icons.remove) ,

                                  ),

                                ],
                              )
                            ],
                          ),

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        splashColor: Colors.teal,
                        onTap: (){
                          setState(() {

                          });
                        },
                        child: Container(
                          decoration: BoxDecoration( color:Colors.grey,borderRadius: BorderRadius.circular(20) ),
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Age",style: TextStyle(fontSize: 30),),
                              Text("$num",style: TextStyle(fontSize: 30),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      onPressed: (){
                                        num ++;
                                        setState(() {

                                        });
                                      },
                                      backgroundColor: Colors.green,
                                      child: const Icon(Icons.add)
                                  ),
                                  SizedBox(
                                    width: 20,

                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      if (num>0){
                                        num --;}
                                      setState(() {

                                      });
                                    },
                                    backgroundColor: Colors.green,
                                    child: const Icon(Icons.remove) ,

                                  ),

                                ],
                              )
                            ],
                          ),

                        ),
                      ),
                    ),
                  ),
                ]
            )),
            Container(
              width: double.infinity,
              height: 100,
              child: const Center(
                child: Text("calculate",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50)), ),
              decoration: BoxDecoration(color: Colors.red ,),
            )
          ],
        ),

        );
    }
}
