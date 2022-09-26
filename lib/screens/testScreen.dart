import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:referon/models/login_model.dart';

class ExampleScreen extends StatefulWidget {

LoginScreenModel loginData;

   ExampleScreen({Key key, this.loginData}) : super(key: key);

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {


@override
  void initState() {
    // TODO: implement initState
    print(widget.loginData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}