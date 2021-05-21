import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wmt_test_app/src/blocs/user_bloc.dart';
import 'package:wmt_test_app/src/models/user.dart';
import 'package:wmt_test_app/src/models/user_list.dart';
import 'package:wmt_test_app/src/utils/Utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserBloc _bloc;

  @override
  void initState() {
    _bloc = UserBloc();
    _bloc.add(GetUserListEvent("1", "25"));
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WMT User List App"),
      ),
      body: BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, state) {
          return state is ResponseState
              ? _userList(state.userList)
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }

  Widget _userList(UserList userList) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return _potraitView(userList);
      } else {
        return _landscapeView(userList);
      }
    });
  }

  Widget _potraitView(UserList userList) {
    return ListView.builder(
        itemCount: userList.users.length,
        itemBuilder: (context, index) {
          return _userItem(userList.users[index]);
        });
  }

  Widget _landscapeView(UserList userList) {
    return GridView.builder(
        itemCount: userList.users.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return _userItem2(userList.users[index]);
        });
  }

  Widget _userItem(User user) {
    return InkWell(
      onTap: () => _onTap(),
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  blurRadius: 20,
                  offset: Offset(0, 10))
            ]),
        height: 150,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          CachedNetworkImageProvider(user.picture.thumbnail))),
            ),
            SizedBox(
              width: 15.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${user.name.title} ${user.name.first} ${user.name.last}",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text("${user.email}"),
                Utils.getDob(user.dob.date, context)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _userItem2(User user) {
    return InkWell(
      onTap: () => _onTap(),
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.fromLTRB(15.0, 18.0, 15.0, 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.2),
                  blurRadius: 20,
                  offset: Offset(0, 10))
            ]),
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: CachedNetworkImageProvider(
                            user.picture.thumbnail))),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "${user.name.title} ${user.name.first} ${user.name.last}",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "${user.email}",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Utils.getDob(user.dob.date, context)
          ],
        ),
      ),
    );
  }

  void _onTap() {
    print("user tapped");
  }
}
