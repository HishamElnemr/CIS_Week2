import 'package:flutter/material.dart';
import 'package:note_app/widgets/dialog_widget.dart';
import 'package:note_app/widgets/list_tile_widget.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<ListTileWidget> notes = [
    const ListTileWidget(
      title: 'Communication System Quiz',
      subtitle: '10:00 AM',
    ),
    const ListTileWidget(
      title: 'OS Report',
      subtitle: '11:00 AM',
    ),
    const ListTileWidget(
      title: 'Buy Some Stuff',
      subtitle: '1:00 PM',
    ),
    const ListTileWidget(
      title: 'Go To Gym',
      subtitle: '2:00 PM',
    ),
    const ListTileWidget(
      title: 'Flutter Task',
      subtitle: '4:00 PM',
    ),
    const ListTileWidget(
      title: 'Flutter Task بردو',
      subtitle: '6:00 PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return ListTileWidget(
                title: notes[index].title,
                subtitle: notes[index].subtitle,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlerDialog(
                        onPressed: () {
                          setState(
                            () {
                              notes.removeAt(index);
                              Navigator.of(context).pop();
                            },
                          );
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
