#!/usr/bin/node
import * as http from "http";
import * as https from "https";

interface cliArguments {
  url?: string,
  help?: true
}

interface httpResponse {
  on: any
}

const cliArgs: cliArguments = {};
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
  https.get(cliArgs.url, (res: httpResponse) => {
    let data = "";
    res.on("data", (d: any) => data += d);
    res.on("end", () => console.log(data));
  });
} else {
  http.get(cliArgs.url, (res: httpResponse) => {
    let data = "";
    res.on("data", (d: any) => data += d);
    res.on("end", () => console.log(data));
  });
}

