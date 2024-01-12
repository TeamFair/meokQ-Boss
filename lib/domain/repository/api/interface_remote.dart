import 'package:meokq_boss/data/dto/login/login_dto.dart';
import 'package:meokq_boss/data/dto/market/apply_market/apply_market_dto.dart';
import 'package:meokq_boss/data/vo/login/login_vo.dart';
import 'package:meokq_boss/data/vo/market/apply_market/apply_market_vo.dart';
import 'package:meokq_boss/data/vo/market/market_vo.dart';

abstract class InterfaceRemote {
  void updateRepository({
    List<Object?>? headers,
  });

  Future<LoginVO> login({required LoginDTO loginDTO});

  Future<MarketVO> getMarkets();

  Future<ApplyMarketVO> applyMarkets({required ApplyMarketDTO applyMarketDTO});
}
