
import 'package:app_avaliacao_edusoft/src/censo/view/view_model/censo_list_view_model/censo_list_view_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/view/view_model/censo_list_view_model/states/censo_view_states.dart';
import 'package:flutter/material.dart';

class CensoScreen extends StatefulWidget {
  static const String id = 'screens/censo/list';

  const CensoScreen({ Key? key }) : super(key: key);

  @override
  State<CensoScreen> createState() => _CensoScreenState();
}

class _CensoScreenState extends State<CensoScreen> {

  final CensoListWidget censoListWidget = CensoListWidget();

  @override 
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    censoListWidget.fetch();
    censoListWidget.init(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Censo Nomes'), elevation: 3),
      body: AnimatedBuilder(
        animation: censoListWidget,
        builder: (context, widget){
          if(censoListWidget.value is WithErrorCensoViewModelState){
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.error_outline, color: Colors.red[600], size: 42),
                  Text(
                    "Verifique sua conexão com a internet", 
                    textAlign: TextAlign.center, 
                    style: TextStyle(color: Colors.red[600], fontWeight: FontWeight.w600, fontSize: 16) 
                  )
                ],
              )
            );
          }
          return censoListWidget.listView(context);
        },
      )
    );
  }
}