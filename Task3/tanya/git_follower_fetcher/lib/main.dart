import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:git_follower_fetcher/providers/UserProvider.dart';
import 'package:git_follower_fetcher/screens/Followingpages.dart';
import 'package:provider/provider.dart';

void main() => runApp(
ChangeNotifierProvider<UserProvider>(create: (context)=> UserProvider(),
child:const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ) ,
)
 
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  void getuser() {
     if(_controller.text == ''){
             Provider.of<UserProvider>(context).setMessage("Please enter username");
     }else{
             Provider.of<UserProvider>(context).fetchUser(_controller.text).then((value){
              if(value){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FollowingPage()));
              }
              
             }
             );
            
     }
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(255, 3, 5, 14),
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(height: 100),
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
                "https://th.bing.com/th/id/OIP.QEpduO7IaOXym50gsDlQlAAAAA?rs=1&pid=ImgDetMain"),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "GitHub",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 45),
          ),
          const SizedBox(
            height: 120,
          ),
          Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: const Color.fromARGB(255, 47, 45, 45)),
              child: TextFormField(
               style: TextStyle(color: Colors.white,fontSize: 18),
                onChanged: (value) {
                  Provider.of<UserProvider>(context).setMessage(null);
                },
                controller: _controller,
                enabled:! Provider.of<UserProvider>(context).getLoading(),
                showCursor: true,
                cursorColor: Color.fromARGB(255, 47, 125, 53),
                decoration: const InputDecoration(
                  hintText: "Enter username",
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 235, 214, 214), fontSize: 16),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 50,
              minWidth: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 47, 125, 53),
              child:
              Provider.of<UserProvider>(context).getLoading()?
              CircularProgressIndicator(backgroundColor:Color.fromARGB(255, 235, 214, 214) ,strokeWidth: 3,):
              Text(
                "Get Followers",
                style: TextStyle(
                    color: Color.fromARGB(255, 235, 214, 214), fontSize: 18),
              ),
              onPressed: () {
                getuser();
              })
        ],
      ),
    )));
  }
}
