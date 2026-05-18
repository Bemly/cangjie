package bemlyCJWeb

import std.unittest.testmacro.*
import std.time.*


@Test
func extractTokenTest() {
    var result = extractToken("token=abc123")
    @Expect(result, "abc123")
}

@Test
func extractTokenEmptyTest() {
    var result = extractToken("no_token_here")
    @Expect(result, "")
}

@Test
func extractTokenWithOtherFieldsTest() {
    var result = extractToken("other=data&token=my_token_xyz")
    @Expect(result, "my_token_xyz")
}

@Test
func isTokenValidEmptyTest() {
    validTokens.clear()
    @Expect(isTokenValid(""), false)
}

@Test
func isTokenValidFalseTest() {
    validTokens.clear()
    @Expect(isTokenValid("fake_token"), false)
}

@Test
func isTokenValidTrueTest() {
    validTokens.clear()
    validTokens.add("real_token")
    @Expect(isTokenValid("real_token"), true)
    validTokens.clear()
}

@Test
func isCloudflareSuccessTest() {
    @Expect(isCloudflareSuccess("{\"success\":true}"), true)
}

@Test
func isCloudflareSuccessFalseTest() {
    @Expect(isCloudflareSuccess("{\"success\":false,\"error-codes\":[\"bad-request\"]}"), false)
}

@Test
func checkCircuitBreakerClearTest() {
    validTokens.clear()
    blockUntil = DateTime.UnixEpoch
    var result = checkCircuitBreaker(DateTime.nowUTC())
    @Expect(result, "")
}

@Test
func checkCircuitBreakerBlockedTest() {
    blockUntil = DateTime.nowUTC() + Duration.minute * 10
    var result = checkCircuitBreaker(DateTime.nowUTC())
    @Expect(result.startsWith("blocked for "), true)
    blockUntil = DateTime.UnixEpoch
}

@Test
func checkCircuitBreakerHitsLimitTest() {
    validTokens.clear()
    for (i in 0..20) {
        validTokens.add("token" + i.toString())
    }
    blockUntil = DateTime.UnixEpoch
    var result = checkCircuitBreaker(DateTime.nowUTC())
    @Expect(result, "blocked for 20 min")
    @Expect(validTokens.size, 0)
    blockUntil = DateTime.UnixEpoch
}

@Test
func checkRateLimitFirstRequestTest() {
    rateLimit.clear()
    var result = checkRateLimit("1.2.3.4", DateTime.nowUTC())
    @Expect(result, "")
    rateLimit.clear()
}

@Test
func checkRateLimitSecondRequestTest() {
    rateLimit.clear()
    checkRateLimit("5.6.7.8", DateTime.nowUTC())
    var result = checkRateLimit("5.6.7.8", DateTime.nowUTC())
    @Expect(result, "too many requests")
    rateLimit.clear()
}

@Test
func checkRateLimitDifferentIpTest() {
    rateLimit.clear()
    checkRateLimit("1.1.1.1", DateTime.nowUTC())
    var result = checkRateLimit("2.2.2.2", DateTime.nowUTC())
    @Expect(result, "")
    rateLimit.clear()
}
