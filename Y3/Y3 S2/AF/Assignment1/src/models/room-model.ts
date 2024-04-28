import mongoose from "mongoose";

const RoomSchema = new mongoose.Schema(
  {
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
      type: [mongoose.Schema.Types.ObjectId],
      ref: "Resources",
      default: [],
    },
  },
  {
    timestamps: true,
    versionKey: false,
  }
);

export default mongoose.model("Room", RoomSchema);
