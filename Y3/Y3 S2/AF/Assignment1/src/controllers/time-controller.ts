import { Request, Response } from "express";
import Time from "../models/time-model";
import { StatusCodes } from "http-status-codes";
import CustomResponse from "../utills/responce";
import ErrorHandler from "../utills/error/ErrorHandler";
import NotFoundError from "../utills/error/error.classes/NotFoundError";
import BadRequestError from "../utills/error/error.classes/BadRequestError";

const createTime = async (req: Request, res: Response) => {
  const body: any = req.body;
  const time: any = new Time(body.time);

  try {
    const existingTime = await Time.findOne({
      timeslot: time.timeslot,
    });

    if (existingTime) {
      throw new BadRequestError("Time already exists!");
    }

    const createdTime = await time.save();

    return CustomResponse(
      res,
      true,
      StatusCodes.CREATED,
      "Time created successfully!",
      createdTime
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getAllTimes = async (req: Request, res: Response) => {
  try {
    const times = await Time.find({});

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "All times fetched successfully!",
      times
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getTimeById = async (req: Request, res: Response) => {
  const timeId = req.params.timeId;

  try {
    const time = await Time.findById(timeId);

    if (!time) {
      throw new NotFoundError("Time not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Time fetched successfully!",
      time
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const updateTimeById = async (req: Request, res: Response) => {
  const timeId = req.params.timeId;
  const updatedData = req.body;

  try {
    const updatedTime = await Time.findByIdAndUpdate(timeId, updatedData, {
      new: true,
    });

    if (!updatedTime) {
      throw new NotFoundError("Time not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Time updated successfully!",
      updatedTime
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const deleteTimeById = async (req: Request, res: Response) => {
  const timeId = req.params.timeId;

  try {
    const deletedTime = await Time.findByIdAndDelete(timeId);

    if (!deletedTime) {
      throw new NotFoundError("Time not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Time deleted successfully!",
      null
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

export { createTime, getAllTimes, getTimeById, updateTimeById, deleteTimeById };
