"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const course_model_1 = __importDefault(require("../models/course-model"));
const save = async (courseData, session) => {
    const course = new course_model_1.default(courseData);
    if (session) {
        return await course.save({ session });
    }
    else {
        return await course.save();
    }
};
const getAllCourses = async () => {
    return await course_model_1.default.find({});
};
const getCourseById = async (id) => {
    return await course_model_1.default.findById(id);
};
const updateCourseById = async (id, updatedData) => {
    return await course_model_1.default.findByIdAndUpdate(id, updatedData /*{ new: true }*/);
};
const deleteCourseById = async (id) => {
    return await course_model_1.default.findByIdAndDelete(id);
};
exports.default = {
    save,
    getAllCourses,
    getCourseById,
    updateCourseById,
    deleteCourseById,
};
