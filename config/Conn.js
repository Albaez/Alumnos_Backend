import { Sequelize } from "sequelize";

//Nombre BD, usuario, clave
const sequelize = new Sequelize('alumno1', 'postgres', 'admin123', {
    host: 'localhost',
    dialect: 'postgres',
}) 

export default sequelize