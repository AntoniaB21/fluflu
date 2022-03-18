import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CarouselImages extends HookWidget {
  CarouselImages({
    Key? key,
  }) : super(key: key);

  final List<String> list = [
    'https://images.unsplash.com/photo-1647436929276-43fa809c907c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80',
    'https://images.unsplash.com/photo-1579656592043-a20e25a4aa4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
    'https://images.unsplash.com/photo-1647436929276-43fa809c907c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=930&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> currentIndex = useState(0);
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Welcome',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 40,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      currentIndex.value = index;
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: currentIndex.value == index
                              ? Colors.black
                              : Colors.grey,
                        ),
                        child: Center(
                          child: Text(
                            'Image ${index + 1}',
                            style: TextStyle(
                              color: currentIndex.value == index
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  image: NetworkImage(list[currentIndex.value]),
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
        ],
      ),
    ));
  }
}
