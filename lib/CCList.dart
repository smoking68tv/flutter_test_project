import 'package:cct1/CCData.dart';
import 'package:flutter/material.dart';

class CCList extends StatelessWidget {

  List<CCData> data = [
    CCData(name: 'Bitcoin', symbol: 'BTC', rank: 1, price: 6000.0),
    CCData(name: 'Etherium', symbol: 'ETH', rank: 2, price: 200.0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome CC Tracker'),
      ),
      body: Container(
        child: ListView(
          children: _buildList(),
        ),
      ),
    );
  }

  List<Widget> _buildList(){
    return data.map((CCData f) => ListTile(
      title: Text(f.name),
      subtitle: Text(f.symbol),
      leading: CircleAvatar(
        child: Text(f.rank.toString()),
      ),
      trailing: Text('\$${f.price.toString()}'),
    )).toList();
  }

}