import { Router } from "express";
import UserMiddleware from "../middlewares/user-middleware";

import {
  createTimetableEvent,
  getAllTimetableEvents,
  getTimetableEventById,
  updateTimetableEventById,
  deleteTimetableEventById,
} from "../controllers/timetableevent-controller";
import constants from "../utills/constants";

const TimetableEventRouter = Router();

TimetableEventRouter.post(
  "/create",
  UserMiddleware.authorize([constants.USER.ROLES.ADMIN]),
  createTimetableEvent
);

TimetableEventRouter.get(
  "/getAllTimetableEvents",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  getAllTimetableEvents
);

TimetableEventRouter.get(
  "/getOneTimetableEvent/:timetableEventId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
    constants.USER.ROLES.STUDENT,
  ]),
  getTimetableEventById
);

TimetableEventRouter.put(
  "/updateTimetableEvent/:timetableEventId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  updateTimetableEventById
);

TimetableEventRouter.delete(
  "/deleteTimetableEvent/:timetableEventId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
  ]),
  deleteTimetableEventById
);

export default TimetableEventRouter;
