Package A
- Library X
-- Dependency 1
-- Dependency 2
-- Dependency 3
- Library Y
-- Dependency 4

Package B
- Library Z
-- Dependency - Package B, Library Y

Library Z
- Class DoMagic imports LibraryY
