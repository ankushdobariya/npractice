import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: demo(),
  ));
}
class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double stheight =MediaQuery.of(context).padding.top;
    double btheight =MediaQuery.of(context).padding.bottom;
    double appheight =kToolbarHeight;

    double bodyheight =height-stheight-btheight-appheight;

    print("w=$width");
    print("h=$height");

    return Scaffold(
      appBar: AppBar(title: Text("tic tac toe"),),
      body: Column(
        children: [
          Container(
             color: Colors.black,
             height: bodyheight/3,
            child: Row(
              children: [
                Container(
                  width: width/2,
                  color: Colors.cyanAccent,
                ),
                Container(
                  color: Colors.red,
                  width: width/2,
                ),
                Container(
                  color: Colors.red,
                  width: width/2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
