import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  const CustomList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      'https://images.unsplash.com/photo-1647436929276-43fa809c907c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80',
      'https://images.unsplash.com/photo-1579656592043-a20e25a4aa4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
      'https://images.unsplash.com/photo-1647436929276-43fa809c907c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80',
    ];

    return ListView(
      children: [
        const Text('List',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ...List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(
                      0.0,
                      4,
                    ),
                  )
                ],
                image: DecorationImage(
                  image: NetworkImage(list[index]),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              height: 400,
              width: 275,
            ),
          ),
        )
      ],
    );
  }
}
