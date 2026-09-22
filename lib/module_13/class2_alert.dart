import 'package:flutter/material.dart';
class alert extends StatelessWidget {
  const alert({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlertDialog(){
      showDialog(context: context, builder: (context)=> AlertDialog(
        title: Text('Warning'),
        content: Text('Are You Want to Delete ?') ,
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Yes')),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('no')),

        ],
      ));
    }

    void showSimpleDialog() {
      showDialog(context: context, builder: (context)=> SimpleDialog(
        title: Text('Simple Dialog'),
        children: [

          Column(
            children: [
              Text('Enter Your Age'),
              TextField(),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Save')),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel')),
            ],
          )
        ],
      ));
    }

    void showSnackbar () {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Item Deleted'),
          action: SnackBarAction(label: 'Undo', onPressed: (){}
          ),
          ),
      );
    }
     void showBottomSheet() {
      showModalBottomSheet(context: context, builder: (context)=> Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Choose Option'),
            ListTile(
              title: Text('Option-1'),
            ),
            ListTile(
              title: Text('Option-2'),
            ),
            ListTile(
              title: Text('Option-3'),
            ),
            ListTile(
              title: Text('Option-4'),
            ),
            ListTile(
              title: Text('Option-5'),
            ),
          ],
        ),
      ));
     }
    return Scaffold(
      appBar: AppBar(title: Text('Alert'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  showAlertDialog();
                }, child: Text('Alert Dialog')),
            ElevatedButton(
                onPressed: (){
                  showSimpleDialog();
                }, child: Text('Simple Dialog')),
            ElevatedButton(
                onPressed: (){
                  showSnackbar();
                }, child: Text('Snackbar')), ElevatedButton(
                onPressed: (){
                  showBottomSheet();
                }, child: Text('bottomSheet')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add))

    );
  }
}
