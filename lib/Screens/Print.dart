import 'dart:typed_data';
import 'package:constructoncostestimator/Screens/Print.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'dart:io';

import 'Print.dart';

Future<void> generatePdf(Map<String, dynamic> data) async {
  final pdf = pw.Document();

  final font = await PdfGoogleFonts.nunitoExtraLight();
  print(data);

  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Column(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            'Cost Estimation Report',
            style: pw.TextStyle(
                font: font, fontSize: 20, fontWeight: pw.FontWeight.bold),
          ),
          pw.SizedBox(height: 10),
          pw.Table(
            border: pw.TableBorder.all(),
            columnWidths: {
              0: const pw.FlexColumnWidth(2),
              1: const pw.FlexColumnWidth(1),
              2: const pw.FlexColumnWidth(1),
            },
            children: [
              _buildTableRow(['Item', 'Quantity', 'Cost']),
              for (var entry in data.entries)
                _buildTableRow([
                  entry.key,
                  entry.value['Quantity'].toString(),
                  entry.value['Cost'].toString(),
                ]),
            ],
          ),
        ],
      );
    },
  ));

  // Get the document directory on the device
  final directory = await getDownloadsDirectory();

  // Define the path for the PDF file
  final String path = '${directory!.path}/cost_estimation_report.pdf';

  // Save the PDF to the file
  final File file = File(path);
  await file.writeAsBytes(await pdf.save()).then((value)  {
    print("FIle Location");
    print(value);
  });
}

pw.TableRow _buildTableRow(List<String> cells) {
  return pw.TableRow(
    children: cells.map((cell) => pw.Text(cell)).toList(),
  );
}
