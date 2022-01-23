import 'package:agenda_sqlite/app/my_app.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final lista = [
    {
      'nome': 'Luís Edicle',
      'telefone': '99 99123-5033',
      'avatar':
          'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_960_720.png'
    },
    {
      'nome': 'Maxwane Barroso',
      'telefone': '99 99999-0000',
      'avatar':
          'https://cdn.pixabay.com/photo/2021/01/17/09/11/woman-5924366_960_720.jpg'
    },
    {
      'nome': 'Camila B. V. Lima',
      'telefone': '99 98888-9900',
      'avatar':
          'https://cdn.pixabay.com/photo/2022/01/14/09/09/woman-6936784_960_720.jpg'
    },
    {
      'nome': 'Evelyn B. V. Lima',
      'telefone': '99 99899-9977',
      'avatar':
          'https://cdn.pixabay.com/photo/2022/01/11/14/29/child-6930731_960_720.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Contatos.'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyApp.CONTACT_FORM);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i) {
          // var contato = lista[i];
          var avatar = const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2022/01/11/14/29/child-6930731_960_720.png'),
          );
          return ListTile(
            leading: avatar,
            title: const Text('Jesus'),
            trailing: Container(
              width: 100,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
