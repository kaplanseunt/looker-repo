# The name of this view in Looker is "Ekkn"
view: ekkn {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `oredata-de-cirrus.CORTEX_SAP_RAW.ekkn` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aa Final Ind" in Explore.

  dimension: aa_final_ind {
    type: string
    sql: ${TABLE}.aa_final_ind ;;
  }

  dimension: aa_final_qty {
    type: number
    sql: ${TABLE}.aa_final_qty ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_aa_final_qty {
    type: sum
    sql: ${aa_final_qty} ;;  }
  measure: average_aa_final_qty {
    type: average
    sql: ${aa_final_qty} ;;  }

  dimension: aa_final_qty_f {
    type: number
    sql: ${TABLE}.aa_final_qty_f ;;
  }

  dimension: aa_final_reason {
    type: string
    sql: ${TABLE}.aa_final_reason ;;
  }

  dimension: ablad {
    type: string
    sql: ${TABLE}.ablad ;;
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

  dimension: anln1 {
    type: string
    sql: ${TABLE}.anln1 ;;
  }

  dimension: anln2 {
    type: string
    sql: ${TABLE}.anln2 ;;
  }

  dimension: aplzl {
    type: string
    sql: ${TABLE}.aplzl ;;
  }

  dimension: aplzl_ord {
    type: string
    sql: ${TABLE}.aplzl_ord ;;
  }

  dimension: aufnr {
    type: string
    sql: ${TABLE}.aufnr ;;
  }

  dimension: aufpl {
    type: string
    sql: ${TABLE}.aufpl ;;
  }

  dimension: aufpl_ord {
    type: string
    sql: ${TABLE}.aufpl_ord ;;
  }

  dimension: budget_pd {
    type: string
    sql: ${TABLE}.budget_pd ;;
  }

  dimension_group: dabrz {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dabrz ;;
  }

  dimension_group: dateofservice {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dateofservice ;;
  }

  dimension: diffoptrate {
    type: number
    sql: ${TABLE}.diffoptrate ;;
  }

  dimension: ebeln {
    type: string
    sql: ${TABLE}.ebeln ;;
  }

  dimension: ebelp {
    type: string
    sql: ${TABLE}.ebelp ;;
  }

  dimension: egrup {
    type: string
    sql: ${TABLE}.egrup ;;
  }

  dimension: erekz {
    type: string
    sql: ${TABLE}.erekz ;;
  }

  dimension: fipos {
    type: string
    sql: ${TABLE}.fipos ;;
  }

  dimension: fistl {
    type: string
    sql: ${TABLE}.fistl ;;
  }

  dimension: fkber {
    type: string
    sql: ${TABLE}.fkber ;;
  }

  dimension: fm_split_batch {
    type: string
    sql: ${TABLE}.fm_split_batch ;;
  }

  dimension: fm_split_begru {
    type: string
    sql: ${TABLE}.fm_split_begru ;;
  }

  dimension: fmfgus_key {
    type: string
    sql: ${TABLE}.fmfgus_key ;;
  }

  dimension: geber {
    type: string
    sql: ${TABLE}.geber ;;
  }

  dimension: grant_nbr {
    type: string
    sql: ${TABLE}.grant_nbr ;;
  }

  dimension: gsber {
    type: string
    sql: ${TABLE}.gsber ;;
  }

  dimension: hasdiffoptrate {
    type: string
    sql: ${TABLE}.hasdiffoptrate ;;
  }

  dimension: imkey {
    type: string
    sql: ${TABLE}.imkey ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: kblnr {
    type: string
    sql: ${TABLE}.kblnr ;;
  }

  dimension: kblpos {
    type: string
    sql: ${TABLE}.kblpos ;;
  }

  dimension: kflag {
    type: string
    sql: ${TABLE}.kflag ;;
  }

  dimension: kokrs {
    type: string
    sql: ${TABLE}.kokrs ;;
  }

  dimension: kostl {
    type: string
    sql: ${TABLE}.kostl ;;
  }

  dimension: kstrg {
    type: string
    sql: ${TABLE}.kstrg ;;
  }

  dimension: kzbrb {
    type: string
    sql: ${TABLE}.kzbrb ;;
  }

  dimension: loekz {
    type: string
    sql: ${TABLE}.loekz ;;
  }

  dimension: lstar {
    type: string
    sql: ${TABLE}.lstar ;;
  }

  dimension: mandt {
    type: string
    sql: ${TABLE}.mandt ;;
  }

  dimension: menge {
    type: number
    sql: ${TABLE}.menge ;;
  }

  dimension: menge_f {
    type: number
    sql: ${TABLE}.menge_f ;;
  }

  dimension: mwskz {
    type: string
    sql: ${TABLE}.mwskz ;;
  }

  dimension: navnw {
    type: number
    sql: ${TABLE}.navnw ;;
  }

  dimension: netwr {
    type: number
    sql: ${TABLE}.netwr ;;
  }

  dimension: notaxcorr {
    type: string
    sql: ${TABLE}.notaxcorr ;;
  }

  dimension: nplnr {
    type: string
    sql: ${TABLE}.nplnr ;;
  }

  dimension: operation_flag {
    type: string
    sql: ${TABLE}.operation_flag ;;
  }

  dimension: paobjnr {
    type: string
    sql: ${TABLE}.paobjnr ;;
  }

  dimension: prctr {
    type: string
    sql: ${TABLE}.prctr ;;
  }

  dimension: projn {
    type: string
    sql: ${TABLE}.projn ;;
  }

  dimension: prznr {
    type: string
    sql: ${TABLE}.prznr ;;
  }

  dimension: ps_psp_pnr {
    type: string
    sql: ${TABLE}.ps_psp_pnr ;;
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

  dimension: sakto {
    type: string
    sql: ${TABLE}.sakto ;;
  }

  dimension: tcobjnr {
    type: string
    sql: ${TABLE}.tcobjnr ;;
  }

  dimension: txjcd {
    type: string
    sql: ${TABLE}.txjcd ;;
  }

  dimension: vbeln {
    type: string
    sql: ${TABLE}.vbeln ;;
  }

  dimension: vbelp {
    type: string
    sql: ${TABLE}.vbelp ;;
  }

  dimension: veten {
    type: string
    sql: ${TABLE}.veten ;;
  }

  dimension: vname {
    type: string
    sql: ${TABLE}.vname ;;
  }

  dimension: vproz {
    type: number
    sql: ${TABLE}.vproz ;;
  }

  dimension: vptnr {
    type: string
    sql: ${TABLE}.vptnr ;;
  }

  dimension: wempf {
    type: string
    sql: ${TABLE}.wempf ;;
  }

  dimension: xbauf {
    type: string
    sql: ${TABLE}.xbauf ;;
  }

  dimension: xbkst {
    type: string
    sql: ${TABLE}.xbkst ;;
  }

  dimension: xbpro {
    type: string
    sql: ${TABLE}.xbpro ;;
  }

  dimension: zekkn {
    type: string
    sql: ${TABLE}.zekkn ;;
  }
  measure: count {
    type: count
    drill_fields: [vname]
  }
}
