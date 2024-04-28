"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = __importDefault(require("mongoose"));
const TimetableEventSchema = new mongoose_1.default.Schema({
    timetableid: {
        type: mongoose_1.default.Schema.Types.ObjectId,
        ref: "Timetable",
        //required: [true, "Timetable is required"],
    },
    dayid: {
        type: mongoose_1.default.Schema.Types.ObjectId,
        ref: "Day",
        required: [true, "Day is required"],
    },
    timeid: {
        type: mongoose_1.default.Schema.Types.ObjectId,
        ref: "Time",
        required: [true, "Time is required"],
    },
    locationid: {
        type: mongoose_1.default.Schema.Types.ObjectId,
        ref: "Room",
        required: [true, "Room is required"],
    },
    discription: {
        type: String,
        required: [true, "Discription is required"],
    },
}, {
    timestamps: true,
    versionKey: false,
});
TimetableEventSchema.pre("find", function (next) {
    this.populate("timetableid");
    this.populate("dayid");
    this.populate("timeid");
    this.populate("locationid");
    next();
});
TimetableEventSchema.pre("findOne", function (next) {
    this.populate("timetableid");
    this.populate("dayid");
    this.populate("timeid");
    this.populate("locationid");
    next();
});
exports.default = mongoose_1.default.model("Timetableevent", TimetableEventSchema);
