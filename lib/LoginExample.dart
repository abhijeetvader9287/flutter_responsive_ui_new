import 'package:flutter/material.dart';
import 'package:flutter_app/util.dart';

class LoginExample extends StatefulWidget {
  @override
  _LoginExampleState createState() => _LoginExampleState();
}

class _LoginExampleState extends State<LoginExample> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: SafeArea(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return ListView(

              children: <Widget>[
                Padding(
                  padding:   EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal*(orientation == Orientation.portrait ? 5.0 : 5.0),
                    vertical:  SizeConfig.safeBlockVertical*(orientation == Orientation.portrait ? 5.0 : 2.5),
                  ),
                  child: FlutterLogo(
                    size:SizeConfig.safeBlockHorizontal*(orientation == Orientation.portrait ? 25.0 : 12.0),
                  ),
                ),
                SizedBox(

                  height:  SizeConfig.safeBlockHorizontal*(orientation == Orientation.portrait ? 15.0 : 4.0),
                ),
                Padding(
                  padding:   EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal*(orientation == Orientation.portrait ? 5.0 :15.0),
                    vertical:  SizeConfig.safeBlockVertical*(orientation == Orientation.portrait ? 1.0 : 2.5),
                  ),

                  child: TextFormField(
                    decoration: InputDecoration(hintText: "phone"),
                  ),
                ),
                Padding(
                  padding:   EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal*(orientation == Orientation.portrait ? 5.0 : 15.0),
                    vertical:  SizeConfig.safeBlockVertical*(orientation == Orientation.portrait ? 1.0 : 2.5),
                  ),
                  child: TextFormField(

                    decoration: InputDecoration(hintText: "password"),
                  ),
                ),
                SizedBox(
                  height:  orientation == Orientation.portrait ?65.0 : 25.0,
                ),
                Padding(
                  padding:   EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal*(orientation == Orientation.portrait ? 25.0 : 35.0),
                    vertical:  SizeConfig.safeBlockVertical*(orientation == Orientation.portrait ? 1.0 : 2.5),
                  ),
                  child: RaisedButton(
                    color: Colors.yellow,
                    onPressed: () {},
                    child: Text("Signin"),
                  ),
                ),
                Padding(
                  padding:   EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal*(orientation == Orientation.portrait ? 25.0 : 35.0),
                    vertical:  SizeConfig.safeBlockVertical*(orientation == Orientation.portrait ? 1.0 : 2.5),
                  ),
                  child: RaisedButton(
                    color: Colors.red,
                    onPressed: () {},
                    child: Text("Signup"),
                  ),
                ),
                SizedBox(
                  height:  SizeConfig.safeBlockHorizontal*(orientation == Orientation.portrait ? 12.0 : 4.0),
                ),
                SizedBox( height:  SizeConfig.safeBlockHorizontal*(orientation == Orientation.portrait ? 10.0 : 4.0),
                    child: Center(child: Text("need help ?")))
              ],
            );
          },
        ),
      ),
    );
  }
}
