"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const room_model_1 = __importDefault(require("../models/room-model"));
const timetableevent_model_1 = __importDefault(require("../models/timetableevent-model"));
const save = async (roomData, session) => {
    const room = new room_model_1.default(roomData);
    if (session) {
        return await room.save({ session });
    }
    else {
        return await room.save();
    }
};
const getFreeRoomsByTimes = async (day, timeSlot) => {
    try {
        const allocatedRooms = await timetableevent_model_1.default
            .find({
            dayid: day,
            timeid: timeSlot,
        })
            .select("location");
        const allocatedRoomIds = allocatedRooms.map((event) => event.locationid);
        const freeRooms = await room_model_1.default.find({
            _id: { $nin: allocatedRoomIds },
        });
        return freeRooms;
    }
    catch (error) {
        throw new Error("Error fetching free rooms: " + error.message);
    }
};
const getAllRooms = async () => {
    return await room_model_1.default.find({});
};
const getRoomById = async (id) => {
    return await room_model_1.default.findById(id);
};
const updateRoomById = async (id, updatedData) => {
    return await room_model_1.default.findByIdAndUpdate(id, updatedData, { new: true });
};
const deleteRoomById = async (id) => {
    return await room_model_1.default.findByIdAndDelete(id);
};
exports.default = {
    save,
    getAllRooms,
    getRoomById,
    updateRoomById,
    deleteRoomById,
    getFreeRoomsByTimes,
};
