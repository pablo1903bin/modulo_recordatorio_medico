mixin CookiesNativeMixin {

  List<String> parseCookies(List<Object?> params){

    return params
    .whereType<String>() 
    .map((element) => element) 
    .toList()
    .cast<String>(); 
  }
}