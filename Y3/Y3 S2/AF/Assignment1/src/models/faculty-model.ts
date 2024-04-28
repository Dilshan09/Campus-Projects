import mongoose from "mongoose";

const FacultySchema = new mongoose.Schema(
  {
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
  },
  {
    timestamps: true,
    versionKey: false,
  }
);

export default mongoose.model("Faculty", FacultySchema);
