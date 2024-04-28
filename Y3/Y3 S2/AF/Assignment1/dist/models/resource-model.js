"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = __importDefault(require("mongoose"));
const ResourceSchema = new mongoose_1.default.Schema({
    resourcename: {
        type: String,
        required: [true, "Resource name is required"],
        unique: true,
    },
    code: {
        type: String,
        required: [true, "Resource code is required"],
        unique: true,
        maxlength: [20, "Resource code cannot be more than 20 characters"],
    },
}, {
    timestamps: true,
    versionKey: false,
});
exports.default = mongoose_1.default.model("Resource", ResourceSchema);
