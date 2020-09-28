'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class LoginLogs extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  };
  LoginLogs.init({
    user: DataTypes.STRING,
    action: DataTypes.STRING,
    date: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'LoginLogs',
  });
  return LoginLogs;
};