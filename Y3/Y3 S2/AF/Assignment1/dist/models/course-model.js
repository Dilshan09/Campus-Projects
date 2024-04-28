"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = __importDefault(require("mongoose"));
const CourseSchema = new mongoose_1.default.Schema({
    coursename: {
        type: String,
        required: [true, "Course name is required"],
        maxlength: [100, "Course name cannot be more than 100 characters"],
    },
    coursecode: {
        type: String,
        required: [true, "Course code is required"],
        unique: true,
        maxlength: [20, "Course code cannot be more than 20 characters"],
    },
    description: {
        type: String,
        required: [true, "Course description is required"],
    },
    credits: {
        type: Number,
        required: [true, "Course credits are required"],
        min: [0, "Course credits cannot be less than 0"],
    },
    faculty: {
        type: mongoose_1.default.Schema.Types.ObjectId,
        ref: "Faculty",
    },
}, {
    timestamps: true,
    versionKey: false,
});
exports.default = mongoose_1.default.model("Course", CourseSchema);
