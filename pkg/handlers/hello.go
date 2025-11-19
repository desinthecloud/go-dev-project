package handlers

import (
    "encoding/json"
    "net/http"
)

func HelloHandler(w http.ResponseWriter, r *http.Request) {
    resp := map[string]string{
        "message": "Hello from your first Go API",
    }

    w.Header().Set("Content-Type", "application/json")
    json.NewEncoder(w).Encode(resp)
}

