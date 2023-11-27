import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screen/dismissible/data/people.dart';

class DismissibleScreen extends StatefulWidget {
  static const name = 'dismissible';
  const DismissibleScreen({super.key});

  @override
  State<DismissibleScreen> createState() => _DismissibleScreenState();
}

class _DismissibleScreenState extends State<DismissibleScreen> {
  List<Map< String, dynamic>> contacts = [ ...people ]; 


  void onTogglePinned( int index ){
    setState(() {
    contacts[index]['pinned'] = !contacts[index]['pinned'];
    });
  }


  void onDeleteContact( int index ){
    setState(() {
    contacts.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text('Dismissible Widget'), centerTitle: true,),
      body: ListView.separated(
        itemCount: contacts.length ,
        separatorBuilder: (_, __) => const Divider(color: Colors.black12 , height: 2,) , 
        itemBuilder: (context, index) => ContactItem(contact: contacts[index] , index: index, onTogglePinned: onTogglePinned , onDeleteContact: onDeleteContact,)
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final Map<String, dynamic> contact;
  final int index;
  final Function onTogglePinned;
  final Function onDeleteContact;

  const ContactItem({
    super.key,
    required this.contact,
    required this.index,
    required this.onTogglePinned,
    required this.onDeleteContact
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background:  Container(
        color: Colors.red,
        alignment: Alignment.centerLeft,
        padding:  const EdgeInsets.only(left: 10),
        child:  const Icon(Icons.delete_outline_rounded , color: Colors.white,),
      ),
      secondaryBackground:  Container(
        color: Colors.blue,
        alignment: Alignment.centerRight,
        padding:  const EdgeInsets.only(right: 10),
        child:  const Icon(Icons.push_pin_outlined , color: Colors.white,),
      ),

      onDismissed: (direction) {
        if(direction == DismissDirection.startToEnd){
          onDeleteContact(index);
        }
      },

      confirmDismiss: (direction) async {
        if(direction == DismissDirection.endToStart){
          onTogglePinned(index);
          return false;
        }

        return true;
      },

      child: ListTile(
        leading: Icon( contact['pinned'] ? Icons.push_pin_outlined : Icons.circle_outlined),
        title: Text('${contact['first_name']} ${contact['last_name']}'),
        subtitle: Text(contact['phone']),
        dense: true,
      ),
    );
  }
}