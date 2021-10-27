import { StrictMode } from "react";
import ReactDOM from "react-dom";

import App from "./App";

import "./index.css";

const rootElement = document.getElementById("react-weather-app");
ReactDOM.render(
  <StrictMode>
    <App />
  </StrictMode>,
  rootElement
);
