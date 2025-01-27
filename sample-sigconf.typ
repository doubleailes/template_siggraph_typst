#import "acmart.typ": acmart
#show: acmart.with(
  title: "A sample title",
  subtitle: "A sample subtitle",
  authors: (
    (name: "Louis Bourbon",
    department: "Computer Science",
    institution: "University of Somewhere",
    city: "Somewhere",
    email: "some.email@provider.com"),
    (name: "Huge Capet",
    department: "Computer Science",
    institution: "University of Somewhere",
    city: "Somewhere",
    email: "other.email@provice.com"),
  ),
  abstract: "A sample abstract",

)
= Introduction
#lorem(90)

== Motivation
#lorem(140)

== Problem Statement
#lorem(50)

= Related Work
#lorem(200)

= Future Work
#lorem(300)