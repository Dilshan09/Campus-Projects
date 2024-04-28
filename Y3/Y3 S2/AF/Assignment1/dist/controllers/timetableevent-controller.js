"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteTimetableEventById = exports.updateTimetableEventById = exports.getTimetableEventById = exports.getAllTimetableEvents = exports.createTimetableEvent = void 0;
const timetableevent_model_1 = __importDefault(require("../models/timetableevent-model"));
const http_status_codes_1 = require("http-status-codes");
const responce_1 = __importDefault(require("../utills/responce"));
const ErrorHandler_1 = __importDefault(require("../utills/error/ErrorHandler"));
const NotFoundError_1 = __importDefault(require("../utills/error/error.classes/NotFoundError"));
const BadRequestError_1 = __importDefault(require("../utills/error/error.classes/BadRequestError"));
const createTimetableEvent = async (req, res) => {
    const body = req.body;
    const timetableEvent = new timetableevent_model_1.default(body.timetableEvent);
    try {
        const existingTimetableEvent = await timetableevent_model_1.default.findOne({
            timetable: timetableEvent.timetable,
            day: timetableEvent.day,
            time: timetableEvent.time,
            locationid: timetableEvent.location,
        });
        //console.log(existingTimetableEvent);
        if (existingTimetableEvent) {
            throw new BadRequestError_1.default("Timetable Event already exists!");
        }
        const createdTimetableEvent = await timetableEvent.save();
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.CREATED, "Timetable Event created successfully!", createdTimetableEvent);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.createTimetableEvent = createTimetableEvent;
const getAllTimetableEvents = async (req, res) => {
    try {
        const timetableEvents = await timetableevent_model_1.default.find({});
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "All Timetable Events fetched successfully!", timetableEvents);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getAllTimetableEvents = getAllTimetableEvents;
const getTimetableEventById = async (req, res) => {
    const timetableEventId = req.params.timetableEventId;
    try {
        const timetableEvent = await timetableevent_model_1.default.findById(timetableEventId);
        if (!timetableEvent) {
            throw new NotFoundError_1.default("Timetable Event not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Timetable Event fetched successfully!", timetableEvent);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getTimetableEventById = getTimetableEventById;
const updateTimetableEventById = async (req, res) => {
    const timetableEventId = req.params.timetableEventId;
    const updatedData = req.body;
    try {
        const updatedTimetableEvent = await timetableevent_model_1.default.findByIdAndUpdate(timetableEventId, updatedData, {
            new: true,
        });
        if (!updatedTimetableEvent) {
            throw new NotFoundError_1.default("Timetable Event not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Timetable Event updated successfully!", updatedTimetableEvent);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.updateTimetableEventById = updateTimetableEventById;
const deleteTimetableEventById = async (req, res) => {
    const timetableEventId = req.params.timetableEventId;
    try {
        const deletedTimetableEvent = await timetableevent_model_1.default.findByIdAndDelete(timetableEventId);
        if (!deletedTimetableEvent) {
            throw new NotFoundError_1.default("Timetable Event not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Timetable Event deleted successfully!", null);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.deleteTimetableEventById = deleteTimetableEventById;
