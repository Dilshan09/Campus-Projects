"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = __importDefault(require("mongoose"));
const TimetableSchema = new mongoose_1.default.Schema({
    courseid: {
        type: mongoose_1.default.Schema.Types.ObjectId,
        ref: "Course",
        required: [true, "Course is required"],
    },
    year: {
        type: Number,
        required: [true, "Year is required"],
    },
    month: {
        type: Number,
        required: [true, "Month is required"],
    },
    week: {
        type: Number,
        required: [true, "Week is required"],
    },
}, {
    timestamps: true,
    versionKey: false,
});
TimetableSchema.pre("find", function () {
    this.populate("courseid");
});
TimetableSchema.pre("findOne", function () {
    this.populate("courseid");
});
exports.default = mongoose_1.default.model("Timetable", TimetableSchema);
