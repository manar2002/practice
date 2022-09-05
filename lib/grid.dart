import 'package:flutter/material.dart';

List<String> images = ['assets/img1.png', 'assets/img2.png', 'assets/img3.png',
                       'assets/img1.png', 'assets/img2.png', 'assets/img3.png',
                       'assets/img1.png', 'assets/img2.png', 'assets/img3.png',
                       'assets/img1.png', 'assets/img2.png', 'assets/img3.png',
                       'assets/img1.png', 'assets/img2.png', 'assets/img3.png'];

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'Gallery',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black26,
                  fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 40),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)),
                        ),
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          scrollDirection: Axis.vertical,
                          children: List.generate(14, (index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        images[index],
                                      ),
                                      fit: BoxFit.cover)),
                            );
                          }),
                        )),
                  )
                ]),
          ),
        ));
  }
}
