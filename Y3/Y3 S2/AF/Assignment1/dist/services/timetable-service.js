"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const timetable_model_1 = __importDefault(require("../models/timetable-model"));
const save = async (timetableData, session) => {
    const timetable = new timetable_model_1.default(timetableData);
    if (session) {
        return await timetable.save({ session });
    }
    else {
        return await timetable.save();
    }
};
const getAllTimetables = async () => {
    return await timetable_model_1.default.find({}).populate("course"); // Populate the 'course' field
};
const getTimetableById = async (id) => {
    return await timetable_model_1.default.findById(id);
};
const updateTimetableById = async (id, updatedData) => {
    return await timetable_model_1.default.findByIdAndUpdate(id, updatedData);
};
const deleteTimetableById = async (id) => {
    return await timetable_model_1.default.findByIdAndDelete(id);
};
exports.default = {
    save,
    getAllTimetables,
    getTimetableById,
    updateTimetableById,
    deleteTimetableById,
};
