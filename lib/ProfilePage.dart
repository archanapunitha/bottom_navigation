import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.white60,
                  Colors.white,
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Login",style: TextStyle(
                    color: Colors.deepPurpleAccent,fontSize: 30,
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Welcome Back",style: TextStyle(
                    color: Colors.deepPurpleAccent,fontSize: 18,
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Column(
                      children: <Widget>[
                      /*  SizedBox(
                          height: 5.0,
                        ),*/
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(225, 95, 27, 53),
                                    blurRadius: 20,
                                    offset: Offset(0,10)
                                )],
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey[200]
                                      )),
                                ),
                                child: TextFormField(
                                  //controller: emailController,
                                  decoration: InputDecoration(
                                      hintText: "Email or Phone Number",
                                      icon: Icon(Icons.email),
                                      hintStyle: TextStyle(
                                          color: Colors.grey
                                      ),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey[200]
                                      )),
                                ),
                                child: TextFormField(
                                  //controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      icon: Icon(Icons.lock),
                                      hintStyle: TextStyle(
                                          color: Colors.grey
                                      ),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text("Forgot Password?",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          child: RaisedButton(
                            color: Colors.deepPurpleAccent,
                           /* onPressed: (){
                              setState(() {
                                isLoading=true;
                              });
                              signIn(emailController.text,passwordController.text);
                            },*/
                           shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text("Login",style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),

    );
  }
}
