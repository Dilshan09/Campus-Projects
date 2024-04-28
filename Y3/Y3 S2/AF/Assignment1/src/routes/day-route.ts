import { Router } from "express";
import UserMiddleware from "../middlewares/user-middleware";

import {
  createDay,
  getAllDays,
  getDayById,
  updateDayById,
  deleteDayById,
} from "../controllers/day-controller";
import constants from "../utills/constants";

const DayRouter = Router();

DayRouter.post(
  "/create",
  UserMiddleware.authorize([constants.USER.ROLES.ADMIN]),
  createDay
);

DayRouter.get(
  "/getAllDays",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  getAllDays
);

DayRouter.get(
  "/getOneDay/:dayId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
    constants.USER.ROLES.STUDENT,
  ]),
  getDayById
);

DayRouter.put(
  "/updateDay/:dayId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  updateDayById
);

DayRouter.delete(
  "/deleteDay/:dayId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
  ]),
  deleteDayById
);

export default DayRouter;
