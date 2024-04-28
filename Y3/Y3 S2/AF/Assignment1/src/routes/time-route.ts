import { Router } from "express";
import UserMiddleware from "../middlewares/user-middleware";

import {
  createTime,
  getAllTimes,
  getTimeById,
  updateTimeById,
  deleteTimeById,
} from "../controllers/time-controller";
import constants from "../utills/constants";

const TimeRouter = Router();

TimeRouter.post(
  "/create",
  UserMiddleware.authorize([constants.USER.ROLES.ADMIN]),
  createTime
);

TimeRouter.get(
  "/getAllTimes",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  getAllTimes
);

TimeRouter.get(
  "/getOneTime/:timeId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
    constants.USER.ROLES.STUDENT,
  ]),
  getTimeById
);

TimeRouter.put(
  "/updateTime/:timeId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  updateTimeById
);

TimeRouter.delete(
  "/deleteTime/:timeId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
  ]),
  deleteTimeById
);

export default TimeRouter;
