"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteTimeById = exports.updateTimeById = exports.getTimeById = exports.getAllTimes = exports.createTime = void 0;
const time_model_1 = __importDefault(require("../models/time-model"));
const http_status_codes_1 = require("http-status-codes");
const responce_1 = __importDefault(require("../utills/responce"));
const ErrorHandler_1 = __importDefault(require("../utills/error/ErrorHandler"));
const NotFoundError_1 = __importDefault(require("../utills/error/error.classes/NotFoundError"));
const BadRequestError_1 = __importDefault(require("../utills/error/error.classes/BadRequestError"));
const createTime = async (req, res) => {
    const body = req.body;
    const time = new time_model_1.default(body.time);
    try {
        const existingTime = await time_model_1.default.findOne({
            timeslot: time.timeslot,
        });
        if (existingTime) {
            throw new BadRequestError_1.default("Time already exists!");
        }
        const createdTime = await time.save();
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.CREATED, "Time created successfully!", createdTime);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.createTime = createTime;
const getAllTimes = async (req, res) => {
    try {
        const times = await time_model_1.default.find({});
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "All times fetched successfully!", times);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getAllTimes = getAllTimes;
const getTimeById = async (req, res) => {
    const timeId = req.params.timeId;
    try {
        const time = await time_model_1.default.findById(timeId);
        if (!time) {
            throw new NotFoundError_1.default("Time not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Time fetched successfully!", time);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getTimeById = getTimeById;
const updateTimeById = async (req, res) => {
    const timeId = req.params.timeId;
    const updatedData = req.body;
    try {
        const updatedTime = await time_model_1.default.findByIdAndUpdate(timeId, updatedData, {
            new: true,
        });
        if (!updatedTime) {
            throw new NotFoundError_1.default("Time not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Time updated successfully!", updatedTime);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.updateTimeById = updateTimeById;
const deleteTimeById = async (req, res) => {
    const timeId = req.params.timeId;
    try {
        const deletedTime = await time_model_1.default.findByIdAndDelete(timeId);
        if (!deletedTime) {
            throw new NotFoundError_1.default("Time not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Time deleted successfully!", null);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.deleteTimeById = deleteTimeById;
