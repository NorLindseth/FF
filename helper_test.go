package main

import (
	"testing"
)

func TestHelper(t *testing.T) {
	r := privateHelperFunc(true)
	if r != 2 {
		t.Error("wrong")
	}
}
