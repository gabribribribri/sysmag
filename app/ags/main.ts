import { StatusBar } from "./statusbar.ts";
import { AppLauncher } from "./applauncher.ts";

App.config({
    style: "./my-ags-widgets/style.css",
    windows: [
        StatusBar(),
        AppLauncher()
    ]
})
