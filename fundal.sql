drop database if exists fundal;
create database fundal;
use fundal;

/* FG DISTANCIA 2 GT */
create table lista_estudiantes(
id_lis_estud int primary key,
codigo int,
nombre_partida varchar(100),
genero varchar(100),
fecha_nac date,
edad int,
diagnostico varchar(100),
clasificacion varchar(100),
referido varchar(100),
constancia varchar(100),
departamento varchar(100),
municipio varchar(100),
aldea varchar(100),
telefono char(10),
grupo_etnico varchar(50),
fecha_evaluacion date,
fecha_ingreso date,
docente varchar(50),
etapa_mineduc varchar(50),
codigo_mineduc varchar(500),
jornana varchar(50),
etapa_fundal varchar(50),
inclusion varchar(50),
fecha_egreso varchar(50),
motivo_egreso varchar(50),
consta_egreso varchar(100),
tipo varchar(200)
);

create table cap_impartidas(
id_cap_impar int primary key,
fecha date,
tema varchar(60),
logros_resultados varchar(100),
tiempo time,
institucion_representan varchar(100),
pais varchar(20),
departamento varchar(50),
municipio varchar(50),
aldea varchar(50),
nombre_docente varchar(50),
cantidad_docentesfundal int,
profesional_disciplina varchar(50),
cantidad_profesionales varchar(200),
practicantes varchar(100),
cantidad_praticantes varchar(100),
estudiantes varchar(100),
cantidad_estudiantes varchar(200),
cantidad_docentes varchar(200),
total_cantidad varchar(200),
hombres int,
mujeres int,
total_nuevos int,
total_hombres int,
total_mujeres int,
grupo_etnico varchar (50),
estudiantes_direct char(50),
estudiantes_indirec_cnDiscapa char(100),
estudiantes_direc_SnDiscapa char (100),
nombre_dlfacilitador varchar(100),
tipo_actividad varchar(100),
tipo varchar(200)
);

create table cap_padres(
id_cap_padres int primary key,
fecha date,
tema varchar(100),
logros_resultados varchar(100),
tiempo time,
institucion_representan varchar (100),
programa_pertenecen varchar(100),
pais varchar(100),
departamento varchar (100),
municipio varchar (100),
aldea varchar(100),
cantidad_padres varchar (100),
padres int,
madres int,
cantidad_miembros int,
hombres int,
mujeres int,
total_cantidad int,
grupo_etnico varchar(100),
estudiantes_directos varchar(100),
estudiantes_indirectos varchar(100),
nombre_facilitador varchar(100),
tipo_actividad varchar(100),
tipo varchar(200)
);

create table capacitaciones_recibidas(
id_cap_recibidas int primary key,
fecha date,
tema varchar(100),
logros_resultados varchar(100),
tiempo time,
institucion_representan varchar (100),
pais varchar (100),
departamento varchar(100),
municipio varchar (100),
aldea varchar (100),
docentes_fundal varchar (100),
cantidad_docentes int, 
total_cantidad int,
hombre int,
mujeres int,
grupo_etnico varchar(100),
estudiantes_directos varchar (100),
estudiantes_IndirectosDiscapacidad varchar (100),
estudiantes_indirectosSDiscapacidad varchar (100),
nbr_fcltdr varchar (100),
tipo_actividad varchar (100),
tipo varchar(200)
);

create table jornadas(
id_jornadas int primary key,
tipo_jorna varchar(200),
insti_propo varchar(200),
departamento varchar(200),
municipio varchar(200),
aldea varchar(200),
total_refe varchar(200),
total_aten varchar(200),
mujer varchar(20),
hombre varchar(20),
ladino varchar(20),
maya varchar(20),
Xinka varchar(20),
Garifuna varchar(20),
mayor varchar(20),
menor varchar(20),
tipo varchar(200)
);



tipos:
remi /* FG DISTANCIA 2 GT */
ht /* FORMATO GENERAL 2019 DISTANCIA HT*/
qz /*FORMATO GENERAL 2019  Agosto DISTANCIA QZ*/
ilgt /*FG INCLUSIÓN LABORAL GT*/
iegt /* FG INCLUSIÓN EDUCATIVA GT*/


create table evualy(
id int primary key,
no_ int,
nombre varchar(100),
genero varchar(100),
fechnaci date,
edad int,
diagnóstico varchar(100),
clasificacion varchar(100),
razo_refe varchar(200),
donde_refe varchar(200),
refe_lugar varchar(100),
tipo varchar(200)
);

insert into lista_estudiantes values(1,222,'Gabriela Lopez','Femenino','251223','12','Lesion Cerebral','Paralisis Cerebral','Hogar Marina Guirola','No','Guatemala','Guatemala','no','2230-4328','Mastizo o Ladino','2005/6/1','2005/06/01','Pedro Luis Solorzano Cuellar','No Aplica','No Aplica','Matutino','no hay','No Incluido','No hay','no Hay','no hay','');
insert into cap_impartidas values(1,'231212','Sistema Alternativo y Aumentativos de Cominicación','La Maestra Implementaran','10000','E.O.R.M San Juan Sanarate','Guatemala','Progreso','Sanarate','No hay','Pedro Luis Solorzano','1','no hay','no hay','no hay','no hay','no hay','no hay','17','17','4','13','0','0','0','Mestizo o Ladino','3','5','200','Pedro Luis Solorzano Cuellar','Capacitación','');
insert into cap_padres values(1,'250912','Estimulación Senosorial','La comunidad educativa conocío técnicas para trabajar estimulación Sensorial en casa','20000','CEIN_PAIN Guastatoya','Programa a Distancia','Guatemala','El Progreso','Guastatoya','Santa Lucia','25','0','25','0','0','0','25','Ladino o Mestizo','2','0','Pedro luis Solórzano','Taller','');
insert into capacitaciones_recibidas values(1,'190912','Temas Importantes','Logros importatnes','103000','Fundal','Guatemala','Guatemala','Guatemala','Los pollos','Andrea','123','12','5','7','Mestizo o Ladino','15','19','5','FNI','Estudios','');
insert into jornadas values(1,'matutina','dcece','Guate','Mixco','man','eef','feaf','23','3312','si','no','no','no','mayor','menor','');
insert into evualy values(1,'190929','Jaco','Fene','120123','23','Sin enfermedades','nivel 2','No hay','No hay','sin Informacion','');

select * from lista_estudiantes;
select * from cap_impartidas;
select * from cap_padres;
select * from capacitaciones_recibidas;
select * from evualy;
select * from jornadas;