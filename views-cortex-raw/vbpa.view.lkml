# The name of this view in Looker is "Vbpa"
view: vbpa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.vbpa` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ablad" in Explore.

  dimension: ablad {
    type: string
    sql: ${TABLE}.ablad ;;
  }

  dimension: adrda {
    type: string
    sql: ${TABLE}.adrda ;;
  }

  dimension: adrnp {
    type: string
    sql: ${TABLE}.adrnp ;;
  }

  dimension: adrnr {
    type: string
    sql: ${TABLE}.adrnr ;;
  }

  dimension: bokre {
    type: string
    sql: ${TABLE}.bokre ;;
  }

  dimension: histunr {
    type: string
    sql: ${TABLE}.histunr ;;
  }

  dimension: hityp {
    type: string
    sql: ${TABLE}.hityp ;;
  }

  dimension: hzuor {
    type: string
    sql: ${TABLE}.hzuor ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: kale {
    type: string
    sql: ${TABLE}.kale ;;
  }

  dimension: knref {
    type: string
    sql: ${TABLE}.knref ;;
  }

  dimension: kunnr {
    type: string
    sql: ${TABLE}.kunnr ;;
  }

  dimension: land1 {
    type: string
    sql: ${TABLE}.land1 ;;
  }

  dimension: lifnr {
    type: string
    sql: ${TABLE}.lifnr ;;
  }

  dimension: lzone {
    type: string
    sql: ${TABLE}.lzone ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension: parnr {
    type: string
    sql: ${TABLE}.parnr ;;
  }

  dimension: parvw {
    type: string
    sql: ${TABLE}.parvw ;;
  }

  dimension: parvw_ff {
    type: string
    sql: ${TABLE}.parvw_ff ;;
  }

  dimension: pernr {
    type: string
    sql: ${TABLE}.pernr ;;
  }

  dimension: posnr {
    type: string
    sql: ${TABLE}.posnr ;;
  }

  dimension: prfre {
    type: string
    sql: ${TABLE}.prfre ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: recordstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: stceg {
    type: string
    sql: ${TABLE}.stceg ;;
  }

  dimension: vbeln {
    type: string
    sql: ${TABLE}.vbeln ;;
  }

  dimension: xcpdk {
    type: string
    sql: ${TABLE}.xcpdk ;;
  }
  measure: count {
    type: count
  }
}
