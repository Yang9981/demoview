import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFieldDemo(),
          ],
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController=TextEditingController();
  final registerFormKey=GlobalKey<FormState>();
  String username,password;
  void submitRegisterForm(){
    registerFormKey.currentState.save();//保存信息
    registerFormKey.currentState.validate();//表单验证
    debugPrint('username:$username');
    debugPrint('password:$password');
  }
  String validateUserName(value){
    if(value.isEmpty){
      return 'UserName is required';
    }
    return null;
  }
  String validatePassWord(value){
    if(value.isEmpty){
      return 'password is required';
    }
    return null;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textEditingController.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.text='hi';
  }
  //
  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: validateUserName,//验证表单内容的格式
            autovalidate: true,//自动验证表单
            decoration: InputDecoration(
              labelText: 'UserName',
              helperText: '',
            ),
            onSaved: (value){
              username=value;
            },
          ),
          TextFormField(
            obscureText: true,//输入内容显示为圆形
            validator: validatePassWord, //验证
            autovalidate: true,//自动验证表单
            decoration: InputDecoration(
              labelText: 'PassWord',
              helperText: '',
            ),
            onSaved: (value){
              password=value;
            },
          ),
          SizedBox(height: 20,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.lightBlue,
              child: Text('Submit'),
              onPressed:submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}


