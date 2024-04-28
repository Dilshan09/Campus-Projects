"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const day_model_1 = __importDefault(require("../models/day-model"));
const save = async (dayData) => {
    const day = new day_model_1.default(dayData);
    return await day.save();
};
const getAllDays = async () => {
    return await day_model_1.default.find({});
};
const getDayById = async (id) => {
    return await day_model_1.default.findById(id);
};
const updateDayById = async (id, updatedData) => {
    return await day_model_1.default.findByIdAndUpdate(id, updatedData, { new: true });
};
const deleteDayById = async (id) => {
    return await day_model_1.default.findByIdAndDelete(id);
};
exports.default = {
    save,
    getAllDays,
    getDayById,
    updateDayById,
    deleteDayById,
};
