import 'package:flutter_bloc/flutter_bloc.dart';

class UcellTabCubit extends Cubit<int> {
  UcellTabCubit() : super(0);
  void changeTabIndex(int newTabIndex) => emit(newTabIndex);
}