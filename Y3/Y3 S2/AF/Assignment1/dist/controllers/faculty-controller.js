"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteFacultyById = exports.updateFacultyById = exports.getFacultyById = exports.getAllFacultys = exports.createFaculty = void 0;
const faculty_model_1 = __importDefault(require("../models/faculty-model"));
const http_status_codes_1 = require("http-status-codes");
const responce_1 = __importDefault(require("../utills/responce"));
const ErrorHandler_1 = __importDefault(require("../utills/error/ErrorHandler"));
const NotFoundError_1 = __importDefault(require("../utills/error/error.classes/NotFoundError"));
const BadRequestError_1 = __importDefault(require("../utills/error/error.classes/BadRequestError"));
const user_service_1 = __importDefault(require("../services/user-service"));
const createFaculty = async (req, res) => {
    const body = req.body;
    const faculty = new faculty_model_1.default(body.faculty);
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const existingFaculty = await faculty_model_1.default.findOne({
            faculty: faculty.faculty,
        });
        if (existingFaculty) {
            throw new BadRequestError_1.default("Faculty already exists!");
        }
        const createdFaculty = await faculty.save();
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.CREATED, "Faculty created successfully!", createdFaculty);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.createFaculty = createFaculty;
const getAllFacultys = async (req, res) => {
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const facultys = await faculty_model_1.default.find({});
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "All facultys fetched successfully!", facultys);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getAllFacultys = getAllFacultys;
const getFacultyById = async (req, res) => {
    const facultyId = req.params.facultyId;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const faculty = await faculty_model_1.default.findById(facultyId);
        if (!faculty) {
            throw new NotFoundError_1.default("Faculty not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Faculty fetched successfully!", faculty);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getFacultyById = getFacultyById;
const updateFacultyById = async (req, res) => {
    const facultyId = req.params.facultyId;
    const updatedData = req.body;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const updatedFaculty = await faculty_model_1.default.findByIdAndUpdate(facultyId, updatedData, {
            new: true,
        });
        if (!updatedFaculty) {
            throw new NotFoundError_1.default("Faculty not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Faculty updated successfully!", updatedFaculty);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.updateFacultyById = updateFacultyById;
const deleteFacultyById = async (req, res) => {
    const facultyId = req.params.facultyId;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const deletedFaculty = await faculty_model_1.default.findByIdAndDelete(facultyId);
        if (!deletedFaculty) {
            throw new NotFoundError_1.default("Faculty not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Faculty deleted successfully!", null);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.deleteFacultyById = deleteFacultyById;
