"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const resource_model_1 = __importDefault(require("../models/resource-model"));
const save = async (resourceData) => {
    const resource = new resource_model_1.default(resourceData);
    return await resource.save();
};
const getAllResources = async () => {
    return await resource_model_1.default.find({});
};
const getResourceById = async (id) => {
    return await resource_model_1.default.findById(id);
};
const updateResourceById = async (id, updatedData) => {
    return await resource_model_1.default.findByIdAndUpdate(id, updatedData, { new: true });
};
const deleteResourceById = async (id) => {
    return await resource_model_1.default.findByIdAndDelete(id);
};
exports.default = {
    save,
    getAllResources,
    getResourceById,
    updateResourceById,
    deleteResourceById,
};
