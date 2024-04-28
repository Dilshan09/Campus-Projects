"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const user_middleware_1 = __importDefault(require("../middlewares/user-middleware"));
const timetableevent_controller_1 = require("../controllers/timetableevent-controller");
const constants_1 = __importDefault(require("../utills/constants"));
const TimetableEventRouter = (0, express_1.Router)();
TimetableEventRouter.post("/create", user_middleware_1.default.authorize([constants_1.default.USER.ROLES.ADMIN]), timetableevent_controller_1.createTimetableEvent);
TimetableEventRouter.get("/getAllTimetableEvents", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), timetableevent_controller_1.getAllTimetableEvents);
TimetableEventRouter.get("/getOneTimetableEvent/:timetableEventId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
    constants_1.default.USER.ROLES.STUDENT,
]), timetableevent_controller_1.getTimetableEventById);
TimetableEventRouter.put("/updateTimetableEvent/:timetableEventId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), timetableevent_controller_1.updateTimetableEventById);
TimetableEventRouter.delete("/deleteTimetableEvent/:timetableEventId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
]), timetableevent_controller_1.deleteTimetableEventById);
exports.default = TimetableEventRouter;
