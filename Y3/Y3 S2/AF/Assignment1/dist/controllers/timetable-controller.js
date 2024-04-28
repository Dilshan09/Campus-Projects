"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteTimetableById = exports.updateTimetableById = exports.getTimetableById = exports.getAllTimetables = exports.createTimetable = void 0;
const timetable_model_1 = __importDefault(require("../models/timetable-model"));
const http_status_codes_1 = require("http-status-codes");
const responce_1 = __importDefault(require("../utills/responce"));
const ErrorHandler_1 = __importDefault(require("../utills/error/ErrorHandler"));
const NotFoundError_1 = __importDefault(require("../utills/error/error.classes/NotFoundError"));
const createTimetable = async (req, res) => {
    const body = req.body;
    const timetable = new timetable_model_1.default(body.timetable);
    try {
        const createdTimetable = await timetable.save();
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.CREATED, "Timetable created successfully!", createdTimetable);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.createTimetable = createTimetable;
const getAllTimetables = async (req, res) => {
    try {
        const timetables = await timetable_model_1.default.find({});
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "All timetables fetched successfully!", timetables);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getAllTimetables = getAllTimetables;
const getTimetableById = async (req, res) => {
    const timetableId = req.params.timetableId;
    try {
        const timetable = await timetable_model_1.default.findById(timetableId);
        if (!timetable) {
            throw new NotFoundError_1.default("Timetable not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Timetable fetched successfully!", timetable);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getTimetableById = getTimetableById;
const updateTimetableById = async (req, res) => {
    const timetableId = req.params.timetableId;
    const updatedData = req.body;
    try {
        const updatedTimetable = await timetable_model_1.default.findByIdAndUpdate(timetableId, updatedData, { new: true });
        if (!updatedTimetable) {
            throw new NotFoundError_1.default("Timetable not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Timetable updated successfully!", updatedTimetable);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.updateTimetableById = updateTimetableById;
const deleteTimetableById = async (req, res) => {
    const timetableId = req.params.timetableId;
    try {
        const deletedTimetable = await timetable_model_1.default.findByIdAndDelete(timetableId);
        if (!deletedTimetable) {
            throw new NotFoundError_1.default("Timetable not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Timetable deleted successfully!", null);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.deleteTimetableById = deleteTimetableById;
