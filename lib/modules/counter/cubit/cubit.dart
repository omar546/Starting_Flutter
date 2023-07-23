import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';
class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit(super.CounterInitialState);
  
static CounterCubit get(context) => BlocProvider.of(context);
int counter =0;
void minus()
{
  counter--;
  emit(CounterMinusState());
}

void plus()
{
  counter++;
  emit(CounterPlusState());

}

  void reset()
  {
    counter=0;
    emit(CounterMinusState());
  }


}