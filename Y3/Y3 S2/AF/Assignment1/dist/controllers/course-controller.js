"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteCourseById = exports.updateCourseById = exports.getCourseById = exports.getAllCourses = exports.createCourse = void 0;
const course_model_1 = __importDefault(require("../models/course-model"));
const http_status_codes_1 = require("http-status-codes");
const responce_1 = __importDefault(require("../utills/responce"));
const ErrorHandler_1 = __importDefault(require("../utills/error/ErrorHandler"));
const NotFoundError_1 = __importDefault(require("../utills/error/error.classes/NotFoundError"));
const BadRequestError_1 = __importDefault(require("../utills/error/error.classes/BadRequestError"));
const user_service_1 = __importDefault(require("../services/user-service"));
const createCourse = async (req, res) => {
    const body = req.body;
    const course = new course_model_1.default(body.course);
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const existingCourse = await course_model_1.default.findOne({
            coursecode: course.coursecode,
        });
        if (existingCourse) {
            throw new BadRequestError_1.default("Course already exists!");
        }
        const createdCourse = await course.save();
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.CREATED, "Course created successfully!", createdCourse);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.createCourse = createCourse;
const getAllCourses = async (req, res) => {
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const courses = await course_model_1.default.find({});
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "All courses fetched successfully!", courses);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getAllCourses = getAllCourses;
const getCourseById = async (req, res) => {
    const courseId = req.params.courseId;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const course = await course_model_1.default.findById(courseId);
        if (!course) {
            throw new NotFoundError_1.default("Course not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Course fetched successfully!", course);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getCourseById = getCourseById;
const updateCourseById = async (req, res) => {
    const courseId = req.params.courseId;
    const updatedData = req.body;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const updatedCourse = await course_model_1.default.findByIdAndUpdate(courseId, updatedData, { new: true });
        if (!updatedCourse) {
            throw new NotFoundError_1.default("Course not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Course updated successfully!", updatedCourse);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.updateCourseById = updateCourseById;
const deleteCourseById = async (req, res) => {
    const courseId = req.params.courseId;
    try {
        const deletedCourse = await course_model_1.default.findByIdAndDelete(courseId);
        if (!deletedCourse) {
            throw new NotFoundError_1.default("Course not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Course deleted successfully!", null);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.deleteCourseById = deleteCourseById;
