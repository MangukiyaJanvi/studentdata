import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studentdata/screen/model/home_model.dart';
import 'package:studentdata/screen/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtid = TextEditingController();
  TextEditingController txtstd = TextEditingController();
  TextEditingController dtxtname = TextEditingController();
  TextEditingController dtxtid = TextEditingController();
  TextEditingController dtxtstd = TextEditingController();
  HomeProvider? h1;

  @override
  Widget build(BuildContext context) {
    h1 = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Text(
            "Student Data",
            style: TextStyle(color: Colors.pink.shade50),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: txtid,
                style: TextStyle(color: Colors.pink.shade900),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade50,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.pink.shade900, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.pink.shade50),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtname,
                style: TextStyle(color: Colors.pink.shade900),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade50,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.pink.shade900, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.pink.shade50),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: txtstd,
                style: TextStyle(color: Colors.pink.shade900),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade50,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.pink.shade900, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.pink.shade50),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  HomeModel m1 = HomeModel(
                      id: txtid.text, name: txtname.text, std: txtstd.text);
                  h1!.Add(m1);
                  txtid.clear();
                  txtstd.clear();
                  txtname.clear();
                },
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade50,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.pink.shade900),
                  ),
                ),
              ),
              Expanded(
                  child: Consumer<HomeProvider>(
                builder: (context, value, child) => ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade50,
                          border: Border.all(color: Colors.pink.shade900)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "${h1!.l1[index].id}",
                            style: TextStyle(color: Colors.pink.shade900),
                          ),
                          Text(
                            "${h1!.l1[index].name}",
                            style: TextStyle(color: Colors.pink.shade900),
                          ),
                          Text(
                            "${h1!.l1[index].std}",
                            style: TextStyle(color: Colors.pink.shade900),
                          ),
                          IconButton(
                            onPressed: () {
                              h1!.Delete(index);
                            },
                            icon: Icon(Icons.delete),
                            color: Colors.pink.shade900,
                          ),
                          IconButton(
                            onPressed: () {
                              dtxtid=TextEditingController(text: h1!.l1[index].id);
                              dtxtname=TextEditingController(text: h1!.l1[index].name);
                              dtxtstd=TextEditingController(text: h1!.l1[index].std);
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextFormField(
                                        controller: dtxtid,
                                        style: TextStyle(
                                            color: Colors.pink.shade900),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.pink.shade50,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.pink.shade900,
                                                width: 2),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.pink.shade50),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        controller: dtxtname,
                                        style: TextStyle(
                                            color: Colors.pink.shade900),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.pink.shade50,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.pink.shade900,
                                                width: 2),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.pink.shade50),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        controller: dtxtstd,
                                        style: TextStyle(
                                            color: Colors.pink.shade900),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.pink.shade50,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.pink.shade900,
                                                width: 2),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.pink.shade50),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          HomeModel m1 = HomeModel(
                                              id: dtxtid.text,
                                              name: dtxtname.text,
                                              std: dtxtstd.text);
                                          h1!.Update(m1, index);
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.pink.shade50,
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Update",
                                            style: TextStyle(
                                                color: Colors.pink.shade900),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            icon: Icon(Icons.edit),
                            color: Colors.pink.shade900,
                          ),
                        ],
                      ),
                    ),
                  ),
                  itemCount: h1!.l1.length,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
