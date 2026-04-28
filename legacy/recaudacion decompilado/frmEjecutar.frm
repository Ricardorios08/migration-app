VERSION 5.00
Begin VB.Form frmEjecutar
  Caption = "Procesos Especiales"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 10704
  ClientHeight = 8916
  Begin VB.CommandButton ListadodeDeudaCmd
    Caption = "Listado de Deuda Completo (Capital, Recargo, Apremio) 03-06-2024 - 2"
    Left = 4920
    Top = 5640
    Width = 2412
    Height = 612
    TabIndex = 10
  End
  Begin VB.CommandButton Saca20Cmd
    Caption = "Procesos Varios"
    Left = 4920
    Top = 4680
    Width = 2295
    Height = 615
    TabIndex = 9
  End
  Begin VB.CommandButton AforosCementerioCmd
    Caption = "Aforos de Cementerio     SAN CARLOS"
    Left = 5040
    Top = 3480
    Width = 2175
    Height = 495
    TabIndex = 8
  End
  Begin VB.CommandButton FechaCteCteDetaCmd
    Caption = "Fecha de CtacteDeta"
    Left = 5040
    Top = 2400
    Width = 2175
    Height = 495
    TabIndex = 7
  End
  Begin VB.CommandButton PagoAnticipadoCmd
    Caption = "Pagos Anticipados"
    Left = 5040
    Top = 1560
    Width = 2175
    Height = 495
    TabIndex = 6
  End
  Begin VB.CommandButton CreditosAutomaticosCmd
    Caption = "Créditos Automáticos Pago Anual Lavalle - Malargue"
    Left = 5040
    Top = 720
    Width = 2175
    Height = 495
    TabIndex = 5
  End
  Begin VB.CommandButton ApremioInstanciaCmd
    Caption = "Detecta Instanacia de Apremio distintas de las Instancias"
    Left = 2160
    Top = 4680
    Width = 2175
    Height = 615
    TabIndex = 4
  End
  Begin VB.CommandButton FacilidadCmd
    Caption = "Detectar Ultima Cuota de la Facilidad de Pago"
    Left = 2160
    Top = 3360
    Width = 2175
    Height = 615
    TabIndex = 3
  End
  Begin VB.CommandButton PrescripcionCmd
    Caption = "PRESCRIPCIÓN DE DEUDA"
    Left = 2160
    Top = 1560
    Width = 2175
    Height = 495
    TabIndex = 2
  End
  Begin VB.CommandButton Proceso1Cmd
    Caption = "Listado de Apremio (Especial)"
    Left = 2160
    Top = 2400
    Width = 2175
    Height = 615
    TabIndex = 1
  End
  Begin VB.CommandButton cmdSalir
    Left = 8280
    Top = 360
    Width = 975
    Height = 855
    TabIndex = 0
    Picture = "frmEjecutar.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
End

Attribute VB_Name = "frmEjecutar"


Private Sub cmdSalir_Click() '9D447C
  'Data Table: 43D73C
  loc_9D4464: ILdRf Me
  loc_9D4467: FStAdNoPop
  loc_9D446B: ImpAdLdRf MemVar_D9C5D8
  loc_9D446E: NewIfNullPr Global
  loc_9D4471: Global.Unload from_stack_1
  loc_9D4476: FFree1Ad var_88
  loc_9D4479: ExitProcHresult
End Sub

Private Sub AforosCementerioCmd_Click() '9AF0DC
  'Data Table: 43D73C
  loc_9AF0D8: ExitProcHresult
End Sub

Private Sub FacilidadCmd_Click() 'B16A64
  'Data Table: 43D73C
  loc_B1682C: LitI2_Byte &HB
  loc_B1682E: FLdPr Me
  loc_B16831: Me.MousePointer = from_stack_1
  loc_B16836: LitStr "SELECT * FROM facipago"
  loc_B16839: LitStr " WHERE EstaFapa = 'Activa' AND AltaUsua = 'migra'"
  loc_B1683C: ConcatStr
  loc_B1683D: FStStrNoPop var_88
  loc_B16840: FLdPr Me
  loc_B16843: MemLdRfVar from_stack_1.global_68
  loc_B16846: NewIfNullPr clsfacipago
  loc_B16849: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_B1684E: FFree1Str var_88
  loc_B16851: FLdRfVar var_8C
  loc_B16854: FLdPr Me
  loc_B16857: MemLdRfVar from_stack_1.global_68
  loc_B1685A: NewIfNullPr clsfacipago
  loc_B1685D: from_stack_1 = clsfacipago.RecordCount
  loc_B16862: ILdRf var_8C
  loc_B16865: LitI4 0
  loc_B1686A: GtI4
  loc_B1686B: BranchF loc_B16A59
  loc_B1686E: FLdPr Me
  loc_B16871: MemLdRfVar from_stack_1.global_68
  loc_B16874: NewIfNullPr clsfacipago
  loc_B16877: Call clsfacipago.MoveFirst()
  loc_B1687C: FLdRfVar var_8E
  loc_B1687F: FLdPr Me
  loc_B16882: MemLdRfVar from_stack_1.global_68
  loc_B16885: NewIfNullPr clsfacipago
  loc_B16888: from_stack_1 = clsfacipago.EOF
  loc_B1688D: FLdI2 var_8E
  loc_B16890: NotI4
  loc_B16891: BranchF loc_B16A59
  loc_B16894: LitStr "SELECT * FROM ctacte"
  loc_B16897: LitStr " WHERE CodiOfic = "
  loc_B1689A: ConcatStr
  loc_B1689B: CVarStr var_CC
  loc_B1689E: FLdRfVar var_BC
  loc_B168A1: FLdRfVar var_AC
  loc_B168A4: LitVarStr var_A8, "CodiOfic"
  loc_B168A9: PopAdLdVar
  loc_B168AA: FLdRfVar var_98
  loc_B168AD: FLdRfVar var_94
  loc_B168B0: FLdPr Me
  loc_B168B3: MemLdRfVar from_stack_1.global_68
  loc_B168B6: NewIfNullPr clsfacipago
  loc_B168B9: from_stack_1v = clsfacipago.RsFrmGet()
  loc_B168BE: FLdPr var_94
  loc_B168C1:  = Me.Fields
  loc_B168C6: FLdPr var_98
  loc_B168C9: from_stack_2 = Me.Item(from_stack_1)
  loc_B168CE: FLdPr var_AC
  loc_B168D1:  = Me.Value
  loc_B168D6: FLdRfVar var_BC
  loc_B168D9: ConcatVar var_DC
  loc_B168DD: LitVarStr var_EC, " AND CuenCtct = '"
  loc_B168E2: ConcatVar var_FC
  loc_B168E6: FLdRfVar var_128
  loc_B168E9: FLdRfVar var_118
  loc_B168EC: LitVarStr var_114, "CuenCtct"
  loc_B168F1: PopAdLdVar
  loc_B168F2: FLdRfVar var_104
  loc_B168F5: FLdRfVar var_100
  loc_B168F8: FLdPr Me
  loc_B168FB: MemLdRfVar from_stack_1.global_68
  loc_B168FE: NewIfNullPr clsfacipago
  loc_B16901: from_stack_1v = clsfacipago.RsFrmGet()
  loc_B16906: FLdPr var_100
  loc_B16909:  = Me.Fields
  loc_B1690E: FLdPr var_104
  loc_B16911: from_stack_2 = Me.Item(from_stack_1)
  loc_B16916: FLdPr var_118
  loc_B16919:  = Me.Value
  loc_B1691E: FLdRfVar var_128
  loc_B16921: ConcatVar var_138
  loc_B16925: LitVarStr var_148, "'"
  loc_B1692A: ConcatVar var_158
  loc_B1692E: LitVarStr var_168, " AND CodiFapa = "
  loc_B16933: ConcatVar var_178
  loc_B16937: FLdRfVar var_1A4
  loc_B1693A: FLdRfVar var_194
  loc_B1693D: LitVarStr var_190, "CodiFapa"
  loc_B16942: PopAdLdVar
  loc_B16943: FLdRfVar var_180
  loc_B16946: FLdRfVar var_17C
  loc_B16949: FLdPr Me
  loc_B1694C: MemLdRfVar from_stack_1.global_68
  loc_B1694F: NewIfNullPr clsfacipago
  loc_B16952: from_stack_1v = clsfacipago.RsFrmGet()
  loc_B16957: FLdPr var_17C
  loc_B1695A:  = Me.Fields
  loc_B1695F: FLdPr var_180
  loc_B16962: from_stack_2 = Me.Item(from_stack_1)
  loc_B16967: FLdPr var_194
  loc_B1696A:  = Me.Value
  loc_B1696F: FLdRfVar var_1A4
  loc_B16972: ConcatVar var_1B4
  loc_B16976: CStrVarVal var_88
  loc_B1697A: FLdPr Me
  loc_B1697D: MemLdRfVar from_stack_1.global_72
  loc_B16980: NewIfNullPr clsdetafapa
  loc_B16983: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_B16988: FFree1Str var_88
  loc_B1698B: FFreeAd var_94 = "": var_98 = "": var_AC = "": var_100 = "": var_104 = "": var_118 = "": var_17C = "": var_180 = ""
  loc_B169A0: FFreeVar var_CC = "": var_BC = "": var_DC = "": var_FC = "": var_128 = "": var_138 = "": var_158 = "": var_178 = "": var_1A4 = ""
  loc_B169B7: FLdRfVar var_8C
  loc_B169BA: FLdPr Me
  loc_B169BD: MemLdRfVar from_stack_1.global_72
  loc_B169C0: NewIfNullPr clsdetafapa
  loc_B169C3: from_stack_1 = clsdetafapa.RecordCount
  loc_B169C8: ILdRf var_8C
  loc_B169CB: LitI4 0
  loc_B169D0: EqI4
  loc_B169D1: BranchF loc_B16A48
  loc_B169D4: LitVarStr var_EC, " UPDATE facipago SET EstaFapa = 'Anulada', BajaUsua = 'root', BajaFeho = NOW(), BajaMoti = 'No Existe en ctacte' WHERE CodiFapa = "
  loc_B169D9: FLdRfVar var_BC
  loc_B169DC: FLdRfVar var_AC
  loc_B169DF: LitVarStr var_A8, "CodiFapa"
  loc_B169E4: PopAdLdVar
  loc_B169E5: FLdRfVar var_98
  loc_B169E8: FLdRfVar var_94
  loc_B169EB: FLdPr Me
  loc_B169EE: MemLdRfVar from_stack_1.global_68
  loc_B169F1: NewIfNullPr clsfacipago
  loc_B169F4: from_stack_1v = clsfacipago.RsFrmGet()
  loc_B169F9: FLdPr var_94
  loc_B169FC:  = Me.Fields
  loc_B16A01: FLdPr var_98
  loc_B16A04: from_stack_2 = Me.Item(from_stack_1)
  loc_B16A09: FLdPr var_AC
  loc_B16A0C:  = Me.Value
  loc_B16A11: FLdRfVar var_BC
  loc_B16A14: ConcatVar var_CC
  loc_B16A18: LitVarStr var_114, ";"
  loc_B16A1D: ConcatVar var_DC
  loc_B16A21: CStrVarVal var_88
  loc_B16A25: FLdPr Me
  loc_B16A28: MemLdRfVar from_stack_1.global_64
  loc_B16A2B: NewIfNullPr clsctacte
  loc_B16A2E: Call clsctacte.EjecutarRsCls(from_stack_1v)
  loc_B16A33: FFree1Str var_88
  loc_B16A36: FFreeAd var_94 = "": var_98 = ""
  loc_B16A3F: FFreeVar var_BC = "": var_CC = ""
  loc_B16A48: FLdPr Me
  loc_B16A4B: MemLdRfVar from_stack_1.global_68
  loc_B16A4E: NewIfNullPr clsfacipago
  loc_B16A51: Call clsfacipago.MoveSiguiente()
  loc_B16A56: Branch loc_B1687C
  loc_B16A59: LitI2_Byte 0
  loc_B16A5B: FLdPr Me
  loc_B16A5E: Me.MousePointer = from_stack_1
  loc_B16A63: ExitProcHresult
End Sub

Private Sub ApremioInstanciaCmd_Click() '9AF1AC
  'Data Table: 43D73C
  loc_9AF1A8: ExitProcHresult
End Sub

Private Sub FechaCteCteDetaCmd_Click() '9AEC64
  'Data Table: 43D73C
  loc_9AEC60: ExitProcHresult
End Sub

Private Sub CreditosAutomaticosCmd_Click() 'B7F68C
  'Data Table: 43D73C
  loc_B7F1F8: LitI2_Byte &HB
  loc_B7F1FA: FLdPr Me
  loc_B7F1FD: Me.MousePointer = from_stack_1
  loc_B7F202: LitI2_Byte 0
  loc_B7F204: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B7F209: FStFPR8 var_90
  loc_B7F20C: LitStr "SELECT * FROM boleto WHERE PeriBole = 2024 AND CodiOfic = 1 AND CodiTili = 1 "
  loc_B7F20F: LitStr " AND NumeLiqu > 0 AND boleto.TipoBole = 'Anual'"
  loc_B7F212: ConcatStr
  loc_B7F213: FStStrNoPop var_94
  loc_B7F216: LitStr " AND EstaBole = 'Actualizado';"
  loc_B7F219: ConcatStr
  loc_B7F21A: FStStrNoPop var_98
  loc_B7F21D: FLdPr Me
  loc_B7F220: MemLdRfVar from_stack_1.global_80
  loc_B7F223: NewIfNullPr clsboleto
  loc_B7F226: Call clsboleto.RedefineRS(from_stack_1v)
  loc_B7F22B: FFreeStr var_94 = ""
  loc_B7F232: FLdRfVar var_9C
  loc_B7F235: FLdPr Me
  loc_B7F238: MemLdRfVar from_stack_1.global_80
  loc_B7F23B: NewIfNullPr clsboleto
  loc_B7F23E: from_stack_1 = clsboleto.RecordCount
  loc_B7F243: ILdRf var_9C
  loc_B7F246: LitI4 0
  loc_B7F24B: GtI4
  loc_B7F24C: BranchF loc_B7F680
  loc_B7F24F: FLdPr Me
  loc_B7F252: MemLdRfVar from_stack_1.global_80
  loc_B7F255: NewIfNullPr clsboleto
  loc_B7F258: Call clsboleto.MoveFirst()
  loc_B7F25D: FLdRfVar var_9E
  loc_B7F260: FLdPr Me
  loc_B7F263: MemLdRfVar from_stack_1.global_80
  loc_B7F266: NewIfNullPr clsboleto
  loc_B7F269: from_stack_1 = clsboleto.EOF
  loc_B7F26E: FLdI2 var_9E
  loc_B7F271: NotI4
  loc_B7F272: BranchF loc_B7F680
  loc_B7F275: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte;"
  loc_B7F278: LitStr " CREATE TEMPORARY TABLE tmp_ctacte"
  loc_B7F27B: ConcatStr
  loc_B7F27C: FStStrNoPop var_94
  loc_B7F27F: LitStr " SELECT ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct FROM ctacte "
  loc_B7F282: ConcatStr
  loc_B7F283: FStStrNoPop var_98
  loc_B7F286: LitStr " WHERE Codiofic = "
  loc_B7F289: ConcatStr
  loc_B7F28A: CVarStr var_DC
  loc_B7F28D: FLdRfVar var_CC
  loc_B7F290: FLdRfVar var_BC
  loc_B7F293: LitVarStr var_B8, "CodiOfic"
  loc_B7F298: PopAdLdVar
  loc_B7F299: FLdRfVar var_A8
  loc_B7F29C: FLdRfVar var_A4
  loc_B7F29F: FLdPr Me
  loc_B7F2A2: MemLdRfVar from_stack_1.global_80
  loc_B7F2A5: NewIfNullPr clsboleto
  loc_B7F2A8: from_stack_1v = clsboleto.RsFrmGet()
  loc_B7F2AD: FLdPr var_A4
  loc_B7F2B0:  = Me.Fields
  loc_B7F2B5: FLdPr var_A8
  loc_B7F2B8: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F2BD: FLdPr var_BC
  loc_B7F2C0:  = Me.Value
  loc_B7F2C5: FLdRfVar var_CC
  loc_B7F2C8: ConcatVar var_EC
  loc_B7F2CC: LitVarStr var_FC, " AND CuenCtct = '"
  loc_B7F2D1: ConcatVar var_10C
  loc_B7F2D5: LitVarStr var_11C, "CuenCtct"
  loc_B7F2DA: PopAdLdVar
  loc_B7F2DB: FLdPr Me
  loc_B7F2DE: MemLdRfVar from_stack_1.global_80
  loc_B7F2E1: NewIfNullPr clsboleto
  loc_B7F2E4: LateIdCallLdVar
  loc_B7F2EE: ConcatVar var_14C
  loc_B7F2F2: LitVarStr var_15C, "'"
  loc_B7F2F7: ConcatVar var_16C
  loc_B7F2FB: LitVarStr var_17C, " AND PeriCtct = 2024 AND BimeCtct IN (3,4) AND FealCtct = '2024-08-09'"
  loc_B7F300: ConcatVar var_18C
  loc_B7F304: LitVarStr var_19C, " AND MOviCtct = 1"
  loc_B7F309: ConcatVar var_1AC
  loc_B7F30D: LitVarStr var_1BC, " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct;"
  loc_B7F312: ConcatVar var_1CC
  loc_B7F316: CStrVarVal var_1D0
  loc_B7F31A: FLdPr Me
  loc_B7F31D: MemLdRfVar from_stack_1.global_64
  loc_B7F320: NewIfNullPr clsctacte
  loc_B7F323: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B7F328: FFreeStr var_94 = "": var_98 = ""
  loc_B7F331: FFreeAd var_A4 = "": var_A8 = ""
  loc_B7F33A: FFreeVar var_DC = "": var_CC = "": var_EC = "": var_10C = "": var_13C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = ""
  loc_B7F351: FLdRfVar var_9C
  loc_B7F354: FLdPr Me
  loc_B7F357: MemLdRfVar from_stack_1.global_64
  loc_B7F35A: NewIfNullPr clsctacte
  loc_B7F35D: from_stack_1 = clsctacte.RecordCount
  loc_B7F362: ILdRf var_9C
  loc_B7F365: LitI4 0
  loc_B7F36A: GtI4
  loc_B7F36B: BranchF loc_B7F66F
  loc_B7F36E: FLdPr Me
  loc_B7F371: MemLdRfVar from_stack_1.global_64
  loc_B7F374: NewIfNullPr clsctacte
  loc_B7F377: Call clsctacte.MoveFirst()
  loc_B7F37C: FLdRfVar var_9E
  loc_B7F37F: FLdPr Me
  loc_B7F382: MemLdRfVar from_stack_1.global_64
  loc_B7F385: NewIfNullPr clsctacte
  loc_B7F388: from_stack_1 = clsctacte.EOF
  loc_B7F38D: FLdI2 var_9E
  loc_B7F390: NotI4
  loc_B7F391: BranchF loc_B7F66F
  loc_B7F394: LitStr " SELECT ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, PeriBole, NumeBole, TipoCtct, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, SUM(DebeCtct)-SUM(CredCtct) Saldo FROM ctacte "
  loc_B7F397: LitStr " WHERE Codiofic = "
  loc_B7F39A: ConcatStr
  loc_B7F39B: CVarStr var_DC
  loc_B7F39E: FLdRfVar var_CC
  loc_B7F3A1: FLdRfVar var_BC
  loc_B7F3A4: LitVarStr var_B8, "CodiOfic"
  loc_B7F3A9: PopAdLdVar
  loc_B7F3AA: FLdRfVar var_A8
  loc_B7F3AD: FLdRfVar var_A4
  loc_B7F3B0: FLdPr Me
  loc_B7F3B3: MemLdRfVar from_stack_1.global_64
  loc_B7F3B6: NewIfNullPr clsctacte
  loc_B7F3B9: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7F3BE: FLdPr var_A4
  loc_B7F3C1:  = Me.Fields
  loc_B7F3C6: FLdPr var_A8
  loc_B7F3C9: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F3CE: FLdPr var_BC
  loc_B7F3D1:  = Me.Value
  loc_B7F3D6: FLdRfVar var_CC
  loc_B7F3D9: ConcatVar var_EC
  loc_B7F3DD: LitVarStr var_FC, " AND CuenCtct = '"
  loc_B7F3E2: ConcatVar var_10C
  loc_B7F3E6: FLdRfVar var_13C
  loc_B7F3E9: FLdRfVar var_1DC
  loc_B7F3EC: LitVarStr var_11C, "CuenCtct"
  loc_B7F3F1: PopAdLdVar
  loc_B7F3F2: FLdRfVar var_1D8
  loc_B7F3F5: FLdRfVar var_1D4
  loc_B7F3F8: FLdPr Me
  loc_B7F3FB: MemLdRfVar from_stack_1.global_64
  loc_B7F3FE: NewIfNullPr clsctacte
  loc_B7F401: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7F406: FLdPr var_1D4
  loc_B7F409:  = Me.Fields
  loc_B7F40E: FLdPr var_1D8
  loc_B7F411: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F416: FLdPr var_1DC
  loc_B7F419:  = Me.Value
  loc_B7F41E: FLdRfVar var_13C
  loc_B7F421: ConcatVar var_14C
  loc_B7F425: LitVarStr var_12C, "'"
  loc_B7F42A: ConcatVar var_16C
  loc_B7F42E: LitVarStr var_15C, " AND PeriCtct = "
  loc_B7F433: ConcatVar var_18C
  loc_B7F437: FLdRfVar var_1AC
  loc_B7F43A: FLdRfVar var_1E8
  loc_B7F43D: LitVarStr var_17C, "PeriCtct"
  loc_B7F442: PopAdLdVar
  loc_B7F443: FLdRfVar var_1E4
  loc_B7F446: FLdRfVar var_1E0
  loc_B7F449: FLdPr Me
  loc_B7F44C: MemLdRfVar from_stack_1.global_64
  loc_B7F44F: NewIfNullPr clsctacte
  loc_B7F452: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7F457: FLdPr var_1E0
  loc_B7F45A:  = Me.Fields
  loc_B7F45F: FLdPr var_1E4
  loc_B7F462: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F467: FLdPr var_1E8
  loc_B7F46A:  = Me.Value
  loc_B7F46F: FLdRfVar var_1AC
  loc_B7F472: ConcatVar var_1CC
  loc_B7F476: LitVarStr var_19C, " AND BimeCtct = "
  loc_B7F47B: ConcatVar var_1F8
  loc_B7F47F: FLdRfVar var_214
  loc_B7F482: FLdRfVar var_204
  loc_B7F485: LitVarStr var_1BC, "BimeCtct"
  loc_B7F48A: PopAdLdVar
  loc_B7F48B: FLdRfVar var_200
  loc_B7F48E: FLdRfVar var_1FC
  loc_B7F491: FLdPr Me
  loc_B7F494: MemLdRfVar from_stack_1.global_64
  loc_B7F497: NewIfNullPr clsctacte
  loc_B7F49A: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7F49F: FLdPr var_1FC
  loc_B7F4A2:  = Me.Fields
  loc_B7F4A7: FLdPr var_200
  loc_B7F4AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F4AF: FLdPr var_204
  loc_B7F4B2:  = Me.Value
  loc_B7F4B7: FLdRfVar var_214
  loc_B7F4BA: ConcatVar var_224
  loc_B7F4BE: LitVarStr var_234, " AND NumeCtct= "
  loc_B7F4C3: ConcatVar var_244
  loc_B7F4C7: FLdRfVar var_270
  loc_B7F4CA: FLdRfVar var_260
  loc_B7F4CD: LitVarStr var_25C, "NumeCtct"
  loc_B7F4D2: PopAdLdVar
  loc_B7F4D3: FLdRfVar var_24C
  loc_B7F4D6: FLdRfVar var_248
  loc_B7F4D9: FLdPr Me
  loc_B7F4DC: MemLdRfVar from_stack_1.global_64
  loc_B7F4DF: NewIfNullPr clsctacte
  loc_B7F4E2: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7F4E7: FLdPr var_248
  loc_B7F4EA:  = Me.Fields
  loc_B7F4EF: FLdPr var_24C
  loc_B7F4F2: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F4F7: FLdPr var_260
  loc_B7F4FA:  = Me.Value
  loc_B7F4FF: FLdRfVar var_270
  loc_B7F502: ConcatVar var_280
  loc_B7F506: LitVarStr var_290, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct;"
  loc_B7F50B: ConcatVar var_2A0
  loc_B7F50F: CStrVarVal var_94
  loc_B7F513: FLdPr Me
  loc_B7F516: MemLdRfVar from_stack_1.global_60
  loc_B7F519: NewIfNullPr clsctacte
  loc_B7F51C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B7F521: FFree1Str var_94
  loc_B7F524: FFreeAd var_A4 = "": var_A8 = "": var_BC = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1FC = "": var_200 = "": var_204 = "": var_248 = "": var_24C = ""
  loc_B7F545: FFreeVar var_DC = "": var_CC = "": var_EC = "": var_10C = "": var_13C = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1CC = "": var_1F8 = "": var_214 = "": var_224 = "": var_244 = "": var_270 = "": var_280 = ""
  loc_B7F56A: FLdRfVar var_9C
  loc_B7F56D: FLdPr Me
  loc_B7F570: MemLdRfVar from_stack_1.global_60
  loc_B7F573: NewIfNullPr clsctacte
  loc_B7F576: from_stack_1 = clsctacte.RecordCount
  loc_B7F57B: ILdRf var_9C
  loc_B7F57E: LitI4 0
  loc_B7F583: GtI4
  loc_B7F584: BranchF loc_B7F65E
  loc_B7F587: FLdRfVar var_CC
  loc_B7F58A: FLdRfVar var_BC
  loc_B7F58D: LitVarStr var_B8, "SaldCtct"
  loc_B7F592: PopAdLdVar
  loc_B7F593: FLdRfVar var_A8
  loc_B7F596: FLdRfVar var_A4
  loc_B7F599: FLdPr Me
  loc_B7F59C: MemLdRfVar from_stack_1.global_60
  loc_B7F59F: NewIfNullPr clsctacte
  loc_B7F5A2: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7F5A7: FLdPr var_A4
  loc_B7F5AA:  = Me.Fields
  loc_B7F5AF: FLdPr var_A8
  loc_B7F5B2: from_stack_2 = Me.Item(from_stack_1)
  loc_B7F5B7: FLdPr var_BC
  loc_B7F5BA:  = Me.Value
  loc_B7F5BF: FLdRfVar var_CC
  loc_B7F5C2: FnCDblVar
  loc_B7F5C4: LitI2_Byte 0
  loc_B7F5C6: CR8I2
  loc_B7F5C7: GtR4
  loc_B7F5C8: FFreeAd var_A4 = "": var_A8 = ""
  loc_B7F5D1: FFree1Var var_CC = ""
  loc_B7F5D4: BranchF loc_B7F65E
  loc_B7F5D7: FLdRfVar var_9E
  loc_B7F5DA: FLdPr Me
  loc_B7F5DD: MemLdRfVar from_stack_1.global_60
  loc_B7F5E0: NewIfNullPr clsctacte
  loc_B7F5E3: from_stack_1 = clsctacte.CodiOfic
  loc_B7F5E8: FLdRfVar var_94
  loc_B7F5EB: FLdPr Me
  loc_B7F5EE: MemLdRfVar from_stack_1.global_60
  loc_B7F5F1: NewIfNullPr clsctacte
  loc_B7F5F4: from_stack_1 = clsctacte.CuenCtct
  loc_B7F5F9: FLdRfVar var_2A2
  loc_B7F5FC: FLdPr Me
  loc_B7F5FF: MemLdRfVar from_stack_1.global_60
  loc_B7F602: NewIfNullPr clsctacte
  loc_B7F605: from_stack_1 = clsctacte.PeriCtct
  loc_B7F60A: FLdRfVar var_2A4
  loc_B7F60D: FLdPr Me
  loc_B7F610: MemLdRfVar from_stack_1.global_60
  loc_B7F613: NewIfNullPr clsctacte
  loc_B7F616: from_stack_1 = clsctacte.BimeCtct
  loc_B7F61B: FLdRfVar var_9C
  loc_B7F61E: FLdPr Me
  loc_B7F621: MemLdRfVar from_stack_1.global_60
  loc_B7F624: NewIfNullPr clsctacte
  loc_B7F627: from_stack_1 = clsctacte.NumeCtct
  loc_B7F62C: FLdRfVar var_2A6
  loc_B7F62F: ILdRf var_9C
  loc_B7F632: FLdI2 var_2A4
  loc_B7F635: FLdI2 var_2A2
  loc_B7F638: ILdRf var_94
  loc_B7F63B: FLdI2 var_9E
  loc_B7F63E: FLdPr Me
  loc_B7F641: MemLdRfVar from_stack_1.global_64
  loc_B7F644: NewIfNullPr clsctacte
  loc_B7F647: from_stack_6v = clsctacte.BuscaMoviCtct(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_B7F64C: FLdI2 var_2A6
  loc_B7F64F: FStI2 var_86
  loc_B7F652: FFree1Str var_94
  loc_B7F655: FLdI2 var_86
  loc_B7F658: LitI2_Byte 1
  loc_B7F65A: AddI2
  loc_B7F65B: FStI2 var_86
  loc_B7F65E: FLdPr Me
  loc_B7F661: MemLdRfVar from_stack_1.global_64
  loc_B7F664: NewIfNullPr clsctacte
  loc_B7F667: Call clsctacte.MoveSiguiente()
  loc_B7F66C: Branch loc_B7F37C
  loc_B7F66F: FLdPr Me
  loc_B7F672: MemLdRfVar from_stack_1.global_80
  loc_B7F675: NewIfNullPr clsboleto
  loc_B7F678: Call clsboleto.MoveSiguiente()
  loc_B7F67D: Branch loc_B7F25D
  loc_B7F680: LitI2_Byte 0
  loc_B7F682: FLdPr Me
  loc_B7F685: Me.MousePointer = from_stack_1
  loc_B7F68A: ExitProcHresult
End Sub

Private Sub PagoAnticipadoCmd_Click() '9AF040
  'Data Table: 43D73C
  loc_9AF03C: ExitProcHresult
End Sub

Private Sub PrescripcionCmd_Click() '9B9F74
  'Data Table: 43D73C
  loc_9B9F60: LitVar_Missing var_A4
  loc_9B9F63: PopAdLdVar
  loc_9B9F64: LitVar_Missing var_94
  loc_9B9F67: PopAdLdVar
  loc_9B9F68: ImpAdLdRf MemVar_D9311C
  loc_9B9F6B: NewIfNullPr frmProcesodePrescripciondeDeuda
  loc_9B9F6E: frmProcesodePrescripciondeDeuda.Show from_stack_1, from_stack_2
  loc_9B9F73: ExitProcHresult
End Sub

Private Sub Saca20Cmd_Click() 'AAC774
  'Data Table: 43D73C
  loc_AAC698: LitI2_Byte &HB
  loc_AAC69A: FLdPr Me
  loc_AAC69D: Me.MousePointer = from_stack_1
  loc_AAC6A2: LitStr "Municipalidad de Guaymallén"
  loc_AAC6A5: LitStr "Municipalidad de Santa Rosa"
  loc_AAC6A8: EqStr
  loc_AAC6AA: BranchF loc_AAC6B8
  loc_AAC6AD: FLdRfVar var_94
  loc_AAC6B0: ImpAdCallFPR4  = Proc_237_7_9B0118()
  loc_AAC6B5: FFree1Var var_94 = ""
  loc_AAC6B8: LitStr "Municipalidad de Guaymallén"
  loc_AAC6BB: LitStr "Municipalidad de Guaymallén"
  loc_AAC6BE: EqStr
  loc_AAC6C0: BranchF loc_AAC6CE
  loc_AAC6C3: FLdRfVar var_94
  loc_AAC6C6: ImpAdCallFPR4  = Proc_237_7_9B0118()
  loc_AAC6CB: FFree1Var var_94 = ""
  loc_AAC6CE: LitStr "Municipalidad de Guaymallén"
  loc_AAC6D1: LitStr "Municipalidad de Lavalle"
  loc_AAC6D4: EqStr
  loc_AAC6D6: BranchF loc_AAC6E4
  loc_AAC6D9: FLdRfVar var_94
  loc_AAC6DC: ImpAdCallFPR4  = Proc_237_7_9B0118()
  loc_AAC6E1: FFree1Var var_94 = ""
  loc_AAC6E4: LitStr "Municipalidad de Guaymallén"
  loc_AAC6E7: LitStr "Municipalidad de San Carlos"
  loc_AAC6EA: EqStr
  loc_AAC6EC: BranchF loc_AAC6FA
  loc_AAC6EF: FLdRfVar var_94
  loc_AAC6F2: ImpAdCallFPR4  = Proc_237_7_9B0118()
  loc_AAC6F7: FFree1Var var_94 = ""
  loc_AAC6FA: LitStr "Municipalidad de Guaymallén"
  loc_AAC6FD: LitStr "Municipalidad de Malargüe"
  loc_AAC700: EqStr
  loc_AAC702: BranchF loc_AAC710
  loc_AAC705: FLdRfVar var_94
  loc_AAC708: ImpAdCallFPR4  = Proc_237_7_9B0118()
  loc_AAC70D: FFree1Var var_94 = ""
  loc_AAC710: LitStr "Municipalidad de Guaymallén"
  loc_AAC713: LitStr "Municipalidad de Tunuyán"
  loc_AAC716: EqStr
  loc_AAC718: BranchF loc_AAC726
  loc_AAC71B: FLdRfVar var_94
  loc_AAC71E: ImpAdCallFPR4  = Proc_237_7_9B0118()
  loc_AAC723: FFree1Var var_94 = ""
  loc_AAC726: LitStr "Municipalidad de Guaymallén"
  loc_AAC729: LitStr "Municipalidad de Rivadavia"
  loc_AAC72C: EqStr
  loc_AAC72E: BranchF loc_AAC73C
  loc_AAC731: FLdRfVar var_94
  loc_AAC734: ImpAdCallFPR4  = Proc_237_7_9B0118()
  loc_AAC739: FFree1Var var_94 = ""
  loc_AAC73C: LitStr "Municipalidad de Guaymallén"
  loc_AAC73F: LitStr "Municipalidad de General Alvear"
  loc_AAC742: EqStr
  loc_AAC744: BranchF loc_AAC752
  loc_AAC747: FLdRfVar var_94
  loc_AAC74A: ImpAdCallFPR4  = Proc_237_7_9B0118()
  loc_AAC74F: FFree1Var var_94 = ""
  loc_AAC752: LitStr "Municipalidad de Guaymallén"
  loc_AAC755: LitStr "Municipalidad de San Martin"
  loc_AAC758: EqStr
  loc_AAC75A: BranchF loc_AAC768
  loc_AAC75D: FLdRfVar var_94
  loc_AAC760: ImpAdCallFPR4  = Proc_237_7_9B0118()
  loc_AAC765: FFree1Var var_94 = ""
  loc_AAC768: LitI2_Byte 0
  loc_AAC76A: FLdPr Me
  loc_AAC76D: Me.MousePointer = from_stack_1
  loc_AAC772: ExitProcHresult
End Sub

Private Sub ListadodeDeudaCmd_Click() 'B7B788
  'Data Table: 43D73C
  loc_B7B2F0: LitI2_Byte &HB
  loc_B7B2F2: FLdPr Me
  loc_B7B2F5: Me.MousePointer = from_stack_1
  loc_B7B2FA: LitI2_Byte 0
  loc_B7B2FC: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B7B301: FStFPR8 var_B0
  loc_B7B304: LitI2_Byte 1
  loc_B7B306: CUI1I2
  loc_B7B308: ImpAdStUI1 MemVar_D93038
  loc_B7B30C: LitStr "SELECT * FROM migracion.CuentasDeuda"
  loc_B7B30F: FLdPr Me
  loc_B7B312: MemLdRfVar from_stack_1.global_64
  loc_B7B315: NewIfNullPr clsctacte
  loc_B7B318: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B7B31D: FLdRfVar var_B4
  loc_B7B320: FLdPr Me
  loc_B7B323: MemLdRfVar from_stack_1.global_64
  loc_B7B326: NewIfNullPr clsctacte
  loc_B7B329: from_stack_1 = clsctacte.RecordCount
  loc_B7B32E: ILdRf var_B4
  loc_B7B331: LitI4 0
  loc_B7B336: GtI4
  loc_B7B337: BranchF loc_B7B77B
  loc_B7B33A: FLdPr Me
  loc_B7B33D: MemLdRfVar from_stack_1.global_64
  loc_B7B340: NewIfNullPr clsctacte
  loc_B7B343: Call clsctacte.MoveFirst()
  loc_B7B348: FLdRfVar var_B6
  loc_B7B34B: FLdPr Me
  loc_B7B34E: MemLdRfVar from_stack_1.global_64
  loc_B7B351: NewIfNullPr clsctacte
  loc_B7B354: from_stack_1 = clsctacte.EOF
  loc_B7B359: FLdI2 var_B6
  loc_B7B35C: NotI4
  loc_B7B35D: BranchF loc_B7B77B
  loc_B7B360: LitI2_Byte 0
  loc_B7B362: CR8I2
  loc_B7B363: FStFPR8 var_A0
  loc_B7B366: LitI2_Byte 0
  loc_B7B368: CR8I2
  loc_B7B369: FStFPR8 var_A8
  loc_B7B36C: LitI2_Byte 0
  loc_B7B36E: CR8I2
  loc_B7B36F: FStFPR8 var_98
  loc_B7B372: LitStr "CALL nDeuda`('"
  loc_B7B375: ImpAdLdUI1
  loc_B7B379: CStrI2
  loc_B7B37B: FStStrNoPop var_BC
  loc_B7B37E: ConcatStr
  loc_B7B37F: FStStrNoPop var_C0
  loc_B7B382: LitStr "', '"
  loc_B7B385: ConcatStr
  loc_B7B386: CVarStr var_FC
  loc_B7B389: FLdRfVar var_EC
  loc_B7B38C: FLdRfVar var_DC
  loc_B7B38F: LitVarStr var_D8, "CuenCtct"
  loc_B7B394: PopAdLdVar
  loc_B7B395: FLdRfVar var_C8
  loc_B7B398: FLdRfVar var_C4
  loc_B7B39B: FLdPr Me
  loc_B7B39E: MemLdRfVar from_stack_1.global_64
  loc_B7B3A1: NewIfNullPr clsctacte
  loc_B7B3A4: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7B3A9: FLdPr var_C4
  loc_B7B3AC:  = Me.Fields
  loc_B7B3B1: FLdPr var_C8
  loc_B7B3B4: from_stack_2 = Me.Item(from_stack_1)
  loc_B7B3B9: FLdPr var_DC
  loc_B7B3BC:  = Me.Value
  loc_B7B3C1: FLdRfVar var_EC
  loc_B7B3C4: ConcatVar var_10C
  loc_B7B3C8: LitVarStr var_11C, "', '2024-05-31')"
  loc_B7B3CD: ConcatVar var_12C
  loc_B7B3D1: CStrVarVal var_130
  loc_B7B3D5: FLdPr Me
  loc_B7B3D8: MemLdRfVar from_stack_1.global_60
  loc_B7B3DB: NewIfNullPr clsctacte
  loc_B7B3DE: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B7B3E3: FFreeStr var_BC = "": var_C0 = ""
  loc_B7B3EC: FFreeAd var_C4 = "": var_C8 = ""
  loc_B7B3F5: FFreeVar var_FC = "": var_EC = "": var_10C = ""
  loc_B7B400: LitStr "SELECT CodiOfic, CuenCtct, SUM(SaldCtct) SaldCtct, SUM(RecaCtct) RecaCtct FROM tmp_ctacteboleto "
  loc_B7B403: LitStr " LEFT JOIN tipomovi ON tmp_ctacteboleto.CodiTimo = tipomovi.CodiTimo"
  loc_B7B406: ConcatStr
  loc_B7B407: FStStrNoPop var_BC
  loc_B7B40A: LitStr " WHERE tmp_ctacteboleto.FeveCtct >= '1000-01-01'"
  loc_B7B40D: ConcatStr
  loc_B7B40E: FStStrNoPop var_C0
  loc_B7B411: LitStr " AND tmp_ctacteboleto.FeveCtct <= '2024-05-31'"
  loc_B7B414: ConcatStr
  loc_B7B415: FStStrNoPop var_130
  loc_B7B418: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct"
  loc_B7B41B: ConcatStr
  loc_B7B41C: FStStrNoPop var_134
  loc_B7B41F: FLdPr Me
  loc_B7B422: MemLdRfVar from_stack_1.global_60
  loc_B7B425: NewIfNullPr clsctacte
  loc_B7B428: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B7B42D: FFreeStr var_BC = "": var_C0 = "": var_130 = ""
  loc_B7B438: FLdRfVar var_B4
  loc_B7B43B: FLdPr Me
  loc_B7B43E: MemLdRfVar from_stack_1.global_60
  loc_B7B441: NewIfNullPr clsctacte
  loc_B7B444: from_stack_1 = clsctacte.RecordCount
  loc_B7B449: ILdRf var_B4
  loc_B7B44C: LitI4 0
  loc_B7B451: GtI4
  loc_B7B452: BranchF loc_B7B4EB
  loc_B7B455: FLdRfVar var_EC
  loc_B7B458: FLdRfVar var_DC
  loc_B7B45B: LitVarStr var_D8, "SaldCtct"
  loc_B7B460: PopAdLdVar
  loc_B7B461: FLdRfVar var_C8
  loc_B7B464: FLdRfVar var_C4
  loc_B7B467: FLdPr Me
  loc_B7B46A: MemLdRfVar from_stack_1.global_60
  loc_B7B46D: NewIfNullPr clsctacte
  loc_B7B470: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7B475: FLdPr var_C4
  loc_B7B478:  = Me.Fields
  loc_B7B47D: FLdPr var_C8
  loc_B7B480: from_stack_2 = Me.Item(from_stack_1)
  loc_B7B485: FLdPr var_DC
  loc_B7B488:  = Me.Value
  loc_B7B48D: FLdRfVar var_EC
  loc_B7B490: CR4Var
  loc_B7B491: FStFPR8 var_A0
  loc_B7B494: FFreeAd var_C4 = "": var_C8 = ""
  loc_B7B49D: FFree1Var var_EC = ""
  loc_B7B4A0: FLdRfVar var_EC
  loc_B7B4A3: FLdRfVar var_DC
  loc_B7B4A6: LitVarStr var_D8, "RecaCtct"
  loc_B7B4AB: PopAdLdVar
  loc_B7B4AC: FLdRfVar var_C8
  loc_B7B4AF: FLdRfVar var_C4
  loc_B7B4B2: FLdPr Me
  loc_B7B4B5: MemLdRfVar from_stack_1.global_60
  loc_B7B4B8: NewIfNullPr clsctacte
  loc_B7B4BB: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7B4C0: FLdPr var_C4
  loc_B7B4C3:  = Me.Fields
  loc_B7B4C8: FLdPr var_C8
  loc_B7B4CB: from_stack_2 = Me.Item(from_stack_1)
  loc_B7B4D0: FLdPr var_DC
  loc_B7B4D3:  = Me.Value
  loc_B7B4D8: FLdRfVar var_EC
  loc_B7B4DB: CR4Var
  loc_B7B4DC: FStFPR8 var_A8
  loc_B7B4DF: FFreeAd var_C4 = "": var_C8 = ""
  loc_B7B4E8: FFree1Var var_EC = ""
  loc_B7B4EB: LitStr "SELECT NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct FROM tmp_ctacteboleto WHERE SaldCtct > 0 AND NumeApre <> 0 "
  loc_B7B4EE: LitStr " GROUP BY tmp_ctacteboleto.CodiOfic, tmp_ctacteboleto.CuenCtct, tmp_ctacteboleto.NumeApre"
  loc_B7B4F1: ConcatStr
  loc_B7B4F2: FStStrNoPop var_BC
  loc_B7B4F5: FLdPr Me
  loc_B7B4F8: MemLdRfVar from_stack_1.global_60
  loc_B7B4FB: NewIfNullPr clsctacte
  loc_B7B4FE: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B7B503: FFree1Str var_BC
  loc_B7B506: FLdRfVar var_B4
  loc_B7B509: FLdPr Me
  loc_B7B50C: MemLdRfVar from_stack_1.global_60
  loc_B7B50F: NewIfNullPr clsctacte
  loc_B7B512: from_stack_1 = clsctacte.RecordCount
  loc_B7B517: ILdRf var_B4
  loc_B7B51A: LitI4 0
  loc_B7B51F: GtI4
  loc_B7B520: BranchF loc_B7B63C
  loc_B7B523: FLdRfVar var_B6
  loc_B7B526: FLdPr Me
  loc_B7B529: MemLdRfVar from_stack_1.global_60
  loc_B7B52C: NewIfNullPr clsctacte
  loc_B7B52F: from_stack_1 = clsctacte.EOF
  loc_B7B534: FLdI2 var_B6
  loc_B7B537: NotI4
  loc_B7B538: BranchF loc_B7B639
  loc_B7B53B: FLdRfVar var_EC
  loc_B7B53E: FLdRfVar var_DC
  loc_B7B541: LitVarStr var_D8, "NumeApre"
  loc_B7B546: PopAdLdVar
  loc_B7B547: FLdRfVar var_C8
  loc_B7B54A: FLdRfVar var_C4
  loc_B7B54D: FLdPr Me
  loc_B7B550: MemLdRfVar from_stack_1.global_60
  loc_B7B553: NewIfNullPr clsctacte
  loc_B7B556: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7B55B: FLdPr var_C4
  loc_B7B55E:  = Me.Fields
  loc_B7B563: FLdPr var_C8
  loc_B7B566: from_stack_2 = Me.Item(from_stack_1)
  loc_B7B56B: FLdPr var_DC
  loc_B7B56E:  = Me.Value
  loc_B7B573: FLdRfVar var_FC
  loc_B7B576: FLdRfVar var_140
  loc_B7B579: LitVarStr var_11C, "SaldCtct"
  loc_B7B57E: PopAdLdVar
  loc_B7B57F: FLdRfVar var_13C
  loc_B7B582: FLdRfVar var_138
  loc_B7B585: FLdPr Me
  loc_B7B588: MemLdRfVar from_stack_1.global_60
  loc_B7B58B: NewIfNullPr clsctacte
  loc_B7B58E: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7B593: FLdPr var_138
  loc_B7B596:  = Me.Fields
  loc_B7B59B: FLdPr var_13C
  loc_B7B59E: from_stack_2 = Me.Item(from_stack_1)
  loc_B7B5A3: FLdPr var_140
  loc_B7B5A6:  = Me.Value
  loc_B7B5AB: FLdRfVar var_10C
  loc_B7B5AE: FLdRfVar var_15C
  loc_B7B5B1: LitVarStr var_158, "RecaCtct"
  loc_B7B5B6: PopAdLdVar
  loc_B7B5B7: FLdRfVar var_148
  loc_B7B5BA: FLdRfVar var_144
  loc_B7B5BD: FLdPr Me
  loc_B7B5C0: MemLdRfVar from_stack_1.global_60
  loc_B7B5C3: NewIfNullPr clsctacte
  loc_B7B5C6: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7B5CB: FLdPr var_144
  loc_B7B5CE:  = Me.Fields
  loc_B7B5D3: FLdPr var_148
  loc_B7B5D6: from_stack_2 = Me.Item(from_stack_1)
  loc_B7B5DB: FLdPr var_15C
  loc_B7B5DE:  = Me.Value
  loc_B7B5E3: FLdRfVar var_164
  loc_B7B5E6: FLdRfVar var_10C
  loc_B7B5E9: CR4Var
  loc_B7B5EA: PopFPR8
  loc_B7B5EB: FLdRfVar var_FC
  loc_B7B5EE: CR4Var
  loc_B7B5EF: PopFPR8
  loc_B7B5F0: FLdRfVar var_EC
  loc_B7B5F3: CI4Var
  loc_B7B5F5: FLdRfVar var_88
  loc_B7B5F8: NewIfNullPr clsapremio
  loc_B7B5FB: from_stack_4v = clsapremio.BuscaGastosApremio(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B7B600: FLdFPR8 var_98
  loc_B7B603: FLdFPR8 var_164
  loc_B7B606: AddR8
  loc_B7B607: FStFPR8 var_98
  loc_B7B60A: FFreeAd var_C4 = "": var_C8 = "": var_138 = "": var_13C = "": var_144 = "": var_148 = "": var_DC = "": var_140 = ""
  loc_B7B61F: FFreeVar var_EC = "": var_FC = ""
  loc_B7B628: FLdPr Me
  loc_B7B62B: MemLdRfVar from_stack_1.global_60
  loc_B7B62E: NewIfNullPr clsctacte
  loc_B7B631: Call clsctacte.MoveSiguiente()
  loc_B7B636: Branch loc_B7B523
  loc_B7B639: Branch loc_B7B642
  loc_B7B63C: LitI2_Byte 0
  loc_B7B63E: CR8I2
  loc_B7B63F: FStFPR8 var_98
  loc_B7B642: LitStr " INSERT INTO migracion.CuentasDeudaFinal (CuenCtct,Capital,Recargo,Apremio) "
  loc_B7B645: LitStr " VALUES ('"
  loc_B7B648: ConcatStr
  loc_B7B649: CVarStr var_FC
  loc_B7B64C: FLdRfVar var_EC
  loc_B7B64F: FLdRfVar var_DC
  loc_B7B652: LitVarStr var_D8, "CuenCtct"
  loc_B7B657: PopAdLdVar
  loc_B7B658: FLdRfVar var_C8
  loc_B7B65B: FLdRfVar var_C4
  loc_B7B65E: FLdPr Me
  loc_B7B661: MemLdRfVar from_stack_1.global_64
  loc_B7B664: NewIfNullPr clsctacte
  loc_B7B667: from_stack_1v = clsctacte.RsFrmGet()
  loc_B7B66C: FLdPr var_C4
  loc_B7B66F:  = Me.Fields
  loc_B7B674: FLdPr var_C8
  loc_B7B677: from_stack_2 = Me.Item(from_stack_1)
  loc_B7B67C: FLdPr var_DC
  loc_B7B67F:  = Me.Value
  loc_B7B684: FLdRfVar var_EC
  loc_B7B687: ConcatVar var_10C
  loc_B7B68B: LitVarStr var_11C, "',"
  loc_B7B690: ConcatVar var_12C
  loc_B7B694: LitI4 0
  loc_B7B699: LitI4 -1
  loc_B7B69E: LitI4 1
  loc_B7B6A3: LitStr "."
  loc_B7B6A6: LitStr ","
  loc_B7B6A9: FLdFPR8 var_A0
  loc_B7B6AC: CStrR8
  loc_B7B6AE: FStStrNoPop var_BC
  loc_B7B6B1: ImpAdCallI2 Replace(, , , , , )
  loc_B7B6B6: CVarStr var_174
  loc_B7B6B9: ConcatVar var_184
  loc_B7B6BD: LitVarStr var_158, ","
  loc_B7B6C2: ConcatVar var_194
  loc_B7B6C6: LitI4 0
  loc_B7B6CB: LitI4 -1
  loc_B7B6D0: LitI4 1
  loc_B7B6D5: LitStr "."
  loc_B7B6D8: LitStr ","
  loc_B7B6DB: FLdFPR8 var_A8
  loc_B7B6DE: CStrR8
  loc_B7B6E0: FStStrNoPop var_C0
  loc_B7B6E3: ImpAdCallI2 Replace(, , , , , )
  loc_B7B6E8: CVarStr var_1A4
  loc_B7B6EB: ConcatVar var_1B4
  loc_B7B6EF: LitVarStr var_1C4, ","
  loc_B7B6F4: ConcatVar var_1D4
  loc_B7B6F8: LitI4 0
  loc_B7B6FD: LitI4 -1
  loc_B7B702: LitI4 1
  loc_B7B707: LitStr "."
  loc_B7B70A: LitStr ","
  loc_B7B70D: FLdFPR8 var_98
  loc_B7B710: CStrR8
  loc_B7B712: FStStrNoPop var_130
  loc_B7B715: ImpAdCallI2 Replace(, , , , , )
  loc_B7B71A: CVarStr var_1E4
  loc_B7B71D: ConcatVar var_1F4
  loc_B7B721: LitVarStr var_204, ")"
  loc_B7B726: ConcatVar var_214
  loc_B7B72A: CStrVarVal var_134
  loc_B7B72E: FLdRfVar var_8C
  loc_B7B731: NewIfNullPr clsctacte
  loc_B7B734: Call clsctacte.EjecutarRsCls(from_stack_1v)
  loc_B7B739: FFreeStr var_BC = "": var_C0 = "": var_130 = ""
  loc_B7B744: FFreeAd var_C4 = "": var_C8 = ""
  loc_B7B74D: FFreeVar var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_174 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1D4 = "": var_1E4 = "": var_1F4 = ""
  loc_B7B76A: FLdPr Me
  loc_B7B76D: MemLdRfVar from_stack_1.global_64
  loc_B7B770: NewIfNullPr clsctacte
  loc_B7B773: Call clsctacte.MoveSiguiente()
  loc_B7B778: Branch loc_B7B348
  loc_B7B77B: LitI2_Byte 0
  loc_B7B77D: FLdPr Me
  loc_B7B780: Me.MousePointer = from_stack_1
  loc_B7B785: ExitProcHresult
End Sub

Private Sub Proceso1Cmd_Click() '9AEB60
  'Data Table: 43D73C
  loc_9AEB5C: ExitProcHresult
End Sub

Private Function Proc_347_11_9AEAF8() '9AEAF8
  'Data Table: 43D73C
  loc_9AEAF4: ExitProcHresult
End Function
