// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meokq_boss/core/injector/injector.dart';
// import 'package:meokq_boss/domain/repository/local/local_repository.dart';

// class ApplyStoreBloc extends Bloc<ApplyStoreEvent, ApplyStoreState> {
//   ApplyStoreBloc()
//       : super(
//           const ApplyStoreState(
//             bossState: false,
//             storeState: false,
//           ),
//         ) {
//     on<GetState>(_getState);
//   }

//   final localRepository = getIt<LocalRepository>();

//   void _getState(
//     GetState event,
//     Emitter<ApplyStoreState> emit,
//   ) async {
//     final applyState = localRepository.getApplyState();

//     emit(
//       state.copyWith(
//         bossState: applyState?.bossState,
//         storeState: applyState?.storeState,
//       ),
//     );
//   }
// }

// sealed class ApplyStoreEvent {}

// class GetState extends ApplyStoreEvent {}

// class ApplyStoreState extends Equatable {
//   final bool bossState;
//   final bool storeState;

//   const ApplyStoreState({
//     required this.bossState,
//     required this.storeState,
//   });

//   ApplyStoreState copyWith({
//     bool? bossState,
//     bool? storeState,
//   }) {
//     return ApplyStoreState(
//       bossState: bossState ?? this.bossState,
//       storeState: storeState ?? this.storeState,
//     );
//   }

//   @override
//   List<Object?> get props => [
//         bossState,
//         storeState,
//       ];
// }
