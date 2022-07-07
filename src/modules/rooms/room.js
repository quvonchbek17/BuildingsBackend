const model = require('./model')

module.exports = {
    GET: async(req, res) => {
        const { id } = req.params
        try {
            res.json(await model.getRooms(id))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    GETRoom: async(req, res) => {
        const { id } = req.params
        try {
            res.json(await model.foundRoom(id))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    AllRoom: async(req, res) => {
        try {
            res.json(await model.allRoom())
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    POST: async(req, res) => {
        const { room_num, room_area, area_price, complex_id } = req.body
        try {
            res.json(await model.postRoom(room_num, room_area, area_price, complex_id))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    },
    DELETE: async(req, res) => {
        const { deleteId } = req.body
        try {
            res.json(await model.deleteRoom(deleteId))
        } catch(err) {
            console.log(err.message)
            res.sendStatus(500)
        }
    }
}