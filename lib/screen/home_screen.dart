import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State <HomePage> createState() =>  _HomePage();
}

class _HomePage extends State <HomePage> {
  var height, width;

  List images = [
    'images/checklist.png',
    'images/brain.png',
    'images/documents.png',
    'images/file.png',
    'images/job.png',
    'images/about.png'
  ];

  List titles = [
    'MCQs',
    'QUIZ',
    'Papers',
    'PDF',
    'Jobs',
    'About'
  ];

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.indigo
          ),
          width: width,
          child: Column(
            children: [
              Container(
                height: height * 0.23,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.sort_rounded),
                            color: Colors.white,
                            iconSize: 50,
                          ),
                          IconButton(
                            onPressed: (){},
                            icon: Image(image: AssetImage('images/profile3.png'),
                            )
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 20
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dashboard',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              wordSpacing: 1,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            'Last Update: 7 Aug 2024',
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 18
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                    ),
                  ),
                  // height: height,
                  width: width,
                  padding: EdgeInsets.only(bottom: 30),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      mainAxisSpacing: 25
                    ),
                    itemCount: images.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical:10, horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 2,
                                blurRadius: 8
                              )
                            ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                images[index],
                                width: 100,
                              ),
                              Text(
                                titles[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          )
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}