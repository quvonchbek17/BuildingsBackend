const model = require('./model')

module.exports = {
    GET: async(req, res) => {
      const { id } = req.params
        try {
            res.json(await model.getComplexes(id))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    GETComplex: async(req, res) => {
        const { id } = req.params
          try {
              res.json(await model.foundComplexes(id))
          } catch(err) {
              console.log(err.message)
              res.sendStatus(500)
          }
    },
    AllComplex: async(req, res) => {
          try {
              res.json(await model.getAllComplexes())
          } catch(err) {
              console.log(err.message)
              res.sendStatus(500)
          }
    },
    PostComplex: async(req, res) => {
        const { name, address, companyId } = req.body
          try {
              res.json(await model.postComplex(name, address, companyId))
          } catch(err) {
              console.log(err.message)
              res.sendStatus(500)
          }
    },
    DeleteComplex: async(req, res) => {
        const { deleteId } = req.body
          try {
              res.json(await model.deleteComplex(deleteId))
          } catch(err) {
              console.log(err.message)
              res.sendStatus(500)
          }
    }

}