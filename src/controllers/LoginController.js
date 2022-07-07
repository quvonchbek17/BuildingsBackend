const { sign } = require('../utils/jwt')


const LOGIN = (req, res) => {
    const { username, password } = req.body


    if(username == 'admin' && password == "1111") {
        res.status(200).json({
            message: "Authorized",
            access_token: sign({ username: "admin", password: "1111" })
        })
    } else {
        return res.status(401).json({
            message: "Xato"
        })
    }

}

module.exports = {
    LOGIN
}