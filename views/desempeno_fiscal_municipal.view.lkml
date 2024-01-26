# The name of this view in Looker is "Desempeno Fiscal Municipal"
view: desempeno_fiscal_municipal {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `terridata.desempeno_fiscal_municipal` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ahorro Corriente" in Explore.

  dimension: ahorro_corriente {
    type: number
    sql: ${TABLE}.ahorro_corriente ;;
  }

  dimension: balance_primario {
    type: number
    sql: ${TABLE}.balance_primario ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_balance_primario {
    type: sum
    sql: ${balance_primario} ;;  }
  measure: average_balance_primario {
    type: average
    sql: ${balance_primario} ;;  }

  dimension: bonificacion_esfuerzo_propio {
    type: number
    sql: ${TABLE}.bonificacion_esfuerzo_propio ;;
  }

  dimension: bono_catastro {
    type: number
    sql: ${TABLE}.bono_catastro ;;
  }

  dimension: calificacion_ahorro_corriente {
    type: number
    sql: ${TABLE}.calificacion_ahorro_corriente ;;
  }

  dimension: calificacion_balance_primario {
    type: number
    sql: ${TABLE}.calificacion_balance_primario ;;
  }

  dimension: calificacion_dependencia {
    type: number
    sql: ${TABLE}.calificacion_dependencia ;;
  }

  dimension: calificacion_ejecucion_ingresos {
    type: number
    sql: ${TABLE}.calificacion_ejecucion_ingresos ;;
  }

  dimension: calificacion_ejecucion_inversion {
    type: number
    sql: ${TABLE}.calificacion_ejecucion_inversion ;;
  }

  dimension: calificacion_endeudamiento {
    type: number
    sql: ${TABLE}.calificacion_endeudamiento ;;
  }

  dimension: calificacion_gestion {
    type: number
    sql: ${TABLE}.calificacion_gestion ;;
  }

  dimension: calificacion_holgura {
    type: number
    sql: ${TABLE}.calificacion_holgura ;;
  }

  dimension: calificacion_relevancia_fbk_fijo {
    type: number
    sql: ${TABLE}.calificacion_relevancia_FBK_fijo ;;
  }

  dimension: calificacion_resultados {
    type: number
    sql: ${TABLE}.calificacion_resultados ;;
  }

  dimension: capacidad_ejecucion_ingresos {
    type: number
    sql: ${TABLE}.capacidad_ejecucion_ingresos ;;
  }

  dimension: capacidad_ejecucion_inversion {
    type: number
    sql: ${TABLE}.capacidad_ejecucion_inversion ;;
  }

  dimension: capitales {
    type: string
    sql: ${TABLE}.capitales ;;
  }

  dimension: categoria_ley617 {
    type: string
    sql: ${TABLE}.categoria_ley617 ;;
  }

  dimension: cod_dpto {
    type: string
    sql: ${TABLE}.cod_dpto ;;
  }

  dimension: cod_mpio {
    type: string
    sql: ${TABLE}.cod_mpio ;;
  }

  dimension: cumplimiento_ley617 {
    type: string
    sql: ${TABLE}.cumplimiento_ley617 ;;
  }

  dimension: dependencia_transferencias {
    type: number
    sql: ${TABLE}.dependencia_transferencias ;;
  }

  dimension: dotaciones_iniciales {
    type: string
    sql: ${TABLE}.dotaciones_iniciales ;;
  }

  dimension: endeudamiento_largo_plazo {
    type: number
    sql: ${TABLE}.endeudamiento_largo_plazo ;;
  }

  dimension: gestion {
    type: number
    sql: ${TABLE}.gestion ;;
  }

  dimension: gestion_bonos {
    type: number
    sql: ${TABLE}.gestion_bonos ;;
  }

  dimension: holgura {
    type: number
    sql: ${TABLE}.holgura ;;
  }

  dimension: nom_dpto {
    type: string
    sql: ${TABLE}.nom_dpto ;;
  }

  dimension: nom_mpio {
    type: string
    sql: ${TABLE}.nom_mpio ;;
  }

  dimension: nuevo_idf {
    type: number
    value_format_name: id
    sql: ${TABLE}.nuevo_idf ;;
  }

  dimension: nuevo_idf_sin_bonos {
    type: number
    value_format_name: id
    sql: ${TABLE}.nuevo_idf_sin_bonos ;;
  }

  dimension: rango {
    type: string
    sql: ${TABLE}.rango ;;
  }

  dimension: relevancia_fbk_fijo {
    type: number
    sql: ${TABLE}.relevancia_FBK_fijo ;;
  }

  dimension: resultados {
    type: number
    sql: ${TABLE}.resultados ;;
  }
  measure: count {
    type: count
  }
}
