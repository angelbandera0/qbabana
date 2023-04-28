
abstract class VehicleData {

  int? getYear();
  void setYear(int year);

  String? getBrand();
  void setBrand(String brand);
  String? getModel();
  void setModel(String model);
  String? getVin();
  void setVin(String vin);
  int? getTrailerType();
  void setTrailerType(int trailerType);
  int? getOdometerReading();
  void setOdometerReading(int odometerReading);
  bool? getOversized();
  void setOversized(bool oversized);
  bool? getLongBed();
  void setLongBed(bool longBed);
  bool? getLifted();
  void setLifted(bool lifted);
  bool? getExcessHeight();
  void setExcessHeight(bool excessHeight);
  bool? getOversizedBumpers();
  void setOversizedBumpers(bool oversizedBumpers);
  bool? getDamageOnVehicle();
  void setDamageOnVehicle(bool damageOnVehicle);
  String? getDamageDescription();
  void setDamageDescription(String damageDescription);
  void clearAll();



}

class VehicleDataImpl extends VehicleData{
  int? _year=0;
  String? _brand='';
  String? _model='';
  String? _vin='';
  int? _trailerType=0;
  int? _odometerReading=0;
  bool? _oversized=false;
  bool? _longBed=false;
  bool? _lifted=false;
  bool? _excessHeight=false;
  bool? _oversizedBumpers=false;
  bool? _damageOnVehicle=false;
  String? _damageDescription='';
  @override
  String? getBrand() =>_brand;

  @override
  String? getDamageDescription() => _damageDescription;

  @override
  bool? getDamageOnVehicle() => _damageOnVehicle;

  @override
  bool? getExcessHeight() => _excessHeight;

  @override
  bool? getLifted() =>_lifted;

  @override
  bool? getLongBed() => _longBed;

  @override
  String? getModel() =>_model;

  @override
  int? getOdometerReading() => _odometerReading;

  @override
  bool? getOversized() => _oversized;

  @override
  bool? getOversizedBumpers() => _oversizedBumpers;

  @override
  int? getTrailerType() => _trailerType;

  @override
  String? getVin() => _vin;

  @override
  int? getYear() => _year;

  @override
  void setBrand(String brand) {
   _brand=brand;
  }

  @override
  void setDamageDescription(String damageDescription) {
     _damageDescription=damageDescription;
  }

  @override
  void setDamageOnVehicle(bool damageOnVehicle) {
      _damageOnVehicle=damageOnVehicle;
  }

  @override
  void setExcessHeight(bool excessHeight) {
    _excessHeight=excessHeight;
  }

  @override
  void setLifted(bool lifted) {
   _lifted=lifted;
  }

  @override
  void setLongBed(bool longBed) {
    _longBed= longBed;
  }

  @override
  void setModel(String model) {
     _model=model;
  }

  @override
  void setOdometerReading(int odometerReading) {
    _odometerReading=odometerReading;
  }

  @override
  void setOversized(bool oversized) {
      _oversized =oversized;
  }

  @override
  void setOversizedBumpers(bool oversizedBumpers) {
      _oversizedBumpers=oversizedBumpers;
  }

  @override
  void setTrailerType(int trailerType) {
    _trailerType=trailerType;
  }

  @override
  void setVin(String vin) {
     _vin= vin;
  }

  @override
  void setYear(int year) {
      _year=year;
  }

  @override
  void clearAll() {
    setYear(0);
    setBrand('');
    setModel('');
    setVin('');
    setTrailerType(0);
    setOdometerReading(0);
    setOversized(false);
    setLongBed(false);
    setLifted(false);
    setExcessHeight(false);
    setOversizedBumpers(false);
    setDamageOnVehicle(false);
    setDamageDescription('');
  }
  
  
}
