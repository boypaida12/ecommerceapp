import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAccoutPage extends StatefulWidget {
  const CreateAccoutPage({super.key});


  @override
  State<CreateAccoutPage> createState() => _CreateAccoutPageState();
}

class _CreateAccoutPageState extends State<CreateAccoutPage> {
  

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      home: Scaffold(
          body: Container(
          color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Create Account", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
                      
                    const Text("Start learning with create your account", style: TextStyle(fontSize: 12, color: Colors.grey),),
                      
                    const Padding(
                      padding:  EdgeInsets.only(top: 20, bottom: 20),
                      child: Text("Username", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                    ),

                    TextField(
                    decoration: InputDecoration(
                      hintText: "Magdalena Succrose",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.person, color: Colors.deepPurpleAccent,),
                    ),
                  ),
                      
                  const Padding(
                    padding:  EdgeInsets.only(top: 20, bottom: 20),
                    child:  Text("Email or Phone Number", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                  ),
                  
                  TextField(
                    decoration: InputDecoration(
                      hintText: "magdalena83@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.mail, color: Colors.deepPurpleAccent,),
                    ),
                  ),
                      
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Text("Password", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
                    ),

                    TextField(
                    decoration: InputDecoration(
                      hintText: "magdalena83@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon: Icon(Icons.lock, color: Colors.deepPurpleAccent,),
                    ),
                  ),
                      
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                      onPressed: (){},
                      
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: Colors.blue,
                      ),
                      child: 
                       const Text("Create Account", style: TextStyle(fontSize: 20, color: Colors.white),
                       )),
                    ), 
                      
                    const Align(
                      alignment: Alignment.center,
                      child: Text("Or using another method", style: TextStyle(fontSize: 15, color: Colors.grey),)),
                      

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextField(
                        decoration: InputDecoration(
                          
                          hintText: "Sign in with Google",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          prefixIcon: Icon(FontAwesomeIcons.google),
                        ),
                                          ),
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Sign Up with Facebook",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          prefixIcon: Icon(FontAwesomeIcons.facebook, color: Colors.blue,),
                        ),
                      ),
                    ),
                  ),
                      
                  ],
                ),
              ),
            ),
        ),

      ),
    );
  }
}
