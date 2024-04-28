import mongoose from "mongoose";

const DaySchema = new mongoose.Schema(
  {
    day: {
      type: String,
      required: [true, "day is required"],
    },
  },
  {
    timestamps: true,
    versionKey: false,
  }
);

export default mongoose.model("Day", DaySchema);
