const model = require('./model')

module.exports = {
    GET: async(req, res) => {
        try {
            res.json(await model.getBanks())
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    GETDURATION: async(req, res) => {
        try {
            res.json(await model.getDuration())
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    GETCredit: async(req, res) => {
        const { roomId, year } = req.params
        try {
            res.json(await model.getCredit(year, roomId))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    POST: async(req, res) => {
        const { name, logo, maxCredit, startPayment, duration, service } = req.body
        try {
            res.json(await model.postBank(name, logo, maxCredit, startPayment, duration, service))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    DELETE: async(req, res) => {
        const { deleteId } = req.body
        try {
            res.json(await model.deleteBank(deleteId))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    }
}