document.addEventListener("DOMContentLoaded", function () {
  
  // 1. Автоматична галерея Fancybox для зображень
  const images = document.querySelectorAll('img');
  images.forEach(img => {
    if (img.closest('a')) return;

    const link = document.createElement('a');
    link.href = img.src;
    link.dataset.fancybox = "gallery";
    link.classList.add('fancybox-trigger');

    img.parentNode.insertBefore(link, img);
    link.appendChild(img);
  });

  Fancybox.bind("[data-fancybox]", {
    Images: {
      Panzoom: { maxScale: 3 }
    },
    caption: (fancybox, slide) => {
      const img = slide.triggerEl?.querySelector("img");
      return img?.getAttribute("alt") || img?.getAttribute("title") || "";
    }
  });

  // 2. Відкриття зовнішніх посилань у новому вікні
  document.querySelectorAll('a[href]').forEach(link => {
    const url = new URL(link.href, location.href);
    if (url.hostname && url.hostname !== location.hostname) {
      link.target = "_blank";
      link.rel = "noopener noreferrer";
    }
  });

  // 3. Обробка Obsidian-блоків та коригування назв мов
  document.querySelectorAll('code[class*="language-"]').forEach(function (el) {
    el.className = el.className.toLowerCase();
  });

  document.querySelectorAll("blockquote").forEach(function (bq) {
    const firstP = bq.querySelector("p");
    if (!firstP) return;

    const text = firstP.textContent.trim();
    if (text.startsWith("[!")) {
      bq.classList.add("obsidian-callout");

      const match = firstP.innerHTML.match(/^\[!([^\]]+)\]\s*(.*)/s);
      if (match) {
        const titleText = match[1];
        const restOfText = match[2];

        const titleElement = `<div class="callout-title">${titleText}</div>`;
        firstP.innerHTML = `${titleElement}<div class="callout-content">${restOfText}</div>`;
      }
    }
  });

  // 4. Очищення від Rouge та запуск Highlight.js
  document.querySelectorAll('pre code').forEach(function (block) {
    block.innerHTML = block.textContent;
  });

  if (typeof hljs !== 'undefined') {
    hljs.highlightAll();
  }

});