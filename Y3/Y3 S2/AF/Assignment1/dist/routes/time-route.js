"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const user_middleware_1 = __importDefault(require("../middlewares/user-middleware"));
const time_controller_1 = require("../controllers/time-controller");
const constants_1 = __importDefault(require("../utills/constants"));
const TimeRouter = (0, express_1.Router)();
TimeRouter.post("/create", user_middleware_1.default.authorize([constants_1.default.USER.ROLES.ADMIN]), time_controller_1.createTime);
TimeRouter.get("/getAllTimes", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), time_controller_1.getAllTimes);
TimeRouter.get("/getOneTime/:timeId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
    constants_1.default.USER.ROLES.STUDENT,
]), time_controller_1.getTimeById);
TimeRouter.put("/updateTime/:timeId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), time_controller_1.updateTimeById);
TimeRouter.delete("/deleteTime/:timeId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
]), time_controller_1.deleteTimeById);
exports.default = TimeRouter;
