connection: "bigquery"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: a123_cycling_1_cp__1_cp_0_100_25_c_mc41 {
  view_label: "mc41"
  sql_always_where: ${a123_cycling_1_cp__1_cp_0_100_25_c_mc41.cap_cycle} >0 ;;
}
