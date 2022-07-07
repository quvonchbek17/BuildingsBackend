const express = require('express')
const router = express.Router()

const companies = require('./companies/company')
const complexes = require('./complexes/complex')
const rooms = require('./rooms/room')
const banks = require('./banks/bank')
const login = require('../controllers/LoginController')

router
    .get('/companies', companies.GET)
    .get('/companies/:id', companies.GETCompany)
    .get('/complexes/', complexes.AllComplex)
    .get('/complexes/:id', complexes.GET)
    .get('/foundcomplexes/:id', complexes.GETComplex)
    .get('/allrooms', rooms.AllRoom)
    .get('/foundroom/:id', rooms.GETRoom)
    .get('/rooms/:id', rooms.GET)
    .get('/banks', banks.GET)
    .get('/bankscredit/:roomId/:year', banks.GETCredit)
    .get('/mortgageduration', banks.GETDURATION)
    .post('/login', login.LOGIN)
    .post('/companypost', companies.POST)
    .post('/complexpost', complexes.PostComplex)
    .post('/bankpost', banks.POST)
    .post('/roompost', rooms.POST)
    .post('/companydelete', companies.DELETE)
    .post('/complexdelete', complexes.DeleteComplex)
    .post('/bankdelete', banks.DELETE)
    .post('/roomdelete', rooms.DELETE )



module.exports = router
