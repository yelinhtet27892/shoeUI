import 'package:ecommence/clip_path.dart';
import 'package:ecommence/detail.dart';
import 'package:ecommence/model/add_items.dart';
import 'package:flutter/material.dart';

class ECommence extends StatefulWidget {
  const ECommence({
    super.key,
  });

  @override
  State<ECommence> createState() => _ECommenceState();
}

class _ECommenceState extends State<ECommence> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: ((context, index) => SizedBox(
                        width: 230,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: ClipPath(
                                  clipper: AppClipper(
                                      cornerSize: 50,
                                      diagonalHeight: 80,
                                      roundedBottom: false),
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      color: list[index].color,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50, bottom: 50),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.mark_chat_read,
                                                    color: Colors.white,
                                                  )),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 60),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                list[index].text1,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 60, top: 15),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                list[index].text2,
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  30))),
                                              child: IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (context) => Detail(
                                                                text1:
                                                                    list[index]
                                                                        .text1,
                                                                text2:
                                                                    list[index]
                                                                        .text2,
                                                                img: list[index]
                                                                    .img)));
                                                  },
                                                  icon: Icon(Icons.add)),
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                child: Container(
                                    child: Image.asset(
                                  list[index].img,
                                  width: 150,
                                  height: 200,
                                )),
                              )
                            ],
                          ),
                        ),
                      ))),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Just for you",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 17, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      height: 80,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 0,
                        child: ListTile(
                          leading: Image.asset(
                            list[index].img,
                            width: 50,
                            height: 70,
                          ),
                          title: Text(list[index].text1),
                          trailing: Text(list[index].text2),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
          ]),
    );
  }
}
