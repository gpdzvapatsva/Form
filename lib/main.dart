import 'package:flutter/material.dart';

void main() =>  runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Forms"),
              centerTitle: true,
        ),
        body: MyCustomForm(),
      ),


    );
  }
}
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(

      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                iconColor: Colors.pinkAccent,
                hintText: 'Enter your name',
          labelText: 'Name'
              ),
            ),
            const SizedBox(height: 20.0,),
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  iconColor: Colors.pinkAccent,

                  hintText: 'Enter surname',
                  labelText: 'Surname'
              ),
            ),
            const SizedBox(height: 20.0,),
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  iconColor: Colors.pinkAccent,
                  hintText: 'Enter Phone number',
                  labelText: 'Phone'
              ),
            ),
            const SizedBox(height: 20.0,),
            TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  iconColor: Colors.amberAccent,
                  hintText: 'Enter date of birth',
                  labelText: 'Date Of Birth'
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextButton(
                onPressed: (){},
                child: const Text("submit"),
              ),
            )

          ],
        ),
      ),
    );
  }
}
