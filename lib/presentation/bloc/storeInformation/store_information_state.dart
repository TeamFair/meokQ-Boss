part of 'store_information_bloc.dart';

class StoreInformationState extends Equatable {
  const StoreInformationState({
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.time,
    required this.logo,
  });
  final String name;

  final String address;

  final String phoneNumber;

  final String time;

  final File logo;

  @override
  List<Object?> get props => [
        name,
        address,
        phoneNumber,
        time,
        logo,
      ];
}
