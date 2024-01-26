# The name of this view in Looker is "Dm Ot Descripcion General"
view: dm_ot_descripcion_general {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `terridata.DM_OT_DESCRIPCION_GENERAL` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Anio" in Explore.

  dimension: anio {
    type: number
    sql: ${TABLE}.Anio ;;
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
  measure: valor {
    type: sum
    sql: ${dato_numerico} ;;  }


  dimension: codigo_departamento {
    type: string
    sql: ${TABLE}.Codigo_Departamento ;;
  }

  dimension: codigo_entidad {
    type: string
    sql: ${TABLE}.Codigo_Entidad ;;
  }

  dimension: dato_cualitativo {
    type: string
    sql: ${TABLE}.Dato_Cualitativo ;;
  }

  dimension: dato_numerico {
    type: number
    sql: ${TABLE}.Dato_Numerico ;;
  }

  dimension: departamento {
    type: string
    sql: ${TABLE}.Departamento ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}.Dimension ;;
  }

  dimension: entidad {
    type: string
    sql: ${TABLE}.Entidad ;;
  }

  dimension: fuente {
    type: string
    sql: ${TABLE}.Fuente ;;
  }

  dimension: indicador {
    type: string
    sql: ${TABLE}.Indicador ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}.Mes ;;
  }

  dimension: subcategoria {
    type: string
    sql: ${TABLE}.Subcategoria ;;
  }

  dimension: unidad_de_medida {
    type: string
    sql: ${TABLE}.Unidad_de_Medida ;;
  }
  measure: count {
    type: count
  }
}
