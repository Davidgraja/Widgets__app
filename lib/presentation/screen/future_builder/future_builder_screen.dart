import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widget_app/presentation/screen/future_builder/models/req_res_info.dart';

class FutureBuilderScreen extends StatelessWidget {
  static const String name = 'future_builder_screen';
  const FutureBuilderScreen({super.key});


  Future<ReqResInfo> getInfo() async{
    final url = Uri.parse('https://reqres.in/api/users?page=1');
    final res = await http.get(url);

    await Future.delayed(const Duration(seconds: 1));

    return  reqResInfoFromJson(res.body);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getInfo(),
        builder: (BuildContext context, AsyncSnapshot<ReqResInfo> snapshot) { 
          if(snapshot.connectionState == ConnectionState.done){
            return  _CustomListView(snapshot.data!.data);
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
         },
      ),
    );
  }
}


class _CustomListView extends StatelessWidget {

  final List<Usuario> usuarios;
  const _CustomListView( this.usuarios);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usuarios.length,
      itemBuilder: (context, index){
        final user = usuarios[index];
        return ListTile(
          title: Text('${user.firstName} ${user.lastName}'),
          subtitle: Text(user.email),
          trailing: FadeIn(
            duration: Duration(milliseconds: 100 * index),
            child: Image.network(user.avatar)
          ) ,
        
        );
      }
    );
  }
}