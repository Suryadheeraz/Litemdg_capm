
const cds = require("@sap/cds");

const { executeHttpRequest } = require('@sap-cloud-sdk/http-client');
const connectivity = require('@sap-cloud-sdk/connectivity');

async function fnReadTables(tx, ipJobID, srv) {
  const {
    Mara,
    plant,
    Description,
    Storage_Location,
    QualityManagement,
    WorkScheduling,
    Sales_Delivery,
    Sales_tax,
    Valuation,
    Alternate_UOM

  } = srv.entities;
  // console.log('Fetching data for input material numbers: '+JSON.stringify(ipMatnrs));
  // const { ipMatnrs } = req.data;
  // const { ipJobID } = req.data;
  // const tx = cds.transaction(req);

  const payloads = [];
  const ipMatnrs = await SELECT.from("litemdg.ReplicationReport").where({
    JobID: ipJobID
  });

  for (const amatnr of ipMatnrs) {
    let matnr = amatnr.MATNR;
    const mara = await tx.run(
      SELECT.one.from(Mara).where({ MATNR: matnr })
    );
    if (!mara) continue;

    const plants = await tx.run(
      SELECT.from(plant).where({ mat_plant_ID: mara.ID })
    );
    const descriptions = await tx.run(
      SELECT.from(Description).where({ Material_ID: mara.ID })
    );
    const altUOMs = await tx.run(SELECT.from(Alternate_UOM).where({ Material_ID: mara.ID }));

    const storLocs = await tx.run(
      SELECT.from(Storage_Location).where({ plant_mat_plant_ID: mara.ID })
    );

    const qualitymgmt = await tx.run(
      SELECT.from(QualityManagement).where({ parent_mat_plant_ID: mara.ID })
    );
    const workschedule = await tx.run(
      SELECT.from(WorkScheduling).where({ parent_mat_plant_ID: mara.ID })
    );

    const sales = await tx.run(
      SELECT.from(Sales_Delivery).where({ Material_ID: mara.ID })
    );
    const SalesTx = await tx.run(
      SELECT.from(Sales_tax).where({ VKORG_Material_ID: mara.ID }));

    const valuations = await tx.run(
      SELECT.from(Valuation).where({ Material_ID: mara.ID })
    );

    const payload = buildPayload(mara, plants, descriptions, altUOMs, storLocs, qualitymgmt, workschedule, sales, SalesTx,valuations);

    console.log("onPremise Payload  : " + JSON.stringify(payload));
    payloads.push(payload);
  }

  return payloads;
}

async function fnReadClassificationView(tx, ipJobID, srv) {

  const { ClassAssignment, CharacteristicValuation, Mara } = srv.entities;
  const payloads = [];

  const ipMatnrs = await SELECT
    .from("litemdg.ReplicationReport")
    .where({ JobID: ipJobID });

  for (const amatnr of ipMatnrs) {

    const mara = await tx.run(
      SELECT.one.from(Mara).where({ MATNR: amatnr.MATNR })
    );
    if (!mara) continue;

    const aClassAssignments = await tx.run(
      SELECT.from(ClassAssignment).where({ MARA_MATNR: mara.MATNR })
    );

    const aCharacteristicValuations = await tx.run(
      SELECT.from(CharacteristicValuation)
        .where({ CValuation_MARA_MATNR: mara.MATNR })
    );

    // Build payload per class
    const classAssignmentsPayload = aClassAssignments.map(ca => {

      const characteristicsPayload =
        aCharacteristicValuations
          .filter(cv =>
            cv.CValuation_CLASS === ca.CLASS &&
            cv.CValuation_KLART === ca.KLART
          )
          .map(cv => ({
            OBJEK: mara.MATNR,
            KLART: cv.CValuation_KLART,
            CLASS: cv.CValuation_CLASS,
            ATNAM: cv.ATNAM,
            ATWRT: cv.ATWRT,
            // ATZHL : cv.ATZHL
          }));

      return {
        OBJEK: mara.MATNR,
        CLASS: ca.CLASS,
        KLART: ca.KLART,
        CLSTATUS1: ca.CLSTATUS1 ?? "1",
        STDCL: ca.STDCL ?? "X",
        to_CharacteristicValuation: characteristicsPayload
      };
    });

    const classificationPayload = {
      MATNR: mara.MATNR,
      to_ClassAssignment: classAssignmentsPayload
    };

    payloads.push(classificationPayload);
  }

  return payloads;


}
function buildPayload(mara, plants, descriptions, altUOMs, storLocs, qualitymgmt, workschedule, sales, SalesTx, valuations) {
  const formatDecimal = (value, scale) =>
  Number(value ?? 0).toFixed(scale);

  return {
    Product: mara.MATNR,
    BaseUnit: mara.MEINS,
    Division: mara.SPART,
    NetWeight: mara.NTGEW?.toString(),
    VolumeUnit: mara.VOLEH,
    WeightUnit: mara.GEWEI,
    GrossWeight: mara.BRGEW?.toString(),
    ProductType: mara.MTART,
    ProductGroup: mara.MATKL,
    ProductOldID: mara.BISMT,
    IndustrySector: mara.MBRSH,
    MaterialVolume: mara.VOLUM?.toString(),
    SizeOrDimensionText: `${mara.LAENG} X ${mara.BREIT} X ${mara.HOEHE}`,
    CrossPlantStatus: mara.MSTAE,
    ProductHierarchy: mara.PRDHA,
    ItemCategoryGroup: mara.MTPOS_MARA,
    IsMarkedForDeletion: mara.LVORM,
    ProductStandardID: mara.WRKST,
    ExternalProductGroup: mara.EXTWG,
    InternationalArticleNumberCat: mara.EAN11,

    to_Description: {
      results: descriptions.map(d => ({
        Product: mara.MATNR,
        Language: d.code,
        ProductDescription: d.Description
      }))
    },

    to_ProductUnitsOfMeasure: {
  results: altUOMs.map(uom => ({

    Product: mara.MATNR,
    BaseUnit: mara.MEINS,

    AlternativeUnit: uom.MEINH,

    QuantityNumerator: formatDecimal(uom.UMREZ, 0),
    QuantityDenominator: formatDecimal(uom.UMREN, 0),

    ProductMeasurementUnit: uom.MEABM,

    UnitSpecificProductLength: formatDecimal(uom.LAENG, 3),
    UnitSpecificProductWidth: formatDecimal(uom.BREIT, 3),
    UnitSpecificProductHeight: formatDecimal(uom.HOEHE, 3),

    MaterialVolume: formatDecimal(uom.VOLUM, 3),
    VolumeUnit: uom.VOLEH,

    GrossWeight: formatDecimal(uom.BRGEW, 3),
    WeightUnit: uom.GEWEI

  }))
},

    to_ProductStorage: {
      Product: mara.MATNR,
      ExpirationDate: mara.SLED_BBD,
      TotalShelfLife: mara.MHDHB,
      StorageConditions: mara.RAUBE,
      MinRemainingShelfLife: mara.MHDRZ,
      ShelfLifeExpirationDatePeriod: mara.IPRKZ
    },

    to_ProductSales: {
      Product: mara.MATNR,
      TransportationGroup: mara.TRAGR
    },

    to_ProductProcurement: {
      Product: mara.MATNR,
      PurchasingAcknProfile: mara.EKWSL
    },

    to_ProductQualityMgmt: {
      Product: mara.MATNR,
      QltyMgmtInProcmtIsActive: mara.QMPUR
    },

    to_Plant: {
      results: plants.map(p => ({
        Plant: p.WERKS,
        Product: mara.MATNR,
        MRPType: p.DISMM,
        ProcurementType: p.BESKZ,
        MRPResponsible: p.DISPO,
        ProfitCenter: p.PRCTR,
        ABCIndicator: p.MAABC,
        IsMarkedForDeletion: p.LVORM,
        FixedLotSizeQuantity: p.FIXLS?.toString(),
        GoodsReceiptDuration: p.SCM_GRPRT,
        IsInternalBatchManaged: p.XCHPF_marc,

        to_PlantSales: {
          Plant: p.WERKS,
          Product: mara.MATNR,
          LoadingGroup: p.LADGR,
          AvailabilityCheckType: p.MTVFP
        },

        to_StorageLocation: {
          results: storLocs
            .filter(s => s.plant_WERKS === p.WERKS)
            .map(s => ({
              Plant: p.WERKS,
              Product: mara.MATNR,
              StorageLocation: s.LGORT,
              IsMarkedForDeletion: false,
              WarehouseStorageBin: s.LGPBE
            }))
        },

        to_PlantQualityMgmt: {
          Plant: p.WERKS,
          Product: mara.MATNR,
          QualityMgmtCtrlKey: p.SSQSS,
          MaximumStoragePeriod: "0",
          HasPostToInspectionStock: false,
          RecrrgInspIntervalTimeInDays: "0",
          SuplrQualityManagementSystem: p.QMSUP,
          MatlQualityAuthorizationGroup: p.MATQGR,
          ProductQualityCertificateType: p.QZGTP,
          InspLotDocumentationIsRequired: true
        },

        // to_PlantQualityMgmt: (() => {
        //   const qm = qualitymgmt.find(q => q.parent_WERKS === p.WERKS);
        //   if (!qm) return undefined;

        //   return {
        //     Plant: p.WERKS,
        //     Product: mara.MATNR,
        //     QualityMgmtCtrlKey: qm.SSQSS,
        //     MaximumStoragePeriod: "0",
        //     HasPostToInspectionStock: false,
        //     RecrrgInspIntervalTimeInDays: "0",
        //     SuplrQualityManagementSystem: qm.QMSUP,
        //     MatlQualityAuthorizationGroup: qm.MATQGR,
        //     ProductQualityCertificateType: qm.QZGTP,
        //     InspLotDocumentationIsRequired: qm.KZDKZ
        //   };
        // })(),

        to_ProductWorkScheduling: {
          Plant: p.WERKS,
          Product: mara.MATNR,
          BaseUnit: mara.MEINS,

          // Decimal fields → MUST be numbers

          ProductProductionQuantityUnit: p.FRTME || "",
          ProductionSupervisor: p.FEVMARCWR,
          ProductionSchedulingProfile: p.SFCMARCWR,
          UnlimitedOverDelivIsAllowed: p.UEETK === 'X',
          MaterialBaseQuantity: (p.BASMG ?? 0).toFixed(3),
          ProductProcessingTime: (p.BEARZ ?? 0).toFixed(2),
          // // InHouseProductionTime: (p.DZEIT ?? 0).toFixed(0),
          // SetupAndTeardownTime: (p.RUEZT ?? 0).toFixed(2),
          TransitionTime: (p.TRANZ ?? 0).toFixed(2),
          OverDelivToleranceLimit: (p.UEETO ?? 0).toFixed(1),
          // UnderDelivToleranceLimit: (p.UNETO ?? 0).toFixed(1),

        },
        // to_ProductWorkScheduling: (() => {
        //   const ws = workschedule.find(w => w.parent_WERKS === p.WERKS);
        //   if (!ws) return undefined;

        //   return {
        //     Plant: p.WERKS,
        //     Product: mara.MATNR,
        //     BaseUnit: mara.MEINS,
        //     TransitionTime: ws.TRTIME?.toString(),
        //     MaterialBaseQuantity: ws.BASQUAN?.toString(),
        //     ProductionSupervisor: ws.FEVMARCWR,
        //     // SetupAndTeardownTime: ws.RUEZT?.toString(),
        //     SetupAndTeardownTime:"0.00",
        //     ProductProcessingTime: ws.BEARZ?.toString(),
        //     OverDelivToleranceLimit: ws.UEBTK?.toString(),
        //     // UnderDelivToleranceLimit: ws.UNTER?.toString(),
        //     ProdnOrderIsBatchRequired: ws.XCHPF_wk,
        //     ProductionInvtryManagedLoc: "YFP1",
        //     ProductionSchedulingProfile: ws.SFCMARCWR,
        //     UnlimitedOverDelivIsAllowed: false,
        //     MatlCompIsMarkedForBackflush: "1",
        //     OrderChangeManagementProfile: ws.AENNR,
        //     ProductProductionQuantityUnit: ws.MEINH_PROD,
        //     TransitionMatrixProductsGroup: ws.TRGRP
        //   };
        // })(),
        to_ProductSupplyPlanning: {
          Plant: p.WERKS,
          MRPType: p.DISMM,
          Product: mara.MATNR,
          Currency: "", // Fill if available
          MRPGroup: p.DGRMRPPP,
          ABCIndicator: p.MAABC,
          MRPResponsible: p.DISPO,
          ProcurementType: p.BESKZ,
          RoundingProfile: p.RDPRF,
          LotSizingProcedure: p.DISLS,
          FixedLotSizeQuantity: p.BSTFE?.toString(),
          GoodsReceiptDuration: p.SCM_GRPRT,
          MaximumLotSizeQuantity: p.BSTMA?.toString(),
          MinimumLotSizeQuantity: p.BSTMI?.toString()
        },

        to_ProdPlantInternationalTrade: {
          Plant: p.WERKS,
          Product: mara.MATNR,
          CountryOfOrigin: p.HERKL
        }
      }))
    },
    to_SalesDelivery: {
      results: sales.map(s => ({

        Product: mara.MATNR,
        ProductSalesOrg: s.VKORG,
        ProductDistributionChnl: s.VTWEG,

        ProductHierarchy: s.PRODH,
        ItemCategoryGroup: s.MTPOS,
        RoundingProfile: s.RDPRF,
        IsMarkedForDeletion: s.LVORM === true,

        MinimumOrderQuantity: (s.AUMNG ?? 0).toFixed(3),
        DeliveryQuantity: (s.LFMNG ?? 0).toFixed(3),

        SalesMeasureUnit: s.VRKME,
        DeliveryQuantityUnit: s.SCHME,
        CashDiscountIsDeductible: s.SKTOF === true,

        ProductSalesStatus: s.VMSTA,
        ProductSalesStatusValidityDate: s.VMSTD,

        to_SalesTax: {
          results: SalesTx
            .filter(t =>
              t.VKORG_VKORG === s.VKORG &&
              t.VKORG_VTWEG === s.VTWEG
            )
            .map(t => ({

              Product: mara.MATNR,
              
             

              Country: t.Country,
              TaxCategory: t.TaxCategory,
              TaxClassification: t.TaxClassification

            }))
        }

  }))
  
}
 

  };
}

async function callS4Destination(req, srv) {



  const { ipJobID, ipSystem } = req.data;

  console.log(`Calling S4 system with Job ID: ` + JSON.stringify(req.data));
  let definition,classDefinition;
  if (ipSystem === 'Cloud') {
    definition = cds.env.requires["API_PRODUCT_SRV_Cloud"];
  }
  else {
    definition = cds.env.requires["API_PRODUCT_SRV"];
    classDefinition = cds.env.requires["C_CLASSIFICATION_SRV"];
  }



  if (!definition || !definition.credentials?.destination) {
    throw new Error(`Missing or misconfigured cds.requires entry for: ${service}`);
  }
  if (!classDefinition || !classDefinition.credentials?.destination) {
    throw new Error(`Missing or classDefinition: ${service}`);
  }

  const dest = await connectivity.getDestination({ destinationName: definition.credentials.destination });
  const sPath = `${definition.credentials.path}`
  const sClassDefPath = `${classDefinition.credentials.path}`
  if (!dest || !dest.url) {
    throw new Error(`Destination ${definition.credentials.destination} not found or lacks a URL.`);
  }

  console.log(`Making request to destination:` + JSON.stringify(dest));

  const tx = cds.transaction(req);

  let payloads;
  if (ipSystem === 'Cloud') {
    payloads = [{
      "ProductType": "FERT",
      "BaseUnit": "PC",
      "IndustrySector": "M",
      "ProductGroup": "L004",
      "Division": "00",
      "to_Description": [
        {
          "Language": "EN",
          "ProductDescription": "Test Material 1002"
        }
      ],
      "to_Plant": [
        {
          "Plant": "1710",
          "to_StorageLocation": [
            {
              "Plant": "1710",
              "StorageLocation": "171A"
            }
          ]
        }
      ]
    }];
  }
  else {
    payloads = await fnReadTables(tx, ipJobID, srv);
  }


 const errorResults = [];

for (const payload of payloads) {
  let sResponseProduct = payload.Product; // default, so catch has something

  try {

    const csrfResponse = await executeHttpRequest(
      { destinationName: dest.name },
      {
        method: 'GET',
        url: sPath + "/A_Product",
        headers: {
          'x-csrf-token': 'Fetch',
          'Accept': 'application/json'
        }
      }
    );

    const response = await executeHttpRequest(
      { destinationName: dest.name },
      {
        method: 'POST',
        url: `${sPath}/A_Product`,
        data: payload,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'x-csrf-token': csrfResponse.headers['x-csrf-token'],
          'Cookie': csrfResponse.headers['set-cookie']?.join(';')
        }
      },
      {
        fetchCsrfToken: false
      }
    );

    // update value after successful material creation
    sResponseProduct = response.data?.d?.Product ?? payload.Product;

    // ================== CLASSIFICATION CALL ==================
    // const aClassificationPayload = await fnReadClassificationView(tx, ipJobID, srv);
    const aClassificationPayload =
  (await fnReadClassificationView(tx, ipJobID, srv))
    .filter(p => p.MATNR === sResponseProduct);

    for (const classificationPayload of aClassificationPayload) {

      console.log("classificationPayload:", JSON.stringify(classificationPayload));

      const classificationCsrf = await executeHttpRequest(
        { destinationName: dest.name },
        {
          method: 'GET',
          url: `${sClassDefPath}/$metadata`,
          headers: {
            'x-csrf-token': 'Fetch'
          }
        }
      );

      const classCsrfToken = classificationCsrf.headers['x-csrf-token'];
      const classCookies = classificationCsrf.headers['set-cookie'];

      const classificationResponse = await executeHttpRequest(
        { destinationName: dest.name },
        {
          method: 'POST',
          url: `${sClassDefPath}/Material`,
          data: classificationPayload,
          headers: {
            'Content-Type': 'application/json',
            'x-csrf-token': classCsrfToken,
            'Cookie': classCookies?.join(';')
          }
        },
        { fetchCsrfToken: false }
      );

      console.log("Classification created:", classificationResponse.data);
    }
    // ================== END CLASSIFICATION ==================

    console.log(`Material ${sResponseProduct} replicated.`);

    const successEntry = {
      MATNR: sResponseProduct,
      JobID: ipJobID,
      STATUS: "Success",
      Message: "Replicated Successfully",
      Timestamp: new Date(),
      REPLICATED_BY: req.user.id
    };

    await tx.run(
      UPDATE("litemdg.ReplicationReport")
        .set(successEntry)
        .where({ JobID: ipJobID, MATNR: payload.Product})
    );

    errorResults.push(successEntry);

  } catch (error) {

    const errMessage =
      error?.response?.data?.error?.message?.value ||
      error.message ||
      "Unknown error";

    console.error(`❌ Error posting material ${sResponseProduct}:`, errMessage);

    const errorEntry = {
      MATNR: sResponseProduct,
      JobID: ipJobID,
      STATUS: "Failed",
      Message: errMessage,
      Timestamp: new Date(),
      REPLICATED_BY: req.user.id
    };

    await tx.run(
      UPDATE("litemdg.ReplicationReport")
        .set(errorEntry)
        .where({ JobID: ipJobID, MATNR: payload.Product })
    );

    errorResults.push(errorEntry);
  }
}

return errorResults;

}

module.exports = {
  callS4Destination
}