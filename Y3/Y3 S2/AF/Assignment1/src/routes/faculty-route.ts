import { Router } from "express";
import UserMiddleware from "../middlewares/user-middleware";

import {
  createFaculty,
  getAllFacultys,
  getFacultyById,
  updateFacultyById,
  deleteFacultyById,
} from "../controllers/faculty-controller";
import constants from "../utills/constants";

const FacultyRouter = Router();

FacultyRouter.post(
  "/create",
  UserMiddleware.authorize([constants.USER.ROLES.ADMIN]),
  createFaculty
);

FacultyRouter.get(
  "/getAllFacultys",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  getAllFacultys
);

FacultyRouter.get(
  "/getOneFaculty/:facultyId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
    constants.USER.ROLES.STUDENT,
  ]),
  getFacultyById
);

FacultyRouter.put(
  "/updateFaculty/:facultyId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  updateFacultyById
);

FacultyRouter.delete(
  "/deleteFaculty/:facultyId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
  ]),
  deleteFacultyById
);

export default FacultyRouter;
