import 'package:flutter/material.dart';

int Function(Users a, Users b) alphabeticalOrder =
    (a, b) => a.name.compareTo(b.name);

class Users {
  Users(
      {this.name,
      this.age,
      this.profilePic,
      this.id,
      this.isFriend = false,
      this.isFaculty = false,
      this.isOnline});
  String name;
  int age;
  String profilePic;
  int id;
  bool isFriend;
  bool isOnline;
  bool isFaculty;
// @override
// bool operator ==(Object other) {
//   if (other is Users) {
//     return this.id == other.id;
//   }
//   return false;
// }
}

final List<Users> totalUsers = [
  Users(
      name: 'Lorem Ipsum',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU',
      id: 1),
  Users(
      name: 'Emma',
      age: 22,
      profilePic:
          'https://economictimes.indiatimes.com/thumb/msid-69381991,width-1200,height-900,resizemode-4,imgsize-594328/hacker-1.jpg?from=mdr',
      id: 2),
  Users(
      name: 'Olivia',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTfGXDQ85qGxgmxCrM4LBaEAw-1j4J07QIy9A&usqp=CAU',
      id: 3),
  Users(
      name: 'Isabella',
      age: 12,
      profilePic:
          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      id: 4),
  Users(
      name: 'Sophia',
      age: 12,
      profilePic:
          'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
      id: 5),
  Users(
      name: 'Lucy',
      age: 12,
      profilePic:
          'https://i.pinimg.com/236x/5f/c7/d8/5fc7d8d6463524ded094cb037d81b0dd.jpg',
      id: 6),
  Users(
      name: 'Genesis',
      age: 12,
      profilePic:
          'https://images.unsplash.com/photo-1459245330819-1b6d75fbaa35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
      id: 7),
  Users(
      name: 'Derry Payne',
      age: 12,
      profilePic:
          'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
      id: 8),
  Users(
      name: 'Trevor Shah',
      age: 12,
      profilePic:
          'https://images.unsplash.com/photo-1532074205216-d0e1f4b87368?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
      id: 7,
      isFriend: true),
  Users(
      name: 'Alessandro Ritter',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS_qs3FGfbQC7dYtcJD7fhp5NnmG5d18bhSkA&usqp=CAU',
      id: 9,
      isFriend: true),
  Users(
      name: 'Milena Thompson',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQxvyJUMOCmsvvkBZk8Wttu5npdcdKVjCM9cQ&usqp=CAU',
      id: 10),
  Users(
      name: 'Kinga Johnson',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTUIE7MZAcG_Dq3TVof1tHAYLUSSq1y-nGrDQ&usqp=CAU',
      id: 11),
  Users(
      name: 'Osian Osborn',
      age: 12,
      profilePic:
          'https://upload.wikimedia.org/wikipedia/commons/1/13/Daniel_Ingram_Profile.png',
      id: 12),
  Users(
      name: 'Richie Wilkinson',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTW_aeJhJhvNPcgrfF_KGAqg-zCqvRd0TX8ug&usqp=CAU',
      id: 13,
      isFaculty: true,
      isFriend: true),
  Users(
      name: 'Fred Norris',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSV6uQBQHLHVcjOGBndkvkVklEQ8b514NEAfA&usqp=CAU',
      id: 14),
  Users(
      name: 'Kyal Underwood',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTLWOcCzHJxvx2xekAd5Kip8JVBGINSlHm2DA&usqp=CAU',
      id: 15),
  Users(
      name: 'Zofia Acosta',
      age: 12,
      profilePic:
          'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg',
      id: 16),
  Users(
      name: 'Burhan Pace',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5V62Uih1yX7jnD6zjtc3XgFqYGTY4HjQXiA&usqp=CAU',
      id: 17,
      isFaculty: true),
  Users(
      name: 'Patricia Deleon',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQJVJ4wkf0nJUvX7KrqIU8adY83cjJMcjnSnQ&usqp=CAU',
      id: 18,
      isFaculty: true),
  Users(
      name: 'Carole Cleveland',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQrlKcdwod16MovfTt1lDo4fxlpwAnfHpROvA&usqp=CAU',
      id: 19,
      isFaculty: true),
];

List<Users> friendsAndFaculty = [
  Users(
      name: 'Lorem Ipsum',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRBwgu1A5zgPSvfE83nurkuzNEoXs9DMNr8Ww&usqp=CAU',
      id: 1),
  Users(
      name: 'Emma',
      age: 22,
      profilePic:
          'https://economictimes.indiatimes.com/thumb/msid-69381991,width-1200,height-900,resizemode-4,imgsize-594328/hacker-1.jpg?from=mdr',
      id: 2),
  Users(
      name: 'Olivia',
      age: 12,
      profilePic:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTfGXDQ85qGxgmxCrM4LBaEAw-1j4J07QIy9A&usqp=CAU',
      id: 3),
  Users(
      name: 'Isabella',
      age: 12,
      profilePic:
          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      id: 4),
  Users(
      name: 'Sophia',
      age: 12,
      profilePic:
          'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
      id: 5),
  Users(
      name: 'Lucy',
      age: 12,
      profilePic:
          'https://i.pinimg.com/236x/5f/c7/d8/5fc7d8d6463524ded094cb037d81b0dd.jpg',
      id: 6),
  Users(
      name: 'Genesis',
      age: 12,
      profilePic:
          'https://images.unsplash.com/photo-1459245330819-1b6d75fbaa35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
      id: 7),
];

List<Users> getMyFriends() {
  List<Users> friends = [];
  for (Users users in totalUsers) {
    if (users.isFriend) {
      friends.add(users);
    }
  }
  friends.sort(alphabeticalOrder);
  return friends;
}

class MainAppDb extends ChangeNotifier {
  List<Users> myFriends;
  var lengthOfUsers = 0;
  var isToastVissible = true;
  int selectedIndex = 0;

  MainAppDb() {
    this.myFriends = getMyFriends();
    lengthOfUsers = myFriends.length;
  }

  bool addToFav(Users data) {
    for (Users users in myFriends) {
      if (users.id == data.id) {
        return false;
      }
    }
    myFriends.add(data);
    lengthOfUsers = myFriends.length;
    notifyListeners();
    return true;
  }

  void updateSelectedPersion(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void updateToasVissible(bool isVissible) {
    isToastVissible = isVissible;
    notifyListeners();
  }

  bool removeUser(int index) {
    if (myFriends.length < index) return false;
    myFriends.removeAt(index);
    lengthOfUsers = myFriends.length;
    notifyListeners();
    return true;
  }
}
