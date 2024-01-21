import 'package:flutter/material.dart';
import 'package:basics/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
/*
creare dei preset:
 cosi invece di passare dei paramentri di colore lo richiamiamo e lui inserisce quei valori
 es: GradientContainer.pinkTeal()
 invece di: GradientContainer(Color.fromARGB(255, 153, 7, 7),Color.fromARGB(255, 153, 68, 7))
*/
  const GradientContainer.pinkTeal({super.key})
      : color1 = Colors.pinkAccent,
        color2 = Colors.tealAccent;

  const GradientContainer.oceanBlue({super.key})
      : color1 = Colors.blue,
        color2 = Colors.cyanAccent;

  final Color color1;
  final Color color2;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [color1, color2]),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// hello word
// import 'package:basics/styled_text.dart';
// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.color1, this.color2, {super.key});
// /*
// creare dei preset:
//  cosi invece di passare dei paramentri di colore lo richiamiamo e lui inserisce quei valori
//  es: GradientContainer.pinkTeal()
//  invece di: GradientContainer(Color.fromARGB(255, 153, 7, 7),Color.fromARGB(255, 153, 68, 7))
// */
//   const GradientContainer.pinkTeal({super.key})
//       : color1 = Colors.pinkAccent,
//         color2 = Colors.tealAccent;

//   const GradientContainer.oceanBlue({super.key})
//       : color1 = Colors.blue,
//         color2 = Colors.cyanAccent;

//   final Color color1;
//   final Color color2;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [color1, color2]),
//       ),
//       child: const Center(
//         child: StyledText('Hello World!'),
//       ),
//     );
//   }
// }

// use List<Color> colors
// class GradientContainer extends StatelessWidget {
//   // 1 metodo
//   // const GradientContainer({Key? key}) : super(key: key);
//   // 2 metodo
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: colors,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('Hello World!'),
//       ),
//     );
//   }
// }
