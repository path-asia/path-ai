/* eslint-disable max-len */
/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

// const {onRequest} = require("firebase-functions/v2/https");
const logger = require("firebase-functions/logger");
const functions = require("firebase-functions");
const admin = require("firebase-admin");
const axios = require("axios");

// Initialize Firebase Admin SDK
admin.initializeApp();

// Importing logger for logging information
// Cloud Function to make an API call to OpenAI with a user prompt
exports.callOpenAI = functions.https.onCall(async (data, context) => {
  // Ensure the user is authenticated
  if (!context.auth) {
    throw new functions.https.HttpsError("unauthenticated", "The function must be called while authenticated.");
  }

  // Extracting userPrompt from the data
  const userPrompt = data.userPrompt;

  // Securely retrieve the OpenAI API key from Firebase environment configuration
  const openAiSecretKey = functions.config().openai.secret;

  // OpenAI API URL
  const url = "https://api.openai.com/v1/chat/completions";

  // Configuring headers for the API call, including Authorization with the Bearer token
  const headers = {
    "Authorization": `Bearer ${openAiSecretKey}`,
    "Content-Type": "application/json",
  };

  // Configuring the body of the POST request
  const body = {
    "model": "gpt-4-turbo-preview",
    "messages": userPrompt, // Assuming userPrompt is in the correct format
  };

  try {
    // Making the POST request to OpenAI
    const response = await axios.post(url, body, {headers: headers});

    // Logging the successful API call
    logger.info("OpenAI API call successful", {structuredData: true});

    // Returning the response from OpenAI API to the caller
    return {result: response.data};
  } catch (error) {
    // Logging the error
    logger.error("OpenAI API call failed", error);

    // Throwing a HTTPS error if the API call fails
    throw new functions.https.HttpsError("internal", "Failed to fetch data from OpenAI.");
  }
});

// Create and deploy your first functions
// https://firebase.google.com/docs/functions/get-started

// exports.helloWorld = onRequest((request, response) => {
//   logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });
