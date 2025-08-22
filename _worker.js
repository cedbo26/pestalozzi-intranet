export default {
  async fetch(request, env) {
    // === identifiants à définir ===
    const USER = "pesta";
    const PASS = "pesta_25!";

    const auth = request.headers.get("Authorization") || "";
    const expected = "Basic " + btoa(`${USER}:${PASS}`);

    if (auth !== expected) {
      return new Response("Authentication required", {
        status: 401,
        headers: { "WWW-Authenticate": 'Basic realm="Pestalozzi Intranet"' }
      });
    }

    // Si OK → servir le site statique Pages
    return env.ASSETS.fetch(request);
  }
}
