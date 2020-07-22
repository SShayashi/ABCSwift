n = ""
abc:
	mkdir -p ABCSwift/abc/$n/
	touch ABCSwift/abc/$n/abc$na.swift
	touch ABCSwift/abc/$n/abc$nb.swift
	touch ABCSwift/abc/$n/abc$nc.swift
	touch ABCSwift/abc/$n/abc$nd.swift
	touch ABCSwift/abc/$n/abc$ne.swift
	touch ABCSwift/abc/$n/abc$nf.swift

arc:
	mkdir -p ABCSwift/arc/$n/
	touch ABCSwift/arc/$n/arc$na.swift
	touch ABCSwift/arc/$n/arc$nb.swift
	touch ABCSwift/arc/$n/arc$nc.swift
	touch ABCSwift/arc/$n/arc$nd.swift
	touch ABCSwift/arc/$n/arc$ne.swift
	touch ABCSwift/arc/$n/arc$nf.swift


t = ""
company:
	mkdir -p ABCSwift/company/$t$n/
	touch ABCSwift/company/$t$n/$t$na.swift
	touch ABCSwift/company/$t$n/$t$nb.swift
	touch ABCSwift/company/$t$n/$t$nc.swift
	touch ABCSwift/company/$t$n/$t$nd.swift
	touch ABCSwift/company/$t$n/$t$ne.swift
	touch ABCSwift/company/$t$n/$t$nf.swift

gen:
	xcodegen

open:gen
	open ABCSwift.xcodeproj

.PHONY: abc company gen open