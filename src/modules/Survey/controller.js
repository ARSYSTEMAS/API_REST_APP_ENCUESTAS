const dataBase =
  process.env.DB_ENGINE === "mysql"
    ? "../../dataBases/mysql"
    : "../../dataBases/sqlserver";

const DB = require(dataBase);

const TABLE = "survey";

function all() {
  return DB.all(TABLE);
}

function unique(params) {

  return DB.unique(TABLE, params);
}

function update(body) {
  return DB.update(TABLE, body);
}

function insert(body) {
  //return DB.insert(TABLE, body);
  return DB.insert({table:TABLE, data:body});
}

function del(body) {
  return DB.del(TABLE, body);
}


module.exports = {
  all,
  unique,
  update,
  insert,
  del,
};
