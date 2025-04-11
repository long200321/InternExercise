import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  Order order = Order();
  String? _validItemRequire(String value){
    return value.isEmpty ? 'Item Require' : null;
  }
  String? _validItemCount(String value){
    int getParseValue = value.isEmpty ? 0 : int.parse(value);
    return getParseValue ==0? 'At least one Item Require' : null;
  }
  void _submitOrder() {
    if(_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      print('Order Item: ${order.item}');
      print('Order Quantity: ${order.quantity}');
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(body: SafeArea(child: SingleChildScrollView(child: Column(
      children: [
        Form(
          key: _formStateKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextFormField(validator: (value) {_validItemRequire(value!);},
                    onSaved: (value) => order.item = value,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Espresso',
                    labelText: 'Item'),),
                TextFormField(validator: (value){_validItemCount(value!);},
                    onSaved: (value) => order.quantity = int.parse(value!),
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '2',
                    labelText: 'Quantity'),),
                ElevatedButton(onPressed: _submitOrder, child: Text('data'))
              ],
            ),
          ),
        ),
      ],
    ),)),);
  }
}

class Order{
  String? item;
  int? quantity;
}
