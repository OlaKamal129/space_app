import 'package:flutter/material.dart';
class Log extends StatelessWidget {
  const Log({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Planet Image (right side)
            Positioned(
             
              top: 40,
              bottom: 100,
              child: Image.asset(
                'assets/Frame.png', // حط صورة الكوكب هنا
                fit: BoxFit.contain,
             
              ),
            ),

            // Text
            Positioned(
              left: 28,
              top: MediaQuery.of(context).size.height * 0.28,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      height: 1.05,
                    ),
                  ),
                  Text(
                    'The',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      height: 1.05,
                    ),
                  ),
                  Text(
                    'Universe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      height: 1.05,
                    ),
                  ),
                ],
              ),
            ),

            // Explore Button
            Positioned(
              left: 24,
              right: 24,
              bottom: 36,
              child: SizedBox(
                height: 58,
                child: ElevatedButton(
                  onPressed: () {
                    // Action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE53935),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Explore',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(Icons.arrow_forward, size: 22),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );}}