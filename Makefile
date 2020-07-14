n = ""
abc:
	mkdir -p ABCSwift/abc/$n/
	touch ABCSwift/abc/$n/abc$na.swift
	touch ABCSwift/abc/$n/abc$nb.swift
	touch ABCSwift/abc/$n/abc$nc.swift
	touch ABCSwift/abc/$n/abc$nd.swift
	touch ABCSwift/abc/$n/abc$ne.swift
	touch ABCSwift/abc/$n/abc$nf.swift

t = ""
company:
	mkdir -p ABCSwift/abc/$t$n/
	touch ABCSwift/abc/$t$n/$t$na.swift
	touch ABCSwift/abc/$t$n/$t$nb.swift
	touch ABCSwift/abc/$t$n/$t$nc.swift
	touch ABCSwift/abc/$t$n/$t$nd.swift
	touch ABCSwift/abc/$t$n/$t$ne.swift
	touch ABCSwift/abc/$t$n/$t$nf.swift

gen:
	xcodegen

open:gen
	open ABCSwift.xcodeproj

.PHONY: abc company gen open