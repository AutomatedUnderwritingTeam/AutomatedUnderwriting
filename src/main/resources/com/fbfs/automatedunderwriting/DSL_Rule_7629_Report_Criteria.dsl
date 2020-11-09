[when]R7629 Does not have Coverage Verifier Report =
(
(not(TrapCoverageVerifierReport()))
or (TrapCoverageVerifierReport( coverageVerifier.getPolicy().size() == 0 ) )
)
