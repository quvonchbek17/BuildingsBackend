const jwt = require('jsonwebtoken')

const sign = (payload) => jwt.sign(payload, "ONVOERBSCDCWNOVBBVOEUBLIVBNDJKFBWBROEBRJE", {
    expiresIn: 12 * 3600 * 1000
})

module.exports = {
    sign
}