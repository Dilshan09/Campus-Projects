const expect = require('chai').expect;
const request = require('supertest');
const mongoose = require('mongoose');
const app = require('../../../server.js');

describe('POST /add', () => {
    before((done) => {
        // Connect to the database only once before the test suite
        mongoose.connect('mongodb://localhost:27017/delivery_db', {
            useNewUrlParser: true,
            useUnifiedTopology: true,
        })
        .then(() => done())
        .catch((err) => done(err));
    });

    after((done) => {
        // Close the database connection after the test suite
        mongoose.connection.close()
        .then(() => done())
        .catch((err) => done(err));
    });

    it('OK, creating a new note works', (done) => {
        request(app)
            .post('/rm/add')
            .send({
                bookingid: '0011',
                name: 'Praneeth',
                phone: 1112256478,
                address1: 'Minuwangoda',
                email: 'p@gmail.com',
                checkin: '2021-03-21',
                msg: 'okay baby'
            })
            .then((res) => {
                const body = res.body;
                expect(body).to.have.property('_id');
                expect(body).to.have.property('bookingid');
                expect(body).to.have.property('name');
                expect(body).to.have.property('phone');
                expect(body).to.have.property('address1');
                expect(body).to.have.property('email');
                expect(body).to.have.property('checkin');
                expect(body).to.have.property('msg');
                done(); // Call done to indicate the completion of the test
            })
            .catch((err) => done(err)); // Handle errors
    });
});
