import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

   late List<User> listUsers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    listUsers = List.generate(10, (index) => User("Usser ${index + 1}", "${index + 1}"));
    listUsers.forEach((element) {
      print(element.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("List View Page"),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.blue,
          child: ListView.builder(
            itemCount: listUsers.length,
              itemBuilder: (_,index){
                // return Text("${listUsers[index].name}");
                return Card(
                  child: ListTile(

                    dense: false,
                    title: Text("Name: ${listUsers[index].name}"),
                    subtitle: Text("Age:  ${listUsers[index].age} dasdasdasdadasfsadasdasdadadasdaAdasd", maxLines: 1,),
                    leading: InkWell(
                        onTap: () => {

                        },
                        child: Image.network("https://i.pinimg.com/564x/79/d7/c8/79d7c8985525f65ca5055d386b3c4131.jpg")),
                  ),
                );
              }),
        ),
      ),
    );
  }
}


class User {
  String name;
  String age;

  User(this.name, this.age);

  @override
  String toString() {
    // TODO: implement toString
    return "Name ${name}, Age : ${age}";
  }
}
