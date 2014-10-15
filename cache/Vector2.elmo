Elm.Vector2 = Elm.Vector2 || {};
Elm.Vector2.make = function (_elm) {
   "use strict";
   _elm.Vector2 = _elm.Vector2 || {};
   if (_elm.Vector2.values)
   return _elm.Vector2.values;
   var _op = {},
   _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _A = _N.Array.make(_elm),
   _E = _N.Error.make(_elm),
   $moduleName = "Vector2",
   $Basics = Elm.Basics.make(_elm);
   var mannhattanNorm = function (v) {
      return $Basics.abs(v.x) + $Basics.abs(v.y);
   };
   var norm = F2(function (n,v) {
      return Math.pow(Math.pow(v.x,
      n) + Math.pow(v.y,n),
      1 / n);
   });
   var length = norm(2);
   _op["<.>"] = F2(function (p,q) {
      return p.x * q.x + p.y * q.y;
   });
   var dotMultiply = F2(function (x,
   y) {
      return A2(_op["<.>"],x,y);
   });
   var dot = dotMultiply;
   var Vector = F2(function (a,b) {
      return {_: {},x: a,y: b};
   });
   var origin = A2(Vector,0,0);
   var xUnit = A2(Vector,1,0);
   var yUnit = A2(Vector,0,1);
   _op["<+>"] = F2(function (p,q) {
      return A2(Vector,
      p.x + q.x,
      p.y + q.y);
   });
   var add = F2(function (x,y) {
      return A2(_op["<+>"],x,y);
   });
   _op["<->"] = F2(function (p,q) {
      return A2(Vector,
      p.x - q.x,
      p.y - q.y);
   });
   var subtract = F2(function (x,
   y) {
      return A2(_op["<->"],x,y);
   });
   var sub = subtract;
   var distance = F2(function (p,
   q) {
      return length(A2(_op["<->"],
      p,
      q));
   });
   var mannhattanDistance = F2(function (p,
   q) {
      return mannhattanNorm(A2(_op["<->"],
      p,
      q));
   });
   _op["<*>"] = F2(function (p,q) {
      return A2(Vector,
      p.x * q.x,
      p.y * q.y);
   });
   var multiply = F2(function (x,
   y) {
      return A2(_op["<*>"],x,y);
   });
   var mul = multiply;
   _op["</>"] = F2(function (p,q) {
      return A2(Vector,
      p.x / q.x,
      p.y / q.y);
   });
   var divide = F2(function (x,y) {
      return A2(_op["</>"],x,y);
   });
   var div = divide;
   var scaleBy = F2(function (n,
   v) {
      return A2(Vector,
      v.x * n,
      v.y * n);
   });
   _elm.Vector2.values = {_op: _op
                         ,Vector: Vector
                         ,origin: origin
                         ,xUnit: xUnit
                         ,yUnit: yUnit
                         ,add: add
                         ,subtract: subtract
                         ,sub: sub
                         ,multiply: multiply
                         ,mul: mul
                         ,divide: divide
                         ,div: div
                         ,dotMultiply: dotMultiply
                         ,dot: dot
                         ,norm: norm
                         ,mannhattanNorm: mannhattanNorm
                         ,length: length
                         ,scaleBy: scaleBy
                         ,distance: distance
                         ,mannhattanDistance: mannhattanDistance};
   return _elm.Vector2.values;
};