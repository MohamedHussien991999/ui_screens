// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class Messenger_Screen_2 extends StatelessWidget {
  

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 20.0,
        elevation: 0.0,
        title: Row(
          children: const[
            CircleAvatar(
              backgroundImage: NetworkImage("https://media.istockphoto.com/photos/headshot-portrait-of-smiling-male-employee-in-office-picture-id1309328823?b=1&k=20&m=1309328823&s=170667a&w=0&h=a-f8vR5TDFnkMY5poQXfQhDSnK1iImIfgVTVpFZi_KU="),
              radius: 20.0,

            ),
            SizedBox(width: 15.0,)
            ,
            Text("Chats",style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold),),

          ],
        ),
         actions: [
          IconButton(
          onPressed: (){ },
           icon:   
            const CircleAvatar(
              radius: 15.0,
                backgroundColor: Colors.blue,
              child: Icon(
                
                Icons.camera_alt,
                color: Colors.white,
                size: 16.0,
          ),
           )
          ),
         
            IconButton(
          onPressed: (){ },
           icon:   
            const CircleAvatar(
              radius: 15.0,
                backgroundColor: Colors.blue,
              child: Icon(
                
                Icons.edit,
                color: Colors.white,
                size: 16.0,
          ),
           )
          ),
         
         ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all( 20.0),
        child: SingleChildScrollView(
          child: Column(          
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Search
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                   color: Colors.grey[300],
                ),
               
        
                child: Row(
                  children: const [               
                    Icon(Icons.search),
                    SizedBox( width: 10.0,),
                    Text("Search",),
                  ],
                ),
              )
              ,const SizedBox(height: 20.0,),

              //Stories
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => buildStoryItem() ),
                  itemCount: 10,
                  separatorBuilder: (context, index) =>  const SizedBox(width: 5.0,),
                  ),
              ),     
              const SizedBox(height: 30.0,),
              
              // Starting Of Messages 
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buidChatItem(),
                itemCount: 20,
                separatorBuilder: (context, index) => const SizedBox(height: 20.0,),
                )
            ],
          ),
        ),
      ),
      
    );
  }

  // 1. build Item
  // 2. build List
  // 3. add item to list

  Widget buidChatItem() =>  Row( children: [
                           Stack(
                                    alignment: AlignmentDirectional.bottomEnd,
                                    children: const [
                                        CircleAvatar(
                                                backgroundImage: NetworkImage("https://media.istockphoto.com/photos/headshot-portrait-of-smiling-male-employee-in-office-picture-id1309328823?b=1&k=20&m=1309328823&s=170667a&w=0&h=a-f8vR5TDFnkMY5poQXfQhDSnK1iImIfgVTVpFZi_KU="),
                                                radius: 30.0,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 4.0,right: 4.0),
                                          child: CircleAvatar(
                                                    backgroundColor: Colors.red,
                                                  radius: 5.0,
                                          ),
                                        ),
                    
                                            
                                    ],
                                      )
                            , const SizedBox(width: 20.0,)
                            ,Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Mohamed Hussien Mohamed Hussien Mohamed Hussien Mohamed HussienMohamed Hussien Mohamed Hussien",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),maxLines: 1,overflow: TextOverflow.ellipsis,),
                                  const SizedBox(height: 10.0,),
                                  Row(
                                    children:   [
                                       const Expanded(
                                         child: Text("Mohamed Hussien Mohamed HussienMohamed Hussien Mohamed Hussien Mohamed Hussien Mohamed HussienMohamed Hussien Mohamed HussienMohamed Hussien Mohamed HussienMohamed Hussien Mohamed HussienMohamed Hussien Mohamed Hussien",
                                         maxLines: 2 ,overflow: TextOverflow.ellipsis,),
                                       ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        child: Container(
                                          width: 7.0,
                                          height: 7.0,
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle
                                          ),
                                        ),
                                      ),     
                                       const Text("02:50 PM"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                      ],
                    );
                    
  Widget buildStoryItem()=> Container( 
                        width: 80.0,                 
                        child: 
                          Column(                                       
                            children:  [
                              Stack(
                                alignment: AlignmentDirectional.bottomEnd,
                                children: const [
                                    CircleAvatar(
                                            backgroundImage: NetworkImage("https://media.istockphoto.com/photos/headshot-portrait-of-smiling-male-employee-in-office-picture-id1309328823?b=1&k=20&m=1309328823&s=170667a&w=0&h=a-f8vR5TDFnkMY5poQXfQhDSnK1iImIfgVTVpFZi_KU="),
                                            radius: 30.0,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 4.0,right: 4.0),
                                      child: CircleAvatar(
                                                backgroundColor: Colors.red,
                                              radius: 5.0,
                                      ),
                                    ),
                
                                        
                                ],
                                  ),
                              const SizedBox(height: 5.0,),
                              const Text("Mohamed Hussien Mohamed Hussien",maxLines: 2,overflow: TextOverflow.ellipsis,)
                            ],
                        ),
                      );
                     
}