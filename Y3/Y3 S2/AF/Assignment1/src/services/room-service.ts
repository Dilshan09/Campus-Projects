import Room from "../models/room-model";
import timetableevent from "../models/timetableevent-model";

const save = async (roomData: any, session: any) => {
  const room = new Room(roomData);
  if (session) {
    return await room.save({ session });
  } else {
    return await room.save();
  }
};

const getFreeRoomsByTimes = async (day: any, timeSlot: any) => {
  try {
    const allocatedRooms = await timetableevent
      .find({
        dayid: day,
        timeid: timeSlot,
      })
      .select("location");

    const allocatedRoomIds = allocatedRooms.map((event) => event.locationid);

    const freeRooms = await Room.find({
      _id: { $nin: allocatedRoomIds },
    });

    return freeRooms;
  } catch (error: any) {
    throw new Error("Error fetching free rooms: " + error.message);
  }
};

const getAllRooms = async () => {
  return await Room.find({});
};

const getRoomById = async (id: string) => {
  return await Room.findById(id);
};

const updateRoomById = async (id: string, updatedData: any) => {
  return await Room.findByIdAndUpdate(id, updatedData, { new: true });
};

const deleteRoomById = async (id: string) => {
  return await Room.findByIdAndDelete(id);
};

export default {
  save,
  getAllRooms,
  getRoomById,
  updateRoomById,
  deleteRoomById,
  getFreeRoomsByTimes,
};
