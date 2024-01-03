import { render, screen } from "@testing-library/react";
import App from "./App";
import { expect, test } from "vitest";

test("should have hello world", () => {
  render(<App />);
  const message = screen.queryByText(/Vite and React/i);
  expect(message).toBeInTheDocument();
});
