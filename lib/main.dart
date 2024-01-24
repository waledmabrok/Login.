import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _obscureText = true;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       // appBar: AppBar(),
        drawer: Drawer(),
        body:ListView(
          children:[
 Column(
   children: [
     SizedBox(height: 10,),
     Padding(
       padding: EdgeInsets.only(right: 90.0,top: 10),
       child: Text("Welcome Back!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
     ),
     SizedBox(height: 25,),
     Padding(
       padding: const EdgeInsets.only(left: 8.0),
       child: Text("Happy to see you again, login to continue where you left off",style: TextStyle(fontSize: 16),),
     ),
     SizedBox(height: 25,),

Column(
  children: [

//Email
    Padding(
      padding: const EdgeInsets.all(25.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        cursorColor: Colors.purple,
decoration: InputDecoration(
  label: Text('Email'),
hintText: "example@gmail.com",
  prefixIcon: Icon(Icons. email),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),

  ),

),
      ),
    ),
    //Password
    Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25,top: 25),

      child:

      TextFormField(
        keyboardType: TextInputType.visiblePassword,
        cursorColor: Colors.deepOrange,
        cursorHeight: 20,
         maxLength: 16 ,
        obscureText: _obscureText,

         decoration: InputDecoration(
           label: Text('Password'),

          hintText: "Password",
          prefixIcon: Icon(Icons. password),
           suffixIcon: IconButton(
             icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
             onPressed: () {
               setState(() {
                 _obscureText = !_obscureText;
               });},
    ),


          border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(20),

        ),

      ),

    ),
    ),


  Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text("Remember me",style: TextStyle(fontSize: 16),),
      ),
      Checkbox(value:check , onChanged: (val){
        setState(() {
          check = val! ;
        });
      }),

      Padding(
        padding: const EdgeInsets.only(left: 50.0),
        child: TextButton(onPressed:(){}, child: Text("Forgot password?",style: TextStyle(color: Colors.red,),)),
      ),
    ],
  ),

    //Button

    MaterialButton(
      padding: EdgeInsets.only(left: 50.0,right: 50), // تعيين الهامش الداخلي
      splashColor: Colors.pink,
      color: Colors.amber,
      onPressed: (){}, child:
    Text('Login',style: TextStyle(fontSize: 30,),),

    ),


SizedBox(height: 20,
),




        Divider(),
        Text("or continue with",style: TextStyle(fontSize: 15),),
        Divider(),
Row(children: [
 Padding(
   padding: const EdgeInsets.only(left: 100.0),
   child: InkWell( onTap: () {
     // يمكنك إضافة الكود الذي تريده هنا
     print('Image Clicked!');
   },child: Image.asset("Image/face.png",width: 80,height: 60,)),
 ),
 InkWell( onTap: () {
   // يمكنك إضافة الكود الذي تريده هنا
   print('Image Clicked!');
 },child: Image.asset("Image/google.png",width: 80,height: 60,)),
],),
    SizedBox(height: 30,),
  Padding(
    padding: const EdgeInsets.only(left: 70.0),
    child: Row(
      children: [
        Text("Don't have an account?",style: TextStyle(fontSize: 16),),
     TextButton(onPressed: (){}, child: Text("SignUp",style: TextStyle(fontSize: 16,color: Colors.cyan),))
      ],
    ),
  )
  ],

),

   ],



 ),






]
        ),

      ),


    );
  }
}
