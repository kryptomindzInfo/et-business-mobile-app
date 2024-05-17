
class AppData {
  static final AppData instance = AppData._internal();
  AppData._internal();
  String? _token;
  String? get token => _token;
  setToken(String token) {
    _token = token;
  }
//   ProfileModel? _user;
//   ProfileModel? get user=>_user;
//   setUser(ProfileModel user){
// _user=user;
//   }
}
