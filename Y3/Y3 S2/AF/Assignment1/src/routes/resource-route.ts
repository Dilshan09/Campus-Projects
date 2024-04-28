import { Router } from "express";
import UserMiddleware from "../middlewares/user-middleware";
import {
  createResource,
  getAllResources,
  getResourceById,
  updateResourceById,
  deleteResourceById,
} from "../controllers/resorce-controller";
import constants from "../utills/constants";

const ResourceRouter = Router();

ResourceRouter.post(
  "/create",
  UserMiddleware.authorize([constants.USER.ROLES.ADMIN]),
  createResource
);

ResourceRouter.get(
  "/getAllResources",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  getAllResources
);

ResourceRouter.get(
  "/getOneResource/:resourceId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
    constants.USER.ROLES.STUDENT,
  ]),
  getResourceById
);

ResourceRouter.put(
  "/updateResource/:resourceId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
    constants.USER.ROLES.FACULTY,
  ]),
  updateResourceById
);

ResourceRouter.delete(
  "/deleteResource/:resourceId",
  UserMiddleware.authorize([
    constants.USER.ROLES.ADMIN,
  ]),
  deleteResourceById
);

export default ResourceRouter;
