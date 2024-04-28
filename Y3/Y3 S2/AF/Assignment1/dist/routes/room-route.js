"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const user_middleware_1 = __importDefault(require("../middlewares/user-middleware"));
const room_controller_1 = require("../controllers/room-controller");
const constants_1 = __importDefault(require("../utills/constants"));
const RoomRouter = (0, express_1.Router)();
RoomRouter.post("/create", user_middleware_1.default.authorize([constants_1.default.USER.ROLES.ADMIN]), room_controller_1.createRoom);
RoomRouter.get("/getAllRooms", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), room_controller_1.getAllRooms);
RoomRouter.get("/getOneRoom/:roomId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
    constants_1.default.USER.ROLES.STUDENT,
]), room_controller_1.getRoomById);
RoomRouter.put("/updateRoom/:roomId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), room_controller_1.updateRoomById);
RoomRouter.delete("/deleteRoom/:roomId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
]), room_controller_1.deleteRoomById);
RoomRouter.post("/getFreeRooms", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
    constants_1.default.USER.ROLES.STUDENT,
]), room_controller_1.getFreeRoomsByTime);
exports.default = RoomRouter;
