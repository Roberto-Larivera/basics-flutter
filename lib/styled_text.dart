import 'package:flutter/material.dart';
/*
 var può far riassegnare il valore della variabile,
 ma non può cambiare il tipo di variabile.

  const non può essere utilizzzato se al sul interno del widget 
  viene utilizzato una variabile che può cambiare di valore,
 */
// var color = Colors.white;

/*
  in caso la variabile la vuoi inizializzare vuota devi assegnarli il tipo
  di variabile che sarà per non avere problemi di compilazione e bug
*/
// Colors? color;

/*
  si può utilizzare const se la variabile non deve essere cambiata e che può essere salvata al momento della 
  compilazione per ottimizare
*/
// const color = Colors.white;

/*
  si può utilizzare final se la variabile non deve essere cambiata e che può essere salvata al momento della 
  compilazione per ottimizzare, ma non può essere utilizzata se al suo interno viene utilizzata una variabile
  che può cambiare di valore
*/
// final color = Colors.white;

class StyledText extends StatelessWidget {
  const StyledText(this.text,{super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
