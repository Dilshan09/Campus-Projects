"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.deleteResourceById = exports.updateResourceById = exports.getResourceById = exports.getAllResources = exports.createResource = void 0;
const resource_model_1 = __importDefault(require("../models/resource-model"));
const http_status_codes_1 = require("http-status-codes");
const responce_1 = __importDefault(require("../utills/responce"));
const ErrorHandler_1 = __importDefault(require("../utills/error/ErrorHandler"));
const NotFoundError_1 = __importDefault(require("../utills/error/error.classes/NotFoundError"));
const BadRequestError_1 = __importDefault(require("../utills/error/error.classes/BadRequestError"));
const user_service_1 = __importDefault(require("../services/user-service"));
const createResource = async (req, res) => {
    const body = req.body;
    const resource = new resource_model_1.default(body.resource);
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const existingResource = await resource_model_1.default.findOne({
            resourceName: resource.resourceName,
        });
        if (existingResource) {
            throw new BadRequestError_1.default("Resource already exists!");
        }
        const createdResource = await resource.save();
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.CREATED, "Resource created successfully!", createdResource);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.createResource = createResource;
const getAllResources = async (req, res) => {
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const resources = await resource_model_1.default.find({});
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "All resources fetched successfully!", resources);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getAllResources = getAllResources;
const getResourceById = async (req, res) => {
    const resourceId = req.params.resourceId;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const resource = await resource_model_1.default.findById(resourceId);
        if (!resource) {
            throw new NotFoundError_1.default("Resource not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Resource fetched successfully!", resource);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getResourceById = getResourceById;
const updateResourceById = async (req, res) => {
    const resourceId = req.params.resourceId;
    const updatedData = req.body;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const updatedResource = await resource_model_1.default.findByIdAndUpdate(resourceId, updatedData, {
            new: true,
        });
        if (!updatedResource) {
            throw new NotFoundError_1.default("Resource not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Resource updated successfully!", updatedResource);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.updateResourceById = updateResourceById;
const deleteResourceById = async (req, res) => {
    const resourceId = req.params.resourceId;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const deletedResource = await resource_model_1.default.findByIdAndDelete(resourceId);
        if (!deletedResource) {
            throw new NotFoundError_1.default("Resource not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Resource deleted successfully!", null);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.deleteResourceById = deleteResourceById;
