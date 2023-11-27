import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget{
   const SignInScreen  ({Key?key}) : super(key: key);


  @override
 _SignInScreenState createState() => _SignInScreenState();
}



class _SignInScreenState extends State <SignInScreen>{
  bool passwordObscured=true;
  final  emailController= TextEditingController();
  final passwordController= TextEditingController();
  Future<FirebaseApp>_initializeApp()async{
    FirebaseApp firebaseApp= await Firebase.initializeApp();
    return firebaseApp;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder(
        future: _initializeApp(),
        builder: (context,snapshot) {
          if(snapshot.connectionState==ConnectionState.done){
            return SingleChildScrollView(
              child:  Container(
                height:  MediaQuery.of(context).size.height,
                    child:  Column(
                      children: [
                        ClipPath(clipper: CurvedCliper(),
                            child: Image(image: AssetImage('assets/images/books.jpeg'),
                          height: MediaQuery .of(context).size.height*0.4,
                            width:  double.infinity,
                            fit:  BoxFit.cover,),
                        ),
                        const SizedBox(height: 20,),
                        Text('TODEY',style: TextStyle(color: Theme.of(context).primaryColor,
                          fontWeight: FrontWeight.bold,
                          fontSize: 30,
                          letterSpacing: 2.0,

                        )
                        ),
                       Padding(
                         padding: const EdgeInsets.symmetric(
                           horizontal: 40,
                           vertical: 20,
                         ),
                         child: TextField(
                           controller:emailController,
                           decoration:  const InputDecoration(
                             hintText: 'Email',
                             prefixIcon: Icon(Icons.account_box,
                             ),
                             contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                             filled: true,
                             fillColor: Colors.white,
                           ),
                         ),
                       ),
                      ],
                    ),
              ),
            );
          }else {
          return const Center(child: CircularProgressIndicator(),
          );
          }
        },
      ),
    );
  }

}
