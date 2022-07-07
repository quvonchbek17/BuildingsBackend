const { fetchData } = require('../../utils/postgres')

// QUERIES

const companies = `
 SELECT * FROM companies
`

const foundcompany = `
 SELECT * FROM companies WHERE company_id = $1
`

const postcompany = `
INSERT INTO companies(company_name, logo_link) VALUES($1, $2);
`
const deletecompany = `
DELETE FROM companies where company_id = $1
`


// FUNCTIONS
const getCompanies = () => fetchData(companies)
const foundCompany = (id) => fetchData(foundcompany,id)
const postCompany = (name, link) => fetchData(postcompany,name, link)
const deleteCompany = (id) => fetchData(deletecompany, id)



module.exports = {
    getCompanies,
    foundCompany,
    postCompany,
    deleteCompany

}