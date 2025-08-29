import { config } from "@repo/eslint-config/base.js";
import { defineConfig } from "eslint/config";

export default defineConfig([
  {
    extends: [config],
    languageOptions: {
      parser: "@typescript-eslint/parser",
      parserOptions: {
        tsconfigRootDir: import.meta.dirname,
      },
    },
  },
]);  