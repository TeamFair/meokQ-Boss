part of 'account_bloc.dart';

enum TextType { address, phone }

enum BusinessHour { open, close }

class AccountState extends Equatable {
  final MyInformation myInformation;
  final bool editClicked;

  const AccountState({
    required this.myInformation,
    required this.editClicked,
  });

  static AccountState init() {
    return const AccountState(
      myInformation: MyInformation(
        logoUrl: '',
        questCount: 0,
        ticketCount: 0,
        address: '',
        businessDays: [],
        open: '',
        close: '',
        phone: '',
        changedLogoUrl: '',
        name: '',
        businessDaysString: '',
      ),
      editClicked: false,
    );
  }

  AccountState copyWith({
    MyInformation? myInformation,
    bool? editClicked,
  }) {
    return AccountState(
      myInformation: myInformation ?? this.myInformation,
      editClicked: editClicked ?? this.editClicked,
    );
  }

  @override
  List<Object?> get props => [
        myInformation,
        editClicked,
      ];
}
