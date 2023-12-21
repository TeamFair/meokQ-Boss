part of 'account_time_edit_bloc.dart';

enum BusinessHour { open, close }

class AccountTimeEditState extends Equatable {
  final List<String> businessDays;
  final String open;
  final String close;

  const AccountTimeEditState({
    required this.businessDays,
    required this.open,
    required this.close,
  });

  static AccountTimeEditState init() {
    return const AccountTimeEditState(
      businessDays: [],
      open: '',
      close: '',
    );
  }

  AccountTimeEditState copyWith({
    List<String>? businessDays,
    String? open,
    String? close,
  }) {
    return AccountTimeEditState(
      businessDays: businessDays ?? this.businessDays,
      open: open ?? this.open,
      close: close ?? this.close,
    );
  }

  @override
  List<Object?> get props => [
        businessDays,
        open,
        close,
      ];
}
