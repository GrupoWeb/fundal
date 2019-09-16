<template>
  <div>
    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span>Estudiantes</span>
        
      </div>
      <div >
        <el-form
          :inline="false"
          :model="formInline"
          ref="formInline"
          class="demo-form-inline"
          
          :rules="rules"
        >
          <el-form-item label="ID: " prop="id">
            <el-input v-model="formInline.id"></el-input>
          </el-form-item>

          <el-form-item label="CODIGO: " prop="codigo">
            <el-input v-model="formInline.codigo"></el-input>
          </el-form-item>

          <el-form-item label="NOMBRE PARTIDA: " prop="name">
            <el-input v-model="formInline.name"></el-input>
          </el-form-item>

          <el-form-item label="GENERO: " prop="genero">
            <el-input v-model="formInline.genero"></el-input>
          </el-form-item>

          <el-form-item label="FECHA NACIMIENTO: " prop="fechanac">
            <el-input v-model="formInline.fechanac"></el-input>
          </el-form-item>

          <el-form-item label="EDAD: " prop="edad">
            <el-input v-model="formInline.edad"></el-input>
          </el-form-item>

          <el-form-item label="DIAGNOSTICO: " prop="diagnostico">
            <el-input v-model="formInline.diagnostico"></el-input>
          </el-form-item>

          <el-form-item label="CLASIFICACIÓN: " prop="clasificacion">
            <el-input v-model="formInline.clasificacion"></el-input>
          </el-form-item>

          <el-form-item label="REFERIDO: " prop="referido">
            <el-input v-model="formInline.referido"></el-input>
          </el-form-item>
          <el-form-item label="CONSTANCIA: " prop="constancia">
            <el-input v-model="formInline.constancia"></el-input>
          </el-form-item>

          <el-form-item label="DEPARTAMENTO: " prop="departamento">
            <el-input v-model="formInline.departamento"></el-input>
          </el-form-item>

          <el-form-item label="MUNICIPIO: " prop="municipio">
            <el-input v-model="formInline.municipio"></el-input>
          </el-form-item>

          <el-form-item label="ALDEA: " prop="aldea">
            <el-input v-model="formInline.aldea"></el-input>
          </el-form-item>

          <el-form-item label="TELEFONO: " prop="telefono">
            <el-input v-model="formInline.telefono"></el-input>
          </el-form-item>
          <el-form-item label="GRUPO ETNICO: " prop="etnia">
            <el-input v-model="formInline.etnia"></el-input>
          </el-form-item>

          <el-form-item label="FECHA EVALUACIÓN: " prop="fechaval">
            <el-input v-model="formInline.fechaval"></el-input>
          </el-form-item>

          <el-form-item label="FECHA INGRESO: " prop="fechaing">
            <el-input v-model="formInline.fechaing"></el-input>
          </el-form-item>

          <el-form-item label="DOCENTE: " prop="docente">
            <el-input v-model="formInline.docente"></el-input>
          </el-form-item>

          <el-form-item label="ETAPA MINEDUC: " prop="etapa">
            <el-input v-model="formInline.etapa"></el-input>
          </el-form-item>
          <el-form-item label="CODIGO MINEDUC: " prop="codigoMineduc">
            <el-input v-model="formInline.codigoMineduc"></el-input>
          </el-form-item>

          <el-form-item label="JORNADA: " prop="jornada">
            <el-input v-model="formInline.jornada"></el-input>
          </el-form-item>

          <el-form-item label="ETAPA FUNDAL: " prop="etapafundal">
            <el-input v-model="formInline.etapafundal"></el-input>
          </el-form-item>

          <el-form-item label="INCLUSIÓN: " prop="inclusion">
            <el-input v-model="formInline.inclusion"></el-input>
          </el-form-item>
          <el-form-item label="FECHA EGRESO: " prop="fingreso">
            <el-input v-model="formInline.fingreso"></el-input>
          </el-form-item>

          <el-form-item label="MOTIVO EGRESO: " prop="motivoegreso">
            <el-input v-model="formInline.motivoegreso"></el-input>
          </el-form-item>

          <el-form-item label="CONSTANCIA EGRESO: " prop="constanciaegreso">
            <el-input v-model="formInline.constanciaegreso"></el-input>
          </el-form-item>

          <el-form-item label="TIPO: " prop="tipo">
            <el-select v-model="formInline.tipo" placeholder="Activity zone" >
                <el-option label="Distancia GT" value="Distancia_GT"></el-option>
                <el-option label="Distancia HT" value="Distancia_HT"></el-option>
                <el-option label="Distancia QZ" value="Distancia_QZ"></el-option>
                <el-option label="INCLUSION LABORAL" value="INCLUSION_LABORAL"></el-option>
                <el-option label="INCLUSION EDUCATIVA" value="INCLUSION_EDUCATIVA"></el-option>
            </el-select>
          </el-form-item>

          <el-form-item>
            <el-button
              @click="onSubmit('formInline')"
              type="primary"
              class="btn btn-success"
              v-loading.fullscreen.lock="fullscreenLoading"
            >Guardar</el-button>
          </el-form-item>
        </el-form>

    <el-table
      :data="plantillasall.slice((currentPage-1)*pagesize,currentPage*pagesize).filter(data => !search || data.nombre.toLowerCase().includes(search.toLowerCase()))"
      style="width: 100%"
      border
    >
      <el-table-column prop="id_lis_estud" label="#" width="50"></el-table-column>
      <el-table-column prop="nombre_partida" label="Nombre"></el-table-column>
      <el-table-column label="Operaciones" width="200">
        <template slot="header" slot-scope="scope">
          <el-input v-model="search" size="mini" placeholder="Buscar" />
        </template>
        <template slot-scope="scope">
          <el-button size="mini" @click="handleEdit(scope.row.id_Categoria)">Editar</el-button>
          <el-button
            size="mini"
            type="danger"
            @click="handleDelete(scope.row.id_Categoria)"
          >Eliminar</el-button>
        </template>
      </el-table-column>
    </el-table>
    <div style="text-align: left;margin-top: 30px;">
      <el-pagination
        background
        layout="total,prev, pager, next"
        :total="total"
        @current-change="current_change"
      ></el-pagination>
    </div>
          </div>
    </el-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      plantillasall: [],
      total: 0,
      currentPage: 1,
      pagesize: 10,
      formInline: {
        id: "",
        codigo:"",
        name:"",
        genero:"",
        fechanac:"",
        edad:"",
        diagnostico:"",
        clasificacion:"",
        referido:"",
        constancia:"",
        departamento:"",
        municipio:"",
        aldea:"",
        telefono:"",
        etnia:"",
        fechaval:"",
        fechaing:"",
        docente:"",
        etapa:"",
        codigoMineduc:"",
        jornada:"",
        etapafundal:"",
        inclusion:"",
        fingreso:"",
        motivoegreso:"",
        constanciaegreso:"",
        tipo:""

      },
      ids: "",
      codigos: "",
      names: "",
      generos: "",
      fechasnac: "",
      edads: "",
      diagnosticos: "",
      clasificaciones: "",
      referidos: "",
      constancias: "",
      departamentos: "",
      municipios: "",
      aldeas: "",
      telefonos: "",
      etnias: "",
      fechasval: "",
      fechasing: "",
      docentes: "",
      etapas: "",
      codigosmineduc: "",
      jornadas: "",
      etapasfundal: "",
      inclusiones: "",
      fingresos: "",
      motivoingresos: "",
      constanciaegresos: "",
      tipos: "",
      fullscreenLoading: false,
      loading: false,
      rules: {
        name: [
          {
            required: true,
            message: "Ingrese un Nombre de Categoria",
            trigger: "blur"
          }
        ],
        id: [
          {
            required: true,
            message: "Ingrese un id",
            trigger: "blur"
          }
        ],
        codigo: [
          {
            required: true,
            message: "Ingrese un codigo",
            trigger: "blur"
          }
        ],
        genero: [
          {
            required: true,
            message: "Ingrese un genero",
            trigger: "blur"
          }
        ],
        fechanac: [
          {
            required: true,
            message: "Ingrese una fecha",
            trigger: "blur"
          }
        ],
        edad: [
          {
            required: true,
            message: "Ingrese una edad",
            trigger: "blur"
          }
        ],
        diagnostico: [
          {
            required: true,
            message: "Ingrese un diagnostico",
            trigger: "blur"
          }
        ],
        clasificacion: [
          {
            required: true,
            message: "Ingrese una clasificacion",
            trigger: "blur"
          }
        ],
        referido: [
          {
            required: true,
            message: "Ingrese un referido",
            trigger: "blur"
          }
        ],
        constancia: [
          {
            required: true,
            message: "Ingrese una constancia",
            trigger: "blur"
          }
        ],
        departamento: [
          {
            required: true,
            message: "Ingrese un departamento",
            trigger: "blur"
          }
        ],
        municipio: [
          {
            required: true,
            message: "Ingrese un municipio",
            trigger: "blur"
          }
        ],
        aldea: [
          {
            required: true,
            message: "Ingrese una aldea",
            trigger: "blur"
          }
        ],
        telefono: [
          {
            required: true,
            message: "Ingrese un telefono",
            trigger: "blur"
          }
        ],
        etnia: [
          {
            required: true,
            message: "Ingrese una etnia",
            trigger: "blur"
          }
        ],
        fechaval: [
          {
            required: true,
            message: "Ingrese una fecha",
            trigger: "blur"
          }
        ],
        fechaing: [
          {
            required: true,
            message: "Ingrese una fecha",
            trigger: "blur"
          }
        ],
        docente: [
          {
            required: true,
            message: "Ingrese un docente",
            trigger: "blur"
          }
        ],
        etapa: [
          {
            required: true,
            message: "Ingrese una etapa",
            trigger: "blur"
          }
        ],
        codigoMineduc: [
          {
            required: true,
            message: "Ingrese un codigo",
            trigger: "blur"
          }
        ],
        jornada: [
          {
            required: true,
            message: "Ingrese una jornada",
            trigger: "blur"
          }
        ],
        etapafundal: [
          {
            required: true,
            message: "Ingrese una etapa",
            trigger: "blur"
          }
        ],
        inclusion: [
          {
            required: true,
            message: "Ingrese una inclusion",
            trigger: "blur"
          }
        ],
        fingreso: [
          {
            required: true,
            message: "Ingrese una fecha",
            trigger: "blur"
          }
        ],
        motivoegreso: [
          {
            required: true,
            message: "Ingrese un motivo",
            trigger: "blur"
          }
        ],
        constanciaegreso: [
          {
            required: true,
            message: "Ingrese una constancia",
            trigger: "blur"
          }
        ],
        tipo: [
          {
            required: true,
            message: "Ingrese un tipo",
            trigger: "blur"
          }
        ],
      },
      search: ""
    };
  },
  mounted() {
    this.getPlantillasData();
  },
  methods: {
    getPlantillasData: function() {
      var url = "/getEstudiante";
      axios.get(url).then(response => {
        this.plantillasall = response.data;
        this.total = response.data.length;
      });
    },
    onSubmit(formName) {
      const h = this.$createElement;
      this.$refs[formName].validate(valid => {
        if (valid) {
          this.fullscreenLoading = true;
          var url = "/addEstudiante";
          axios
            .post(url, {
              ids: this.formInline.id,
              codigos: this.formInline.codigo,
              names: this.formInline.name,
              generos: this.formInline.genero,
              fechasnac: this.formInline.fechanac,
              edads: this.formInline.edad,
              diagnosticos: this.formInline.diagnostico,
              clasificaciones: this.formInline.clasificacion,
              referidos: this.formInline.referido,
              constancias: this.formInline.constancia,
              departamentos: this.formInline.departamento,
              municipios: this.formInline.municipio,
              aldeas: this.formInline.aldea,
              telefonos: this.formInline.telefono,
              etnias: this.formInline.etnia,
              fechasval: this.formInline.fechaval,
              fechasing: this.formInline.fechaing,
              docentes: this.formInline.docente,
              etapas: this.formInline.etapa,
              codigosmineduc: this.formInline.codigoMineduc,
              jornadas: this.formInline.jornada,
              etapasfundal: this.formInline.etapafundal,
              inclusiones: this.formInline.inclusion,
              fingresos: this.formInline.fingreso,
              motivoingresos: this.formInline.motivoegreso,
              constanciaegresos: this.formInline.constanciaegreso,
              tipos: this.formInline.tipo,
            })
            .then(response => {
              const status = JSON.parse(response.status);
              if (status == "200") {
                this.$message({
                  message: h("p", null, [
                    h("i", { style: "color: teal" }, "Categoria Agregada!")
                  ]),
                  type: "success"
                });
                this.formInline.name = "";
                this.fullscreenLoading = false;
                this.getPlantillasData();
              }
              
            })
            .catch(error => {
                console.log(error);
              this.$message.error({
                message: h("p", null, [
                  h(
                    "i",
                    { style: "color: red" },
                    "Error, servidor no encontrado"
                  )
                ])
              });
              this.fullscreenLoading = false;
            });
        } else {
          this.$message.error({
            message: h("p", null, [
              h("i", { style: "color: red" }, "error")
            ])
          });
          return false;
        }
      });
    },
    current_change: function(currentPage) {
      this.currentPage = currentPage;
    },
    handleSizeChange(val) {
      console.log(`${val} items per page`);
    },
    handleDelete(row) {
      const config = { headers: { "Content-Type": "application/json" } };
      const h = this.$createElement;
      this.fullscreenLoading = true;
      var url = "/deleteEstudiante";
      axios
        .put(
          url,
          {
            id: row
          },
          config
        )
        .then(response => {
          const status = JSON.parse(response.status);
          if (status == "200") {
            this.$message({
              message: h("p", null, [
                h("i", { style: "color: teal" }, "Categoria Eliminada!")
              ]),
              type: "success"
            });
            this.formInline.name = "";
            this.fullscreenLoading = false;
            this.getPlantillasData();
          }
        })
        .catch(error => {
          this.$message.error({
            message: h("p", null, [
              h("i", { style: "color: red" }, "Error, servidor no encontrado")
            ])
          });
          this.fullscreenLoading = false;
        });
    },
    handleEdit(row) {
      this.$prompt("Nombre Categoria", "Edición de Categoria", {
        confirmButtonText: "Actualizar",
        cancelButtonText: "Cancel"
      })
        .then(({ value }) => {
          const config = { headers: { "Content-Type": "application/json" } };
          const h = this.$createElement;
          var url = "/updateEstudiante";
          axios
            .put(
              url,
              {
                id: row,
                name: value
              },
              config
            )
            .then(response => {
              const status = JSON.parse(response.status);
              if (status == "200") {
                this.$message({
                  message: h("p", null, [
                    h("i", { style: "color: teal" }, "Datos Actualizados!")
                  ]),
                  type: "success"
                });
                this.getPlantillasData();
              }
            })
            .catch(error => {
              this.$message.error({
                message: h("p", null, [
                  h(
                    "i",
                    { style: "color: red" },
                    "Error, servidor no encontrado"
                  )
                ])
              });
            });
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "Proceso Cancelado"
          });
        });
    }
  }
};
</script>

<style >
</style>