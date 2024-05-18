import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:user_login/src/page/google.dart';
import 'package:user_login/src/page/facebook.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xff262626),
        appBar: AppBar(
          backgroundColor: Color(0xff262626),
          title: const Text("Login"),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    cursorColor: Colors.pink,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline_outlined,
                        color: Colors.pink,
                      ),
                      prefixIconColor: Colors.pink,
                      suffixIcon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Color(0xff262626),
                      hintText: "E-mail",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.pink)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.white)),
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.black)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    cursorColor: Colors.pink,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.vpn_key_outlined,
                        color: Colors.pink,
                      ),
                      prefixIconColor: Colors.pink,
                      suffixIcon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Color(0xff262626),
                      hintText: "Passward",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.pink),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.white),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2.0, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          color: Color(0xff262626),
          width: double.infinity,
          height: 200,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        minimumSize: Size(300, 50)),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/Google");
                    },
                    child: const Text(
                      "Google",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(300, 50),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("/Facebook");
                    },
                    child: const Text(
                      "FaceBook",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
