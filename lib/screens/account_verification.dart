import 'package:flutter/material.dart';


class AccountVerificationPage extends StatefulWidget {
  const AccountVerificationPage({super.key});


  @override
  State<AccountVerificationPage> createState() => _AccountVerificationPagePageState();
}

class _AccountVerificationPagePageState extends State<AccountVerificationPage> {
  

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton
            (icon: const Icon(Icons.arrow_back), onPressed: ()=>Navigator.pop(context)),
            title: const Text("Verification", style: TextStyle(fontSize: 20, color: Colors.black),),
            
          ),
          
        
            body: Container(
              color: Colors.white,
        
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.indigo[800],
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Icon(
                          Icons.email_outlined, 
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
        
                 const Padding(
                   padding:  EdgeInsets.only(top: 50),
                   child: Text("Verification Code", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                 ),
        
                 const Text("We have sent the code verification to", style: TextStyle(fontSize: 15, color: Colors.grey),),
        
                 const Text("magdalena83@gmail.com", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),),
        
                 const Padding(
                   padding: EdgeInsets.only(top: 50),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Padding(
                                padding:  EdgeInsets.only(top: 20, left: 5),
                                child: TextField(
                                 decoration: InputDecoration(
                   labelText: "6",
                   constraints: BoxConstraints(maxWidth: 60),
                   filled: true,
                   fillColor: Colors.white,
                   border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(8)),
                                 
                                 ),
                           ),
                          ),
                              ),
                   
                              Padding(
                                padding:  EdgeInsets.only(top: 20, left: 5),
                                child: TextField(
                                 decoration: InputDecoration(
                   labelText: "3",
                   constraints: BoxConstraints(maxWidth: 60),
                   filled: true,
                   fillColor: Colors.white,
                   border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(8)),
                   
                                 ),
                           ),
                          ),
                              ),
                   
                              Padding(
                                padding:  EdgeInsets.only(top: 20, left: 5),
                                child: TextField(
                                 decoration: InputDecoration(
                   labelText: "8",
                   constraints: BoxConstraints(maxWidth: 60),
                   filled: true,
                   fillColor: Colors.white,
                   border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(8)),
                   
                                 ),
                           ),
                          ),
                              ),
                   
                              Padding(
                                padding:  EdgeInsets.only(top: 20, left: 5),
                                child: TextField(
                                 decoration: InputDecoration(
                   labelText: "1",
                   constraints: BoxConstraints(maxWidth: 60),
                   filled: true,
                   fillColor: Colors.white,
                   border: OutlineInputBorder(
                   borderRadius: BorderRadius.all(Radius.circular(8)),
                   borderSide: BorderSide(color: Colors.indigo),
                                 ),
                           ),
                          ),
                              ),
                    ],
                   ),
                 ),
        
                     Padding(
               padding: const EdgeInsets.only(top: 50, left: 5),
               child: ElevatedButton(
               onPressed: (){}, 
               style: ElevatedButton.styleFrom(
               backgroundColor: Colors.indigo,
               side: BorderSide.none,
               shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(24.0), // Set border radius
                  ),
                ),
               child: 
               const SizedBox(
               width: 320,
               height: 55,
               child: Padding(
                 padding: EdgeInsets.only(top: 10),
                 child: Text("Submit", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                 textAlign:  TextAlign.center,
                 ),
               ), 
             ),
          ),
         ),
        
         const Padding(
           padding:  EdgeInsets.only(top: 20),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didnt receive the code?", style: TextStyle(fontSize: 15, color: Colors.grey),),
              Text("Resend", style: TextStyle(fontSize: 15, color: Colors.indigo),)
            ],
           ),
         )
                ],
              ),
            
          ),
        
        ),
      ),
    );
  }
}
