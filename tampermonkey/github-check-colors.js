// ==UserScript==
// @name     GitHub Check Colors
// @version  1
// @include  https://github.com/*
// @description A userscript that highlights CircleCI checks statuses
// @grant    none
// ==/UserScript==

for (const li of document.querySelectorAll('.js-checks-summary .container-md li')) {
  if (/Failed/.test(li.textContent)) {
    li.style.color = 'red'
    li.style['font-weight'] = 'bold'
  } else if (/Running/.test(li.textContent)) {
    li.style.color = '#ccb400'
  } else if (/Success/.test(li.textContent)) {
    li.style.color = 'green'
  } else if (/Blocked/.test(li.textContent)) {
    li.style.color = '#9200cc'
  }
}