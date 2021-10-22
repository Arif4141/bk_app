import 'package:bk_app/utility/constant.dart';
import 'package:bk_app/utility/data_dummy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabelSiswa extends StatefulWidget {
  const TabelSiswa({Key? key}) : super(key: key);

  @override
  State<TabelSiswa> createState() => _TabelSiswaState();
}

class _TabelSiswaState extends State<TabelSiswa> {
  ScrollController _scrollController1 = ScrollController();
  ScrollController _scrollController2 = ScrollController();
  String dropdownValue = '12';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Siswa Terbaik Kelas: ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              DropdownButton<String>(
                dropdownColor: Colors.white,
                value: dropdownValue,
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                underline: Container(
                  height: 2,
                  color: Colors.transparent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['10', '11', '12']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          SingleChildScrollView(
            controller: _scrollController2,
            scrollDirection: Axis.horizontal,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(
                  label: Text("Nama"),
                ),
                DataColumn(
                  label: Text("Nilai"),
                ),
                DataColumn(
                  label: Text("Kelas"),
                ),
                DataColumn(
                  label: Text("Status"),
                ),
              ],
              rows: List.generate(
                siswaDummy.length,
                (index) => recentFileDataRow(siswaDummy[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(InfoSiswa fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Tooltip(
          message: fileInfo.nama.toString(),
          child: Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.black54,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(fileInfo.nama!),
              ),
            ],
          ),
        ),
      ),
      DataCell(
        Text(fileInfo.nilai.toString()),
      ),
      DataCell(
        Row(
          children: [
            Text(fileInfo.angkatan!),
            SizedBox(
              width: 5,
            ),
            Text(fileInfo.kelas!),
          ],
        ),
      ),
      DataCell(
        Container(
          width: 50,
          height: 25,
          decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(child: Text(fileInfo.status!)),
        ),
      ),
    ],
  );
}
