# The name of this view in Looker is "Faglflexa"
view: faglflexa {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.faglflexa` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Activ" in Explore.

  dimension: activ {
    type: string
    sql: ${TABLE}.activ ;;
  }

  dimension: awtyp {
    type: string
    sql: ${TABLE}.awtyp ;;
  }

  dimension: belnr {
    type: string
    sql: ${TABLE}.belnr ;;
  }

  dimension: bschl {
    type: string
    sql: ${TABLE}.bschl ;;
  }

  dimension: bstat {
    type: string
    sql: ${TABLE}.bstat ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: budat {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.budat ;;
  }

  dimension: buzei {
    type: string
    sql: ${TABLE}.buzei ;;
  }

  dimension: cost_elem {
    type: string
    sql: ${TABLE}.cost_elem ;;
  }

  dimension: docln {
    type: string
    sql: ${TABLE}.docln ;;
  }

  dimension: docnr {
    type: string
    sql: ${TABLE}.docnr ;;
  }

  dimension: drcrk {
    type: string
    sql: ${TABLE}.drcrk ;;
  }

  dimension: gjahr {
    type: string
    sql: ${TABLE}.gjahr ;;
  }

  dimension: hsl {
    type: number
    sql: ${TABLE}.hsl ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_hsl {
    type: sum
    sql: ${hsl} ;;  }
  measure: average_hsl {
    type: average
    sql: ${hsl} ;;  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: kokrs {
    type: string
    sql: ${TABLE}.kokrs ;;
  }

  dimension: ksl {
    type: number
    sql: ${TABLE}.ksl ;;
  }

  dimension: linetype {
    type: string
    sql: ${TABLE}.linetype ;;
  }

  dimension: logsys {
    type: string
    sql: ${TABLE}.logsys ;;
  }

  dimension: msl {
    type: number
    sql: ${TABLE}.msl ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension: osl {
    type: number
    sql: ${TABLE}.osl ;;
  }

  dimension: poper {
    type: string
    sql: ${TABLE}.poper ;;
  }

  dimension: pprctr {
    type: string
    sql: ${TABLE}.pprctr ;;
  }

  dimension: prctr {
    type: string
    sql: ${TABLE}.prctr ;;
  }

  dimension: psegment {
    type: string
    sql: ${TABLE}.psegment ;;
  }

  dimension: racct {
    type: string
    sql: ${TABLE}.racct ;;
  }

  dimension: rassc {
    type: string
    sql: ${TABLE}.rassc ;;
  }

  dimension: rbukrs {
    type: string
    sql: ${TABLE}.rbukrs ;;
  }

  dimension: rbusa {
    type: string
    sql: ${TABLE}.rbusa ;;
  }

  dimension: rclnt {
    type: string
    sql: ${TABLE}.rclnt ;;
  }

  dimension: rcntr {
    type: string
    sql: ${TABLE}.rcntr ;;
  }

  dimension_group: recordstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: rfarea {
    type: string
    sql: ${TABLE}.rfarea ;;
  }

  dimension: rldnr {
    type: string
    sql: ${TABLE}.rldnr ;;
  }

  dimension: rmvct {
    type: string
    sql: ${TABLE}.rmvct ;;
  }

  dimension: rrcty {
    type: string
    sql: ${TABLE}.rrcty ;;
  }

  dimension: rtcur {
    type: string
    sql: ${TABLE}.rtcur ;;
  }

  dimension: runit {
    type: string
    sql: ${TABLE}.runit ;;
  }

  dimension: rvers {
    type: string
    sql: ${TABLE}.rvers ;;
  }

  dimension: rwcur {
    type: string
    sql: ${TABLE}.rwcur ;;
  }

  dimension: ryear {
    type: string
    sql: ${TABLE}.ryear ;;
  }

  dimension: sbusa {
    type: string
    sql: ${TABLE}.sbusa ;;
  }

  dimension: scntr {
    type: string
    sql: ${TABLE}.scntr ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  dimension: sfarea {
    type: string
    sql: ${TABLE}.sfarea ;;
  }

  dimension: timestamp {
    type: number
    sql: ${TABLE}.timestamp ;;
  }

  dimension: tsl {
    type: number
    sql: ${TABLE}.tsl ;;
  }

  dimension: usnam {
    type: string
    sql: ${TABLE}.usnam ;;
  }

  dimension: wsl {
    type: number
    sql: ${TABLE}.wsl ;;
  }

  dimension: xsplitmod {
    type: string
    sql: ${TABLE}.xsplitmod ;;
  }
  measure: count {
    type: count
  }
}
