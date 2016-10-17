SetPackageInfo( rec(
PackageName := "test-pkg",
Subtitle := "a really minimal package for testing hosting on GitHub",

Version := "0.1",
Date := "17/10/2016",

##  duplicate these values for inclusion in the manual: 
##  <#GAPDoc Label="PKGVERSIONDATA">
##  <!ENTITY TESTPKGVERSION "0.1">
##  <!ENTITY TESTPKGTARFILENAME "test-pkg-0.1.tar.gz">
##  <!ENTITY TESTPKGHTMLFILENAME "test-pkg.html">
##  <!ENTITY TESTPKGRELEASEDATE "17/10/2016">
##  <!ENTITY TESTPKGLONGRELEASEDATE "17th October 2016">
##  <!ENTITY TESTPKGCOPYRIGHTYEARS "2016">
##  <#/GAPDoc>

Persons := [
  rec(
    LastName      := "Wensley",
    FirstNames    := "Christopher D.",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "cdwensley.maths@btinternet.com",
    WWWHome       := "http://pages.bangor.ac.uk/~mas023/",
    Place         := "Bangor",
    Institution   := "Bangor University"
  )
],

Status := "dev",
## CommunicatedBy := "",
## AcceptDate := "",

SourceRepository := rec( 
  Type := "git", 
  URL := "https://github.com/cdwensley/test-pkg"
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome  := "http://gap-packages.github.io/test-pkg/",
README_URL      := Concatenation( ~.PackageWWWHome, "README" ),
PackageInfoURL  := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
ArchiveURL      := Concatenation( ~.SourceRepository.URL, 
                                  "/releases/download/v", ~.Version, 
                                  "/", ~.PackageName, "-", ~.Version ), 
ArchiveFormats  := ".tar.gz",

AbstractHTML :=
 "The package test-pkg does virtually nothing. The plan is to use it to find a possible glitch in ReleaseTools for GitHub.",

PackageDoc := rec(
  BookName  := "test-pkg",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "A completely trivial GAP package" 
),

Dependencies := rec(
  GAP := ">=4.8",
  NeededOtherPackages := [ [ "GAPDoc", ">= 1.5.1" ]  ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ]
),

AvailabilityTest := ReturnTrue,

BannerString := Concatenation( 
    "Loading test-pkg ", String( ~.Version ), " (a really trivial package)\n", 
    "by Chris Wensley (http://pages.bangor.ac.uk/~mas023/)\n", 
  "-----------------------------------------------------------------------\n" ),

TestFile := "tst/test.tst",

Keywords := [  ]

));
