const app = require('./src/app');

//Starting the server
app.listen(app.get("portDev"), () => {
    console.log("Servidor http escuchando en el puerto", app.get("portDev"));
  });
