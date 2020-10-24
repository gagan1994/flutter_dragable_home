import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:provider/provider.dart';

import 'LocalDb.dart';

class TopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: DragTarget<Users>(
        builder: (context, incomming, rej) {
          return Container(
            color: Colors.black12,
            child: Consumer<MainAppDb>(
              builder: (context, localData, child) => ListView.builder(
                itemCount: localData.lengthOfUsers,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Users userItem = localData.myFriends[index];
                  print(
                      "ListUpdated: ${localData.myFriends.length},index: $index");
                  return GestureDetector(
                    onLongPress: () {
                      if (localData.removeUser(index)) {
                        _buildToast("Removed user from the list", context);
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Stack(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(userItem.profilePic),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: ClipOval(
                                child: Material(
                                  borderRadius: BorderRadius.circular(5),
                                  color: localData.selectedIndex == index
                                      ? Colors.white
                                      : Colors.transparent,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    margin: EdgeInsets.all(1),
                                    child: ClipOval(
                                      child: Material(
                                        borderRadius: BorderRadius.circular(5),
                                        color: localData.selectedIndex == index
                                            ? Color(0XFF86D533)
                                            : Colors.transparent,
                                        child: SizedBox(
                                          width: 10,
                                          height: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Provider.of<MainAppDb>(context)
                          .updateSelectedPersion(index);
                    },
                  );
                },
              ),
            ),
          );
        },
        onWillAccept: (data) => data is Users,
        onAccept: (data) {
          print("Accept ${data.name}");
          var isAdd = Provider.of<MainAppDb>(context).addToFav(data);
          _buildToast(
              isAdd
                  ? 'Added ${data.name} to list'
                  : "${data.name} exist unable to Add",
              context);
        },
        onLeave: (data) {},
      ),
    );
  }

  void _buildToast(String text, BuildContext context) {
    showToastWidget(
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black54,
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        position: StyledToastPosition(
          align: Alignment.bottomCenter,
          offset: MediaQuery.of(context).size.height * .1,
        ),
        duration: Duration(seconds: 2));
  }
}
