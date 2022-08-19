import 'package:flutter/material.dart';

class TopbarWidget extends StatelessWidget {
  const TopbarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: const Color.fromARGB(255, 205, 201, 205),
      height: 150,
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Watchlist',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.edit,
                  color: Colors.deepPurple,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.settings,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Text('My list ${index + 1}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
