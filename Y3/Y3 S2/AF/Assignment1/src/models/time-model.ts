import mongoose from "mongoose";

const TimeSchema = new mongoose.Schema(
  {
    timeslot: {
      type: String,
      required: [true, "time is required"],
    },
  },
  {
    timestamps: true,
    versionKey: false,
  }
);

export default mongoose.model("Time", TimeSchema);
