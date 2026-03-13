namespace mdg.recordschema;

using {
  cuid,
  managed
} from '@sap/cds/common';

entity records : cuid, managed {

  key MATNR      : String(40);
      Group_id   : String;
      MAKT_MAKTX : String(100);
      MTART      : String(4);
      MATKL      : String(9);

}

entity bestrecords : cuid, managed {
  key MATNR      : String(40);
      Group_id   : String;
      MAKT_MAKTX : String(100);
      MTART      : String(4);
      MATKL      : String(9);
}

entity goldenrecords : cuid, managed {
  key MATNR      : String(40);
      Group_id   : String;
      MAKT_MAKTX : String(100);
      MTART      : String(4);
      MATKL      : String(9);
}
