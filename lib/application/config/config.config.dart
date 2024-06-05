// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:saas/application/router/app_router.dart' as _i3;
import 'package:saas/application/router/common_router.dart' as _i6;
import 'package:saas/sources/develop/router/enviroment_router.dart' as _i4;
import 'package:saas/sources/validation/router/enviroment_router.dart' as _i5;

const String _develop = 'develop';
const String _validation = 'validation';
const String _default = 'default';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AppRouter>(
      () => _i4.EnvironmentRouter(),
      registerFor: {_develop},
    );
    gh.factory<_i3.AppRouter>(
      () => _i5.EnvironmentRouter(),
      registerFor: {_validation},
    );
    gh.factory<_i3.AppRouter>(
      () => _i6.CommonRouter(),
      registerFor: {_default},
    );
    return this;
  }
}
