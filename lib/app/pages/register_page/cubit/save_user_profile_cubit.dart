import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entity/request/profile/save_user_profile_request.dart';
import '../../../../domain/use_case/profile/save_user_profile_use_case.dart';
import 'save_user_profile_state.dart';

@injectable
class SaveUserProfileCubit extends Cubit<SaveUserProfileState> {
  SaveUserProfileCubit(this._saveUserProfileUseCase)
    : super(const SaveUserProfileState.initial());

  final SaveUserProfileUseCase _saveUserProfileUseCase;

  Future<void> saveUserProfile({
    required SaveUserProfileRequest request,
  }) async {
    emit(const SaveUserProfileState.loading());
    final response = await _saveUserProfileUseCase(request: request);
    response.fold(
      (l) => emit(SaveUserProfileState.error(l)),
      (r) => emit(const SaveUserProfileState.success()),
    );
  }
}
