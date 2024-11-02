import { StatusBar } from "./my-ags-widgets/statusbar/statusbar.ts";
import { AppLauncher } from "./my-ags-widgets/applauncher/applauncher.ts";

App.config({
    style: "./my-ags-widgets/style.css",
    windows: [
        StatusBar(),
        AppLauncher()
    ]
})
