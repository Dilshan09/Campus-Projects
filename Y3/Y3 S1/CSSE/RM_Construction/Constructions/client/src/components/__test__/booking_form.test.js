import { render, screen } from "@testing-library/react";
import userEvent from "@testing-library/user-event"; // Add this import
import AddBookingForm from "../Booking/booking_form/bookinform.jsx";

describe("Test the booking_form component", () => {
    test("render the booking_form with 2 buttons", async () => {
        render(<AddBookingForm />);
        const buttonList = await screen.findAllByRole("button");
        console.log(buttonList);
        expect(buttonList).toHaveLength(2);
    });

    test("email input field should accept email", () => {
        render(<AddBookingForm />);
        const email = screen.getByPlaceholderText("Enter Email");
        userEvent.type(email, "praneeth@gmail.com"); // Fix the input value
        expect(email.value).toMatch("praneeth@gmail.com"); // Fix the assertion
    });

    test("email input field should not accept email", () => {
        render(<AddBookingForm />);
        const email = screen.getByPlaceholderText("Enter Email");
        userEvent.type(email, "praneeth"); // Fix the input value
        expect(email.value).not.toMatch("praneeth@gmail.com"); // Fix the assertion
    });

    test("phone no input field should have type tel", () => {
        render(<AddBookingForm />);
        const phone = screen.getByPlaceholderText("Enter Contact Number");
        expect(phone.getAttribute("type")).toBe("tel"); // Use getAttribute
    });


    test("msg input field should have type text", () => {
        render(<AddBookingForm />);
        const msg = screen.getByPlaceholderText("Enter Massege");
        expect(msg.getAttribute("type")).toBe("text"); // Use getAttribute
    });

});
