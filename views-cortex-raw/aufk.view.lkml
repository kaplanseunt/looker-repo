# The name of this view in Looker is "Aufk"
view: aufk {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.aufk` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Abgsl" in Explore.

  dimension: abgsl {
    type: string
    sql: ${TABLE}.abgsl ;;
  }

  dimension: abkrs {
    type: string
    sql: ${TABLE}.abkrs ;;
  }

  dimension: abukr {
    type: string
    sql: ${TABLE}.abukr ;;
  }

  dimension: adrnra {
    type: string
    sql: ${TABLE}.adrnra ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: aedat {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.aedat ;;
  }

  dimension: aenam {
    type: string
    sql: ${TABLE}.aenam ;;
  }

  dimension: aezeit {
    type: string
    sql: ${TABLE}.aezeit ;;
  }

  dimension: akstl {
    type: string
    sql: ${TABLE}.akstl ;;
  }

  dimension: anfaufnr {
    type: string
    sql: ${TABLE}.anfaufnr ;;
  }

  dimension: astkz {
    type: string
    sql: ${TABLE}.astkz ;;
  }

  dimension: astnr {
    type: string
    sql: ${TABLE}.astnr ;;
  }

  dimension: auart {
    type: string
    sql: ${TABLE}.auart ;;
  }

  dimension: aufex {
    type: string
    sql: ${TABLE}.aufex ;;
  }

  dimension: aufnr {
    type: string
    sql: ${TABLE}.aufnr ;;
  }

  dimension: autyp {
    type: string
    sql: ${TABLE}.autyp ;;
  }

  dimension: awsls {
    type: string
    sql: ${TABLE}.awsls ;;
  }

  dimension: bemot {
    type: string
    sql: ${TABLE}.bemot ;;
  }

  dimension: bukrs {
    type: string
    sql: ${TABLE}.bukrs ;;
  }

  dimension: cckey {
    type: string
    sql: ${TABLE}.cckey ;;
  }

  dimension: claim_control {
    type: string
    sql: ${TABLE}.claim_control ;;
  }

  dimension: costestnr {
    type: string
    sql: ${TABLE}.costestnr ;;
  }

  dimension: cstg_vrnt {
    type: string
    sql: ${TABLE}.cstg_vrnt ;;
  }

  dimension: cum_auest {
    type: string
    sql: ${TABLE}.cum_auest ;;
  }

  dimension: cum_cmnum {
    type: string
    sql: ${TABLE}.cum_cmnum ;;
  }

  dimension: cum_desnum {
    type: string
    sql: ${TABLE}.cum_desnum ;;
  }

  dimension: cum_indcu {
    type: string
    sql: ${TABLE}.cum_indcu ;;
  }

  dimension: cycle {
    type: string
    sql: ${TABLE}.cycle ;;
  }

  dimension_group: erdat {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.erdat ;;
  }

  dimension: erfzeit {
    type: string
    sql: ${TABLE}.erfzeit ;;
  }

  dimension: ernam {
    type: string
    sql: ${TABLE}.ernam ;;
  }

  dimension: estnr {
    type: string
    sql: ${TABLE}.estnr ;;
  }

  dimension: etype {
    type: string
    sql: ${TABLE}.etype ;;
  }

  dimension: ferc_ind {
    type: string
    sql: ${TABLE}.ferc_ind ;;
  }

  dimension: flg_mltps {
    type: string
    sql: ${TABLE}.flg_mltps ;;
  }

  dimension: func_area {
    type: string
    sql: ${TABLE}.func_area ;;
  }

  dimension: gsber {
    type: string
    sql: ${TABLE}.gsber ;;
  }

  dimension_group: idat1 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.idat1 ;;
  }

  dimension_group: idat2 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.idat2 ;;
  }

  dimension_group: idat3 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.idat3 ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: ivpro {
    type: string
    sql: ${TABLE}.ivpro ;;
  }

  dimension: izwek {
    type: string
    sql: ${TABLE}.izwek ;;
  }

  dimension: jv_jibcl {
    type: string
    sql: ${TABLE}.jv_jibcl ;;
  }

  dimension: jv_jibsa {
    type: string
    sql: ${TABLE}.jv_jibsa ;;
  }

  dimension: jv_oco {
    type: string
    sql: ${TABLE}.jv_oco ;;
  }

  dimension: kalsm {
    type: string
    sql: ${TABLE}.kalsm ;;
  }

  dimension: kappl {
    type: string
    sql: ${TABLE}.kappl ;;
  }

  dimension: kdauf {
    type: string
    sql: ${TABLE}.kdauf ;;
  }

  dimension: kdpos {
    type: string
    sql: ${TABLE}.kdpos ;;
  }

  dimension: kokrs {
    type: string
    sql: ${TABLE}.kokrs ;;
  }

  dimension: kostl {
    type: string
    sql: ${TABLE}.kostl ;;
  }

  dimension: kostv {
    type: string
    sql: ${TABLE}.kostv ;;
  }

  dimension: kstar {
    type: string
    sql: ${TABLE}.kstar ;;
  }

  dimension: kstempf {
    type: string
    sql: ${TABLE}.kstempf ;;
  }

  dimension: ktext {
    type: string
    sql: ${TABLE}.ktext ;;
  }

  dimension: kvewe {
    type: string
    sql: ${TABLE}.kvewe ;;
  }

  dimension: loekz {
    type: string
    sql: ${TABLE}.loekz ;;
  }

  dimension: logsystem {
    type: string
    sql: ${TABLE}.logsystem ;;
  }

  dimension: ltext {
    type: string
    sql: ${TABLE}.ltext ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: objid {
    type: string
    sql: ${TABLE}.objid ;;
  }

  dimension: objnr {
    type: string
    sql: ${TABLE}.objnr ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension: otype {
    type: string
    sql: ${TABLE}.otype ;;
  }

  dimension_group: pdat1 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pdat1 ;;
  }

  dimension_group: pdat2 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pdat2 ;;
  }

  dimension_group: pdat3 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.pdat3 ;;
  }

  dimension: phas0 {
    type: string
    sql: ${TABLE}.phas0 ;;
  }

  dimension: phas1 {
    type: string
    sql: ${TABLE}.phas1 ;;
  }

  dimension: phas2 {
    type: string
    sql: ${TABLE}.phas2 ;;
  }

  dimension: phas3 {
    type: string
    sql: ${TABLE}.phas3 ;;
  }

  dimension: pkosa {
    type: string
    sql: ${TABLE}.pkosa ;;
  }

  dimension: plgkz {
    type: string
    sql: ${TABLE}.plgkz ;;
  }

  dimension: plint {
    type: string
    sql: ${TABLE}.plint ;;
  }

  dimension: prctr {
    type: string
    sql: ${TABLE}.prctr ;;
  }

  dimension: procnr {
    type: string
    sql: ${TABLE}.procnr ;;
  }

  dimension: proty {
    type: string
    sql: ${TABLE}.proty ;;
  }

  dimension: pspel {
    type: string
    sql: ${TABLE}.pspel ;;
  }

  dimension: recid {
    type: string
    sql: ${TABLE}.recid ;;
  }

  dimension_group: recordstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.recordstamp ;;
  }

  dimension: refnr {
    type: string
    sql: ${TABLE}.refnr ;;
  }

  dimension: rsord {
    type: string
    sql: ${TABLE}.rsord ;;
  }

  dimension: saknr {
    type: string
    sql: ${TABLE}.saknr ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.scope ;;
  }

  dimension_group: sdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.sdate ;;
  }

  dimension: seqnr {
    type: string
    sql: ${TABLE}.seqnr ;;
  }

  dimension: setnm {
    type: string
    sql: ${TABLE}.setnm ;;
  }

  dimension: sizecl {
    type: string
    sql: ${TABLE}.sizecl ;;
  }

  dimension: sowrk {
    type: string
    sql: ${TABLE}.sowrk ;;
  }

  dimension_group: stdat {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.stdat ;;
  }

  dimension: stort {
    type: string
    sql: ${TABLE}.stort ;;
  }

  dimension: txjcd {
    type: string
    sql: ${TABLE}.txjcd ;;
  }

  dimension: umwkz {
    type: string
    sql: ${TABLE}.umwkz ;;
  }

  dimension: update_control {
    type: string
    sql: ${TABLE}.update_control ;;
  }

  dimension: update_needed {
    type: string
    sql: ${TABLE}.update_needed ;;
  }

  dimension: user0 {
    type: string
    sql: ${TABLE}.user0 ;;
  }

  dimension: user1 {
    type: string
    sql: ${TABLE}.user1 ;;
  }

  dimension: user2 {
    type: string
    sql: ${TABLE}.user2 ;;
  }

  dimension: user3 {
    type: string
    sql: ${TABLE}.user3 ;;
  }

  dimension: user4 {
    type: number
    sql: ${TABLE}.user4 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_user4 {
    type: sum
    sql: ${user4} ;;  }
  measure: average_user4 {
    type: average
    sql: ${user4} ;;  }

  dimension_group: user5 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.user5 ;;
  }

  dimension: user6 {
    type: string
    sql: ${TABLE}.user6 ;;
  }

  dimension_group: user7 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.user7 ;;
  }

  dimension_group: user8 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.user8 ;;
  }

  dimension: user9 {
    type: string
    sql: ${TABLE}.user9 ;;
  }

  dimension: vaplz {
    type: string
    sql: ${TABLE}.vaplz ;;
  }

  dimension: veraa_user {
    type: string
    sql: ${TABLE}.veraa_user ;;
  }

  dimension: vname {
    type: string
    sql: ${TABLE}.vname ;;
  }

  dimension: vogrp {
    type: string
    sql: ${TABLE}.vogrp ;;
  }

  dimension: waers {
    type: string
    sql: ${TABLE}.waers ;;
  }

  dimension: wawrk {
    type: string
    sql: ${TABLE}.wawrk ;;
  }

  dimension: werks {
    type: string
    sql: ${TABLE}.werks ;;
  }

  dimension: zschl {
    type: string
    sql: ${TABLE}.zschl ;;
  }

  dimension: zschm {
    type: string
    sql: ${TABLE}.zschm ;;
  }
  measure: count {
    type: count
    drill_fields: [vname]
  }
}
