VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscUnidadGasto
  Caption = "Buscar Unidad de Gasto por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscUnidadGasto.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 14685
  ClientHeight = 5925
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 120
    Width = 10695
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "bscUnidadGasto.frx":08CA
    End
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 4320
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "2"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1320
    Width = 12495
    Height = 3615
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscUnidadGasto.frx":092A
  End
End

Attribute VB_Name = "bscUnidadGasto"

Public MuestroAnulados As Boolean
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() 'A7217C
  'Data Table: 42327C
  loc_A71DA8: LitVarStr var_94, vbNullString
  loc_A71DAD: PopAdLdVar
  loc_A71DAE: FLdPr Me
  loc_A71DB1: VCallAd Control_ID_FiltroMsk
  loc_A71DB4: FStAdFunc var_A8
  loc_A71DB7: FLdPr var_A8
  loc_A71DBA: LateIdSt
  loc_A71DBF: FFree1Ad var_A8
  loc_A71DC2: FLdRfVar var_AA
  loc_A71DC5: FLdPr Me
  loc_A71DC8: VCallAd Control_ID_FiltroCbo
  loc_A71DCB: FStAdFunc var_A8
  loc_A71DCE: FLdPr var_A8
  loc_A71DD1:  = Me.ListIndex
  loc_A71DD6: FLdI2 var_AA
  loc_A71DD9: FStI2 var_AC
  loc_A71DDC: FFree1Ad var_A8
  loc_A71DDF: FLdI2 var_AC
  loc_A71DE2: LitI2_Byte 0
  loc_A71DE4: EqI2
  loc_A71DE5: BranchF loc_A71E1F
  loc_A71DE8: LitVarStr var_94, "#######"
  loc_A71DED: PopAdLdVar
  loc_A71DEE: FLdPr Me
  loc_A71DF1: VCallAd Control_ID_FiltroMsk
  loc_A71DF4: FStAdFunc var_A8
  loc_A71DF7: FLdPr var_A8
  loc_A71DFA: LateIdSt
  loc_A71DFF: FFree1Ad var_A8
  loc_A71E02: LitStr "CodiUnga"
  loc_A71E05: FStStrCopy var_B0
  loc_A71E08: FLdRfVar var_B0
  loc_A71E0B: FLdPr Me
  loc_A71E0E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71E11: NewIfNullPr clsbase
  loc_A71E14: Call clsbase.Sort(from_stack_1v)
  loc_A71E19: FFree1Str var_B0
  loc_A71E1C: Branch loc_A72178
  loc_A71E1F: FLdI2 var_AC
  loc_A71E22: LitI2_Byte 1
  loc_A71E24: EqI2
  loc_A71E25: BranchF loc_A71E79
  loc_A71E28: LitVarStr var_94, "&"
  loc_A71E2D: PopAdLdVar
  loc_A71E2E: FLdPr Me
  loc_A71E31: VCallAd Control_ID_FiltroMsk
  loc_A71E34: FStAdFunc var_A8
  loc_A71E37: FLdPr var_A8
  loc_A71E3A: LateIdSt
  loc_A71E3F: FFree1Ad var_A8
  loc_A71E42: LitVarStr var_94, vbNullString
  loc_A71E47: PopAdLdVar
  loc_A71E48: FLdPr Me
  loc_A71E4B: VCallAd Control_ID_FiltroMsk
  loc_A71E4E: FStAdFunc var_A8
  loc_A71E51: FLdPr var_A8
  loc_A71E54: LateIdSt
  loc_A71E59: FFree1Ad var_A8
  loc_A71E5C: LitStr "DetaUnga"
  loc_A71E5F: FStStrCopy var_B0
  loc_A71E62: FLdRfVar var_B0
  loc_A71E65: FLdPr Me
  loc_A71E68: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71E6B: NewIfNullPr clsbase
  loc_A71E6E: Call clsbase.Sort(from_stack_1v)
  loc_A71E73: FFree1Str var_B0
  loc_A71E76: Branch loc_A72178
  loc_A71E79: FLdI2 var_AC
  loc_A71E7C: LitI2_Byte 2
  loc_A71E7E: EqI2
  loc_A71E7F: BranchF loc_A71EB9
  loc_A71E82: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A71E87: PopAdLdVar
  loc_A71E88: FLdPr Me
  loc_A71E8B: VCallAd Control_ID_FiltroMsk
  loc_A71E8E: FStAdFunc var_A8
  loc_A71E91: FLdPr var_A8
  loc_A71E94: LateIdSt
  loc_A71E99: FFree1Ad var_A8
  loc_A71E9C: LitStr "CodiPart"
  loc_A71E9F: FStStrCopy var_B0
  loc_A71EA2: FLdRfVar var_B0
  loc_A71EA5: FLdPr Me
  loc_A71EA8: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71EAB: NewIfNullPr clsbase
  loc_A71EAE: Call clsbase.Sort(from_stack_1v)
  loc_A71EB3: FFree1Str var_B0
  loc_A71EB6: Branch loc_A72178
  loc_A71EB9: FLdI2 var_AC
  loc_A71EBC: LitI2_Byte 3
  loc_A71EBE: EqI2
  loc_A71EBF: BranchF loc_A71F13
  loc_A71EC2: LitVarStr var_94, "&"
  loc_A71EC7: PopAdLdVar
  loc_A71EC8: FLdPr Me
  loc_A71ECB: VCallAd Control_ID_FiltroMsk
  loc_A71ECE: FStAdFunc var_A8
  loc_A71ED1: FLdPr var_A8
  loc_A71ED4: LateIdSt
  loc_A71ED9: FFree1Ad var_A8
  loc_A71EDC: LitVarStr var_94, vbNullString
  loc_A71EE1: PopAdLdVar
  loc_A71EE2: FLdPr Me
  loc_A71EE5: VCallAd Control_ID_FiltroMsk
  loc_A71EE8: FStAdFunc var_A8
  loc_A71EEB: FLdPr var_A8
  loc_A71EEE: LateIdSt
  loc_A71EF3: FFree1Ad var_A8
  loc_A71EF6: LitStr "DetaPart"
  loc_A71EF9: FStStrCopy var_B0
  loc_A71EFC: FLdRfVar var_B0
  loc_A71EFF: FLdPr Me
  loc_A71F02: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71F05: NewIfNullPr clsbase
  loc_A71F08: Call clsbase.Sort(from_stack_1v)
  loc_A71F0D: FFree1Str var_B0
  loc_A71F10: Branch loc_A72178
  loc_A71F13: FLdI2 var_AC
  loc_A71F16: LitI2_Byte 4
  loc_A71F18: EqI2
  loc_A71F19: BranchF loc_A71F53
  loc_A71F1C: LitVarStr var_94, "########"
  loc_A71F21: PopAdLdVar
  loc_A71F22: FLdPr Me
  loc_A71F25: VCallAd Control_ID_FiltroMsk
  loc_A71F28: FStAdFunc var_A8
  loc_A71F2B: FLdPr var_A8
  loc_A71F2E: LateIdSt
  loc_A71F33: FFree1Ad var_A8
  loc_A71F36: LitStr "CodiInsu"
  loc_A71F39: FStStrCopy var_B0
  loc_A71F3C: FLdRfVar var_B0
  loc_A71F3F: FLdPr Me
  loc_A71F42: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71F45: NewIfNullPr clsbase
  loc_A71F48: Call clsbase.Sort(from_stack_1v)
  loc_A71F4D: FFree1Str var_B0
  loc_A71F50: Branch loc_A72178
  loc_A71F53: FLdI2 var_AC
  loc_A71F56: LitI2_Byte 5
  loc_A71F58: EqI2
  loc_A71F59: BranchF loc_A71FAD
  loc_A71F5C: LitVarStr var_94, "&"
  loc_A71F61: PopAdLdVar
  loc_A71F62: FLdPr Me
  loc_A71F65: VCallAd Control_ID_FiltroMsk
  loc_A71F68: FStAdFunc var_A8
  loc_A71F6B: FLdPr var_A8
  loc_A71F6E: LateIdSt
  loc_A71F73: FFree1Ad var_A8
  loc_A71F76: LitVarStr var_94, vbNullString
  loc_A71F7B: PopAdLdVar
  loc_A71F7C: FLdPr Me
  loc_A71F7F: VCallAd Control_ID_FiltroMsk
  loc_A71F82: FStAdFunc var_A8
  loc_A71F85: FLdPr var_A8
  loc_A71F88: LateIdSt
  loc_A71F8D: FFree1Ad var_A8
  loc_A71F90: LitStr "DetaInsu"
  loc_A71F93: FStStrCopy var_B0
  loc_A71F96: FLdRfVar var_B0
  loc_A71F99: FLdPr Me
  loc_A71F9C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71F9F: NewIfNullPr clsbase
  loc_A71FA2: Call clsbase.Sort(from_stack_1v)
  loc_A71FA7: FFree1Str var_B0
  loc_A71FAA: Branch loc_A72178
  loc_A71FAD: FLdI2 var_AC
  loc_A71FB0: LitI2_Byte 6
  loc_A71FB2: EqI2
  loc_A71FB3: BranchF loc_A71FED
  loc_A71FB6: LitVarStr var_94, "######"
  loc_A71FBB: PopAdLdVar
  loc_A71FBC: FLdPr Me
  loc_A71FBF: VCallAd Control_ID_FiltroMsk
  loc_A71FC2: FStAdFunc var_A8
  loc_A71FC5: FLdPr var_A8
  loc_A71FC8: LateIdSt
  loc_A71FCD: FFree1Ad var_A8
  loc_A71FD0: LitStr "CodiOrga"
  loc_A71FD3: FStStrCopy var_B0
  loc_A71FD6: FLdRfVar var_B0
  loc_A71FD9: FLdPr Me
  loc_A71FDC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A71FDF: NewIfNullPr clsbase
  loc_A71FE2: Call clsbase.Sort(from_stack_1v)
  loc_A71FE7: FFree1Str var_B0
  loc_A71FEA: Branch loc_A72178
  loc_A71FED: FLdI2 var_AC
  loc_A71FF0: LitI2_Byte 7
  loc_A71FF2: EqI2
  loc_A71FF3: BranchF loc_A72047
  loc_A71FF6: LitVarStr var_94, "&"
  loc_A71FFB: PopAdLdVar
  loc_A71FFC: FLdPr Me
  loc_A71FFF: VCallAd Control_ID_FiltroMsk
  loc_A72002: FStAdFunc var_A8
  loc_A72005: FLdPr var_A8
  loc_A72008: LateIdSt
  loc_A7200D: FFree1Ad var_A8
  loc_A72010: LitVarStr var_94, vbNullString
  loc_A72015: PopAdLdVar
  loc_A72016: FLdPr Me
  loc_A72019: VCallAd Control_ID_FiltroMsk
  loc_A7201C: FStAdFunc var_A8
  loc_A7201F: FLdPr var_A8
  loc_A72022: LateIdSt
  loc_A72027: FFree1Ad var_A8
  loc_A7202A: LitStr "DetaOrga"
  loc_A7202D: FStStrCopy var_B0
  loc_A72030: FLdRfVar var_B0
  loc_A72033: FLdPr Me
  loc_A72036: MemLdRfVar from_stack_1.BuscarCLS
  loc_A72039: NewIfNullPr clsbase
  loc_A7203C: Call clsbase.Sort(from_stack_1v)
  loc_A72041: FFree1Str var_B0
  loc_A72044: Branch loc_A72178
  loc_A72047: FLdI2 var_AC
  loc_A7204A: LitI2_Byte 8
  loc_A7204C: EqI2
  loc_A7204D: BranchF loc_A72087
  loc_A72050: LitVarStr var_94, "##.##.##"
  loc_A72055: PopAdLdVar
  loc_A72056: FLdPr Me
  loc_A72059: VCallAd Control_ID_FiltroMsk
  loc_A7205C: FStAdFunc var_A8
  loc_A7205F: FLdPr var_A8
  loc_A72062: LateIdSt
  loc_A72067: FFree1Ad var_A8
  loc_A7206A: LitStr "CodiFifu"
  loc_A7206D: FStStrCopy var_B0
  loc_A72070: FLdRfVar var_B0
  loc_A72073: FLdPr Me
  loc_A72076: MemLdRfVar from_stack_1.BuscarCLS
  loc_A72079: NewIfNullPr clsbase
  loc_A7207C: Call clsbase.Sort(from_stack_1v)
  loc_A72081: FFree1Str var_B0
  loc_A72084: Branch loc_A72178
  loc_A72087: FLdI2 var_AC
  loc_A7208A: LitI2_Byte 9
  loc_A7208C: EqI2
  loc_A7208D: BranchF loc_A720E1
  loc_A72090: LitVarStr var_94, "&"
  loc_A72095: PopAdLdVar
  loc_A72096: FLdPr Me
  loc_A72099: VCallAd Control_ID_FiltroMsk
  loc_A7209C: FStAdFunc var_A8
  loc_A7209F: FLdPr var_A8
  loc_A720A2: LateIdSt
  loc_A720A7: FFree1Ad var_A8
  loc_A720AA: LitVarStr var_94, vbNullString
  loc_A720AF: PopAdLdVar
  loc_A720B0: FLdPr Me
  loc_A720B3: VCallAd Control_ID_FiltroMsk
  loc_A720B6: FStAdFunc var_A8
  loc_A720B9: FLdPr var_A8
  loc_A720BC: LateIdSt
  loc_A720C1: FFree1Ad var_A8
  loc_A720C4: LitStr "DetaFifu"
  loc_A720C7: FStStrCopy var_B0
  loc_A720CA: FLdRfVar var_B0
  loc_A720CD: FLdPr Me
  loc_A720D0: MemLdRfVar from_stack_1.BuscarCLS
  loc_A720D3: NewIfNullPr clsbase
  loc_A720D6: Call clsbase.Sort(from_stack_1v)
  loc_A720DB: FFree1Str var_B0
  loc_A720DE: Branch loc_A72178
  loc_A720E1: FLdI2 var_AC
  loc_A720E4: LitI2_Byte &HA
  loc_A720E6: EqI2
  loc_A720E7: BranchF loc_A72121
  loc_A720EA: LitVarStr var_94, "###########"
  loc_A720EF: PopAdLdVar
  loc_A720F0: FLdPr Me
  loc_A720F3: VCallAd Control_ID_FiltroMsk
  loc_A720F6: FStAdFunc var_A8
  loc_A720F9: FLdPr var_A8
  loc_A720FC: LateIdSt
  loc_A72101: FFree1Ad var_A8
  loc_A72104: LitStr "CucuProv"
  loc_A72107: FStStrCopy var_B0
  loc_A7210A: FLdRfVar var_B0
  loc_A7210D: FLdPr Me
  loc_A72110: MemLdRfVar from_stack_1.BuscarCLS
  loc_A72113: NewIfNullPr clsbase
  loc_A72116: Call clsbase.Sort(from_stack_1v)
  loc_A7211B: FFree1Str var_B0
  loc_A7211E: Branch loc_A72178
  loc_A72121: FLdI2 var_AC
  loc_A72124: LitI2_Byte &HB
  loc_A72126: EqI2
  loc_A72127: BranchF loc_A72178
  loc_A7212A: LitVarStr var_94, "&"
  loc_A7212F: PopAdLdVar
  loc_A72130: FLdPr Me
  loc_A72133: VCallAd Control_ID_FiltroMsk
  loc_A72136: FStAdFunc var_A8
  loc_A72139: FLdPr var_A8
  loc_A7213C: LateIdSt
  loc_A72141: FFree1Ad var_A8
  loc_A72144: LitVarStr var_94, vbNullString
  loc_A72149: PopAdLdVar
  loc_A7214A: FLdPr Me
  loc_A7214D: VCallAd Control_ID_FiltroMsk
  loc_A72150: FStAdFunc var_A8
  loc_A72153: FLdPr var_A8
  loc_A72156: LateIdSt
  loc_A7215B: FFree1Ad var_A8
  loc_A7215E: LitStr "DetaProv"
  loc_A72161: FStStrCopy var_B0
  loc_A72164: FLdRfVar var_B0
  loc_A72167: FLdPr Me
  loc_A7216A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7216D: NewIfNullPr clsbase
  loc_A72170: Call clsbase.Sort(from_stack_1v)
  loc_A72175: FFree1Str var_B0
  loc_A72178: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '952BC0
  'Data Table: 42327C
  loc_952BAC: FLdPr Me
  loc_952BAF: VCallAd Control_ID_FiltroMsk
  loc_952BB2: CVarAd
  loc_952BB6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952BBB: FFree1Var var_94 = ""
  loc_952BBE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'B19D88
  'Data Table: 42327C
  loc_B194D8: ILdRf Me
  loc_B194DB: CastAd
  loc_B194DE: FStAdFunc var_88
  loc_B194E1: FLdRfVar var_88
  loc_B194E4: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B194E9: FFree1Ad var_88
  loc_B194EC: FLdPr Me
  loc_B194EF: VCallAd Control_ID_FiltroMsk
  loc_B194F2: FStAdFunc var_88
  loc_B194F5: FLdPr var_88
  loc_B194F8: LateIdLdVar var_98 DispID_22 0
  loc_B194FF: CStrVarTmp
  loc_B19500: FStStrNoPop var_9C
  loc_B19503: ImpAdCallI2 Trim$()
  loc_B19508: FStStrNoPop var_A0
  loc_B1950B: LitStr vbNullString
  loc_B1950E: NeStr
  loc_B19510: FFreeStr var_9C = ""
  loc_B19517: FFree1Ad var_88
  loc_B1951A: FFree1Var var_98 = ""
  loc_B1951D: BranchF loc_B19C64
  loc_B19520: FLdRfVar var_A2
  loc_B19523: FLdPr Me
  loc_B19526: VCallAd Control_ID_FiltroCbo
  loc_B19529: FStAdFunc var_88
  loc_B1952C: FLdPr var_88
  loc_B1952F:  = Me.ListIndex
  loc_B19534: FLdI2 var_A2
  loc_B19537: LitI2_Byte 0
  loc_B19539: EqI2
  loc_B1953A: FFree1Ad var_88
  loc_B1953D: BranchF loc_B195AF
  loc_B19540: LitStr "CodiUnga = "
  loc_B19543: FLdPr Me
  loc_B19546: VCallAd Control_ID_FiltroMsk
  loc_B19549: FStAdFunc var_88
  loc_B1954C: FLdPr var_88
  loc_B1954F: LateIdLdVar var_98 DispID_22 0
  loc_B19556: CStrVarTmp
  loc_B19557: FStStrNoPop var_9C
  loc_B1955A: ConcatStr
  loc_B1955B: PopTmpLdAdStr
  loc_B1955F: FLdPr Me
  loc_B19562: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19565: NewIfNullPr clsbase
  loc_B19568: Call clsbase.Filter(from_stack_1v)
  loc_B1956D: FFreeStr var_9C = ""
  loc_B19574: FFree1Ad var_88
  loc_B19577: FFree1Var var_98 = ""
  loc_B1957A: LitStr "código sea igual a "
  loc_B1957D: FLdPr Me
  loc_B19580: VCallAd Control_ID_FiltroMsk
  loc_B19583: FStAdFunc var_88
  loc_B19586: FLdPr var_88
  loc_B19589: LateIdLdVar var_98 DispID_22 0
  loc_B19590: CStrVarTmp
  loc_B19591: FStStrNoPop var_9C
  loc_B19594: ConcatStr
  loc_B19595: FStStrNoPop var_A0
  loc_B19598: FLdPr Me
  loc_B1959B: MemStStrCopy
  loc_B1959F: FFreeStr var_9C = ""
  loc_B195A6: FFree1Ad var_88
  loc_B195A9: FFree1Var var_98 = ""
  loc_B195AC: Branch loc_B19C61
  loc_B195AF: FLdRfVar var_A2
  loc_B195B2: FLdPr Me
  loc_B195B5: VCallAd Control_ID_FiltroCbo
  loc_B195B8: FStAdFunc var_88
  loc_B195BB: FLdPr var_88
  loc_B195BE:  = Me.ListIndex
  loc_B195C3: FLdI2 var_A2
  loc_B195C6: LitI2_Byte 1
  loc_B195C8: EqI2
  loc_B195C9: FFree1Ad var_88
  loc_B195CC: BranchF loc_B19650
  loc_B195CF: LitStr "DetaUnga LIKE '" & Chr(37)
  loc_B195D2: FLdPr Me
  loc_B195D5: VCallAd Control_ID_FiltroMsk
  loc_B195D8: FStAdFunc var_88
  loc_B195DB: FLdPr var_88
  loc_B195DE: LateIdLdVar var_98 DispID_22 0
  loc_B195E5: CStrVarTmp
  loc_B195E6: FStStrNoPop var_9C
  loc_B195E9: ConcatStr
  loc_B195EA: FStStrNoPop var_A0
  loc_B195ED: LitStr Chr(37) & "'"
  loc_B195F0: ConcatStr
  loc_B195F1: PopTmpLdAdStr
  loc_B195F5: FLdPr Me
  loc_B195F8: MemLdRfVar from_stack_1.BuscarCLS
  loc_B195FB: NewIfNullPr clsbase
  loc_B195FE: Call clsbase.Filter(from_stack_1v)
  loc_B19603: FFreeStr var_9C = "": var_A0 = ""
  loc_B1960C: FFree1Ad var_88
  loc_B1960F: FFree1Var var_98 = ""
  loc_B19612: LitStr "detalle que contiene "
  loc_B19615: FLdPr Me
  loc_B19618: VCallAd Control_ID_FiltroMsk
  loc_B1961B: FStAdFunc var_88
  loc_B1961E: FLdPr var_88
  loc_B19621: LateIdLdVar var_98 DispID_22 0
  loc_B19628: CStrVarTmp
  loc_B19629: FStStrNoPop var_9C
  loc_B1962C: ConcatStr
  loc_B1962D: FStStrNoPop var_A0
  loc_B19630: LitStr vbNullString
  loc_B19633: ConcatStr
  loc_B19634: FStStrNoPop var_A8
  loc_B19637: FLdPr Me
  loc_B1963A: MemStStrCopy
  loc_B1963E: FFreeStr var_9C = "": var_A0 = ""
  loc_B19647: FFree1Ad var_88
  loc_B1964A: FFree1Var var_98 = ""
  loc_B1964D: Branch loc_B19C61
  loc_B19650: FLdRfVar var_A2
  loc_B19653: FLdPr Me
  loc_B19656: VCallAd Control_ID_FiltroCbo
  loc_B19659: FStAdFunc var_88
  loc_B1965C: FLdPr var_88
  loc_B1965F:  = Me.ListIndex
  loc_B19664: FLdI2 var_A2
  loc_B19667: LitI2_Byte 2
  loc_B19669: EqI2
  loc_B1966A: FFree1Ad var_88
  loc_B1966D: BranchF loc_B196E8
  loc_B19670: LitStr "CodiPart LIKE '"
  loc_B19673: FLdPr Me
  loc_B19676: VCallAd Control_ID_FiltroMsk
  loc_B19679: FStAdFunc var_88
  loc_B1967C: FLdPr var_88
  loc_B1967F: LateIdLdVar var_98 DispID_22 0
  loc_B19686: CStrVarTmp
  loc_B19687: FStStrNoPop var_9C
  loc_B1968A: ConcatStr
  loc_B1968B: FStStrNoPop var_A0
  loc_B1968E: LitStr Chr(37) & "'"
  loc_B19691: ConcatStr
  loc_B19692: PopTmpLdAdStr
  loc_B19696: FLdPr Me
  loc_B19699: MemLdRfVar from_stack_1.BuscarCLS
  loc_B1969C: NewIfNullPr clsbase
  loc_B1969F: Call clsbase.Filter(from_stack_1v)
  loc_B196A4: FFreeStr var_9C = "": var_A0 = ""
  loc_B196AD: FFree1Ad var_88
  loc_B196B0: FFree1Var var_98 = ""
  loc_B196B3: LitStr "código que comience con: "
  loc_B196B6: FLdPr Me
  loc_B196B9: VCallAd Control_ID_FiltroMsk
  loc_B196BC: FStAdFunc var_88
  loc_B196BF: FLdPr var_88
  loc_B196C2: LateIdLdVar var_98 DispID_22 0
  loc_B196C9: CStrVarTmp
  loc_B196CA: FStStrNoPop var_9C
  loc_B196CD: ConcatStr
  loc_B196CE: FStStrNoPop var_A0
  loc_B196D1: FLdPr Me
  loc_B196D4: MemStStrCopy
  loc_B196D8: FFreeStr var_9C = ""
  loc_B196DF: FFree1Ad var_88
  loc_B196E2: FFree1Var var_98 = ""
  loc_B196E5: Branch loc_B19C61
  loc_B196E8: FLdRfVar var_A2
  loc_B196EB: FLdPr Me
  loc_B196EE: VCallAd Control_ID_FiltroCbo
  loc_B196F1: FStAdFunc var_88
  loc_B196F4: FLdPr var_88
  loc_B196F7:  = Me.ListIndex
  loc_B196FC: FLdI2 var_A2
  loc_B196FF: LitI2_Byte 3
  loc_B19701: EqI2
  loc_B19702: FFree1Ad var_88
  loc_B19705: BranchF loc_B19789
  loc_B19708: LitStr "DetaPart LIKE '" & Chr(37)
  loc_B1970B: FLdPr Me
  loc_B1970E: VCallAd Control_ID_FiltroMsk
  loc_B19711: FStAdFunc var_88
  loc_B19714: FLdPr var_88
  loc_B19717: LateIdLdVar var_98 DispID_22 0
  loc_B1971E: CStrVarTmp
  loc_B1971F: FStStrNoPop var_9C
  loc_B19722: ConcatStr
  loc_B19723: FStStrNoPop var_A0
  loc_B19726: LitStr Chr(37) & "'"
  loc_B19729: ConcatStr
  loc_B1972A: PopTmpLdAdStr
  loc_B1972E: FLdPr Me
  loc_B19731: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19734: NewIfNullPr clsbase
  loc_B19737: Call clsbase.Filter(from_stack_1v)
  loc_B1973C: FFreeStr var_9C = "": var_A0 = ""
  loc_B19745: FFree1Ad var_88
  loc_B19748: FFree1Var var_98 = ""
  loc_B1974B: LitStr "detalle que contiene "
  loc_B1974E: FLdPr Me
  loc_B19751: VCallAd Control_ID_FiltroMsk
  loc_B19754: FStAdFunc var_88
  loc_B19757: FLdPr var_88
  loc_B1975A: LateIdLdVar var_98 DispID_22 0
  loc_B19761: CStrVarTmp
  loc_B19762: FStStrNoPop var_9C
  loc_B19765: ConcatStr
  loc_B19766: FStStrNoPop var_A0
  loc_B19769: LitStr vbNullString
  loc_B1976C: ConcatStr
  loc_B1976D: FStStrNoPop var_A8
  loc_B19770: FLdPr Me
  loc_B19773: MemStStrCopy
  loc_B19777: FFreeStr var_9C = "": var_A0 = ""
  loc_B19780: FFree1Ad var_88
  loc_B19783: FFree1Var var_98 = ""
  loc_B19786: Branch loc_B19C61
  loc_B19789: FLdRfVar var_A2
  loc_B1978C: FLdPr Me
  loc_B1978F: VCallAd Control_ID_FiltroCbo
  loc_B19792: FStAdFunc var_88
  loc_B19795: FLdPr var_88
  loc_B19798:  = Me.ListIndex
  loc_B1979D: FLdI2 var_A2
  loc_B197A0: LitI2_Byte 4
  loc_B197A2: EqI2
  loc_B197A3: FFree1Ad var_88
  loc_B197A6: BranchF loc_B19818
  loc_B197A9: LitStr "CodiInsu = "
  loc_B197AC: FLdPr Me
  loc_B197AF: VCallAd Control_ID_FiltroMsk
  loc_B197B2: FStAdFunc var_88
  loc_B197B5: FLdPr var_88
  loc_B197B8: LateIdLdVar var_98 DispID_22 0
  loc_B197BF: CStrVarTmp
  loc_B197C0: FStStrNoPop var_9C
  loc_B197C3: ConcatStr
  loc_B197C4: PopTmpLdAdStr
  loc_B197C8: FLdPr Me
  loc_B197CB: MemLdRfVar from_stack_1.BuscarCLS
  loc_B197CE: NewIfNullPr clsbase
  loc_B197D1: Call clsbase.Filter(from_stack_1v)
  loc_B197D6: FFreeStr var_9C = ""
  loc_B197DD: FFree1Ad var_88
  loc_B197E0: FFree1Var var_98 = ""
  loc_B197E3: LitStr "código sea igual a "
  loc_B197E6: FLdPr Me
  loc_B197E9: VCallAd Control_ID_FiltroMsk
  loc_B197EC: FStAdFunc var_88
  loc_B197EF: FLdPr var_88
  loc_B197F2: LateIdLdVar var_98 DispID_22 0
  loc_B197F9: CStrVarTmp
  loc_B197FA: FStStrNoPop var_9C
  loc_B197FD: ConcatStr
  loc_B197FE: FStStrNoPop var_A0
  loc_B19801: FLdPr Me
  loc_B19804: MemStStrCopy
  loc_B19808: FFreeStr var_9C = ""
  loc_B1980F: FFree1Ad var_88
  loc_B19812: FFree1Var var_98 = ""
  loc_B19815: Branch loc_B19C61
  loc_B19818: FLdRfVar var_A2
  loc_B1981B: FLdPr Me
  loc_B1981E: VCallAd Control_ID_FiltroCbo
  loc_B19821: FStAdFunc var_88
  loc_B19824: FLdPr var_88
  loc_B19827:  = Me.ListIndex
  loc_B1982C: FLdI2 var_A2
  loc_B1982F: LitI2_Byte 5
  loc_B19831: EqI2
  loc_B19832: FFree1Ad var_88
  loc_B19835: BranchF loc_B198B9
  loc_B19838: LitStr "DetaInsu LIKE '" & Chr(37)
  loc_B1983B: FLdPr Me
  loc_B1983E: VCallAd Control_ID_FiltroMsk
  loc_B19841: FStAdFunc var_88
  loc_B19844: FLdPr var_88
  loc_B19847: LateIdLdVar var_98 DispID_22 0
  loc_B1984E: CStrVarTmp
  loc_B1984F: FStStrNoPop var_9C
  loc_B19852: ConcatStr
  loc_B19853: FStStrNoPop var_A0
  loc_B19856: LitStr Chr(37) & "'"
  loc_B19859: ConcatStr
  loc_B1985A: PopTmpLdAdStr
  loc_B1985E: FLdPr Me
  loc_B19861: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19864: NewIfNullPr clsbase
  loc_B19867: Call clsbase.Filter(from_stack_1v)
  loc_B1986C: FFreeStr var_9C = "": var_A0 = ""
  loc_B19875: FFree1Ad var_88
  loc_B19878: FFree1Var var_98 = ""
  loc_B1987B: LitStr "detalle que contiene "
  loc_B1987E: FLdPr Me
  loc_B19881: VCallAd Control_ID_FiltroMsk
  loc_B19884: FStAdFunc var_88
  loc_B19887: FLdPr var_88
  loc_B1988A: LateIdLdVar var_98 DispID_22 0
  loc_B19891: CStrVarTmp
  loc_B19892: FStStrNoPop var_9C
  loc_B19895: ConcatStr
  loc_B19896: FStStrNoPop var_A0
  loc_B19899: LitStr vbNullString
  loc_B1989C: ConcatStr
  loc_B1989D: FStStrNoPop var_A8
  loc_B198A0: FLdPr Me
  loc_B198A3: MemStStrCopy
  loc_B198A7: FFreeStr var_9C = "": var_A0 = ""
  loc_B198B0: FFree1Ad var_88
  loc_B198B3: FFree1Var var_98 = ""
  loc_B198B6: Branch loc_B19C61
  loc_B198B9: FLdRfVar var_A2
  loc_B198BC: FLdPr Me
  loc_B198BF: VCallAd Control_ID_FiltroCbo
  loc_B198C2: FStAdFunc var_88
  loc_B198C5: FLdPr var_88
  loc_B198C8:  = Me.ListIndex
  loc_B198CD: FLdI2 var_A2
  loc_B198D0: LitI2_Byte 6
  loc_B198D2: EqI2
  loc_B198D3: FFree1Ad var_88
  loc_B198D6: BranchF loc_B19951
  loc_B198D9: LitStr "CodiOrga LIKE '"
  loc_B198DC: FLdPr Me
  loc_B198DF: VCallAd Control_ID_FiltroMsk
  loc_B198E2: FStAdFunc var_88
  loc_B198E5: FLdPr var_88
  loc_B198E8: LateIdLdVar var_98 DispID_22 0
  loc_B198EF: CStrVarTmp
  loc_B198F0: FStStrNoPop var_9C
  loc_B198F3: ConcatStr
  loc_B198F4: FStStrNoPop var_A0
  loc_B198F7: LitStr Chr(37) & "'"
  loc_B198FA: ConcatStr
  loc_B198FB: PopTmpLdAdStr
  loc_B198FF: FLdPr Me
  loc_B19902: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19905: NewIfNullPr clsbase
  loc_B19908: Call clsbase.Filter(from_stack_1v)
  loc_B1990D: FFreeStr var_9C = "": var_A0 = ""
  loc_B19916: FFree1Ad var_88
  loc_B19919: FFree1Var var_98 = ""
  loc_B1991C: LitStr "código que comience con: "
  loc_B1991F: FLdPr Me
  loc_B19922: VCallAd Control_ID_FiltroMsk
  loc_B19925: FStAdFunc var_88
  loc_B19928: FLdPr var_88
  loc_B1992B: LateIdLdVar var_98 DispID_22 0
  loc_B19932: CStrVarTmp
  loc_B19933: FStStrNoPop var_9C
  loc_B19936: ConcatStr
  loc_B19937: FStStrNoPop var_A0
  loc_B1993A: FLdPr Me
  loc_B1993D: MemStStrCopy
  loc_B19941: FFreeStr var_9C = ""
  loc_B19948: FFree1Ad var_88
  loc_B1994B: FFree1Var var_98 = ""
  loc_B1994E: Branch loc_B19C61
  loc_B19951: FLdRfVar var_A2
  loc_B19954: FLdPr Me
  loc_B19957: VCallAd Control_ID_FiltroCbo
  loc_B1995A: FStAdFunc var_88
  loc_B1995D: FLdPr var_88
  loc_B19960:  = Me.ListIndex
  loc_B19965: FLdI2 var_A2
  loc_B19968: LitI2_Byte 7
  loc_B1996A: EqI2
  loc_B1996B: FFree1Ad var_88
  loc_B1996E: BranchF loc_B199F2
  loc_B19971: LitStr "DetaOrga LIKE '" & Chr(37)
  loc_B19974: FLdPr Me
  loc_B19977: VCallAd Control_ID_FiltroMsk
  loc_B1997A: FStAdFunc var_88
  loc_B1997D: FLdPr var_88
  loc_B19980: LateIdLdVar var_98 DispID_22 0
  loc_B19987: CStrVarTmp
  loc_B19988: FStStrNoPop var_9C
  loc_B1998B: ConcatStr
  loc_B1998C: FStStrNoPop var_A0
  loc_B1998F: LitStr Chr(37) & "'"
  loc_B19992: ConcatStr
  loc_B19993: PopTmpLdAdStr
  loc_B19997: FLdPr Me
  loc_B1999A: MemLdRfVar from_stack_1.BuscarCLS
  loc_B1999D: NewIfNullPr clsbase
  loc_B199A0: Call clsbase.Filter(from_stack_1v)
  loc_B199A5: FFreeStr var_9C = "": var_A0 = ""
  loc_B199AE: FFree1Ad var_88
  loc_B199B1: FFree1Var var_98 = ""
  loc_B199B4: LitStr "detalle que contiene "
  loc_B199B7: FLdPr Me
  loc_B199BA: VCallAd Control_ID_FiltroMsk
  loc_B199BD: FStAdFunc var_88
  loc_B199C0: FLdPr var_88
  loc_B199C3: LateIdLdVar var_98 DispID_22 0
  loc_B199CA: CStrVarTmp
  loc_B199CB: FStStrNoPop var_9C
  loc_B199CE: ConcatStr
  loc_B199CF: FStStrNoPop var_A0
  loc_B199D2: LitStr vbNullString
  loc_B199D5: ConcatStr
  loc_B199D6: FStStrNoPop var_A8
  loc_B199D9: FLdPr Me
  loc_B199DC: MemStStrCopy
  loc_B199E0: FFreeStr var_9C = "": var_A0 = ""
  loc_B199E9: FFree1Ad var_88
  loc_B199EC: FFree1Var var_98 = ""
  loc_B199EF: Branch loc_B19C61
  loc_B199F2: FLdRfVar var_A2
  loc_B199F5: FLdPr Me
  loc_B199F8: VCallAd Control_ID_FiltroCbo
  loc_B199FB: FStAdFunc var_88
  loc_B199FE: FLdPr var_88
  loc_B19A01:  = Me.ListIndex
  loc_B19A06: FLdI2 var_A2
  loc_B19A09: LitI2_Byte 8
  loc_B19A0B: EqI2
  loc_B19A0C: FFree1Ad var_88
  loc_B19A0F: BranchF loc_B19A8A
  loc_B19A12: LitStr "CodiFifu like '"
  loc_B19A15: FLdPr Me
  loc_B19A18: VCallAd Control_ID_FiltroMsk
  loc_B19A1B: FStAdFunc var_88
  loc_B19A1E: FLdPr var_88
  loc_B19A21: LateIdLdVar var_98 DispID_22 0
  loc_B19A28: CStrVarTmp
  loc_B19A29: FStStrNoPop var_9C
  loc_B19A2C: ConcatStr
  loc_B19A2D: FStStrNoPop var_A0
  loc_B19A30: LitStr Chr(37) & "'"
  loc_B19A33: ConcatStr
  loc_B19A34: PopTmpLdAdStr
  loc_B19A38: FLdPr Me
  loc_B19A3B: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19A3E: NewIfNullPr clsbase
  loc_B19A41: Call clsbase.Filter(from_stack_1v)
  loc_B19A46: FFreeStr var_9C = "": var_A0 = ""
  loc_B19A4F: FFree1Ad var_88
  loc_B19A52: FFree1Var var_98 = ""
  loc_B19A55: LitStr "código que comience con: "
  loc_B19A58: FLdPr Me
  loc_B19A5B: VCallAd Control_ID_FiltroMsk
  loc_B19A5E: FStAdFunc var_88
  loc_B19A61: FLdPr var_88
  loc_B19A64: LateIdLdVar var_98 DispID_22 0
  loc_B19A6B: CStrVarTmp
  loc_B19A6C: FStStrNoPop var_9C
  loc_B19A6F: ConcatStr
  loc_B19A70: FStStrNoPop var_A0
  loc_B19A73: FLdPr Me
  loc_B19A76: MemStStrCopy
  loc_B19A7A: FFreeStr var_9C = ""
  loc_B19A81: FFree1Ad var_88
  loc_B19A84: FFree1Var var_98 = ""
  loc_B19A87: Branch loc_B19C61
  loc_B19A8A: FLdRfVar var_A2
  loc_B19A8D: FLdPr Me
  loc_B19A90: VCallAd Control_ID_FiltroCbo
  loc_B19A93: FStAdFunc var_88
  loc_B19A96: FLdPr var_88
  loc_B19A99:  = Me.ListIndex
  loc_B19A9E: FLdI2 var_A2
  loc_B19AA1: LitI2_Byte 9
  loc_B19AA3: EqI2
  loc_B19AA4: FFree1Ad var_88
  loc_B19AA7: BranchF loc_B19B2B
  loc_B19AAA: LitStr "DetaFifu LIKE '" & Chr(37)
  loc_B19AAD: FLdPr Me
  loc_B19AB0: VCallAd Control_ID_FiltroMsk
  loc_B19AB3: FStAdFunc var_88
  loc_B19AB6: FLdPr var_88
  loc_B19AB9: LateIdLdVar var_98 DispID_22 0
  loc_B19AC0: CStrVarTmp
  loc_B19AC1: FStStrNoPop var_9C
  loc_B19AC4: ConcatStr
  loc_B19AC5: FStStrNoPop var_A0
  loc_B19AC8: LitStr Chr(37) & "'"
  loc_B19ACB: ConcatStr
  loc_B19ACC: PopTmpLdAdStr
  loc_B19AD0: FLdPr Me
  loc_B19AD3: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19AD6: NewIfNullPr clsbase
  loc_B19AD9: Call clsbase.Filter(from_stack_1v)
  loc_B19ADE: FFreeStr var_9C = "": var_A0 = ""
  loc_B19AE7: FFree1Ad var_88
  loc_B19AEA: FFree1Var var_98 = ""
  loc_B19AED: LitStr "detalle que contiene "
  loc_B19AF0: FLdPr Me
  loc_B19AF3: VCallAd Control_ID_FiltroMsk
  loc_B19AF6: FStAdFunc var_88
  loc_B19AF9: FLdPr var_88
  loc_B19AFC: LateIdLdVar var_98 DispID_22 0
  loc_B19B03: CStrVarTmp
  loc_B19B04: FStStrNoPop var_9C
  loc_B19B07: ConcatStr
  loc_B19B08: FStStrNoPop var_A0
  loc_B19B0B: LitStr vbNullString
  loc_B19B0E: ConcatStr
  loc_B19B0F: FStStrNoPop var_A8
  loc_B19B12: FLdPr Me
  loc_B19B15: MemStStrCopy
  loc_B19B19: FFreeStr var_9C = "": var_A0 = ""
  loc_B19B22: FFree1Ad var_88
  loc_B19B25: FFree1Var var_98 = ""
  loc_B19B28: Branch loc_B19C61
  loc_B19B2B: FLdRfVar var_A2
  loc_B19B2E: FLdPr Me
  loc_B19B31: VCallAd Control_ID_FiltroCbo
  loc_B19B34: FStAdFunc var_88
  loc_B19B37: FLdPr var_88
  loc_B19B3A:  = Me.ListIndex
  loc_B19B3F: FLdI2 var_A2
  loc_B19B42: LitI2_Byte &HA
  loc_B19B44: EqI2
  loc_B19B45: FFree1Ad var_88
  loc_B19B48: BranchF loc_B19BC3
  loc_B19B4B: LitStr "CucuPers like '"
  loc_B19B4E: FLdPr Me
  loc_B19B51: VCallAd Control_ID_FiltroMsk
  loc_B19B54: FStAdFunc var_88
  loc_B19B57: FLdPr var_88
  loc_B19B5A: LateIdLdVar var_98 DispID_22 0
  loc_B19B61: CStrVarTmp
  loc_B19B62: FStStrNoPop var_9C
  loc_B19B65: ConcatStr
  loc_B19B66: FStStrNoPop var_A0
  loc_B19B69: LitStr Chr(37) & "'"
  loc_B19B6C: ConcatStr
  loc_B19B6D: PopTmpLdAdStr
  loc_B19B71: FLdPr Me
  loc_B19B74: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19B77: NewIfNullPr clsbase
  loc_B19B7A: Call clsbase.Filter(from_stack_1v)
  loc_B19B7F: FFreeStr var_9C = "": var_A0 = ""
  loc_B19B88: FFree1Ad var_88
  loc_B19B8B: FFree1Var var_98 = ""
  loc_B19B8E: LitStr "código que comience con: "
  loc_B19B91: FLdPr Me
  loc_B19B94: VCallAd Control_ID_FiltroMsk
  loc_B19B97: FStAdFunc var_88
  loc_B19B9A: FLdPr var_88
  loc_B19B9D: LateIdLdVar var_98 DispID_22 0
  loc_B19BA4: CStrVarTmp
  loc_B19BA5: FStStrNoPop var_9C
  loc_B19BA8: ConcatStr
  loc_B19BA9: FStStrNoPop var_A0
  loc_B19BAC: FLdPr Me
  loc_B19BAF: MemStStrCopy
  loc_B19BB3: FFreeStr var_9C = ""
  loc_B19BBA: FFree1Ad var_88
  loc_B19BBD: FFree1Var var_98 = ""
  loc_B19BC0: Branch loc_B19C61
  loc_B19BC3: FLdRfVar var_A2
  loc_B19BC6: FLdPr Me
  loc_B19BC9: VCallAd Control_ID_FiltroCbo
  loc_B19BCC: FStAdFunc var_88
  loc_B19BCF: FLdPr var_88
  loc_B19BD2:  = Me.ListIndex
  loc_B19BD7: FLdI2 var_A2
  loc_B19BDA: LitI2_Byte &HB
  loc_B19BDC: EqI2
  loc_B19BDD: FFree1Ad var_88
  loc_B19BE0: BranchF loc_B19C61
  loc_B19BE3: LitStr "DetaProv LIKE '" & Chr(37)
  loc_B19BE6: FLdPr Me
  loc_B19BE9: VCallAd Control_ID_FiltroMsk
  loc_B19BEC: FStAdFunc var_88
  loc_B19BEF: FLdPr var_88
  loc_B19BF2: LateIdLdVar var_98 DispID_22 0
  loc_B19BF9: CStrVarTmp
  loc_B19BFA: FStStrNoPop var_9C
  loc_B19BFD: ConcatStr
  loc_B19BFE: FStStrNoPop var_A0
  loc_B19C01: LitStr Chr(37) & "'"
  loc_B19C04: ConcatStr
  loc_B19C05: PopTmpLdAdStr
  loc_B19C09: FLdPr Me
  loc_B19C0C: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19C0F: NewIfNullPr clsbase
  loc_B19C12: Call clsbase.Filter(from_stack_1v)
  loc_B19C17: FFreeStr var_9C = "": var_A0 = ""
  loc_B19C20: FFree1Ad var_88
  loc_B19C23: FFree1Var var_98 = ""
  loc_B19C26: LitStr "detalle que contiene "
  loc_B19C29: FLdPr Me
  loc_B19C2C: VCallAd Control_ID_FiltroMsk
  loc_B19C2F: FStAdFunc var_88
  loc_B19C32: FLdPr var_88
  loc_B19C35: LateIdLdVar var_98 DispID_22 0
  loc_B19C3C: CStrVarTmp
  loc_B19C3D: FStStrNoPop var_9C
  loc_B19C40: ConcatStr
  loc_B19C41: FStStrNoPop var_A0
  loc_B19C44: LitStr vbNullString
  loc_B19C47: ConcatStr
  loc_B19C48: FStStrNoPop var_A8
  loc_B19C4B: FLdPr Me
  loc_B19C4E: MemStStrCopy
  loc_B19C52: FFreeStr var_9C = "": var_A0 = ""
  loc_B19C5B: FFree1Ad var_88
  loc_B19C5E: FFree1Var var_98 = ""
  loc_B19C61: Branch loc_B19C88
  loc_B19C64: LitStr vbNullString
  loc_B19C67: FStStrCopy var_9C
  loc_B19C6A: FLdRfVar var_9C
  loc_B19C6D: FLdPr Me
  loc_B19C70: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19C73: NewIfNullPr clsbase
  loc_B19C76: Call clsbase.Filter(from_stack_1v)
  loc_B19C7B: FFree1Str var_9C
  loc_B19C7E: LitStr vbNullString
  loc_B19C81: FLdPr Me
  loc_B19C84: MemStStrCopy
  loc_B19C88: FLdRfVar var_AC
  loc_B19C8B: FLdPr Me
  loc_B19C8E: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19C91: NewIfNullPr clsbase
  loc_B19C94: from_stack_1 = clsbase.RecordCount
  loc_B19C99: ILdRf var_AC
  loc_B19C9C: LitI4 0
  loc_B19CA1: GtI4
  loc_B19CA2: BranchF loc_B19D40
  loc_B19CA5: FLdPr Me
  loc_B19CA8: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19CAB: NewIfNullAd
  loc_B19CAE: FStAd var_B0 
  loc_B19CB2: FLdRfVar var_B0
  loc_B19CB5: CVarRef
  loc_B19CBA: ILdRf Me
  loc_B19CBD: CastAd
  loc_B19CC0: FStAdFunc var_88
  loc_B19CC3: FLdRfVar var_88
  loc_B19CC6: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_B19CCB: ILdRf var_B0
  loc_B19CCE: CastAd
  loc_B19CD1: FLdPr Me
  loc_B19CD4: MemStAdFunc
  loc_B19CD8: FFreeAd var_88 = ""
  loc_B19CDF: LitI4 0
  loc_B19CE4: LitI4 1
  loc_B19CE9: FLdRfVar var_C4
  loc_B19CEC: Redim
  loc_B19CF6: FLdPr Me
  loc_B19CF9: MemLdRfVar from_stack_1.BuscarCLS
  loc_B19CFC: NewIfNullAd
  loc_B19CFF: FStAd var_88 
  loc_B19D03: FLdRfVar var_88
  loc_B19D06: CVarRef
  loc_B19D0B: ParmAry1St
  loc_B19D11: FLdPr Me
  loc_B19D14: VCallAd Control_ID_dgdABMS
  loc_B19D17: CVarAd
  loc_B19D1B: ParmAry1St
  loc_B19D21: FLdRfVar var_C4
  loc_B19D24: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_B19D29: ILdRf var_88
  loc_B19D2C: CastAd
  loc_B19D2F: FLdPr Me
  loc_B19D32: MemStAdFunc
  loc_B19D36: FLdRfVar var_C4
  loc_B19D39: Erase
  loc_B19D3A: FFree1Ad var_88
  loc_B19D3D: Branch loc_B19D54
  loc_B19D40: ILdRf Me
  loc_B19D43: CastAd
  loc_B19D46: FStAdFunc var_88
  loc_B19D49: FLdRfVar var_88
  loc_B19D4C: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_B19D51: FFree1Ad var_88
  loc_B19D54: FLdPr Me
  loc_B19D57: VCallAd Control_ID_dgdABMS
  loc_B19D5A: FStAdFunc var_B0
  loc_B19D5D: LitI4 0
  loc_B19D62: FStStrCopy var_9C
  loc_B19D65: FLdRfVar var_9C
  loc_B19D68: FLdPr Me
  loc_B19D6B: MemLdStr sFiltro
  loc_B19D6E: FLdZeroAd var_B0
  loc_B19D71: FStAdFunc var_88
  loc_B19D74: FLdRfVar var_88
  loc_B19D77: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_B19D7C: FFree1Str var_9C
  loc_B19D7F: FFreeAd var_88 = ""
  loc_B19D86: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997F84
  'Data Table: 42327C
  loc_997F20: ILdI2 KeyAscii
  loc_997F23: LitI2_Byte &H27
  loc_997F25: EqI2
  loc_997F26: BranchF loc_997F2E
  loc_997F29: LitI2_Byte 0
  loc_997F2B: IStI2 KeyAscii
  loc_997F2E: FLdRfVar var_88
  loc_997F31: FLdPr Me
  loc_997F34: MemLdRfVar from_stack_1.BuscarCLS
  loc_997F37: NewIfNullPr clsbase
  loc_997F3A: from_stack_1 = clsbase.RecordCount
  loc_997F3F: ILdRf var_88
  loc_997F42: LitI4 0
  loc_997F47: EqI4
  loc_997F48: ILdI2 KeyAscii
  loc_997F4B: CI4UI1
  loc_997F4C: LitI4 8
  loc_997F51: NeI4
  loc_997F52: AndI4
  loc_997F53: FLdPr Me
  loc_997F56: VCallAd Control_ID_FiltroMsk
  loc_997F59: FStAdFunc var_8C
  loc_997F5C: FLdPr var_8C
  loc_997F5F: LateIdLdVar var_9C DispID_16 0
  loc_997F66: CStrVarTmp
  loc_997F67: FStStrNoPop var_A0
  loc_997F6A: LitStr vbNullString
  loc_997F6D: EqStr
  loc_997F6F: AndI4
  loc_997F70: FFree1Str var_A0
  loc_997F73: FFree1Ad var_8C
  loc_997F76: FFree1Var var_9C = ""
  loc_997F79: BranchF loc_997F81
  loc_997F7C: LitI2_Byte 0
  loc_997F7E: IStI2 KeyAscii
  loc_997F81: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '954F3C
  'Data Table: 42327C
  loc_954F24: FLdPr Me
  loc_954F27: VCallAd Control_ID_dgdABMS
  loc_954F2A: FStAdFunc var_88
  loc_954F2D: FLdRfVar var_88
  loc_954F30: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_954F35: FFree1Ad var_88
  loc_954F38: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '954FD4
  'Data Table: 42327C
  loc_954FBC: FLdPr Me
  loc_954FBF: VCallAd Control_ID_dgdABMS
  loc_954FC2: FStAdFunc var_88
  loc_954FC5: FLdRfVar var_88
  loc_954FC8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_954FCD: FFree1Ad var_88
  loc_954FD0: ExitProcHresult
  loc_954FD1: FStStrNoPop var_C0
End Sub

Private Sub dgdABMS_DblClick() '953DB8
  'Data Table: 42327C
  loc_953DA0: ILdRf Me
  loc_953DA3: FStAdNoPop
  loc_953DA7: ImpAdLdRf MemVar_C44F9C
  loc_953DAA: NewIfNullPr Me
  loc_953DAD: Me.Global.Unload from_stack_1
  loc_953DB2: FFree1Ad var_88
  loc_953DB5: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999C68
  'Data Table: 42327C
  loc_999C0C: FLdRfVar var_B4
  loc_999C0F: FLdRfVar var_B0
  loc_999C12: FLdI2 ColIndex
  loc_999C15: CVarI2 var_A8
  loc_999C18: PopAdLdVar
  loc_999C19: FLdPr Me
  loc_999C1C: VCallAd Control_ID_dgdABMS
  loc_999C1F: FStAdFunc var_88
  loc_999C22: FLdPr var_88
  loc_999C25: LateIdLdVar var_98 DispID_105 0
  loc_999C2C: CastAdVar Me
  loc_999C30: FStAdFunc var_AC
  loc_999C33: FLdPr var_AC
  loc_999C36: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_999C3B: FLdPr var_B0
  loc_999C3E:  = Me.DataField
  loc_999C43: FLdZeroAd var_B4
  loc_999C46: PopTmpLdAdStr
  loc_999C4A: FLdPr Me
  loc_999C4D: MemLdRfVar from_stack_1.BuscarCLS
  loc_999C50: NewIfNullPr clsbase
  loc_999C53: Call clsbase.Sort(from_stack_1v)
  loc_999C58: FFree1Str var_B8
  loc_999C5B: FFreeAd var_88 = "": var_AC = ""
  loc_999C64: FFree1Var var_98 = ""
  loc_999C67: ExitProcHresult
End Sub

Private Sub OKButton_Click() '954BAC
  'Data Table: 42327C
  loc_954B94: ILdRf Me
  loc_954B97: FStAdNoPop
  loc_954B9B: ImpAdLdRf MemVar_C44F9C
  loc_954B9E: NewIfNullPr Me
  loc_954BA1: Me.Global.Unload from_stack_1
  loc_954BA6: FFree1Ad var_88
  loc_954BA9: ExitProcHresult
End Sub

Private Sub Form_Load() 'A67F10
  'Data Table: 42327C
  loc_A67C0C: FLdRfVar var_88
  loc_A67C0F: FLdPr Me
  loc_A67C12: MemLdRfVar from_stack_1.BuscarCLS
  loc_A67C15: NewIfNullPr clsbase
  loc_A67C18: from_stack_1v = clsbase.RsFrmGet()
  loc_A67C1D: ILdRf var_88
  loc_A67C20: LitNothing
  loc_A67C22: Is
  loc_A67C24: FFree1Ad var_88
  loc_A67C27: BranchF loc_A67D3C
  loc_A67C2A: LitStr "SELECT IFNULL(ugp.PeriInfo,0) PeriInfo, ug.CodiUnga, ug.DetaUnga"
  loc_A67C2D: LitStr ", ug.CodiTiug, DetaTiug"
  loc_A67C30: ConcatStr
  loc_A67C31: FStStrNoPop var_8C
  loc_A67C34: LitStr ", IFNULL(ugp.CodiPart,'') CodiPart, IFNULL(p.DetaPart,'') DetaPart, IFNULL(ugp.PermPart,0) PermPart"
  loc_A67C37: ConcatStr
  loc_A67C38: FStStrNoPop var_90
  loc_A67C3B: LitStr ", IFNULL(ugp.CodiInsu,0) CodiInsu, IFNULL(i.DetaInsu,'') DetaInsu, IFNULL(ugp.PermInsu,0) PermInsu"
  loc_A67C3E: ConcatStr
  loc_A67C3F: FStStrNoPop var_94
  loc_A67C42: LitStr ", IFNULL(ugp.CodiOrga,'') CodiOrga, IFNULL(orga.DetaOrga,'') DetaOrga, IFNULL(ugp.PermOrga,0) PermOrga"
  loc_A67C45: ConcatStr
  loc_A67C46: FStStrNoPop var_98
  loc_A67C49: LitStr ", IFNULL(ugp.CodiFifu,'') CodiFifu, IFNULL(f.DetaFifu,'') DetaFifu, IFNULL(ugp.PermFifu,0) PermFifu"
  loc_A67C4C: ConcatStr
  loc_A67C4D: FStStrNoPop var_9C
  loc_A67C50: LitStr ", IFNULL(ugp.CucuProv,0) CucuProv, IFNULL(prov.DetaProv,'') DetaProv, IFNULL(ugp.PermProv,0) PermProv"
  loc_A67C53: ConcatStr
  loc_A67C54: FStStrNoPop var_A0
  loc_A67C57: LitStr ", IFNULL(ugp.ImpoUgpe,0) ImpoUgpe, IFNULL(ugp.AumeUgpe,0) AumeUgpe, IFNULL(ugp.DismUgpe,0) DismUgpe"
  loc_A67C5A: ConcatStr
  loc_A67C5B: FStStrNoPop var_A4
  loc_A67C5E: LitStr ", IFNULL(ugp.CoimUgpe,0) CoimUgpe, IFNULL(ugp.ObseUgpe,'') ObseUgpe"
  loc_A67C61: ConcatStr
  loc_A67C62: FStStrNoPop var_A8
  loc_A67C65: LitStr ", ugp.AltaUsua, ugp.AltaFeho, ugp.ModiUsua, ugp.ModiFeho, ugp.BajaUsua, ugp.BajaFeho, ugp.BajaMoti"
  loc_A67C68: ConcatStr
  loc_A67C69: FStStrNoPop var_AC
  loc_A67C6C: LitStr " FROM unidadgasto ug"
  loc_A67C6F: ConcatStr
  loc_A67C70: FStStrNoPop var_B0
  loc_A67C73: LitStr " INNER JOIN tipoug t ON t.CodiTiug = ug.CodiTiug"
  loc_A67C76: ConcatStr
  loc_A67C77: FStStrNoPop var_B4
  loc_A67C7A: LitStr " LEFT JOIN ugperiodo ugp ON ugp.CodiUnga = ug.CodiUnga AND ugp.PeriInfo= "
  loc_A67C7D: ConcatStr
  loc_A67C7E: FStStrNoPop var_B8
  loc_A67C81: ImpAdLdI2 MemVar_C3D064
  loc_A67C84: CStrUI1
  loc_A67C86: FStStrNoPop var_BC
  loc_A67C89: ConcatStr
  loc_A67C8A: FStStrNoPop var_C0
  loc_A67C8D: LitStr " LEFT JOIN partida p ON p.PeriInfo = ugp.PeriInfo AND p.CodiPart = ugp.CodiPart"
  loc_A67C90: ConcatStr
  loc_A67C91: FStStrNoPop var_C4
  loc_A67C94: LitStr " LEFT JOIN infogov.insumo i ON i.CodiInsu = ugp.CodiInsu"
  loc_A67C97: ConcatStr
  loc_A67C98: FStStrNoPop var_C8
  loc_A67C9B: LitStr " LEFT JOIN infogov.organigrama orga ON orga.PeriInfo = ugp.PeriInfo AND orga.CodiOrga = ugp.CodiOrga"
  loc_A67C9E: ConcatStr
  loc_A67C9F: FStStrNoPop var_CC
  loc_A67CA2: LitStr " LEFT JOIN finalidad f ON f.PeriInfo = ugp.PeriInfo AND f.CodiFifu=ugp.CodiFifu"
  loc_A67CA5: ConcatStr
  loc_A67CA6: FStStrNoPop var_D0
  loc_A67CA9: LitStr " LEFT JOIN proveedor prov ON prov.CucuPers = ugp.CucuProv"
  loc_A67CAC: ConcatStr
  loc_A67CAD: FStStrNoPop var_D4
  loc_A67CB0: LitStr " WHERE TRUE "
  loc_A67CB3: ConcatStr
  loc_A67CB4: CVarStr var_144
  loc_A67CB7: LitVarStr var_114, " AND ug.BajaFeho Is Null "
  loc_A67CBC: FStVarCopyObj var_124
  loc_A67CBF: FLdRfVar var_124
  loc_A67CC2: LitVarStr var_F4, vbNullString
  loc_A67CC7: FStVarCopyObj var_104
  loc_A67CCA: FLdRfVar var_104
  loc_A67CCD: FLdPr Me
  loc_A67CD0: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A67CD3: CVarRef
  loc_A67CD8: FLdRfVar var_134
  loc_A67CDB: ImpAdCallFPR4  = IIf(, , )
  loc_A67CE0: FLdRfVar var_134
  loc_A67CE3: ConcatVar var_154
  loc_A67CE7: LitVarStr var_164, " ORDER BY ug.CodiUnga"
  loc_A67CEC: ConcatVar var_174
  loc_A67CF0: CStrVarVal var_178
  loc_A67CF4: FLdPr Me
  loc_A67CF7: MemLdRfVar from_stack_1.BuscarCLS
  loc_A67CFA: NewIfNullPr clsbase
  loc_A67CFD: Call clsbase.RedefineRS(from_stack_1v)
  loc_A67D02: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_A67D2D: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_134 = "": var_154 = ""
  loc_A67D3C: LitVarI2 var_E4, 0
  loc_A67D41: PopAdLdVar
  loc_A67D42: LitStr "Unidad de Gasto (Código)"
  loc_A67D45: FLdPr Me
  loc_A67D48: VCallAd Control_ID_FiltroCbo
  loc_A67D4B: FStAdFunc var_88
  loc_A67D4E: FLdPr var_88
  loc_A67D51: Me.AddItem from_stack_1, from_stack_2
  loc_A67D56: FFree1Ad var_88
  loc_A67D59: LitVarI2 var_E4, 1
  loc_A67D5E: PopAdLdVar
  loc_A67D5F: LitStr "Unidad de Gasto (Detalle)"
  loc_A67D62: FLdPr Me
  loc_A67D65: VCallAd Control_ID_FiltroCbo
  loc_A67D68: FStAdFunc var_88
  loc_A67D6B: FLdPr var_88
  loc_A67D6E: Me.AddItem from_stack_1, from_stack_2
  loc_A67D73: FFree1Ad var_88
  loc_A67D76: LitVarI2 var_E4, 2
  loc_A67D7B: PopAdLdVar
  loc_A67D7C: LitStr "Partida (Código)"
  loc_A67D7F: FLdPr Me
  loc_A67D82: VCallAd Control_ID_FiltroCbo
  loc_A67D85: FStAdFunc var_88
  loc_A67D88: FLdPr var_88
  loc_A67D8B: Me.AddItem from_stack_1, from_stack_2
  loc_A67D90: FFree1Ad var_88
  loc_A67D93: LitVarI2 var_E4, 3
  loc_A67D98: PopAdLdVar
  loc_A67D99: LitStr "Partida (Detalle)"
  loc_A67D9C: FLdPr Me
  loc_A67D9F: VCallAd Control_ID_FiltroCbo
  loc_A67DA2: FStAdFunc var_88
  loc_A67DA5: FLdPr var_88
  loc_A67DA8: Me.AddItem from_stack_1, from_stack_2
  loc_A67DAD: FFree1Ad var_88
  loc_A67DB0: LitVarI2 var_E4, 4
  loc_A67DB5: PopAdLdVar
  loc_A67DB6: LitStr "Insumo (Código)"
  loc_A67DB9: FLdPr Me
  loc_A67DBC: VCallAd Control_ID_FiltroCbo
  loc_A67DBF: FStAdFunc var_88
  loc_A67DC2: FLdPr var_88
  loc_A67DC5: Me.AddItem from_stack_1, from_stack_2
  loc_A67DCA: FFree1Ad var_88
  loc_A67DCD: LitVarI2 var_E4, 5
  loc_A67DD2: PopAdLdVar
  loc_A67DD3: LitStr "Insumo (Detalle)"
  loc_A67DD6: FLdPr Me
  loc_A67DD9: VCallAd Control_ID_FiltroCbo
  loc_A67DDC: FStAdFunc var_88
  loc_A67DDF: FLdPr var_88
  loc_A67DE2: Me.AddItem from_stack_1, from_stack_2
  loc_A67DE7: FFree1Ad var_88
  loc_A67DEA: LitVarI2 var_E4, 6
  loc_A67DEF: PopAdLdVar
  loc_A67DF0: LitStr "Oficina (Código)"
  loc_A67DF3: FLdPr Me
  loc_A67DF6: VCallAd Control_ID_FiltroCbo
  loc_A67DF9: FStAdFunc var_88
  loc_A67DFC: FLdPr var_88
  loc_A67DFF: Me.AddItem from_stack_1, from_stack_2
  loc_A67E04: FFree1Ad var_88
  loc_A67E07: LitVarI2 var_E4, 7
  loc_A67E0C: PopAdLdVar
  loc_A67E0D: LitStr "Oficina (Detalle)"
  loc_A67E10: FLdPr Me
  loc_A67E13: VCallAd Control_ID_FiltroCbo
  loc_A67E16: FStAdFunc var_88
  loc_A67E19: FLdPr var_88
  loc_A67E1C: Me.AddItem from_stack_1, from_stack_2
  loc_A67E21: FFree1Ad var_88
  loc_A67E24: LitVarI2 var_E4, 8
  loc_A67E29: PopAdLdVar
  loc_A67E2A: LitStr "Prog Gestión (Código)"
  loc_A67E2D: FLdPr Me
  loc_A67E30: VCallAd Control_ID_FiltroCbo
  loc_A67E33: FStAdFunc var_88
  loc_A67E36: FLdPr var_88
  loc_A67E39: Me.AddItem from_stack_1, from_stack_2
  loc_A67E3E: FFree1Ad var_88
  loc_A67E41: LitVarI2 var_E4, 9
  loc_A67E46: PopAdLdVar
  loc_A67E47: LitStr "Prog Gestión (Detalle)"
  loc_A67E4A: FLdPr Me
  loc_A67E4D: VCallAd Control_ID_FiltroCbo
  loc_A67E50: FStAdFunc var_88
  loc_A67E53: FLdPr var_88
  loc_A67E56: Me.AddItem from_stack_1, from_stack_2
  loc_A67E5B: FFree1Ad var_88
  loc_A67E5E: LitVarI2 var_E4, 10
  loc_A67E63: PopAdLdVar
  loc_A67E64: LitStr "Proveedor (Código)"
  loc_A67E67: FLdPr Me
  loc_A67E6A: VCallAd Control_ID_FiltroCbo
  loc_A67E6D: FStAdFunc var_88
  loc_A67E70: FLdPr var_88
  loc_A67E73: Me.AddItem from_stack_1, from_stack_2
  loc_A67E78: FFree1Ad var_88
  loc_A67E7B: LitVarI2 var_E4, 11
  loc_A67E80: PopAdLdVar
  loc_A67E81: LitStr "Proveedor (Detalle)"
  loc_A67E84: FLdPr Me
  loc_A67E87: VCallAd Control_ID_FiltroCbo
  loc_A67E8A: FStAdFunc var_88
  loc_A67E8D: FLdPr var_88
  loc_A67E90: Me.AddItem from_stack_1, from_stack_2
  loc_A67E95: FFree1Ad var_88
  loc_A67E98: LitI2_Byte 1
  loc_A67E9A: FLdPr Me
  loc_A67E9D: VCallAd Control_ID_FiltroCbo
  loc_A67EA0: FStAdFunc var_88
  loc_A67EA3: FLdPr var_88
  loc_A67EA6: Me.ListIndex = from_stack_1
  loc_A67EAB: FFree1Ad var_88
  loc_A67EAE: LitI4 0
  loc_A67EB3: LitI4 1
  loc_A67EB8: FLdRfVar var_17C
  loc_A67EBB: Redim
  loc_A67EC5: FLdPr Me
  loc_A67EC8: MemLdRfVar from_stack_1.BuscarCLS
  loc_A67ECB: NewIfNullAd
  loc_A67ECE: FStAd var_88 
  loc_A67ED2: FLdRfVar var_88
  loc_A67ED5: CVarRef
  loc_A67EDA: ParmAry1St
  loc_A67EE0: FLdPr Me
  loc_A67EE3: VCallAd Control_ID_dgdABMS
  loc_A67EE6: CVarAd
  loc_A67EEA: ParmAry1St
  loc_A67EF0: FLdRfVar var_17C
  loc_A67EF3: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A67EF8: ILdRf var_88
  loc_A67EFB: CastAd
  loc_A67EFE: FLdPr Me
  loc_A67F01: MemStAdFunc
  loc_A67F05: FLdRfVar var_17C
  loc_A67F08: Erase
  loc_A67F09: FFree1Ad var_88
  loc_A67F0C: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '954B14
  'Data Table: 42327C
  loc_954AFC: ILdRf Me
  loc_954AFF: FStAdNoPop
  loc_954B03: ImpAdLdRf MemVar_C44F9C
  loc_954B06: NewIfNullPr Me
  loc_954B09: Me.Global.Unload from_stack_1
  loc_954B0E: FFree1Ad var_88
  loc_954B11: ExitProcHresult
End Sub

Private Sub Form_Activate() '952F20
  'Data Table: 42327C
  loc_952F0C: FLdPr Me
  loc_952F0F: VCallAd Control_ID_FiltroMsk
  loc_952F12: CVarAd
  loc_952F16: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_952F1B: FFree1Var var_94 = ""
  loc_952F1E: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '96A5A0
  'Data Table: 42327C
  loc_96A584: On Error Resume Next
  loc_96A589: ILdI2 KeyAscii
  loc_96A58C: CI4UI1
  loc_96A58D: LitI4 &HD
  loc_96A592: EqI4
  loc_96A593: BranchF loc_96A59D
  loc_96A598: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_96A59F: ExitProcHresult
End Sub

Public Function MuestroAnuladosGet() '423828
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '423837
  MuestroAnulados = Value
End Sub

Public Function global_4338300Get() '423846
  global_4338300Get = global_4338300
End Function

Public Sub global_4338300Put(Value) '423860
  global_4338300 = Value
End Sub

Public Sub global_4338300Set(Value) '42387A
  global_4338300 = Value
End Sub

Public Function sFiltroGet() '423894
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '4238A3
  sFiltro = Value
End Sub

Public Sub Constructor(sWhere) 'A11444
  'Data Table: 42327C
  loc_A11328: ILdRf sWhere
  loc_A1132B: FStStrCopy var_88
  loc_A1132E: LitStr "SELECT IFNULL(ugp.PeriInfo,0) PeriInfo, ug.CodiUnga, ug.DetaUnga"
  loc_A11331: LitStr ", ug.CodiTiug, DetaTiug"
  loc_A11334: ConcatStr
  loc_A11335: FStStrNoPop var_8C
  loc_A11338: LitStr ", IFNULL(ugp.CodiPart,'') CodiPart, IFNULL(p.DetaPart,'') DetaPart, IFNULL(ugp.PermPart,0) PermPart"
  loc_A1133B: ConcatStr
  loc_A1133C: FStStrNoPop var_90
  loc_A1133F: LitStr ", IFNULL(ugp.CodiInsu,0) CodiInsu, IFNULL(i.DetaInsu,'') DetaInsu, IFNULL(ugp.PermInsu,0) PermInsu"
  loc_A11342: ConcatStr
  loc_A11343: FStStrNoPop var_94
  loc_A11346: LitStr ", IFNULL(ugp.CodiOrga,'') CodiOrga, IFNULL(orga.DetaOrga,'') DetaOrga, IFNULL(ugp.PermOrga,0) PermOrga"
  loc_A11349: ConcatStr
  loc_A1134A: FStStrNoPop var_98
  loc_A1134D: LitStr ", IFNULL(ugp.CodiFifu,'') CodiFifu, IFNULL(f.DetaFifu,'') DetaFifu, IFNULL(ugp.PermFifu,0) PermFifu"
  loc_A11350: ConcatStr
  loc_A11351: FStStrNoPop var_9C
  loc_A11354: LitStr ", IFNULL(ugp.CucuProv,0) CucuProv, IFNULL(prov.DetaProv,'') DetaProv, IFNULL(ugp.PermProv,0) PermProv"
  loc_A11357: ConcatStr
  loc_A11358: FStStrNoPop var_A0
  loc_A1135B: LitStr ", IFNULL(ugp.ImpoUgpe,0) ImpoUgpe, IFNULL(ugp.AumeUgpe,0) AumeUgpe, IFNULL(ugp.DismUgpe,0) DismUgpe"
  loc_A1135E: ConcatStr
  loc_A1135F: FStStrNoPop var_A4
  loc_A11362: LitStr ", IFNULL(ugp.CoimUgpe,0) CoimUgpe, IFNULL(ugp.ObseUgpe,'') ObseUgpe"
  loc_A11365: ConcatStr
  loc_A11366: FStStrNoPop var_A8
  loc_A11369: LitStr ", ugp.AltaUsua, ugp.AltaFeho, ugp.ModiUsua, ugp.ModiFeho, ugp.BajaUsua, ugp.BajaFeho, ugp.BajaMoti"
  loc_A1136C: ConcatStr
  loc_A1136D: FStStrNoPop var_AC
  loc_A11370: LitStr " FROM unidadgasto ug"
  loc_A11373: ConcatStr
  loc_A11374: FStStrNoPop var_B0
  loc_A11377: LitStr " INNER JOIN tipoug t ON t.CodiTiug = ug.CodiTiug"
  loc_A1137A: ConcatStr
  loc_A1137B: FStStrNoPop var_B4
  loc_A1137E: LitStr " LEFT JOIN ugperiodo ugp ON ugp.CodiUnga = ug.CodiUnga AND ugp.PeriInfo= "
  loc_A11381: ConcatStr
  loc_A11382: FStStrNoPop var_B8
  loc_A11385: ImpAdLdI2 MemVar_C3D064
  loc_A11388: CStrUI1
  loc_A1138A: FStStrNoPop var_BC
  loc_A1138D: ConcatStr
  loc_A1138E: FStStrNoPop var_C0
  loc_A11391: LitStr " LEFT JOIN partida p ON p.PeriInfo = ugp.PeriInfo AND p.CodiPart = ugp.CodiPart"
  loc_A11394: ConcatStr
  loc_A11395: FStStrNoPop var_C4
  loc_A11398: LitStr " LEFT JOIN infogov.insumo i ON i.CodiInsu = ugp.CodiInsu"
  loc_A1139B: ConcatStr
  loc_A1139C: FStStrNoPop var_C8
  loc_A1139F: LitStr " LEFT JOIN infogov.organigrama orga ON orga.PeriInfo = ugp.PeriInfo AND orga.CodiOrga = ugp.CodiOrga"
  loc_A113A2: ConcatStr
  loc_A113A3: FStStrNoPop var_CC
  loc_A113A6: LitStr " LEFT JOIN finalidad f ON f.PeriInfo = ugp.PeriInfo AND f.CodiFifu=ugp.CodiFifu"
  loc_A113A9: ConcatStr
  loc_A113AA: FStStrNoPop var_D0
  loc_A113AD: LitStr " LEFT JOIN proveedor prov ON prov.CucuPers = ugp.CucuProv"
  loc_A113B0: ConcatStr
  loc_A113B1: FStStrNoPop var_D4
  loc_A113B4: LitStr " WHERE TRUE "
  loc_A113B7: ConcatStr
  loc_A113B8: CVarStr var_144
  loc_A113BB: LitVarStr var_114, " AND ug.BajaFeho Is Null "
  loc_A113C0: FStVarCopyObj var_124
  loc_A113C3: FLdRfVar var_124
  loc_A113C6: LitVarStr var_F4, vbNullString
  loc_A113CB: FStVarCopyObj var_104
  loc_A113CE: FLdRfVar var_104
  loc_A113D1: FLdPr Me
  loc_A113D4: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A113D7: CVarRef
  loc_A113DC: FLdRfVar var_134
  loc_A113DF: ImpAdCallFPR4  = IIf(, , )
  loc_A113E4: FLdRfVar var_134
  loc_A113E7: ConcatVar var_154
  loc_A113EB: ILdRf var_88
  loc_A113EE: CVarStr var_164
  loc_A113F1: ConcatVar var_174
  loc_A113F5: CStrVarVal var_178
  loc_A113F9: FLdPr Me
  loc_A113FC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A113FF: NewIfNullPr clsbase
  loc_A11402: Call clsbase.RedefineRS(from_stack_1v)
  loc_A11407: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_A11432: FFreeVar var_104 = "": var_124 = "": var_144 = "": var_134 = "": var_154 = ""
  loc_A11441: ExitProcHresult
  loc_A11442: FLdPr ConstructorBC
End Sub
