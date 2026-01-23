#if canImport(AppIntents)
import AppIntents

extension UUIDV7: EntityIdentifierConvertible {
    public var entityIdentifierString: String {
        self.rawValue.entityIdentifierString
    }

    public static func entityIdentifier(for entityIdentifierString: String) -> Self? {
        UUID.entityIdentifier(for: entityIdentifierString).flatMap(Self.init(rawValue:))
    }
}
#endif
