"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const user_middleware_1 = __importDefault(require("../middlewares/user-middleware"));
const course_controller_1 = require("../controllers/course-controller");
const constants_1 = __importDefault(require("../utills/constants"));
const CourseRouter = (0, express_1.Router)();
CourseRouter.post("/create", user_middleware_1.default.authorize([constants_1.default.USER.ROLES.ADMIN]), course_controller_1.createCourse);
CourseRouter.get("/getAllCourse", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), course_controller_1.getAllCourses);
CourseRouter.get("/getOneCourse/:courseId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
    constants_1.default.USER.ROLES.STUDENT,
]), course_controller_1.getCourseById);
CourseRouter.put("/updateCourse/:courseId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), course_controller_1.updateCourseById);
CourseRouter.delete("/deleteCourse/:courseId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
]), course_controller_1.deleteCourseById);
exports.default = CourseRouter;
