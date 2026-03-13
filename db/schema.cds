namespace mdg;

using {
    cuid,
    managed,
    sap.common.CodeList
} from '@sap/cds/common';


entity Mara_staging : cuid, managed {
        @mandatory
    key MATNR             : String(40); // Material Number
        MAKT_MAKTX        : String(100); // Material Description
        BISMT             : String(40); // Old Material Number
        LVORM             : Boolean; // Deletion Indicator
        MATKL             : String(9); // Material Group

        @mandatory
        MBRSH             : String(1) default 'M'; // Industry Sector
        MEINS             : String(3);
        MSTAE             : String(2); // Cross-Plant Material Status
        MSTDE             : Date; // Date from which the Cross-Plant Material Status is Valid

        MTART             : String(4);
        SPART             : String(2); // Division
        EXTWG             : String(18); // External Material Group
        MAGRV             : String(4); // Material Group: Packaging Materials
        MTPOS_MARA        : String(4); // General Item Category Group
        PRDHA             : String(18); // Product Hierarchy
        WRKST             : String(48); // Basic Material
        EAN11             : String(18); // International Article Number (EAN/UPC)
        VOLEH             : String(3); // Volume Unit
        VOLUM             : Decimal(13, 3); // Volume
        LAENG             : Integer;
        BREIT             : Integer;
        HOEHE             : Integer;
        CUOBF             : Integer;
        NTGEW             : Decimal(13, 3); //Net Weight
        GEWEI             : String(3) default 'KG'; //Weight Unit
        BRGEW             : Decimal(13, 3); //Gross Wight
        MEABM             : String(3) default 'M'; //UNit of length/width/height
        SLED_BBD          : String(1); //Expiration Date
        TRAGR             : String(4); //Transportation Group
        VHART               : String;
        
        QMPUR             : Boolean; //QM in Procurement Is Active
        Status            : String(10); //Active or InActive
        Request_Desc      : String;
        RoleAssinged  : String;

        // MARA_Purchasing
        BSTME       :   String(3);   // Order Unit
        EKWSL       :   String(4); //Purchasing Value Key
        MFRNR       :   String(10);  // Manufacturer
        MFRPN       :   String(40);  // Manufacturer Part Number
        VABME       :   Boolean; 
       
        // MARA_Storage
        BEHVO      :    String(2);   // Container Requirements
        ETIAR      :    String(2);   // Label Type
        ETIFO      :    String(2);   // Label Form
        IPRKZ      :    String(1);   // Period Indicator for SLED
        MHDHB             : String(4);    // Total Shelf Life
        MHDRZ             : String(4);   // Min Remaining Shelf Life
        RAUBE      :    String(2);   // Storage Conditions
        STOMARAST  :    Decimal(5,2); // Storage Percentage
        TEMPB      :    String(2);   // Temperature Conditions
        WESCH      :    String(3);   // Unit of Weight
        plant             : Composition of many Plant
                                on plant.mat_plant = $self;
        to_sales_delivery : Composition of many Sales_Delivery
                                on to_sales_delivery.Material = $self;
        to_valuation      : Composition of many Valuation
                                on to_valuation.Material = $self;
        to_Description    : Composition of many Description
                                on to_Description.Material = $self;
        to_Warehouse      : Composition of many Warehouse
                                on to_Warehouse.Material = $self;
        to_Alternate_UOM  : Composition of many Alternate_UOM
                                on to_Alternate_UOM.Material = $self;
        
    
        to_ClassAssignments : Composition of many ClassAssignment on to_ClassAssignments.MARA = $self;
}

entity ClassAssignment {
    @UI.Hidden
    key MARA : Association to Mara_staging;
  /* --- Keys (SAP keys) --- */
  key OBJEK : String(40);   // KSSK-OBJEK (Material)
  key CLASS : String(18);   // KSSK-CLASS
  key KLART : String(3);    // KSSK-KLART

  /* --- Attributes --- */
  CLINT      : String(10);   // KSSK-CLINT
  CLSTATUS1  : String(1);    // KSSK-CLSTATUS1
  STDCL      : Boolean;      // KSSK-STDCL
  DATUV      : Date;         // KSSK-DATUV
  AENNR      : String(12);   // KSSK-AENNR
  LKENZ      : Boolean;      // KSSK-LKENZ
  VONDT      : Date;         // KSSK-VONDT
  BISDT      : Date;         // KSSK-BISDT
  KLAGR      : String(4);    // KLAH-KLAGR

  /* --- Associations --- */
  to_Mara : Association to Mara_staging;
  to_CharacteristicValuation : Composition of many CharacteristicValuation
    on  to_CharacteristicValuation.CValuation = $self;
    
}

entity CharacteristicValuation {
  /* --- Keys --- */

  key ATNAM : String(30);   // Characteristic Name
  key ATZHL : Integer;      // Value Position

  /* --- Value fields --- */
  ATINN : String(10);        // Internal Characteristic Number
  ATWRT : String(70);        // Characteristic Value
  ATWTB : String(70);        // Characteristic Value Text
  ATFLV : Decimal(31,14);    // Value From / Numeric Value
  ATFLB : Decimal(31,14);    // Value To
  ATMEH : String(3);         // Unit of Measure
  ATCUR : String(5);         // Currency
  ATDAT : Date;              // Date Value
  ATTIM : Time;              // Time Value

  /* --- Characteristic metadata --- */
  ATFOR : String(10);        // Data Type
  ANZST : Integer;           // Characteristic Length
  ANZDZ : Integer;           // Number of Decimals

  /* --- Control fields --- */
  ATVGLART   : Boolean;      // Inherited Value Indicator
  AENNR      : String(12);   // Change Number
  LKENZ      : Boolean;      // Deletion Indicator
  ADZHL      : String(12);   // Author
  ATAUT      : String(12);   // Changed By
  ATWRT_DEP  : Boolean;      // Dependency Exists
@UI.Hidden
  /* --- Associations --- */
  key CValuation : Association to ClassAssignment
 ;
}


entity Warehouse {
        @UI.Hidden
    key Material        : Association to Mara_staging; // Material Number
    key LGNUM           : String(3); // Warehouse Number / Warehouse Complex
        LVORM           : Boolean; // Deletion flag for all material data of a warehouse number
        LGBKZ           : String(3); // Storage Section Indicators
        LTKZE           : String(3); // Storage type indicator for stock placement
        LTKZA           : String(3); // Storage type indicator for stock removal

        LHMG1           : Decimal(13, 3); // Loading equipment quantity 1
        LHMG2           : Decimal(13, 3); // Loading equipment quantity 2
        LHMG3           : Decimal(13, 3); // Loading equipment quantity 3

        LHME1           : String(3); // Unit of measure for loading equipment quantity 1
        LHME2           : String(3); // Unit of measure for loading equipment quantity 2
        LHME3           : String(3); // Unit of measure for loading equipment quantity 3

        LETY1           : String(3); // 1st storage unit type
        LETY2           : String(3); // 2nd storage unit type
        LETY3           : String(3); // 3rd storage unit type

        LVSME           : String(3); // Warehouse Management Unit of Measure
        KZZUL           : Boolean; // Indicator: Allow addition to existing stock
        BLOCK           : String(2); // Bulk Storage Indicators
        KZMBF           : Boolean; // Indicator: Message to inventory management
        BSSKZ           : Boolean; // Special movement indicator for warehouse management

        MKAPV           : Decimal(11, 3); // Capacity usage
        BEZME           : String(3); // Unit of measure for capacity consumption
        PLKPT           : String(3); // Picking storage type for rough-cut and detailed planning
        VOMEM           : String(1); // Default for unit of measure from material master record
        L2SKR           : String(1); // Material relevance for 2-step picking
        to_Storage_type : Composition of many Storage_type
                              on to_Storage_type.Warehouse = $self
}

entity Storage_type {
        @UI.Hidden
    key Warehouse : Association to Warehouse; // Material Number
    key LGTYP     : String(3); // Storage Type

        LVORM     : Boolean; // Deletion flag for all material data of a storage type
        LGPLA     : String(10); // Storage Bin
        LPMAX     : Decimal(13, 3); // Maximum storage bin quantity
        LPMIN     : Decimal(13, 3); // Minimum storage bin quantity
        MAMNG     : Decimal(13, 3); // Control quantity
        NSMNG     : Decimal(13, 3); // Replenishment quantity
        KOBER     : String(3); // Picking Area
}

entity Alternate_UOM {
        @UI.Hidden
    key Material : Association to Mara_staging; // Material Number
    key MEINH    : String(3); // Alternative Unit of Measure for Stockkeeping Unit

        UMREZ    : Decimal(5, 0); // Numerator for Conversion to Base Units of Measure
        UMREN    : Decimal(5, 0); // Denominator for conversion to base units of measure
        EANNR    : String(13); // International Article Number (EAN/UPC)
        EAN11    : String(18); // Category of International Article Number (EAN)
        NUMTP    : String(2); // European Article Number (EAN) - obsolete!!!!!
        LAENG    : Decimal(13, 3); // Length
        BREIT    : Decimal(13, 3); // Width
        HOEHE    : Decimal(13, 3); // Height
        MEABM    : String(3); // Unit of Dimension for Length/Width/Height
        VOLUM    : Decimal(13, 3); // Volume
        VOLEH    : String(3); // Volume Unit
        BRGEW    : Decimal(13, 3); // Gross Weight
        GEWEI    : String(3); // Unit of Weight
}

entity Description {
        @UI.Hidden
    key Material    : Association to Mara_staging;

        @title: 'Language Code'
    key code        : String(4);
        Description : String;

}

entity Plant {
        @UI.Hidden
    key mat_plant           : Association to Mara_staging;

        @mandatory
    key WERKS               : String(4);
        MMSTA               : String(2); //Plant-Specific Material Status
        PRCTR               : String(10);
        XCHPF_marc          : Boolean; //Batch Management Requirement Indicator
        DISPO               : String(3); //MRP Controller
        
        
        LVORM               : Boolean; // Deletion Indicator
        FIXLS               : Decimal(13, 3); //Fixed lot size for Supply Demand Match
        //SCM_GRPRT:Integer;//Goods Receipt Processing Time
        LADGR               : String(4); //Loading Group
        MTVFP               : String(2); //Checking Group for availaility check
       
        RDPRF               : String(4); //Rounding Profile
        SCM_GRPRT           : String; //Goods Reciept Processing time -- need to checked
        
        
        HERKL               : String(3); //Country of Origin of Material (Non-Preferential Origin)
        to_Storage_Location : Composition of many Storage_Location on to_Storage_Location.plant = $self;
          to_WorkScheduling    : Composition of many WorkScheduling on to_WorkScheduling.parent = $self;
       to_QualityManagement : Composition of many QualityManagement on to_QualityManagement.parent = $self;

          /* ============================= */
  /* MRP Planning / Procedure      */
  /* ============================= */

  DGRMRPPP   : String;          // MRP Group
        @mandatory
  DISMM      : String(2);       // MRP Type
  MAABC      : String(1);       // ABC Indicator
  DISPR      : String;          // MRP Processing Indicator
  FXHOR      :  String;        // Planning Time Fence
  MINBE      : Decimal(13,3);   // Reorder Point

  SCM_HEUID  : String;
  SCM_PFALE  : String;
  SCM_PPALE  : String;
  SCM_PSTRA  : String;
  SCM_PWALE  : String;

  /* ============================= */
  /* MRP Forecast / Consumption    */
  /* ============================= */

        PERIV                :      String;
        STRGR                :      String;
        VRMOD                :      String;
       
  AUFMRPFC   : String(1);       // MRP Consumption Mode
  MISKZ      : String(1);       // Mixed MRP Indicator
  
  PERMRPFC   : String(1);       // MRP Period Indicator
  
 
  WZEIT      : Integer;         // Processing Time
  VINT1      : Integer;         // Consumption Period (Backward)
  VINT2      : Integer;         // Consumption Period (Forward)

  /* ============================= */
  /* MRP Indicators                */
  /* ============================= */
        KZBED               :       String(1);
        ALTSL               :       String;
        NFMAT               :       String;
        SAUFT               :       String;
  AHDIS      : String(1);       // Discontinuation Indicator
  AUSDT      : Date;            // Effective-Out Date
    KAUSF      : Decimal(5,2);    // Component Scrap
  KZAUS      : String(1);       // Discontinuation Indicator (Dependent)
   SBDKZ      : String(1);       // Individual / Collective Requirements
  SFEPR      : String(4);       // Production Scheduling Profile

  /* ============================= */
  /* MRP Lot Size                  */
  /* ============================= */
 
  AUSSS      : Decimal(5,2);    // Assembly Scrap
  DISLS      : String(2);       // Lot-Sizing Procedure
  BSTFE      : Decimal(13,3);   // Fixed Lot Size
  BSTMA      : Decimal(13,3);   // Maximum Lot Size
  BSTMI      : Decimal(13,3);   // Minimum Lot Size
  BSTRF      : Decimal(13,3);   // Rounding Value
  EISBE      : Decimal(13,3);   // Safety Stock
  EISLO      : Decimal(13,3);   // Minimum Safety Stock
  LGRAD      : Decimal(5,2);    // Service Level
  MABST      : Decimal(13,3);   // Maximum Stock Level
  RDPMRPLS  : String(4);       // Rounding Profile
  RWPMRPLS  : String(4);       // Range of Coverage Profile
  SHFLG      : String(1);       // Storage Location MRP Indicator
  SHPMRPLS  : String(1);       // Period Indicator for Safety Time
  SHZET      : Integer;         // Safety Time
  TAKZT      : Decimal(5,2);    // Takt Time

  /* ============================= */
  /* MRP Procurement               */
  /* ============================= */

        SOBMRPSP            :       String;
       
  BESKZ      : String(1);       // Procurement Type
  
  PLIFZ      : Integer;         // Planned Delivery Time
  WEBAZ      : Integer;         // Goods Receipt Processing Time
  FABKZ      : String(1);       // JIT Delivery Schedule Indicator
  EPRMRPSP  : String(1);       // External Procurement Indicator
  KZECH      : String(1);       // Batch Entry Indicator
  LGFMRPSP  : String(4);       // Issue Storage Location
  LGPMRPSP  : String(4);       // Production Storage Location
  MRPMRPSP  : String(1);       // MRP Indicator
  RGEKZ      : String(1);       // Backflush Indicator
  SCHGT      : String(1);       // Bulk Material Indicator
  USEQU      : String(1);       // Quota Arrangement Usage
  VSPMRPSP  : String(1);       // Consumption Indicator
      
        // MARC_Purchasing
        EKGRP               :       String(3); //Purchasing Group
        INSMK               :       String(1);   // Stock in Quality Inspection
        KAUTB               :       Boolean;     // Automatic PO Allowed
        KORDB               :       Boolean;     // Source List Requirement
        
        // MARC_Costing
        AWSMARCCS : Decimal(13,3); // Costing Lot Size
        LOSGR     : Decimal(5,2);  // Assembly Scrap (%)
        SOBMARCCS : String(2);     // Special Procurement for Costing
        VERID     : String(4);     // Production Version

        // MARC_Storage

        ABCMARCST : String(1);   // Storage ABC Indicator
        AUSME     : String(3);   // Unit of Issue
        CCFIX     : Boolean;     // Fixed Co-Product Quantity
        LZEIH     : Integer;     // Production Storage Period
        MAXLZ     : Integer;     // Maximum Storage Period
       
    //    QualityManagement 
    QMPUR : Boolean;
    KZDKZ : String(1);
    PRFRQ : Decimal(5,0);
    QZGTP : String(4);
    SSQSS : String(8);
    MATQGR : String(6);
    QMSUP : String(6);

    // Worksheduling

    BASMG     : Decimal(13,3); //Base Quantity
    BEARZ     : Decimal(5, 2); // processing Time
   
    DZEIT     : Decimal(3,0); // In-house production time
    FEVMARCWR : String(3);
    FRTME     : String(3); // Production unit
    RUEZT     : Decimal(5,2); //Setup and teardown time
    SFCMARCWR : String(6);
    TRANZ     : Decimal(5,2); // Interoperation time
    UEETK     : String(1); // Indicator: Unlimited Overdelivery Allowed
    UEETO     : Decimal(3,1); // Overdelivery tolerance limit
    UNETO     : Decimal(3,1); // Underdelivery tolerance limit
}




entity WorkScheduling {//to be removed as it should be one to one in plant
    @UI.Hidden
    key parent : Association to Plant;
 
    BASMG     : Decimal(13,3);
    BEARZ     : Decimal(5,2);
    DZEIT     : Decimal(3,0);
    FEVMARCWR : String(3);
    FRTME     : String(3);
    RUEZT     : Decimal(5,2);
    SFCMARCWR : String(6);
    TRANZ     : Decimal(5,2);
    UEETK     : String(1);
    UEETO     : Decimal(3,1);
    UNETO     : Decimal(3,1);
}
 
 
entity QualityManagement { //to be removed as it should be one to one in plant
     @UI.Hidden
    key parent : Association to Plant;
 
    QMPUR : Boolean;
    KZDKZ : String(1);
    PRFRQ : Decimal(5,0);
    QZGTP : String(4);
    SSQSS : String(8);
}
entity Storage_Location {
        @UI.Hidden
    key plant : Association to Plant;

        @mandatory
    key LGORT : String(4); //Storage Location
        LGPBE : String; //Storage Bin
}

entity Sales_Delivery {
        @UI.Hidden
    key Material     : Association to Mara_staging;

        @title: 'Sales Organization'
    key VKORG        : String(4); //Sales Organization
        RDPRF        : String(4); //Rounding Profile
        PRODH        : String(18); //Product hierarchy
        LVORM        : Boolean; // Deletion Indicator
        MTPOS        : String(4); //Item Category Group for Material Master
        VERSG        : String(1); // Material statistics group
        KTGRM        : String(2); // Account Assignment Group for Material

        @title: 'Distribution Channel'
    key VTWEG        : String(2); //Distribution Channel
    // MVKE_Sales Measures
         AUMNG   : Decimal(13,3); // Minimum Order Quantity
        LFMNG   : Decimal(13,3); // Minimum Delivery Quantity
        VRKME   : String(3);     // Sales Unit
        SCHME   : String(3);     // Delivery Unit
        SKTOF   : Boolean;       // Cash Discount Indicator
        VMSTA   : String(2);     // Sales Status
        VMSTD   : Date;          // Valid From
     
        to_Sales_tax : Composition of many Sales_tax
                           on to_Sales_tax.VKORG = $self;
}




entity Sales_tax {
        @UI.Hidden
    key VKORG             : Association to Sales_Delivery; // Material Number
    key Country           : String(2); // Country
        TaxCategory       : String(4); // Tax Category
        TaxClassification : String(1); // Tax Classification
}

entity Valuation {
        @UI.Hidden
    key Material     : Association to Mara_staging;

        @title: 'Valuation Area'
    key BWKEY        : String(4); // Valuation Area
        STPRS        : Decimal(13, 3); // Standard Price

        @title: 'Valuation Type'
    key BWTAR        : String(10); //Valuation Type
        BWTTY        : String(1); //Valuation Category
        BKLAS        : String(4); //Valuation Class
        CURRENCY_KEY : String(4); // Currency key
        CURTP        : String(2); //Currency Type and Valuation View
        VERPR        : Decimal(11, 2); //Moving Average Price/Periodic Unit Price
        VPRSV        : String(1); //Price control indicator

        // --- Additional fields---

        PEINH        : Decimal(5, 3); // PriceUnitQty - Price Unit
        WAERS        : String(3); // Currency - Currency Key
        MLAST        : String(1); // InventoryValuationProcedure - Value Updating
        KALN1        : String(12); // ProdCostEstNumber - Costing Number for Cost Estimate with Qty Structure
        LVORM        : Boolean; // IsMarkedForDeletion - Deletion Flag
        ZKPRS        : Decimal(11, 3); // FuturePrice - Future Price
        ZKDAT        : Date; // FuturePriceValidityStartDate - Date from which future price is valid
        PPRDZ        : Date; // PlannedPrice - Planned Price Date
        EKALR        : String(1); // IsMaterialCostedWithQtyStruc - Costed with Quantity Structure
        SPERW        : Boolean; // FutureEvaluatedAmountValue - Inventory Blockage Value
}


entity CAPM_Field_Mapping {
    key Table             : String;
    key Field_Name        : String;
        SAP_Table         : String;
        SAP_Field_Name    : String;
        Field_Description : String;
}

entity ApproverMatrix : cuid {
    key Model            : String;
    key Entity           : String ;
     ControlField     : String ;
     ControlFieldName : String ;
     Value            : String ;

           to_ApproverList  : Composition of many ApproverList
        on  to_ApproverList.parent = $self;

}

entity ApproverList {
        Level               : String;

        @mandatory
        key Approver_ID : String  @Common.Label: 'Approver ID';

        @mandatory
        Approver_Name        : String @Common.Label: 'Approver Name';

        @UI.Hidden
       parent               : Association to ApproverMatrix;    
                                  

}

entity ReplicationReport : cuid{
  
  MATNR     : String(40);
  JobID : String(50);
  STATUS :  String(15);
  REPLICATION_MODE  : String(15);
  REQUEST_NUMBER : Integer;
  Message       : String(500);
  Timestamp          : Timestamp;
  REPLICATED_BY : String;
  Replicated_To_System : String;
}

context REQUEST_NUMBER {

    entity Change_Request {
        key REQUEST_NUMBER     : Integer;
            InstanceID         : String;
            REQUEST_TYPE       : String;
            Overall_status     : String;
            Model              : String;
            Requested_By       : String;
            Requested_Date     : Date;
            Requested_Time     : Time;
            Requested_on       : String;
            Approved_By        : String;
            Aprroved_date      : Date;
            Aprroved_Time      : Time;
            Completed_On       : String;
            Description        : String;
            Notes              : String;
            Replication_status : String;
            CurrentApproverID : String;
        CurrentApproverName : String;
        CurrentLevel        :String;
        ApprovedByLevel  :  String;
        TotalApproverLevel : String;
            Details            : Composition of many Change_Request_details
                                     on Details.Change = $self;
            to_Action_Details  : Composition of many Change_Request_User_Actions_Details
                                     on to_Action_Details.Change = $self;
    }

    entity Change_Request_details {
        key Change              : Association to Change_Request;
        key Object_ID           : String(40);
            Description         : String;
            Object_CUID         : String;
            Replication_status  : String;
            Overall_status      : String;
            Material_type       : String(4);
            to_Change_Documents : Composition of many Change_Documents
                                      on to_Change_Documents.Request_details = $self;
    }

    entity Change_Documents {
        key Request_details    : Association to Change_Request_details;
        key Table              : String;
        key Field_Name         : String;
            Old_Value          : String;
            New_Value          : String;
            Processor          : String;
            timestamp          : String;
            Object_Description : String;
    }

    entity Change_Request_User_Actions_Details {
        key Change     : Association to Change_Request;
        key User_Step  : String;
            Processer  : String;
            Action     : String;
            Time_Stamp : String;
    }

}

context Value_help {
    entity Fixed_Values : managed {
            @title: 'Type'
        key Type             : String;
            Description      : String;
            to_value_list    : Composition of many Value_List
                                   on to_value_list.Fixed = $self;
            to_field_mapping : Composition of many Field_Mapping
                                   on to_field_mapping.Fixed = $self;
    }

    entity Value_List : managed {
            @title: 'Value'
        key Value       : String;
            Description : String;

            @UI.Hidden
        key Fixed       : Association to Fixed_Values;
    }

    entity Field_Mapping : managed {
            @title: 'Table Name'
        key Table_Name  : String;

            @title: 'Field Name'
        key Field_Name  : String;

            @UI.Hidden
        key Fixed       : Association to Fixed_Values;
            Description : String;
    }

}

context Change_tracking {
    entity ChangeLog : managed {
        key id         : UUID;
            operation  : String(10); // 'CREATE', 'UPDATE', 'DELETE'
            entityName : String(255); // Name of the changed entity
            entityKey  : String(4000); // String representation of the entity's key(s)
            changedAt  : String; // Timestamp of the change
            changedBy  : String(255); // User who made the change
            fieldName  : String(255); // Name of the changed field
            oldValue   : LargeString; // Previous value
            newValue   : LargeString; // New value
            notes      : String;
            parentKey  : String;
    }
}


context Field_Properties {
    entity ModelHeader : managed {
        key modelName   : String;
            description : String;
            entityItem  : Composition of many EntityItems
                              on entityItem.modelHeader = $self;
    }

    entity EntityItems : managed {
        key entity        : String;
            description   : String;
            parent_entity : String;
            child_element : String;
            child_entity  : String;


            fieldAtribute : Composition of many FieldAtribute
                                on fieldAtribute.entityItems = $self;
            modelHeader   : Association to one ModelHeader;


    }

    entity FieldAtribute : managed {
        key fieldName   : String;
            description : String;
            isVisible   : Boolean;
            isEditable  : Boolean;
            isMandatory : Boolean;
            entityItems : Association to one EntityItems;
    }
}

context Rules {
    entity RuleHeader : cuid, managed {
        model             : String(15);
        ruleType          : String;
        ruleName            : String;
        tableEntity       : String;
        tableEntityDesc   : String;
        targetField       : String;
        targetFieldDesc   : String;
        onChangeField     : String;
        onChangeFieldDesc : String;
        isMandatory       : Boolean;
        ruleLineItem      : Composition of many RuleLineItems
                                on ruleLineItem.ruleHeader = $self;
    }


    entity RuleLineItems : cuid, managed {
        ruleID               : String(15);
        modelTable           : String;
        modelTableDesc       : String;
        modelTableField      : String;
        modelTableFieldDesc  : String;
        operator             : String;
        modelTableFieldValue : String;
        defaultValue         : String;
        errorMessage         : String;
        ruleHeader           : Association to one RuleHeader;
    }

}

// Dynamic View Approver based on the View

entity SectionApproverMatrix : cuid, managed{
     @title : 'Material Type'
    key MTART : String ;
    key WERKS  : String;
    WERKS_DESC : String;
    to_Plant_Approver : Composition of many Plant_Approvers
                                     on to_Plant_Approver.PP_Approve = $self;
   
}

entity Plant_Approvers  {
    @UI.Hidden
      key PP_Approve     : Association to SectionApproverMatrix;
       @title : 'View'
       key View : String;
        @title : 'View Name'
       key ViewName : String;
      
    ApproverID : String;
    ApproverName : String;
    
   to_fieldAttributes : Composition of many FieldProperty
                                     on to_fieldAttributes.FieldAttribute = $self;

}
entity FieldProperty {
    @UI.Hidden
    key FieldAttribute : Association to Plant_Approvers;
     @title : 'Field Name'
    key FieldName : String;
    type : String;
    Description : String;
    Mandatory : Boolean default 'false';
    Visibility : Boolean default 'true';
    Editable : Boolean default 'true';

}

context Duplicate_Check {
    entity Duplicate_Check_Fields : cuid {
        Model      : String;
        Field_Name : String(32);
        Weightage  : Integer;
    }
}

entity Material_Number_Range {
    key Material_type  : String(4);
    key Int_Ext        : String;
        From_Number    : Integer;
        TO_Number      : Integer;
        Current_Number : Integer;
}

entity Dummy_Number_Range {
    key Model          : String(32);
        Current_Number : Integer;
        Prefix         : String(32);
}
context ValidationReport {
    entity ValidationReportHeader : cuid, managed {
        ValidationId : String;
        model :         String;
        MATNR        : String;
        MTART        : String;
        tableEntity  : String;
        targetField  : String;
        ruleName     : String;
        errorMessage : String;
    }
}

context Dummy {
    entity Mara_staging_dummy : cuid, managed {
        key MATNR             : String(40); // Material Number
            MAKT_MAKTX        : String(100); // Material Description
            BISMT             : String(40); // Old Material Number
            LVORM             : Boolean; // Deletion Indicator
            MATKL             : String(9); // Material Group
            MBRSH             : String(1); // Industry Sector
            MEINS             : String(3); // Base Unit of Measure
            MSTAE             : String(2); // Cross-Plant Material Status
            MSTDE             : Date; // Date from which the Cross-Plant Material Status is Valid
            MTART             : String(4); // Material Type
            SPART             : String(2); // Division
            EXTWG             : String(18); // External Material Group
            MAGRV             : String(4); // Material Group: Packaging Materials
            MTPOS_MARA        : String(4); // General Item Category Group
            PRDHA             : String(18); // Product Hierarchy
            WRKST             : String(48); // Basic Material
            EAN11             : String(18); // International Article Number (EAN/UPC)
            VOLEH             : String(3);
            VOLUM             : Decimal(13, 3); // Volume
            LAENG             : Integer;
            BREIT             : Integer;
            HOEHE             : Integer;
            CUOBF             : Integer;
            NTGEW             : Decimal(13, 3); //Net Weight
            GEWEI             : String(3); //Weight Unit
            BRGEW             : Decimal(13, 3); //Gross Wight
            MEABM             : String(3); //UNit of length/width/height
            SLED_BBD          : String(1); //Expiration Date
            MHDHB             : String(4); //Total Shelf Life
            RAUBE             : String(2); //Storage conditions
            MHDRZ             : String(4); //Minimum Remaining Shelf Life
            IPRKZ             : String(1); //Period Indicator for Shelf Life Expiration Date
            TRAGR             : String(4); //Transportation Group
            EKWSL             : String(4); //Purchasing Value Key
            QMPUR             : Boolean; //QM in Procurement Is Active
            REQUEST_NUMBER    : Integer;
            MAX_NO            : Integer;
            CREATION_TYPE     : String;
            Status            : String(10);
            Request_Desc      : String;
            plant             : Composition of many Plant_dummy
                                    on plant.mat_plant = $self;
            to_sales_delivery : Composition of many Sales_Delivery_dummy
                                    on to_sales_delivery.Material = $self;
            to_valuation      : Composition of many Valuation_dummy
                                    on to_valuation.Material = $self;
            to_Description    : Composition of many Description_dummy
                                    on to_Description.Material = $self;
            to_Warehouse      : Composition of many Warehouse_dummy
                                on to_Warehouse.Material = $self;
            to_Alternate_UOM  : Composition of many Alternate_UOM_dummy
                                on to_Alternate_UOM.Material = $self;
            to_ClassAssignments : Composition of many ClassAssignment_dummy
                                      on to_ClassAssignments.MARA = $self;
    }

    entity Plant_dummy {
        key mat_plant           : Association to Mara_staging_dummy;
        key WERKS               : String(4);
            MMSTA               : String(2); //Plant-Specific Material Status
            PRCTR               : String(10);
            XCHPF_marc          : Boolean; //Batch Management Requirement Indicator
            DISMM               : String(2); //MRP Type
            MAABC               : String(1); //ABC Indicator
            DISPO               : String(3); //MRP Controller
            BESKZ               : String(1); //Procurement Type
            EKGRP               : String(3); //Purchasing Group
            LVORM               : Boolean; // Deletion Indicator
            FIXLS               : Decimal(13, 3); //Fixed lot size for Supply Demand Match
            LADGR               : String(4); //Loading Group
            MTVFP               : String(2); //Checking Group for availaility check
            DGRMRPPP            : String; //Material Requirements Planning (MRP) Group
            RDPRF               : String(4); //Rounding Profile
            DISLS               : String(2); //Lot Sizing Procedure within Materials Planning
            BSTFE               : Decimal(13, 3); //Fixed Lot Size
            SCM_GRPRT           : String; //Goods Reciept Processing time -- need to checked
            BSTMA               : Decimal(13, 3); //Maximum lot size
            BSTMI               : Decimal(13, 3); //Minimum lot size

            HERKL               : String(3); //Country of Origin of Material (Non-Preferential Origin)
            
                                     
            /* ============================= */
            /* MRP Procurement               */
            /* ============================= */

            SOBMRPSP            : String;

            //   BESKZ      : String(1);       // Procurement Type

            PLIFZ               : Integer; // Planned Delivery Time
            WEBAZ               : Integer; // Goods Receipt Processing Time
            FABKZ               : String(1); // JIT Delivery Schedule Indicator
            EPRMRPSP            : String(1); // External Procurement Indicator
            KZECH               : String(1); // Batch Entry Indicator
            LGFMRPSP            : String(4); // Issue Storage Location
            LGPMRPSP            : String(4); // Production Storage Location
            MRPMRPSP            : String(1); // MRP Indicator
            RGEKZ               : String(1); // Backflush Indicator
            SCHGT               : String(1); // Bulk Material Indicator
            USEQU               : String(1); // Quota Arrangement Usage
            VSPMRPSP            : String(1); // Consumption Indicator

            // MARC_Purchasing
            // EKGRP               :       String(3); //Purchasing Group
            INSMK               : String(1); // Stock in Quality Inspection
            KAUTB               : Boolean; // Automatic PO Allowed
            KORDB               : Boolean; // Source List Requirement

            // MARC_Costing
            AWSMARCCS           : Decimal(13, 3); // Costing Lot Size
            LOSGR               : Decimal(5, 2); // Assembly Scrap (%)
            SOBMARCCS           : String(2); // Special Procurement for Costing
            VERID               : String(4); // Production Version

            // MARC_Storage

            ABCMARCST           : String(1); // Storage ABC Indicator
            AUSME               : String(3); // Unit of Issue
            CCFIX               : Boolean; // Fixed Co-Product Quantity
            LZEIH               : Integer; // Production Storage Period
            MAXLZ               : Integer; // Maximum Storage Period

            //    QualityManagement
            QMPUR               : Boolean;
            KZDKZ               : String(1);
            PRFRQ               : Decimal(5, 0);
            QZGTP               : String(4);
            SSQSS               : String(8);
            MATQGR              : String(6);
            QMSUP               : String(6);

            // Worksheduling

            BASMG               : Decimal(13, 3); //Base Quantity
            BEARZ               : Decimal(5, 2); // processing Time

            DZEIT               : Decimal(3, 0); // In-house production time
            FEVMARCWR           : String(3);
            FRTME               : String(3); // Production unit
            RUEZT               : Decimal(5, 2); //Setup and teardown time
            SFCMARCWR           : String(6);
            TRANZ               : Decimal(5, 2); // Interoperation time
            UEETK               : String(1); // Indicator: Unlimited Overdelivery Allowed
            UEETO               : Decimal(3, 1); // Overdelivery tolerance limit
            UNETO               : Decimal(3, 1); // Underdelivery tolerance limit
            to_Storage_Location : Composition of many Storage_Location_dummy  on to_Storage_Location.plant = $self;
                                        


    }

    entity ClassAssignment_dummy {

        key MARA                       : Association to Mara_staging_dummy;
            /* --- Keys (SAP keys) --- */
        key OBJEK                      : String(40); // KSSK-OBJEK (Material)
        key CLASS                      : String(18); // KSSK-CLASS
        key KLART                      : String(3); // KSSK-KLART

            /* --- Attributes --- */
            CLINT                      : String(10); // KSSK-CLINT
            CLSTATUS1                  : String(1); // KSSK-CLSTATUS1
            STDCL                      : Boolean; // KSSK-STDCL
            DATUV                      : Date; // KSSK-DATUV
            AENNR                      : String(12); // KSSK-AENNR
            LKENZ                      : Boolean; // KSSK-LKENZ
            VONDT                      : Date; // KSSK-VONDT
            BISDT                      : Date; // KSSK-BISDT
            KLAGR                      : String(4); // KLAH-KLAGR

            /* --- Associations --- */
            to_Mara                    : Association to Mara_staging;
            to_CharacteristicValuation : Composition of many CharacteristicValuation_dummy
                                             on to_CharacteristicValuation.CValuation = $self;

    }

    entity CharacteristicValuation_dummy {
            /* --- Keys --- */

        key ATNAM      : String(30); // Characteristic Name
        key ATZHL      : Integer; // Value Position

            /* --- Value fields --- */
            ATINN      : String(10); // Internal Characteristic Number
            ATWRT      : String(70); // Characteristic Value
            ATWTB      : String(70); // Characteristic Value Text
            ATFLV      : Decimal(31, 14); // Value From / Numeric Value
            ATFLB      : Decimal(31, 14); // Value To
            ATMEH      : String(3); // Unit of Measure
            ATCUR      : String(5); // Currency
            ATDAT      : Date; // Date Value
            ATTIM      : Time; // Time Value

            /* --- Characteristic metadata --- */
            ATFOR      : String(10); // Data Type
            ANZST      : Integer; // Characteristic Length
            ANZDZ      : Integer; // Number of Decimals

            /* --- Control fields --- */
            ATVGLART   : Boolean; // Inherited Value Indicator
            AENNR      : String(12); // Change Number
            LKENZ      : Boolean; // Deletion Indicator
            ADZHL      : String(12); // Author
            ATAUT      : String(12); // Changed By
            ATWRT_DEP  : Boolean; // Dependency Exists

            /* --- Associations --- */
        key CValuation : Association to ClassAssignment_dummy;
    }

    entity Storage_Location_dummy {
        key plant : Association to Plant_dummy;
        key LGORT : String(4); //Storage Location
            LGPBE : String; //Storage Bin
    }

    entity Description_dummy {
        key Material    : Association to Mara_staging_dummy;
        key code        : String(4);
            Description : String;
    }

    entity Sales_Delivery_dummy {
        key Material : Association to Mara_staging_dummy;
        key VKORG    : String(4); //Sales Organization
            RDPRF    : String(4); //Rounding Profile
            PRODH    : String(18); //Product hierarchy
            LVORM    : Boolean; // Deletion Indicator
            MTPOS    : String(4); //Item Category Group for Material Master
        key VTWEG    : String(2); //Distribution Channel
         to_Sales_tax : Composition of many Sales_tax_dummy
                           on to_Sales_tax.VKORG = $self;
    }

    entity Sales_tax_dummy {
            @UI.Hidden
        key VKORG             : Association to Sales_Delivery_dummy; // Material Number
        key Country           : String(2); // Country
            TaxCategory       : String(4); // Tax Category
            TaxClassification : String(1); // Tax Classification
    }

    entity Valuation_dummy {
        key Material     : Association to Mara_staging_dummy;
        key BWKEY        : String(4); // Valuation Area
            STPRS        : Decimal(13, 3); // Standard Price
        key BWTAR        : String(10); //Valuation Type
            BWTTY        : String(1); //Valuation Category
            BKLAS        : String(4); //Valuation Class
            CURRENCY_KEY : String(4); // Currency key
            CURTP        : String(2); //Currency Type and Valuation View
            VERPR        : Decimal(11, 2); //Moving Average Price/Periodic Unit Price
            VPRSV        : String(1); //Price control indicator
    }

    entity Warehouse_dummy {
            @UI.Hidden
        key Material        : Association to Mara_staging_dummy; // Material Number
        key LGNUM           : String(3); // Warehouse Number / Warehouse Complex
            LVORM           : Boolean; // Deletion flag for all material data of a warehouse number
            LGBKZ           : String(3); // Storage Section Indicators
            LTKZE           : String(3); // Storage type indicator for stock placement
            LTKZA           : String(3); // Storage type indicator for stock removal

            LHMG1           : Decimal(13, 3); // Loading equipment quantity 1
            LHMG2           : Decimal(13, 3); // Loading equipment quantity 2
            LHMG3           : Decimal(13, 3); // Loading equipment quantity 3

            LHME1           : String(3); // Unit of measure for loading equipment quantity 1
            LHME2           : String(3); // Unit of measure for loading equipment quantity 2
            LHME3           : String(3); // Unit of measure for loading equipment quantity 3

            LETY1           : String(3); // 1st storage unit type
            LETY2           : String(3); // 2nd storage unit type
            LETY3           : String(3); // 3rd storage unit type

            LVSME           : String(3); // Warehouse Management Unit of Measure
            KZZUL           : Boolean; // Indicator: Allow addition to existing stock
            BLOCK           : String(2); // Bulk Storage Indicators
            KZMBF           : Boolean; // Indicator: Message to inventory management
            BSSKZ           : Boolean; // Special movement indicator for warehouse management

            MKAPV           : Decimal(11, 3); // Capacity usage
            BEZME           : String(3); // Unit of measure for capacity consumption
            PLKPT           : String(3); // Picking storage type for rough-cut and detailed planning
            VOMEM           : String(1); // Default for unit of measure from material master record
            L2SKR           : String(1); // Material relevance for 2-step picking
            to_Storage_type : Composition of many Storage_type_dummy
                                  on to_Storage_type.Warehouse = $self
    }

entity Storage_type_dummy {
        @UI.Hidden
    key Warehouse : Association to Warehouse_dummy; // Material Number
    key LGTYP     : String(3); // Storage Type

        LVORM     : Boolean; // Deletion flag for all material data of a storage type
        LGPLA     : String(10); // Storage Bin
        LPMAX     : Decimal(13, 3); // Maximum storage bin quantity
        LPMIN     : Decimal(13, 3); // Minimum storage bin quantity
        MAMNG     : Decimal(13, 3); // Control quantity
        NSMNG     : Decimal(13, 3); // Replenishment quantity
        KOBER     : String(3); // Picking Area
}

entity Alternate_UOM_dummy {
        @UI.Hidden
    key Material : Association to Mara_staging_dummy; // Material Number
    key MEINH    : String(3); // Alternative Unit of Measure for Stockkeeping Unit

        UMREZ    : Decimal(5, 0); // Numerator for Conversion to Base Units of Measure
        UMREN    : Decimal(5, 0); // Denominator for conversion to base units of measure
        EANNR    : String(13); // International Article Number (EAN/UPC)
        EAN11    : String(18); // Category of International Article Number (EAN)
        NUMTP    : String(2); // European Article Number (EAN) - obsolete!!!!!
        LAENG    : Decimal(13, 3); // Length
        BREIT    : Decimal(13, 3); // Width
        HOEHE    : Decimal(13, 3); // Height
        MEABM    : String(3); // Unit of Dimension for Length/Width/Height
        VOLUM    : Decimal(13, 3); // Volume
        VOLEH    : String(3); // Volume Unit
        BRGEW    : Decimal(13, 3); // Gross Weight
        GEWEI    : String(3); // Unit of Weight
}

}

entity ExcelUpload {
    @Core.MediaType: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
    excel : LargeBinary;
};
