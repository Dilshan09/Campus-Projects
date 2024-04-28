import { Request, Response } from "express";
import Room from "../models/room-model";
import { StatusCodes } from "http-status-codes";
import CustomResponse from "../utills/responce";
import ErrorHandler from "../utills/error/ErrorHandler";
import NotFoundError from "../utills/error/error.classes/NotFoundError";
import BadRequestError from "../utills/error/error.classes/BadRequestError";
import userService from "../services/user-service";
import roomService from "../services/room-service";

const createRoom = async (req: Request, res: Response) => {
  const body: any = req.body;
  const room: any = new Room(body.room);

  //console.log(room);

  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const existingRoom = await Room.findOne({
      roomnumber: room.roomnumber,
    });

    if (existingRoom) {
      throw new BadRequestError("Room already exists!");
    }

    const createdRoom = await room.save();

    return CustomResponse(
      res,
      true,
      StatusCodes.CREATED,
      "Room created successfully!",
      createdRoom
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getAllRooms = async (req: Request, res: Response) => {
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }
    const rooms = await Room.find({});

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "All rooms fetched successfully!",
      rooms
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getRoomById = async (req: Request, res: Response) => {
  const roomId = req.params.roomId;
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const room = await Room.findById(roomId);

    if (!room) {
      throw new NotFoundError("Room not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Room fetched successfully!",
      room
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const updateRoomById = async (req: Request, res: Response) => {
  const roomId = req.params.roomId;
  const updatedData = req.body;

  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const updatedRoom = await Room.findByIdAndUpdate(roomId, updatedData, {
      new: true,
    });

    if (!updatedRoom) {
      throw new NotFoundError("Room not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Room updated successfully!",
      updatedRoom
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const deleteRoomById = async (req: Request, res: Response) => {
  const roomId = req.params.roomId;
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const deletedRoom = await Room.findByIdAndDelete(roomId);

    if (!deletedRoom) {
      throw new NotFoundError("Room not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Room deleted successfully!",
      null
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getFreeRoomsByTime = async (req: Request, res: Response) => {
  const auth = req.auth;
  const { day, timeSlot } = req.body;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const freeRooms = await roomService.getFreeRoomsByTimes(day, timeSlot);

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Free rooms fetched successfully for the specified day and time slot!",
      freeRooms
    );
  } catch (error) {
    return ErrorHandler.handle(res, error);
  }
};

export {
  createRoom,
  getAllRooms,
  getRoomById,
  updateRoomById,
  deleteRoomById,
  getFreeRoomsByTime,
};
