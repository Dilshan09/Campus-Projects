"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const UserRegisteredEmail = (data) => {
    return `<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to University Timetable System (AF)</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333333;
        }
        p {
            font-size: 16px;
            color: #555555;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">

        <h1>Welcome, ${data.fullName}, to our University Timetable System!</h1>
        <p>Dear ${data.fullName},</p>
        <p>We extend our warmest congratulations on your successful registration with our university timetable platform.</p>
        <p>Thank you for choosing us to assist you in effectively managing your academic schedule.</p>
        <p>Feel free to explore your personalized timetable and manage your courses efficiently.</p>
        <p>Should you require any guidance or support, please don't hesitate to reach out to your university administration.</p>
        <p>Warm regards,</p>
        <p>The University Timetable System Team</p>

    </div>
</body>
</html>

    `;
};
const VerificationCodeEmail = (verificationCode) => {
    return `<!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>Reset Password Verification Code</title>
        <style>

            body {
                font-family: Arial, sans-serif;
                background-color: #f5f5f5;
                padding: 20px;
            }
            .container {
                background-color: #ffffff;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }
            h1 {
                color: #333333;
            }
            p {
                font-size: 16px;
                color: #555555;
            }
            a {
                color: #007bff;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Password Reset Verification Code</h1>
            <p>Dear User,</p>
            <p>Your password reset verification code is:</p>
            <p style="font-size: 24px; font-weight: bold;">${verificationCode}</p>
            <p>Please use this code to reset your password. It will expire after a certain period for security.</p>
            <p>If you didn't request this change, please ignore this email or contact us immediately.</p>
            <p>Thank you!</p>
            <p>Best regards,</p>
            <p>The Support Team</p>
        </div>
    </body>
    </html>`;
};
exports.default = {
    UserRegisteredEmail,
    //OrderPlacedEmail,
    VerificationCodeEmail,
    // DailySummaryEmail,
};
