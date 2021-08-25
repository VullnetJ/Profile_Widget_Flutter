
import 'package:flutter/material.dart';

import 'label.dart';

class FlexS extends StatelessWidget {
  const FlexS({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible and Expanded'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ..._header(context, 'Expanded'),
          _buildExpanded(context),
          ..._header(context, 'Flexible'),
          _buildFlexible(context), 
          ..._header(context, 'Footer'),
          _buildFooter(context), 
        ],
      ),
    );
  }
}

Iterable<Widget> _header(BuildContext context, String text) {
  return [
    SizedBox(height: 10,),
    Text(
      text, 
      style: Theme.of(context).textTheme.headline2,
    ),
  ];
}
Widget _buildExpanded(BuildContext context) {
  return SizedBox(
    height: 120,
    child: Row(
      children: <Widget>[
        LabeledContainer(
          width: 100,
          color: Colors.purpleAccent,
          text: 'First 100', 
          textColor: Colors.black54,
        ),
        Expanded(
          child: LabeledContainer(
            color: Colors.green,
            text: 'The Remainder',
            textColor: Colors.white, 
            width: 100,
          ),
        ),
        LabeledContainer( 
          width: 100,
          color: Colors.yellow,
          text: 'width 100', 
          textColor: Colors.deepPurple,
        )
      ],
    ),
  );
}



Widget _buildFlexible(BuildContext context) {
  return SizedBox(
    height: 120,
    child: Row(
      children: [
        Flexible(
          flex: 1,
          child: LabeledContainer(
            color: Colors.orangeAccent,
            width: 100,
            textColor: Colors.green,
            text: 'Flexible',
          ),
        ),
        Flexible(
          child: LabeledContainer(
            color: Colors.green,
            width: 120,
            textColor: Colors.black,
            text: 'Flexible 2',
            ),
        ),
        Flexible(
          child: LabeledContainer(
            color: Colors.blue,
            width: 150,
            textColor: Colors.orangeAccent.shade200,
            text: 'Flexible 3',
            ),
          )
      ],
    ),
  );
}
Widget _buildFooter(BuildContext context) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(42),
      ),
      child: Padding(padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 40,
      ),
      child: Text(
        'At the bottom',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      ),
    ),
  );
}