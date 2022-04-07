/// A (nominal) product type declaration.
public struct ProductTypeDecl: Decl, ScopeOutliner, SourceRepresentable {

  var scopeID: ScopeID

  public var range: SourceRange?

  /// The access modifier of the declaration, if any.
  public var access: AccessModifier?

  /// The identifier of the type.
  public var identifier: Identifier

  /// The generic clause of the declaration, if any.
  public var genericClause: GenericClause?

  /// The names of traits to which the type conforms.
  public var conformances: [NameTypeExpr]

  /// The member declarations in the lexical scope of the trait.
  public var members: [AnyDeclIndex]

  public func accept<V: DeclVisitor>(_ visitor: inout V) -> V.Result {
    visitor.visit(productType: self)
  }

}
