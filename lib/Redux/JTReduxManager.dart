import '../Global/JTGlobal.dart';
import 'package:flustars/flustars.dart';

export 'package:redux/redux.dart';
export 'package:flutter_redux/flutter_redux.dart';

class JTAppState {
  CardInfoModel infoModel;

  JTAppState(this.infoModel);
}

JTAppState appReducer(JTAppState state, action) {
  if (action is CardInfoModel) {
    state.infoModel = action;
    SpUtil.putObject(JTConstant.userInfoStoreKey, state.infoModel.toJson());
  }
  return state;
}
