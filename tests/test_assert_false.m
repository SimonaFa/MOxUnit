function test_suite=test_assert_false()
    initTestSuite;

function test_assert_false_exceptions
    assertExceptionThrown(@()assertFalse(...
                                true),...
                                        'MOxUnit:notFalse');
    assertExceptionThrown(@()assertFalse(...
                                struct),...
                                        'MOxUnit:notLogicalScalar');
    assertExceptionThrown(@()assertFalse(...
                                [false false]),...
                                        'MOxUnit:notLogicalScalar');

function test_assert_false_passes
    assertFalse(false);
