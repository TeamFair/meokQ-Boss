import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/vo/quest/get_quest_vo.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';

part 'quest_event.dart';
part 'quest_state.dart';

class QuestBloc extends Bloc<QuestEvent, QuestState> {
  QuestBloc() : super(const QuestState(questList: [])) {
    on<InitAllQuest>(_initAllQuest);
  }

  final _remote = getIt<InterfaceRemote>();
  final _local = getIt<InterfaceLocal>();

  Future<void> _initAllQuest(
    InitAllQuest event,
    Emitter<QuestState> emit,
  ) async {
    final marketId = _local.getKey(LocalStringKey.marketId) ?? '';
    final questList = await _remote.getQuests(marketId: marketId);

    emit(
      state.copyWith(
        questList: questList,
      ),
    );
  }
}
