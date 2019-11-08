// ignore: uri_does_not_exist
import 'package:flutter_huobi/pages/home/home_app_bar.dart' as myapp;
import 'package:flutter/material.dart';
import 'package:flutter_huobi/pages/search/search_page.dart';
import 'package:flutter_huobi/router.dart';

///首页，TAB页面，显示动态和推荐TAB
class HomePage extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print('build HomePage');
    return getWidget();
  }
}
var _tabs = ['XXX', 'XXXXX'];
DefaultTabController getWidget() {
 return  DefaultTabController(
   initialIndex: 0,
   length: _tabs.length,
   child: NestedScrollView(
     headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
       return<Widget> [
         SliverOverlapAbsorber(
           handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
           child: myapp.SliverAppBar(
             pinned: true,
             expandedHeight: 120.0,
             primary: true,
             titleSpacing: 0.0,
             backgroundColor: Colors.white,
             flexibleSpace: FlexibleSpaceBar(
               collapseMode: CollapseMode.pin,
               background: Container(
                 color: Colors.blue,
                 child: SearchTextFieldWidget(
                   hintText: 'search',
                   margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                   onTab: () {
                     Router.push(context, Router.emptyPage, 'dsafdsafadf');
                   },
                 ),
                 alignment: Alignment(0.0, 0.0),
               ),
             ),
             // The "forceElevated" property causes the SliverAppBar to show
             // a shadow. The "innerBoxIsScrolled" parameter is true when the
             // inner scroll view is scrolled beyond its "zero" point, i.e.
             // when it appears to be scrolled below the SliverAppBar.
             // Without this, there are cases where the shadow would appear
             // or not appear inappropriately, because the SliverAppBar is
             // not actually aware of the precise position of the inner
             // scroll views.
             bottomTextString: _tabs,
             bottom: TabBar(
               // These are the widgets to put in each tab in the tab bar.
               tabs: _tabs
                   .map((String name) => Container(
                 child: Text(
                   name,
                 ),
                 padding: const EdgeInsets.only(bottom: 5.0),
               ))
                   .toList(),
             ),
           ),
         ),
       ];
     },
     body: TabBarView(
       // These are the contents of the tab views, below the tabs.
       children: _tabs.map((String name) {
         return SliverContainer(
           name: name,
         );
       }).toList(),
     ),
   ),
 );
}

class SliverContainer extends StatefulWidget {
  final String name;

  SliverContainer({Key key, @required this.name}) : super(key: key);

  @override
  _SliverContainerState createState() => _SliverContainerState();
}
class _SliverContainerState extends State<SliverContainer> {
  @override
  void initState() {
    super.initState();
    print('init state${widget.name}');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text("emptydsafas");
  }
}
