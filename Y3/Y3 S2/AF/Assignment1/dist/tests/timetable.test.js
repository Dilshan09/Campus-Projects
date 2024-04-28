"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const chai_1 = __importDefault(require("chai"));
const chai_http_1 = __importDefault(require("chai-http"));
const mongoose_1 = __importDefault(require("mongoose"));
const timetable_model_1 = __importDefault(require("../models/timetable-model")); // Path to your Mongoose model
const dotenv_1 = __importDefault(require("dotenv")); // Import dotenv package to load environment variables
// Load environment variables from .env file
dotenv_1.default.config();
const expect = chai_1.default.expect;
chai_1.default.use(chai_http_1.default);
describe('Timetable Model Tests', () => {
    before(async () => {
        try {
            // Connect to MongoDB using the connection URI from environment variables
            await mongoose_1.default.connect(process.env.MONGODB_URI, {
                useNewUrlParser: true,
                useUnifiedTopology: true,
            });
        }
        catch (error) {
            console.error('Error while connecting to MongoDB:');
        }
    });
    after(async () => {
        // Disconnect from MongoDB after all tests are finished
        await mongoose_1.default.disconnect();
    });
    beforeEach(async () => {
        // Clear the Timetable collection before each test
        await timetable_model_1.default.deleteMany({});
    });
    it('should create a new timetable', async () => {
        // Create a new timetable
        const timetable = new timetable_model_1.default({
            courseid: "65fbf5a0144e129f512ed8ea", // Replace with actual course ID
            year: 2024,
            month: 9,
            week: 2
        });
        // Save the timetable
        await timetable.save();
        const savedTimetable = await timetable_model_1.default.findOne({});
        // Assertion
        expect(savedTimetable).to.exist;
        if (savedTimetable) {
            expect(savedTimetable.courseid).to.equal("65fbf5a0144e129f512ed8ea"); // You need to adjust this assertion based on your actual course ID
            expect(savedTimetable.year).to.equal(2024);
            expect(savedTimetable.month).to.equal(9);
            expect(savedTimetable.week).to.equal(2);
        }
        else {
            throw new Error('Saved timetable is null');
        }
    });
    // Add more test cases as needed
});
