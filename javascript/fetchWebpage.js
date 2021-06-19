#!/usr/bin/node
const http = require("http");
const https = require("https");

const cliArgs = {};
const scriptArgs = process.argv.splice(2);
for (const i in scriptArgs) {
  const current = scriptArgs[i];
  const next = scriptArgs[+i + 1];
  switch(current) {
    case "-u":
    case "--url":
      cliArgs.url = next;
    break;

    case "-h":
    case "--help":
      cliArgs.help = true;
  }
}

if (cliArgs.help) {
  console.log("Usage: node fetchWebpage.js --url https://example.com");
}

if (!cliArgs.url) {
  console.log("Missing argument --url https://example.com");
  process.exit(0);
}

if (cliArgs.url[4] == "s") {
  https.get(cliArgs.url, res => {
    let data = "";
    res.on("data", d => data += d);
    res.on("end", () => console.log(data));
  });
} else {
  http.get(cliArgs.url, res => {
    let data = "";
    res.on("data", d => data += d);
    res.on("end", () => console.log(data));
  });
}

