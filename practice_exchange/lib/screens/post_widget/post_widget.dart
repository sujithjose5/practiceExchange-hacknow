import 'package:flutter/material.dart';
import 'package:practiceexchange/values/values.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  String _title;
  String _articleBody;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildTitle() {
    return TextFormField(
      initialValue: '',
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        hintText: 'Title',
      ),
      validator: (String text) =>
          text.isNotEmpty ? null : 'Title should not be empty',
      style: TextStyle(
        fontSize: 18,
        color: AppColors.primaryText,
        fontWeight: FontWeight.w700,
        fontFamily: "Montserrat",
      ),
      onSaved: (String text) {
        setState(() {
          _title = text;
        });
      },
    );
  }

  Widget _buildArticleBody() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      initialValue: '',
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
            EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
        hintText: 'Yout text post (optional)',
      ),
      style: TextStyle(
        color: AppColors.accentText,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
      onSaved: (String text) {
        setState(() {
          _articleBody = text;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Color.fromRGBO(246, 81, 88, 1), //change your color here
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            icon: Icon(
              Icons.delete,
              color: Color.fromRGBO(246, 81, 88, 1),
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            padding: EdgeInsets.only(left: 20.0, right: 30.0),
            icon: Icon(
              Icons.save,
              color: Color.fromRGBO(246, 81, 88, 1),
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: _buildTitle(),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: _buildArticleBody(),
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 278),
              decoration: BoxDecoration(
                color: AppColors.primaryElement,
              ),
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
