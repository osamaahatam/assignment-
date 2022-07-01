import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
class MainScreen extends StatelessWidget {
  Size? size;
   MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Getting The actuall size of screen
    size=MediaQuery.of(context).size;
    print('${size!.width.ceil()}${size!.height.ceil()}');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //the height of the shadow of this widget
        elevation: 0,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // color: Colors.red,
            height: 250,
            alignment:Alignment.topCenter,
            child: CircleAvatar(
              backgroundColor: Colors.black26,
              radius: 110,
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  'https://imgs.search.brave.com/vALMth8xJTHQFXEfBv_OOlSQ9vQRBoTyeZDr--QeFzY/rs:fit:1000:600:1/g:ce/aHR0cHM6Ly8ycGFj/bGVnYWN5Lm5ldC93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyMC8w/MS9XaGF0LVdhcy1U/dXBhYy1TaGFrdXIt/TmV0LVdvcnRoLUF0/LVRoZS1UaW1lLU9m/LUhpcy1EZWF0aC5q/cGc',
                  ),
              ),
            ),
          ),
           const Text(
             'Tupac Shakur',
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
             ),
             ),
             const SizedBox(height: 20,),
             const Text(
               'Tupac Amaru Shakur born Lesane Parish Crooks, June 16, 1971 – September 13, 1996), known professionally as 2Pac and later Makaveli, was an American rapper and actor. He is widely considered one of the most influential rappers of all time.',
               textAlign: TextAlign.center,),
               const SizedBox(height: 20,),
               //facebook bottom
               SizedBox(
                //the withd of this sizeBox is the 80% of the screen
                width: size!.width * 0.8,
                //the withd of this sizeBox is the 80% of the screen
                height: size!.height * 0.05,
                 child: ElevatedButton(
                  onPressed: (){
                    _launchUrl(Uri.parse('https://www.facebook.com/osama.hatam.1'));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children:const [
                      Icon(
                        Icons.facebook,
                      ),
                      SizedBox(width: 15,),
                      Text('Facebook',textAlign: TextAlign.end,style: TextStyle(fontSize:18 ),)
                     ],
                   ),
                  ),
               ),
               SizedBox(height: 20,),
               SizedBox(
                //Github Buttom
                //the withd of this sizeBox is the 80% of the screen
                width: size!.width * 0.8,
                //the withd of this sizeBox is the 80% of the screen
                height: size!.height * 0.05,
                 child: ElevatedButton(
                  onPressed: (){
                    _launchUrl(Uri.parse('https://github.com/osamaahatam'));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: const [
                      Icon(
                        MdiIcons.github,
                      ),
                      SizedBox(width: 15,),
                      Text('Github',textAlign: TextAlign.end,style: TextStyle(fontSize:18 ),),
                     ],
                   ),
                  ),
               ),
               SizedBox(height:20),
                 SizedBox(
                // StackOve flow buttom
                //the withd of this sizeBox is the 80% of the screen
                width: size!.width * 0.8,
                //the withd of this sizeBox is the 80% of the screen
                height: size!.height * 0.05,
                 child: ElevatedButton(
                  onPressed: (){
                    _launchUrl(Uri.parse('https://stackoverflow.com/users/19226124/osama-hatam'));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: const [
                      Icon(
                        MdiIcons.stackOverflow,
                      ),
                      SizedBox(width: 15,),
                      Text('stack Overflow',textAlign: TextAlign.end,style: TextStyle(fontSize:18 ),),
                     ],
                   ),
                  ),
               ),
               SizedBox(height: 20,),
               Row(
                children: [
                  SizedBox(width: 50,),
                  ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape:const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                      ),
                    onPressed: (){},
                    child: Icon(
                      Icons.whatsapp,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 50,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: const EdgeInsets.all(20),
                    ),
                    onPressed: (){},
                    child: Icon(
                      Icons.mail,
                      size: 25,
                    ),
                  ),
                  SizedBox(width: 50,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:Colors.black26,
                      shape: CircleBorder(),
                      padding: const EdgeInsets.all(20),
                    ),
                    onPressed: (){},
                    child: Icon(
                      MdiIcons.messageBadge,
                      // size: 25,
                    ),
                  ),
                ],
               ),
          //   Ink(
          //     width: 300,
          //     height: 40,
          //     color: Colors.blue,
          //   child: InkWell(
          //     onTap: (){},
          //     child: Icon(Icons.facebook,color: Colors.white, size: 30,semanticLabel:'Facebook'),
              
          //   ),
          // ),
        ],
      ),
    );
  }
  void _launchUrl(Uri _url) async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}
}
