import 'package:flutter/material.dart';

class ListContentCard extends StatefulWidget {
  final String subject;
  final String details;
  final DateTime? selectedTime;
  final int itemNumber;
  final bool itemstatus;
  final void transferData;

  const ListContentCard({
    super.key,
    required this.subject,
    required this.details,
    required this.selectedTime,
    required this.itemNumber,
    required this.itemstatus,
    required this.transferData,
  });

  @override
  State<ListContentCard> createState() => _ListContentCardState();
}

class _ListContentCardState extends State<ListContentCard> {
  @override
  Widget build(BuildContext context) {
    String txt = widget.selectedTime == null
        ? 'Date: N/A    Time: N/A'
        : 'Date: ${widget.selectedTime?.month}-${widget.selectedTime?.day}    Time: ${widget.selectedTime?.hour}:${widget.selectedTime?.minute}';

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/itemdetails',
          arguments: {
            'subject': widget.subject,
            'description': widget.details,
            'datetime': widget.selectedTime,
          },
        );
      },
      child: Card(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.subject,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(txt),
                ],
              ),
              Checkbox(
                value: widget.itemstatus,
                onChanged: (bool? newValue) {
                  setState(() {
                    widget.transferData;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
