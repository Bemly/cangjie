// 设置 bemly-moe.5ddd.com 的 cookie
function setRelayCookie() {
  const expiryDate = Math.floor(Date.now() / 1000) + 86400; // 1天后

  chrome.cookies.set({
    url: "https://bemly-moe.5ddd.com/",
    name: "mode",
    value: "relay",
    path: "/",
    secure: true,
    sameSite: "no_restriction",
    httpOnly: false,
    expirationDate: expiryDate
  }, (cookie) => {
    if (chrome.runtime.lastError) {
      console.error("设置 cookie 失败:", chrome.runtime.lastError);
    } else {
      console.log("Cookie 已设置:", cookie);
    }
  });
}

// 监听来自 content script 的消息
chrome.runtime.onMessage.addListener((request, sender, sendResponse) => {
  if (request.action === "setCookie") {
    setRelayCookie();
    sendResponse({ success: true });
  }
});

// 扩展安装时设置 cookie
chrome.runtime.onInstalled.addListener(() => {
  setRelayCookie();
});
