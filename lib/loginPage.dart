import 'package:flutter/material.dart';

void main() {
  runApp(const loginPage());
}

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ekranBil=MediaQuery.of(context);
    final double ekranYuk=ekranBil.size.height;
    final double ekranGen=ekranBil.size.width;
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Center(
        child: Column(
          children: [
            Padding(padding:
            EdgeInsets.all(ekranYuk/25),
              child:SizedBox(
                width: ekranGen/2,
                height: ekranYuk/2,
                child: Container(
                  child: Image.asset("resimler/loginn.png"),

                ),
              ) ,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(ekranYuk/100),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white70,borderRadius:BorderRadius.circular(10.0)),
                  width: ekranGen/(1.1),
                  height: ekranYuk/17,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.0,top: 6.0,bottom: 4.0),
                    child: Text("User Name", style: TextStyle(fontSize:ekranYuk/33,color: Colors.black38)),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(ekranYuk/100),
                child: Container(
                  decoration: BoxDecoration( color: Colors.white70,borderRadius:BorderRadius.circular(10.0)),
                  width: ekranGen/(1.1),
                  height: ekranYuk/17,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.0,top: 6.0,bottom: 4.0),
                    child: Text("Password", style: TextStyle(fontSize:ekranYuk/33,color: Colors.black38)),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Login",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                shadowColor: Colors.black,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(color: Colors.red),
                ),
              ),
              onPressed: (){
                print("Sucsess");
              },
            ),
          ],
        ),
      ),
    );
  }
}