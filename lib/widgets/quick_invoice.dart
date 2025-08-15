import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_background_container.dart';
import 'package:responsive_app/widgets/latest_transaction.dart';
import 'package:responsive_app/widgets/quick_invoce_form.dart';
import 'package:responsive_app/widgets/quick_invoice_header.dart' show QuickInvoiceHeader;

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        LatestTransaction(),
        Divider(height: 48,),
        QuickInvoceForm(),


      ],
    ));
  }
}

