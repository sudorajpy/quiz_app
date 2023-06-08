import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   
  
  @override
  Widget build(BuildContext context) {


    
    return Scaffold(
    body: Container(
      width: double.infinity,
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 85, 42, 178),
            Color.fromARGB(255, 50, 6, 116),
            Colors.lightBlue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/screen.png', width: 200, height: 200,),
            const SizedBox(height: 20),
            const Text('Learn Flutter the fun way',style: TextStyle(color:Colors.white, fontSize: 24)),
            const SizedBox(height: 20),
            OutlinedButton(onPressed: (){
              //write a function to navigate to the next screen and cant come back to this screen
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const QuestionsScreen()));

              
            }
            , style: OutlinedButton.styleFrom(

              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
              )
            ),
          
            child: Text('Start Quiz'))
          ],
        ),
      
    )
    );
  }
}
