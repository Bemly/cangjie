// 检测是否在安装页面，如果是则跳转到首页
function checkAndRedirect() {
  if (window.location.pathname === '/install-extension') {
    // 设置 cookie 后跳转
    chrome.runtime.sendMessage({ action: "setCookie" }, (response) => {
      if (response && response.success) {
        console.log("插件已安装，跳转到首页...");
        window.location.href = '/';
      }
    });
    return;
  }

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
  document.addEventListener('DOMContentLoaded', checkAndRedirect);
} else {
  checkAndRedirect();
}
