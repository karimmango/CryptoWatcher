// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:yeet/yeet.dart';

// import 'coin_bloc.dart';
// import 'crypto.dart';

// class asView extends HookWidget {
//   @override
//   Widget build(BuildContext context) {
//     final coinBloc = useProvider(coinBlocProvider);
//     final state = useProvider(coinBlocProvider.state);
//     return Scaffold(
//       floatingActionButton: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextField(
//                     onChanged: (value) {
//                       coinBloc.postContentChanged(value);
//                     },
//                     decoration: InputDecoration(hintText: 'Post'),
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.send),
//                     onPressed: () {
//                       postsBloc.postButtonPressed();
//           FloatingActionButton(
//             heroTag: 'first',
//             onPressed: () {
//               coinBloc.getCoinPressed('LTC');
//             },
//             child: Icon(Icons.ac_unit),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           FloatingActionButton(
//             heroTag: 'second',
//             onPressed: () {
//               context.yeet('/favorites');
//             },
//             child: Icon(Icons.favorite),
//           ),
//         ],
//       ),
//       body: Center(
//         child: state.when(
//           noCoin: () => Text('Press the button to get a coin'),
//           loading: () => CircularProgressIndicator(),
//           hasCoin: (coin) => CoinCard(
//             coin: coin,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CoinCard extends HookWidget {
//   final crypto coin;

//   CoinCard({required this.coin});

//   @override
//   Widget build(BuildContext context) {
//     final coin_bloc = useProvider(coinBlocProvider);
//     return Container(
//       height: 100,
//       child: Card(
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(coin.name),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
