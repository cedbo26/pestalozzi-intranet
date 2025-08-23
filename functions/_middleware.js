export const onRequest = async ({ request, next }) => {
  const USER = "pesta";
  const PASS = "pesta-25!";  // <-- change si tu veux

  const auth = request.headers.get("Authorization") || "";
  const expected = "Basic " + btoa(`${USER}:${PASS}`);

  if (auth !== expected) {
    return new Response("Authentication required", {
      status: 401,
      headers: { "WWW-Authenticate": 'Basic realm="Pestalozzi Intranet"' }
    });
  }

  return next();
};
