import 'package:diagonal_scrollview/diagonal_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_explore/LocalDb.dart';
import 'package:provider/provider.dart';

class DraggableLayout extends StatelessWidget {
  final double _boxSize = 500.0;
  final Color _boxColor = Colors.white70;
  DiagonalScrollViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          DiagonalScrollView(
            enableZoom: true,
            minScale: 2,
            maxScale: 2,
            onCreated: (DiagonalScrollViewController controller) {
              _controller = controller;
              _controller.moveTo(location: Offset(50, 50), scale: 2);
            },
            child: Container(
              width: _boxSize + 30,
              height: _boxSize,
              color: _boxColor,
              child: Stack(
                children: _getChildren(),
              ),
            ),
          ),
          Consumer<MainAppDb>(
            builder: (context, mainDb, child) => mainDb.isToastVissible
                ? Positioned(
                    top: 50,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Text(
                            'We have 66 matches for you today',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              mainDb.updateToasVissible(false);
                            },
                            child: Icon(
                              Icons.clear,
                              size: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : Container(),
          )
        ],
      ),
    );
  }

  List<Widget> _getChildren() {
    List<Widget> children = [];
    double childSize = 50.0;
    double childMargin = 5;
    double tmpNumChildrenRow = _boxSize / childSize;
    num numChildren = (_boxSize - tmpNumChildrenRow * childMargin) / childSize;
    int userIndex = 0;
    for (num x = 0; x < numChildren; x++) {
      for (num y = 0; y < numChildren; y++) {
        var user = totalUsers[userIndex % totalUsers.length];
        userIndex++;
        Widget cube = Container(
          width: 50,
          height: 50,
          child: Draggable<Users>(
            data: user,
            feedback: Container(
              width: childSize + 100,
              height: childSize + 100,
              child: CircleAvatar(
                backgroundImage: NetworkImage(user.profilePic),
              ),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(user.profilePic),
            ),
          ),
        );

        children.add(Positioned(
          left: x % 2 == 0
              ? childMargin + (childMargin + childSize) * y
              : childMargin + (childMargin + childSize) * y + 30,
          top: childMargin + (childMargin + childSize) * x,
          child: cube,
        ));
      }
    }

    return children;
  }
}
