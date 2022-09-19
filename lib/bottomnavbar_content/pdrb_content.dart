// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PdrbContent extends StatefulWidget {
  const PdrbContent({Key? key}) : super(key: key);

  @override
  _PdrbContentState createState() => _PdrbContentState();
}

class _PdrbContentState extends State<PdrbContent> {
//<< item Nilai PDRB
  List<String> itemsNilaiPdrb = [
    "PDRB AHB Menurut Lapangan Usaha",
    "Distribusi PDRB AHB",
    "Laju Pertumbuhan PDRB",
    "Sumber Pertumbuhan PDRB",
  ];
  String? selectedValueA;
//>>
//<< item Migas
  List<String> itemsDenganMigas = [
    "Dengan Migas",
    "Tanpa Migas",
  ];
  String? selectedValueB;
//>>
//<< item Tahun
  List<String> itemsTahun = [
    "2017 - 2021",
    "2012 - 2016",
    "2008 - 2011",
    "2003 - 2007",
  ];
  String? selectedValueC;
  //>>
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(child: Text('PDRB')),
        ),
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(2),
          child: Column(
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 20,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  width: double.infinity,
                  height: screenHeight * 0.2,
                  color: Colors.black87,
                  child: Column(
                    children: <Widget>[
                      //<<<<< NILAI PDRB
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            hint: Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    'NILAI PDRB',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            items: itemsNilaiPdrb
                                .map((item) => DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ))
                                .toList(),
                            value: selectedValueA,
                            onChanged: (value) {
                              setState(() {
                                selectedValueA = value as String;
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_outlined,
                            ),
                            iconSize: 14,
                            iconEnabledColor: Colors.white,
                            iconOnClick: const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: 14,
                              color: Colors.white,
                            ),
                            buttonPadding:
                                const EdgeInsets.only(left: 10, right: 10),
                            buttonDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.white24,
                              ),
                            ),
                            buttonElevation: 8,
                            itemHeight: 40,
                            itemPadding:
                                const EdgeInsets.only(left: 14, right: 14),
                            dropdownMaxHeight: 200,
                            dropdownPadding:
                                const EdgeInsets.only(left: 14, right: 14),
                            dropdownDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      //>>>>>>>>>>
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            //<<<<< Migas
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  hint: Row(
                                    children: const [
                                      Expanded(
                                        child: Text(
                                          'Dengan Migas',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  items: itemsDenganMigas
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: selectedValueB,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValueB = value as String;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                  ),
                                  iconSize: 14,
                                  iconEnabledColor: Colors.white,
                                  iconOnClick: const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  buttonPadding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  buttonDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.white24,
                                    ),
                                  ),
                                  buttonElevation: 8,
                                  itemHeight: 40,
                                  itemPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  dropdownMaxHeight: 200,
                                  dropdownPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  dropdownDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            // >> Migas
                            // << Tahun
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 1,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  hint: Row(
                                    children: const [
                                      Expanded(
                                        child: Text(
                                          'Tahun',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  items: itemsTahun
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: selectedValueC,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValueC = value as String;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                  ),
                                  iconSize: 14,
                                  iconEnabledColor: Colors.white,
                                  iconOnClick: const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  buttonPadding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  buttonDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.white24,
                                    ),
                                  ),
                                  buttonElevation: 8,
                                  itemHeight: 40,
                                  itemPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  dropdownMaxHeight: 200,
                                  dropdownPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  dropdownDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            // >> Tahun
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 40,
                child: Container(
                  margin: const EdgeInsets.only(top: 2),
                  width: double.infinity,
                  height: screenHeight * 0.2,
                  // <<< Tabel
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(columnSpacing: 5, columns: const [
                      DataColumn(
                        label: Flexible(
                          child: Text(
                            'Tahun',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'PDRB ADHB',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w400),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'PDRB ADHK',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ], rows: const [
                      DataRow(
                        cells: [
                          DataCell(
                            Text(
                              '2021',
                            ),
                          ),
                          DataCell(
                            Text(
                              '110.262.462,97',
                            ),
                          ),
                          DataCell(
                            Text(
                              '100.112.422,37',
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Text(
                              '2020',
                            ),
                          ),
                          DataCell(
                            Text(
                              '100.122.124,32',
                            ),
                          ),
                          DataCell(
                            Text(
                              '110.162.162,97',
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Text(
                              '2019',
                            ),
                          ),
                          DataCell(
                            Text(
                              '97.132.442,17',
                            ),
                          ),
                          DataCell(
                            Text(
                              '100.442.562,21',
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Text(
                              '2018',
                            ),
                          ),
                          DataCell(
                            Text(
                              '96.362.562,57',
                            ),
                          ),
                          DataCell(
                            Text(
                              '95.165.762,91',
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Text(
                              '2017',
                            ),
                          ),
                          DataCell(
                            Text(
                              '95.122.312,27',
                            ),
                          ),
                          DataCell(
                            Text(
                              '97.412.216,55',
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  // >>> /Tabel
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 40,
                child: Container(
                    margin: const EdgeInsets.only(top: 2),
                    width: double.infinity,
                    height: screenHeight * 0.2,
                    //<<< Grafik
                    child: LineChart(
                      LineChartData(
                        backgroundColor: Colors.transparent,
                        minX: 0,
                        maxX: 7,
                        minY: 0,
                        maxY: 5,
                        lineBarsData: [
                          LineChartBarData(
                            // a
                            spots: [
                              const FlSpot(0, 0),
                              const FlSpot(1, 1),
                              const FlSpot(2, 2),
                              const FlSpot(3, 2),
                              const FlSpot(4, 3),
                              const FlSpot(5, 2),
                              const FlSpot(6, 0),
                              const FlSpot(7, 3),
                            ],

                            // b
                            isCurved: false,

                            // c
                            gradient: const LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.blue,
                              ],
                            ),

                            // d
                            barWidth: 3,

                            // e
                            belowBarData: BarAreaData(
                              show: true,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                              ),
                            ),

                            // f
                            dotData: FlDotData(
                              show: false,
                            ),
                          ),
                        ],
                      ),
                    )
                    // >>> /Grafik
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
