import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/data_source/utils/storage_service.dart';

part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final StorageService _storageService;

  AuthCubit(this._storageService) : super(AuthInitial());

  Future<void> loadCredentials() async {
    final credentials = await _storageService.getCredentials();
    if (credentials.isNotEmpty) {
      emit(AuthLoggedIn(phone: credentials['phone']!));
    } else {
      emit(AuthLoggedOut());
    }
  }

  Future<void> saveCredentials(String phone) async {
    await _storageService.saveCredentials(phone);
    emit(AuthLoggedIn(phone: phone));
  }

  Future<void> logout() async {
    await _storageService.removeCredentials();
    _storageService.clearAllPokemons();
    emit(AuthLoggedOut());
  }
}
