import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title:const Text('Simple Profile UI design in flutter'),backgroundColor: Colors.blueAccent,),
        body: Column(
          children:[ 
            Stack(
              
              children:[ 
            Container(width: double.infinity,height: 150,child: Image.network(fit: BoxFit.cover,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxpufJ0ds5Ou1x5cEypnVXP_zacqzclspNJA&s'),),
            Positioned(bottom: 5,right: 5,child: Container(height: 30,width: 150,decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border.all(width: 2,color: Colors.grey[100]!),
              borderRadius: BorderRadius.circular(10)
              ),child:const Row(children: [
              Icon(Icons.camera_alt),
             Text('Edit cover photo')
            ],),))
            ]),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  SizedBox(width: 5,),
                  Stack(
                    children:[const CircleAvatar(
                    radius: 50,backgroundColor: Colors.black,
                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/v2/D4D03AQGxQrwfkrMGFw/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1725352932195?e=1731542400&v=beta&t=Y7LHIth19jn_vv2wGRY6-MufMfjbD8_W9XzCPlXIv08'),),
                    Positioned(bottom: 0,right: 0,child:DecoratedBox(decoration:BoxDecoration(color: Colors.grey[200],shape: BoxShape.circle,) ,child:const Icon(Icons.camera_alt,) ,)),
                     ]
                   ),
                  const SizedBox(width: 10,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('First Name:',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Last Name:',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('email:',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('phone No:',style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Address:',style: TextStyle(fontWeight: FontWeight.bold),),
                    
                    
                    ],
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Saad'),
                        Text('Khan'),
                        Text('saadkan000@gmail.com',overflow:TextOverflow.ellipsis,),
                        Text('091111111111'),
                        Text('xyz,abc'),
                      ],
                    ),
                  )
                ],
              ),
            const Text(' 235 friends'),
            const Padding(
              padding: EdgeInsets.only(left: 110),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bio:',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('''       I am Saad Khan, a flutter     \n       developer.''')
                ],
              ),
            ),
            
            ],
          ),] 
        ),
      ),
    );
  }
}