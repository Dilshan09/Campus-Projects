import mongoose from "mongoose";

const TimetableSchema = new mongoose.Schema(
  {
    courseid: {
      type: mongoose.Schema.Types.ObjectId,
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
  },
  {
    timestamps: true,
    versionKey: false,
  }
);

TimetableSchema.pre("find", function () {
  this.populate("courseid");
});

TimetableSchema.pre("findOne", function () {
  this.populate("courseid");
});

export default mongoose.model("Timetable", TimetableSchema);
