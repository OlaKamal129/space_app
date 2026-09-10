import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> planet;

  const DetailsScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(40),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 144,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 237,
                        width: double.infinity,

                        child: Image.asset("assets/Rectangle.png"),
                      ),

                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Color(0x000E0E0E), Color(0xff0E0E0E)],
                              stops: [0.0, 0.815],
                            ),
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsetsGeometry.only(
                            top: 26,
                            right: 157,
                            left: 158,
                          ),
                          child: Text(
                            "${planet["name"]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,

                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      // Back Button

                      // Bottom Title
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsetsGeometry.only(
                            top: 101,
                            right: 112,
                            left: 18,
                          ),
                          child: Text(
                            "${planet["title"]}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsGeometry.only(top: 22),

                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffEE403D),
                            shape: BoxShape.circle,
                          ),

                          height: 43,
                          width: 43,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 343,
                  width: 343,
                  child: Image.asset(
                    "${planet["image"]}",
                    height: 343,
                    width: 343,
                  ),
                ),
                SizedBox(height: 36),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 18, right: 288),

                  child: SizedBox(
                    height: 36,
                    width: 69,
                    child: Text(
                      "about",
                      style: TextStyle(
                        fontSize: 24,
                        height: 36 / 24,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -3,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),

                Padding(
                  padding: EdgeInsetsGeometry.only(left: 18),

                  child: SizedBox(
                    width: 341,
                    child: Text(
                      "${planet["about"]}",
                      style: TextStyle(
                        fontSize: 16,
                        height: 36 / 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "SpaceGrotesk",
                        letterSpacing: 0,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Column(
                    children: [
                      rowItems(
                        "Distance from Sun (km)",
                        planet["distance"],
                      ),
                      rowItems(
                        "Length of Day (hours)",
                        planet["dayLength"],
                      ),
                      rowItems(
                        "Orbital Period (Earth years)",
                        planet["orbitalPeriod"],
                      ),
                      rowItems("Radius (km)", planet["radius"]),
                      rowItems("Mass (kg)", planet["mass"]),
                      rowItems("Gravity (m/s²)", planet["gravity"]),
                      rowItems(
                        "Surface Area (km²)",
                        planet["surfaceArea"],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget rowItems(String label, dynamic value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        "$label : ${value ?? ''}",
        textAlign: TextAlign.center, 
        style: const TextStyle(
          fontSize: 16,
          height: 1.4,
          fontWeight: FontWeight.w700,
          fontFamily: "SpaceGrotesk",
          color: Color(0xffFFFFFF),
        ),
      ),
    );
  }
}
