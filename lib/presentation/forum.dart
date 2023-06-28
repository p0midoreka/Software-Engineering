import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasky_flutter/data/forumdatabase.dart';
import 'package:tasky_flutter/presentation/infoforum.dart';
import 'package:intl/intl.dart';

import 'addarticle.dart';

class Forum extends StatefulWidget {
  late String login;

  Forum({required this.login});

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Forum> with TickerProviderStateMixin {
  TabController? _tabController;
  DatabaseHelperForum mForum = DatabaseHelperForum.instance;
  ArticleFirebase mForumFire = ArticleFirebase();
  late List<String> idUser = [];
  Future<List<Article>>? _questions;
  List<Article>? _retrievedQuestions;
  Future<List<Article>>? _myQuestions;
  List<Article>? _retrievedMyQuestions;
  final String _avatar = "images/avatar.jpg";

  _initLike() async {
    idUser = await mForum.getNotes();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _initData();
    _questions = mForumFire.getArticleList(widget.login);
    _myQuestions = mForumFire.getArticleListUser(widget.login);
  }

  Future getListArticle() async {
    _retrievedQuestions = (await mForumFire.getArticleList(widget.login));
    _retrievedMyQuestions = await mForumFire.getArticleListUser(widget.login);
  }

  Future<void> _refreshData() async {
    await _initData();
    setState(() {});
  }

  Future<void> _initData() async {
    await getListArticle();
    await _initLike();
  }

  String formatDate(String dateString) {
    DateTime date = DateFormat('yyyy-MM-dd – HH:mm').parse(dateString);

    String formattedTime = DateFormat('HH:mm').format(date);
    String formattedDate = DateFormat('dd MMMM yyyy').format(date);

    return '$formattedTime, $formattedDate';
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Форум",
            style: GoogleFonts.comfortaa(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                setState(() {
                  if (value == 'time') {
                    if (_tabController?.index == 0) {
                      _retrievedQuestions
                          ?.sort((a, b) => b.date.compareTo(a.date));
                    } else {
                      _retrievedMyQuestions
                          ?.sort((a, b) => b.date.compareTo(a.date));
                    }
                  } else if (value == 'like') {
                    if (_tabController?.index == 0) {
                      _retrievedQuestions
                          ?.sort((a, b) => b.likes.compareTo(a.likes));
                    } else {
                      _retrievedMyQuestions
                          ?.sort((a, b) => b.likes.compareTo(a.likes));
                    }
                  }
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'time',
                  child: Text(
                    'По дате',
                    style: GoogleFonts.comfortaa(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'like',
                  child: Text(
                    'По лайкам',
                    style: GoogleFonts.comfortaa(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
              icon: Transform.rotate(
                angle: 90 * 3.1415926535 / 180,
                child: const Icon(
                  Icons.compare_arrows_rounded,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30.0),
            child: Column(
              children: [
                Column(
                  children: [
                    TabBar(
                      controller: _tabController,
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            "Публикации",
                            style: GoogleFonts.comfortaa(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Мои Публикации",
                            style: GoogleFonts.comfortaa(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AddArticle(
                    article: Article(
                        id: '',
                        login: widget.login,
                        title: '',
                        desc: '',
                        date: '',
                        likes: 0,
                        anonim: false),
                    isEdit: false,
                    login: widget.login,
                  ))).then((value) => {
            if (value != null && value == true) {_refreshData()}
          });
        },
        elevation: 0,
        backgroundColor: const Color(0xFF93D7FF),
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        RefreshIndicator(
          onRefresh: () async { await _refreshData();  },
          child: FutureBuilder(
            future: _questions,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting || _retrievedQuestions == null) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('Ошибка: ${snapshot.error}');
              }
              else {
                return SingleChildScrollView(
                  child: Column(
                      children: _retrievedQuestions!
                          .map((question) {
                      bool isFavorite = false;
                       isFavorite = idUser.contains(question.id);
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PostScreen(
                                    article: question,
                                    login: widget.login,
                                    likes: idUser,
                                  ))).then((value) => {
                            if (value != null && value == true)
                              {_refreshData()}
                          });
                        },
                        child: Container(
                          height: 230,
                          margin: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                    Colors.black26.withOpacity(0.05),
                                    offset: const Offset(0.0, 6.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 0.10)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          CircleAvatar(
                                              radius: 16,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(50),
                                                child: Image.asset(_avatar),
                                              )
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    question.anonim ?
                                                    Text(
                                                      "Анонимная Капибара",
                                                      style: GoogleFonts.comfortaa(
                                                        color: Color(0xff7e7c7c),
                                                        fontSize: 18,
                                                      ),
                                                    )
                                                        : Text(
                                                      question.login,
                                                      style: GoogleFonts.comfortaa(
                                                        color: Color(0xff7e7c7c),
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 2.0),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width * 0.65,
                                                  child: Text(
                                                    question.title.length >= 20 ? '${question.title.substring(0, 20)}..' : question.title,
                                                    style: GoogleFonts.comfortaa(
                                                      color: const Color(0xff111111),
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 120,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey.withOpacity(0.5),
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        question.desc.length >= 281 ? '${question.desc.substring(0, 281)}..' : question.desc,
                                        style: const TextStyle(
                                          color: Color(0xff111111),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.favorite,
                                          color: isFavorite ? Colors.red.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                          size: 22,
                                        ),
                                        const SizedBox(width: 4.0),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text(
                                            "${question.likes} like",
                                            style: GoogleFonts.comfortaa(
                                              fontSize: 14,
                                              color: const Color(0xff7e7c7c),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 120.0),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text(
                                            formatDate(question.date),
                                            style: GoogleFonts.comfortaa(
                                              color: const Color(0xff7e7c7c),
                                              fontSize: 14,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );})
                          .toList()),
                );
              }
            },
          ),
        ),
        RefreshIndicator(
          onRefresh: () async {
            await _refreshData();
          },
          child: FutureBuilder(
            future: _myQuestions,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting ||
                  _retrievedMyQuestions == null) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('Ошибка: ${snapshot.error}');
              } else {
                return SingleChildScrollView(
                  child: Column(
                      children: _retrievedMyQuestions!
                          .map((question) {
                        bool isFavorite = false;
                          isFavorite = idUser.contains(question.id);
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PostScreen(
                                    article: question,
                                    login: widget.login,
                                    likes: idUser,
                                  ))).then((value) => {
                            if (value != null && value == true)
                              {_refreshData()}
                          });
                        },
                        child: Container(
                          height: 230,
                          margin: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                    Colors.black26.withOpacity(0.05),
                                    offset: const Offset(0.0, 6.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 0.10)
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 50,
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          CircleAvatar(
                                              radius: 16,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(50),
                                                child: Image.asset(_avatar),
                                              )
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(left: 15.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    question.login,
                                                    style: GoogleFonts.comfortaa(
                                                      color: const Color(0xff7e7c7c),
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 2.0),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width * 0.65,
                                                  child: Text(
                                                    question.title.length >= 20 ? '${question.title.substring(0, 20)}..' : question.title,
                                                    style: GoogleFonts.comfortaa(
                                                      color: const Color(0xff111111),
                                                      fontSize: 15,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      PopupMenuButton<String>(
                                        itemBuilder:
                                            (BuildContext context) =>
                                        <PopupMenuEntry<String>>[
                                          const PopupMenuItem<String>(
                                            value: 'delete',
                                            child: Text('Удалить'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'edit',
                                            child: Text('Редактировать'),
                                          ),
                                        ],
                                        onSelected: (String value) async {
                                          switch (value) {
                                            case 'delete':
                                              _refreshData();
                                              await mForumFire
                                                  .deleteArticle(
                                                  question.id,
                                                  question.login);
                                              break;
                                            case 'edit':
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddArticle(
                                                        article: Article(
                                                          id: question.id,
                                                          login: widget.login,
                                                          title:
                                                          question.title,
                                                          desc: question.desc,
                                                          date: question.date,
                                                          likes: 0,
                                                          anonim: false,
                                                        ),
                                                        isEdit: true,
                                                        login: widget.login,
                                                      ),
                                                ),
                                              ).then((value) {
                                                if (value != null &&
                                                    value == true) {
                                                  _refreshData();
                                                }
                                              });
                                              break;
                                          }
                                        },
                                        child: Icon(
                                          Icons.more_vert,
                                          color: Colors.grey
                                              .withOpacity(0.6),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.grey.withOpacity(0.5),
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        question.desc.length >= 281 ? '${question.desc.substring(0, 281)}..' : question.desc,
                                        style: TextStyle(
                                          color: Color(0xff111111),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.favorite,
                                          color: isFavorite ? Colors.red.withOpacity(0.6) : Colors.grey.withOpacity(0.6),
                                          size: 22,
                                        ),
                                        SizedBox(width: 4.0),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text(
                                            "${question.likes} like",
                                            style: GoogleFonts.comfortaa(
                                              fontSize: 14,
                                              color: Color(0xff7e7c7c),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 120.0),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5),
                                          child: Text(
                                            formatDate(question.date),
                                            style: GoogleFonts.comfortaa(
                                              color: Color(0xff7e7c7c),
                                              fontSize: 14,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );})
                          .toList()),
                );
              }
            },
          ),
        ),
      ]),
    );
  }
}
