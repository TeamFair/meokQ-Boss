import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_information.freezed.dart';
part 'my_information.g.dart';

@freezed
class MyInformation with _$MyInformation {
  const factory MyInformation({
    required String logoUrl,
    required int questCount,
    required int ticketCount,
    required String address,
    required List<String> businessDays,
    required String open,
    required String close,
    required String phone,
  }) = _MyInformation;

  factory MyInformation.fromJson(Map<String, dynamic> json) =>
      _$MyInformationFromJson(json);
}
