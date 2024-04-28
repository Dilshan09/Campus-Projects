import { Request, Response } from "express";
import Resource from "../models/resource-model";
import { StatusCodes } from "http-status-codes";
import CustomResponse from "../utills/responce";
import ErrorHandler from "../utills/error/ErrorHandler";
import NotFoundError from "../utills/error/error.classes/NotFoundError";
import BadRequestError from "../utills/error/error.classes/BadRequestError";
import userService from "../services/user-service";

const createResource = async (req: Request, res: Response) => {
  const body: any = req.body;
  const resource: any = new Resource(body.resource);

  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const existingResource = await Resource.findOne({
      resourceName: resource.resourceName,
    });

    if (existingResource) {
      throw new BadRequestError("Resource already exists!");
    }

    const createdResource = await resource.save();

    return CustomResponse(
      res,
      true,
      StatusCodes.CREATED,
      "Resource created successfully!",
      createdResource
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getAllResources = async (req: Request, res: Response) => {
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }
    const resources = await Resource.find({});

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "All resources fetched successfully!",
      resources
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const getResourceById = async (req: Request, res: Response) => {
  const resourceId = req.params.resourceId;
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const resource = await Resource.findById(resourceId);

    if (!resource) {
      throw new NotFoundError("Resource not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Resource fetched successfully!",
      resource
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const updateResourceById = async (req: Request, res: Response) => {
  const resourceId = req.params.resourceId;
  const updatedData = req.body;

  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const updatedResource = await Resource.findByIdAndUpdate(
      resourceId,
      updatedData,
      {
        new: true,
      }
    );

    if (!updatedResource) {
      throw new NotFoundError("Resource not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Resource updated successfully!",
      updatedResource
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

const deleteResourceById = async (req: Request, res: Response) => {
  const resourceId = req.params.resourceId;
  const auth: any = req.auth;

  try {
    const user = await userService.findById(auth._id);

    if (!user) {
      throw new NotFoundError("User not found!");
    }

    const deletedResource = await Resource.findByIdAndDelete(resourceId);

    if (!deletedResource) {
      throw new NotFoundError("Resource not found!");
    }

    return CustomResponse(
      res,
      true,
      StatusCodes.OK,
      "Resource deleted successfully!",
      null
    );
  } catch (error) {
    ErrorHandler.handle(res, error);
  }
};

export {
  createResource,
  getAllResources,
  getResourceById,
  updateResourceById,
  deleteResourceById,
};
