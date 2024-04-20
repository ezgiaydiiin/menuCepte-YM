import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget{
  const TextLearnView({super.key});
  final String name='serpil';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center (
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
            Text(
            'welcome $name ${name.length}',
            semanticsLabel: 'ezgi',
            maxLines:2,
            overflow:TextOverflow.ellipsis,
            textAlign:TextAlign.center,
            style:ProjectStyles.welcomeStyle,
            ),
            const Text(
              ('welcome ezgi'),
              maxLines:2,
              overflow:TextOverflow.ellipsis,
              textAlign:TextAlign.center,
              style:TextStyle(wordSpacing: 2, 
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    height: 24,
                    color:Colors.red)
            ),
            Text(
              'hello world',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.green),
            )
        ]
        )    
        
      )
      
    );
  }
  
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    decoration: TextDecoration.underline,
    letterSpacing: 2,
    fontStyle: FontStyle.italic,
    color: Colors.blue,
    fontSize: 14,
    fontWeight: FontWeight.w600);
}