enum Day10_LoadState: Equatable {
    case idle
    case loading
    case loaded(String)
    case fail(String)
}
