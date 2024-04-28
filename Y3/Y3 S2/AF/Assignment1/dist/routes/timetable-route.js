"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const user_middleware_1 = __importDefault(require("../middlewares/user-middleware"));
const timetable_controller_1 = require("../controllers/timetable-controller");
const constants_1 = __importDefault(require("../utills/constants"));
const TimetableRouter = (0, express_1.Router)();
TimetableRouter.post("/create", user_middleware_1.default.authorize([constants_1.default.USER.ROLES.ADMIN]), timetable_controller_1.createTimetable);
TimetableRouter.get("/getAllTimetable", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), timetable_controller_1.getAllTimetables);
TimetableRouter.get("/getOneTimetable/:timetableId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
    constants_1.default.USER.ROLES.STUDENT,
]), timetable_controller_1.getTimetableById);
TimetableRouter.put("/updateTimetable/:timetableId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), timetable_controller_1.updateTimetableById);
TimetableRouter.delete("/deleteTimetable/:timetableId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
]), timetable_controller_1.deleteTimetableById);
exports.default = TimetableRouter;
