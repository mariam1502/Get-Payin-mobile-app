import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class customerData extends StatefulWidget {
  const customerData({super.key});

  @override
  State<customerData> createState() => _customerDataState();
}

class _customerDataState extends State<customerData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              child: IconButton(
                  onPressed: () {
                    context.go('/customers-details');
                  },
                  icon: Icon(
                    Icons.arrow_drop_down_circle,
                    color: Color(0xFF009C95),
                    size: 30,
                  )),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Make it a circular container
              )),
          Column(
            children: [
              Text('hello'),
              Text('data'),
            ],
          )
        ],
      ),
    );
  }
}
