"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.getFreeRoomsByTime = exports.deleteRoomById = exports.updateRoomById = exports.getRoomById = exports.getAllRooms = exports.createRoom = void 0;
const room_model_1 = __importDefault(require("../models/room-model"));
const http_status_codes_1 = require("http-status-codes");
const responce_1 = __importDefault(require("../utills/responce"));
const ErrorHandler_1 = __importDefault(require("../utills/error/ErrorHandler"));
const NotFoundError_1 = __importDefault(require("../utills/error/error.classes/NotFoundError"));
const BadRequestError_1 = __importDefault(require("../utills/error/error.classes/BadRequestError"));
const user_service_1 = __importDefault(require("../services/user-service"));
const room_service_1 = __importDefault(require("../services/room-service"));
const createRoom = async (req, res) => {
    const body = req.body;
    const room = new room_model_1.default(body.room);
    //console.log(room);
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const existingRoom = await room_model_1.default.findOne({
            roomnumber: room.roomnumber,
        });
        if (existingRoom) {
            throw new BadRequestError_1.default("Room already exists!");
        }
        const createdRoom = await room.save();
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.CREATED, "Room created successfully!", createdRoom);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.createRoom = createRoom;
const getAllRooms = async (req, res) => {
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const rooms = await room_model_1.default.find({});
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "All rooms fetched successfully!", rooms);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getAllRooms = getAllRooms;
const getRoomById = async (req, res) => {
    const roomId = req.params.roomId;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const room = await room_model_1.default.findById(roomId);
        if (!room) {
            throw new NotFoundError_1.default("Room not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Room fetched successfully!", room);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.getRoomById = getRoomById;
const updateRoomById = async (req, res) => {
    const roomId = req.params.roomId;
    const updatedData = req.body;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const updatedRoom = await room_model_1.default.findByIdAndUpdate(roomId, updatedData, {
            new: true,
        });
        if (!updatedRoom) {
            throw new NotFoundError_1.default("Room not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Room updated successfully!", updatedRoom);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.updateRoomById = updateRoomById;
const deleteRoomById = async (req, res) => {
    const roomId = req.params.roomId;
    const auth = req.auth;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const deletedRoom = await room_model_1.default.findByIdAndDelete(roomId);
        if (!deletedRoom) {
            throw new NotFoundError_1.default("Room not found!");
        }
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Room deleted successfully!", null);
    }
    catch (error) {
        ErrorHandler_1.default.handle(res, error);
    }
};
exports.deleteRoomById = deleteRoomById;
const getFreeRoomsByTime = async (req, res) => {
    const auth = req.auth;
    const { day, timeSlot } = req.body;
    try {
        const user = await user_service_1.default.findById(auth._id);
        if (!user) {
            throw new NotFoundError_1.default("User not found!");
        }
        const freeRooms = await room_service_1.default.getFreeRoomsByTimes(day, timeSlot);
        return (0, responce_1.default)(res, true, http_status_codes_1.StatusCodes.OK, "Free rooms fetched successfully for the specified day and time slot!", freeRooms);
    }
    catch (error) {
        return ErrorHandler_1.default.handle(res, error);
    }
};
exports.getFreeRoomsByTime = getFreeRoomsByTime;
