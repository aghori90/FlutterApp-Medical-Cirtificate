

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'loginScreen.dart';

class ApplicantDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ApplicantState();
  }
}

class _ApplicantState extends State<ApplicantDetail> {
  // bool isRememberMe = false; // Widget buildRememberCb(): value
  var _districts = ['Ranchi', 'Gumla', 'Khunti'];
  var _currentItemSelected = 'Ranchi'; // for dropdown

  String tittle = 'Date Picker';
  DateTime _date = DateTime.now();
  // todo: datePicker Function
  Future<Null> _selectDate(BuildContext context) async {
    DateTime _datepicker = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(1947),
        lastDate: DateTime(2050),
        initialDatePickerMode: DatePickerMode.day,
        // todo: button color change and picked up color change
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(
              primaryColor: Color(0xFFC41A3B),
              accentColor: Color(0xFFC41A3B),
            ),
            child: child,
          );
        });
    if (_datepicker != null && _datepicker != _date)
      setState(() {
        _date = _datepicker;
        print(
          _date.toString(),
        );
      });
  }

  // todo: Name Widget
  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Name',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Name',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                )),
          ),
        )
      ],
    );
  }

  // todo: Fathers Widget
  Widget buildFatherName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Father Name',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.person,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Father\'s Name',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                )),
          ),
        )
      ],
    );
  }

  // todo: Mobile Widget
  /*Widget buildMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Mobile',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height:5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.phone,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Mobile',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                )
            ),
          ),
        )
      ],
    );
  }*/

  // todo: DOB Widget
  Widget buildDOB() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'DOB',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.datetime,
            readOnly: true,
            onTap: () {
              setState(() {
                _selectDate(context);
              });
            },
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.calendar_today,
                  color: Color(0xff5ac18e),
                ),
                // labelText: 'Select Date',  _date.toString()
                hintText: 'DOB',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                )),
          ),
        )
      ],
    );
  }

  // todo: Aadhaar No Widget
  Widget buildAadhaar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Aadhaar No.',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.web_sharp,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Aadhaar No.',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                )),
          ),
        )
      ],
    );
  }

// todo: District Widget
  Widget buildDistrict() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'District',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2))
              ]),
          height: 50,
          padding: EdgeInsets.all(7.0),
          child: DropdownButton<String>(
            hint: Text("Select District"),
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36,
            underline: SizedBox(),
            isExpanded: true,
            style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.bold,
            ),
            items: _districts.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: _currentItemSelected,
            onChanged: (String newValueSelected) {
              // todo: code to be executed here when menu is selected
              _onDropDownItemSelected(newValueSelected); // go down for function
            },
          ),
        ),
      ],
    );
  }

// todo: Block Widget
  Widget buildBlock() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Blocks',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2))
              ]),
          height: 50,
          padding: EdgeInsets.all(7.0),
          child: DropdownButton<String>(
            hint: Text('Select District'),
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36,
            underline: SizedBox(),
            isExpanded: true,
            style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.bold,
            ),
            items: _districts.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: _currentItemSelected,
            onChanged: (String newValueSelected) {
              // todo: code to be executed here when menu is selected
              _onDropDownItemSelected(newValueSelected); // go down for function
            },
          ),
        ),
      ],
    );
  }

// todo: Village Widget
  Widget buildVillage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Village',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2))
              ]),
          height: 50,
          padding: EdgeInsets.all(7.0),
          child: DropdownButton<String>(
            hint: Text('Select District'),
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36,
            underline: SizedBox(),
            isExpanded: true,
            style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.bold,
            ),
            items: _districts.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            value: _currentItemSelected,
            onChanged: (String newValueSelected) {
              // todo: code to be executed here when menu is selected
              _onDropDownItemSelected(newValueSelected); // go down for function
            },
          ),
        ),
      ],
    );
  }

// todo: Height Widget
  Widget buildHeight() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Height',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.height,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Height(without shoes)',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                )),
          ),
        )
      ],
    );
  }

// todo: Weight Widget
  Widget buildWeight() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Weight',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.accessibility,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Weight',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                )),
          ),
        )
      ],
    );
  }

// todo: Dept Widget
  Widget buildDepartment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Department',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 50,
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.account_balance,
                  color: Color(0xff5ac18e),
                ),
                hintText: 'Department Name',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                )),
          ),
        )
      ],
    );
  }

// todo: Submit Button
  Widget buildSubmitBt() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () => debugPrint('Submit Button Pressed'),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        child: Text(
          'Submit',
          style: TextStyle(
            color: Color(0xff5ac18e),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

// todo: SignUp Button
  Widget buildSignUpBtn() {
    return GestureDetector(
      // onTap: () => print('Login Pressed'),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      },
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: 'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ))
      ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Applicant Details'),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0x665ac18e),
                    Color(0x995ac18e),
                    Color(0xcc5ac18e),
                    Color(0xff5ac18e),
                  ])),
              child: Form(
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 10),
                      buildName(),
                      SizedBox(height: 10),
                      buildFatherName(),
                      SizedBox(height: 10),
                      buildDOB(),
                      SizedBox(height: 10),
                      buildAadhaar(),
                      SizedBox(height: 10),
                      buildDistrict(),
                      SizedBox(height: 10),
                      buildBlock(),
                      SizedBox(height: 10),
                      buildVillage(),
                      SizedBox(height: 10),
                      buildHeight(),
                      SizedBox(height: 10),
                      buildWeight(),
                      SizedBox(height: 10),
                      buildDepartment(),
                      SizedBox(height: 10),
                      buildSubmitBt(),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // todo: function for dropdown
  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}
