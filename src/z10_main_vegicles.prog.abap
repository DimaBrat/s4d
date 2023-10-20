*&---------------------------------------------------------------------*
*& Report z00_main_vehicles
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z10_main_vehicles.

* Demo 1: Objekte und Referenzvariablen

DATA vehicle TYPE REF TO zcl_00_vehicle. "Vehicle vehicle;
*DATA(vehicle2) = NEW zcl_00_vehicle( ). "Vehicle vehicle = new Vehicle( );
DATA vehicles TYPE TABLE OF REF TO zcl_00_vehicle. "List<Vehicle> vehicles = new ArrayList<>();

vehicle = NEW zcl_00_vehicle( make = 'VW' model = 'Up' ). "vehicle = new Vehicle("VW", "Up");
APPEND vehicle TO vehicles.

vehicle = NEW zcl_00_vehicle( make = 'MAN' model = 'TGX' ).
APPEND vehicle TO vehicles.

" Ausgabe
LOOP AT vehicles INTO vehicle.
  WRITE / vehicle->to_string( ).
ENDLOOP.
