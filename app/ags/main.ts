import { StatusBar } from "./statusbar.ts";
import { AppLauncher } from "./applauncher.ts";

App.config({
    style: "./style.css",
    windows: [
        StatusBar(),
        AppLauncher
    ]
})
