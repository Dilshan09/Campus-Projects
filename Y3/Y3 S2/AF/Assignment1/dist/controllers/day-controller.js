"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteDayById = exports.updateDayById = exports.getDayById = exports.getAllDays = exports.createDay = void 0;
const day_model_1 = __importDefault(require("../models/day-model"));
const http_status_codes_1 = require("http-status-codes");
const responce_1 = __importDefault(require("../utills/responce"));
const ErrorHandler_1 = __importDefault(require("../utills/error/ErrorHandler"));
const NotFoundError_1 = __importDefault(require("../utills/error/error.classes/NotFoundError"));
const BadRequestError_1 = __importDefault(require("../utills/error/error.classes/BadRequestError"));
const user_service_1 = __importDefault(require("../services/user-service"));
const createDay = async (req, res) => {
    const body = req.body;
    const day = new day_model_1.default(body.day);
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const existingDay = await day_model_1.default.findOne({
            day: day.day,
        });
        if (existingDay) {
            throw new BadRequestError_1.default("Day already exists!");
        }
        const createdDay = await day.save();
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.CREATED, "Day created successfully!", createdDay);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.createDay = createDay;
const getAllDays = async (req, res) => {
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const days = await day_model_1.default.find({});
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "All days fetched successfully!", days);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getAllDays = getAllDays;
const getDayById = async (req, res) => {
    const dayId = req.params.dayId;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const day = await day_model_1.default.findById(dayId);
        if (!day) {
            throw new NotFoundError_1.default("Day not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Day fetched successfully!", day);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getDayById = getDayById;
const updateDayById = async (req, res) => {
    const dayId = req.params.dayId;
    const updatedData = req.body;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const updatedDay = await day_model_1.default.findByIdAndUpdate(dayId, updatedData, {
            new: true,
        });
        if (!updatedDay) {
            throw new NotFoundError_1.default("Day not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Day updated successfully!", updatedDay);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.updateDayById = updateDayById;
const deleteDayById = async (req, res) => {
    const dayId = req.params.dayId;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const deletedDay = await day_model_1.default.findByIdAndDelete(dayId);
        if (!deletedDay) {
            throw new NotFoundError_1.default("Day not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Day deleted successfully!", null);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.deleteDayById = deleteDayById;
