// Disable Isolating
user_pref("browser.launcherProcess.enabled", false);
user_pref("browser.tabs.remote.autostart", false);
user_pref("browser.tabs.remote.force-enable", false);
user_pref("fission.autostart", false);
user_pref("fission.autostart.session", false);
user_pref("media.cubeb.sandbox", false);
user_pref("security.sandbox.content.level", 1);
user_pref("security.sandbox.content.win32k-disable", false);
user_pref("security.sandbox.gmp.win32k-disable", false);
user_pref("security.sandbox.gpu.level", 0);
user_pref("security.sandbox.socket.process.level", 0);
user_pref("security.sandbox.socket.win32k-disable", false);

// Disable Preloading
user_pref("browser.newtab.preload", false);
user_pref("gfx.webrender.precache-shaders", false);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.early-hints.preconnect.enabled", false);
user_pref("network.modulepreload", false);
user_pref("network.preconnect", false);
user_pref("network.predictor.enable-prefetch", false);
user_pref("network.prefetch-next", false);

// Disable Mitigating
user_pref("javascript.options.spectre.object_mitigations", false);
user_pref("javascript.options.spectre.string_mitigations", false);
user_pref("network.trr.split_horizon_mitigations", false);

// Disable Updating
user_pref("app.update.background.previous.reasons", "[\"app.update.auto=false\"]");
user_pref("extensions.update.autoUpdateDefault", false);

// Enable Processing
user_pref("browser.tabs.remote.separateFileUriProcess", true);
user_pref("browser.tabs.remote.separatePrivilegedContentProcess", true);
user_pref("browser.tabs.remote.separatePrivilegedMozillaWebContentProcess", true);
user_pref("dom.ipc.processCount", 1);
user_pref("dom.ipc.processCount.extension", 1);
user_pref("dom.ipc.processCount.file", 1);
user_pref("dom.ipc.processCount.inference", 1);
user_pref("dom.ipc.processCount.privilegedabout", 1);
user_pref("dom.ipc.processCount.privilegedmozilla", 1);
user_pref("dom.ipc.processCount.webIsolated", 1);
user_pref("dom.webgpu.allow-in-parent", true);
user_pref("extensions.webextensions.remote", true);
user_pref("gfx.canvas.accelerated.allow-in-parent", true);
user_pref("gfx.canvas.remote.allow-in-parent", true);
user_pref("gfx.webrender.multithreading", true);
user_pref("layers.gpu-process.allow-fallback-to-parent", true);
user_pref("layers.gpu-process.enabled", true);
user_pref("layers.gpu-process.force-enabled", false);
user_pref("media.gmp.decoder.multithreaded", true);
user_pref("media.gmp.encoder.multithreaded", true);
user_pref("media.rdd-process.enabled", true);
user_pref("media.utility-process.enabled", true);
user_pref("network.process.enabled", true);
user_pref("webgl.cgl.multithreaded", true);
user_pref("webgl.out-of-process.force", false);

// Enable Accelerating
user_pref("browser.preferences.defaultPerformanceSettings.enabled", false);
user_pref("gfx.canvas.accelerated", true);
user_pref("gfx.canvas.accelerated.force-enabled", false);
user_pref("gfx.direct2d.disabled", false);
user_pref("gfx.direct2d.force-enabled", false);
user_pref("gfx.webrender.flip-sequential", true);
user_pref("layers.acceleration.force-enabled", false);
user_pref("layers.amd-switchable-gfx.enabled", true);
user_pref("layers.d3d11.force-warp", false);
user_pref("webgl.angle.force-d3d11", false);
user_pref("webgl.angle.force-warp", false);
user_pref("webgl.angle.try-d3d11", true);
user_pref("webgl.disable-angle", false);

// Enable Enhancing
user_pref("gfx.direct3d11.use-double-buffering", true);
user_pref("gfx.skia.dithering", true);
user_pref("gfx.webrender.dithering", true);
user_pref("gfx.webrender.enable-subpixel-aa", true);
user_pref("gfx.webrender.triple-buffering.enabled", true);
user_pref("image.downscale-during-decode.enabled", false);
user_pref("media.peerconnection.video.denoising", true);
user_pref("media.wmf.amd.highres.enabled", true);

// Enable Styling
user_pref("browser.ctrlTab.sortByRecentlyUsed", true);
user_pref("browser.download.always_ask_before_handling_new_types", true);
user_pref("browser.download.autohideButton", false);
user_pref("browser.ml.chat.provider", "https://chatgpt.com");
user_pref("browser.newtabpage.activity-stream.feeds.section.highlights", true);
user_pref("browser.newtabpage.activity-stream.section.highlights.rows", 4);
user_pref("browser.newtabpage.activity-stream.showSponsoredCheckboxes", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.newtabpage.activity-stream.topSitesRows", 4);
user_pref("browser.newtabpage.activity-stream.trendingSearch.defaultSearchEngine", "DuckDuckGo");
user_pref("browser.newtabpage.pinned", "[{\"url\":\"https://addons.mozilla.org/firefox/addon/ublock-origin\",\"label\":\"uBlock Origin\"},{\"url\":\"https://addons.mozilla.org/firefox/addon/localcdn-fork-of-decentraleyes\",\"label\":\"LocalCDN\"},{\"url\":\"https://addons.mozilla.org/firefox/addon/clearurls\",\"label\":\"ClearURLs\"}]");
user_pref("browser.search.suggest.enabled.private", true);
user_pref("browser.startup.page", 3);
user_pref("browser.taskbar.previews.enable", true);
user_pref("browser.theme.content-theme", 2);
user_pref("browser.theme.toolbar-theme", 0);
user_pref("browser.uiCustomization.horizontalTabstrip", "[\"tabbrowser-tabs\",\"new-tab-button\"]");
user_pref("browser.uiCustomization.navBarWhenVerticalTabs", "[\"privatebrowsing-button\",\"urlbar-container\",\"search-container\",\"sidebar-button\",\"downloads-button\",\"stop-reload-button\",\"vertical-spacer\",\"back-button\",\"forward-button\",\"unified-extensions-button\"]");
user_pref("browser.uiCustomization.state", "{\"placements\":{\"widget-overflow-fixed-list\":[\"characterencoding-button\"],\"unified-extensions-area\":[\"ublock0_raymondhill_net-browser-action\",\"_b86e4813-687a-43e6-ab65-0bde4ab75758_-browser-action\",\"_74145f27-f039-47ce-a470-a662b129930a_-browser-action\"],\"nav-bar\":[\"privatebrowsing-button\",\"urlbar-container\",\"search-container\",\"sidebar-button\",\"downloads-button\",\"stop-reload-button\",\"vertical-spacer\",\"back-button\",\"forward-button\",\"unified-extensions-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[],\"vertical-tabs\":[\"tabbrowser-tabs\"],\"PersonalToolbar\":[\"import-button\",\"personal-bookmarks\"]},\"seen\":[\"developer-button\",\"profiler-button\",\"screenshot-button\"],\"dirtyAreaCache\":[\"nav-bar\",\"vertical-tabs\",\"PersonalToolbar\",\"TabsToolbar\",\"widget-overflow-fixed-list\"],\"currentVersion\":23,\"newElementCount\":3}");
user_pref("browser.urlbar.placeholderName", "DuckDuckGo");
user_pref("browser.urlbar.placeholderName.private", "DuckDuckGo");
user_pref("extensions.activeThemeID", "firefox-alpenglow@mozilla.org");
user_pref("extensions.ui.lastCategory", "addons://list/extension");
user_pref("layout.css.prefers-color-scheme.content-override", 0);
user_pref("media.autoplay.default", 0);
user_pref("sidebar.main.tools", "aichat,syncedtabs,bookmarks,passwords,history");
user_pref("sidebar.revamp", true);
user_pref("sidebar.verticalTabs", true);
user_pref("sidebar.visibility", "expand-on-hover");

// Enable Protecting
user_pref("browser.contentblocking.category", "custom");
user_pref("browser.download.deletePrivate", true);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.usage.uploadEnabled", false);
user_pref("dom.security.https_only_mode", true);
user_pref("network.cookie.cookieBehavior", 1);
user_pref("network.trr.custom_uri", "https://freedns.controld.com/no-malware-ads-typo");
user_pref("network.trr.mode", 0);
user_pref("network.trr.uri", "https://freedns.controld.com/no-malware-ads-typo");
user_pref("privacy.fingerprintingProtection", true);
user_pref("privacy.globalprivacycontrol.enabled", true);
user_pref("privacy.history.custom", true);
user_pref("privacy.trackingprotection.emailtracking.enabled", true);
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.socialtracking.enabled", true);
