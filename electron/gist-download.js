#!/usr/bin/env node

const fs = require('node:fs');
const path = require('node:path');

const gistId = process.argv[2];
const gistDir = path.join(process.cwd(), gistId);

if (!/^[a-f0-9]{32}$/.test(gistId)) {
  console.error(`Invalid Gist ID: ${gistId}`);
  process.exit(1);
}

async function downloadGist(gistId) {
  try {
    if (!fs.existsSync(gistDir)) {
      fs.mkdirSync(gistDir, { recursive: true });
    }

    const response = await fetch(`https://api.github.com/gists/${gistId}`);
    const gistData = await response.json();

    for (const [filename, fileInfo] of Object.entries(gistData.files)) {
      console.log(`Downloading ${filename}...`);
      const fileResponse = await fetch(fileInfo.raw_url);
      const fileContent = await fileResponse.text();
      fs.writeFileSync(path.join(gistDir, filename), fileContent);
    }

    console.log('All files have been downloaded successfully.');
    process.exit(0);
  } catch (error) {
    console.error('Failed to download Gist:', error);
    process.exit(1);
  }
}

downloadGist(gistId);