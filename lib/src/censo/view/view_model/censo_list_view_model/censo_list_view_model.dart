import 'package:app_avaliacao_edusoft/modules/IoC/dependency_containers.dart';
import 'package:app_avaliacao_edusoft/src/censo/view/view_model/censo_list_view_model/states/censo_view_states.dart';
import 'package:app_avaliacao_edusoft/src/censo/view/view_model/censo_view_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/censo_names_view_model.dart';
import 'package:flutter/material.dart';

class CensoListWidget extends ValueNotifier<ICensoViewModelState>{
  CensoListWidget([ICensoViewModelState? value]) : super(value ?? const DefaultCensoViewModelState());

  final CensoNamesViewModel _repository = container.resolve<CensoNamesViewModel>();
  final ScrollController scroll = ScrollController();
  final GlobalKey listKey = GlobalKey();

  double offset = 0.0;
  int page = 0;

  List<CensoWidget> data = [];

  void init(BuildContext context){
    scroll.addListener(() { 
      if(scroll.offset == scroll.position.maxScrollExtent){
        offset = scroll.offset;
        page += 1;
        showOverlay(context);
        /* When fetch is completed, wait more 2 seconds to close the circular progress Overlay */
        fetch(page).whenComplete(() => Future.delayed(const Duration(milliseconds: 400)).then((value) => hideOverlay()));
      }
    });
  }

  void showOverlay(BuildContext context) => Overlay.of(context).insert(entry);

  void hideOverlay() => entry.remove();

  Future<void> fetch([int? page]) async {
    emit(const LoadingCensoViewModelState());
    try{
      if(page == null){
        data = await _repository.fetch();
      }else{
        data += await _repository.fetchPaginated(page);
      }
      emit(const WithDataCensoViewModelState());
    }catch(error, _stack){
      print(error);
      print(_stack);
      emit(const WithErrorCensoViewModelState());
    }
  }

  void emit(ICensoViewModelState state) => value = state;

  Widget listView(BuildContext context) => ListView.builder(
    key: listKey,
    controller: scroll,
    itemCount: data.length,
    itemBuilder: (context, index) => data[index].listTile(context),
  );

  final OverlayEntry entry = OverlayEntry(
    builder: (context) => const Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox( 
        height: 110, 
        child: Center(
          child: SizedBox(height: 90, width: 100, 
            child: Card(
              color: Colors.white24,
              child: Center(child: CircularProgressIndicator()),
            )
          ),
        )
      ),
    )
  );
}