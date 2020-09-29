import 'package:atividade_03part1/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
/*

    Contact c = Contact();
    c.name = "Ana";
    c.email = "ana@email";
    c.phone = "11111111";
    c.img = "teste";

    helper.saveContact(c).then((contact){
      print(contact);
    });
*/

    helper.getContact(2).then((c){
      c.email = "ana123465@gmail.com";
      helper.updateContact(c);
    });

    helper.getAllContacts().then((list){
      print(list);
    });


  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
