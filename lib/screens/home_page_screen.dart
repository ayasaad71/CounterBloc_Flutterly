import 'package:counter_flutterly/bloc/cubit.dart';
import 'package:counter_flutterly/bloc/cubit_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    CounterCubit cubit = BlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Counter App',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Press on the buttons to increment or decrement',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange[400]
            ),
          ),
          SizedBox(
            height : 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.deepOrange,
                child: Icon(Icons.remove),
                  onPressed: (){
                   cubit.decrement();
                  }
              ),
              SizedBox(
                width: 24,
              ),

              BlocConsumer<CounterCubit,CounterStates>(
                listener: (context,state) =>{},
                builder: (context,state) => Text(
                  state.counterValue.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),

              SizedBox(
                width: 24,
              ),

              FloatingActionButton(
                  backgroundColor: Colors.deepOrange,
                  child: Icon(Icons.add),
                  onPressed: (){
                    cubit.increment();
                  }
              ),
            ],
          ),

        ],
      ),
    );
  }
}
