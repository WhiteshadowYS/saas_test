import 'package:injectable/injectable.dart';
import 'package:saas/application/entry_point.dart';

const env = '';

@Injectable(as: EntryPoint, env: [env])
class EntryPointImpl implements EntryPoint {
  @override
  Future<void> execute() async {}
}
