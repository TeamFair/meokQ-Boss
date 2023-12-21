import 'package:meokq_boss/data/dto/login/login_dto.dart';
import 'package:meokq_boss/data/dto/market/market_dto.dart';
import 'package:meokq_boss/data/vo/login/login_vo.dart';
import 'package:meokq_boss/data/vo/market/markets_vo.dart';

abstract class InterfaceRemote {
  void updateRepository({
    List<Object?>? headers,
  });

  Future<LoginVO> login({required LoginDTO loginDTO});

  Future<MarketsVO> markets({required MarketDTO marketDTO});
}
