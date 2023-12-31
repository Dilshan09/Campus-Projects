import React from "react";
import "./path_booking.scss";
import DashboardOutlinedIcon from "@mui/icons-material/DashboardOutlined";
import KeyboardDoubleArrowRightOutlinedIcon from "@mui/icons-material/KeyboardDoubleArrowRightOutlined";

const Path = () => {
  return (
    
    <div className="path">

      <DashboardOutlinedIcon />
      <p>Dashboard</p>
      <KeyboardDoubleArrowRightOutlinedIcon />
      <p>Procurement Staff</p>
      <KeyboardDoubleArrowRightOutlinedIcon />
      <p>ADD DELIVERY INFO</p>
      
    </div>
  );
};

export default Path;
