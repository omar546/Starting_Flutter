import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_rep/modules/counter/cubit/cubit.dart';
import 'package:messenger_rep/modules/counter/cubit/states.dart';

class CounterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(CounterInitialState()),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            appBar: AppBar(

              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              elevation: 0.0,
              titleSpacing: 20.0,
              leadingWidth: 0.0,
              title:Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: CircleAvatar(
                      radius: 15.0,
                      backgroundColor: Colors.grey[300]
                      ,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 16.0,

                      ),
                    ),
                  ),
                  Text(
                    'Counter',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),

                  ),
                ],
              ),
              actions: [IconButton(
                onPressed: (){
                  CounterCubit.get(context).reset();
                }
                ,
                icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.grey[300]
                  ,
                  child: Icon(
                    Icons.restart_alt_rounded,
                    color: Colors.black,
                    size: 18.0,

                  ),
                ),
              ),],

            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {if(CounterCubit.get(context).counter>(-99)){CounterCubit.get(context).minus();}else{CounterCubit.get(context).counter=(-99);}
                    },
                    icon: Transform.scale(
                      scale: 2.0,
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.grey[300]
                        ,
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 16.0,

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 300,horizontal: 20),
                    child: SizedBox(
                      width: 150.0, // Set your desired width here
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(20.0),
                            right: Radius.circular(20.0),
                          ),
                          color: Colors.grey[300],
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "${CounterCubit.get(context).counter}",
                            style: TextStyle(
                              fontSize: 64.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  IconButton(
                    onPressed: () {
                      if(CounterCubit.get(context).counter<999){CounterCubit.get(context).plus();}else{CounterCubit.get(context).counter=(999);}

                    },
                    icon: Transform.scale(
                      scale: 2.0,
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.grey[300]
                        ,
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 16.0,

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

