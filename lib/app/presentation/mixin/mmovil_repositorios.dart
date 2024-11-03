import 'package:get_it/get_it.dart';
import 'package:my_flutter_module/app/domain/repositories/authentication_repository.dart';
import 'package:my_flutter_module/app/domain/repositories/recordatorio_repository.dart';

import '../../domain/repositories/bloqueo_repository.dart';
import '../../domain/repositories/directorio_repository.dart';

mixin MmovilRepositorios {


  BloqueoRepository get bloqueoRepository {
    return GetIt.instance<BloqueoRepository>();
  }


  DirectorioRepository get directorioRepository {
    return GetIt.instance<DirectorioRepository>();
  }

    AuthenticationRepository get getAuthenticationRepository {
    return GetIt.instance<AuthenticationRepository>();
  }

  RecordatorioRepository get getRecordatorioRepository {
    return GetIt.instance<RecordatorioRepository>();
  }
}
