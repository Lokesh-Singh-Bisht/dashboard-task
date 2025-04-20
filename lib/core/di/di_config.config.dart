// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/repo/sensor/sensor_data_repo.dart' as _i26;
import '../../data/repo/sensor/sensor_data_repo_implementation.dart' as _i980;
import '../../data/service/sensor_data_service.dart' as _i261;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i261.SensorDataService>(() => _i261.SensorDataService());
    gh.factory<_i26.ISensorDataRepository>(
      () => _i980.SensorDataRepoImplementation(
        sensorDaraService: gh<_i261.SensorDataService>(),
      ),
    );
    return this;
  }
}
