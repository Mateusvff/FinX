import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Calendario extends StatefulWidget {
  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: TextButton(
            child: Text(
              'Abrir calendário',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'NotoSans',
                color: Colors.white,
              ),
            ),
            onPressed: () async {
              final data = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2018),
                lastDate: DateTime(2022),
                locale: Locale("pt", "BR"),
              );
              if (data != null) {
                final datapt = //colocando data no padrão br
                    DateFormat(DateFormat.YEAR_MONTH_DAY, 'pt_Br').format(data);
                print(datapt);
              }
            },
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.date_range,
            color: Colors.white,
          ),
          onPressed: () async {
            final data = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2018),
              lastDate: DateTime(2022),
              locale: Locale("pt", "BR"),
            );
            if (data != null) {
              final datapt = //colocando data no padrão br
                  DateFormat(DateFormat.YEAR_MONTH_DAY, 'pt_Br').format(data);
              print(datapt);
            }
          },
        ),
      ],
    );
  }
}