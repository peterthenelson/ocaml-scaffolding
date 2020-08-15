open! Base
open Lib

(* Passing tests
 * $ dune runtest *)

(* let%test checks that a boolean expression is true *)
let%test "let%test with string equality" =
  String.( = ) "Some 1" (Fmt.str "%a" Fmt.(pp_option int) (Some 1))

(* let%test_unit checks that no exceptions are thrown *)
let%test_unit "let%test_unit with no exceptions" =
  Fmt.pr "%a\n" Fmt.(pp_pair int string) (1, "asdf")

(* let%expect_test does a multiline string diff between the output of the test
 * code and the expectation *)
let%expect_test "let%expect_test with multiline diff" =
  Fmt.pr "%a -- %a" Fmt.(pp_option int) None Fmt.(pp_pair int int) (1, 2);
  [%expect{|None -- (1, 2)|}]

(* let%test_module allows for common setup *)

(* Failing tests
 * TODO *)
