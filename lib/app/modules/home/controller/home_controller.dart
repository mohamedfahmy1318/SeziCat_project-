import 'package:get/get.dart';
import 'package:sezicat/app/models/gridView_model.dart';
import 'package:sezicat/app/utils/app_path.dart';

class HomeController extends  GetxController{
  List<GridViewModel> gridList = [
    GridViewModel(
      title: 'Heart Rate',
      icon: PathUtil.waveIcon,
      icon2: '',
      text1: 'Normal',
      text2: '80HR',
      color: '#8B80F8',
    ),
    GridViewModel(
      title: 'Stabilization Rate',
      icon: PathUtil.personIcon,
      icon2: '',
      text1: '90%',
      text2: 'Stable',
      color: '#AF8EFF',
    ),
    GridViewModel(
      title: 'Battery Rate',
      icon: PathUtil.loadingIcon,
      icon2: PathUtil.batteryLine,
      text1: '89%',
      text2: '6h 45min',
      color: '#1E87FD',
    ),
    GridViewModel(
      title: 'Brain Signals',
      icon: PathUtil.signalIcon,
      icon2: '',
      text1: 'Normal',
      text2: '8HZ',
      color: '#4C5A81',
    ),
  ].obs;

}