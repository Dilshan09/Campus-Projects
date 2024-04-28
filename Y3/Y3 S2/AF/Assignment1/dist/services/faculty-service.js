"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const faculty_model_1 = __importDefault(require("../models/faculty-model"));
const save = async (facultyData) => {
    const faculty = new faculty_model_1.default(facultyData);
    return await faculty.save();
};
const getAllFacultys = async () => {
    return await faculty_model_1.default.find({});
};
const getFacultyById = async (id) => {
    return await faculty_model_1.default.findById(id);
};
const updateFacultyById = async (id, updatedData) => {
    return await faculty_model_1.default.findByIdAndUpdate(id, updatedData, { new: true });
};
const deleteFacultyById = async (id) => {
    return await faculty_model_1.default.findByIdAndDelete(id);
};
exports.default = {
    save,
    getAllFacultys,
    getFacultyById,
    updateFacultyById,
    deleteFacultyById,
};
