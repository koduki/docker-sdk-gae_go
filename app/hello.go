package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func indexGET(c *gin.Context) {
    c.String(200, "Hello World!")
}

func pingGET(c *gin.Context) {
    c.String(200, "pong")
}

func echoGET(c *gin.Context) {
    name := c.Param("name")
    c.String(200, "Hello, %s", name)
}

func init() {
	r := gin.New()

	r.GET("/", indexGET)
	r.GET("/ping", pingGET)
	r.GET("/echo/:name", echoGET)

	// Handle all requests using net/http
	http.Handle("/", r)
}