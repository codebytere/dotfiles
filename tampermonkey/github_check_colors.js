// ==UserScript==
// @name     GitHub Check Colors
// @version  1
// @include  https://github.com/*
// @grant    none
// ==/UserScript==

for (const li of document.querySelectorAll('[data-channel^="check_runs:"] .container-md li')) {
  if (/Failed/.test(li.textContent)) {
    li.style.color = 'red'
  } else if (/Running/.test(li.textContent)) {
    li.style.color = '#CCCC00'
  } else if (/Success/.test(li.textContent)) {
    li.style.color = 'green'
  }
}