const model = require('./model')

module.exports = {
    GET: async(req, res) => {
        try {
            res.json(await model.getCompanies())
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    GETCompany: async(req, res) => {
        const { id } = req.params
        try {
            res.json(await model.foundCompany(id))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    POST: async(req, res) => {
        const {name, link} = req.body
        try {
            res.json(await model.postCompany(name, link))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    DELETE: async(req, res) => {
        const {deleteId} = req.body
        try {
            res.json(await model.deleteCompany(deleteId))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    }
}