import 'package:flutter/material.dart';

class Class4 extends StatefulWidget {
  const Class4({super.key});

  @override
  State<Class4> createState() => _Class4State();
}

class _Class4State extends State<Class4> {
  bool selected = false;
  bool nonAniselected = false;
  bool showMessage = false;
  bool isLogin = false;
  int cartCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animation')),
      body: Column(
        children: [
          //AnimatedContainer
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              height: selected ? 140 : 110,
              decoration: BoxDecoration(
                color: selected ? Colors.green : Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Text('Product Card'),
            ),
          ),

          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              setState(() {
                nonAniselected = !nonAniselected;
              });
            },
            child: Container(
              height: nonAniselected ? 140 : 110,
              decoration: BoxDecoration(
                color: nonAniselected ? Colors.green : Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Text('Product Card'),
            ),
          ),

          SizedBox(height: 30),
          Divider(),

          ElevatedButton(
            onPressed: () {
              setState(() {
                showMessage = !showMessage;
              });
              Future.delayed(Duration(seconds: 3), () {
                setState(() {
                  showMessage = false;
                });
              });
            },
            child: Text('Add to Cart'),
          ),

          //AnimatedOpacity
          AnimatedOpacity(
            opacity: showMessage ? 1 : 0,
            duration: Duration(milliseconds: 300),
            child: Text('Added to cart'),
          ),

          //Animated Switcher
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cart: '),

              AnimatedSwitcher(
                duration: Duration(milliseconds: 1000),
                child: Text('$cartCount', style: TextStyle(fontSize: 24)),
                key: ValueKey(cartCount),
              ),

              IconButton(
                onPressed: () {
                  setState(() {
                    cartCount++;
                  });
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
          //Animated Align
          SizedBox(
            height: 300,
            width: double.infinity,
            child: AnimatedAlign(
              alignment: isLogin ? Alignment.topCenter : Alignment.center,
              duration: Duration(milliseconds: 700),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://tse3.mm.bing.net/th/id/OIP.ctLCSX9vGeOzsUAtg36-lQHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
                ),
                radius: 90,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isLogin = !isLogin;
              });
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
