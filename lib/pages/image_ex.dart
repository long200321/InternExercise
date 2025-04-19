import 'package:flutter/material.dart';
class ImageEx extends StatelessWidget {
  const ImageEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image & Decorate Exercise'),),
      body: SafeArea(child: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Image from local: '),
              SizedBox(width: MediaQuery.of(context).size.width/10,
              child: Image.asset('assets/images/image_ex.png',),),
              Padding(padding: EdgeInsets.symmetric(horizontal: 40)),
              Text('Image from network: '),
              Expanded(child:Image.network('https://antoinegtr.gallerycdn.vsassets.io/extensions/antoinegtr/flutter-icons/1.0.5/1689439648605/Microsoft.VisualStudio.Services.Icons.Default')
              ),
            ],
          ),
          Divider(),
          Text('Decoration:'),
          Container(
            width: 120,
            height: 100,
            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.all(
                Radius.circular(20)),
            boxShadow: [BoxShadow(color: Colors.grey,offset: Offset(5, 2),blurRadius: 2)]),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          Container(
            width: 220,
            height: 50,
            decoration: BoxDecoration(color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(20))
                ,boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 10,offset: Offset(-5, 1))],
                gradient: LinearGradient(colors: [Colors.white,Colors.red],begin: Alignment.topCenter,end: Alignment.bottomCenter)),
            child: Center(
              child: RichText(text: TextSpan(text: 'Decorate ',style: TextStyle(fontWeight: FontWeight.bold),children: [
                TextSpan(text: 'for '),
                TextSpan(text: 'Container',style: TextStyle(color: Colors.purple))
              ])),
            ))
        ],
      ),)),
    );
  }
}
