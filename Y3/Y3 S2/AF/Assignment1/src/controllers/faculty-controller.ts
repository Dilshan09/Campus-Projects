import { Request, Response } from "express";
import Faculty from "../models/faculty-model";
import { StatusCodes } from "http-status-codes";
import CustomResponse from "../utills/responce";
import ErrorHandler from "../utills/error/ErrorHandler";
import NotFoundError from "../utills/error/error.classes/NotFoundError";
import BadRequestError from "../utills/error/error.classes/BadRequestError";
import userService from "../services/user-service";

const createFaculty = async (req: Request, res: Response) => {
  const body: any = req.body;
  const faculty: any = new Faculty(body.faculty);

  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const existingFaculty = await Faculty.findOne({
        faculty: faculty.faculty,
    });

    if (existingFaculty) {
      throw new BadRequestError("Faculty already exists!");
    }

    const createdFaculty = await faculty.save();

    return CustomResponse(
      res,
      true,
      StatusCodes.CREATED,
      "Faculty created successfully!",
      createdFaculty
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getAllFacultys = async (req: Request, res: Response) => {
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }
    const facultys = await Faculty.find({});

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "All facultys fetched successfully!",
      facultys
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getFacultyById = async (req: Request, res: Response) => {
  const facultyId = req.params.facultyId;
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const faculty = await Faculty.findById(facultyId);

    if (!faculty) {
      throw new NotFoundError("Faculty not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Faculty fetched successfully!",
      faculty
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const updateFacultyById = async (req: Request, res: Response) => {
  const facultyId = req.params.facultyId;
  const updatedData = req.body;

  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const updatedFaculty = await Faculty.findByIdAndUpdate(facultyId, updatedData, {
      new: true,
    });

    if (!updatedFaculty) {
      throw new NotFoundError("Faculty not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Faculty updated successfully!",
      updatedFaculty
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const deleteFacultyById = async (req: Request, res: Response) => {
  const facultyId = req.params.facultyId;
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const deletedFaculty = await Faculty.findByIdAndDelete(facultyId);

    if (!deletedFaculty) {
      throw new NotFoundError("Faculty not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Faculty deleted successfully!",
      null
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

export { createFaculty, getAllFacultys, getFacultyById, updateFacultyById, deleteFacultyById };
