import 'package:bd_colling/android_version_model.dart';

///////////////////// this is search function
///input list & search id
///////// input list type androidVersion
//////// id type is int
AndroidVersion? searchItemAndroidDataList(
    {required List<AndroidVersion> allItemList, required int id}) {
  /////////////////// first find list contain id item
  var findId = allItemList.indexWhere((element) => element.id == id);
  ///////////// check item find or not find
  if (findId.isNegative) {
    /////////// item not find then return null
    return null;
  } else {
    ///////////// item is find than return item
    return allItemList[findId];
  }
}
