import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screen/animate_list/data/users_info.dart';

/// Este widget lo que permite es generar un animacion al añadir y al remover items de la lista , esto para evitar los saltos de ui que pueden ocurrir
/// al añadir o eliminar un item

/// Como nota : hay dos formas de  eliminar y añadir elementos a la lista:
///  1 : por medio de una GlobalKey como se hace en este ejemplo , ya que por medio de esta key se controlara toda la lista y no hara falta hacer referencia al context
///  2 : por medio del context ,  con AnimatedList.of(context) podemos añadir y eliminar , lo malo es que debemos hacer referencia al contexto dentro de la misma lista , desde otro contexto no tendra efecto en la lista

class AnimateListScreen extends StatelessWidget {
  static const name = 'animate_list_screen';
  const AnimateListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedListState> _key  = GlobalKey();

    final dataUsers = [...usersInfo];

    final  users = [];

    void addItem(){
      final user = dataUsers.removeLast();
      users.insert(0, user);
      _key.currentState!.insertItem(
        0,
        duration: const  Duration(milliseconds: 300)
      );
    }

    void removeItem ( int index ){
      users.removeAt(index);

      /// context

      // AnimatedList.of(context).removeItem(
      //     index,
      //     (context, animation) => const  ListTile(),
      //     duration: const Duration(milliseconds: 300)
      // );

      /// GlobalKey

      _key.currentState!.removeItem(
          index,
          (context, animation) =>   SizeTransition(
            sizeFactor:  animation ,
            child: const ListTile()

          ),
          duration: const Duration(milliseconds: 300)
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated list'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: addItem,
              icon: const Icon(Icons.add, color: Colors.blue,)
          )
        ],
      ),
      body: UserAnimatedList(listkey: _key, users: users , onRemoveItem: removeItem , ),
    );
  }
}

class UserAnimatedList extends StatelessWidget {
  final GlobalKey<AnimatedListState> listkey;
  final List users;
  final  void Function(int index) onRemoveItem;

  const UserAnimatedList({
    super.key,
    required this.listkey,
    required this.users,
    required this.onRemoveItem
  });


  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      initialItemCount: 0,
      key: listkey,
      itemBuilder: (context, index, animation) => SizeTransition(
        sizeFactor: animation,
        child: ListTile(
            title:  Text('${users[index]['first_name']} ${users[index]['last_name']}'),
            subtitle: Text('${users[index]['phone']}'),
            trailing: IconButton(onPressed: ()=> onRemoveItem(index), icon: Icon(Icons.delete , color: Colors.red.shade600,), )
        ),
      ),
    );
  }
}
