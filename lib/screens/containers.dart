import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  const Containers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 50),
          height: 80,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: const Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Wallet',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'PKR125',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )),
        ),
        Container(
          height: 80,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: const Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Spent',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'PKR 2K+',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
