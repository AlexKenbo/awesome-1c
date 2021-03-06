import 'package:flutter/material.dart';

class ItemsListWidget extends StatelessWidget {
  
  const ItemsListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
    ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: 100000,
      itemBuilder: (BuildContext context, int index) =>
        _ItemListTile(index),
    );
}

class _ItemListTile extends StatelessWidget {
  final int index;
  _ItemListTile(this.index);

  @override
  Widget build(BuildContext context) =>
    Card(
      child: ListTile(
        title: SizedBox(
          height: 25,
          child: Text('Index #$index'),
        ),
        subtitle: const SizedBox(
          height: 75,
          child: Placeholder(),
        ),
        onTap: () {

        },
      ),
    );
}
