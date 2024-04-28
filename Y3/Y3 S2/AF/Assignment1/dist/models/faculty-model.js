"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = __importDefault(require("mongoose"));
const FacultySchema = new mongoose_1.default.Schema({
    facultyname: {
        type: String,
        required: [true, "Department name is required"],
        maxlength: [100, "Department name cannot be more than 100 characters"],
        unique: true,
    },
    facultycode: {
        type: String,
        required: [true, "Department code is required"],
        maxlength: [20, "Department code cannot be more than 20 characters"],
        unique: true,
    },
}, {
    timestamps: true,
    versionKey: false,
});
exports.default = mongoose_1.default.model("Faculty", FacultySchema);
