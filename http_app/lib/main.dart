
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  web() async {
  
  //print("cc");
  //var r = await http.get(Uri.http("192.168.56.103", "/cgi-bin/app.py"));
  var url = Uri.http("192.168.56.103", "/cgi-bin/app.py", {"x" : cmd});
  var response = await http.get(url);
  print(response.body);
  //print(cmd);
}
  late String cmd;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: Text("App"),
       
      ),
      body: Column(children: [
        Text("enter ur command "),
        TextField(
          onChanged: (value){
            cmd = value;
          },
          autocorrect: false,
          textInputAction: TextInputAction.send,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
             border:OutlineInputBorder(),
             prefixIcon: Icon(Icons.print),
             hintText: "enter command",
           ),),
        TextButton(onPressed: web, child: Text("click mee...")),
      ],)
      ),
      );
  }
}
