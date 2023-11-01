import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CreditCardItem extends StatefulWidget {
 const CreditCardItem({ super.key,required this.formKey, required this.autovalidateMode});

     final GlobalKey<FormState>formKey;
     final AutovalidateMode autovalidateMode;
  @override
  State<CreditCardItem> createState() => _CreditCardItemState();
}

class _CreditCardItemState extends State<CreditCardItem> {
  String cardNumber='', expiryDate='', cardHolderName='', cvvCode='';
  bool showBackView=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
            isHolderNameVisible: true,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode:cvvCode,
            showBackView: showBackView,
            onCreditCardWidgetChange: (value) {}),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          isHolderNameVisible: true,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (creditCardModel){
              cardNumber=creditCardModel.cardNumber;
              expiryDate=creditCardModel.expiryDate;
              cardHolderName=creditCardModel.cardHolderName;
              cvvCode=creditCardModel.cvvCode;
              showBackView=creditCardModel.isCvvFocused;
              setState(() {

              });
            },
            formKey: widget.formKey)
      ],
    );
  }
}
