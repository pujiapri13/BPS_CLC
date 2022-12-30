import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IpmContent extends StatefulWidget {
  const IpmContent({Key? key}) : super(key: key);

  @override
  _IpmContentState createState() => _IpmContentState();
}

class _IpmContentState extends State<IpmContent> {
  RepositoryIpm repositoryipm = RepositoryIpm();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(
            child: Text('Indeks Pembangunan Manusia'),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    constraints: BoxConstraints.tight(
                      Size(screenWidth, screenHeight),
                    ),
                    context: context,
                    builder: (context) {
                      return ListView(children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Pembangunan Manusia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Pembangunan Manusia didefinisikan sebagai perluasan pilihan bagi penduduk untuk hidup lebih panjang, lebih sehat, dan hidup lebih bermakna membangun hidupnya yang dianggap berharga (UNDP, HDR 1990).",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Indeks Pembangunan Manusia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   UNDP memperkenalkan suatu indikator yang dapat menggambarkan perkembangan pembangunan manusia secara terukur dan representatif, yang dinamakan Human Development Index (HDI) atau Indeks Pembangunan Manusia (IPM).",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   IPM dikembangkan oleh Amartya Sen (pemenang nobel berkebangsaan India) dan seorang ekonom Pakistan Mahbub ul Haq, serta dibantu oleh Gustav Ranis dari Universitas Yale dan Lord Meghnad Desai dari London School of Economics. Sejak it indeks ini dipakai oleh Program pembangunan PBB pada lapora IPM tahunannya.",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Dimensi Dasar IPM",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Indeks Pembangunan Manusia (IPM) memiliki tiga dimensi yang digunakan sebagai dasar perhitungannya :",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "1) Umur panjang dan hidup sehat yang diukur dengan Umur Harapan Hidup (UHH) saat kelahiran.",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "2) Pengetahuan yang dihitung dari angka Harapan Lama Sekolah/HLS (penduduk berusia 7 tahun ke atas) dan angka Rata-rata Lama Sekolah/RLS (penduduk berusia 25 tahun ke atas).",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "3) Standar hidup layak yang di tingkat nasional dihitung dari Produk Domestik Bruto/PDB (keseimbangan kemampuan berbelanja) per kapita, sedangkan di tingkat daerah dihitung dari pengeluaran per kapita per tahun.",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Manfaat IPM",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Indeks Pembangunan Manusia (IPM) memiliki beberapa manfaat antara lain :",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "1) IPM merupakan indikator penting untuk mengukur keberhasilan dalam upaya membangun kualitas hidup manusia (masyarakat/penduduk).",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "2) IPM dapat menentukan peringkat atau level pembangunan suatu wilayah/negara.",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 20, right: 5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "3) Bagi Indonesia, IPM merupakan data strategis karena selain sebagai ukuran kinerja Pemerintah, IPM juga digunakan sebagai salah satu alokator penentuan Dana Alokasi Umum (DAU).",
                          ),
                        ),
                      ]);
                    },
                  );
                },
                icon: const Icon(Icons.info_outlined))
          ],
        ),
        body: Container(
          height: screenHeight,
          margin: const EdgeInsets.all(2),
          color: Colors.black,
          child: FutureBuilder(
              future: repositoryipm.getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  BarChartGroupData makeGroupData(int x, double y1) {
                    return BarChartGroupData(barsSpace: 4, x: x, barRods: [
                      BarChartRodData(
                        toY: y1,
                        color: const Color.fromRGBO(47, 182, 224, 0.9),
                        width: 10,
                      ),
                    ]);
                  }

                  List isiipm = snapshot.data as List;
                  return PageView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      String tahun1 = isiipm[index = 4].created_at[0] +
                          isiipm[index = 4].created_at[1] +
                          isiipm[index = 4].created_at[2] +
                          isiipm[index = 4].created_at[3];
                      String tahun2 = isiipm[index = 3].created_at[0] +
                          isiipm[index = 3].created_at[1] +
                          isiipm[index = 3].created_at[2] +
                          isiipm[index = 3].created_at[3];
                      String tahun3 = isiipm[index = 2].created_at[0] +
                          isiipm[index = 2].created_at[1] +
                          isiipm[index = 2].created_at[2] +
                          isiipm[index = 2].created_at[3];
                      String tahun4 = isiipm[index = 1].created_at[0] +
                          isiipm[index = 1].created_at[1] +
                          isiipm[index = 1].created_at[2] +
                          isiipm[index = 1].created_at[3];
                      String tahun5 = isiipm[index = 0].created_at[0] +
                          isiipm[index = 0].created_at[1] +
                          isiipm[index = 0].created_at[2] +
                          isiipm[index = 0].created_at[3];

                      double uhh1 = double.parse(isiipm[index = 4].uhh);
                      double uhh2 = double.parse(isiipm[index = 3].uhh);
                      double uhh3 = double.parse(isiipm[index = 2].uhh);
                      double uhh4 = double.parse(isiipm[index = 1].uhh);
                      double uhh5 = double.parse(isiipm[index = 0].uhh);

                      double rls1 = double.parse(isiipm[index = 4].rls);
                      double rls2 = double.parse(isiipm[index = 3].rls);
                      double rls3 = double.parse(isiipm[index = 2].rls);
                      double rls4 = double.parse(isiipm[index = 1].rls);
                      double rls5 = double.parse(isiipm[index = 0].rls);

                      double hls1 = double.parse(isiipm[index = 4].hls);
                      double hls2 = double.parse(isiipm[index = 3].hls);
                      double hls3 = double.parse(isiipm[index = 2].hls);
                      double hls4 = double.parse(isiipm[index = 1].hls);
                      double hls5 = double.parse(isiipm[index = 0].hls);

                      double ppp1 = double.parse(isiipm[index = 4].ppp);
                      double ppp2 = double.parse(isiipm[index = 3].ppp);
                      double ppp3 = double.parse(isiipm[index = 2].ppp);
                      double ppp4 = double.parse(isiipm[index = 1].ppp);
                      double ppp5 = double.parse(isiipm[index = 0].ppp);

                      double ipm1 = double.parse(isiipm[index = 4].ipm);
                      double ipm2 = double.parse(isiipm[index = 3].ipm);
                      double ipm3 = double.parse(isiipm[index = 2].ipm);
                      double ipm4 = double.parse(isiipm[index = 1].ipm);
                      double ipm5 = double.parse(isiipm[index = 0].ipm);

                      late List<BarChartGroupData> rawBarGroups;
                      late List<BarChartGroupData> showingBarGroups;

                      final barGroup1 = makeGroupData(1, ipm1);
                      final barGroup2 = makeGroupData(2, ipm2);
                      final barGroup3 = makeGroupData(3, ipm3);
                      final barGroup4 = makeGroupData(4, ipm4);
                      final barGroup5 = makeGroupData(5, ipm5);

                      final items = [
                        barGroup1,
                        barGroup2,
                        barGroup3,
                        barGroup4,
                        barGroup5,
                      ];
                      rawBarGroups = items;
                      showingBarGroups = rawBarGroups;

                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "Perkembangan IPM beserta Komponennya Kabupaten Cilacap, $tahun1 - $tahun5",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                            height: 5,
                            thickness: 5,
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: SizedBox(
                              height: screenHeight * 0.7,
                              child: Column(
                                children: <Widget>[
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 6,
                                    child: Container(
                                      width: screenWidth,
                                      color: Colors.white,
                                      child: Flexible(
                                        child: Container(
                                          color: Colors.transparent,
                                          child: Column(
                                            children: [
                                              Container(
                                                color: const Color.fromRGBO(
                                                    47, 182, 224, 0.9),
                                                width: screenWidth,
                                                height: screenHeight * 0.06,
                                                child: Row(
                                                  children: [
                                                    const Flexible(
                                                      flex: 3,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "IPM & Komponen",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        tahun1,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        tahun2,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        tahun3,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        tahun4,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        tahun5,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                color: Colors.transparent,
                                                width: screenWidth,
                                                height: screenHeight * 0.04,
                                                child: Row(
                                                  children: [
                                                    const Flexible(
                                                      flex: 3,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "UHH",
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        uhh1.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        uhh2.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        uhh3.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        uhh4.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        uhh5.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Divider(),
                                              Container(
                                                color: Colors.transparent,
                                                width: screenWidth,
                                                height: screenHeight * 0.04,
                                                child: Row(
                                                  children: [
                                                    const Flexible(
                                                      flex: 3,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "RLS",
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        rls1.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        rls2.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        rls3.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        rls4.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        rls5.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Divider(),
                                              Container(
                                                color: Colors.transparent,
                                                width: screenWidth,
                                                height: screenHeight * 0.04,
                                                child: Row(
                                                  children: [
                                                    const Flexible(
                                                      flex: 3,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "HLS",
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        hls1.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        hls2.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        hls3.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        hls4.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        hls5.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Divider(),
                                              Container(
                                                color: Colors.transparent,
                                                width: screenWidth,
                                                height: screenHeight * 0.04,
                                                child: Row(
                                                  children: [
                                                    const Flexible(
                                                      flex: 3,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "PPP",
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        ppp1.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        ppp2.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        ppp3.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        ppp4.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        ppp5.toStringAsFixed(2),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Divider(
                                                color: Colors.transparent,
                                              ),
                                              Container(
                                                color: const Color.fromRGBO(
                                                    47, 182, 224, 0.9),
                                                width: screenWidth,
                                                height: screenHeight * 0.04,
                                                child: Row(
                                                  children: [
                                                    const Flexible(
                                                      flex: 3,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "IPM",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "$ipm1",
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "$ipm2",
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "$ipm3",
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "$ipm4",
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      flex: 2,
                                                      fit: FlexFit.tight,
                                                      child: Text(
                                                        "$ipm5",
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.white),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Container(
                              color: const Color.fromRGBO(47, 182, 224, 0.9),
                              child: Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                                color: const Color(0xff2c4260),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Expanded(
                                    child: BarChart(
                                      BarChartData(
                                        maxY: 130,
                                        minY: 25,
                                        titlesData: FlTitlesData(
                                          show: true,
                                          rightTitles: AxisTitles(
                                            sideTitles:
                                                SideTitles(showTitles: false),
                                          ),
                                          topTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: false,
                                            ),
                                          ),
                                          bottomTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              getTitlesWidget: (double value,
                                                  TitleMeta meta) {
                                                List<String> titles = [
                                                  "",
                                                  tahun1,
                                                  tahun2,
                                                  tahun3,
                                                  tahun4,
                                                  tahun5,
                                                ];

                                                Widget text = Text(
                                                  titles[value.toInt()],
                                                  style: const TextStyle(
                                                    color: Color(0xff7589a2),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                );

                                                return SideTitleWidget(
                                                    axisSide: meta.axisSide,
                                                    space: 5, //margin top
                                                    child: text);
                                              },
                                              reservedSize: 50,
                                            ),
                                          ),
                                          leftTitles: AxisTitles(
                                            sideTitles: SideTitles(
                                              showTitles: true,
                                              reservedSize: 28,
                                              interval: 1,
                                              getTitlesWidget: (double value,
                                                  TitleMeta meta) {
                                                const style = TextStyle(
                                                  color: Color(0xff7589a2),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                );
                                                String text;
                                                if (value == 25) {
                                                  text = '25';
                                                } else if (value == 50) {
                                                  text = '50';
                                                } else if (value == 75) {
                                                  text = '75';
                                                } else if (value == 100) {
                                                  text = '100';
                                                } else if (value == 125) {
                                                  text = '125';
                                                } else {
                                                  return Container();
                                                }
                                                return SideTitleWidget(
                                                  axisSide: meta.axisSide,
                                                  space: 0,
                                                  child:
                                                      Text(text, style: style),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        borderData: FlBorderData(
                                          show: false,
                                        ),
                                        barGroups: showingBarGroups,
                                        gridData: FlGridData(show: false),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Center(
                          child: Text(
                            "Perkembangan IPM beserta Komponennya Kabupaten Cilacap,  - ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        height: 5,
                        thickness: 5,
                      ),
                      Flexible(
                        flex: 4,
                        fit: FlexFit.tight,
                        child: SizedBox(
                          height: screenHeight * 0.7,
                          child: Column(
                            children: <Widget>[
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 6,
                                child: Container(
                                  width: screenWidth,
                                  color: Colors.white,
                                  child: Flexible(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Column(
                                        children: [
                                          Container(
                                            color: const Color.fromRGBO(
                                                47, 182, 224, 0.9),
                                            width: screenWidth,
                                            height: screenHeight * 0.06,
                                            child: Row(
                                              children: const [
                                                Flexible(
                                                  flex: 3,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "IPM & Komponen",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            color: Colors.transparent,
                                            width: screenWidth,
                                            height: screenHeight * 0.04,
                                            child: Row(
                                              children: const [
                                                Flexible(
                                                  flex: 3,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "UHH",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(),
                                          Container(
                                            color: Colors.transparent,
                                            width: screenWidth,
                                            height: screenHeight * 0.04,
                                            child: Row(
                                              children: const [
                                                Flexible(
                                                  flex: 3,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "RLS",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(),
                                          Container(
                                            color: Colors.transparent,
                                            width: screenWidth,
                                            height: screenHeight * 0.04,
                                            child: Row(
                                              children: const [
                                                Flexible(
                                                  flex: 3,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "HLS",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(),
                                          Container(
                                            color: Colors.transparent,
                                            width: screenWidth,
                                            height: screenHeight * 0.04,
                                            child: Row(
                                              children: const [
                                                Flexible(
                                                  flex: 3,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "PPP",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(
                                            color: Colors.transparent,
                                          ),
                                          Container(
                                            color: const Color.fromRGBO(
                                                47, 182, 224, 0.9),
                                            width: screenWidth,
                                            height: screenHeight * 0.04,
                                            child: Row(
                                              children: const [
                                                Flexible(
                                                  flex: 3,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "IPM",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Flexible(
                                                  flex: 2,
                                                  fit: FlexFit.tight,
                                                  child: Text(
                                                    "",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Container(
                          color: const Color.fromRGBO(47, 182, 224, 0.9),
                          width: screenWidth,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            color: const Color(0xff2c4260),
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
                if (snapshot.connectionState == ConnectionState.none) {
                  return Center(
                      child: Column(
                    children: const [
                      Icon(Icons.error_outline),
                      Text("Data Kosong"),
                    ],
                  ));
                } else {
                  return Column(
                    children: const [
                      Icon(Icons.error_outline),
                      Text("DATABASE ERROR"),
                    ],
                  );
                }
              }),
        ),
      ),
    );
  }
}


// ignore_for_file: library_private_types_in_public_api, prefer_interpolation_to_compose_strings