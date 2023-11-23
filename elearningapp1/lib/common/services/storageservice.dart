import 'package:elearningapp1/common/values/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService{
   late SharedPreferences pref;

    Future<StorageService> init()async{
      pref = await SharedPreferences.getInstance();
      return this;
    }

    setBool(String key,bool value)async{
      return await pref.setBool(key, value);
    }

    bool getDeviceFirstOpen(){
      return pref.getBool(AppConstants.STORAGE_DEVICE_OPEN_FIRST_TIME)?? false;
    }


}