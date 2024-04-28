import { Request, Response } from "express";
import TimetableEvent from "../models/timetableevent-model";
import { StatusCodes } from "http-status-codes";
import CustomResponse from "../utills/responce";
import ErrorHandler from "../utills/error/ErrorHandler";
import NotFoundError from "../utills/error/error.classes/NotFoundError";
import BadRequestError from "../utills/error/error.classes/BadRequestError";

const createTimetableEvent = async (req: Request, res: Response) => {
  const body: any = req.body;
  const timetableEvent: any = new TimetableEvent(body.timetableEvent);

  try {
    const existingTimetableEvent = await TimetableEvent.findOne({
      timetable: timetableEvent.timetable,
      day: timetableEvent.day,
      time: timetableEvent.time,
      locationid: timetableEvent.location,
    });

    //console.log(existingTimetableEvent);

    if (existingTimetableEvent) {
      throw new BadRequestError("Timetable Event already exists!");
    }

    const createdTimetableEvent = await timetableEvent.save();

    return CustomResponse(
      res,
      true,
      StatusCodes.CREATED,
      "Timetable Event created successfully!",
      createdTimetableEvent
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getAllTimetableEvents = async (req: Request, res: Response) => {
  try {
    const timetableEvents = await TimetableEvent.find({});

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "All Timetable Events fetched successfully!",
      timetableEvents
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getTimetableEventById = async (req: Request, res: Response) => {
  const timetableEventId = req.params.timetableEventId;

  try {
    const timetableEvent = await TimetableEvent.findById(timetableEventId);

    if (!timetableEvent) {
      throw new NotFoundError("Timetable Event not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Timetable Event fetched successfully!",
      timetableEvent
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const updateTimetableEventById = async (req: Request, res: Response) => {
  const timetableEventId = req.params.timetableEventId;
  const updatedData = req.body;

  try {
    const updatedTimetableEvent = await TimetableEvent.findByIdAndUpdate(
      timetableEventId,
      updatedData,
      {
        new: true,
      }
    );

    if (!updatedTimetableEvent) {
      throw new NotFoundError("Timetable Event not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Timetable Event updated successfully!",
      updatedTimetableEvent
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const deleteTimetableEventById = async (req: Request, res: Response) => {
  const timetableEventId = req.params.timetableEventId;

  try {
    const deletedTimetableEvent = await TimetableEvent.findByIdAndDelete(
      timetableEventId
    );

    if (!deletedTimetableEvent) {
      throw new NotFoundError("Timetable Event not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Timetable Event deleted successfully!",
      null
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

export {
  createTimetableEvent,
  getAllTimetableEvents,
  getTimetableEventById,
  updateTimetableEventById,
  deleteTimetableEventById,
};
