import { Router } from "express";
import UserMiddleware from "../middlewares/user-middleware";

import {
  createCourse,
  getAllCourses,
  getCourseById,
  updateCourseById,
  deleteCourseById,
} from "../controllers/course-controller";
import constants from "../utills/constants";

const CourseRouter = Router();

CourseRouter.post(
  "/create",
  UserMiddleware.authorize([constants.USER.ROLES.ADMIN]),
  createCourse
);

CourseRouter.get(
  "/getAllCourse",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,

  ]),
  getAllCourses
);

CourseRouter.get(
  "/getOneCourse/:courseId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
    constants.USER.ROLES.STUDENT,
  ]),
  getCourseById
);

CourseRouter.put(
  "/updateCourse/:courseId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  updateCourseById
);

CourseRouter.delete(
  "/deleteCourse/:courseId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
  ]),
  deleteCourseById
);

export default CourseRouter;
