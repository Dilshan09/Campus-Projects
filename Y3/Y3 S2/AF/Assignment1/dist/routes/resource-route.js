"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const user_middleware_1 = __importDefault(require("../middlewares/user-middleware"));
const resorce_controller_1 = require("../controllers/resorce-controller");
const constants_1 = __importDefault(require("../utills/constants"));
const ResourceRouter = (0, express_1.Router)();
ResourceRouter.post("/create", user_middleware_1.default.authorize([constants_1.default.USER.ROLES.ADMIN]), resorce_controller_1.createResource);
ResourceRouter.get("/getAllResources", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), resorce_controller_1.getAllResources);
ResourceRouter.get("/getOneResource/:resourceId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
    constants_1.default.USER.ROLES.STUDENT,
]), resorce_controller_1.getResourceById);
ResourceRouter.put("/updateResource/:resourceId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
    constants_1.default.USER.ROLES.FACULTY,
]), resorce_controller_1.updateResourceById);
ResourceRouter.delete("/deleteResource/:resourceId", user_middleware_1.default.authorize([
    constants_1.default.USER.ROLES.ADMIN,
]), resorce_controller_1.deleteResourceById);
exports.default = ResourceRouter;
