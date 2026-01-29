//loading dependency on CAP framework
const cds = require('@sap/cds')


//define a module that inherit from standard sap class - part of syntax
module.exports = class MyService extends cds.ApplicationService { init() {


  //adding event handler for hello - implementation
  this.on ('hello', async (req) => {
    return "Hey Amigo!! " + req.data.name + " Welcome to CAP Service";
  })


  return super.init()
}}
