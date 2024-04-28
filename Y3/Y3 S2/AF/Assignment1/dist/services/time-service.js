"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const time_model_1 = __importDefault(require("../models/time-model"));
const save = async (timeData, session) => {
    const time = new time_model_1.default(timeData);
    if (session) {
        return await time.save({ session });
    }
    else {
        return await time.save();
    }
};
const getAllTimes = async () => {
    return await time_model_1.default.find({});
};
const getTimeById = async (id) => {
    return await time_model_1.default.findById(id);
};
const updateTimeById = async (id, updatedData) => {
    return await time_model_1.default.findByIdAndUpdate(id, updatedData /*{ new: true }*/);
};
const deleteTimeById = async (id) => {
    return await time_model_1.default.findByIdAndDelete(id);
};
exports.default = {
    save,
    getAllTimes,
    getTimeById,
    updateTimeById,
    deleteTimeById,
};
