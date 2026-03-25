import Testing

//extension Tag {
//    @Tag static var critical: Self
//    @Tag static var network: Self
//    @Tag static var normal: Self
//}

//@Suite("Hello World Tests")
//@Tag(.normal)
struct HWTests {
    @Test func helloWorldV2() {
        print("Hello, Nobody")
        #expect(true)
    }
}
