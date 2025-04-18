import 'package:flutter/material.dart';

class FormBasicDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FormBasicDemoState();
}

class _FormBasicDemoState extends State<FormBasicDemo>{

  final _formKey = GlobalKey <FormState>();
  String? _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form co ban"),
      ),

      body: Padding(
          padding: EdgeInsets.all(16),

          child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Ho va ten",
                  hintText: "Nhap ho va ten cua ban",
                  border: OutlineInputBorder(),
                ),
                onSaved: (value){
                  _name = value;
                },
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Xin chao $_name"))
                      );
                    }
                  },
                      child: Text("Submit")),
                  SizedBox(width: 20,),
                  ElevatedButton(onPressed: (){
                    _formKey.currentState!.reset();
                    setState(() {
                      _name = null;
                    });
                  },
                      child: Text("Reset")),
                ],
              )
            ],
          )
      ),
    ),
    );
  }
}