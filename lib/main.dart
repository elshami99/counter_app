
import 'package:flutter/material.dart';


void main() {
  runApp( MyApp());
}



class MyApp extends StatefulWidget {
  



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   
   double p = 15;

 void _pluscounter(){
   setState(() {
     p++;
    
   });
 }
 void _minuscounter(){
   setState(() {
     p--;
   
   });
 }
 void _multipleoftwo(){
   setState(() {
     p=p*2;
    
   });
 }
 void _devisionoftwo(){
   setState(() {
    p=p/2;
   
   });
 }

 void reset(){
   setState(() {
     p=15;
    
   });
 }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         
        appBar: AppBar(
          
          title: Text('Basic Calculator'),
        ),
        body:Center(
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              
              

              children: <Widget>[
                
                Text(
                '$p'),
                  
                
                ElevatedButton(onPressed: () => _pluscounter(), child: Text('+1')),
                ElevatedButton(onPressed: () => _minuscounter(), child: Text('-1')),
                ElevatedButton(onPressed: () => _multipleoftwo(), child: Text('x2')),
                ElevatedButton(onPressed: () => _devisionoftwo(), child: Text('/2')),
                ElevatedButton(onPressed:() => setState(() {
                  return reset();
                }), child: Text('reset')),
              ],
            ),
          ),
        ),
        
        

      
    );
  }
}

