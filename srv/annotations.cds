using {litemdg as service} from './service';
using {mdg as dblayer} from './service';


annotate service.Mara with {
   BSTME @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'BSTME',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'PurchaseOrderUnitofMeasure'
         }
      ]
   };
};
annotate service.Mara with {
   EKWSL @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'EKWSL',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'PurchasingValueKey'
         }
      ]
   };
};
// annotate service.Mara with {
//    MFRNR @Common.ValueList: {
//       CollectionPath: 'Value_List',
//       Parameters    : [
//          {
//             $Type            : 'Common.ValueListParameterInOut',
//             LocalDataProperty: 'MFRNR',
//             ValueListProperty: 'Value'
//          },
//          {
//             $Type            : 'Common.ValueListParameterDisplayOnly',
//             ValueListProperty: 'Description'
//          },
//          {
//             $Type            : 'Common.ValueListParameterConstant',
//             ValueListProperty: 'Fixed_Type',
//             Constant         : 'ManufacturerNumber'
//          }
//       ]
//    };
// };
annotate service.Mara with {
   VABME @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'VABME',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'VariablePurchaseOrderunit'
         }
      ]
   };
};

annotate service.Mara with {
   BEHVO @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'BEHVO',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Containerrequirements'
         }
      ]
   };
};
annotate service.Mara with {
   ETIAR @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'ETIAR',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'LabelType'
         }
      ]
   };
};
annotate service.Mara with {
   ETIFO @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'ETIFO',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Labelform'
         }
      ]
   };
};
annotate service.Mara with {
   IPRKZ @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'IPRKZ',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'PeriodIndicatorforSLED'
         }
      ]
   };
};
annotate service.Mara with {
   RAUBE @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'RAUBE',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Storageconditions'
         }
      ]
   };
};
annotate service.Mara with {
   TEMPB @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'TEMPB',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'TemperatureConditionsIndicator'
         }
      ]
   };
};

annotate service.plant with {
   QZGTP @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'QZGTP',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'CertificateType'
         }
      ]
   };
};

annotate service.plant with {
   SSQSS @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SSQSS',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'QMControlKey'
         }
      ]
   };
};

annotate service.plant with {
   FEVMARCWR @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'FEVMARCWR',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'ProductionSupervisor'
         }
      ]
   };
};

annotate service.plant with {
   FRTME @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'FRTME',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'ProductionUnit'
         }
      ]
   };
};

annotate service.plant with {
   SFCMARCWR @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SFCMARCWR',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'SchedulingProfile'
         }
      ]
   };
};

annotate service.plant with {
   DISPR @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'DISPR',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Mrpprocessingindicator'
         }
      ]
   };
};

annotate service.plant with {
   SCM_HEUID @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SCM_HEUID',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Scmheuristicid'
         }
      ]
   };
};

annotate service.plant with {
   SCM_PFALE @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SCM_PFALE',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Scmplanningarea'
         }
      ]
   };
};

annotate service.plant with {
   SCM_PPALE @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SCM_PPALE',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Scmproductionplanningarea'
         }
      ]
   };
};

annotate service.plant with {
   SCM_PSTRA @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SCM_PSTRA',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Scmplanningstrategy'
         }
      ]
   };
};

annotate service.plant with {
   SCM_PWALE @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SCM_PWALE',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Scmprocurementplanningarea'
         }
      ]
   };
};

annotate service.plant with {
   AUFMRPFC @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'AUFMRPFC',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'MrpConsumptionmode'
         }
      ]
   };
};

annotate service.plant with {
   MISKZ @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'MISKZ',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'MixedmrpIndicator'
         }
      ]
   };
};

annotate service.plant with {
   PERIV @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'PERIV',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'FiscalyearVariant'
         }
      ]
   };
};

annotate service.plant with {
   PERMRPFC @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'PERMRPFC',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'MRPperiodindicator'
         }
      ]
   };
};

annotate service.plant with {
   STRGR @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'STRGR',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Planningstrategicgroup'
         }
      ]
   };
};

annotate service.plant with {
   VRMOD @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'VRMOD',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'ConsumptionMode'
         }
      ]
   };
};

annotate service.plant with {
   AHDIS @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'AHDIS',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'DiscontinuationIndicator'
         }
      ]
   };
};

annotate service.plant with {
   ALTSL @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'ALTSL',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'AlternativebomSelection'
         }
      ]
   };
};

annotate service.plant with {
   KZAUS @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'KZAUS',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'DiscontinuationIndicatordependent'
         }
      ]
   };
};

annotate service.plant with {
   KZBED @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'KZBED',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'DepartmentrequirementsIndicator'
         }
      ]
   };
};

// annotate service.plant with {
//    NFMAT @Common.ValueList: {
//       CollectionPath: 'Value_List',
//       Parameters    : [
//          {
//             $Type            : 'Common.ValueListParameterInOut',
//             LocalDataProperty: 'NFMAT',
//             ValueListProperty: 'Value'
//          },
//          {
//             $Type            : 'Common.ValueListParameterDisplayOnly',
//             ValueListProperty: 'Description'
//          },
//          {
//             $Type            : 'Common.ValueListParameterConstant',
//             ValueListProperty: 'Fixed_Type',
//             Constant         : 'FollowupMaterial'
//          }
//       ]
//    };
// };

annotate service.plant with {
   SAUFT @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SAUFT',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'IndicatorRepetitivemanufacturingprofile'
         }
      ]
   };
};

annotate service.plant with {
   SBDKZ @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SBDKZ',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Individual/CollectiveRequirements'
         }
      ]
   };
};

annotate service.plant with {
   SFEPR @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SAUFT',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'ProductionschedulingProfile'
         }
      ]
   };
};

annotate service.plant with {
   DISLS @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'DISLS',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'LotsizingUnit'
         }
      ]
   };
};

annotate service.plant with {
   RDPMRPLS @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'RDPMRPLS',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Roundingprofile'
         }
      ]
   };
};

annotate service.plant with {
   RWPMRPLS @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'RWPMRPLS',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'RangeofCoverageprofile'
         }
      ]
   };
};

annotate service.plant with {
   SHFLG @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SHFLG',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'StorageLocationMrpindicator'
         }
      ]
   };
};

annotate service.plant with {
   SHPMRPLS @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SHPMRPLS',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'PeriodIndicatorforsafetytime'
         }
      ]
   };
};

annotate service.plant with {
   BESKZ @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'BESKZ',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'ProcurementType'
         }
      ]
   };
};

annotate service.plant with {
   EPRMRPSP @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'EPRMRPSP',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'ExternalProcurementindicator'
         }
      ]
   };
};

annotate service.plant with {
   FABKZ @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters: [
      {
         $Type            : 'Common.ValueListParameterInOut',
         LocalDataProperty: 'FABKZ',
         ValueListProperty: 'Value'
      },
      {
         $Type            : 'Common.ValueListParameterDisplayOnly',
         ValueListProperty: 'Description'
      },
      {
         $Type            : 'Common.ValueListParameterConstant',
         ValueListProperty: 'Fixed_Type',
         Constant         : 'JITDeliveryScheduleIndicator'
      }
   ]};
};

annotate service.plant with {
   KZECH @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'KZECH',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'BatchentryIndicator'
         }
      ]
   };
};

annotate service.plant with {
   LGFMRPSP @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'LGFMRPSP',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'IssueStorageLocation'
         }
      ]
   };
};

annotate service.plant with {
   LGPMRPSP @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'LGPMRPSP',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'ProductionStorageLocation'
         }
      ]
   };
};


annotate service.plant with {
   MRPMRPSP @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'MRPMRPSP',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'MrpIndicator'
         }
      ]
   };
};

annotate service.plant with {
   RGEKZ @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'RGEKZ',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'BackFlushIndicator'
         }
      ]
   };
};

annotate service.plant with {
   SCHGT @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SCHGT',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'BulkMaterialIndicator'
         }
      ]
   };
};

annotate service.plant with {
   SOBMRPSP @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SOBMRPSP',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'SpecialProcurementType'
         }
      ]
   };
};

annotate service.plant with {
   USEQU @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'USEQU',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'QuotaArrangementUsage'
         }
      ]
   };
};
annotate service.plant with {
   EKGRP @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'EKGRP',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'PurchasingGroup'
         }
      ]
   };
};
annotate service.plant with {
   INSMK @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'INSMK',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'StockinQualityInspection'
         }
      ]
   };
};
annotate service.plant with {
   KAUTB @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'KAUTB',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'AutomaticPOAllowed'
         }
      ]
   };
};
annotate service.plant with {
   KORDB @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'KORDB',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'SourcelistRequirement'
         }
      ]
   };
};


annotate service.plant with {
   VSPMRPSP @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'VSPMRPSP',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'ConsumptionIndicator'
         }
      ]
   };
};

annotate service.plant with {
   ABCMARCST @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'ABCMARCST',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'StorageABCIndicator'
         }
      ]
   };
};
annotate service.plant with {
   AUSME @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'AUSME',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'UnitofIssue'
         }
      ]
   };
};
annotate service.plant with {
   CCFIX @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'CCFIX',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'FixedCoProductQuantityIndicator'
         }
      ]
   };
};
annotate service.plant with {
   DISMM @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'DISMM',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'MRP Type'
         }
      ]
   };
};
annotate service.plant with {
   MAABC @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'MAABC',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'ABCIndicator'
         }
      ]
   };
};
annotate service.plant with {
   SOBMARCCS @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SOBMARCCS',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'SpecialProcurementTypeforCosting'
         }
      ]
   };
};
annotate service.plant with {
   VERID @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'CCFIX',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'ProductionVersion'
         }
      ]
   };
};

annotate service.plant with {
   WERKS      @title: 'Plant';
   MMSTA      @title: 'Plant-Specific Material Status';
   PRCTR      @title: 'Profit Center';
   XCHPF_marc @title: 'Batch Management Requirement Indicator';
   DISMM      @title: 'MRP Type';
   MAABC      @title: 'ABC Indicator';
   DISPO      @title: 'MRP Controller';


   LVORM      @title: 'Deletion Indicator';
   FIXLS      @title: 'Fixed Lot Size for Supply Demand Match';
   LADGR      @title: 'Loading Group';
   MTVFP      @title: 'Checking Group for Availability Check';
   DGRMRPPP   @title: 'Material Requirements Planning (MRP) Group';
   RDPRF      @title: 'Rounding Profile';

   SCM_GRPRT  @title: 'Goods Receipt Processing Time';


   HERKL      @title: 'Country of Origin of Material (Non-Preferential Origin)';

   // Planning

   DISPR      @title: 'MRP Processing Indicator';
   FXHOR      @title: 'Planning Time Fence';
   MINBE      @title: 'Reorder Point';
   SCM_HEUID  @title: 'SCM Heuristic ID';
   SCM_PFALE  @title: 'SCM Planning Area';
   SCM_PPALE  @title: 'SCM Production Planning Area';
   SCM_PSTRA  @title: 'SCM Planning Strategy';
   SCM_PWALE  @title: 'SCM Procurement Planning Area';

   //forcast
   AUFMRPFC   @title: 'MRP Consumption Mode';
   MISKZ      @title: 'Mixed MRP Indicator';
   PERIV      @title: 'Fiscal Year Variant';
   PERMRPFC   @title: 'MRP Period Indicator';
   STRGR      @title: 'Strategy Group';
   VINT1      @title: 'Consumption Period (Backward)';
   VINT2      @title: 'Consumption Period (Forward)';
   VRMOD      @title: 'Consumption Mode';
   WZEIT      @title: 'Processing Time';

   //   indicator
   AHDIS      @title: 'Discontinuation Indicator';
   ALTSL      @title: 'Alternative BOM Selection';
   AUSDT      @title: 'Effective-Out Date';
   KAUSF      @title: 'Component Scrap';
   KZAUS      @title: 'Discontinuation Indicator (Dependent)';
   KZBED      @title: 'Dependent Requirements Indicator';
   NFMAT      @title: 'Follow-Up Material';
   SAUFT      @title: 'Repetitive Manufacturing Profile';
   SBDKZ      @title: 'Individual / Collective Requirements';
   SFEPR      @title: 'Production Scheduling Profile';


   //   lot size
   AUSSS      @title: 'Assembly Scrap';
   BSTFE      @title: 'Fixed Lot Size';
   BSTMA      @title: 'Maximum Lot Size';
   BSTMI      @title: 'Minimum Lot Size';
   BSTRF      @title: 'Rounding Value';
   DISLS      @title: 'Lot-Sizing Procedure';
   EISBE      @title: 'Safety Stock';
   EISLO      @title: 'Minimum Safety Stock';
   LGRAD      @title: 'Service Level';
   MABST      @title: 'Maximum Stock Level';
   RDPMRPLS   @title: 'Rounding Profile';
   RWPMRPLS   @title: 'Range of Coverage Profile';
   SHFLG      @title: 'Storage Location MRP Indicator';
   SHPMRPLS   @title: 'Period Indicator for Safety Time';
   SHZET      @title: 'Safety Time';
   TAKZT      @title: 'Takt Time';

   //Procurement
   BESKZ      @title: 'Procurement Type';
   EPRMRPSP   @title: 'External Procurement Indicator';
   FABKZ      @title: 'JIT Delivery Schedule Indicator';
   KZECH      @title: 'Batch Entry Indicator';
   LGFMRPSP   @title: 'Issue Storage Location';
   LGPMRPSP   @title: 'Production Storage Location';
   MRPMRPSP   @title: 'MRP Indicator';
   PLIFZ      @title: 'Planned Delivery Time';
   RGEKZ      @title: 'Backflush Indicator';
   SCHGT      @title: 'Bulk Material Indicator';
   SOBMRPSP   @title: 'Special Procurement Type';
   USEQU      @title: 'Quota Arrangement Usage';
   VSPMRPSP   @title: 'Consumption Indicator';
   WEBAZ      @title: 'Goods Receipt Processing Time';

   // MARC_Purchasing
   EKGRP      @title: 'Purchasing Group';
   INSMK      @title: 'Stock in Quality Inspection';
   KAUTB      @title: 'Automatic PO Allowed';
   KORDB      @title: 'Source List Requirement';

   //   storage

   ABCMARCST  @title: 'Storage ABC Indicator';
   AUSME      @title: 'Unit of Issue';
   CCFIX      @title: 'Fixed Co-Product Quantity Indicator';
   LZEIH      @title: 'Production Storage Period';
   MAXLZ      @title: 'Maximum Storage Period';


   // costing
   AWSMARCCS  @title: 'Costing Lot Size';
   LOSGR      @title: 'Assembly Scrap Percentage';
   SOBMARCCS  @title: 'Special Procurement Type for Costing';
   VERID      @title: 'Production Version';

   //QualityManagenet
   QMPUR      @title: 'QM in Procurement Active';
   KZDKZ      @title: 'Inspection Lot Documentation Required';
   PRFRQ      @title: 'Recurring Inspection Interval (Days)';
   QZGTP      @title: 'Product Quality Certificate Type';
   SSQSS      @title: 'Quality Management Control Key';
   QMSUP      @title: 'Surplus Quality Management';

   //Worksheduling
   BASMG      @title: 'Base Quantity';
   BEARZ      @title: 'Processing Time';
   DZEIT      @title: 'In-House Production Time';
   FEVMARCWR  @title: 'Production Supervisor';
   FRTME      @title: 'Production Unit';
   RUEZT      @title: 'Setup and Teardown Time';
   SFCMARCWR  @title: 'Production Scheduling Profile';
   TRANZ      @title: 'Interoperation Time';
   UEETK      @title: 'Unlimited Overdelivery Allowed';
   UEETO      @title: 'Overdelivery Tolerance Limit';
   UNETO      @title: 'Underdelivery Tolerance Limit';
}

annotate service.Warehouse with {
   LGNUM @title: 'Warehouse Number';
   LVORM @title: 'Deletion flag';
   LGBKZ @title: 'Storage Section Indicators';
   LTKZE @title: 'Storage type indicator for stock placement';
   LTKZA @title: 'Storage type indicator for stock removal';
   LHMG1 @title: 'Loading equipment quantity 1';
   LHMG2 @title: 'Loading equipment quantity 2';
   LHMG3 @title: 'Loading equipment quantity 3';
   LHME1 @title: 'Unit of measure for loading equipment quantity 1';
   LHME2 @title: 'Unit of measure for loading equipment quantity 2';
   LHME3 @title: 'Unit of measure for loading equipment quantity 3';
   LETY1 @title: '1st storage unit type';
   LETY2 @title: '2nd storage unit type';
   LETY3 @title: '3rd storage unit type';
   LVSME @title: 'Warehouse Management Unit of Measure';
   KZZUL @title: 'Indicator: Allow addition to existing stock';
   BLOCK @title: 'Bulk Storage Indicators';
   KZMBF @title: 'Indicator: Message to inventory management';
   BSSKZ @title: 'Special movement indicator for warehouse management';
   MKAPV @title: 'Capacity usage';
   BEZME @title: 'Unit of measure for capacity consumption';
   PLKPT @title: 'Picking storage type for rough-cut and detailed planning';
   VOMEM @title: 'Default for unit of measure from material master record';
   L2SKR @title: 'Material relevance for 2-step picking';
};

annotate service.Storage_type with {

   LGTYP @title: 'Storage Type';
   LVORM @title: 'Deletion Flag';
   LGPLA @title: 'Storage Bin';
   LPMAX @title: 'Maximum Storage Bin Quantity';
   LPMIN @title: 'Minimum Storage Bin Quantity';
   MAMNG @title: 'Control Quantity';
   NSMNG @title: 'Replenishment Quantity';
   KOBER @title: 'Picking Area';
}

annotate service.Alternate_UOM with {
   Material @title: 'Material Number';
   MEINH    @title: 'Alternative Unit of Measure';
   UMREZ    @title: 'Conversion Numerator to Base Unit';
   UMREN    @title: 'Conversion Denominator to Base Unit';
   EANNR    @title: 'International Article Number (EAN/UPC)';
   EAN11    @title: 'EAN/UPC Category';
   NUMTP    @title: 'EAN Category (Obsolete)';
   LAENG    @title: 'Length';
   BREIT    @title: 'Width';
   HOEHE    @title: 'Height';
   MEABM    @title: 'Dimension Unit';
   VOLUM    @title: 'Volume';
   VOLEH    @title: 'Volume Unit';
   BRGEW    @title: 'Gross Weight';
   GEWEI    @title: 'Weight Unit';
}

annotate service.Mara with {
   MATNR      @Common.Label: 'Material Number';
   MAKT_MAKTX @title       : 'Material Description';
   BISMT      @title       : 'Old Material Number';
   LVORM      @title       : 'Deletion Indicator';
   MATKL      @title       : 'Material Group';
   MBRSH      @title       : 'Industry Sector';
   MEINS      @title       : 'Base Unit of Measure';
   MSTAE      @title       : 'Cross-Plant Material Status';
   MSTDE      @title       : 'Valid From Date for Cross-Plant Material Status';
   MTART      @title       : 'Material Type';
   SPART      @title       : 'Division';
   EXTWG      @title       : 'External Material Group';
   MAGRV      @title       : 'Material Group: Packaging Materials';
   MTPOS_MARA @title       : 'General Item Category Group';
   PRDHA      @title       : 'Product Hierarchy';
   WRKST      @title       : 'Basic Material';
   EAN11      @title       : 'International Article Number (EAN/UPC)';
   VOLEH      @title       : 'Volume Unit';
   VOLUM      @title       : 'Volume';
   LAENG      @title       : 'Length';
   BREIT      @title       : 'Width';
   HOEHE      @title       : 'Height';
   CUOBF      @title       : 'Internal Object Number';
   NTGEW      @title       : 'Net Weight';
   GEWEI      @title       : 'Weight Unit';
   BRGEW      @title       : 'Gross Weight';
   MEABM      @title       : 'Unit of Length/Width/Height';
   SLED_BBD   @title       : 'Expiration Date';
   MHDHB      @title       : 'Total Shelf Life';
   RAUBE      @title       : 'Storage Conditions';
   MHDRZ      @title       : 'Minimum Remaining Shelf Life';
   IPRKZ      @title       : 'Period Indicator for Shelf Life Expiration Date';
   TRAGR      @title       : 'Transportation Group';
   EKWSL      @title       : 'Purchasing Value Key';
   QMPUR      @title       : 'QM in Procurement Is Active';

}

annotate service.ClassAssignment with {

   /* --- Keys --- */
   OBJEK     @title: 'Object Key (Material)';
   CLASS     @title: 'Class';
   KLART     @title: 'Class Type';

   /* --- Attributes --- */
   CLINT     @title: 'Internal Class Number';
   CLSTATUS1 @title: 'Classification Status';
   STDCL     @title: 'Standard Class Indicator';
   DATUV     @title: 'Valid-From Date';
   AENNR     @title: 'Change Number';
   LKENZ     @title: 'Deletion Indicator';
   VONDT     @title: 'Assignment Valid-From Date';
   BISDT     @title: 'Assignment Valid-To Date';
   KLAGR     @title: 'Class Group';

};

annotate dblayer.ClassAssignment with {

   /* --- Keys --- */
   OBJEK     @title: 'Object Key (Material)';
   CLASS     @title: 'Class';
   KLART     @title: 'Class Type';

   /* --- Attributes --- */
   CLINT     @title: 'Internal Class Number';
   CLSTATUS1 @title: 'Classification Status';
   STDCL     @title: 'Standard Class Indicator';
   DATUV     @title: 'Valid-From Date';
   AENNR     @title: 'Change Number';
   LKENZ     @title: 'Deletion Indicator';
   VONDT     @title: 'Assignment Valid-From Date';
   BISDT     @title: 'Assignment Valid-To Date';
   KLAGR     @title: 'Class Group';

};

annotate service.CharacteristicValuation with {

   /* --- Keys --- */
   ATNAM     @title: 'Characteristic Name';
   ATZHL     @title: 'Value Position';

   /* --- Value fields --- */
   ATINN     @title: 'Internal Characteristic Number';
   ATWRT     @title: 'Characteristic Value';
   ATWTB     @title: 'Characteristic Value Text';
   ATFLV     @title: 'Numeric Value From';
   ATFLB     @title: 'Numeric Value To';
   ATMEH     @title: 'Unit of Measure';
   ATCUR     @title: 'Currency';
   ATDAT     @title: 'Date Value';
   ATTIM     @title: 'Time Value';

   /* --- Characteristic metadata --- */
   ATFOR     @title: 'Characteristic Data Type';
   ANZST     @title: 'Characteristic Length';
   ANZDZ     @title: 'Number of Decimals';

   /* --- Control fields --- */
   ATVGLART  @title: 'Inherited Value Indicator';
   AENNR     @title: 'Change Number';
   LKENZ     @title: 'Deletion Indicator';
   ADZHL     @title: 'Author';
   ATAUT     @title: 'Changed By';
   ATWRT_DEP @title: 'Dependency Exists';

};

annotate service.Sales_Delivery with {
   VRKME @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'VRKME',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Salesunit'
         }
      ]
   };
};

annotate service.Sales_Delivery with {
   SCHME @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SCHME',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Unitofmeasureofdeliveryunit'
         }
      ]
   };
};

annotate service.Sales_Delivery with {
   SKTOF @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'SKTOF',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Cashdiscountindicator'
         }
      ]
   };
};

annotate service.Sales_Delivery with {
   VMSTA @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'VMSTA',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Distributionchainspecificmaterialstatus'
         }
      ]
   };
};


annotate service.Sales_Delivery with {

   Material @title: 'Material Association';
   VKORG    @title: 'Sales Organization';
   RDPRF    @title: 'Rounding Profile';
   PRODH    @title: 'Product Hierarchy';
   LVORM    @title: 'Deletion Indicator';
   MTPOS    @title: 'Item Category Group for Material Master';
   VTWEG    @title: 'Distribution Channel';
   VERSG    @title: 'Material statistics group';
   KTGRM    @title: 'Account Assignment Group for Material';

   // MVKE_Sales Measures
   AUMNG    @title: 'Minimum Order Quantity';
   LFMNG    @title: 'Minimum Delivery Quantity';
   VRKME    @title: 'Sales Unit';
   SCHME    @title: 'Delivery Unit';
   SKTOF    @title: 'Cash Discount Indicator';
   VMSTA    @title: 'Sales Status';
   VMSTD    @title: 'Valid From';
}

annotate service.Sales_tax with {
   Country           @title: 'Country';
   TaxCategory       @title: 'Tax Category';
   TaxClassification @title: 'Tax Classification';
}

annotate service.Valuation with {
   BWKEY        @title: 'Valuation Area';
   STPRS        @title: 'Standard Price';
   BWTAR        @title: 'Valuation Type';
   BWTTY        @title: 'Valuation Category';
   BKLAS        @title: 'Valuation Class';
   CURRENCY_KEY @title: 'Currency Key';
   CURTP        @title: 'Currency Type and Valuation View';
   VERPR        @title: 'Moving Average Price / Periodic Unit Price';
   VPRSV        @title: 'Price Control Indicator';
   PEINH        @title: 'Price Unit';
   WAERS        @title: 'Currency Key';
   MLAST        @title: 'Value Updating';
   KALN1        @title: 'Costing Number for Cost Estimate with Quantity Structure';
   LVORM        @title: 'Deletion Flag';
   ZKPRS        @title: 'Future Price';
   ZKDAT        @title: 'Future Price Validity Start Date';
   PPRDZ        @title: 'Planned Price Date';
   EKALR        @title: 'Costed with Quantity Structure';
   SPERW        @title: 'Inventory Blockage Value';
};

annotate service.Storage_Location with {
   LGORT @title: 'Storage Location';
   LGPBE @title: 'Storage Bin';
};

annotate dblayer.CharacteristicValuation with {

   /* --- Keys --- */
   ATNAM     @title: 'Characteristic Name';
   ATZHL     @title: 'Value Position';

   /* --- Value fields --- */
   ATINN     @title: 'Internal Characteristic Number';
   ATWRT     @title: 'Characteristic Value';
   ATWTB     @title: 'Characteristic Value Text';
   ATFLV     @title: 'Numeric Value From';
   ATFLB     @title: 'Numeric Value To';
   ATMEH     @title: 'Unit of Measure';
   ATCUR     @title: 'Currency';
   ATDAT     @title: 'Date Value';
   ATTIM     @title: 'Time Value';

   /* --- Characteristic metadata --- */
   ATFOR     @title: 'Characteristic Data Type';
   ANZST     @title: 'Characteristic Length';
   ANZDZ     @title: 'Number of Decimals';

   /* --- Control fields --- */
   ATVGLART  @title: 'Inherited Value Indicator';
   AENNR     @title: 'Change Number';
   LKENZ     @title: 'Deletion Indicator';
   ADZHL     @title: 'Author';
   ATAUT     @title: 'Changed By';
   ATWRT_DEP @title: 'Dependency Exists';

};

annotate dblayer.Plant with {
   WERKS      @title: 'Plant';
   MMSTA      @title: 'Plant-Specific Material Status';
   PRCTR      @title: 'Profit Center';
   XCHPF_marc @title: 'Batch Management Requirement Indicator';
   DISMM      @title: 'MRP Type';
   MAABC      @title: 'ABC Indicator';
   DISPO      @title: 'MRP Controller';


   LVORM      @title: 'Deletion Indicator';
   FIXLS      @title: 'Fixed Lot Size for Supply Demand Match';
   LADGR      @title: 'Loading Group';
   MTVFP      @title: 'Checking Group for Availability Check';
   DGRMRPPP   @title: 'Material Requirements Planning (MRP) Group';
   RDPRF      @title: 'Rounding Profile';

   SCM_GRPRT  @title: 'Goods Receipt Processing Time';


   HERKL      @title: 'Country of Origin of Material (Non-Preferential Origin)';

   DISPR      @title: 'MRP Processing Indicator';
   FXHOR      @title: 'Planning Time Fence';
   MINBE      @title: 'Reorder Point';
   SCM_HEUID  @title: 'SCM Heuristic ID';
   SCM_PFALE  @title: 'SCM Planning Area';
   SCM_PPALE  @title: 'SCM Production Planning Area';
   SCM_PSTRA  @title: 'SCM Planning Strategy';
   SCM_PWALE  @title: 'SCM Procurement Planning Area';

   //forcast
   AUFMRPFC   @title: 'MRP Consumption Mode';
   MISKZ      @title: 'Mixed MRP Indicator';
   PERIV      @title: 'Fiscal Year Variant';
   PERMRPFC   @title: 'MRP Period Indicator';
   STRGR      @title: 'Strategy Group';
   VINT1      @title: 'Consumption Period (Backward)';
   VINT2      @title: 'Consumption Period (Forward)';
   VRMOD      @title: 'Consumption Mode';
   WZEIT      @title: 'Processing Time';

   //   indicator
   AHDIS      @title: 'Discontinuation Indicator';
   ALTSL      @title: 'Alternative BOM Selection';
   AUSDT      @title: 'Effective-Out Date';
   KAUSF      @title: 'Component Scrap';
   KZAUS      @title: 'Discontinuation Indicator (Dependent)';
   KZBED      @title: 'Dependent Requirements Indicator';
   NFMAT      @title: 'Follow-Up Material';
   SAUFT      @title: 'Repetitive Manufacturing Profile';
   SBDKZ      @title: 'Individual / Collective Requirements';
   SFEPR      @title: 'Production Scheduling Profile';


   //   lot size
   AUSSS      @title: 'Assembly Scrap';
   BSTFE      @title: 'Fixed Lot Size';
   BSTMA      @title: 'Maximum Lot Size';
   BSTMI      @title: 'Minimum Lot Size';
   BSTRF      @title: 'Rounding Value';
   DISLS      @title: 'Lot-Sizing Procedure';
   EISBE      @title: 'Safety Stock';
   EISLO      @title: 'Minimum Safety Stock';
   LGRAD      @title: 'Service Level';
   MABST      @title: 'Maximum Stock Level';
   RDPMRPLS   @title: 'Rounding Profile';
   RWPMRPLS   @title: 'Range of Coverage Profile';
   SHFLG      @title: 'Storage Location MRP Indicator';
   SHPMRPLS   @title: 'Period Indicator for Safety Time';
   SHZET      @title: 'Safety Time';
   TAKZT      @title: 'Takt Time';

   //Procurement
   BESKZ      @title: 'Procurement Type';
   EPRMRPSP   @title: 'External Procurement Indicator';
   FABKZ      @title: 'JIT Delivery Schedule Indicator';
   KZECH      @title: 'Batch Entry Indicator';
   LGFMRPSP   @title: 'Issue Storage Location';
   LGPMRPSP   @title: 'Production Storage Location';
   MRPMRPSP   @title: 'MRP Indicator';
   PLIFZ      @title: 'Planned Delivery Time';
   RGEKZ      @title: 'Backflush Indicator';
   SCHGT      @title: 'Bulk Material Indicator';
   SOBMRPSP   @title: 'Special Procurement Type';
   USEQU      @title: 'Quota Arrangement Usage';
   VSPMRPSP   @title: 'Consumption Indicator';
   WEBAZ      @title: 'Goods Receipt Processing Time';

   // MARC_Purchasing
   EKGRP      @title: 'Purchasing Group';
   INSMK      @title: 'Stock in Quality Inspection';
   KAUTB      @title: 'Automatic PO Allowed';
   KORDB      @title: 'Source List Requirement';

   //   storage

   ABCMARCST  @title: 'Storage ABC Indicator';
   AUSME      @title: 'Unit of Issue';
   CCFIX      @title: 'Fixed Co-Product Quantity Indicator';
   LZEIH      @title: 'Production Storage Period';
   MAXLZ      @title: 'Maximum Storage Period';


   // costing
   AWSMARCCS  @title: 'Costing Lot Size';
   LOSGR      @title: 'Assembly Scrap Percentage';
   SOBMARCCS  @title: 'Special Procurement Type for Costing';
   VERID      @title: 'Production Version';

   //Worksheduling
   BASMG      @title: 'Base Quantity';
   BEARZ      @title: 'Processing Time';
   DZEIT      @title: 'In-House Production Time';
   FEVMARCWR  @title: 'Production Supervisor';
   FRTME      @title: 'Production Unit';
   RUEZT      @title: 'Setup and Teardown Time';
   SFCMARCWR  @title: 'Production Scheduling Profile';
   TRANZ      @title: 'Interoperation Time';
   UEETK      @title: 'Unlimited Overdelivery Allowed';
   UEETO      @title: 'Overdelivery Tolerance Limit';
   UNETO      @title: 'Underdelivery Tolerance Limit';
}

annotate dblayer.Warehouse with {
   LGNUM @title: 'Warehouse Number';
   LVORM @title: 'Deletion flag';
   LGBKZ @title: 'Storage Section Indicators';
   LTKZE @title: 'Storage type indicator for stock placement';
   LTKZA @title: 'Storage type indicator for stock removal';
   LHMG1 @title: 'Loading equipment quantity 1';
   LHMG2 @title: 'Loading equipment quantity 2';
   LHMG3 @title: 'Loading equipment quantity 3';
   LHME1 @title: 'Unit of measure for loading equipment quantity 1';
   LHME2 @title: 'Unit of measure for loading equipment quantity 2';
   LHME3 @title: 'Unit of measure for loading equipment quantity 3';
   LETY1 @title: '1st storage unit type';
   LETY2 @title: '2nd storage unit type';
   LETY3 @title: '3rd storage unit type';
   LVSME @title: 'Warehouse Management Unit of Measure';
   KZZUL @title: 'Indicator: Allow addition to existing stock';
   BLOCK @title: 'Bulk Storage Indicators';
   KZMBF @title: 'Indicator: Message to inventory management';
   BSSKZ @title: 'Special movement indicator for warehouse management';
   MKAPV @title: 'Capacity usage';
   BEZME @title: 'Unit of measure for capacity consumption';
   PLKPT @title: 'Picking storage type for rough-cut and detailed planning';
   VOMEM @title: 'Default for unit of measure from material master record';
   L2SKR @title: 'Material relevance for 2-step picking';
};

annotate dblayer.Storage_type with {

   LGTYP @title: 'Storage Type';
   LVORM @title: 'Deletion Flag';
   LGPLA @title: 'Storage Bin';
   LPMAX @title: 'Maximum Storage Bin Quantity';
   LPMIN @title: 'Minimum Storage Bin Quantity';
   MAMNG @title: 'Control Quantity';
   NSMNG @title: 'Replenishment Quantity';
   KOBER @title: 'Picking Area';
}

annotate dblayer.Alternate_UOM with {
   Material @title: 'Material Number';
   MEINH    @title: 'Alternative Unit of Measure';
   UMREZ    @title: 'Conversion Numerator to Base Unit';
   UMREN    @title: 'Conversion Denominator to Base Unit';
   EANNR    @title: 'International Article Number (EAN/UPC)';
   EAN11    @title: 'EAN/UPC Category';
   NUMTP    @title: 'EAN Category (Obsolete)';
   LAENG    @title: 'Length';
   BREIT    @title: 'Width';
   HOEHE    @title: 'Height';
   MEABM    @title: 'Dimension Unit';
   VOLUM    @title: 'Volume';
   VOLEH    @title: 'Volume Unit';
   BRGEW    @title: 'Gross Weight';
   GEWEI    @title: 'Weight Unit';
}

annotate dblayer.Mara_staging with {
   MATNR      @title: 'Material Number';
   MAKT_MAKTX @title: 'Material Description';
   BISMT      @title: 'Old Material Number';
   LVORM      @title: 'Deletion Indicator';
   MATKL      @title: 'Material Group';
   MBRSH      @title: 'Industry Sector';
   MEINS      @title: 'Base Unit of Measure';
   MSTAE      @title: 'Cross-Plant Material Status';
   MSTDE      @title: 'Valid From Date for Cross-Plant Material Status';
   MTART      @title: 'Material Type';
   SPART      @title: 'Division';
   EXTWG      @title: 'External Material Group';
   MAGRV      @title: 'Material Group: Packaging Materials';
   MTPOS_MARA @title: 'General Item Category Group';
   PRDHA      @title: 'Product Hierarchy';
   WRKST      @title: 'Basic Material';
   EAN11      @title: 'International Article Number (EAN/UPC)';
   VOLEH      @title: 'Volume Unit';
   VOLUM      @title: 'Volume';
   LAENG      @title: 'Length';
   BREIT      @title: 'Width';
   HOEHE      @title: 'Height';
   CUOBF      @title: 'Internal Object Number';
   NTGEW      @title: 'Net Weight';
   GEWEI      @title: 'Weight Unit';
   BRGEW      @title: 'Gross Weight';
   MEABM      @title: 'Unit of Length/Width/Height';
   SLED_BBD   @title: 'Expiration Date';

   QMPUR      @title: 'QM in Procurement Is Active';

   /* --- MARA : Purchasing --- */
   BSTME      @title: 'Order Unit';
   EKWSL      @title: 'Purchasing Value Key';
   MFRNR      @title: 'Manufacturer';
   MFRPN      @title: 'Manufacturer Part Number';
   VABME      @title: 'Variable Order Unit Allowed';

   /* --- MARA : Storage --- */
   BEHVO      @title: 'Container Requirements';
   ETIAR      @title: 'Label Type';
   ETIFO      @title: 'Label Form';
   IPRKZ      @title: 'Period Indicator for Shelf Life';
   MHDHB      @title: 'Total Shelf Life';
   MHDRZ      @title: 'Minimum Remaining Shelf Life';
   RAUBE      @title: 'Storage Conditions';
   STOMARAST  @title: 'Storage Percentage';
   TEMPB      @title: 'Temperature Conditions';
   WESCH      @title: 'Weight Unit';

}

annotate dblayer.Sales_Delivery with {

   Material @title: 'Material Association';
   VKORG    @title: 'Sales Organization';
   RDPRF    @title: 'Rounding Profile';
   PRODH    @title: 'Product Hierarchy';
   LVORM    @title: 'Deletion Indicator';
   MTPOS    @title: 'Item Category Group for Material Master';
   VTWEG    @title: 'Distribution Channel';
   VERSG    @title: 'Material statistics group';
   KTGRM    @title: 'Account Assignment Group for Material';
}

annotate dblayer.Sales_tax with {
   Country           @title: 'Country';
   TaxCategory       @title: 'Tax Category';
   TaxClassification @title: 'Tax Classification';
}

annotate dblayer.Valuation with {
   BWKEY        @title: 'Valuation Area';
   STPRS        @title: 'Standard Price';
   BWTAR        @title: 'Valuation Type';
   BWTTY        @title: 'Valuation Category';
   BKLAS        @title: 'Valuation Class';
   CURRENCY_KEY @title: 'Currency Key';
   CURTP        @title: 'Currency Type and Valuation View';
   VERPR        @title: 'Moving Average Price / Periodic Unit Price';
   VPRSV        @title: 'Price Control Indicator';
   PEINH        @title: 'Price Unit';
   WAERS        @title: 'Currency Key';
   MLAST        @title: 'Value Updating';
   KALN1        @title: 'Costing Number for Cost Estimate with Quantity Structure';
   LVORM        @title: 'Deletion Flag';
   ZKPRS        @title: 'Future Price';
   ZKDAT        @title: 'Future Price Validity Start Date';
   PPRDZ        @title: 'Planned Price Date';
   EKALR        @title: 'Costed with Quantity Structure';
   SPERW        @title: 'Inventory Blockage Value';
};

annotate dblayer.Storage_Location with {
   LGORT @title: 'Storage Location';
   LGPBE @title: 'Storage Bin';
};

annotate service.ApproverMatrix with {
   Model            @title: 'Model';
   Entity           @title: 'Entity';
   ControlField     @title: 'Control Field';
   ControlFieldName @title: 'Control Field Name';
   Value            @title: 'Value';

}

annotate service.plant with {
   WERKS @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'WERKS',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Plant'
         }
      ]
   };

}

annotate service.ApproverMatrix with {
   Value @Common.ValueList               : {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'Value',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'MaterialType'
         }
      ]
   };
   Value @Common.ValueListWithFixedValues: true;

}

annotate service.plant @(Common: {SideEffects: {
   $Type           : 'Common.SideEffectsType',
   SourceProperties: [
      WERKS,
      DISPO,
      BESKZ,
      EKGRP,
      BEARZ,
      DISMM
   ],
   TargetProperties: [
      PRCTR,
      DISPO,
      BESKZ,
      EKGRP,
      DISMM
   ]
}});

annotate service.Mara with @(Common: {SideEffects: {
   $Type           : 'Common.SideEffectsType',
   SourceProperties: [MAKT_MAKTX],
   TargetEntities  : [to_Description]

}, });

annotate service.Plant_Approvers with {
   ViewName @Common.ValueList: {
      CollectionPath: 'EntityItems',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'ViewName',
            ValueListProperty: 'entity'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'description'
         }
      ]
   };

}

annotate service.FieldProperty with {
   FieldName @Common.ValueList: {
      CollectionPath: 'FieldAtribute',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'FieldName',
            ValueListProperty: 'fieldName'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'description'
         },
         {
            $Type            : 'Common.ValueListParameterIn',
            LocalDataProperty: 'ViewName', // <-- bind UI field
            ValueListProperty: 'entityItems_entity'
         }
      ]
   }
};

annotate service.SectionApproverMatrix with {
   MTART @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: 'MTART',
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'MaterialType'
         }
      ]
   };

}

annotate service.SectionApproverMatrix with {

   WERKS @Common.ValueList: {
      CollectionPath: 'Value_List',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: WERKS,
            ValueListProperty: 'Value'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Description'
         },
         {
            $Type            : 'Common.ValueListParameterConstant',
            ValueListProperty: 'Fixed_Type',
            Constant         : 'Plant'
         }
      ]
   };


};
