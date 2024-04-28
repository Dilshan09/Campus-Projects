import { Router } from "express";
import UserMiddleware from "../middlewares/user-middleware";

import {
  createRoom,
  getAllRooms,
  getRoomById,
  updateRoomById,
  deleteRoomById,
  getFreeRoomsByTime,
} from "../controllers/room-controller";
import constants from "../utills/constants";

const RoomRouter = Router();

RoomRouter.post(
  "/create",
  UserMiddleware.authorize([constants.USER.ROLES.ADMIN]),
  createRoom
);

RoomRouter.get(
  "/getAllRooms",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  getAllRooms
);

RoomRouter.get(
  "/getOneRoom/:roomId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
    constants.USER.ROLES.STUDENT,
  ]),
  getRoomById
);

RoomRouter.put(
  "/updateRoom/:roomId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  updateRoomById
);

RoomRouter.delete(
  "/deleteRoom/:roomId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
  ]),
  deleteRoomById
);

RoomRouter.post(
  "/getFreeRooms",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
    constants.USER.ROLES.STUDENT,
  ]),
  getFreeRoomsByTime
);

export default RoomRouter;
