import mongoose from "mongoose";

const TimetableEventSchema = new mongoose.Schema(
  {
    timetableid: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Timetable",
      //required: [true, "Timetable is required"],
    },
    dayid: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Day",
      required: [true, "Day is required"],
    },
    timeid: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Time",
      required: [true, "Time is required"],
    },
    locationid: {
      type: mongoose.Schema.Types.ObjectId,
      ref: "Room",
      required: [true, "Room is required"],
    },
    discription: {
      type: String,
      required: [true, "Discription is required"],
    },
  },
  {
    timestamps: true,
    versionKey: false,
  }
);

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

export default mongoose.model("Timetableevent", TimetableEventSchema);
