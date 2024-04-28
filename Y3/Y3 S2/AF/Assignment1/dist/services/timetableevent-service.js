"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const timetableevent_model_1 = __importDefault(require("../models/timetableevent-model"));
const save = async (timetableEventData) => {
    const timetableEvent = new timetableevent_model_1.default(timetableEventData);
    return await timetableEvent.save();
};
const getAllTimetableEvents = async () => {
    return await timetableevent_model_1.default.find({});
};
const getTimetableEventById = async (id) => {
    return await timetableevent_model_1.default.findById(id);
};
const updateTimetableEventById = async (id, updatedData) => {
    return await timetableevent_model_1.default.findByIdAndUpdate(id, updatedData, { new: true });
};
const deleteTimetableEventById = async (id) => {
    return await timetableevent_model_1.default.findByIdAndDelete(id);
};
exports.default = {
    save,
    getAllTimetableEvents,
    getTimetableEventById,
    updateTimetableEventById,
    deleteTimetableEventById,
};
