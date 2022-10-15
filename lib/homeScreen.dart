import 'package:flutter/material.dart';
import 'package:udf_architecture/HomeViewModel.dart';
import 'package:udf_architecture/events.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  var homeViewModel = HomeViewModel();
    return
    
      ValueListenableBuilder(
     valueListenable: homeViewModel.homeState,
     builder: ( context, state, child){
return   Scaffold(
      appBar: AppBar( 
        title: 
       
 Text(state.title! ,)
  
        
        ,
        actions: [
          TextButton(onPressed: (){
            homeViewModel.onEvent(SetBusyEvent());
          }, child: const Text('Set Busy' , style: TextStyle(
            color: Colors.white
          ),))
        ],
      ),
      body: SizedBox.expand(

        child: Column(
          children: [
   
Visibility(
  visible: state.isLoading!,
  child: 

const Center(
  child: CircularProgressIndicator(),
)
)
 ,

 TextField(
   onChanged: (str){
homeViewModel.onEvent(
  ChangeTitleEvents(
    str
  )
);
   },
   onSubmitted: (str){
homeViewModel.onEvent(
  ChangeTitleEvents(
    str
  )
);
   },
  decoration: InputDecoration
  ( hintText: 'New Title'),
 )


          ],
        ),
      ),
    );
  }
  );
    
   
  }
}