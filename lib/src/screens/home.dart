import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../bloc/bloc.dart';
import '../widgets/item_widget.dart';
import '../widgets/items_list_widget.dart';
import '../widgets/plug_scaffold.dart';

/// Домашний экран
class HomeScreen extends StatefulWidget {
  static const String route = '/home';

  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) =>
    PlugScaffold(
      title: '1C:Awesome',
      searchController: _textEditingController,
      createButtonCallback: () =>
        Provider.of<BlocHolder>(context)?.appBloc?.add(const HandleItemSelection()),
      child: const ItemsListWidget(),
      extraChild: const Center(
        child: ItemWidget(),
      ),
    );
}