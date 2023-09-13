import 'package:flutter_bloc/flutter_bloc.dart';

class MobiuzTabCubit extends Cubit<int> {
  MobiuzTabCubit() : super(0);
  void changeTabIndex(int newTabIndex) => emit(newTabIndex);
}