# The name of this view in Looker is "Terridata"
view: terridata {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `terridata.terridata` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Anio" in Explore.

  dimension: anio {
    type: number
    sql: ${TABLE}.ANIO ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_anio {
    type: sum
    sql: ${anio} ;;  }
  measure: average_anio {
    type: average
    sql: ${anio} ;;  }

  dimension: cod_dpto {
    type: string
    sql: ${TABLE}.COD_DPTO ;;
  }

  dimension: cod_mpio {
    type: string
    sql: ${TABLE}.COD_MPIO ;;
  }

  dimension: dato_cualitativo {
    type: string
    sql: ${TABLE}.DATO_CUALITATIVO ;;
  }

  dimension: dato_numerico {
    type: string
    sql: ${TABLE}.DATO_NUMERICO ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}.DIMENSION ;;
  }

  dimension: fuente {
    type: string
    sql: ${TABLE}.FUENTE ;;
  }

  dimension: indicador {
    type: string
    sql: ${TABLE}.INDICADOR ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}.MES ;;
  }

  dimension: nom_dpto {
    type: string
    sql: ${TABLE}.NOM_DPTO ;;
  }

  dimension: nom_mpio {
    type: string
    sql: ${TABLE}.NOM_MPIO ;;
  }

  dimension: subcategoria {
    type: string
    sql: ${TABLE}.SUBCATEGORIA ;;
  }

  dimension: unidad_medida {
    type: string
    sql: ${TABLE}.UNIDAD_MEDIDA ;;
  }
  measure: count {
    type: count
  }
}
