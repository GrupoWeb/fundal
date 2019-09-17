<template>
  <div>
    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span>Capacitación Padres</span>
        
      </div>
      <div >
        <el-form
          :inline="false"
          :model="formInline"
          ref="formInline"
          class="demo-form-inline"
          
          :rules="rules"
        >
          <!-- <el-form-item label="ID: " prop="id">
            <el-input v-model="formInline.id"></el-input>
          </el-form-item> -->

          <el-form-item label="FECHA: " prop="fecha">
            <!-- <el-input v-model="formInline.fecha"></el-input> -->
            <el-date-picker
                v-model="formInline.fecha"
                type="date"
                placeholder="Pick a day">
                </el-date-picker>
          </el-form-item>

          <el-form-item label="TEMA: " prop="tema">
            <el-input v-model="formInline.tema"></el-input>
          </el-form-item>

          <el-form-item label="LOGROS: " prop="logrosR">
            <el-input v-model="formInline.logrosR"></el-input>
          </el-form-item>

          <el-form-item label="TIEMPO: " prop="tiempo">
            <el-input v-model="formInline.tiempo"></el-input>
            <!-- <el-date-picker
                v-model="formInline.fechanac"
                type="date"
                placeholder="Pick a day">
                </el-date-picker> -->
          </el-form-item>

          <el-form-item label="INSTITUCIÓN REPRESENTA: " prop="institucionR">
            <el-input v-model="formInline.institucionR"></el-input>
          </el-form-item>

          <el-form-item label="PROGRAMA PERTENECE: " prop="programaP">
            <el-input v-model="formInline.programaP"></el-input>
          </el-form-item>

          <el-form-item label="PAIS: " prop="pais">
            <el-input v-model="formInline.pais"></el-input>
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

          <el-form-item label="CANTIDAD PADRES: " prop="cantidadP">
            <el-input v-model="formInline.cantidadP"></el-input>
          </el-form-item>

          <el-form-item label="PADRES: " prop="padres">
            <el-input v-model="formInline.padres"></el-input>
          </el-form-item>

          <el-form-item label="MADRES: " prop="madres">
            <el-input v-model="formInline.madres"></el-input>
          </el-form-item>
          <el-form-item label="CANTIDAD MIEMBROS: " prop="cantidadM">
            <el-input v-model="formInline.cantidadM"></el-input>
          </el-form-item>

          <el-form-item label="HOMBRES: " prop="hombres">
            <el-input v-model="formInline.hombres"></el-input>
            <!-- <el-date-picker
                v-model="formInline.fechaval"
                type="date"
                placeholder="Pick a day">
                </el-date-picker> -->
          </el-form-item>

          <el-form-item label="MUJERES: " prop="mujeres">
            <el-input v-model="formInline.mujeres"></el-input>
            <!-- <el-date-picker
                v-model="formInline.fechaing"
                type="date"
                placeholder="Pick a day">
                </el-date-picker> -->
          </el-form-item>

          <el-form-item label="TOTAL CANTIDAD: " prop="totalC">
            <el-input v-model="formInline.totalC"></el-input>
          </el-form-item>

          <el-form-item label="GRUPO ETNICO: " prop="grupoE">
            <el-input v-model="formInline.grupoE"></el-input>
          </el-form-item>
          <el-form-item label="ESTUDIANTES DIRECTOS: " prop="estudianteD">
            <el-input v-model="formInline.estudianteD"></el-input>
          </el-form-item>

          <el-form-item label="ESTUDIANTES INDIRECTOS: " prop="estudianteI">
            <el-input v-model="formInline.estudianteI"></el-input>
          </el-form-item>

          <el-form-item label="NOMBRE FACILITADOR: " prop="nombreFa">
            <el-input v-model="formInline.nombreFa"></el-input>
          </el-form-item>

          <el-form-item label="TIPO ACTIVIDAD: " prop="tipoAc">
            <el-input v-model="formInline.tipoAc"></el-input>
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
      <el-table-column prop="id_cap_padres" label="#" width="50"></el-table-column>
      <el-table-column prop="tema" label="Nombre"></el-table-column>
      <el-table-column label="Operaciones" width="200">
        <template slot="header" slot-scope="scope">
          <el-input v-model="search" size="mini" placeholder="Buscar" />
          <el-link :underline=true v-bind:href="'/PrinterPadres'">
            <el-button
              size="mini"
              type="warning"
              icon="el-icon-printer"
              plain
              >Imprimir 
            </el-button>
          </el-link>
        </template>
        <template slot-scope="scope">
          <el-button size="mini" @click="handleEdit(scope.row.id_cap_padres)">Editar</el-button>
          <el-button
            size="mini"
            type="danger"
            @click="handleDelete(scope.row.id_cap_padres)"
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
        // id: "",
        fecha:"",
        tema:"",
        logrosR:"",
        tiempo:"",
        institucionR:"",
        programaP:"",
        pais:"",
        departamento:"",
        municipio:"",
        aldea:"",
        cantidadP:"",
        padres:"",
        madres:"",
        cantidadM:"",
        hombres:"",
        mujeres:"",
        totalC:"",
        grupoE:"",
        estudianteD:"",
        estudianteI:"",
        nombreFa:"",
        tipoAc:"",
        tipo:""

      },
    //   ids: "",
        fechaa:"",
        temaa:"",
        logrosRa:"",
        tiempoa:"",
        institucionRa:"",
        programaPa:"",
        paisa:"",
        departamentoa:"",
        municipioa:"",
        aldeaa:"",
        cantidadPa:"",
        padresa:"",
        madresa:"",
        cantidadMa:"",
        hombresa:"",
        mujeresa:"",
        totalCa:"",
        grupoEa:"",
        estudianteDa:"",
        estudianteIa:"",
        nombreFaa:"",
        tipoAca:"",
        tipoa:"",
      fullscreenLoading: false,
      loading: false,
      rules: {
        fecha: [
          {
            required: true,
            message: "Ingrese un Nombre de Categoria",
            trigger: "blur"
          }
        ],
        // id: [
        //   {
        //     required: true,
        //     message: "Ingrese un id",
        //     trigger: "blur"
        //   }
        // ],
        tema: [
          {
            required: true,
            message: "Ingrese un codigo",
            trigger: "blur"
          }
        ],
        logrosR: [
          {
            required: true,
            message: "Ingrese un genero",
            trigger: "blur"
          }
        ],
        // fechanac: [
        //   {
        //     required: true,
        //     message: "Ingrese una fecha",
        //     trigger: "blur"
        //   }
        // ],
        tiempo: [
          {
            required: true,
            message: "Ingrese una edad",
            trigger: "blur"
          }
        ],
        institucionR: [
          {
            required: true,
            message: "Ingrese un diagnostico",
            trigger: "blur"
          }
        ],
        programaP: [
          {
            required: true,
            message: "Ingrese una clasificacion",
            trigger: "blur"
          }
        ],
        pais: [
          {
            required: true,
            message: "Ingrese un referido",
            trigger: "blur"
          }
        ],
        departamento: [
          {
            required: true,
            message: "Ingrese una constancia",
            trigger: "blur"
          }
        ],
        municipio: [
          {
            required: true,
            message: "Ingrese un departamento",
            trigger: "blur"
          }
        ],
        aldea: [
          {
            required: true,
            message: "Ingrese un municipio",
            trigger: "blur"
          }
        ],
        cantidadP: [
          {
            required: true,
            message: "Ingrese una aldea",
            trigger: "blur"
          }
        ],
        padres: [
          {
            required: true,
            message: "Ingrese un telefono",
            trigger: "blur"
          }
        ],
        madres: [
          {
            required: true,
            message: "Ingrese una etnia",
            trigger: "blur"
          }
        ],
        cantidadM: [
          {
            required: true,
            message: "Ingrese una fecha",
            trigger: "blur"
          }
        ],
        hombres: [
          {
            required: true,
            message: "Ingrese una fecha",
            trigger: "blur"
          }
        ],
        mujeres: [
          {
            required: true,
            message: "Ingrese un docente",
            trigger: "blur"
          }
        ],
        totalC: [
          {
            required: true,
            message: "Ingrese una etapa",
            trigger: "blur"
          }
        ],
        grupoE: [
          {
            required: true,
            message: "Ingrese un codigo",
            trigger: "blur"
          }
        ],
        estudianteD: [
          {
            required: true,
            message: "Ingrese una jornada",
            trigger: "blur"
          }
        ],
        estudianteI: [
          {
            required: true,
            message: "Ingrese una etapa",
            trigger: "blur"
          }
        ],
        nombreFa: [
          {
            required: true,
            message: "Ingrese una inclusion",
            trigger: "blur"
          }
        ],
        tipoAc: [
          {
            required: true,
            message: "Ingrese una fecha",
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
      var url = "/getPadres";
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
          var url = "/addPadres";
          axios
            .post(url, {
            //   ids: this.formInline.id,
              fechaa: this.formInline.fecha,
              temaa: this.formInline.tema,
              logrosRa: this.formInline.logrosR,
              tiempoa: this.formInline.tiempo,
              institucionRa: this.formInline.institucionR,
              programaPa: this.formInline.programaP,
              paisa: this.formInline.pais,
              departamentoa: this.formInline.departamento,
              municipioa: this.formInline.municipio,
              aldeaa: this.formInline.aldea,
              cantidadPa: this.formInline.cantidadP,
              padresa: this.formInline.padres,
              madresa: this.formInline.madres,
              cantidadMa: this.formInline.cantidadM,
              hombresa: this.formInline.hombres,
              mujeresa: this.formInline.mujeres,
              totalCa: this.formInline.totalC,
              grupoEa: this.formInline.grupoE,
              estudianteDa: this.formInline.estudianteD,
              estudianteIa: this.formInline.estudianteI,
              nombreFaa: this.formInline.nombreFa,
              tipoAca: this.formInline.tipoAc,
              tipos: this.formInline.tipo,
            })
            .then(response => {
              const status = JSON.parse(response.status);
              if (status == "200") {
                this.$message({
                  message: h("p", null, [
                    h("i", { style: "color: teal" }, "Agregado!")
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
      var url = "/deletePadres";
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
                h("i", { style: "color: teal" }, "Dato Eliminado!")
              ]),
              type: "success"
            });
            // this.formInline.name = "";
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
          var url = "/updatePadres";
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