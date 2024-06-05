import { DataTypes } from "sequelize";
import sequelize from "../config/Conn.js";

const Alumno = sequelize.define('Alumno', {
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    nombre: {
        type: DataTypes.STRING,
        allowNull: false
    },
    apellido: {
        type: DataTypes.STRING,
        allowNull: false
    }
}, {
    tableName: 'Alumno1',
    timestamps: false
});

export default Alumno;