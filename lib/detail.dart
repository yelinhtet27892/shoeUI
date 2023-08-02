import 'package:ecommence/clip_path.dart';
import 'package:ecommence/model/add_items.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
   Detail({required this.img,required this.text1,required this.text2});
  final String text1;
  final String text2;
  final String img;

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int incresement = 0;
  List<Color> colors = [
    Colors.blueAccent,
    Colors.black,
    Colors.red,
    Colors.yellow
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: colors[incresement],
      appBar: AppBar(
        elevation: 0,
        title: Text('CATEGORIES'),
        backgroundColor: colors[incresement],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
            SizedBox(
              width: width,
              height: height * 0.8,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ClipPath(
                  clipper: AppClipper(
                      cornerSize: 50,
                      diagonalHeight: 150,
                      roundedBottom: false),
                  child: Container(
                    color: Colors.white,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, top: 150, right: 50),
                        child: Text(
                          widget.text1,
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'DETAILS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 50),
                          child: Text(
                            'A shoe is an item of footwear intended to protect and comfort the human foot. Though the human foot can adapt to varied terrains and climate conditions',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'COLOR OPTIONS',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                          height: 40,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: colors.length,
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          incresement = index;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: colors[index],
                                        radius: 15,
                                      ),
                                    ),
                                  ))),
                      SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        height: height * 0.1,
                        child: Card(
                          elevation: 0,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Price',
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        widget.text2,
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 200,
                                  height: 70,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green[400],
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            )),
                                        child: Text(
                                          'ADD CART',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                ),
                              ]),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset(
                widget.img,
                width: width,
                height: height * 0.3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
