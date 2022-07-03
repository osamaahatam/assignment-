import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatScreen extends StatelessWidget {
  Size? size;
   ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'MESSAGE',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w400,
               ),
              ),
              const SizedBox(height: 20,),
               Container(
                width: size!.width*0.8,
                height: size!.height*0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                    border: Border.all(color: const Color.fromARGB(255, 94, 196, 97),),),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Name:\nLorem ipsum dolor sit amet, sed do eiusmod tempor  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit",
                    // style: TextStyle(
                    //     fontSize: 16, color: Color.fromARGB(255, 24, 9, 66)),
                    // textAlign: TextAlign.justify,
                  ),
                ),
              ),
            const SizedBox(height: 20,),
            Container(
              width: size!.width*0.8,
              height: size!.height*0.15,
              decoration:  BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color.fromARGB(255, 94, 196, 97),),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Hello\n Lorem ipsum dolor sit amet, sed do eiusmod tempor  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
                  ),
                ),
              ),
              const SizedBox(height: 20,),
            Container(
              width: size!.width*0.8,
              height: size!.height*0.15,
              decoration:  BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color.fromARGB(255, 94, 196, 97),),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Hello\n Lorem ipsum dolor sit amet, sed do eiusmod tempor  laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
                  ),
                ),
              ),
            const SizedBox(height: 10,),
            const Divider(color: Color.fromARGB(255, 94, 196, 97),thickness: 1.5,),
             Container(
                  width: size!.width*0.8,
                  height: size!.height*0.15,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color.fromARGB(255, 94, 196, 97)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Write the Message Here',style: TextStyle(fontSize: 18),),
                    ),
                ),
              const SizedBox(height: 10,),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 40,),
               Container(
                width: size!.width*0.65,
                height: size!.height*0.05,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                 borderRadius: BorderRadius.circular(15),
                 border: Border.all(color: Color.fromARGB(255, 94, 196, 97)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Name'),),
               ),
               const SizedBox(width: 15,),
               IconButton(
                  icon: Icon(
                    Icons.send
                  ),
                  onPressed: (){},
                  color: Color.fromARGB(255, 94, 196, 97),
                  iconSize: 40,
                 ),
              
              ],
            ),
          ],
        ),
      ),
    );
  }
}