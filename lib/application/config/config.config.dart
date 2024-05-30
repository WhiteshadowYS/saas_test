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
import 'package:saas/application/entry_point.dart' as _i4;
import 'package:saas/application/source/application/bloc/application_bloc.dart'
    as _i3;
import 'package:saas/sources/main/entry_point.dart' as _i5;

const String _ = '';

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
    gh.lazySingleton<_i3.ApplicationServices>(
        () => const _i3.ApplicationServices());
    gh.factory<_i4.EntryPoint>(
      () => _i5.EntryPointImpl(),
      registerFor: {_},
    );
    gh.lazySingleton<_i3.ApplicationBloc>(
        () => _i3.ApplicationBloc.getItFactory(gh<_i3.ApplicationServices>()));
    return this;
  }
}
