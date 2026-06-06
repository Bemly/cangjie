// 检测 Turnstile 验证完成
function checkTurnstile() {
  // 检查是否已经验证（cookie cj_token 存在）
  const cookies = document.cookie.split(';');
  const hasToken = cookies.some(c => c.trim().startsWith('cj_token='));

  if (hasToken) {
    // 通知后台脚本设置 cookie
    chrome.runtime.sendMessage({ action: "setCookie" }, (response) => {
      if (response && response.success) {
        console.log("Cookie 已设置，重新加载图片...");
        // 重新加载所有 data-src 图片
        document.querySelectorAll('img[data-src]').forEach(img => {
          img.src = img.dataset.src;
        });
      }
    });
  }
}

// 页面加载完成后检查
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', checkTurnstile);
} else {
  checkTurnstile();
}

// 监听 Turnstile 验证回调
const observer = new MutationObserver((mutations) => {
  mutations.forEach((mutation) => {
    if (mutation.type === 'childList') {
      // 检查是否出现了验证成功的标记
      const turnstileResponse = document.querySelector('[name="cf-turnstile-response"]');
      if (turnstileResponse && turnstileResponse.value) {
        checkTurnstile();
      }
    }
  });
});

observer.observe(document.body, { childList: true, subtree: true });
