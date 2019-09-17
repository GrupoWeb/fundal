<template>
  <div>
    <el-card class="box-card">
      <div slot="header" class="clearfix">
        <span>Jornadas</span>
        
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

          <el-form-item label="TIPO JORNADA: " prop="tipo_jorna">
            <el-input v-model="formInline.tjornada"></el-input>
          </el-form-item>

          <el-form-item label="insti_propo: " prop="insti_propo">
            <el-input v-model="formInline.insti_propo"></el-input>
          </el-form-item>

          <el-form-item label="DEPARTAMENTO: " prop="departamento">
            <el-input v-model="formInline.departamento"></el-input>
          </el-form-item>

          <el-form-item label="MUNICIPIO: " prop="municipio">
            <el-input v-model="formInline.municipio"></el-input>
            <!-- <el-date-picker
                v-model="formInline.fechanac"
                type="date"
                placeholder="Pick a day">
                </el-date-picker> -->
          </el-form-item>

          <el-form-item label="ALDEA: " prop="aldea">
            <el-input v-model="formInline.aldea"></el-input>
          </el-form-item>

          <el-form-item label="TOTAL REFERIDO: " prop="Treferido">
            <el-input v-model="formInline.Treferido"></el-input>
          </el-form-item>

          <el-form-item label="TOTAL ATENDIDO: " prop="Tatendido">
            <el-input v-model="formInline.Tatendido"></el-input>
          </el-form-item>

          <el-form-item label="MUJER: " prop="mujer">
            <el-input v-model="formInline.mujer"></el-input>
          </el-form-item>
          <el-form-item label="HOMBRE: " prop="hombre">
            <el-input v-model="formInline.hombre"></el-input>
          </el-form-item>

          <el-form-item label="LADINO: " prop="ladino">
            <el-input v-model="formInline.ladino"></el-input>
          </el-form-item>

          <el-form-item label="MAYA: " prop="maya">
            <el-input v-model="formInline.maya"></el-input>
          </el-form-item>

          <el-form-item label="XINKA: " prop="xinka">
            <el-input v-model="formInline.xinka"></el-input>
          </el-form-item>

          <el-form-item label="GARIGUNA: " prop="gariguna">
            <el-input v-model="formInline.gariguna"></el-input>
          </el-form-item>
          <el-form-item label="MAYOR: " prop="mayor">
            <el-input v-model="formInline.mayor"></el-input>
          </el-form-item>

          <el-form-item label="MENOR: " prop="menor">
            <el-input v-model="formInline.menor"></el-input>
            <!-- <el-date-picker
                v-model="formInline.fechaval"
                type="date"
                placeholder="Pick a day">
                </el-date-picker> -->
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
      <el-table-column prop="id_jornadas" label="#" width="50"></el-table-column>
      <el-table-column prop="tipo_jorna" label="Nombre"></el-table-column>
      <el-table-column label="Operaciones" width="200">
        <template slot="header" slot-scope="scope">
          <el-input v-model="search" size="mini" placeholder="Buscar" />
          <el-link :underline=true v-bind:href="'/PrinterJornadas'">
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
          <el-button size="mini" @click="handleEdit(scope.row.id_jornadas)">Editar</el-button>
          <el-button
            size="mini"
            type="danger"
            @click="handleDelete(scope.row.id_jornadas)"
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
        tjornada:"",
        insti_propo:"",
        departamento:"",
        municipio:"",
        aldea:"",
        Treferido:"",
        Tatendido:"",
        mujer:"",
        hombre:"",
        ladino:"",
        maya:"",
        xinka:"",
        gariguna:"",
        mayor:"",
        menor:"",
        tipo:""

      },
    //   ids: "",
        tjornadas:"",
        insti_propos:"",
        departamentos:"",
        municipios:"",
        aldeas:"",
        Treferidos:"",
        Tatendidos:"",
        mujers:"",
        hombres:"",
        ladinos:"",
        mayas:"",
        xinkas:"",
        garigunas:"",
        mayors:"",
        menors:"",
        tipos:"",
      fullscreenLoading: false,
      loading: false,
      rules: {
        tjornada: [
          {
            required: true,
            message: "Ingrese un valor",
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
        insti_propo: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        departamento: [
          {
            required: true,
            message: "Ingrese un valor",
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
        municipio: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        aldea: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        Treferido: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        Tatendido: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        mujer: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        hombre: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        ladino: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        maya: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        xinka: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        etnia: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        gariguna: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        mayor: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        menor: [
          {
            required: true,
            message: "Ingrese un valor",
            trigger: "blur"
          }
        ],
        tipo: [
          {
            required: true,
            message: "Ingrese un valor",
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
      var url = "/getjornada";
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
          var url = "/addjornada";
          axios
            .post(url, {
            //   ids: this.formInline.id,
              tjornadas: this.formInline.tjornada,
              insti_propos: this.formInline.insti_propo,
              departamentos: this.formInline.departamento,
              municipios: this.formInline.municipio,
              aldeas: this.formInline.aldea,
              Treferidos: this.formInline.Treferido,
              Tatendidos: this.formInline.Tatendido,
              mujers: this.formInline.mujer,
              hombres: this.formInline.hombre,
              ladinos: this.formInline.ladino,
              mayas: this.formInline.maya,
              xinkas: this.formInline.xinka,
              garigunas: this.formInline.gariguna,
              mayors: this.formInline.mayor,
              menors: this.formInline.menor,
              tipos: this.formInline.tipo,
             
            })
            .then(response => {
              const status = JSON.parse(response.status);
              if (status == "200") {
                this.$message({
                  message: h("p", null, [
                    h("i", { style: "color: teal" }, " Agregado!")
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
      var url = "/deletejornada";
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
          var url = "/updatejornada";
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