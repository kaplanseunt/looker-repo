# The name of this view in Looker is "Batches Md"
view: batches_md {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_REPORTING.BatchesMD` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: availability_date_verab {
    type: time
    description: "Available from"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.AvailabilityDate_VERAB ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Batch In Restricted Use Stock Zustd" in Explore.

  dimension: batch_in_restricted_use_stock_zustd {
    type: string
    description: "Batch Restricted"
    sql: ${TABLE}.BatchInRestricted_UseStock_ZUSTD ;;
  }

  dimension: batch_number_charg {
    type: string
    description: "Batch"
    sql: ${TABLE}.BatchNumber_CHARG ;;
  }

  dimension: batch_status_key_zusch {
    type: string
    description: "Status key"
    sql: ${TABLE}.BatchStatusKey_ZUSCH ;;
  }

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_Mandt ;;
  }

  dimension_group: creation_date_ersda {
    type: time
    description: "Created On"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreationDate_ERSDA ;;
  }

  dimension_group: date_of_last_status_change_zaedt {
    type: time
    description: "Last status change"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateOfLastStatusChange_ZAEDT ;;
  }

  dimension_group: date_of_manufacture_hsdat {
    type: time
    description: "Date of Manufacture"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateOfManufacture_HSDAT ;;
  }

  dimension_group: dateof_last_change_laeda {
    type: time
    description: "Last Change"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateofLastChange_LAEDA ;;
  }

  dimension: material_number_matnr {
    type: string
    description: "Material"
    sql: ${TABLE}.MaterialNumber_MATNR ;;
  }

  dimension: name_of_person_who_changed_object_aenam {
    type: string
    description: "Changed by"
    sql: ${TABLE}.NameOfPersonWhoChangedObject_AENAM ;;
  }

  dimension: nameof_person_who_createdthe_object_ernam {
    type: string
    description: "Created By"
    sql: ${TABLE}.NameofPersonWhoCreatedtheObject_ERNAM ;;
  }

  dimension: plant_werks {
    type: string
    description: "Plant"
    sql: ${TABLE}.Plant_WERKS ;;
  }

  dimension_group: shelf_life_expiration_vfdat {
    type: time
    description: "SLED/BBD"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ShelfLifeExpiration_VFDAT ;;
  }
  measure: count {
    type: count
  }
}
