MODULE Definitions;  (** the interface of a module, shown by the browser of this machine *)

(** Definitions.ShowDef Module  shows the exported constants, types, variables and procedures of
  Module (as Definitions.Tool does for its names), with XBrowser on x86, ABrowser on ARM and
  RBrowser on ARMv7, RISC-V, MIPS and PowerPC: each reads the symbol files of its compiler. *)

IMPORT Linux0, Oberon;

PROCEDURE ShowDef*;
VAR res: INTEGER;
BEGIN
  IF Linux0.ARCH = "X86" THEN Oberon.Call("XBrowser.ShowDef", Oberon.Par, FALSE, res)
  ELSIF Linux0.ARCH = "ARM" THEN Oberon.Call("ABrowser.ShowDef", Oberon.Par, FALSE, res)
  ELSE Oberon.Call("RBrowser.ShowDef", Oberon.Par, FALSE, res)
  END
END ShowDef;

END Definitions.
