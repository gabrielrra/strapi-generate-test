# Repository for testing `strapi generate` on strapi cli

All you need to do is:

```bash
docker build -t strapi-generate-test .
docker run -it strapi-generate-test
```

The expected output is:

```
File '/app/src/api/test/routes/test.ts' exists
File '/app/node_modules/@strapi/generators/dist/api/test/routes/test.ts' does not exist.
```

What it actually outputs is:

```
File '/app/src/api/test/routes/test.ts' does not exist. IT SHOULD
File '/app/node_modules/@strapi/generators/dist/api/test/routes/test.ts' exists. IT SHOULD NOT.
```
