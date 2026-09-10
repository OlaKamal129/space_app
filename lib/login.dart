import 'package:flutter/material.dart';
import 'package:space_app/home_screen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: SafeArea(child: 
       
          
           
              Stack(
                
                children: [
                  Image.asset("assets/Frame1.png"),
                  Positioned(
                    top: 319,
                   
                    right: 94,
                    left: 16,
                    child: Text(
                      "Explore\nThe\nWorld",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
bottom: 22,

                    child: SizedBox(
                      height: 60,
                      width: 342,
                      child: ElevatedButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())));},

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffEE403D),
                          foregroundColor: Color(0xffFFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(
                              "Explore",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(Icons.arrow_forward, size: 16),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
       )) );
         
        
       
    
  }
}
