import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Myabout extends StatefulWidget {
  const Myabout({Key? key}) : super(key: key);

  @override
  State<Myabout> createState() => _MyaboutState();
}

class _MyaboutState extends State<Myabout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60, left: 80),
              child: ShaderMask(
                shaderCallback: (rect){
                  return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,

                      colors: [Colors.black, Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assets/abcd.png', height: 400,fit: BoxFit.contain,),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.55),
              child: Column(
                children: [
                  Text('Hello I am', style: TextStyle(
                  color: Colors.white,fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Yusuf Gustiana', style: TextStyle(
                      color: Colors.white,fontSize: 40,
                      fontWeight: FontWeight.bold),

                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text('software developer',style: TextStyle(
                    color: Colors.white,fontSize: 20,
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(onPressed: (){}, child: Text('Hire me'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white, primary: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.phone,
                        color: Colors.white,
                      )
                      ),
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                      )
                      ),

                      IconButton(onPressed: (){}, icon: Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      )
                      ),
                      IconButton(onPressed: (){}, icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

