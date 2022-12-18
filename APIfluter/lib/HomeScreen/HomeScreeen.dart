import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Contatos'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final email = user['email'];
            final name = user['name']['first'];
            return ListTile(
              leading: CircleAvatar(child: Text('${index+1}'),
              foregroundColor : Colors.white,
              backgroundColor: Colors.green),
              title: Text(name),
              subtitle: Text(email),
            );
          }),
      floatingActionButton: ElevatedButton(
        child: const Icon(Icons.add, size: 50,),
        
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.green
        ),

        onPressed: Ussou,
      ),
    );
  }

  void Ussou() async {
    print('VC ussou o botão4');
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);

    setState(() {
      users = json['results'];
    });
    print('Ususario completo');
  }
}