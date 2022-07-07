const { fetchData } = require('../../utils/postgres')

// QUERIES

const banks = `
 SELECT * FROM banks
`

const duration = `
 SELECT distinct mortgage_duration FROM banks order by mortgage_duration
`

const credit = `
 SELECT * , (rooms.room_area * rooms.area_price) as houseprice, (rooms.room_area * rooms.area_price)*banks.starting_payment/100 as startmoney , (rooms.room_area * rooms.area_price - (rooms.room_area * rooms.area_price)*banks.starting_payment/100 )/(12 * $1) as monthpayment  from banks inner join rooms on (rooms.room_area * rooms.area_price) < banks.max_credit where banks.mortgage_duration = $1 and rooms.room_id = $2 order by banks.max_credit   limit 1
`
const post = `
INSERT INTO banks(bank_name, logo_link, max_credit, starting_payment, mortgage_duration,bank_service) VALUES($1, $2, $3, $4, $5, $6)
`

const deletebank = `
DELETE FROM banks where bank_id = $1
`

// FUNCTIONS
const getBanks = () => fetchData(banks)
const getDuration = () => fetchData(duration)
const getCredit = (year, roomId) => fetchData(credit, year, roomId)
const postBank = (name, logo, maxCredit, startPayment, duration, service) => fetchData(post, name, logo, maxCredit, startPayment, duration, service)
const deleteBank = (deleteId) => fetchData(deletebank, deleteId)


module.exports = {
    getBanks,
    getDuration,
    getCredit,
    postBank,
    deleteBank
}