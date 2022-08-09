import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _studentnames = prefs.getStringList('ff_studentnames') ?? _studentnames;
  }

  late SharedPreferences prefs;

  List<String> schools = [];

  List<String> _studentnames = [];
  List<String> get studentnames => _studentnames;
  set studentnames(List<String> _value) {
    _studentnames = _value;
    prefs.setStringList('ff_studentnames', _value);
  }

  void addToStudentnames(String _value) {
    _studentnames.add(_value);
    prefs.setStringList('ff_studentnames', _studentnames);
  }

  void removeFromStudentnames(String _value) {
    _studentnames.remove(_value);
    prefs.setStringList('ff_studentnames', _studentnames);
  }

  List<int> noofchildren = [];
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
