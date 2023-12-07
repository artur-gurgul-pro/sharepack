
import Combine
import SPModels
import SPContract

private struct UsersRepositoryKey: InjectionKey {
    static var currentValue: AnyUsersRepository = UsersRepository()
}

public extension InjectedValues {
    var usersRepository: AnyUsersRepository {
        get { Self[UsersRepositoryKey.self] }
        set { Self[UsersRepositoryKey.self] = newValue }
    }
}

public final class UsersRepository: AnyUsersRepository {
    public func getAll() -> AnyPublisher<User, Error> {
        [User(id: 1, name: "Artur"), User(id: 2, name: "Michał")]
            .publisher
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
