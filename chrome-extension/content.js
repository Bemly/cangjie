// 设置 extension_installed cookie
document.cookie = 'extension_installed=true; path=/; max-age=86400; samesite=lax';
console.log("[Bemly Extension] 已设置 extension_installed cookie");

// 检测是否在安装页面，如果是则跳转到首页
function checkAndRedirect() {
  console.log("[Bemly Extension] 当前路径:", window.location.pathname);

  if (window.location.pathname === '/install-extension') {
    console.log("[Bemly Extension] 检测到安装页面，设置 cookie...");
    // 设置 cookie 后跳转
    chrome.runtime.sendMessage({ action: "setCookie" }, (response) => {
      console.log("[Bemly Extension] setCookie 响应:", response);
      if (response && response.success) {
        console.log("[Bemly Extension] 插件已安装，跳转到首页...");
        window.location.href = '/';
      }
    });
    return;
  }

  // 检测是否有 data-src 图片（说明页面已加载，Turnstile 验证通过）
  const images = document.querySelectorAll('img[data-src]');
  console.log("[Bemly Extension] 找到 data-src 图片数量:", images.length);

  if (images.length > 0) {
    console.log("[Bemly Extension] 检测到图片，设置 cookie...");
    // 通知后台脚本设置 cookie
    chrome.runtime.sendMessage({ action: "setCookie" }, (response) => {
      console.log("[Bemly Extension] setCookie 响应:", response);
      if (response && response.success) {
        console.log("[Bemly Extension] Cookie 已设置，重新加载图片...");
        // 重新加载所有 data-src 图片
        images.forEach(img => {
          console.log("[Bemly Extension] 加载图片:", img.dataset.src);
          img.src = img.dataset.src;
        });
      }
    });
  } else {
    console.log("[Bemly Extension] 未检测到 data-src 图片");
  }
}

// 页面加载完成后检查
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', checkAndRedirect);
} else {
  checkAndRedirect();
}
