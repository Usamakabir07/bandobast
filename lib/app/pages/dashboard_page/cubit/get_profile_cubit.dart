import 'package:bandobast/app/pages/dashboard_page/cubit/get_profile_state.dart';
import 'package:bandobast/domain/use_case/profile/get_user_profile_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProfileCubit extends Cubit<GetProfileState> {
  GetProfileCubit(this._getUserProfileUseCase)
      : super(const GetProfileState.loading());
  final GetUserProfileUseCase _getUserProfileUseCase;

  Future<void> getUserProfile() async {
    emit(const GetProfileState.loading());
    final response = await _getUserProfileUseCase();
    response.fold((error) => emit(GetProfileState.error(error)), (data) {
      if (!isClosed) {
        return emit(GetProfileState.success(userProfile: data));
      }
    });
  }
}
