import { Request, Response } from "express";
import Course from "../models/course-model";
import { StatusCodes } from "http-status-codes";
import CustomResponse from "../utills/responce";
import ErrorHandler from "../utills/error/ErrorHandler";
import NotFoundError from "../utills/error/error.classes/NotFoundError";
import BadRequestError from "../utills/error/error.classes/BadRequestError";
import userService from "../services/user-service";

const createCourse = async (req: Request, res: Response) => {
  const body: any = req.body;
  const course: any = new Course(body.course);
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const existingCourse = await Course.findOne({
      coursecode: course.coursecode,
    });

    if (existingCourse) {
      throw new BadRequestError("Course already exists!");
    }

    const createdCourse = await course.save();

    return CustomResponse(
      res,
      true,
      StatusCodes.CREATED,
      "Course created successfully!",
      createdCourse
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getAllCourses = async (req: Request, res: Response) => {
  const auth: any = req.auth;
  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const courses = await Course.find({});

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "All courses fetched successfully!",
      courses
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getCourseById = async (req: Request, res: Response) => {
  const courseId = req.params.courseId;

  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const course = await Course.findById(courseId);

    if (!course) {
      throw new NotFoundError("Course not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Course fetched successfully!",
      course
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const updateCourseById = async (req: Request, res: Response) => {
  const courseId = req.params.courseId;
  const updatedData = req.body;

  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const updatedCourse = await Course.findByIdAndUpdate(
      courseId,
      updatedData,
      { new: true }
    );

    if (!updatedCourse) {
      throw new NotFoundError("Course not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Course updated successfully!",
      updatedCourse
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const deleteCourseById = async (req: Request, res: Response) => {
  const courseId = req.params.courseId;

  try {
    const deletedCourse = await Course.findByIdAndDelete(courseId);

    if (!deletedCourse) {
      throw new NotFoundError("Course not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Course deleted successfully!",
      null
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

export {
  createCourse,
  getAllCourses,
  getCourseById,
  updateCourseById,
  deleteCourseById,
};
