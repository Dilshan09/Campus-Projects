import { Request, Response } from "express";
import Day from "../models/day-model";
import { StatusCodes } from "http-status-codes";
import CustomResponse from "../utills/responce";
import ErrorHandler from "../utills/error/ErrorHandler";
import NotFoundError from "../utills/error/error.classes/NotFoundError";
import BadRequestError from "../utills/error/error.classes/BadRequestError";
import userService from "../services/user-service";

const createDay = async (req: Request, res: Response) => {
  const body: any = req.body;
  const day: any = new Day(body.day);

  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const existingDay = await Day.findOne({
      day: day.day,
    });

    if (existingDay) {
      throw new BadRequestError("Day already exists!");
    }

    const createdDay = await day.save();

    return CustomResponse(
      res,
      true,
      StatusCodes.CREATED,
      "Day created successfully!",
      createdDay
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getAllDays = async (req: Request, res: Response) => {
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }
    const days = await Day.find({});

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "All days fetched successfully!",
      days
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getDayById = async (req: Request, res: Response) => {
  const dayId = req.params.dayId;
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const day = await Day.findById(dayId);

    if (!day) {
      throw new NotFoundError("Day not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Day fetched successfully!",
      day
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const updateDayById = async (req: Request, res: Response) => {
  const dayId = req.params.dayId;
  const updatedData = req.body;

  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const updatedDay = await Day.findByIdAndUpdate(dayId, updatedData, {
      new: true,
    });

    if (!updatedDay) {
      throw new NotFoundError("Day not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Day updated successfully!",
      updatedDay
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const deleteDayById = async (req: Request, res: Response) => {
  const dayId = req.params.dayId;
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const deletedDay = await Day.findByIdAndDelete(dayId);

    if (!deletedDay) {
      throw new NotFoundError("Day not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Day deleted successfully!",
      null
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

export { createDay, getAllDays, getDayById, updateDayById, deleteDayById };
