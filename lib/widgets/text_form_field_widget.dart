import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:punworld_app/widget_styles/widget_style.dart';
class TextFormFieldWidget extends StatelessWidget {
  String? labelTitle;
  String? input;
  bool obscureText= false;
  int maxLine = 1;
  Function(String)? onChanged;
  String? errorMessage;

  TextFormFieldWidget({super.key,
    this.labelTitle,
    this.obscureText=false,
    this.input,
    this.onChanged,
    this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:50,
      width: MediaQuery.of(context).size.width/3,
      child: TextFormField(
        maxLines: maxLine,
        decoration: InputDecoration(

          label: Text(labelTitle??'',style: WidgetStyle.labelTextForm,),
        ),
        obscureText: obscureText,
        onChanged: onChanged,
        validator: (value){
          if(value?.isEmpty??true){
            return errorMessage;
          }
          return null;
        },
      ),
    );
  }

}