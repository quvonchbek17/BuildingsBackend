const { fetchData } = require('../../utils/postgres')

// QUERIES

const allcomplexes = `
SELECT * FROM complexes
`
const complexes = `
 SELECT * FROM complexes WHERE company_id = $1
`

const foundComplex = `
 SELECT * FROM complexes WHERE complex_id = $1
`

const postcomplex = `
INSERT INTO complexes(complex_name, complex_address, company_id) VALUES($1, $2, $3);
`
const deletecompany = `
DELETE FROM complexes where complex_id = $1
`


// FUNCTIONS
const getAllComplexes = (id) => fetchData(allcomplexes)
const getComplexes = (id) => fetchData(complexes, id)
const foundComplexes = (id) => fetchData(foundComplex, id)
const postComplex = (name, address, companyId) => fetchData(postcomplex, name, address, companyId)
const deleteComplex = (deleteId) => fetchData(deletecompany, deleteId)


module.exports = {
    getComplexes,
    foundComplexes,
    getAllComplexes,
    postComplex,
    deleteComplex
}