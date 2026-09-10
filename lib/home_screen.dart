import 'package:flutter/material.dart';
import 'package:space_app/details_screen.dart';
import 'data/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController controller = PageController();
int currentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 237,
                  width: double.infinity,

                  child: Image.asset("assets/Rectangle.png"),
                ),
                Align(
                  alignment: Alignment.topCenter,

                  child: Padding(
                    padding: const EdgeInsetsGeometry.only(top: 26),
                    child: Text(
                      "Explore",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                        color: Color(0XffFFFFFF),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsetsGeometry.only(
                      top: 165,
                      right: 165,
                      left: 20,
                    ),
                    child: Text(
                      "Which planet\nwould you like to explore?",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -3,
                        color: Color(0XffFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 500,
              width: double.infinity,
              child: PageView.builder(
  controller: controller,
  itemCount: planets.length,

  onPageChanged: (index) {
    setState(() {
      currentIndex = index;
    });
  },

  itemBuilder: (context, index) {
                  return 
                      Image.asset(
                        planets[index]["image"]!,
                        height: 339,
                        width: 342,
                     

                      
                  );
                },
              ),
            ),
            SizedBox(height: 38),
           
               SizedBox(
                height: 43,
                width: 342,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEE403D),
                        shape: BoxShape.circle,
                      ),

                      height: 43,
                      width: 43,
                      child: IconButton(
                        onPressed: () {
  if (currentIndex > 0) {
    controller.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
                        },
                        icon: Icon(Icons.arrow_back, color: Color(0xffFFFFFF)),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 36,
                      width: 60,
                      child: Text(
                         planets[controller.hasClients ? controller.page?.round() ?? 0 : 0]["name"]!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0,
                          color: Color(0XffFFFFFF),
                        ),
                      ),
                    ),
                    SizedBox(width: 98),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEE403D),
                        shape: BoxShape.circle,
                      ),

                      height: 43,
                      width: 43,
                      child: IconButton(
                        onPressed: () {
  if (currentIndex < planets.length - 1) {
    controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

  
  }
                        },
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
           
            Spacer(),
            Positioned(
              bottom: 22,

              child: SizedBox(
                height: 60,
                width: 342,
                child: ElevatedButton(
                  onPressed: () {
                    
    Navigator.push(
      context,
       MaterialPageRoute(
        builder: (context) => DetailsScreen(
           planet: planets[currentIndex],
        ),
   ),
    );
    },

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
        ),
      ),
    );
  }
}
