import mongoose from "mongoose";

const ResourceSchema = new mongoose.Schema(
  {
    resourcename: {
      type: String,
      required: [true, "Resource name is required"],
      unique: true,
    },
    code: {
      type: String,
      required: [true, "Resource code is required"],
      unique: true,
      maxlength: [20, "Resource code cannot be more than 20 characters"],
    },
  },
  {
    timestamps: true,
    versionKey: false,
  }
);

export default mongoose.model("Resource", ResourceSchema);
