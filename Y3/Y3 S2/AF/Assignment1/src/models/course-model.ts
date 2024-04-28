import mongoose from "mongoose";

const CourseSchema = new mongoose.Schema(
  {
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
      type: mongoose.Schema.Types.ObjectId,
      ref: "Faculty",
    },
  },
  {
    timestamps: true,
    versionKey: false,
  }
);

export default mongoose.model("Course", CourseSchema);
