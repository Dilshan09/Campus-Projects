"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const mongoose_1 = __importDefault(require("mongoose"));
const RoomSchema = new mongoose_1.default.Schema({
    roomnumber: {
        type: String,
        required: [true, "Room number is required"],
        //unique: true,
    },
    capacity: {
        type: Number,
        required: [true, "Capacity is required"],
        min: [1, "Capacity must be at least 1"],
    },
    location: {
        type: String,
        required: [true, "Location is required"],
        maxlength: [100, "Location cannot be more than 100 characters"],
    },
    resources: {
        type: [mongoose_1.default.Schema.Types.ObjectId],
        ref: "Resources",
        default: [],
    },
}, {
    timestamps: true,
    versionKey: false,
});
exports.default = mongoose_1.default.model("Room", RoomSchema);
