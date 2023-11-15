import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_cunbit_state.dart';

class CartCubit extends Cubit<int> {
  CartCubit() : super(0);

  void addItemToCart() {
    emit(state + 1);
  }
}
