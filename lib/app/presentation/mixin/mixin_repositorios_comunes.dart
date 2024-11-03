import 'package:get_it/get_it.dart';

import '../../domain/repositories/conectivity_repository.dart';
import '../../domain/repositories/native_repository.dart';
import '../../domain/repositories/sesion_repository.dart';

mixin RepositoriosComunes {
  ConectivityRepository get connectivityRepository {
    return GetIt.instance<ConectivityRepository>();
  }

  NativeRepository get nativeRepository {
    return GetIt.instance<NativeRepository>();
  }

  SesionRepository get sesionRepository {
    return GetIt.instance<SesionRepository>();
  }
  //


}
