import 'package:flutter/material.dart';
import 'package:study_project/components/drawer_layout.dart';
import 'package:study_project/components/word_list_item.dart';
import 'package:study_project/spaces.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key})
  :super(
    key: key
  );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final wordsList = <String>[];
  final textFieldController = TextEditingController();
  
  String fetchWordList() {
    setState(() {
      String userText = textFieldController.text;
      textFieldController.clear();
      wordsList.add(userText);

    });
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: DrawerLayout(),
      ),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
          children: [
            SizedBoxComponent.verticalSpaceS30,
            Row(
              children: [
                SizedBoxComponent.horizontalSpaceS20,
                Expanded(
                  child: SizedBox(
                    height: 100,
                    child: TextField(
                      controller: textFieldController,
                      decoration: const InputDecoration(
                        labelText: 'Escreva uma palavra'
                      ),
                    )
                  ),
                ),
                IconButton(
                  iconSize: 30,
                  color: Colors.blue,
                  onPressed: () {
                    fetchWordList();
                  }, 
                  icon: const Icon(Icons.add)),
                SizedBoxComponent.horizontalSpaceS20,
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: wordsList.length,
                itemBuilder: (context, index) {
                  return WordListItem(word: wordsList[index]);
                },
              ),
            )
          ],
      ),
    );
  }
}