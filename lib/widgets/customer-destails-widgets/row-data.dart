import 'package:flutter/material.dart';

class AddRow extends StatelessWidget {
  const AddRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 360,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildRow('Pay Request Number', 'INV-000001'),
            _buildRow('Created By', 'aaib mpgs'),
            _buildRow('Date', '2023 Mar 13'),
            _buildRow('Due Date', '2023 Mar 13'),
            _buildRow('Customer', 'test2 test'),
            _buildRow('Paid Status', 'Unpaid'),
            _buildRow('Due Amount', 'EGP10.00'),
            _buildRow('Amount', 'EGP10.00'),
            _buildActivitiesRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivitiesRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Activities',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),

              // SizedBox(height: 4),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 20,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.copy,
                    size: 20,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
