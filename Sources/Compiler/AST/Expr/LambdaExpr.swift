/// A lambda.
public struct LambdaExpr: Expr {

  public static let kind = NodeKind.lambdaExpr

  /// The declaration of the underlying anonymous function.
  public let decl: NodeID<FunctionDecl>

  public init(decl: NodeID<FunctionDecl>) {
    self.decl = decl
  }

}
