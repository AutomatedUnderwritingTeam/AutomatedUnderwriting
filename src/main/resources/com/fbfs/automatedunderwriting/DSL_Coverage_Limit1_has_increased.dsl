[when] The coverage has a limit1 that has increased = eval(coverage.getLimit1() != null && 
coverage.getPreviousLimit1() != null &&
(coverage.getLimit1() > coverage.getPreviousLimit1()))
