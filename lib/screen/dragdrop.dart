import 'package:flutter/material.dart';

class Dragdrop_S extends StatefulWidget {
  const Dragdrop_S({Key? key}) : super(key: key);

  @override
  State<Dragdrop_S> createState() => _Dragdrop_SState();
}

class _Dragdrop_SState extends State<Dragdrop_S> {
  List isaccept = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drag & Drop"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Draggable<String>(
                  data: "1",
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/bird.png"),
                  ),
                  feedback: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/bird.png"),
                  ),
                  childWhenDragging: Container(),
                ),
                DragTarget(
                  builder: (context, accept, reject) {
                    return Container(
                      height: 100,
                      width: 100,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.shade300,
                        child: isaccept[0]
                            ? Image.asset(
                                "assets/images/fish.jpeg",
                                fit: BoxFit.cover,
                              )
                            : Container(
                                child: Center(child: Text("Fish")),
                              ),
                      ),
                    );
                  },
                  onWillAccept: (data) {
                    return data == "4";
                  },
                  onAccept: (data) {
                    setState(() {
                      isaccept[0] = true;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Draggable<String>(
                  data: "2",
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/cat.png"),
                  ),
                  feedback: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/cat.png"),
                  ),
                  childWhenDragging: Container(),
                ),
                DragTarget(
                  builder: (context, accept, reject) {
                    return Container(
                      height: 100,
                      width: 100,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.shade300,
                        child: isaccept[1]
                            ? Image.asset(
                                "assets/images/dog.jpeg",
                                fit: BoxFit.cover,
                              )
                            : Container(
                                child: Center(child: Text("Dog")),
                              ),
                      ),
                    );
                  },
                  onWillAccept: (data) {
                    return data == "3";
                  },
                  onAccept: (data) {
                    setState(() {
                      isaccept[1] = true;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Draggable<String>(
                  data: "3",
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/dog.jpeg"),
                  ),
                  feedback: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/dog.jpeg"),
                  ),
                  childWhenDragging: Container(),
                ),
                DragTarget(
                  builder: (context, accept, reject) {
                    return Container(
                      height: 100,
                      width: 100,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.shade300,
                        child: isaccept[2]
                            ? Image.asset(
                                "assets/images/cat.png",
                                fit: BoxFit.cover,
                              )
                            : Container(
                                child: Center(child: Text("cat")),
                              ),
                      ),
                    );
                  },
                  onWillAccept: (data) {
                    return data == "2";
                  },
                  onAccept: (data) {
                    setState(() {
                      isaccept[2] = true;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Draggable<String>(
                  data: "4",
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/fish.jpeg"),
                  ),
                  feedback: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/fish.jpeg"),
                  ),
                  childWhenDragging: Container(),
                ),
                DragTarget(
                  builder: (context, accept, reject) {
                    return Container(
                      height: 100,
                      width: 100,
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.shade300,
                        child: isaccept[3]
                            ? Image.asset(
                                "assets/images/bird.png",
                                fit: BoxFit.cover,
                              )
                            : Container(
                                child: Center(child: Text("Bird")),
                              ),
                      ),
                    );
                  },
                  onWillAccept: (data) {
                    return data == "1";
                  },
                  onAccept: (data) {
                    setState(() {
                      isaccept[3] = true;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
