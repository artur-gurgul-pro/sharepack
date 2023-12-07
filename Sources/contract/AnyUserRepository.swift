
import Combine
import SPModels

public protocol AnyUsersRepository {
    func getAll() -> AnyPublisher<User, Error>
}
