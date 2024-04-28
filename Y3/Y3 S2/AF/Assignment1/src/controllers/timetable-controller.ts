import { Request, Response } from "express";
import Timetable from "../models/timetable-model";
import { StatusCodes } from "http-status-codes";
import CustomResponse from "../utills/responce";
import ErrorHandler from "../utills/error/ErrorHandler";
import NotFoundError from "../utills/error/error.classes/NotFoundError";
import BadRequestError from "../utills/error/error.classes/BadRequestError";

const createTimetable = async (req: Request, res: Response) => {
  const body: any = req.body;
  const timetable: any = new Timetable(body.timetable);

  try {
    const createdTimetable = await timetable.save();

    return CustomResponse(
      res,
      true,
      StatusCodes.CREATED,
      "Timetable created successfully!",
      createdTimetable
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getAllTimetables = async (req: Request, res: Response) => {
  try {
    const timetables = await Timetable.find({});

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "All timetables fetched successfully!",
      timetables
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getTimetableById = async (req: Request, res: Response) => {
  const timetableId = req.params.timetableId;

  try {
    const timetable = await Timetable.findById(timetableId);

    if (!timetable) {
      throw new NotFoundError("Timetable not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Timetable fetched successfully!",
      timetable
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const updateTimetableById = async (req: Request, res: Response) => {
  const timetableId = req.params.timetableId;
  const updatedData = req.body;

  try {
    const updatedTimetable = await Timetable.findByIdAndUpdate(
      timetableId,
      updatedData,
      { new: true }
    );

    if (!updatedTimetable) {
      throw new NotFoundError("Timetable not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Timetable updated successfully!",
      updatedTimetable
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const deleteTimetableById = async (req: Request, res: Response) => {
  const timetableId = req.params.timetableId;

  try {
    const deletedTimetable = await Timetable.findByIdAndDelete(timetableId);

    if (!deletedTimetable) {
      throw new NotFoundError("Timetable not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Timetable deleted successfully!",
      null
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

export {
  createTimetable,
  getAllTimetables,
  getTimetableById,
  updateTimetableById,
  deleteTimetableById,
};
