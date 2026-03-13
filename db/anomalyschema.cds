namespace mdg.anomalyschema;

using {
    cuid,
    managed,
    sap.common.CodeList
} from '@sap/cds/common';

entity anomalydata : cuid,managed {
    key MATNR : String(40); // MATERIAL NUMBER
    MAKT_MAKTX : String(100); // MATERIAL DESCRIPTION
    WERKS       :String(4); // PLANT
    DISMM      : String(2); //MRP TYPE
    
}