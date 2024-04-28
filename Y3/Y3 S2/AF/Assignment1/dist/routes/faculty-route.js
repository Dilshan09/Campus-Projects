"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const user_middleware_1 = __importDefault(require("../middlewares/user-middleware"));
const faculty_controller_1 = require("../controllers/faculty-controller");
const constants_1 = __importDefault(require("../utills/constants"));
const FacultyRouter = (0, express_1.Router)();
FacultyRouter.post("/create", user_middleware_1.default.authorize([constants_1.default.USER.ROLES.ADMIN]), faculty_controller_1.createFaculty);
FacultyRouter.get("/getAllFacultys", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), faculty_controller_1.getAllFacultys);
FacultyRouter.get("/getOneFaculty/:facultyId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
    constants_1.default.USER.ROLES.STUDENT,
]), faculty_controller_1.getFacultyById);
FacultyRouter.put("/updateFaculty/:facultyId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), faculty_controller_1.updateFacultyById);
FacultyRouter.delete("/deleteFaculty/:facultyId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
]), faculty_controller_1.deleteFacultyById);
exports.default = FacultyRouter;
