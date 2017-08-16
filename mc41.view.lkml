view: a123_cycling_1_cp__1_cp_0_100_25_c_mc41 {
  sql_table_name: bryan.A123_Cycling_1CP__1CP_0_100_25C_MC41 ;;

  dimension: cap_cycle {
    type: number
    sql: ${step} + ${cycle} + ${group} ;;
    value_format_name: decimal_0
  }

  measure: average_ahr {
    type: average
    group_label: "Averages"
    sql: ${ahr} ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  dimension: calc_cycle {
    type: number
    value_format_name: decimal_0
    sql: CASE WHEN ${cap_cycle} < 5 THEN 76 ELSE POW(${cap_cycle},2) - ${step} - ${cycle} - ${group} END;;
  }

  dimension: ahr {
    type: number
    sql: ${TABLE}.AHr ;;
  }

  dimension: actual_dcr {
    type: number
    sql: POW(${ahr},2) / 2.0 ;;
    value_format_name: decimal_2
  }

  dimension: c_maccor_41_current {
    type: number
    sql: ${TABLE}.C_Maccor_41_current ;;
  }

  dimension: capacity {
    type: number
    sql: ${TABLE}.Capacity ;;
  }

  dimension: cycle {
    type: number
    sql: ${TABLE}.Cycle ;;
  }

  dimension: measured_cap {
    type: number
    sql: CASE WHEN ${cycle} >= 1 THEN ABS(${var1}) ELSE 0 END ;;
    value_format_name: decimal_2
  }

  measure: max_measured_cap {
    type: max
    sql: NULLIF(${measured_cap},0) ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  dimension: cycle2 {
    type: number
    sql: ${TABLE}.Cycle2 ;;
  }

  dimension: group {
    type: number
    sql: ${TABLE}.`Group` ;;
  }

  dimension: group_time {
    type: number
    sql: ${TABLE}.GroupTime ;;
  }

  dimension: rchg_perc {
    type: number
    sql: ${TABLE}.Rchg_perc ;;
  }

  dimension: resistance {
    type: number
    sql: ${TABLE}.Resistance ;;
  }

  dimension: shunt {
    type: number
    sql: ${TABLE}.Shunt ;;
  }

  dimension: step {
    type: number
    sql: ${TABLE}.Step ;;
  }

  dimension: dcr_50 {
    type: number
    sql: CASE WHEN ${group} = 2 AND ${step}=3 AND ${cycle} = 1 THEN ${actual_dcr}
              END;;
    value_format_name: decimal_2
  }

  dimension: dcr_25 {
    type: number
    sql: CASE WHEN ${group} = 2 AND ${step}=3 AND ${cycle} = 0 THEN ${actual_dcr}
              END;;
    value_format_name: decimal_2
  }

  dimension: dcr_75 {
    type: number
    sql:  ${actual_dcr};;
    value_format_name: decimal_2
  }

  measure: min_dcr_25 {
    type: min
    group_label: "Mins"
    sql: ${dcr_25} ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  measure: min_dcr_50 {
    type: min
    group_label: "Mins"
    sql: ${dcr_50} ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  measure: min_dcr_75 {
    type: min
    group_label: "Mins"
    sql: ${dcr_75} ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  measure: average_dcr_25 {
    group_label: "Averages"
    type: average
    sql: ${dcr_25} ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  measure: average_dcr_50 {
    group_label: "Averages"
    type: average
    sql: ${dcr_50} ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  measure: average_dcr_75 {
    type: average
    group_label: "Averages"
    sql: ${dcr_75} ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  dimension: step_time {
    type: number
    sql: ${TABLE}.StepTime ;;
  }

  dimension_group: system {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SystemTime ;;
  }

  dimension: test_time {
    type: number
    sql: NULLIF(${TABLE}.TestTime,0) ;;
    value_format_name: decimal_2
  }

  measure: min_test_time {
    type: min
    group_label: "Mins"
    sql: ${test_time} ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  measure: min_dcr_test_time {
    type: min
    group_label: "Mins"
    sql: POWER(${test_time},2) ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  dimension: throughput {
    type: number
    sql: NULLIF(${TABLE}.Throughput,0) ;;
    value_format_name: decimal_2
  }

  measure: min_throughput {
    type: min
    group_label: "Mins"
    sql: ${throughput} ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  measure: max_throughput {
    type: max
    sql: ${throughput} ;;
    value_format_name: decimal_2
    drill_fields: [details*]
  }

  dimension: total_v {
    type: number
    sql: ${TABLE}.TotalV ;;
  }

  dimension: v_inst_maccor_41_voltage {
    type: number
    sql: ${TABLE}.V_INST_Maccor_41_voltage ;;
  }

  dimension: var1 {
    type: number
    sql: ${TABLE}.Var1 ;;
  }

  dimension: var10 {
    type: number
    sql: ${TABLE}.Var10 ;;
  }

  dimension: var2 {
    type: number
    sql: ${TABLE}.Var2 ;;
  }

  dimension: var3 {
    type: number
    sql: ${TABLE}.Var3 ;;
  }

  dimension: var4 {
    type: number
    sql: ${TABLE}.Var4 ;;
  }

  dimension: var5 {
    type: number
    sql: ${TABLE}.Var5 ;;
  }

  dimension: var6 {
    type: number
    sql: ${TABLE}.Var6 ;;
  }

  dimension: var7 {
    type: number
    sql: ${TABLE}.Var7 ;;
  }

  dimension: var8 {
    type: number
    sql: ${TABLE}.Var8 ;;
  }

  dimension: var9 {
    type: number
    sql: ${TABLE}.Var9 ;;
  }

  dimension: watts {
    type: number
    sql: ${TABLE}.Watts ;;
  }

  dimension: whr {
    type: number
    sql: ABS(${TABLE}.WHr) ;;
  }

  measure: min_energy {
    type: min
    group_label: "Mins"
    sql: ${whr} ;;
    drill_fields: [details*]
    value_format_name: decimal_2
  }

  measure: count {
    type: count
    drill_fields: [details*]
  }

  set: details {
    fields: [group,step,cycle,calc_cycle,cap_cycle,ahr,whr,var1,var2,var3,dcr_25,dcr_50,dcr_75]
  }
}
