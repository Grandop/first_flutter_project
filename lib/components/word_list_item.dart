import 'package:flutter/material.dart';
import 'package:study_project/spaces.dart';

class WordListItem extends StatefulWidget {
  WordListItem({
    Key? key,
    required this.word,
    })
  :super(
    key: key
  );

  String word;

  @override
  State<WordListItem> createState() => _WordListItemState();
}

class _WordListItemState extends State<WordListItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBoxComponent.verticalSpaceS10,
        Row(
          children: [
            SizedBoxComponent.horizontalSpaceS20,
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 50,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      widget.word,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBoxComponent.horizontalSpaceS20,
          ],
        ),
      ],
    );
  }
}