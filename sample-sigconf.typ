#import "sigconf.typ": sigconf
#show: sigconf.with(
  title: "A sample title",
  subtitle: "A sample subtitle",
  authors: (
    (name: "Louis Bourbon",
    department: "Computer Science",
    organization: "University of Somewhere",
    location: "Somewhere",
    email: "some.email@provider.com"),
    (name: "Huge Capet",
    department: "Computer Science",
    organization: "University of Somewhere",
    location: "Somewhere",
    email: "other.email@provice.com"),
  ),
  main-fig: (
    captions: "A vue of Annecy's Lake from a former Hospital",
    path: "Images/annecy_lake.jpg",
  ),
  conference: (
    name: [Special Interest Group on Computer Graphics and Interactive Techniques Conference Talks],
    short: [SIGGRAPH Talks '25],
    year: [2025],
    date: [August 10-16],
    venue: [Vancover, BC, Canada],
  ),
  abstract: [#lorem(120)],

)
= Introduction
#lorem(90)

== Motivation
#lorem(140)

== Problem Statement
#lorem(50) @annecylake

= Related Work
#lorem(200)

= Future Work
#lorem(300)

== A closer look
#lorem(300)

#bibliography("basic.yml")