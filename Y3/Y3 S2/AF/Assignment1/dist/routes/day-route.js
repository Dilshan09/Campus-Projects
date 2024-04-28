"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const user_middleware_1 = __importDefault(require("../middlewares/user-middleware"));
const day_controller_1 = require("../controllers/day-controller");
const constants_1 = __importDefault(require("../utills/constants"));
const DayRouter = (0, express_1.Router)();
DayRouter.post("/create", user_middleware_1.default.authorize([constants_1.default.USER.ROLES.ADMIN]), day_controller_1.createDay);
DayRouter.get("/getAllDays", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), day_controller_1.getAllDays);
DayRouter.get("/getOneDay/:dayId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
    constants_1.default.USER.ROLES.STUDENT,
]), day_controller_1.getDayById);
DayRouter.put("/updateDay/:dayId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), day_controller_1.updateDayById);
DayRouter.delete("/deleteDay/:dayId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
]), day_controller_1.deleteDayById);
exports.default = DayRouter;
