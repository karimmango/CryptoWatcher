import 'package:freezed_annotation/freezed_annotation.dart';
part 'portfolio.freezed.dart';

@freezed
// ignore: camel_case_types
abstract class portfolio with _$portfolio {
  const factory portfolio(
      {required String price,
      required String amount,
      required String name}) = _portfolio;

  double get_total() {
    return double.parse(this.price) * double.parse(this.amount);
  }
}
