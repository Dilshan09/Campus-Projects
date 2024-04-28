import Course from "../models/course-model";

const save = async (courseData: any, session: any) => {
  const course = new Course(courseData);
  if (session) {
    return await course.save({ session });
  } else {
    return await course.save();
  }
};

const getAllCourses = async () => {
  return await Course.find({});
};

const getCourseById = async (id: string) => {
  return await Course.findById(id);
};

const updateCourseById = async (id: string, updatedData: any) => {
  return await Course.findByIdAndUpdate(id, updatedData /*{ new: true }*/);
};

const deleteCourseById = async (id: string) => {
  return await Course.findByIdAndDelete(id);
};

export default {
  save,
  getAllCourses,
  getCourseById,
  updateCourseById,
  deleteCourseById,
};
