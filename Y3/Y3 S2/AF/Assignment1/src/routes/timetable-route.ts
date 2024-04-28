import { Router } from "express";
import UserMiddleware from "../middlewares/user-middleware";

import {
  createTimetable,
  getAllTimetables,
  getTimetableById,
  updateTimetableById,
  deleteTimetableById,
} from "../controllers/timetable-controller";
import constants from "../utills/constants";

const TimetableRouter = Router();

TimetableRouter.post(
  "/create",
  UserMiddleware.authorize([constants.USER.ROLES.ADMIN]),
  createTimetable
);

TimetableRouter.get(
  "/getAllTimetable",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  getAllTimetables
);

TimetableRouter.get(
  "/getOneTimetable/:timetableId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
    constants.USER.ROLES.STUDENT,
  ]),
  getTimetableById
);

TimetableRouter.put(
  "/updateTimetable/:timetableId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  updateTimetableById
);

TimetableRouter.delete(
  "/deleteTimetable/:timetableId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
  ]),
  deleteTimetableById
);

export default TimetableRouter;
