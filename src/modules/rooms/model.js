const { fetchData } = require('../../utils/postgres')

// QUERIES

const rooms = `
 SELECT * FROM rooms WHERE complex_id = $1
`

const foundroom = `
 SELECT * FROM rooms WHERE room_id = $1
`

const allroom = `
 SELECT * FROM rooms inner join complexes on complexes.complex_id = rooms.complex_id inner join companies on companies.company_id = complexes.company_id where complexes.complex_id = rooms.complex_id
`

const postroom = `
INSERT INTO rooms(room_num, room_area, area_price, complex_id) VALUES($1, $2, $3, $4);
`

const deleteroom = `
DELETE FROM rooms where room_id = $1
`


// FUNCTIONS
const getRooms = (id) => fetchData(rooms, id)
const foundRoom = (id) => fetchData(foundroom, id)
const allRoom = () => fetchData(allroom)
const postRoom = (room_num, room_area, area_price, complex_id) => fetchData(postroom, room_num, room_area, area_price, complex_id)
const deleteRoom = (deleteId) => fetchData(deleteroom, deleteId)


module.exports = {
    getRooms,
    foundRoom,
    allRoom,
    postRoom,
    deleteRoom
}