
  view: poblacion_total {
    derived_table: {
      explore_source: dm_ot_descripcion_general {
        column: valor {}
        column: anio {}
        column: entidad {}
        column: codigo_entidad {}
        filters: {
          field: dm_ot_descripcion_general.indicador
          value: "Población total"
        }
      }
    }
    dimension: valor {
      description: ""
      type: number
    }
    dimension: anio {
      description: ""
      type: number
    }
    dimension: entidad {
      description: ""
    }
    dimension: codigo_entidad {
      description: ""
    }
    measure: valor_suma {
      type: sum
      sql: ${valor} ;;  }
  }
