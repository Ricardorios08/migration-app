VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmDefinitivasporOrdendeCompra
  Caption = "Imputaciones Definitivas por Orden de Compra"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmDefinitivasporOrdendeCompra.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15855
  ClientHeight = 9885
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame Frame
    Caption = " Definitivas por Orden de Compra "
    Left = 120
    Top = 1680
    Width = 14415
    Height = 8295
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSFlexGridLib.MSFlexGrid FlexItemCompra
      Left = 120
      Top = 3600
      Width = 13695
      Height = 2535
      TabIndex = 23
      OleObjectBlob = "frmDefinitivasporOrdendeCompra.frx":08CA
    End
    Begin VB.CheckBox chkSoloAjustes
      Caption = "Generar SOLO ajustes de preventivas"
      Left = 3360
      Top = 3120
      Width = 4575
      Height = 375
      TabIndex = 13
    End
    Begin VB.Frame Frame1
      Caption = "Datos de Imputación del Item "
      Left = 120
      Top = 6240
      Width = 13695
      Height = 1935
      TabIndex = 16
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.Label DetaFifuLbl
        Left = 3840
        Top = 1320
        Width = 9480
        Height = 360
        TabIndex = 22
        BorderStyle = 1 'Fixed Single
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 9,75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label DetaOrgaLbl
        Left = 1680
        Top = 840
        Width = 11640
        Height = 360
        TabIndex = 20
        BorderStyle = 1 'Fixed Single
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 9,75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label DetaPartLbl
        Left = 960
        Top = 360
        Width = 12360
        Height = 360
        TabIndex = 18
        BorderStyle = 1 'Fixed Single
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 9,75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label4
        Caption = "Finalidad-Función-Programa de Gestión:"
        Left = 120
        Top = 1320
        Width = 3630
        Height = 240
        TabIndex = 21
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 9,75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label1
        Caption = ":"
        Left = 120
        Top = 840
        Width = 45
        Height = 240
        TabIndex = 19
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 9,75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label Label2
        Caption = "Partida:"
        Left = 120
        Top = 360
        Width = 690
        Height = 240
        TabIndex = 17
        AutoSize = -1  'True
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 9,75
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin VB.CommandButton MarcarTodosCmd
      Caption = "Marcar Todos"
      Left = 120
      Top = 3120
      Width = 2535
      Height = 375
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 12
    End
    Begin MSDataGridLib.DataGrid dgdABMS
      Left = 120
      Top = 1200
      Width = 13695
      Height = 1695
      TabIndex = 11
      OleObjectBlob = "frmDefinitivasporOrdendeCompra.frx":09B6
    End
    Begin MSMask.MaskEdBox FechImpuMsk
      Left = 1080
      Top = 720
      Width = 1455
      Height = 360
      TabIndex = 7
      OleObjectBlob = "frmDefinitivasporOrdendeCompra.frx":0E40
    End
    Begin VB.TextBox CucuPersTxt
      Left = 4080
      Top = 720
      Width = 1815
      Height = 360
      TabIndex = 9
      MaxLength = 70
      DataField = "CucuPers"
    End
    Begin VB.Label DetaProvLbl
      Left = 6000
      Top = 720
      Width = 7815
      Height = 360
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      DataField = "DetaProv"
    End
    Begin VB.Label Label15
      Caption = "Proveedor:"
      Left = 2880
      Top = 720
      Width = 1140
      Height = 300
      TabIndex = 8
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label6
      Caption = "Fecha:"
      Left = 240
      Top = 720
      Width = 735
      Height = 300
      TabIndex = 6
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label TotalItemOrdenLbl
      Left = 11280
      Top = 3120
      Width = 2520
      Height = 360
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      DataField = "TotalItemOrden"
      DataFormat = 80
    End
    Begin VB.Label Label3
      Caption = "Falta imputar para la OC:"
      Left = 8520
      Top = 3120
      Width = 2640
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
  End
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 2
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmDefinitivasporOrdendeCompra.frx":0EF0
    End
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmDefinitivasporOrdendeCompra.frx":0F78
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15855
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmDefinitivasporOrdendeCompra.frx":8AF6
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmDefinitivasporOrdendeCompra.frx":9052
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmDefinitivasporOrdendeCompra"


Private Sub tlbABMS_ButtonClick(Button As Button) 'C05488
  'Data Table: 491BF8
  loc_C02E14: ILdRf Button
  loc_C02E17: FStAd var_88 
  loc_C02E1B: FLdRfVar var_9C
  loc_C02E1E: FLdPr var_88
  loc_C02E21:  = Me.Key
  loc_C02E26: FLdZeroAd var_9C
  loc_C02E29: FStStr var_A0
  loc_C02E2C: ILdRf var_A0
  loc_C02E2F: LitStr "btnCrear"
  loc_C02E32: EqStr
  loc_C02E34: BranchF loc_C03021
  loc_C02E37: FLdRfVar var_A4
  loc_C02E3A: FLdPr Me
  loc_C02E3D: MemLdRfVar from_stack_1.global_56
  loc_C02E40: NewIfNullPr clsordencompra
  loc_C02E43: from_stack_1 = clsordencompra.RecordCount
  loc_C02E48: ILdRf var_A4
  loc_C02E4B: LitI4 0
  loc_C02E50: GtI4
  loc_C02E51: BranchF loc_C0301E
  loc_C02E54: LitI2_Byte 1
  loc_C02E56: FLdPr Me
  loc_C02E59: MemStUI1
  loc_C02E5D: ILdRf Me
  loc_C02E60: CastAd
  loc_C02E63: FStAdFunc var_A8
  loc_C02E66: FLdRfVar var_A8
  loc_C02E69: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_C02E6E: FFree1Ad var_A8
  loc_C02E71: LitI4 0
  loc_C02E76: LitI4 0
  loc_C02E7B: FLdRfVar var_AC
  loc_C02E7E: Redim
  loc_C02E88: FLdPr Me
  loc_C02E8B: VCallAd Control_ID_dgdABMS
  loc_C02E8E: CVarAd
  loc_C02E92: ParmAry1St
  loc_C02E98: FLdRfVar var_AC
  loc_C02E9B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_C02EA0: FLdRfVar var_AC
  loc_C02EA3: Erase
  loc_C02EA4: FLdRfVar var_9C
  loc_C02EA7: ImpAdLdI2 MemVar_C3D064
  loc_C02EAA: FLdPr Me
  loc_C02EAD: MemLdRfVar from_stack_1.global_56
  loc_C02EB0: NewIfNullPr clsordencompra
  loc_C02EB3: from_stack_2v = clsordencompra.UltimaFechImpu(from_stack_1v)
  loc_C02EB8: FLdZeroAd var_9C
  loc_C02EBB: CVarStr var_BC
  loc_C02EBE: PopAdLdVar
  loc_C02EBF: FLdPr Me
  loc_C02EC2: VCallAd Control_ID_FechImpuMsk
  loc_C02EC5: FStAdFunc var_A8
  loc_C02EC8: FLdPr var_A8
  loc_C02ECB: LateIdSt
  loc_C02ED0: FFree1Ad var_A8
  loc_C02ED3: FFree1Var var_BC = ""
  loc_C02ED6: FLdPr Me
  loc_C02ED9: VCallAd Control_ID_FechImpuMsk
  loc_C02EDC: FStAdFunc var_A8
  loc_C02EDF: FLdPr var_A8
  loc_C02EE2: LateIdLdVar var_BC DispID_11 -32767
  loc_C02EE9: CStrVarTmp
  loc_C02EEA: CVarStr var_DC
  loc_C02EED: PopAdLdVar
  loc_C02EEE: FLdPr Me
  loc_C02EF1: VCallAd Control_ID_FechImpuMsk
  loc_C02EF4: FStAdFunc var_E0
  loc_C02EF7: FLdPr var_E0
  loc_C02EFA: LateIdSt
  loc_C02EFF: FFreeAd var_A8 = ""
  loc_C02F06: FFreeVar var_BC = ""
  loc_C02F0D: LitStr "Municipalidad de Guaymallén"
  loc_C02F10: LitStr "Municipalidad de Maipú"
  loc_C02F13: EqStr
  loc_C02F15: BranchF loc_C02F52
  loc_C02F18: FLdPr Me
  loc_C02F1B: VCallAd Control_ID_FechImpuMsk
  loc_C02F1E: FStAdFunc var_A8
  loc_C02F21: FLdPr var_A8
  loc_C02F24: LateIdLdVar var_BC DispID_11 -32767
  loc_C02F2B: CStrVarTmp
  loc_C02F2C: CVarStr var_DC
  loc_C02F2F: PopAdLdVar
  loc_C02F30: FLdPr Me
  loc_C02F33: VCallAd Control_ID_FechImpuMsk
  loc_C02F36: FStAdFunc var_E0
  loc_C02F39: FLdPr var_E0
  loc_C02F3C: LateIdSt
  loc_C02F41: FFreeAd var_A8 = ""
  loc_C02F48: FFreeVar var_BC = ""
  loc_C02F4F: Branch loc_C02F72
  loc_C02F52: ImpAdLdFPR8 MemVar_C3D04C
  loc_C02F55: CStrDate
  loc_C02F57: CVarStr var_BC
  loc_C02F5A: PopAdLdVar
  loc_C02F5B: FLdPr Me
  loc_C02F5E: VCallAd Control_ID_FechImpuMsk
  loc_C02F61: FStAdFunc var_A8
  loc_C02F64: FLdPr var_A8
  loc_C02F67: LateIdSt
  loc_C02F6C: FFree1Ad var_A8
  loc_C02F6F: FFree1Var var_BC = ""
  loc_C02F72: LitI4 0
  loc_C02F77: LitI4 0
  loc_C02F7C: FLdRfVar var_AC
  loc_C02F7F: Redim
  loc_C02F89: FLdPr Me
  loc_C02F8C: VCallAd Control_ID_chkSoloAjustes
  loc_C02F8F: CVarAd
  loc_C02F93: ParmAry1St
  loc_C02F99: FLdRfVar var_AC
  loc_C02F9C: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C02FA1: FLdRfVar var_AC
  loc_C02FA4: Erase
  loc_C02FA5: ILdRf Me
  loc_C02FA8: CastAd
  loc_C02FAB: FStAdFunc var_A8
  loc_C02FAE: FLdRfVar var_A8
  loc_C02FB1: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_C02FB6: FFree1Ad var_A8
  loc_C02FB9: FLdRfVar var_9C
  loc_C02FBC: ImpAdLdI2 MemVar_C3D064
  loc_C02FBF: FLdPr Me
  loc_C02FC2: MemLdRfVar from_stack_1.global_56
  loc_C02FC5: NewIfNullPr clsordencompra
  loc_C02FC8: from_stack_2v = clsordencompra.UltimaFechImpu(from_stack_1v)
  loc_C02FCD: FLdZeroAd var_9C
  loc_C02FD0: CVarStr var_BC
  loc_C02FD3: PopAdLdVar
  loc_C02FD4: FLdPr Me
  loc_C02FD7: VCallAd Control_ID_FechImpuMsk
  loc_C02FDA: FStAdFunc var_A8
  loc_C02FDD: FLdPr var_A8
  loc_C02FE0: LateIdSt
  loc_C02FE5: FFree1Ad var_A8
  loc_C02FE8: FFree1Var var_BC = ""
  loc_C02FEB: LitI4 0
  loc_C02FF0: LitI4 0
  loc_C02FF5: FLdRfVar var_AC
  loc_C02FF8: Redim
  loc_C03002: FLdPr Me
  loc_C03005: VCallAd Control_ID_FechImpuMsk
  loc_C03008: CVarAd
  loc_C0300C: ParmAry1St
  loc_C03012: FLdRfVar var_AC
  loc_C03015: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_C0301A: FLdRfVar var_AC
  loc_C0301D: Erase
  loc_C0301E: Branch loc_C05484
  loc_C03021: ILdRf var_A0
  loc_C03024: LitStr "btnModificar"
  loc_C03027: EqStr
  loc_C03029: BranchF loc_C0303C
  loc_C0302C: LitI4 0
  loc_C03031: LitStr "Opción no disponible en esta pantalla."
  loc_C03034: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C03039: Branch loc_C05484
  loc_C0303C: ILdRf var_A0
  loc_C0303F: LitStr "btnEliminar"
  loc_C03042: EqStr
  loc_C03044: BranchF loc_C03057
  loc_C03047: LitI4 0
  loc_C0304C: LitStr "Opción no disponible en esta pantalla."
  loc_C0304F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C03054: Branch loc_C05484
  loc_C03057: ILdRf var_A0
  loc_C0305A: LitStr "btnGuardar"
  loc_C0305D: EqStr
  loc_C0305F: BranchF loc_C052D3
  loc_C03062: FLdPr Me
  loc_C03065: MemLdUI1 global_64
  loc_C03069: FStUI1 var_E2
  loc_C0306D: FLdUI1
  loc_C03071: LitI2_Byte 1
  loc_C03073: EqI2
  loc_C03074: BranchF loc_C052C1
  loc_C03077: LitI2_Byte 0
  loc_C03079: FLdPr Me
  loc_C0307C: MemStI2 global_104
  loc_C0307F: FLdPr Me
  loc_C03082: VCallAd Control_ID_FlexItemCompra
  loc_C03085: FStAdFunc var_E8
  loc_C03088: LitI2_Byte 1
  loc_C0308A: FLdRfVar var_96
  loc_C0308D: FLdPr var_E8
  loc_C03090: LateIdLdVar var_BC DispID_4 0
  loc_C03097: CI4Var
  loc_C03099: LitI4 1
  loc_C0309E: SubI4
  loc_C0309F: CI2I4
  loc_C030A0: FFree1Var var_BC = ""
  loc_C030A3: ForI2 var_EC
  loc_C030A9: FLdI2 var_96
  loc_C030AC: CI4UI1
  loc_C030AD: CVarI4
  loc_C030B1: PopAdLdVar
  loc_C030B2: LitVarI4
  loc_C030BA: PopAdLdVar
  loc_C030BB: FLdPr var_E8
  loc_C030BE: LateIdCallLdVar
  loc_C030C8: CStrVarTmp
  loc_C030C9: FStStrNoPop var_9C
  loc_C030CC: LitStr vbNullString
  loc_C030CF: NeStr
  loc_C030D1: FLdI2 var_96
  loc_C030D4: CI4UI1
  loc_C030D5: CVarI4
  loc_C030D9: PopAdLdVar
  loc_C030DA: LitVarI4
  loc_C030E2: PopAdLdVar
  loc_C030E3: FLdPr var_E8
  loc_C030E6: LateIdCallLdVar
  loc_C030F0: CStrVarTmp
  loc_C030F1: FStStrNoPop var_160
  loc_C030F4: LitStr vbNullString
  loc_C030F7: NeStr
  loc_C030F9: AndI4
  loc_C030FA: FLdI2 var_96
  loc_C030FD: CI4UI1
  loc_C030FE: CVarI4
  loc_C03102: PopAdLdVar
  loc_C03103: LitVarI4
  loc_C0310B: PopAdLdVar
  loc_C0310C: FLdPr var_E8
  loc_C0310F: LateIdCallLdVar
  loc_C03119: CStrVarTmp
  loc_C0311A: FStStrNoPop var_1B4
  loc_C0311D: LitStr vbNullString
  loc_C03120: NeStr
  loc_C03122: AndI4
  loc_C03123: FLdI2 var_96
  loc_C03126: CI4UI1
  loc_C03127: CVarI4
  loc_C0312B: PopAdLdVar
  loc_C0312C: LitVarI4
  loc_C03134: PopAdLdVar
  loc_C03135: FLdPr var_E8
  loc_C03138: LateIdCallLdVar
  loc_C03142: CStrVarTmp
  loc_C03143: FStStrNoPop var_208
  loc_C03146: LitStr "No"
  loc_C03149: EqStr
  loc_C0314B: AndI4
  loc_C0314C: FFreeStr var_9C = "": var_160 = "": var_1B4 = ""
  loc_C03157: FFreeVar var_BC = "": var_DC = "": var_1B0 = ""
  loc_C03162: BranchF loc_C04791
  loc_C03165: FLdI2 var_96
  loc_C03168: CI4UI1
  loc_C03169: CVarI4
  loc_C0316D: PopAdLdVar
  loc_C0316E: LitVarI4
  loc_C03176: PopAdLdVar
  loc_C03177: FLdPr var_E8
  loc_C0317A: LateIdCallLdVar
  loc_C03184: PopAd
  loc_C03186: LitI4 2
  loc_C0318B: FLdRfVar var_BC
  loc_C0318E: CStrVarTmp
  loc_C0318F: CVarStr var_DC
  loc_C03192: FLdRfVar var_1B0
  loc_C03195: ImpAdCallFPR4  = Round(, )
  loc_C0319A: FLdRfVar var_1B0
  loc_C0319D: CR4Var
  loc_C0319E: FLdPr Me
  loc_C031A1: MemStFPR8 global_76
  loc_C031A4: FFreeVar var_BC = "": var_DC = ""
  loc_C031AD: FLdI2 var_96
  loc_C031B0: CI4UI1
  loc_C031B1: CVarI4
  loc_C031B5: PopAdLdVar
  loc_C031B6: LitVarI4
  loc_C031BE: PopAdLdVar
  loc_C031BF: FLdPr var_E8
  loc_C031C2: LateIdCallLdVar
  loc_C031CC: PopAd
  loc_C031CE: FLdRfVar var_210
  loc_C031D1: FLdRfVar var_BC
  loc_C031D4: CStrVarTmp
  loc_C031D5: FStStrNoPop var_9C
  loc_C031D8: CI4Str
  loc_C031D9: ImpAdLdI2 MemVar_C3D064
  loc_C031DC: FLdPr Me
  loc_C031DF: MemLdRfVar from_stack_1.global_52
  loc_C031E2: NewIfNullPr clsimputacion
  loc_C031E5: from_stack_3v = clsimputacion.BuscaSaldPrev(from_stack_1v, from_stack_2v)
  loc_C031EA: FLdFPR8 var_210
  loc_C031ED: FStFPR8 var_94
  loc_C031F0: FFree1Str var_9C
  loc_C031F3: FFree1Var var_BC = ""
  loc_C031F6: FLdFPR8 var_94
  loc_C031F9: FLdPr Me
  loc_C031FC: MemLdFPR8 global_76
  loc_C031FF: NeR8
  loc_C03200: BranchF loc_C043CC
  loc_C03203: FLdFPR8 var_94
  loc_C03206: FLdPr Me
  loc_C03209: MemLdFPR8 global_76
  loc_C0320C: GtR4
  loc_C0320D: BranchF loc_C043BC
  loc_C03210: LitStr "Municipalidad de Guaymallén"
  loc_C03213: LitStr "Municipalidad de Rivadavia"
  loc_C03216: EqStr
  loc_C03218: BranchF loc_C03836
  loc_C0321B: FLdI2 var_96
  loc_C0321E: CI4UI1
  loc_C0321F: CVarI4
  loc_C03223: PopAdLdVar
  loc_C03224: LitVarI4
  loc_C0322C: PopAdLdVar
  loc_C0322D: FLdPr var_E8
  loc_C03230: LateIdCallLdVar
  loc_C0323A: PopAd
  loc_C0323C: FLdI2 var_96
  loc_C0323F: CI4UI1
  loc_C03240: CVarI4
  loc_C03244: PopAdLdVar
  loc_C03245: LitVarI4
  loc_C0324D: PopAdLdVar
  loc_C0324E: FLdPr var_E8
  loc_C03251: LateIdCallLdVar
  loc_C0325B: PopAd
  loc_C0325D: FLdI2 var_96
  loc_C03260: CI4UI1
  loc_C03261: CVarI4
  loc_C03265: PopAdLdVar
  loc_C03266: LitVarI4
  loc_C0326E: PopAdLdVar
  loc_C0326F: FLdPr var_E8
  loc_C03272: LateIdCallLdVar
  loc_C0327C: PopAd
  loc_C0327E: FLdI2 var_96
  loc_C03281: CI4UI1
  loc_C03282: CVarI4
  loc_C03286: PopAdLdVar
  loc_C03287: LitVarI4
  loc_C0328F: PopAdLdVar
  loc_C03290: FLdPr var_E8
  loc_C03293: LateIdCallLdVar
  loc_C0329D: PopAd
  loc_C0329F: FLdI2 var_96
  loc_C032A2: CI4UI1
  loc_C032A3: CVarI4
  loc_C032A7: PopAdLdVar
  loc_C032A8: LitVarI4
  loc_C032B0: PopAdLdVar
  loc_C032B1: FLdPr var_E8
  loc_C032B4: LateIdCallLdVar
  loc_C032BE: PopAd
  loc_C032C0: FLdPr Me
  loc_C032C3: VCallAd Control_ID_FechImpuMsk
  loc_C032C6: FStAdFunc var_A8
  loc_C032C9: FLdPr var_A8
  loc_C032CC: LateIdLdVar var_270 DispID_15 0
  loc_C032D3: PopAd
  loc_C032D5: FLdRfVar var_3BC
  loc_C032D8: FLdRfVar var_288
  loc_C032DB: LitVarStr var_284, "ExpeImpu"
  loc_C032E0: PopAdLdVar
  loc_C032E1: FLdRfVar var_274
  loc_C032E4: FLdRfVar var_E0
  loc_C032E7: FLdPr Me
  loc_C032EA: MemLdRfVar from_stack_1.global_56
  loc_C032ED: NewIfNullPr clsordencompra
  loc_C032F0: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C032F5: FLdPr var_E0
  loc_C032F8:  = Me.Fields
  loc_C032FD: FLdPr var_274
  loc_C03300: from_stack_2 = Me.Item(from_stack_1)
  loc_C03305: FLdPr var_288
  loc_C03308:  = Me.Value
  loc_C0330D: LitI4 2
  loc_C03312: FLdFPR8 var_94
  loc_C03315: FLdPr Me
  loc_C03318: MemLdFPR8 global_76
  loc_C0331B: SubR4
  loc_C0331C: CVarR8
  loc_C03320: FLdRfVar var_2B8
  loc_C03323: ImpAdCallFPR4  = Round(, )
  loc_C03328: LitI4 2
  loc_C0332D: FLdFPR8 var_94
  loc_C03330: FLdPr Me
  loc_C03333: MemLdFPR8 global_76
  loc_C03336: SubR4
  loc_C03337: CVarR8
  loc_C0333B: FLdRfVar var_2E8
  loc_C0333E: ImpAdCallFPR4  = Round(, )
  loc_C03343: FLdI2 var_96
  loc_C03346: CI4UI1
  loc_C03347: CVarI4
  loc_C0334B: PopAdLdVar
  loc_C0334C: LitVarI4
  loc_C03354: PopAdLdVar
  loc_C03355: FLdPr var_E8
  loc_C03358: LateIdCallLdVar
  loc_C03362: PopAd
  loc_C03364: FLdRfVar var_3D4
  loc_C03367: FLdRfVar var_354
  loc_C0336A: LitVarStr var_350, "CodiNope"
  loc_C0336F: PopAdLdVar
  loc_C03370: FLdRfVar var_340
  loc_C03373: FLdRfVar var_33C
  loc_C03376: FLdPr Me
  loc_C03379: MemLdRfVar from_stack_1.global_56
  loc_C0337C: NewIfNullPr clsordencompra
  loc_C0337F: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C03384: FLdPr var_33C
  loc_C03387:  = Me.Fields
  loc_C0338C: FLdPr var_340
  loc_C0338F: from_stack_2 = Me.Item(from_stack_1)
  loc_C03394: FLdPr var_354
  loc_C03397:  = Me.Value
  loc_C0339C: FLdI2 var_96
  loc_C0339F: CI4UI1
  loc_C033A0: CVarI4
  loc_C033A4: PopAdLdVar
  loc_C033A5: LitVarI4
  loc_C033AD: PopAdLdVar
  loc_C033AE: FLdPr var_E8
  loc_C033B1: LateIdCallLdVar
  loc_C033BB: PopAd
  loc_C033BD: FLdRfVar var_A4
  loc_C033C0: LitI2_Byte 0
  loc_C033C2: LitI2_Byte 0
  loc_C033C4: LitI4 0
  loc_C033C9: FLdRfVar var_3A4
  loc_C033CC: CStrVarTmp
  loc_C033CD: FStStrNoPop var_3D8
  loc_C033D0: CI2Str
  loc_C033D2: FLdRfVar var_3D4
  loc_C033D5: CI4Var
  loc_C033D7: FLdRfVar var_338
  loc_C033DA: CStrVarTmp
  loc_C033DB: FStStrNoPop var_3C4
  loc_C033DE: FLdRfVar var_2E8
  loc_C033E1: CR4Var
  loc_C033E2: PopFPR8
  loc_C033E3: FLdRfVar var_2B8
  loc_C033E6: CR4Var
  loc_C033E7: PopFPR8
  loc_C033E8: LitI2_Byte 1
  loc_C033EA: CR8I2
  loc_C033EB: PopFPR8
  loc_C033EC: FLdRfVar var_3BC
  loc_C033EF: CStrVarTmp
  loc_C033F0: FStStrNoPop var_3C0
  loc_C033F3: FLdRfVar var_270
  loc_C033F6: CStrVarTmp
  loc_C033F7: FStStrNoPop var_3AC
  loc_C033FA: FLdRfVar var_260
  loc_C033FD: CStrVarTmp
  loc_C033FE: FStStrNoPop var_3A8
  loc_C03401: FLdRfVar var_204
  loc_C03404: CStrVarTmp
  loc_C03405: FStStrNoPop var_208
  loc_C03408: CI4Str
  loc_C03409: FLdRfVar var_1B0
  loc_C0340C: CStrVarTmp
  loc_C0340D: FStStrNoPop var_1B4
  loc_C03410: CI2Str
  loc_C03412: FLdRfVar var_DC
  loc_C03415: CStrVarTmp
  loc_C03416: FStStrNoPop var_160
  loc_C03419: FLdRfVar var_BC
  loc_C0341C: CStrVarTmp
  loc_C0341D: FStStrNoPop var_9C
  loc_C03420: FLdPr Me
  loc_C03423: MemLdRfVar from_stack_1.global_52
  loc_C03426: NewIfNullPr clsimputacion
  loc_C03429: from_stack_16v = clsimputacion.DesafectarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C0342E: ILdRf var_A4
  loc_C03431: FStR4 var_8C
  loc_C03434: FFreeStr var_9C = "": var_160 = "": var_1B4 = "": var_208 = "": var_3A8 = "": var_3AC = "": var_3C0 = "": var_3C4 = ""
  loc_C03449: FFreeAd var_A8 = "": var_E0 = "": var_274 = "": var_33C = "": var_340 = "": var_288 = ""
  loc_C0345A: FFreeVar var_BC = "": var_DC = "": var_1B0 = "": var_204 = "": var_260 = "": var_270 = "": var_2A8 = "": var_2D8 = "": var_338 = "": var_3A4 = "": var_3BC = "": var_2B8 = "": var_2E8 = ""
  loc_C03479: ILdRf var_8C
  loc_C0347C: LitI4 0
  loc_C03481: EqI4
  loc_C03482: BranchF loc_C03492
  loc_C03485: LitI4 0
  loc_C0348A: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C0348D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C03492: FLdI2 var_96
  loc_C03495: CI4UI1
  loc_C03496: CVarI4
  loc_C0349A: PopAdLdVar
  loc_C0349B: LitVarI4
  loc_C034A3: PopAdLdVar
  loc_C034A4: FLdPr var_E8
  loc_C034A7: LateIdCallLdVar
  loc_C034B1: PopAd
  loc_C034B3: FLdI2 var_96
  loc_C034B6: CI4UI1
  loc_C034B7: CVarI4
  loc_C034BB: PopAdLdVar
  loc_C034BC: LitVarI4
  loc_C034C4: PopAdLdVar
  loc_C034C5: FLdPr var_E8
  loc_C034C8: LateIdCallLdVar
  loc_C034D2: PopAd
  loc_C034D4: FLdI2 var_96
  loc_C034D7: CI4UI1
  loc_C034D8: CVarI4
  loc_C034DC: PopAdLdVar
  loc_C034DD: LitVarI4
  loc_C034E5: PopAdLdVar
  loc_C034E6: FLdPr var_E8
  loc_C034E9: LateIdCallLdVar
  loc_C034F3: PopAd
  loc_C034F5: FLdI2 var_96
  loc_C034F8: CI4UI1
  loc_C034F9: CVarI4
  loc_C034FD: PopAdLdVar
  loc_C034FE: LitVarI4
  loc_C03506: PopAdLdVar
  loc_C03507: FLdPr var_E8
  loc_C0350A: LateIdCallLdVar
  loc_C03514: PopAd
  loc_C03516: FLdI2 var_96
  loc_C03519: CI4UI1
  loc_C0351A: CVarI4
  loc_C0351E: PopAdLdVar
  loc_C0351F: LitVarI4
  loc_C03527: PopAdLdVar
  loc_C03528: FLdPr var_E8
  loc_C0352B: LateIdCallLdVar
  loc_C03535: PopAd
  loc_C03537: FLdPr Me
  loc_C0353A: VCallAd Control_ID_FechImpuMsk
  loc_C0353D: FStAdFunc var_A8
  loc_C03540: FLdPr var_A8
  loc_C03543: LateIdLdVar var_270 DispID_15 0
  loc_C0354A: PopAd
  loc_C0354C: FLdRfVar var_3BC
  loc_C0354F: FLdRfVar var_288
  loc_C03552: LitVarStr var_284, "ExpeImpu"
  loc_C03557: PopAdLdVar
  loc_C03558: FLdRfVar var_274
  loc_C0355B: FLdRfVar var_E0
  loc_C0355E: FLdPr Me
  loc_C03561: MemLdRfVar from_stack_1.global_56
  loc_C03564: NewIfNullPr clsordencompra
  loc_C03567: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C0356C: FLdPr var_E0
  loc_C0356F:  = Me.Fields
  loc_C03574: FLdPr var_274
  loc_C03577: from_stack_2 = Me.Item(from_stack_1)
  loc_C0357C: FLdPr var_288
  loc_C0357F:  = Me.Value
  loc_C03584: FLdI2 var_96
  loc_C03587: CI4UI1
  loc_C03588: CVarI4
  loc_C0358C: PopAdLdVar
  loc_C0358D: LitVarI4
  loc_C03595: PopAdLdVar
  loc_C03596: FLdPr var_E8
  loc_C03599: LateIdCallLdVar
  loc_C035A3: PopAd
  loc_C035A5: FLdI2 var_96
  loc_C035A8: CI4UI1
  loc_C035A9: CVarI4
  loc_C035AD: PopAdLdVar
  loc_C035AE: LitVarI4
  loc_C035B6: PopAdLdVar
  loc_C035B7: FLdPr var_E8
  loc_C035BA: LateIdCallLdVar
  loc_C035C4: PopAd
  loc_C035C6: FLdI2 var_96
  loc_C035C9: CI4UI1
  loc_C035CA: CVarI4
  loc_C035CE: PopAdLdVar
  loc_C035CF: LitVarI4
  loc_C035D7: PopAdLdVar
  loc_C035D8: FLdPr var_E8
  loc_C035DB: LateIdCallLdVar
  loc_C035E5: PopAd
  loc_C035E7: FLdI2 var_96
  loc_C035EA: CI4UI1
  loc_C035EB: CVarI4
  loc_C035EF: PopAdLdVar
  loc_C035F0: LitVarI4
  loc_C035F8: PopAdLdVar
  loc_C035F9: FLdPr var_E8
  loc_C035FC: LateIdCallLdVar
  loc_C03606: PopAd
  loc_C03608: FLdRfVar var_3D4
  loc_C0360B: FLdRfVar var_354
  loc_C0360E: LitVarStr var_438, "CodiNope"
  loc_C03613: PopAdLdVar
  loc_C03614: FLdRfVar var_340
  loc_C03617: FLdRfVar var_33C
  loc_C0361A: FLdPr Me
  loc_C0361D: MemLdRfVar from_stack_1.global_56
  loc_C03620: NewIfNullPr clsordencompra
  loc_C03623: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C03628: FLdPr var_33C
  loc_C0362B:  = Me.Fields
  loc_C03630: FLdPr var_340
  loc_C03633: from_stack_2 = Me.Item(from_stack_1)
  loc_C03638: FLdPr var_354
  loc_C0363B:  = Me.Value
  loc_C03640: FLdRfVar var_508
  loc_C03643: FLdRfVar var_454
  loc_C03646: LitVarStr var_450, "CodiOrco"
  loc_C0364B: PopAdLdVar
  loc_C0364C: FLdRfVar var_440
  loc_C0364F: FLdRfVar var_43C
  loc_C03652: FLdPr Me
  loc_C03655: MemLdRfVar from_stack_1.global_56
  loc_C03658: NewIfNullPr clsordencompra
  loc_C0365B: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C03660: FLdPr var_43C
  loc_C03663:  = Me.Fields
  loc_C03668: FLdPr var_440
  loc_C0366B: from_stack_2 = Me.Item(from_stack_1)
  loc_C03670: FLdPr var_454
  loc_C03673:  = Me.Value
  loc_C03678: FLdI2 var_96
  loc_C0367B: CI4UI1
  loc_C0367C: CVarI4
  loc_C03680: PopAdLdVar
  loc_C03681: LitVarI4
  loc_C03689: PopAdLdVar
  loc_C0368A: FLdPr var_E8
  loc_C0368D: LateIdCallLdVar
  loc_C03697: PopAd
  loc_C03699: FLdI2 var_96
  loc_C0369C: CI4UI1
  loc_C0369D: CVarI4
  loc_C036A1: PopAdLdVar
  loc_C036A2: LitVarI4
  loc_C036AA: PopAdLdVar
  loc_C036AB: FLdPr var_E8
  loc_C036AE: LateIdCallLdVar
  loc_C036B8: PopAd
  loc_C036BA: FLdRfVar var_520
  loc_C036BD: FLdRfVar var_4F0
  loc_C036C0: LitVarStr var_4EC, "CucuPers"
  loc_C036C5: PopAdLdVar
  loc_C036C6: FLdRfVar var_4DC
  loc_C036C9: FLdRfVar var_4D8
  loc_C036CC: FLdPr Me
  loc_C036CF: MemLdRfVar from_stack_1.global_56
  loc_C036D2: NewIfNullPr clsordencompra
  loc_C036D5: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C036DA: FLdPr var_4D8
  loc_C036DD:  = Me.Fields
  loc_C036E2: FLdPr var_4DC
  loc_C036E5: from_stack_2 = Me.Item(from_stack_1)
  loc_C036EA: FLdPr var_4F0
  loc_C036ED:  = Me.Value
  loc_C036F2: FLdRfVar var_A4
  loc_C036F5: LitI2_Byte 0
  loc_C036F7: LitI2_Byte 0
  loc_C036F9: LitI2_Byte 0
  loc_C036FB: LitI4 0
  loc_C03700: FLdRfVar var_520
  loc_C03703: CStrVarTmp
  loc_C03704: FStStrNoPop var_524
  loc_C03707: FLdRfVar var_3A4
  loc_C0370A: CStrVarTmp
  loc_C0370B: FStStrNoPop var_510
  loc_C0370E: CUI1Str
  loc_C03710: FLdRfVar var_338
  loc_C03713: CStrVarTmp
  loc_C03714: FStStrNoPop var_50C
  loc_C03717: CI2Str
  loc_C03719: FLdRfVar var_508
  loc_C0371C: CI4Var
  loc_C0371E: FLdRfVar var_3D4
  loc_C03721: CI4Var
  loc_C03723: FLdRfVar var_2E8
  loc_C03726: CStrVarTmp
  loc_C03727: FStStrNoPop var_4F8
  loc_C0372A: FLdRfVar var_2D8
  loc_C0372D: CStrVarTmp
  loc_C0372E: FStStrNoPop var_4F4
  loc_C03731: CR8Str
  loc_C03733: PopFPR8
  loc_C03734: FLdRfVar var_2B8
  loc_C03737: CStrVarTmp
  loc_C03738: FStStrNoPop var_3D8
  loc_C0373B: CR8Str
  loc_C0373D: PopFPR8
  loc_C0373E: FLdRfVar var_2A8
  loc_C03741: CStrVarTmp
  loc_C03742: FStStrNoPop var_3C4
  loc_C03745: CR8Str
  loc_C03747: PopFPR8
  loc_C03748: FLdRfVar var_3BC
  loc_C0374B: CStrVarTmp
  loc_C0374C: FStStrNoPop var_3C0
  loc_C0374F: FLdRfVar var_270
  loc_C03752: CStrVarTmp
  loc_C03753: FStStrNoPop var_3AC
  loc_C03756: FLdRfVar var_260
  loc_C03759: CStrVarTmp
  loc_C0375A: FStStrNoPop var_3A8
  loc_C0375D: FLdRfVar var_204
  loc_C03760: CStrVarTmp
  loc_C03761: FStStrNoPop var_208
  loc_C03764: CI4Str
  loc_C03765: FLdRfVar var_1B0
  loc_C03768: CStrVarTmp
  loc_C03769: FStStrNoPop var_1B4
  loc_C0376C: CI2Str
  loc_C0376E: FLdRfVar var_DC
  loc_C03771: CStrVarTmp
  loc_C03772: FStStrNoPop var_160
  loc_C03775: FLdRfVar var_BC
  loc_C03778: CStrVarTmp
  loc_C03779: FStStrNoPop var_9C
  loc_C0377C: FLdPr Me
  loc_C0377F: MemLdRfVar from_stack_1.global_52
  loc_C03782: NewIfNullPr clsimputacion
  loc_C03785: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C0378A: ILdRf var_A4
  loc_C0378D: FStR4 var_8C
  loc_C03790: FFreeStr var_9C = "": var_160 = "": var_1B4 = "": var_208 = "": var_3A8 = "": var_3AC = "": var_3C0 = "": var_3C4 = "": var_3D8 = "": var_4F4 = "": var_4F8 = "": var_50C = "": var_510 = ""
  loc_C037AF: FFreeAd var_A8 = "": var_E0 = "": var_274 = "": var_33C = "": var_340 = "": var_43C = "": var_440 = "": var_4D8 = "": var_4DC = "": var_288 = "": var_354 = "": var_454 = ""
  loc_C037CC: FFreeVar var_BC = "": var_DC = "": var_1B0 = "": var_204 = "": var_260 = "": var_270 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_2E8 = "": var_338 = "": var_3A4 = "": var_3BC = "": var_3D4 = "": var_508 = ""
  loc_C037EF: ILdRf var_8C
  loc_C037F2: LitI4 0
  loc_C037F7: EqI4
  loc_C037F8: BranchF loc_C03808
  loc_C037FB: LitI4 0
  loc_C03800: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C03803: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C03808: LitI2_Byte &HFF
  loc_C0380A: FLdPr Me
  loc_C0380D: MemStI2 global_104
  loc_C03810: FLdI2 var_96
  loc_C03813: CI4UI1
  loc_C03814: CVarI4
  loc_C03818: PopAdLdVar
  loc_C03819: LitVarI4
  loc_C03821: PopAdLdVar
  loc_C03822: LitVarStr var_12C, "Si"
  loc_C03827: PopAdLdVar
  loc_C03828: FLdPr var_E8
  loc_C0382B: LateIdCallSt
  loc_C03833: Branch loc_C043B9
  loc_C03836: FLdRfVar var_BC
  loc_C03839: FLdRfVar var_274
  loc_C0383C: LitVarStr var_CC, "CodiItco"
  loc_C03841: PopAdLdVar
  loc_C03842: FLdRfVar var_E0
  loc_C03845: FLdRfVar var_A8
  loc_C03848: FLdPr Me
  loc_C0384B: MemLdRfVar from_stack_1.global_60
  loc_C0384E: NewIfNullPr clsordencompra
  loc_C03851: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C03856: FLdPr var_A8
  loc_C03859:  = Me.Fields
  loc_C0385E: FLdPr var_E0
  loc_C03861: from_stack_2 = Me.Item(from_stack_1)
  loc_C03866: FLdPr var_274
  loc_C03869:  = Me.Value
  loc_C0386E: FLdRfVar var_204
  loc_C03871: FLdRfVar var_340
  loc_C03874: LitVarStr var_11C, "AlteItco"
  loc_C03879: PopAdLdVar
  loc_C0387A: FLdRfVar var_33C
  loc_C0387D: FLdRfVar var_288
  loc_C03880: FLdPr Me
  loc_C03883: MemLdRfVar from_stack_1.global_60
  loc_C03886: NewIfNullPr clsordencompra
  loc_C03889: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C0388E: FLdPr var_288
  loc_C03891:  = Me.Fields
  loc_C03896: FLdPr var_33C
  loc_C03899: from_stack_2 = Me.Item(from_stack_1)
  loc_C0389E: FLdPr var_340
  loc_C038A1:  = Me.Value
  loc_C038A6: LitI4 1
  loc_C038AB: LitI4 1
  loc_C038B0: LitVarStr var_14C, "currency"
  loc_C038B5: FStVarCopyObj var_2A8
  loc_C038B8: FLdRfVar var_2A8
  loc_C038BB: FLdPr Me
  loc_C038BE: MemLdRfVar from_stack_1.global_76
  loc_C038C1: CVarRef
  loc_C038C6: ImpAdCallI2 Format$(, )
  loc_C038CB: FStStr var_160
  loc_C038CE: LitI4 &HD
  loc_C038D3: FLdRfVar var_2E8
  loc_C038D6: ImpAdCallFPR4  = Chr()
  loc_C038DB: LitI4 1
  loc_C038E0: LitI4 1
  loc_C038E5: LitVarStr var_180, "currency"
  loc_C038EA: FStVarCopyObj var_3BC
  loc_C038ED: FLdRfVar var_3BC
  loc_C038F0: FLdRfVar var_94
  loc_C038F3: CVarRef
  loc_C038F8: ImpAdCallI2 Format$(, )
  loc_C038FD: FStStr var_1B4
  loc_C03900: LitI2_Byte 0
  loc_C03902: PopTmpLdAd2 var_538
  loc_C03905: LitI2_Byte &HFF
  loc_C03907: PopTmpLdAd2 var_536
  loc_C0390A: LitVarStr var_FC, "El ítem "
  loc_C0390F: FLdRfVar var_BC
  loc_C03912: ConcatVar var_DC
  loc_C03916: LitVarStr var_10C, "/"
  loc_C0391B: ConcatVar var_1B0
  loc_C0391F: FLdRfVar var_204
  loc_C03922: ConcatVar var_260
  loc_C03926: LitVarStr var_12C, " "
  loc_C0392B: ConcatVar var_270
  loc_C0392F: FLdZeroAd var_160
  loc_C03932: CVarStr var_2B8
  loc_C03935: ConcatVar var_2D8
  loc_C03939: FLdRfVar var_2E8
  loc_C0393C: ConcatVar var_338
  loc_C03940: LitVarStr var_15C, " es MENOR al Saldo de la Preventiva: "
  loc_C03945: ConcatVar var_3A4
  loc_C03949: FLdZeroAd var_1B4
  loc_C0394C: CVarStr var_3D4
  loc_C0394F: ConcatVar var_508
  loc_C03953: LitVarStr var_190, vbCrLf
  loc_C03958: ConcatVar var_520
  loc_C0395C: LitVarStr var_1A0, " ¿Genera la DESAFECTACIÓN de la Preventiva?"
  loc_C03961: ConcatVar var_534
  loc_C03965: CStrVarVal var_9C
  loc_C03969: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C0396E: CI4UI1
  loc_C0396F: LitI4 6
  loc_C03974: EqI4
  loc_C03975: FFreeStr var_9C = "": var_160 = ""
  loc_C0397E: FFreeAd var_A8 = "": var_E0 = "": var_274 = "": var_288 = "": var_33C = ""
  loc_C0398D: FFreeVar var_BC = "": var_DC = "": var_1B0 = "": var_204 = "": var_260 = "": var_2A8 = "": var_270 = "": var_2B8 = "": var_2D8 = "": var_2E8 = "": var_338 = "": var_3BC = "": var_3A4 = "": var_3D4 = "": var_508 = "": var_520 = ""
  loc_C039B2: BranchF loc_C03FF4
  loc_C039B5: FLdI2 var_96
  loc_C039B8: CI4UI1
  loc_C039B9: CVarI4
  loc_C039BD: PopAdLdVar
  loc_C039BE: LitVarI4
  loc_C039C6: PopAdLdVar
  loc_C039C7: FLdPr var_E8
  loc_C039CA: LateIdCallLdVar
  loc_C039D4: PopAd
  loc_C039D6: FLdI2 var_96
  loc_C039D9: CI4UI1
  loc_C039DA: CVarI4
  loc_C039DE: PopAdLdVar
  loc_C039DF: LitVarI4
  loc_C039E7: PopAdLdVar
  loc_C039E8: FLdPr var_E8
  loc_C039EB: LateIdCallLdVar
  loc_C039F5: PopAd
  loc_C039F7: FLdI2 var_96
  loc_C039FA: CI4UI1
  loc_C039FB: CVarI4
  loc_C039FF: PopAdLdVar
  loc_C03A00: LitVarI4
  loc_C03A08: PopAdLdVar
  loc_C03A09: FLdPr var_E8
  loc_C03A0C: LateIdCallLdVar
  loc_C03A16: PopAd
  loc_C03A18: FLdI2 var_96
  loc_C03A1B: CI4UI1
  loc_C03A1C: CVarI4
  loc_C03A20: PopAdLdVar
  loc_C03A21: LitVarI4
  loc_C03A29: PopAdLdVar
  loc_C03A2A: FLdPr var_E8
  loc_C03A2D: LateIdCallLdVar
  loc_C03A37: PopAd
  loc_C03A39: FLdI2 var_96
  loc_C03A3C: CI4UI1
  loc_C03A3D: CVarI4
  loc_C03A41: PopAdLdVar
  loc_C03A42: LitVarI4
  loc_C03A4A: PopAdLdVar
  loc_C03A4B: FLdPr var_E8
  loc_C03A4E: LateIdCallLdVar
  loc_C03A58: PopAd
  loc_C03A5A: FLdPr Me
  loc_C03A5D: VCallAd Control_ID_FechImpuMsk
  loc_C03A60: FStAdFunc var_A8
  loc_C03A63: FLdPr var_A8
  loc_C03A66: LateIdLdVar var_270 DispID_15 0
  loc_C03A6D: PopAd
  loc_C03A6F: FLdRfVar var_3BC
  loc_C03A72: FLdRfVar var_288
  loc_C03A75: LitVarStr var_284, "ExpeImpu"
  loc_C03A7A: PopAdLdVar
  loc_C03A7B: FLdRfVar var_274
  loc_C03A7E: FLdRfVar var_E0
  loc_C03A81: FLdPr Me
  loc_C03A84: MemLdRfVar from_stack_1.global_56
  loc_C03A87: NewIfNullPr clsordencompra
  loc_C03A8A: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C03A8F: FLdPr var_E0
  loc_C03A92:  = Me.Fields
  loc_C03A97: FLdPr var_274
  loc_C03A9A: from_stack_2 = Me.Item(from_stack_1)
  loc_C03A9F: FLdPr var_288
  loc_C03AA2:  = Me.Value
  loc_C03AA7: LitI4 2
  loc_C03AAC: FLdFPR8 var_94
  loc_C03AAF: FLdPr Me
  loc_C03AB2: MemLdFPR8 global_76
  loc_C03AB5: SubR4
  loc_C03AB6: CVarR8
  loc_C03ABA: FLdRfVar var_2B8
  loc_C03ABD: ImpAdCallFPR4  = Round(, )
  loc_C03AC2: LitI4 2
  loc_C03AC7: FLdFPR8 var_94
  loc_C03ACA: FLdPr Me
  loc_C03ACD: MemLdFPR8 global_76
  loc_C03AD0: SubR4
  loc_C03AD1: CVarR8
  loc_C03AD5: FLdRfVar var_2E8
  loc_C03AD8: ImpAdCallFPR4  = Round(, )
  loc_C03ADD: FLdI2 var_96
  loc_C03AE0: CI4UI1
  loc_C03AE1: CVarI4
  loc_C03AE5: PopAdLdVar
  loc_C03AE6: LitVarI4
  loc_C03AEE: PopAdLdVar
  loc_C03AEF: FLdPr var_E8
  loc_C03AF2: LateIdCallLdVar
  loc_C03AFC: PopAd
  loc_C03AFE: FLdRfVar var_3D4
  loc_C03B01: FLdRfVar var_354
  loc_C03B04: LitVarStr var_350, "CodiNope"
  loc_C03B09: PopAdLdVar
  loc_C03B0A: FLdRfVar var_340
  loc_C03B0D: FLdRfVar var_33C
  loc_C03B10: FLdPr Me
  loc_C03B13: MemLdRfVar from_stack_1.global_56
  loc_C03B16: NewIfNullPr clsordencompra
  loc_C03B19: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C03B1E: FLdPr var_33C
  loc_C03B21:  = Me.Fields
  loc_C03B26: FLdPr var_340
  loc_C03B29: from_stack_2 = Me.Item(from_stack_1)
  loc_C03B2E: FLdPr var_354
  loc_C03B31:  = Me.Value
  loc_C03B36: FLdI2 var_96
  loc_C03B39: CI4UI1
  loc_C03B3A: CVarI4
  loc_C03B3E: PopAdLdVar
  loc_C03B3F: LitVarI4
  loc_C03B47: PopAdLdVar
  loc_C03B48: FLdPr var_E8
  loc_C03B4B: LateIdCallLdVar
  loc_C03B55: PopAd
  loc_C03B57: FLdRfVar var_A4
  loc_C03B5A: LitI2_Byte 0
  loc_C03B5C: LitI2_Byte 0
  loc_C03B5E: LitI4 0
  loc_C03B63: FLdRfVar var_3A4
  loc_C03B66: CStrVarTmp
  loc_C03B67: FStStrNoPop var_3D8
  loc_C03B6A: CI2Str
  loc_C03B6C: FLdRfVar var_3D4
  loc_C03B6F: CI4Var
  loc_C03B71: FLdRfVar var_338
  loc_C03B74: CStrVarTmp
  loc_C03B75: FStStrNoPop var_3C4
  loc_C03B78: FLdRfVar var_2E8
  loc_C03B7B: CR4Var
  loc_C03B7C: PopFPR8
  loc_C03B7D: FLdRfVar var_2B8
  loc_C03B80: CR4Var
  loc_C03B81: PopFPR8
  loc_C03B82: LitI2_Byte 1
  loc_C03B84: CR8I2
  loc_C03B85: PopFPR8
  loc_C03B86: FLdRfVar var_3BC
  loc_C03B89: CStrVarTmp
  loc_C03B8A: FStStrNoPop var_3C0
  loc_C03B8D: FLdRfVar var_270
  loc_C03B90: CStrVarTmp
  loc_C03B91: FStStrNoPop var_3AC
  loc_C03B94: FLdRfVar var_260
  loc_C03B97: CStrVarTmp
  loc_C03B98: FStStrNoPop var_3A8
  loc_C03B9B: FLdRfVar var_204
  loc_C03B9E: CStrVarTmp
  loc_C03B9F: FStStrNoPop var_208
  loc_C03BA2: CI4Str
  loc_C03BA3: FLdRfVar var_1B0
  loc_C03BA6: CStrVarTmp
  loc_C03BA7: FStStrNoPop var_1B4
  loc_C03BAA: CI2Str
  loc_C03BAC: FLdRfVar var_DC
  loc_C03BAF: CStrVarTmp
  loc_C03BB0: FStStrNoPop var_160
  loc_C03BB3: FLdRfVar var_BC
  loc_C03BB6: CStrVarTmp
  loc_C03BB7: FStStrNoPop var_9C
  loc_C03BBA: FLdPr Me
  loc_C03BBD: MemLdRfVar from_stack_1.global_52
  loc_C03BC0: NewIfNullPr clsimputacion
  loc_C03BC3: from_stack_16v = clsimputacion.DesafectarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C03BC8: ILdRf var_A4
  loc_C03BCB: FStR4 var_8C
  loc_C03BCE: FFreeStr var_9C = "": var_160 = "": var_1B4 = "": var_208 = "": var_3A8 = "": var_3AC = "": var_3C0 = "": var_3C4 = ""
  loc_C03BE3: FFreeAd var_A8 = "": var_E0 = "": var_274 = "": var_33C = "": var_340 = "": var_288 = ""
  loc_C03BF4: FFreeVar var_BC = "": var_DC = "": var_1B0 = "": var_204 = "": var_260 = "": var_270 = "": var_2A8 = "": var_2D8 = "": var_338 = "": var_3A4 = "": var_3BC = "": var_2B8 = "": var_2E8 = ""
  loc_C03C13: ILdRf var_8C
  loc_C03C16: LitI4 0
  loc_C03C1B: EqI4
  loc_C03C1C: BranchF loc_C03C2C
  loc_C03C1F: LitI4 0
  loc_C03C24: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C03C27: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C03C2C: FLdRfVar var_536
  loc_C03C2F: FLdPr Me
  loc_C03C32: VCallAd Control_ID_chkSoloAjustes
  loc_C03C35: FStAdFunc var_A8
  loc_C03C38: FLdPr var_A8
  loc_C03C3B:  = Me.Value
  loc_C03C40: FLdI2 var_536
  loc_C03C43: CI4UI1
  loc_C03C44: LitI4 0
  loc_C03C49: EqI4
  loc_C03C4A: FFree1Ad var_A8
  loc_C03C4D: BranchF loc_C03FC6
  loc_C03C50: FLdI2 var_96
  loc_C03C53: CI4UI1
  loc_C03C54: CVarI4
  loc_C03C58: PopAdLdVar
  loc_C03C59: LitVarI4
  loc_C03C61: PopAdLdVar
  loc_C03C62: FLdPr var_E8
  loc_C03C65: LateIdCallLdVar
  loc_C03C6F: PopAd
  loc_C03C71: FLdI2 var_96
  loc_C03C74: CI4UI1
  loc_C03C75: CVarI4
  loc_C03C79: PopAdLdVar
  loc_C03C7A: LitVarI4
  loc_C03C82: PopAdLdVar
  loc_C03C83: FLdPr var_E8
  loc_C03C86: LateIdCallLdVar
  loc_C03C90: PopAd
  loc_C03C92: FLdI2 var_96
  loc_C03C95: CI4UI1
  loc_C03C96: CVarI4
  loc_C03C9A: PopAdLdVar
  loc_C03C9B: LitVarI4
  loc_C03CA3: PopAdLdVar
  loc_C03CA4: FLdPr var_E8
  loc_C03CA7: LateIdCallLdVar
  loc_C03CB1: PopAd
  loc_C03CB3: FLdI2 var_96
  loc_C03CB6: CI4UI1
  loc_C03CB7: CVarI4
  loc_C03CBB: PopAdLdVar
  loc_C03CBC: LitVarI4
  loc_C03CC4: PopAdLdVar
  loc_C03CC5: FLdPr var_E8
  loc_C03CC8: LateIdCallLdVar
  loc_C03CD2: PopAd
  loc_C03CD4: FLdI2 var_96
  loc_C03CD7: CI4UI1
  loc_C03CD8: CVarI4
  loc_C03CDC: PopAdLdVar
  loc_C03CDD: LitVarI4
  loc_C03CE5: PopAdLdVar
  loc_C03CE6: FLdPr var_E8
  loc_C03CE9: LateIdCallLdVar
  loc_C03CF3: PopAd
  loc_C03CF5: FLdPr Me
  loc_C03CF8: VCallAd Control_ID_FechImpuMsk
  loc_C03CFB: FStAdFunc var_A8
  loc_C03CFE: FLdPr var_A8
  loc_C03D01: LateIdLdVar var_270 DispID_15 0
  loc_C03D08: PopAd
  loc_C03D0A: FLdRfVar var_3BC
  loc_C03D0D: FLdRfVar var_288
  loc_C03D10: LitVarStr var_284, "ExpeImpu"
  loc_C03D15: PopAdLdVar
  loc_C03D16: FLdRfVar var_274
  loc_C03D19: FLdRfVar var_E0
  loc_C03D1C: FLdPr Me
  loc_C03D1F: MemLdRfVar from_stack_1.global_56
  loc_C03D22: NewIfNullPr clsordencompra
  loc_C03D25: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C03D2A: FLdPr var_E0
  loc_C03D2D:  = Me.Fields
  loc_C03D32: FLdPr var_274
  loc_C03D35: from_stack_2 = Me.Item(from_stack_1)
  loc_C03D3A: FLdPr var_288
  loc_C03D3D:  = Me.Value
  loc_C03D42: FLdI2 var_96
  loc_C03D45: CI4UI1
  loc_C03D46: CVarI4
  loc_C03D4A: PopAdLdVar
  loc_C03D4B: LitVarI4
  loc_C03D53: PopAdLdVar
  loc_C03D54: FLdPr var_E8
  loc_C03D57: LateIdCallLdVar
  loc_C03D61: PopAd
  loc_C03D63: FLdI2 var_96
  loc_C03D66: CI4UI1
  loc_C03D67: CVarI4
  loc_C03D6B: PopAdLdVar
  loc_C03D6C: LitVarI4
  loc_C03D74: PopAdLdVar
  loc_C03D75: FLdPr var_E8
  loc_C03D78: LateIdCallLdVar
  loc_C03D82: PopAd
  loc_C03D84: FLdI2 var_96
  loc_C03D87: CI4UI1
  loc_C03D88: CVarI4
  loc_C03D8C: PopAdLdVar
  loc_C03D8D: LitVarI4
  loc_C03D95: PopAdLdVar
  loc_C03D96: FLdPr var_E8
  loc_C03D99: LateIdCallLdVar
  loc_C03DA3: PopAd
  loc_C03DA5: FLdI2 var_96
  loc_C03DA8: CI4UI1
  loc_C03DA9: CVarI4
  loc_C03DAD: PopAdLdVar
  loc_C03DAE: LitVarI4
  loc_C03DB6: PopAdLdVar
  loc_C03DB7: FLdPr var_E8
  loc_C03DBA: LateIdCallLdVar
  loc_C03DC4: PopAd
  loc_C03DC6: FLdRfVar var_3D4
  loc_C03DC9: FLdRfVar var_354
  loc_C03DCC: LitVarStr var_438, "CodiNope"
  loc_C03DD1: PopAdLdVar
  loc_C03DD2: FLdRfVar var_340
  loc_C03DD5: FLdRfVar var_33C
  loc_C03DD8: FLdPr Me
  loc_C03DDB: MemLdRfVar from_stack_1.global_56
  loc_C03DDE: NewIfNullPr clsordencompra
  loc_C03DE1: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C03DE6: FLdPr var_33C
  loc_C03DE9:  = Me.Fields
  loc_C03DEE: FLdPr var_340
  loc_C03DF1: from_stack_2 = Me.Item(from_stack_1)
  loc_C03DF6: FLdPr var_354
  loc_C03DF9:  = Me.Value
  loc_C03DFE: FLdRfVar var_508
  loc_C03E01: FLdRfVar var_454
  loc_C03E04: LitVarStr var_450, "CodiOrco"
  loc_C03E09: PopAdLdVar
  loc_C03E0A: FLdRfVar var_440
  loc_C03E0D: FLdRfVar var_43C
  loc_C03E10: FLdPr Me
  loc_C03E13: MemLdRfVar from_stack_1.global_56
  loc_C03E16: NewIfNullPr clsordencompra
  loc_C03E19: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C03E1E: FLdPr var_43C
  loc_C03E21:  = Me.Fields
  loc_C03E26: FLdPr var_440
  loc_C03E29: from_stack_2 = Me.Item(from_stack_1)
  loc_C03E2E: FLdPr var_454
  loc_C03E31:  = Me.Value
  loc_C03E36: FLdI2 var_96
  loc_C03E39: CI4UI1
  loc_C03E3A: CVarI4
  loc_C03E3E: PopAdLdVar
  loc_C03E3F: LitVarI4
  loc_C03E47: PopAdLdVar
  loc_C03E48: FLdPr var_E8
  loc_C03E4B: LateIdCallLdVar
  loc_C03E55: PopAd
  loc_C03E57: FLdI2 var_96
  loc_C03E5A: CI4UI1
  loc_C03E5B: CVarI4
  loc_C03E5F: PopAdLdVar
  loc_C03E60: LitVarI4
  loc_C03E68: PopAdLdVar
  loc_C03E69: FLdPr var_E8
  loc_C03E6C: LateIdCallLdVar
  loc_C03E76: PopAd
  loc_C03E78: FLdRfVar var_520
  loc_C03E7B: FLdRfVar var_4F0
  loc_C03E7E: LitVarStr var_4EC, "CucuPers"
  loc_C03E83: PopAdLdVar
  loc_C03E84: FLdRfVar var_4DC
  loc_C03E87: FLdRfVar var_4D8
  loc_C03E8A: FLdPr Me
  loc_C03E8D: MemLdRfVar from_stack_1.global_56
  loc_C03E90: NewIfNullPr clsordencompra
  loc_C03E93: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C03E98: FLdPr var_4D8
  loc_C03E9B:  = Me.Fields
  loc_C03EA0: FLdPr var_4DC
  loc_C03EA3: from_stack_2 = Me.Item(from_stack_1)
  loc_C03EA8: FLdPr var_4F0
  loc_C03EAB:  = Me.Value
  loc_C03EB0: FLdRfVar var_A4
  loc_C03EB3: LitI2_Byte 0
  loc_C03EB5: LitI2_Byte 0
  loc_C03EB7: LitI2_Byte 0
  loc_C03EB9: LitI4 0
  loc_C03EBE: FLdRfVar var_520
  loc_C03EC1: CStrVarTmp
  loc_C03EC2: FStStrNoPop var_524
  loc_C03EC5: FLdRfVar var_3A4
  loc_C03EC8: CStrVarTmp
  loc_C03EC9: FStStrNoPop var_510
  loc_C03ECC: CUI1Str
  loc_C03ECE: FLdRfVar var_338
  loc_C03ED1: CStrVarTmp
  loc_C03ED2: FStStrNoPop var_50C
  loc_C03ED5: CI2Str
  loc_C03ED7: FLdRfVar var_508
  loc_C03EDA: CI4Var
  loc_C03EDC: FLdRfVar var_3D4
  loc_C03EDF: CI4Var
  loc_C03EE1: FLdRfVar var_2E8
  loc_C03EE4: CStrVarTmp
  loc_C03EE5: FStStrNoPop var_4F8
  loc_C03EE8: FLdRfVar var_2D8
  loc_C03EEB: CStrVarTmp
  loc_C03EEC: FStStrNoPop var_4F4
  loc_C03EEF: CR8Str
  loc_C03EF1: PopFPR8
  loc_C03EF2: FLdRfVar var_2B8
  loc_C03EF5: CStrVarTmp
  loc_C03EF6: FStStrNoPop var_3D8
  loc_C03EF9: CR8Str
  loc_C03EFB: PopFPR8
  loc_C03EFC: FLdRfVar var_2A8
  loc_C03EFF: CStrVarTmp
  loc_C03F00: FStStrNoPop var_3C4
  loc_C03F03: CR8Str
  loc_C03F05: PopFPR8
  loc_C03F06: FLdRfVar var_3BC
  loc_C03F09: CStrVarTmp
  loc_C03F0A: FStStrNoPop var_3C0
  loc_C03F0D: FLdRfVar var_270
  loc_C03F10: CStrVarTmp
  loc_C03F11: FStStrNoPop var_3AC
  loc_C03F14: FLdRfVar var_260
  loc_C03F17: CStrVarTmp
  loc_C03F18: FStStrNoPop var_3A8
  loc_C03F1B: FLdRfVar var_204
  loc_C03F1E: CStrVarTmp
  loc_C03F1F: FStStrNoPop var_208
  loc_C03F22: CI4Str
  loc_C03F23: FLdRfVar var_1B0
  loc_C03F26: CStrVarTmp
  loc_C03F27: FStStrNoPop var_1B4
  loc_C03F2A: CI2Str
  loc_C03F2C: FLdRfVar var_DC
  loc_C03F2F: CStrVarTmp
  loc_C03F30: FStStrNoPop var_160
  loc_C03F33: FLdRfVar var_BC
  loc_C03F36: CStrVarTmp
  loc_C03F37: FStStrNoPop var_9C
  loc_C03F3A: FLdPr Me
  loc_C03F3D: MemLdRfVar from_stack_1.global_52
  loc_C03F40: NewIfNullPr clsimputacion
  loc_C03F43: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C03F48: ILdRf var_A4
  loc_C03F4B: FStR4 var_8C
  loc_C03F4E: FFreeStr var_9C = "": var_160 = "": var_1B4 = "": var_208 = "": var_3A8 = "": var_3AC = "": var_3C0 = "": var_3C4 = "": var_3D8 = "": var_4F4 = "": var_4F8 = "": var_50C = "": var_510 = ""
  loc_C03F6D: FFreeAd var_A8 = "": var_E0 = "": var_274 = "": var_33C = "": var_340 = "": var_43C = "": var_440 = "": var_4D8 = "": var_4DC = "": var_288 = "": var_354 = "": var_454 = ""
  loc_C03F8A: FFreeVar var_BC = "": var_DC = "": var_1B0 = "": var_204 = "": var_260 = "": var_270 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_2E8 = "": var_338 = "": var_3A4 = "": var_3BC = "": var_3D4 = "": var_508 = ""
  loc_C03FAD: ILdRf var_8C
  loc_C03FB0: LitI4 0
  loc_C03FB5: EqI4
  loc_C03FB6: BranchF loc_C03FC6
  loc_C03FB9: LitI4 0
  loc_C03FBE: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C03FC1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C03FC6: LitI2_Byte &HFF
  loc_C03FC8: FLdPr Me
  loc_C03FCB: MemStI2 global_104
  loc_C03FCE: FLdI2 var_96
  loc_C03FD1: CI4UI1
  loc_C03FD2: CVarI4
  loc_C03FD6: PopAdLdVar
  loc_C03FD7: LitVarI4
  loc_C03FDF: PopAdLdVar
  loc_C03FE0: LitVarStr var_12C, "Si"
  loc_C03FE5: PopAdLdVar
  loc_C03FE6: FLdPr var_E8
  loc_C03FE9: LateIdCallSt
  loc_C03FF1: Branch loc_C043B9
  loc_C03FF4: FLdRfVar var_536
  loc_C03FF7: FLdPr Me
  loc_C03FFA: VCallAd Control_ID_chkSoloAjustes
  loc_C03FFD: FStAdFunc var_A8
  loc_C04000: FLdPr var_A8
  loc_C04003:  = Me.Value
  loc_C04008: FLdI2 var_536
  loc_C0400B: CI4UI1
  loc_C0400C: LitI4 0
  loc_C04011: EqI4
  loc_C04012: FFree1Ad var_A8
  loc_C04015: BranchF loc_C043B9
  loc_C04018: FLdI2 var_96
  loc_C0401B: CI4UI1
  loc_C0401C: CVarI4
  loc_C04020: PopAdLdVar
  loc_C04021: LitVarI4
  loc_C04029: PopAdLdVar
  loc_C0402A: FLdPr var_E8
  loc_C0402D: LateIdCallLdVar
  loc_C04037: PopAd
  loc_C04039: FLdI2 var_96
  loc_C0403C: CI4UI1
  loc_C0403D: CVarI4
  loc_C04041: PopAdLdVar
  loc_C04042: LitVarI4
  loc_C0404A: PopAdLdVar
  loc_C0404B: FLdPr var_E8
  loc_C0404E: LateIdCallLdVar
  loc_C04058: PopAd
  loc_C0405A: FLdI2 var_96
  loc_C0405D: CI4UI1
  loc_C0405E: CVarI4
  loc_C04062: PopAdLdVar
  loc_C04063: LitVarI4
  loc_C0406B: PopAdLdVar
  loc_C0406C: FLdPr var_E8
  loc_C0406F: LateIdCallLdVar
  loc_C04079: PopAd
  loc_C0407B: FLdI2 var_96
  loc_C0407E: CI4UI1
  loc_C0407F: CVarI4
  loc_C04083: PopAdLdVar
  loc_C04084: LitVarI4
  loc_C0408C: PopAdLdVar
  loc_C0408D: FLdPr var_E8
  loc_C04090: LateIdCallLdVar
  loc_C0409A: PopAd
  loc_C0409C: FLdI2 var_96
  loc_C0409F: CI4UI1
  loc_C040A0: CVarI4
  loc_C040A4: PopAdLdVar
  loc_C040A5: LitVarI4
  loc_C040AD: PopAdLdVar
  loc_C040AE: FLdPr var_E8
  loc_C040B1: LateIdCallLdVar
  loc_C040BB: PopAd
  loc_C040BD: FLdPr Me
  loc_C040C0: VCallAd Control_ID_FechImpuMsk
  loc_C040C3: FStAdFunc var_A8
  loc_C040C6: FLdPr var_A8
  loc_C040C9: LateIdLdVar var_270 DispID_15 0
  loc_C040D0: PopAd
  loc_C040D2: FLdRfVar var_3BC
  loc_C040D5: FLdRfVar var_288
  loc_C040D8: LitVarStr var_284, "ExpeImpu"
  loc_C040DD: PopAdLdVar
  loc_C040DE: FLdRfVar var_274
  loc_C040E1: FLdRfVar var_E0
  loc_C040E4: FLdPr Me
  loc_C040E7: MemLdRfVar from_stack_1.global_56
  loc_C040EA: NewIfNullPr clsordencompra
  loc_C040ED: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C040F2: FLdPr var_E0
  loc_C040F5:  = Me.Fields
  loc_C040FA: FLdPr var_274
  loc_C040FD: from_stack_2 = Me.Item(from_stack_1)
  loc_C04102: FLdPr var_288
  loc_C04105:  = Me.Value
  loc_C0410A: FLdI2 var_96
  loc_C0410D: CI4UI1
  loc_C0410E: CVarI4
  loc_C04112: PopAdLdVar
  loc_C04113: LitVarI4
  loc_C0411B: PopAdLdVar
  loc_C0411C: FLdPr var_E8
  loc_C0411F: LateIdCallLdVar
  loc_C04129: PopAd
  loc_C0412B: FLdI2 var_96
  loc_C0412E: CI4UI1
  loc_C0412F: CVarI4
  loc_C04133: PopAdLdVar
  loc_C04134: LitVarI4
  loc_C0413C: PopAdLdVar
  loc_C0413D: FLdPr var_E8
  loc_C04140: LateIdCallLdVar
  loc_C0414A: PopAd
  loc_C0414C: FLdI2 var_96
  loc_C0414F: CI4UI1
  loc_C04150: CVarI4
  loc_C04154: PopAdLdVar
  loc_C04155: LitVarI4
  loc_C0415D: PopAdLdVar
  loc_C0415E: FLdPr var_E8
  loc_C04161: LateIdCallLdVar
  loc_C0416B: PopAd
  loc_C0416D: FLdI2 var_96
  loc_C04170: CI4UI1
  loc_C04171: CVarI4
  loc_C04175: PopAdLdVar
  loc_C04176: LitVarI4
  loc_C0417E: PopAdLdVar
  loc_C0417F: FLdPr var_E8
  loc_C04182: LateIdCallLdVar
  loc_C0418C: PopAd
  loc_C0418E: FLdRfVar var_3D4
  loc_C04191: FLdRfVar var_354
  loc_C04194: LitVarStr var_438, "CodiNope"
  loc_C04199: PopAdLdVar
  loc_C0419A: FLdRfVar var_340
  loc_C0419D: FLdRfVar var_33C
  loc_C041A0: FLdPr Me
  loc_C041A3: MemLdRfVar from_stack_1.global_56
  loc_C041A6: NewIfNullPr clsordencompra
  loc_C041A9: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C041AE: FLdPr var_33C
  loc_C041B1:  = Me.Fields
  loc_C041B6: FLdPr var_340
  loc_C041B9: from_stack_2 = Me.Item(from_stack_1)
  loc_C041BE: FLdPr var_354
  loc_C041C1:  = Me.Value
  loc_C041C6: FLdRfVar var_508
  loc_C041C9: FLdRfVar var_454
  loc_C041CC: LitVarStr var_450, "CodiOrco"
  loc_C041D1: PopAdLdVar
  loc_C041D2: FLdRfVar var_440
  loc_C041D5: FLdRfVar var_43C
  loc_C041D8: FLdPr Me
  loc_C041DB: MemLdRfVar from_stack_1.global_56
  loc_C041DE: NewIfNullPr clsordencompra
  loc_C041E1: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C041E6: FLdPr var_43C
  loc_C041E9:  = Me.Fields
  loc_C041EE: FLdPr var_440
  loc_C041F1: from_stack_2 = Me.Item(from_stack_1)
  loc_C041F6: FLdPr var_454
  loc_C041F9:  = Me.Value
  loc_C041FE: FLdI2 var_96
  loc_C04201: CI4UI1
  loc_C04202: CVarI4
  loc_C04206: PopAdLdVar
  loc_C04207: LitVarI4
  loc_C0420F: PopAdLdVar
  loc_C04210: FLdPr var_E8
  loc_C04213: LateIdCallLdVar
  loc_C0421D: PopAd
  loc_C0421F: FLdI2 var_96
  loc_C04222: CI4UI1
  loc_C04223: CVarI4
  loc_C04227: PopAdLdVar
  loc_C04228: LitVarI4
  loc_C04230: PopAdLdVar
  loc_C04231: FLdPr var_E8
  loc_C04234: LateIdCallLdVar
  loc_C0423E: PopAd
  loc_C04240: FLdRfVar var_520
  loc_C04243: FLdRfVar var_4F0
  loc_C04246: LitVarStr var_4EC, "CucuPers"
  loc_C0424B: PopAdLdVar
  loc_C0424C: FLdRfVar var_4DC
  loc_C0424F: FLdRfVar var_4D8
  loc_C04252: FLdPr Me
  loc_C04255: MemLdRfVar from_stack_1.global_56
  loc_C04258: NewIfNullPr clsordencompra
  loc_C0425B: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C04260: FLdPr var_4D8
  loc_C04263:  = Me.Fields
  loc_C04268: FLdPr var_4DC
  loc_C0426B: from_stack_2 = Me.Item(from_stack_1)
  loc_C04270: FLdPr var_4F0
  loc_C04273:  = Me.Value
  loc_C04278: FLdRfVar var_A4
  loc_C0427B: LitI2_Byte 0
  loc_C0427D: LitI2_Byte 0
  loc_C0427F: LitI2_Byte 0
  loc_C04281: LitI4 0
  loc_C04286: FLdRfVar var_520
  loc_C04289: CStrVarTmp
  loc_C0428A: FStStrNoPop var_524
  loc_C0428D: FLdRfVar var_3A4
  loc_C04290: CStrVarTmp
  loc_C04291: FStStrNoPop var_510
  loc_C04294: CUI1Str
  loc_C04296: FLdRfVar var_338
  loc_C04299: CStrVarTmp
  loc_C0429A: FStStrNoPop var_50C
  loc_C0429D: CI2Str
  loc_C0429F: FLdRfVar var_508
  loc_C042A2: CI4Var
  loc_C042A4: FLdRfVar var_3D4
  loc_C042A7: CI4Var
  loc_C042A9: FLdRfVar var_2E8
  loc_C042AC: CStrVarTmp
  loc_C042AD: FStStrNoPop var_4F8
  loc_C042B0: FLdRfVar var_2D8
  loc_C042B3: CStrVarTmp
  loc_C042B4: FStStrNoPop var_4F4
  loc_C042B7: CR8Str
  loc_C042B9: PopFPR8
  loc_C042BA: FLdRfVar var_2B8
  loc_C042BD: CStrVarTmp
  loc_C042BE: FStStrNoPop var_3D8
  loc_C042C1: CR8Str
  loc_C042C3: PopFPR8
  loc_C042C4: FLdRfVar var_2A8
  loc_C042C7: CStrVarTmp
  loc_C042C8: FStStrNoPop var_3C4
  loc_C042CB: CR8Str
  loc_C042CD: PopFPR8
  loc_C042CE: FLdRfVar var_3BC
  loc_C042D1: CStrVarTmp
  loc_C042D2: FStStrNoPop var_3C0
  loc_C042D5: FLdRfVar var_270
  loc_C042D8: CStrVarTmp
  loc_C042D9: FStStrNoPop var_3AC
  loc_C042DC: FLdRfVar var_260
  loc_C042DF: CStrVarTmp
  loc_C042E0: FStStrNoPop var_3A8
  loc_C042E3: FLdRfVar var_204
  loc_C042E6: CStrVarTmp
  loc_C042E7: FStStrNoPop var_208
  loc_C042EA: CI4Str
  loc_C042EB: FLdRfVar var_1B0
  loc_C042EE: CStrVarTmp
  loc_C042EF: FStStrNoPop var_1B4
  loc_C042F2: CI2Str
  loc_C042F4: FLdRfVar var_DC
  loc_C042F7: CStrVarTmp
  loc_C042F8: FStStrNoPop var_160
  loc_C042FB: FLdRfVar var_BC
  loc_C042FE: CStrVarTmp
  loc_C042FF: FStStrNoPop var_9C
  loc_C04302: FLdPr Me
  loc_C04305: MemLdRfVar from_stack_1.global_52
  loc_C04308: NewIfNullPr clsimputacion
  loc_C0430B: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C04310: ILdRf var_A4
  loc_C04313: FStR4 var_8C
  loc_C04316: FFreeStr var_9C = "": var_160 = "": var_1B4 = "": var_208 = "": var_3A8 = "": var_3AC = "": var_3C0 = "": var_3C4 = "": var_3D8 = "": var_4F4 = "": var_4F8 = "": var_50C = "": var_510 = ""
  loc_C04335: FFreeAd var_A8 = "": var_E0 = "": var_274 = "": var_33C = "": var_340 = "": var_43C = "": var_440 = "": var_4D8 = "": var_4DC = "": var_288 = "": var_354 = "": var_454 = ""
  loc_C04352: FFreeVar var_BC = "": var_DC = "": var_1B0 = "": var_204 = "": var_260 = "": var_270 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_2E8 = "": var_338 = "": var_3A4 = "": var_3BC = "": var_3D4 = "": var_508 = ""
  loc_C04375: ILdRf var_8C
  loc_C04378: LitI4 0
  loc_C0437D: EqI4
  loc_C0437E: BranchF loc_C0438E
  loc_C04381: LitI4 0
  loc_C04386: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C04389: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C0438E: LitI2_Byte &HFF
  loc_C04390: FLdPr Me
  loc_C04393: MemStI2 global_104
  loc_C04396: FLdI2 var_96
  loc_C04399: CI4UI1
  loc_C0439A: CVarI4
  loc_C0439E: PopAdLdVar
  loc_C0439F: LitVarI4
  loc_C043A7: PopAdLdVar
  loc_C043A8: LitVarStr var_12C, "Si"
  loc_C043AD: PopAdLdVar
  loc_C043AE: FLdPr var_E8
  loc_C043B1: LateIdCallSt
  loc_C043B9: Branch loc_C043C9
  loc_C043BC: FLdFPR8 var_94
  loc_C043BF: FLdPr Me
  loc_C043C2: MemLdFPR8 global_76
  loc_C043C5: LtR8
  loc_C043C6: BranchF loc_C043C9
  loc_C043C9: Branch loc_C04791
  loc_C043CC: FLdRfVar var_536
  loc_C043CF: FLdPr Me
  loc_C043D2: VCallAd Control_ID_chkSoloAjustes
  loc_C043D5: FStAdFunc var_A8
  loc_C043D8: FLdPr var_A8
  loc_C043DB:  = Me.Value
  loc_C043E0: FLdI2 var_536
  loc_C043E3: CI4UI1
  loc_C043E4: LitI4 0
  loc_C043E9: EqI4
  loc_C043EA: FFree1Ad var_A8
  loc_C043ED: BranchF loc_C04791
  loc_C043F0: FLdI2 var_96
  loc_C043F3: CI4UI1
  loc_C043F4: CVarI4
  loc_C043F8: PopAdLdVar
  loc_C043F9: LitVarI4
  loc_C04401: PopAdLdVar
  loc_C04402: FLdPr var_E8
  loc_C04405: LateIdCallLdVar
  loc_C0440F: PopAd
  loc_C04411: FLdI2 var_96
  loc_C04414: CI4UI1
  loc_C04415: CVarI4
  loc_C04419: PopAdLdVar
  loc_C0441A: LitVarI4
  loc_C04422: PopAdLdVar
  loc_C04423: FLdPr var_E8
  loc_C04426: LateIdCallLdVar
  loc_C04430: PopAd
  loc_C04432: FLdI2 var_96
  loc_C04435: CI4UI1
  loc_C04436: CVarI4
  loc_C0443A: PopAdLdVar
  loc_C0443B: LitVarI4
  loc_C04443: PopAdLdVar
  loc_C04444: FLdPr var_E8
  loc_C04447: LateIdCallLdVar
  loc_C04451: PopAd
  loc_C04453: FLdI2 var_96
  loc_C04456: CI4UI1
  loc_C04457: CVarI4
  loc_C0445B: PopAdLdVar
  loc_C0445C: LitVarI4
  loc_C04464: PopAdLdVar
  loc_C04465: FLdPr var_E8
  loc_C04468: LateIdCallLdVar
  loc_C04472: PopAd
  loc_C04474: FLdI2 var_96
  loc_C04477: CI4UI1
  loc_C04478: CVarI4
  loc_C0447C: PopAdLdVar
  loc_C0447D: LitVarI4
  loc_C04485: PopAdLdVar
  loc_C04486: FLdPr var_E8
  loc_C04489: LateIdCallLdVar
  loc_C04493: PopAd
  loc_C04495: FLdPr Me
  loc_C04498: VCallAd Control_ID_FechImpuMsk
  loc_C0449B: FStAdFunc var_A8
  loc_C0449E: FLdPr var_A8
  loc_C044A1: LateIdLdVar var_270 DispID_15 0
  loc_C044A8: PopAd
  loc_C044AA: FLdRfVar var_3BC
  loc_C044AD: FLdRfVar var_288
  loc_C044B0: LitVarStr var_284, "ExpeImpu"
  loc_C044B5: PopAdLdVar
  loc_C044B6: FLdRfVar var_274
  loc_C044B9: FLdRfVar var_E0
  loc_C044BC: FLdPr Me
  loc_C044BF: MemLdRfVar from_stack_1.global_56
  loc_C044C2: NewIfNullPr clsordencompra
  loc_C044C5: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C044CA: FLdPr var_E0
  loc_C044CD:  = Me.Fields
  loc_C044D2: FLdPr var_274
  loc_C044D5: from_stack_2 = Me.Item(from_stack_1)
  loc_C044DA: FLdPr var_288
  loc_C044DD:  = Me.Value
  loc_C044E2: FLdI2 var_96
  loc_C044E5: CI4UI1
  loc_C044E6: CVarI4
  loc_C044EA: PopAdLdVar
  loc_C044EB: LitVarI4
  loc_C044F3: PopAdLdVar
  loc_C044F4: FLdPr var_E8
  loc_C044F7: LateIdCallLdVar
  loc_C04501: PopAd
  loc_C04503: FLdI2 var_96
  loc_C04506: CI4UI1
  loc_C04507: CVarI4
  loc_C0450B: PopAdLdVar
  loc_C0450C: LitVarI4
  loc_C04514: PopAdLdVar
  loc_C04515: FLdPr var_E8
  loc_C04518: LateIdCallLdVar
  loc_C04522: PopAd
  loc_C04524: FLdI2 var_96
  loc_C04527: CI4UI1
  loc_C04528: CVarI4
  loc_C0452C: PopAdLdVar
  loc_C0452D: LitVarI4
  loc_C04535: PopAdLdVar
  loc_C04536: FLdPr var_E8
  loc_C04539: LateIdCallLdVar
  loc_C04543: PopAd
  loc_C04545: FLdI2 var_96
  loc_C04548: CI4UI1
  loc_C04549: CVarI4
  loc_C0454D: PopAdLdVar
  loc_C0454E: LitVarI4
  loc_C04556: PopAdLdVar
  loc_C04557: FLdPr var_E8
  loc_C0455A: LateIdCallLdVar
  loc_C04564: PopAd
  loc_C04566: FLdRfVar var_3D4
  loc_C04569: FLdRfVar var_354
  loc_C0456C: LitVarStr var_438, "CodiNope"
  loc_C04571: PopAdLdVar
  loc_C04572: FLdRfVar var_340
  loc_C04575: FLdRfVar var_33C
  loc_C04578: FLdPr Me
  loc_C0457B: MemLdRfVar from_stack_1.global_56
  loc_C0457E: NewIfNullPr clsordencompra
  loc_C04581: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C04586: FLdPr var_33C
  loc_C04589:  = Me.Fields
  loc_C0458E: FLdPr var_340
  loc_C04591: from_stack_2 = Me.Item(from_stack_1)
  loc_C04596: FLdPr var_354
  loc_C04599:  = Me.Value
  loc_C0459E: FLdRfVar var_508
  loc_C045A1: FLdRfVar var_454
  loc_C045A4: LitVarStr var_450, "CodiOrco"
  loc_C045A9: PopAdLdVar
  loc_C045AA: FLdRfVar var_440
  loc_C045AD: FLdRfVar var_43C
  loc_C045B0: FLdPr Me
  loc_C045B3: MemLdRfVar from_stack_1.global_56
  loc_C045B6: NewIfNullPr clsordencompra
  loc_C045B9: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C045BE: FLdPr var_43C
  loc_C045C1:  = Me.Fields
  loc_C045C6: FLdPr var_440
  loc_C045C9: from_stack_2 = Me.Item(from_stack_1)
  loc_C045CE: FLdPr var_454
  loc_C045D1:  = Me.Value
  loc_C045D6: FLdI2 var_96
  loc_C045D9: CI4UI1
  loc_C045DA: CVarI4
  loc_C045DE: PopAdLdVar
  loc_C045DF: LitVarI4
  loc_C045E7: PopAdLdVar
  loc_C045E8: FLdPr var_E8
  loc_C045EB: LateIdCallLdVar
  loc_C045F5: PopAd
  loc_C045F7: FLdI2 var_96
  loc_C045FA: CI4UI1
  loc_C045FB: CVarI4
  loc_C045FF: PopAdLdVar
  loc_C04600: LitVarI4
  loc_C04608: PopAdLdVar
  loc_C04609: FLdPr var_E8
  loc_C0460C: LateIdCallLdVar
  loc_C04616: PopAd
  loc_C04618: FLdRfVar var_520
  loc_C0461B: FLdRfVar var_4F0
  loc_C0461E: LitVarStr var_4EC, "CucuPers"
  loc_C04623: PopAdLdVar
  loc_C04624: FLdRfVar var_4DC
  loc_C04627: FLdRfVar var_4D8
  loc_C0462A: FLdPr Me
  loc_C0462D: MemLdRfVar from_stack_1.global_56
  loc_C04630: NewIfNullPr clsordencompra
  loc_C04633: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C04638: FLdPr var_4D8
  loc_C0463B:  = Me.Fields
  loc_C04640: FLdPr var_4DC
  loc_C04643: from_stack_2 = Me.Item(from_stack_1)
  loc_C04648: FLdPr var_4F0
  loc_C0464B:  = Me.Value
  loc_C04650: FLdRfVar var_A4
  loc_C04653: LitI2_Byte 0
  loc_C04655: LitI2_Byte 0
  loc_C04657: LitI2_Byte 0
  loc_C04659: LitI4 0
  loc_C0465E: FLdRfVar var_520
  loc_C04661: CStrVarTmp
  loc_C04662: FStStrNoPop var_524
  loc_C04665: FLdRfVar var_3A4
  loc_C04668: CStrVarTmp
  loc_C04669: FStStrNoPop var_510
  loc_C0466C: CUI1Str
  loc_C0466E: FLdRfVar var_338
  loc_C04671: CStrVarTmp
  loc_C04672: FStStrNoPop var_50C
  loc_C04675: CI2Str
  loc_C04677: FLdRfVar var_508
  loc_C0467A: CI4Var
  loc_C0467C: FLdRfVar var_3D4
  loc_C0467F: CI4Var
  loc_C04681: FLdRfVar var_2E8
  loc_C04684: CStrVarTmp
  loc_C04685: FStStrNoPop var_4F8
  loc_C04688: FLdRfVar var_2D8
  loc_C0468B: CStrVarTmp
  loc_C0468C: FStStrNoPop var_4F4
  loc_C0468F: CR8Str
  loc_C04691: PopFPR8
  loc_C04692: FLdRfVar var_2B8
  loc_C04695: CStrVarTmp
  loc_C04696: FStStrNoPop var_3D8
  loc_C04699: CR8Str
  loc_C0469B: PopFPR8
  loc_C0469C: FLdRfVar var_2A8
  loc_C0469F: CStrVarTmp
  loc_C046A0: FStStrNoPop var_3C4
  loc_C046A3: CR8Str
  loc_C046A5: PopFPR8
  loc_C046A6: FLdRfVar var_3BC
  loc_C046A9: CStrVarTmp
  loc_C046AA: FStStrNoPop var_3C0
  loc_C046AD: FLdRfVar var_270
  loc_C046B0: CStrVarTmp
  loc_C046B1: FStStrNoPop var_3AC
  loc_C046B4: FLdRfVar var_260
  loc_C046B7: CStrVarTmp
  loc_C046B8: FStStrNoPop var_3A8
  loc_C046BB: FLdRfVar var_204
  loc_C046BE: CStrVarTmp
  loc_C046BF: FStStrNoPop var_208
  loc_C046C2: CI4Str
  loc_C046C3: FLdRfVar var_1B0
  loc_C046C6: CStrVarTmp
  loc_C046C7: FStStrNoPop var_1B4
  loc_C046CA: CI2Str
  loc_C046CC: FLdRfVar var_DC
  loc_C046CF: CStrVarTmp
  loc_C046D0: FStStrNoPop var_160
  loc_C046D3: FLdRfVar var_BC
  loc_C046D6: CStrVarTmp
  loc_C046D7: FStStrNoPop var_9C
  loc_C046DA: FLdPr Me
  loc_C046DD: MemLdRfVar from_stack_1.global_52
  loc_C046E0: NewIfNullPr clsimputacion
  loc_C046E3: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C046E8: ILdRf var_A4
  loc_C046EB: FStR4 var_8C
  loc_C046EE: FFreeStr var_9C = "": var_160 = "": var_1B4 = "": var_208 = "": var_3A8 = "": var_3AC = "": var_3C0 = "": var_3C4 = "": var_3D8 = "": var_4F4 = "": var_4F8 = "": var_50C = "": var_510 = ""
  loc_C0470D: FFreeAd var_A8 = "": var_E0 = "": var_274 = "": var_33C = "": var_340 = "": var_43C = "": var_440 = "": var_4D8 = "": var_4DC = "": var_288 = "": var_354 = "": var_454 = ""
  loc_C0472A: FFreeVar var_BC = "": var_DC = "": var_1B0 = "": var_204 = "": var_260 = "": var_270 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_2E8 = "": var_338 = "": var_3A4 = "": var_3BC = "": var_3D4 = "": var_508 = ""
  loc_C0474D: ILdRf var_8C
  loc_C04750: LitI4 0
  loc_C04755: EqI4
  loc_C04756: BranchF loc_C04766
  loc_C04759: LitI4 0
  loc_C0475E: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C04761: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C04766: LitI2_Byte &HFF
  loc_C04768: FLdPr Me
  loc_C0476B: MemStI2 global_104
  loc_C0476E: FLdI2 var_96
  loc_C04771: CI4UI1
  loc_C04772: CVarI4
  loc_C04776: PopAdLdVar
  loc_C04777: LitVarI4
  loc_C0477F: PopAdLdVar
  loc_C04780: LitVarStr var_12C, "Si"
  loc_C04785: PopAdLdVar
  loc_C04786: FLdPr var_E8
  loc_C04789: LateIdCallSt
  loc_C04791: FLdRfVar var_96
  loc_C04794: NextI2 var_EC, loc_C030A9
  loc_C04799: LitI2_Byte 1
  loc_C0479B: FLdRfVar var_96
  loc_C0479E: FLdPr var_E8
  loc_C047A1: LateIdLdVar var_BC DispID_4 0
  loc_C047A8: CI4Var
  loc_C047AA: LitI4 1
  loc_C047AF: SubI4
  loc_C047B0: CI2I4
  loc_C047B1: FFree1Var var_BC = ""
  loc_C047B4: ForI2 var_53C
  loc_C047BA: FLdI2 var_96
  loc_C047BD: CI4UI1
  loc_C047BE: CVarI4
  loc_C047C2: PopAdLdVar
  loc_C047C3: LitVarI4
  loc_C047CB: PopAdLdVar
  loc_C047CC: FLdPr var_E8
  loc_C047CF: LateIdCallLdVar
  loc_C047D9: CStrVarTmp
  loc_C047DA: FStStrNoPop var_9C
  loc_C047DD: LitStr vbNullString
  loc_C047E0: NeStr
  loc_C047E2: FLdI2 var_96
  loc_C047E5: CI4UI1
  loc_C047E6: CVarI4
  loc_C047EA: PopAdLdVar
  loc_C047EB: LitVarI4
  loc_C047F3: PopAdLdVar
  loc_C047F4: FLdPr var_E8
  loc_C047F7: LateIdCallLdVar
  loc_C04801: CStrVarTmp
  loc_C04802: FStStrNoPop var_160
  loc_C04805: LitStr vbNullString
  loc_C04808: NeStr
  loc_C0480A: AndI4
  loc_C0480B: FLdI2 var_96
  loc_C0480E: CI4UI1
  loc_C0480F: CVarI4
  loc_C04813: PopAdLdVar
  loc_C04814: LitVarI4
  loc_C0481C: PopAdLdVar
  loc_C0481D: FLdPr var_E8
  loc_C04820: LateIdCallLdVar
  loc_C0482A: CStrVarTmp
  loc_C0482B: FStStrNoPop var_1B4
  loc_C0482E: LitStr vbNullString
  loc_C04831: NeStr
  loc_C04833: AndI4
  loc_C04834: FLdI2 var_96
  loc_C04837: CI4UI1
  loc_C04838: CVarI4
  loc_C0483C: PopAdLdVar
  loc_C0483D: LitVarI4
  loc_C04845: PopAdLdVar
  loc_C04846: FLdPr var_E8
  loc_C04849: LateIdCallLdVar
  loc_C04853: CStrVarTmp
  loc_C04854: FStStrNoPop var_208
  loc_C04857: LitStr "No"
  loc_C0485A: EqStr
  loc_C0485C: AndI4
  loc_C0485D: FFreeStr var_9C = "": var_160 = "": var_1B4 = ""
  loc_C04868: FFreeVar var_BC = "": var_DC = "": var_1B0 = ""
  loc_C04873: BranchF loc_C051E7
  loc_C04876: FLdI2 var_96
  loc_C04879: CI4UI1
  loc_C0487A: CVarI4
  loc_C0487E: PopAdLdVar
  loc_C0487F: LitVarI4
  loc_C04887: PopAdLdVar
  loc_C04888: FLdPr var_E8
  loc_C0488B: LateIdCallLdVar
  loc_C04895: PopAd
  loc_C04897: LitI4 2
  loc_C0489C: FLdRfVar var_BC
  loc_C0489F: CStrVarTmp
  loc_C048A0: CVarStr var_DC
  loc_C048A3: FLdRfVar var_1B0
  loc_C048A6: ImpAdCallFPR4  = Round(, )
  loc_C048AB: FLdRfVar var_1B0
  loc_C048AE: CR4Var
  loc_C048AF: FLdPr Me
  loc_C048B2: MemStFPR8 global_76
  loc_C048B5: FFreeVar var_BC = "": var_DC = ""
  loc_C048BE: FLdI2 var_96
  loc_C048C1: CI4UI1
  loc_C048C2: CVarI4
  loc_C048C6: PopAdLdVar
  loc_C048C7: LitVarI4
  loc_C048CF: PopAdLdVar
  loc_C048D0: FLdPr var_E8
  loc_C048D3: LateIdCallLdVar
  loc_C048DD: PopAd
  loc_C048DF: FLdRfVar var_210
  loc_C048E2: FLdRfVar var_BC
  loc_C048E5: CStrVarTmp
  loc_C048E6: FStStrNoPop var_9C
  loc_C048E9: CI4Str
  loc_C048EA: ImpAdLdI2 MemVar_C3D064
  loc_C048ED: FLdPr Me
  loc_C048F0: MemLdRfVar from_stack_1.global_52
  loc_C048F3: NewIfNullPr clsimputacion
  loc_C048F6: from_stack_3v = clsimputacion.BuscaSaldPrev(from_stack_1v, from_stack_2v)
  loc_C048FB: FLdFPR8 var_210
  loc_C048FE: FStFPR8 var_94
  loc_C04901: FFree1Str var_9C
  loc_C04904: FFree1Var var_BC = ""
  loc_C04907: FLdFPR8 var_94
  loc_C0490A: FLdPr Me
  loc_C0490D: MemLdFPR8 global_76
  loc_C04910: NeR8
  loc_C04911: BranchF loc_C051E7
  loc_C04914: FLdFPR8 var_94
  loc_C04917: FLdPr Me
  loc_C0491A: MemLdFPR8 global_76
  loc_C0491D: GtR4
  loc_C0491E: BranchF loc_C04924
  loc_C04921: Branch loc_C051E7
  loc_C04924: FLdFPR8 var_94
  loc_C04927: FLdPr Me
  loc_C0492A: MemLdFPR8 global_76
  loc_C0492D: LtR8
  loc_C0492E: BranchF loc_C051E7
  loc_C04931: LitI4 2
  loc_C04936: FLdPr Me
  loc_C04939: MemLdFPR8 global_76
  loc_C0493C: FLdFPR8 var_94
  loc_C0493F: SubR4
  loc_C04940: CVarR8
  loc_C04944: FLdRfVar var_DC
  loc_C04947: ImpAdCallFPR4  = Round(, )
  loc_C0494C: FLdPr Me
  loc_C0494F: VCallAd Control_ID_FechImpuMsk
  loc_C04952: FStAdFunc var_A8
  loc_C04955: FLdPr var_A8
  loc_C04958: LateIdLdVar var_1B0 DispID_15 0
  loc_C0495F: PopAd
  loc_C04961: FLdRfVar var_1B4
  loc_C04964: LitI2_Byte 0
  loc_C04966: PopTmpLdAd2 var_536
  loc_C04969: LitStr "0"
  loc_C0496C: FLdRfVar var_1B0
  loc_C0496F: CStrVarTmp
  loc_C04970: FStStrNoPop var_160
  loc_C04973: FLdPr Me
  loc_C04976: MemLdRfVar from_stack_1.global_100
  loc_C04979: NewIfNullRf
  loc_C0497D: FLdPr Me
  loc_C04980: MemLdRfVar from_stack_1.global_96
  loc_C04983: NewIfNullRf
  loc_C04987: FLdPr Me
  loc_C0498A: MemLdRfVar from_stack_1.global_92
  loc_C0498D: NewIfNullRf
  loc_C04991: FLdPr Me
  loc_C04994: MemLdRfVar from_stack_1.global_88
  loc_C04997: NewIfNullRf
  loc_C0499B: FLdRfVar var_DC
  loc_C0499E: CStrVarVal var_9C
  loc_C049A2: FLdPr Me
  loc_C049A5: MemLdRfVar from_stack_1.global_52
  loc_C049A8: NewIfNullPr clsimputacion
  loc_C049AB: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C049B0: ILdRf var_1B4
  loc_C049B3: FLdPr Me
  loc_C049B6: MemStStrCopy
  loc_C049BA: FFreeStr var_9C = "": var_160 = ""
  loc_C049C3: FFree1Ad var_A8
  loc_C049C6: FFreeVar var_BC = "": var_1B0 = ""
  loc_C049CF: FLdPr Me
  loc_C049D2: MemLdStr global_68
  loc_C049D5: LitStr vbNullString
  loc_C049D8: NeStr
  loc_C049DA: BranchF loc_C049ED
  loc_C049DD: LitI4 0
  loc_C049E2: FLdPr Me
  loc_C049E5: MemLdStr global_68
  loc_C049E8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C049ED: LitI4 &HB
  loc_C049F2: FLdPr Me
  loc_C049F5: MemLdStr global_68
  loc_C049F8: ImpAdCallI2 Left$(, )
  loc_C049FD: FStStrNoPop var_9C
  loc_C04A00: LitStr "Advertencia"
  loc_C04A03: EqStr
  loc_C04A05: FFree1Str var_9C
  loc_C04A08: BranchF loc_C04A15
  loc_C04A0B: LitStr vbNullString
  loc_C04A0E: FLdPr Me
  loc_C04A11: MemStStrCopy
  loc_C04A15: FLdPr Me
  loc_C04A18: MemLdStr global_68
  loc_C04A1B: LitStr vbNullString
  loc_C04A1E: NeStr
  loc_C04A20: BranchF loc_C04A26
  loc_C04A23: Branch loc_C051E7
  loc_C04A26: FLdI2 var_96
  loc_C04A29: CI4UI1
  loc_C04A2A: CVarI4
  loc_C04A2E: PopAdLdVar
  loc_C04A2F: LitVarI4
  loc_C04A37: PopAdLdVar
  loc_C04A38: FLdPr var_E8
  loc_C04A3B: LateIdCallLdVar
  loc_C04A45: PopAd
  loc_C04A47: FLdI2 var_96
  loc_C04A4A: CI4UI1
  loc_C04A4B: CVarI4
  loc_C04A4F: PopAdLdVar
  loc_C04A50: LitVarI4
  loc_C04A58: PopAdLdVar
  loc_C04A59: FLdPr var_E8
  loc_C04A5C: LateIdCallLdVar
  loc_C04A66: PopAd
  loc_C04A68: LitI4 1
  loc_C04A6D: LitI4 1
  loc_C04A72: LitVarStr var_180, "currency"
  loc_C04A77: FStVarCopyObj var_1B0
  loc_C04A7A: FLdRfVar var_1B0
  loc_C04A7D: FLdPr Me
  loc_C04A80: MemLdRfVar from_stack_1.global_76
  loc_C04A83: CVarRef
  loc_C04A88: ImpAdCallI2 Format$(, )
  loc_C04A8D: FStStr var_3D8
  loc_C04A90: LitI4 &HD
  loc_C04A95: FLdRfVar var_204
  loc_C04A98: ImpAdCallFPR4  = Chr()
  loc_C04A9D: LitI4 1
  loc_C04AA2: LitI4 1
  loc_C04AA7: LitVarStr var_1C4, "currency"
  loc_C04AAC: FStVarCopyObj var_2B8
  loc_C04AAF: FLdRfVar var_2B8
  loc_C04AB2: FLdRfVar var_94
  loc_C04AB5: CVarRef
  loc_C04ABA: ImpAdCallI2 Format$(, )
  loc_C04ABF: FStStr var_4F4
  loc_C04AC2: LitI4 &HA
  loc_C04AC7: FLdRfVar var_3BC
  loc_C04ACA: ImpAdCallFPR4  = Chr()
  loc_C04ACF: LitI4 &HA
  loc_C04AD4: FLdRfVar var_508
  loc_C04AD7: ImpAdCallFPR4  = Chr()
  loc_C04ADC: LitI2_Byte 0
  loc_C04ADE: PopTmpLdAd2 var_538
  loc_C04AE1: LitI2_Byte &HFF
  loc_C04AE3: PopTmpLdAd2 var_536
  loc_C04AE6: LitStr "El ítem "
  loc_C04AE9: FLdRfVar var_BC
  loc_C04AEC: CStrVarTmp
  loc_C04AED: FStStrNoPop var_9C
  loc_C04AF0: ConcatStr
  loc_C04AF1: FStStrNoPop var_160
  loc_C04AF4: LitStr "/"
  loc_C04AF7: ConcatStr
  loc_C04AF8: FStStrNoPop var_1B4
  loc_C04AFB: FLdRfVar var_DC
  loc_C04AFE: CStrVarTmp
  loc_C04AFF: FStStrNoPop var_208
  loc_C04B02: ConcatStr
  loc_C04B03: FStStrNoPop var_3A8
  loc_C04B06: LitStr " "
  loc_C04B09: ConcatStr
  loc_C04B0A: FStStrNoPop var_3AC
  loc_C04B0D: FLdZeroAd var_3D8
  loc_C04B10: FStStrNoPop var_3C0
  loc_C04B13: ConcatStr
  loc_C04B14: CVarStr var_260
  loc_C04B17: FLdRfVar var_204
  loc_C04B1A: ConcatVar var_270
  loc_C04B1E: LitVarStr var_190, " es MAYOR al Saldo de la Preventiva: "
  loc_C04B23: ConcatVar var_2A8
  loc_C04B27: FLdZeroAd var_4F4
  loc_C04B2A: CVarStr var_2D8
  loc_C04B2D: ConcatVar var_2E8
  loc_C04B31: LitVarStr var_1D4, vbCrLf
  loc_C04B36: ConcatVar var_338
  loc_C04B3A: LitVarStr var_1E4, " Si NO Genera la Preventiva NO se Imputará el Item..."
  loc_C04B3F: ConcatVar var_3A4
  loc_C04B43: FLdRfVar var_3BC
  loc_C04B46: ConcatVar var_3D4
  loc_C04B4A: FLdRfVar var_508
  loc_C04B4D: ConcatVar var_520
  loc_C04B51: LitVarStr var_1F4, "¿Genera la Afectación Preventiva?"
  loc_C04B56: ConcatVar var_534
  loc_C04B5A: CStrVarVal var_3C4
  loc_C04B5E: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C04B63: CI4UI1
  loc_C04B64: LitI4 6
  loc_C04B69: EqI4
  loc_C04B6A: FFreeStr var_9C = "": var_160 = "": var_1B4 = "": var_208 = "": var_3A8 = "": var_3AC = "": var_3C0 = "": var_3C4 = "": var_3D8 = ""
  loc_C04B81: FFreeVar var_BC = "": var_DC = "": var_1B0 = "": var_260 = "": var_204 = "": var_270 = "": var_2B8 = "": var_2A8 = "": var_2D8 = "": var_2E8 = "": var_338 = "": var_3A4 = "": var_3BC = "": var_3D4 = "": var_508 = "": var_520 = ""
  loc_C04BA6: BranchF loc_C051E7
  loc_C04BA9: FLdI2 var_96
  loc_C04BAC: CI4UI1
  loc_C04BAD: CVarI4
  loc_C04BB1: PopAdLdVar
  loc_C04BB2: LitVarI4
  loc_C04BBA: PopAdLdVar
  loc_C04BBB: FLdPr var_E8
  loc_C04BBE: LateIdCallLdVar
  loc_C04BC8: PopAd
  loc_C04BCA: FLdI2 var_96
  loc_C04BCD: CI4UI1
  loc_C04BCE: CVarI4
  loc_C04BD2: PopAdLdVar
  loc_C04BD3: LitVarI4
  loc_C04BDB: PopAdLdVar
  loc_C04BDC: FLdPr var_E8
  loc_C04BDF: LateIdCallLdVar
  loc_C04BE9: PopAd
  loc_C04BEB: FLdI2 var_96
  loc_C04BEE: CI4UI1
  loc_C04BEF: CVarI4
  loc_C04BF3: PopAdLdVar
  loc_C04BF4: LitVarI4
  loc_C04BFC: PopAdLdVar
  loc_C04BFD: FLdPr var_E8
  loc_C04C00: LateIdCallLdVar
  loc_C04C0A: PopAd
  loc_C04C0C: FLdI2 var_96
  loc_C04C0F: CI4UI1
  loc_C04C10: CVarI4
  loc_C04C14: PopAdLdVar
  loc_C04C15: LitVarI4
  loc_C04C1D: PopAdLdVar
  loc_C04C1E: FLdPr var_E8
  loc_C04C21: LateIdCallLdVar
  loc_C04C2B: PopAd
  loc_C04C2D: FLdI2 var_96
  loc_C04C30: CI4UI1
  loc_C04C31: CVarI4
  loc_C04C35: PopAdLdVar
  loc_C04C36: LitVarI4
  loc_C04C3E: PopAdLdVar
  loc_C04C3F: FLdPr var_E8
  loc_C04C42: LateIdCallLdVar
  loc_C04C4C: PopAd
  loc_C04C4E: FLdPr Me
  loc_C04C51: VCallAd Control_ID_FechImpuMsk
  loc_C04C54: FStAdFunc var_A8
  loc_C04C57: FLdPr var_A8
  loc_C04C5A: LateIdLdVar var_270 DispID_15 0
  loc_C04C61: PopAd
  loc_C04C63: FLdRfVar var_3BC
  loc_C04C66: FLdRfVar var_288
  loc_C04C69: LitVarStr var_284, "ExpeImpu"
  loc_C04C6E: PopAdLdVar
  loc_C04C6F: FLdRfVar var_274
  loc_C04C72: FLdRfVar var_E0
  loc_C04C75: FLdPr Me
  loc_C04C78: MemLdRfVar from_stack_1.global_56
  loc_C04C7B: NewIfNullPr clsordencompra
  loc_C04C7E: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C04C83: FLdPr var_E0
  loc_C04C86:  = Me.Fields
  loc_C04C8B: FLdPr var_274
  loc_C04C8E: from_stack_2 = Me.Item(from_stack_1)
  loc_C04C93: FLdPr var_288
  loc_C04C96:  = Me.Value
  loc_C04C9B: LitI4 2
  loc_C04CA0: FLdPr Me
  loc_C04CA3: MemLdFPR8 global_76
  loc_C04CA6: FLdFPR8 var_94
  loc_C04CA9: SubR4
  loc_C04CAA: CVarR8
  loc_C04CAE: FLdRfVar var_2B8
  loc_C04CB1: ImpAdCallFPR4  = Round(, )
  loc_C04CB6: LitI4 2
  loc_C04CBB: FLdPr Me
  loc_C04CBE: MemLdFPR8 global_76
  loc_C04CC1: FLdFPR8 var_94
  loc_C04CC4: SubR4
  loc_C04CC5: CVarR8
  loc_C04CC9: FLdRfVar var_2E8
  loc_C04CCC: ImpAdCallFPR4  = Round(, )
  loc_C04CD1: FLdI2 var_96
  loc_C04CD4: CI4UI1
  loc_C04CD5: CVarI4
  loc_C04CD9: PopAdLdVar
  loc_C04CDA: LitVarI4
  loc_C04CE2: PopAdLdVar
  loc_C04CE3: FLdPr var_E8
  loc_C04CE6: LateIdCallLdVar
  loc_C04CF0: PopAd
  loc_C04CF2: FLdRfVar var_3D4
  loc_C04CF5: FLdRfVar var_354
  loc_C04CF8: LitVarStr var_350, "CodiNope"
  loc_C04CFD: PopAdLdVar
  loc_C04CFE: FLdRfVar var_340
  loc_C04D01: FLdRfVar var_33C
  loc_C04D04: FLdPr Me
  loc_C04D07: MemLdRfVar from_stack_1.global_56
  loc_C04D0A: NewIfNullPr clsordencompra
  loc_C04D0D: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C04D12: FLdPr var_33C
  loc_C04D15:  = Me.Fields
  loc_C04D1A: FLdPr var_340
  loc_C04D1D: from_stack_2 = Me.Item(from_stack_1)
  loc_C04D22: FLdPr var_354
  loc_C04D25:  = Me.Value
  loc_C04D2A: FLdI2 var_96
  loc_C04D2D: CI4UI1
  loc_C04D2E: CVarI4
  loc_C04D32: PopAdLdVar
  loc_C04D33: LitVarI4
  loc_C04D3B: PopAdLdVar
  loc_C04D3C: FLdPr var_E8
  loc_C04D3F: LateIdCallLdVar
  loc_C04D49: PopAd
  loc_C04D4B: FLdRfVar var_A4
  loc_C04D4E: LitI2_Byte 0
  loc_C04D50: LitI2_Byte 0
  loc_C04D52: LitI2_Byte 0
  loc_C04D54: LitI4 0
  loc_C04D59: FLdRfVar var_3A4
  loc_C04D5C: CStrVarTmp
  loc_C04D5D: FStStrNoPop var_3D8
  loc_C04D60: CI2Str
  loc_C04D62: FLdRfVar var_3D4
  loc_C04D65: CI4Var
  loc_C04D67: FLdRfVar var_338
  loc_C04D6A: CStrVarTmp
  loc_C04D6B: FStStrNoPop var_3C4
  loc_C04D6E: FLdRfVar var_2E8
  loc_C04D71: CR4Var
  loc_C04D72: PopFPR8
  loc_C04D73: FLdRfVar var_2B8
  loc_C04D76: CR4Var
  loc_C04D77: PopFPR8
  loc_C04D78: LitI2_Byte 1
  loc_C04D7A: CR8I2
  loc_C04D7B: PopFPR8
  loc_C04D7C: FLdRfVar var_3BC
  loc_C04D7F: CStrVarTmp
  loc_C04D80: FStStrNoPop var_3C0
  loc_C04D83: FLdRfVar var_270
  loc_C04D86: CStrVarTmp
  loc_C04D87: FStStrNoPop var_3AC
  loc_C04D8A: FLdRfVar var_260
  loc_C04D8D: CStrVarTmp
  loc_C04D8E: FStStrNoPop var_3A8
  loc_C04D91: FLdRfVar var_204
  loc_C04D94: CStrVarTmp
  loc_C04D95: FStStrNoPop var_208
  loc_C04D98: CI4Str
  loc_C04D99: FLdRfVar var_1B0
  loc_C04D9C: CStrVarTmp
  loc_C04D9D: FStStrNoPop var_1B4
  loc_C04DA0: CI2Str
  loc_C04DA2: FLdRfVar var_DC
  loc_C04DA5: CStrVarTmp
  loc_C04DA6: FStStrNoPop var_160
  loc_C04DA9: FLdRfVar var_BC
  loc_C04DAC: CStrVarTmp
  loc_C04DAD: FStStrNoPop var_9C
  loc_C04DB0: FLdPr Me
  loc_C04DB3: MemLdRfVar from_stack_1.global_52
  loc_C04DB6: NewIfNullPr clsimputacion
  loc_C04DB9: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C04DBE: ILdRf var_A4
  loc_C04DC1: FStR4 var_8C
  loc_C04DC4: FFreeStr var_9C = "": var_160 = "": var_1B4 = "": var_208 = "": var_3A8 = "": var_3AC = "": var_3C0 = "": var_3C4 = ""
  loc_C04DD9: FFreeAd var_A8 = "": var_E0 = "": var_274 = "": var_33C = "": var_340 = "": var_288 = ""
  loc_C04DEA: FFreeVar var_BC = "": var_DC = "": var_1B0 = "": var_204 = "": var_260 = "": var_270 = "": var_2A8 = "": var_2D8 = "": var_338 = "": var_3A4 = "": var_3BC = "": var_2B8 = "": var_2E8 = ""
  loc_C04E09: ILdRf var_8C
  loc_C04E0C: LitI4 0
  loc_C04E11: EqI4
  loc_C04E12: BranchF loc_C04E22
  loc_C04E15: LitI4 0
  loc_C04E1A: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C04E1D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C04E22: FLdRfVar var_536
  loc_C04E25: FLdPr Me
  loc_C04E28: VCallAd Control_ID_chkSoloAjustes
  loc_C04E2B: FStAdFunc var_A8
  loc_C04E2E: FLdPr var_A8
  loc_C04E31:  = Me.Value
  loc_C04E36: FLdI2 var_536
  loc_C04E39: CI4UI1
  loc_C04E3A: LitI4 0
  loc_C04E3F: EqI4
  loc_C04E40: FFree1Ad var_A8
  loc_C04E43: BranchF loc_C051BC
  loc_C04E46: FLdI2 var_96
  loc_C04E49: CI4UI1
  loc_C04E4A: CVarI4
  loc_C04E4E: PopAdLdVar
  loc_C04E4F: LitVarI4
  loc_C04E57: PopAdLdVar
  loc_C04E58: FLdPr var_E8
  loc_C04E5B: LateIdCallLdVar
  loc_C04E65: PopAd
  loc_C04E67: FLdI2 var_96
  loc_C04E6A: CI4UI1
  loc_C04E6B: CVarI4
  loc_C04E6F: PopAdLdVar
  loc_C04E70: LitVarI4
  loc_C04E78: PopAdLdVar
  loc_C04E79: FLdPr var_E8
  loc_C04E7C: LateIdCallLdVar
  loc_C04E86: PopAd
  loc_C04E88: FLdI2 var_96
  loc_C04E8B: CI4UI1
  loc_C04E8C: CVarI4
  loc_C04E90: PopAdLdVar
  loc_C04E91: LitVarI4
  loc_C04E99: PopAdLdVar
  loc_C04E9A: FLdPr var_E8
  loc_C04E9D: LateIdCallLdVar
  loc_C04EA7: PopAd
  loc_C04EA9: FLdI2 var_96
  loc_C04EAC: CI4UI1
  loc_C04EAD: CVarI4
  loc_C04EB1: PopAdLdVar
  loc_C04EB2: LitVarI4
  loc_C04EBA: PopAdLdVar
  loc_C04EBB: FLdPr var_E8
  loc_C04EBE: LateIdCallLdVar
  loc_C04EC8: PopAd
  loc_C04ECA: FLdI2 var_96
  loc_C04ECD: CI4UI1
  loc_C04ECE: CVarI4
  loc_C04ED2: PopAdLdVar
  loc_C04ED3: LitVarI4
  loc_C04EDB: PopAdLdVar
  loc_C04EDC: FLdPr var_E8
  loc_C04EDF: LateIdCallLdVar
  loc_C04EE9: PopAd
  loc_C04EEB: FLdPr Me
  loc_C04EEE: VCallAd Control_ID_FechImpuMsk
  loc_C04EF1: FStAdFunc var_A8
  loc_C04EF4: FLdPr var_A8
  loc_C04EF7: LateIdLdVar var_270 DispID_15 0
  loc_C04EFE: PopAd
  loc_C04F00: FLdRfVar var_3BC
  loc_C04F03: FLdRfVar var_288
  loc_C04F06: LitVarStr var_284, "ExpeImpu"
  loc_C04F0B: PopAdLdVar
  loc_C04F0C: FLdRfVar var_274
  loc_C04F0F: FLdRfVar var_E0
  loc_C04F12: FLdPr Me
  loc_C04F15: MemLdRfVar from_stack_1.global_56
  loc_C04F18: NewIfNullPr clsordencompra
  loc_C04F1B: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C04F20: FLdPr var_E0
  loc_C04F23:  = Me.Fields
  loc_C04F28: FLdPr var_274
  loc_C04F2B: from_stack_2 = Me.Item(from_stack_1)
  loc_C04F30: FLdPr var_288
  loc_C04F33:  = Me.Value
  loc_C04F38: FLdI2 var_96
  loc_C04F3B: CI4UI1
  loc_C04F3C: CVarI4
  loc_C04F40: PopAdLdVar
  loc_C04F41: LitVarI4
  loc_C04F49: PopAdLdVar
  loc_C04F4A: FLdPr var_E8
  loc_C04F4D: LateIdCallLdVar
  loc_C04F57: PopAd
  loc_C04F59: FLdI2 var_96
  loc_C04F5C: CI4UI1
  loc_C04F5D: CVarI4
  loc_C04F61: PopAdLdVar
  loc_C04F62: LitVarI4
  loc_C04F6A: PopAdLdVar
  loc_C04F6B: FLdPr var_E8
  loc_C04F6E: LateIdCallLdVar
  loc_C04F78: PopAd
  loc_C04F7A: FLdI2 var_96
  loc_C04F7D: CI4UI1
  loc_C04F7E: CVarI4
  loc_C04F82: PopAdLdVar
  loc_C04F83: LitVarI4
  loc_C04F8B: PopAdLdVar
  loc_C04F8C: FLdPr var_E8
  loc_C04F8F: LateIdCallLdVar
  loc_C04F99: PopAd
  loc_C04F9B: FLdI2 var_96
  loc_C04F9E: CI4UI1
  loc_C04F9F: CVarI4
  loc_C04FA3: PopAdLdVar
  loc_C04FA4: LitVarI4
  loc_C04FAC: PopAdLdVar
  loc_C04FAD: FLdPr var_E8
  loc_C04FB0: LateIdCallLdVar
  loc_C04FBA: PopAd
  loc_C04FBC: FLdRfVar var_3D4
  loc_C04FBF: FLdRfVar var_354
  loc_C04FC2: LitVarStr var_438, "CodiNope"
  loc_C04FC7: PopAdLdVar
  loc_C04FC8: FLdRfVar var_340
  loc_C04FCB: FLdRfVar var_33C
  loc_C04FCE: FLdPr Me
  loc_C04FD1: MemLdRfVar from_stack_1.global_56
  loc_C04FD4: NewIfNullPr clsordencompra
  loc_C04FD7: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C04FDC: FLdPr var_33C
  loc_C04FDF:  = Me.Fields
  loc_C04FE4: FLdPr var_340
  loc_C04FE7: from_stack_2 = Me.Item(from_stack_1)
  loc_C04FEC: FLdPr var_354
  loc_C04FEF:  = Me.Value
  loc_C04FF4: FLdRfVar var_508
  loc_C04FF7: FLdRfVar var_454
  loc_C04FFA: LitVarStr var_450, "CodiOrco"
  loc_C04FFF: PopAdLdVar
  loc_C05000: FLdRfVar var_440
  loc_C05003: FLdRfVar var_43C
  loc_C05006: FLdPr Me
  loc_C05009: MemLdRfVar from_stack_1.global_56
  loc_C0500C: NewIfNullPr clsordencompra
  loc_C0500F: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C05014: FLdPr var_43C
  loc_C05017:  = Me.Fields
  loc_C0501C: FLdPr var_440
  loc_C0501F: from_stack_2 = Me.Item(from_stack_1)
  loc_C05024: FLdPr var_454
  loc_C05027:  = Me.Value
  loc_C0502C: FLdI2 var_96
  loc_C0502F: CI4UI1
  loc_C05030: CVarI4
  loc_C05034: PopAdLdVar
  loc_C05035: LitVarI4
  loc_C0503D: PopAdLdVar
  loc_C0503E: FLdPr var_E8
  loc_C05041: LateIdCallLdVar
  loc_C0504B: PopAd
  loc_C0504D: FLdI2 var_96
  loc_C05050: CI4UI1
  loc_C05051: CVarI4
  loc_C05055: PopAdLdVar
  loc_C05056: LitVarI4
  loc_C0505E: PopAdLdVar
  loc_C0505F: FLdPr var_E8
  loc_C05062: LateIdCallLdVar
  loc_C0506C: PopAd
  loc_C0506E: FLdRfVar var_520
  loc_C05071: FLdRfVar var_4F0
  loc_C05074: LitVarStr var_4EC, "CucuPers"
  loc_C05079: PopAdLdVar
  loc_C0507A: FLdRfVar var_4DC
  loc_C0507D: FLdRfVar var_4D8
  loc_C05080: FLdPr Me
  loc_C05083: MemLdRfVar from_stack_1.global_56
  loc_C05086: NewIfNullPr clsordencompra
  loc_C05089: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C0508E: FLdPr var_4D8
  loc_C05091:  = Me.Fields
  loc_C05096: FLdPr var_4DC
  loc_C05099: from_stack_2 = Me.Item(from_stack_1)
  loc_C0509E: FLdPr var_4F0
  loc_C050A1:  = Me.Value
  loc_C050A6: FLdRfVar var_A4
  loc_C050A9: LitI2_Byte 0
  loc_C050AB: LitI2_Byte 0
  loc_C050AD: LitI2_Byte 0
  loc_C050AF: LitI4 0
  loc_C050B4: FLdRfVar var_520
  loc_C050B7: CStrVarTmp
  loc_C050B8: FStStrNoPop var_524
  loc_C050BB: FLdRfVar var_3A4
  loc_C050BE: CStrVarTmp
  loc_C050BF: FStStrNoPop var_510
  loc_C050C2: CUI1Str
  loc_C050C4: FLdRfVar var_338
  loc_C050C7: CStrVarTmp
  loc_C050C8: FStStrNoPop var_50C
  loc_C050CB: CI2Str
  loc_C050CD: FLdRfVar var_508
  loc_C050D0: CI4Var
  loc_C050D2: FLdRfVar var_3D4
  loc_C050D5: CI4Var
  loc_C050D7: FLdRfVar var_2E8
  loc_C050DA: CStrVarTmp
  loc_C050DB: FStStrNoPop var_4F8
  loc_C050DE: FLdRfVar var_2D8
  loc_C050E1: CStrVarTmp
  loc_C050E2: FStStrNoPop var_4F4
  loc_C050E5: CR8Str
  loc_C050E7: PopFPR8
  loc_C050E8: FLdRfVar var_2B8
  loc_C050EB: CStrVarTmp
  loc_C050EC: FStStrNoPop var_3D8
  loc_C050EF: CR8Str
  loc_C050F1: PopFPR8
  loc_C050F2: FLdRfVar var_2A8
  loc_C050F5: CStrVarTmp
  loc_C050F6: FStStrNoPop var_3C4
  loc_C050F9: CR8Str
  loc_C050FB: PopFPR8
  loc_C050FC: FLdRfVar var_3BC
  loc_C050FF: CStrVarTmp
  loc_C05100: FStStrNoPop var_3C0
  loc_C05103: FLdRfVar var_270
  loc_C05106: CStrVarTmp
  loc_C05107: FStStrNoPop var_3AC
  loc_C0510A: FLdRfVar var_260
  loc_C0510D: CStrVarTmp
  loc_C0510E: FStStrNoPop var_3A8
  loc_C05111: FLdRfVar var_204
  loc_C05114: CStrVarTmp
  loc_C05115: FStStrNoPop var_208
  loc_C05118: CI4Str
  loc_C05119: FLdRfVar var_1B0
  loc_C0511C: CStrVarTmp
  loc_C0511D: FStStrNoPop var_1B4
  loc_C05120: CI2Str
  loc_C05122: FLdRfVar var_DC
  loc_C05125: CStrVarTmp
  loc_C05126: FStStrNoPop var_160
  loc_C05129: FLdRfVar var_BC
  loc_C0512C: CStrVarTmp
  loc_C0512D: FStStrNoPop var_9C
  loc_C05130: FLdPr Me
  loc_C05133: MemLdRfVar from_stack_1.global_52
  loc_C05136: NewIfNullPr clsimputacion
  loc_C05139: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C0513E: ILdRf var_A4
  loc_C05141: FStR4 var_8C
  loc_C05144: FFreeStr var_9C = "": var_160 = "": var_1B4 = "": var_208 = "": var_3A8 = "": var_3AC = "": var_3C0 = "": var_3C4 = "": var_3D8 = "": var_4F4 = "": var_4F8 = "": var_50C = "": var_510 = ""
  loc_C05163: FFreeAd var_A8 = "": var_E0 = "": var_274 = "": var_33C = "": var_340 = "": var_43C = "": var_440 = "": var_4D8 = "": var_4DC = "": var_288 = "": var_354 = "": var_454 = ""
  loc_C05180: FFreeVar var_BC = "": var_DC = "": var_1B0 = "": var_204 = "": var_260 = "": var_270 = "": var_2A8 = "": var_2B8 = "": var_2D8 = "": var_2E8 = "": var_338 = "": var_3A4 = "": var_3BC = "": var_3D4 = "": var_508 = ""
  loc_C051A3: ILdRf var_8C
  loc_C051A6: LitI4 0
  loc_C051AB: EqI4
  loc_C051AC: BranchF loc_C051BC
  loc_C051AF: LitI4 0
  loc_C051B4: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C051B7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C051BC: LitI2_Byte &HFF
  loc_C051BE: FLdPr Me
  loc_C051C1: MemStI2 global_104
  loc_C051C4: FLdI2 var_96
  loc_C051C7: CI4UI1
  loc_C051C8: CVarI4
  loc_C051CC: PopAdLdVar
  loc_C051CD: LitVarI4
  loc_C051D5: PopAdLdVar
  loc_C051D6: LitVarStr var_12C, "Si"
  loc_C051DB: PopAdLdVar
  loc_C051DC: FLdPr var_E8
  loc_C051DF: LateIdCallSt
  loc_C051E7: FLdRfVar var_96
  loc_C051EA: NextI2 var_53C, loc_C047BA
  loc_C051EF: LitNothing
  loc_C051F1: FStAd var_E8 
  loc_C051F5: FLdPr Me
  loc_C051F8: MemLdI2 global_104
  loc_C051FB: BranchF loc_C052B1
  loc_C051FE: LitI2_Byte &HFF
  loc_C05200: PopTmpLdAd2 var_538
  loc_C05203: LitI2_Byte 0
  loc_C05205: PopTmpLdAd2 var_536
  loc_C05208: LitStr "¿Imprime el Volante de Imputaciones?"
  loc_C0520B: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C05210: CI4UI1
  loc_C05211: LitI4 6
  loc_C05216: EqI4
  loc_C05217: BranchF loc_C052AE
  loc_C0521A: ImpAdLdRf MemVar_C3D9BC
  loc_C0521D: NewIfNullAd
  loc_C05220: FStAdNoPop
  loc_C05224: ImpAdLdRf MemVar_C44F9C
  loc_C05227: NewIfNullPr Me
  loc_C0522A: Me.Global.Load from_stack_1
  loc_C0522F: FFree1Ad var_A8
  loc_C05232: FLdRfVar var_BC
  loc_C05235: FLdRfVar var_274
  loc_C05238: LitVarStr var_CC, "ExpeImpu"
  loc_C0523D: PopAdLdVar
  loc_C0523E: FLdRfVar var_E0
  loc_C05241: FLdRfVar var_A8
  loc_C05244: FLdPr Me
  loc_C05247: MemLdRfVar from_stack_1.global_56
  loc_C0524A: NewIfNullPr clsordencompra
  loc_C0524D: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C05252: FLdPr var_A8
  loc_C05255:  = Me.Fields
  loc_C0525A: FLdPr var_E0
  loc_C0525D: from_stack_2 = Me.Item(from_stack_1)
  loc_C05262: FLdPr var_274
  loc_C05265:  = Me.Value
  loc_C0526A: FLdRfVar var_BC
  loc_C0526D: CStrVarTmp
  loc_C0526E: FStStrNoPop var_9C
  loc_C05271: ImpAdLdRf MemVar_C3D9BC
  loc_C05274: NewIfNullPr rptVolantedeImputaciones
  loc_C05277: VCallAd Control_ID_cboExorImpu
  loc_C0527A: FStAdFunc var_288
  loc_C0527D: FLdPr var_288
  loc_C05280: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_C05285: FFree1Str var_9C
  loc_C05288: FFreeAd var_A8 = "": var_E0 = "": var_274 = ""
  loc_C05293: FFree1Var var_BC = ""
  loc_C05296: LitVar_Missing var_FC
  loc_C05299: PopAdLdVar
  loc_C0529A: LitVarI4
  loc_C052A2: PopAdLdVar
  loc_C052A3: ImpAdLdRf MemVar_C3D9BC
  loc_C052A6: NewIfNullPr rptVolantedeImputaciones
  loc_C052A9: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_C052AE: Branch loc_C052BE
  loc_C052B1: LitI4 0
  loc_C052B6: LitStr "Seleccione algún item para imputar. Reintente..."
  loc_C052B9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C052BE: Branch loc_C052CB
  loc_C052C1: FLdUI1
  loc_C052C5: LitI2_Byte 2
  loc_C052C7: EqI2
  loc_C052C8: BranchF loc_C052CB
  loc_C052CB: Call cmdCancelar_Click()
  loc_C052D0: Branch loc_C05484
  loc_C052D3: ILdRf var_A0
  loc_C052D6: LitStr "btnCancelar"
  loc_C052D9: EqStr
  loc_C052DB: BranchF loc_C052E6
  loc_C052DE: Call cmdCancelar_Click()
  loc_C052E3: Branch loc_C05484
  loc_C052E6: ILdRf var_A0
  loc_C052E9: LitStr "btnPrimero"
  loc_C052EC: EqStr
  loc_C052EE: BranchF loc_C05302
  loc_C052F1: FLdPr Me
  loc_C052F4: MemLdRfVar from_stack_1.global_56
  loc_C052F7: NewIfNullPr clsordencompra
  loc_C052FA: Call clsordencompra.MoveFirst()
  loc_C052FF: Branch loc_C05484
  loc_C05302: ILdRf var_A0
  loc_C05305: LitStr "btnAnterior"
  loc_C05308: EqStr
  loc_C0530A: BranchF loc_C0531E
  loc_C0530D: FLdPr Me
  loc_C05310: MemLdRfVar from_stack_1.global_56
  loc_C05313: NewIfNullPr clsordencompra
  loc_C05316: Call clsordencompra.MovePrevious()
  loc_C0531B: Branch loc_C05484
  loc_C0531E: ILdRf var_A0
  loc_C05321: LitStr "btnSiguiente"
  loc_C05324: EqStr
  loc_C05326: BranchF loc_C0533A
  loc_C05329: FLdPr Me
  loc_C0532C: MemLdRfVar from_stack_1.global_56
  loc_C0532F: NewIfNullPr clsordencompra
  loc_C05332: Call clsordencompra.MoveNext()
  loc_C05337: Branch loc_C05484
  loc_C0533A: ILdRf var_A0
  loc_C0533D: LitStr "btnUltimo"
  loc_C05340: EqStr
  loc_C05342: BranchF loc_C05356
  loc_C05345: FLdPr Me
  loc_C05348: MemLdRfVar from_stack_1.global_56
  loc_C0534B: NewIfNullPr clsordencompra
  loc_C0534E: Call clsordencompra.MoveLast()
  loc_C05353: Branch loc_C05484
  loc_C05356: ILdRf var_A0
  loc_C05359: LitStr "btnFiltrar"
  loc_C0535C: EqStr
  loc_C0535E: BranchF loc_C05364
  loc_C05361: Branch loc_C05484
  loc_C05364: ILdRf var_A0
  loc_C05367: LitStr "btnBuscar"
  loc_C0536A: EqStr
  loc_C0536C: BranchF loc_C05372
  loc_C0536F: Branch loc_C05484
  loc_C05372: ILdRf var_A0
  loc_C05375: LitStr "btnImprimir"
  loc_C05378: EqStr
  loc_C0537A: BranchF loc_C0542D
  loc_C0537D: ImpAdLdRf MemVar_C3D9BC
  loc_C05380: NewIfNullAd
  loc_C05383: CastAd
  loc_C05386: FStAdFuncNoPop
  loc_C05389: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_C0538E: FFree1Ad var_A8
  loc_C05391: FLdRfVar var_A4
  loc_C05394: FLdPr Me
  loc_C05397: MemLdRfVar from_stack_1.global_56
  loc_C0539A: NewIfNullPr clsordencompra
  loc_C0539D: from_stack_1 = clsordencompra.RecordCount
  loc_C053A2: ILdRf var_A4
  loc_C053A5: LitI4 0
  loc_C053AA: GtI4
  loc_C053AB: BranchF loc_C05412
  loc_C053AE: FLdRfVar var_BC
  loc_C053B1: FLdRfVar var_274
  loc_C053B4: LitVarStr var_CC, "ExpeImpu"
  loc_C053B9: PopAdLdVar
  loc_C053BA: FLdRfVar var_E0
  loc_C053BD: FLdRfVar var_A8
  loc_C053C0: FLdPr Me
  loc_C053C3: MemLdRfVar from_stack_1.global_56
  loc_C053C6: NewIfNullPr clsordencompra
  loc_C053C9: from_stack_1v = clsordencompra.RsFrmGet()
  loc_C053CE: FLdPr var_A8
  loc_C053D1:  = Me.Fields
  loc_C053D6: FLdPr var_E0
  loc_C053D9: from_stack_2 = Me.Item(from_stack_1)
  loc_C053DE: FLdPr var_274
  loc_C053E1:  = Me.Value
  loc_C053E6: FLdRfVar var_BC
  loc_C053E9: CStrVarTmp
  loc_C053EA: FStStrNoPop var_9C
  loc_C053ED: ImpAdLdRf MemVar_C3D9BC
  loc_C053F0: NewIfNullPr rptVolantedeImputaciones
  loc_C053F3: VCallAd Control_ID_cboExorImpu
  loc_C053F6: FStAdFunc var_288
  loc_C053F9: FLdPr var_288
  loc_C053FC: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_C05401: FFree1Str var_9C
  loc_C05404: FFreeAd var_A8 = "": var_E0 = "": var_274 = ""
  loc_C0540F: FFree1Var var_BC = ""
  loc_C05412: LitVar_Missing var_FC
  loc_C05415: PopAdLdVar
  loc_C05416: LitVarI4
  loc_C0541E: PopAdLdVar
  loc_C0541F: ImpAdLdRf MemVar_C3D9BC
  loc_C05422: NewIfNullPr rptVolantedeImputaciones
  loc_C05425: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_C0542A: Branch loc_C05484
  loc_C0542D: ILdRf var_A0
  loc_C05430: LitStr "btnAyuda"
  loc_C05433: EqStr
  loc_C05435: BranchF loc_C05464
  loc_C05438: LitVar_Missing var_204
  loc_C0543B: LitVar_Missing var_1B0
  loc_C0543E: LitVar_Missing var_DC
  loc_C05441: LitI4 0
  loc_C05446: LitVarStr var_CC, "Opcion no disponible en esta version."
  loc_C0544B: FStVarCopyObj var_BC
  loc_C0544E: FLdRfVar var_BC
  loc_C05451: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C05456: FFreeVar var_BC = "": var_DC = "": var_1B0 = ""
  loc_C05461: Branch loc_C05484
  loc_C05464: ILdRf var_A0
  loc_C05467: LitStr "btnSalir"
  loc_C0546A: EqStr
  loc_C0546C: BranchF loc_C05484
  loc_C0546F: ILdRf Me
  loc_C05472: FStAdNoPop
  loc_C05476: ImpAdLdRf MemVar_C44F9C
  loc_C05479: NewIfNullPr Me
  loc_C0547C: Me.Global.Unload from_stack_1
  loc_C05481: FFree1Ad var_A8
  loc_C05484: ExitProcHresult
  loc_C05485: Ary1LdFPR4
  loc_C05486: LitI2FP -32710
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9561A4
  'Data Table: 491BF8
  loc_95618C: FLdPr Me
  loc_95618F: VCallAd Control_ID_dgdABMS
  loc_956192: FStAdFunc var_88
  loc_956195: FLdRfVar var_88
  loc_956198: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95619D: FFree1Ad var_88
  loc_9561A0: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '956158
  'Data Table: 491BF8
  loc_956140: FLdPr Me
  loc_956143: VCallAd Control_ID_dgdABMS
  loc_956146: FStAdFunc var_88
  loc_956149: FLdRfVar var_88
  loc_95614C: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_956151: FFree1Ad var_88
  loc_956154: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99AC6C
  'Data Table: 491BF8
  loc_99AC10: FLdRfVar var_B4
  loc_99AC13: FLdRfVar var_B0
  loc_99AC16: FLdI2 ColIndex
  loc_99AC19: CVarI2 var_A8
  loc_99AC1C: PopAdLdVar
  loc_99AC1D: FLdPr Me
  loc_99AC20: VCallAd Control_ID_dgdABMS
  loc_99AC23: FStAdFunc var_88
  loc_99AC26: FLdPr var_88
  loc_99AC29: LateIdLdVar var_98 DispID_105 0
  loc_99AC30: CastAdVar Me
  loc_99AC34: FStAdFunc var_AC
  loc_99AC37: FLdPr var_AC
  loc_99AC3A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99AC3F: FLdPr var_B0
  loc_99AC42:  = Me.DataField
  loc_99AC47: FLdZeroAd var_B4
  loc_99AC4A: PopTmpLdAdStr
  loc_99AC4E: FLdPr Me
  loc_99AC51: MemLdRfVar from_stack_1.global_56
  loc_99AC54: NewIfNullPr clsordencompra
  loc_99AC57: Call clsordencompra.Sort(from_stack_1v)
  loc_99AC5C: FFree1Str var_B8
  loc_99AC5F: FFreeAd var_88 = "": var_AC = ""
  loc_99AC68: FFree1Var var_98 = ""
  loc_99AC6B: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'B4D278
  'Data Table: 491BF8
  loc_B4C91C: FLdPr Me
  loc_B4C91F: MemLdUI1 global_64
  loc_B4C923: CI2UI1
  loc_B4C925: LitI2_Byte 0
  loc_B4C927: EqI2
  loc_B4C928: FLdRfVar var_90
  loc_B4C92B: FLdPr Me
  loc_B4C92E: MemLdRfVar from_stack_1.global_56
  loc_B4C931: NewIfNullPr clsordencompra
  loc_B4C934: from_stack_1 = clsordencompra.RecordCount
  loc_B4C939: ILdRf var_90
  loc_B4C93C: LitI4 0
  loc_B4C941: GtI4
  loc_B4C942: AndI4
  loc_B4C943: BranchF loc_B4D276
  loc_B4C946: FLdRfVar var_92
  loc_B4C949: FLdPr Me
  loc_B4C94C: MemLdRfVar from_stack_1.global_56
  loc_B4C94F: NewIfNullPr clsordencompra
  loc_B4C952: from_stack_1 = clsordencompra.BOF
  loc_B4C957: FLdI2 var_92
  loc_B4C95A: BranchF loc_B4C96B
  loc_B4C95D: FLdPr Me
  loc_B4C960: MemLdRfVar from_stack_1.global_56
  loc_B4C963: NewIfNullPr clsordencompra
  loc_B4C966: Call clsordencompra.MoveFirst()
  loc_B4C96B: FLdRfVar var_92
  loc_B4C96E: FLdPr Me
  loc_B4C971: MemLdRfVar from_stack_1.global_56
  loc_B4C974: NewIfNullPr clsordencompra
  loc_B4C977: from_stack_1 = clsordencompra.EOF
  loc_B4C97C: FLdI2 var_92
  loc_B4C97F: BranchF loc_B4C990
  loc_B4C982: FLdPr Me
  loc_B4C985: MemLdRfVar from_stack_1.global_56
  loc_B4C988: NewIfNullPr clsordencompra
  loc_B4C98B: Call clsordencompra.MoveLast()
  loc_B4C990: Call Proc_110_18_A2E61C()
  loc_B4C995: FLdPr Me
  loc_B4C998: MemLdRfVar from_stack_1.global_60
  loc_B4C99B: NewIfNullAd
  loc_B4C99E: FStAd var_98 
  loc_B4C9A2: LitStr "SELECT itc.* , oc.CodiNope, CantItco * ImunItco doImpoImpu, DetaPart, DetaOrga, DetaFifu "
  loc_B4C9A5: LitStr ", itn.IdImpu IdImpuNP, IF(itc.IdImpu=0,'No','Si') Imputado"
  loc_B4C9A8: ConcatStr
  loc_B4C9A9: FStStrNoPop var_9C
  loc_B4C9AC: LitStr ", @i:=@i+1 cuenta"
  loc_B4C9AF: ConcatStr
  loc_B4C9B0: FStStrNoPop var_A0
  loc_B4C9B3: LitStr " FROM ordencompra oc"
  loc_B4C9B6: ConcatStr
  loc_B4C9B7: FStStrNoPop var_A4
  loc_B4C9BA: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = oc.PeriInfo AND itc.CodiOrco = oc.CodiOrco "
  loc_B4C9BD: ConcatStr
  loc_B4C9BE: FStStrNoPop var_A8
  loc_B4C9C1: LitStr " INNER JOIN partida p ON p.PeriInfo = itc.PeriInfo AND p.CodiPart = itc.CodiPart"
  loc_B4C9C4: ConcatStr
  loc_B4C9C5: FStStrNoPop var_AC
  loc_B4C9C8: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = itc.PeriInfo AND o.CodiOrga = itc.CodiOrga"
  loc_B4C9CB: ConcatStr
  loc_B4C9CC: FStStrNoPop var_B0
  loc_B4C9CF: LitStr " INNER JOIN finalidad f ON f.PeriInfo = itc.PeriInfo AND f.CodiFifu = itc.CodiFifu"
  loc_B4C9D2: ConcatStr
  loc_B4C9D3: FStStrNoPop var_B4
  loc_B4C9D6: LitStr " INNER JOIN itemnota itn ON itn.PeriInfo = oc.PeriInfo AND itn.CodiNope = oc.CodiNope AND itn.CodiItno = itc.CodiItco"
  loc_B4C9D9: ConcatStr
  loc_B4C9DA: FStStrNoPop var_B8
  loc_B4C9DD: LitStr " WHERE oc.PeriInfo = "
  loc_B4C9E0: ConcatStr
  loc_B4C9E1: CVarStr var_F4
  loc_B4C9E4: FLdRfVar var_E4
  loc_B4C9E7: FLdRfVar var_D4
  loc_B4C9EA: LitVarStr var_D0, "PeriInfo"
  loc_B4C9EF: PopAdLdVar
  loc_B4C9F0: FLdRfVar var_C0
  loc_B4C9F3: FLdRfVar var_BC
  loc_B4C9F6: FLdPr Me
  loc_B4C9F9: MemLdRfVar from_stack_1.global_56
  loc_B4C9FC: NewIfNullPr clsordencompra
  loc_B4C9FF: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CA04: FLdPr var_BC
  loc_B4CA07:  = Me.Fields
  loc_B4CA0C: FLdPr var_C0
  loc_B4CA0F: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CA14: FLdPr var_D4
  loc_B4CA17:  = Me.Value
  loc_B4CA1C: FLdRfVar var_E4
  loc_B4CA1F: ConcatVar var_104
  loc_B4CA23: LitVarStr var_114, " AND oc.CodiOrco = "
  loc_B4CA28: ConcatVar var_124
  loc_B4CA2C: FLdRfVar var_150
  loc_B4CA2F: FLdRfVar var_140
  loc_B4CA32: LitVarStr var_13C, "CodiOrco"
  loc_B4CA37: PopAdLdVar
  loc_B4CA38: FLdRfVar var_12C
  loc_B4CA3B: FLdRfVar var_128
  loc_B4CA3E: FLdPr Me
  loc_B4CA41: MemLdRfVar from_stack_1.global_56
  loc_B4CA44: NewIfNullPr clsordencompra
  loc_B4CA47: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CA4C: FLdPr var_128
  loc_B4CA4F:  = Me.Fields
  loc_B4CA54: FLdPr var_12C
  loc_B4CA57: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CA5C: FLdPr var_140
  loc_B4CA5F:  = Me.Value
  loc_B4CA64: FLdRfVar var_150
  loc_B4CA67: ConcatVar var_160
  loc_B4CA6B: LitVarStr var_170, ";"
  loc_B4CA70: ConcatVar var_180
  loc_B4CA74: CStrVarVal var_184
  loc_B4CA78: FLdPr var_98
  loc_B4CA7B: Call clsordencompra.RedefineRS(from_stack_1v)
  loc_B4CA80: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B4CA95: FFreeAd var_BC = "": var_C0 = "": var_D4 = "": var_128 = "": var_12C = ""
  loc_B4CAA4: FFreeVar var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_150 = "": var_160 = ""
  loc_B4CAB5: FLdRfVar var_90
  loc_B4CAB8: FLdPr var_98
  loc_B4CABB: from_stack_1 = clsordencompra.RecordCount
  loc_B4CAC0: ILdRf var_90
  loc_B4CAC3: LitI4 0
  loc_B4CAC8: GtI4
  loc_B4CAC9: BranchF loc_B4CFF7
  loc_B4CACC: FLdPr var_98
  loc_B4CACF: Call clsordencompra.MoveFirst()
  loc_B4CAD4: FLdRfVar var_92
  loc_B4CAD7: FLdPr var_98
  loc_B4CADA: from_stack_1 = clsordencompra.EOF
  loc_B4CADF: FLdI2 var_92
  loc_B4CAE2: NotI4
  loc_B4CAE3: BranchF loc_B4CFF7
  loc_B4CAE6: FLdRfVar var_D4
  loc_B4CAE9: LitVarStr var_D0, "ImunItco"
  loc_B4CAEE: PopAdLdVar
  loc_B4CAEF: FLdRfVar var_C0
  loc_B4CAF2: FLdRfVar var_BC
  loc_B4CAF5: FLdPr Me
  loc_B4CAF8: MemLdRfVar from_stack_1.global_60
  loc_B4CAFB: NewIfNullPr clsordencompra
  loc_B4CAFE: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CB03: FLdPr var_BC
  loc_B4CB06:  = Me.Fields
  loc_B4CB0B: FLdPr var_C0
  loc_B4CB0E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CB13: LitI4 1
  loc_B4CB18: LitI4 1
  loc_B4CB1D: LitVarStr var_114, "###,###,##0.00"
  loc_B4CB22: FStVarCopyObj var_F4
  loc_B4CB25: FLdRfVar var_F4
  loc_B4CB28: FLdZeroAd var_D4
  loc_B4CB2B: CVarAd
  loc_B4CB2F: FLdRfVar var_104
  loc_B4CB32: ImpAdCallFPR4  = Format(, )
  loc_B4CB37: FLdRfVar var_104
  loc_B4CB3A: CStrVarTmp
  loc_B4CB3B: FStStr var_88
  loc_B4CB3E: FFreeAd var_BC = ""
  loc_B4CB45: FFreeVar var_E4 = "": var_F4 = ""
  loc_B4CB4E: FLdRfVar var_D4
  loc_B4CB51: LitVarStr var_D0, "doImpoImpu"
  loc_B4CB56: PopAdLdVar
  loc_B4CB57: FLdRfVar var_C0
  loc_B4CB5A: FLdRfVar var_BC
  loc_B4CB5D: FLdPr Me
  loc_B4CB60: MemLdRfVar from_stack_1.global_60
  loc_B4CB63: NewIfNullPr clsordencompra
  loc_B4CB66: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CB6B: FLdPr var_BC
  loc_B4CB6E:  = Me.Fields
  loc_B4CB73: FLdPr var_C0
  loc_B4CB76: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CB7B: LitI4 1
  loc_B4CB80: LitI4 1
  loc_B4CB85: LitVarStr var_114, "###,###,##0.00"
  loc_B4CB8A: FStVarCopyObj var_F4
  loc_B4CB8D: FLdRfVar var_F4
  loc_B4CB90: FLdZeroAd var_D4
  loc_B4CB93: CVarAd
  loc_B4CB97: FLdRfVar var_104
  loc_B4CB9A: ImpAdCallFPR4  = Format(, )
  loc_B4CB9F: FLdRfVar var_104
  loc_B4CBA2: CStrVarTmp
  loc_B4CBA3: FStStr var_8C
  loc_B4CBA6: FFreeAd var_BC = ""
  loc_B4CBAD: FFreeVar var_E4 = "": var_F4 = ""
  loc_B4CBB6: FLdRfVar var_F4
  loc_B4CBB9: FLdRfVar var_D4
  loc_B4CBBC: LitVarStr var_D0, "CodiItco"
  loc_B4CBC1: PopAdLdVar
  loc_B4CBC2: FLdRfVar var_C0
  loc_B4CBC5: FLdRfVar var_BC
  loc_B4CBC8: FLdPr var_98
  loc_B4CBCB: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CBD0: FLdPr var_BC
  loc_B4CBD3:  = Me.Fields
  loc_B4CBD8: FLdPr var_C0
  loc_B4CBDB: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CBE0: FLdPr var_D4
  loc_B4CBE3:  = Me.Value
  loc_B4CBE8: FLdRfVar var_F4
  loc_B4CBEB: LitI4 9
  loc_B4CBF0: FLdRfVar var_E4
  loc_B4CBF3: ImpAdCallFPR4  = Chr()
  loc_B4CBF8: FLdRfVar var_E4
  loc_B4CBFB: ConcatVar var_104
  loc_B4CBFF: FLdRfVar var_124
  loc_B4CC02: FLdRfVar var_140
  loc_B4CC05: LitVarStr var_114, "CodiInsu"
  loc_B4CC0A: PopAdLdVar
  loc_B4CC0B: FLdRfVar var_12C
  loc_B4CC0E: FLdRfVar var_128
  loc_B4CC11: FLdPr var_98
  loc_B4CC14: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CC19: FLdPr var_128
  loc_B4CC1C:  = Me.Fields
  loc_B4CC21: FLdPr var_12C
  loc_B4CC24: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CC29: FLdPr var_140
  loc_B4CC2C:  = Me.Value
  loc_B4CC31: FLdRfVar var_124
  loc_B4CC34: ConcatVar var_150
  loc_B4CC38: LitI4 9
  loc_B4CC3D: FLdRfVar var_160
  loc_B4CC40: ImpAdCallFPR4  = Chr()
  loc_B4CC45: FLdRfVar var_160
  loc_B4CC48: ConcatVar var_180
  loc_B4CC4C: FLdRfVar var_1A0
  loc_B4CC4F: FLdRfVar var_190
  loc_B4CC52: LitVarStr var_13C, "DetaItco"
  loc_B4CC57: PopAdLdVar
  loc_B4CC58: FLdRfVar var_18C
  loc_B4CC5B: FLdRfVar var_188
  loc_B4CC5E: FLdPr var_98
  loc_B4CC61: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CC66: FLdPr var_188
  loc_B4CC69:  = Me.Fields
  loc_B4CC6E: FLdPr var_18C
  loc_B4CC71: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CC76: FLdPr var_190
  loc_B4CC79:  = Me.Value
  loc_B4CC7E: FLdRfVar var_1A0
  loc_B4CC81: ConcatVar var_1B0
  loc_B4CC85: LitI4 9
  loc_B4CC8A: FLdRfVar var_1C0
  loc_B4CC8D: ImpAdCallFPR4  = Chr()
  loc_B4CC92: FLdRfVar var_1C0
  loc_B4CC95: ConcatVar var_1D0
  loc_B4CC99: FLdRfVar var_1EC
  loc_B4CC9C: FLdRfVar var_1DC
  loc_B4CC9F: LitVarStr var_170, "CantItco"
  loc_B4CCA4: PopAdLdVar
  loc_B4CCA5: FLdRfVar var_1D8
  loc_B4CCA8: FLdRfVar var_1D4
  loc_B4CCAB: FLdPr var_98
  loc_B4CCAE: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CCB3: FLdPr var_1D4
  loc_B4CCB6:  = Me.Fields
  loc_B4CCBB: FLdPr var_1D8
  loc_B4CCBE: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CCC3: FLdPr var_1DC
  loc_B4CCC6:  = Me.Value
  loc_B4CCCB: FLdRfVar var_1EC
  loc_B4CCCE: ConcatVar var_1FC
  loc_B4CCD2: LitI4 9
  loc_B4CCD7: FLdRfVar var_20C
  loc_B4CCDA: ImpAdCallFPR4  = Chr()
  loc_B4CCDF: FLdRfVar var_20C
  loc_B4CCE2: ConcatVar var_21C
  loc_B4CCE6: ILdRf var_88
  loc_B4CCE9: CVarStr var_22C
  loc_B4CCEC: ConcatVar var_23C
  loc_B4CCF0: LitI4 9
  loc_B4CCF5: FLdRfVar var_24C
  loc_B4CCF8: ImpAdCallFPR4  = Chr()
  loc_B4CCFD: FLdRfVar var_24C
  loc_B4CD00: ConcatVar var_25C
  loc_B4CD04: ILdRf var_8C
  loc_B4CD07: CVarStr var_26C
  loc_B4CD0A: ConcatVar var_27C
  loc_B4CD0E: LitI4 9
  loc_B4CD13: FLdRfVar var_28C
  loc_B4CD16: ImpAdCallFPR4  = Chr()
  loc_B4CD1B: FLdRfVar var_28C
  loc_B4CD1E: ConcatVar var_29C
  loc_B4CD22: FLdRfVar var_2C8
  loc_B4CD25: FLdRfVar var_2B8
  loc_B4CD28: LitVarStr var_2B4, "CodiPart"
  loc_B4CD2D: PopAdLdVar
  loc_B4CD2E: FLdRfVar var_2A4
  loc_B4CD31: FLdRfVar var_2A0
  loc_B4CD34: FLdPr var_98
  loc_B4CD37: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CD3C: FLdPr var_2A0
  loc_B4CD3F:  = Me.Fields
  loc_B4CD44: FLdPr var_2A4
  loc_B4CD47: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CD4C: FLdPr var_2B8
  loc_B4CD4F:  = Me.Value
  loc_B4CD54: FLdRfVar var_2C8
  loc_B4CD57: ConcatVar var_2D8
  loc_B4CD5B: LitI4 9
  loc_B4CD60: FLdRfVar var_2E8
  loc_B4CD63: ImpAdCallFPR4  = Chr()
  loc_B4CD68: FLdRfVar var_2E8
  loc_B4CD6B: ConcatVar var_2F8
  loc_B4CD6F: FLdRfVar var_324
  loc_B4CD72: FLdRfVar var_314
  loc_B4CD75: LitVarStr var_310, "CodiOrga"
  loc_B4CD7A: PopAdLdVar
  loc_B4CD7B: FLdRfVar var_300
  loc_B4CD7E: FLdRfVar var_2FC
  loc_B4CD81: FLdPr var_98
  loc_B4CD84: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CD89: FLdPr var_2FC
  loc_B4CD8C:  = Me.Fields
  loc_B4CD91: FLdPr var_300
  loc_B4CD94: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CD99: FLdPr var_314
  loc_B4CD9C:  = Me.Value
  loc_B4CDA1: FLdRfVar var_324
  loc_B4CDA4: ConcatVar var_334
  loc_B4CDA8: LitI4 9
  loc_B4CDAD: FLdRfVar var_344
  loc_B4CDB0: ImpAdCallFPR4  = Chr()
  loc_B4CDB5: FLdRfVar var_344
  loc_B4CDB8: ConcatVar var_354
  loc_B4CDBC: FLdRfVar var_380
  loc_B4CDBF: FLdRfVar var_370
  loc_B4CDC2: LitVarStr var_36C, "CodiFifu"
  loc_B4CDC7: PopAdLdVar
  loc_B4CDC8: FLdRfVar var_35C
  loc_B4CDCB: FLdRfVar var_358
  loc_B4CDCE: FLdPr var_98
  loc_B4CDD1: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CDD6: FLdPr var_358
  loc_B4CDD9:  = Me.Fields
  loc_B4CDDE: FLdPr var_35C
  loc_B4CDE1: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CDE6: FLdPr var_370
  loc_B4CDE9:  = Me.Value
  loc_B4CDEE: FLdRfVar var_380
  loc_B4CDF1: ConcatVar var_390
  loc_B4CDF5: LitI4 9
  loc_B4CDFA: FLdRfVar var_3A0
  loc_B4CDFD: ImpAdCallFPR4  = Chr()
  loc_B4CE02: FLdRfVar var_3A0
  loc_B4CE05: ConcatVar var_3B0
  loc_B4CE09: FLdRfVar var_3DC
  loc_B4CE0C: FLdRfVar var_3CC
  loc_B4CE0F: LitVarStr var_3C8, "Imputado"
  loc_B4CE14: PopAdLdVar
  loc_B4CE15: FLdRfVar var_3B8
  loc_B4CE18: FLdRfVar var_3B4
  loc_B4CE1B: FLdPr var_98
  loc_B4CE1E: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CE23: FLdPr var_3B4
  loc_B4CE26:  = Me.Fields
  loc_B4CE2B: FLdPr var_3B8
  loc_B4CE2E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CE33: FLdPr var_3CC
  loc_B4CE36:  = Me.Value
  loc_B4CE3B: FLdRfVar var_3DC
  loc_B4CE3E: ConcatVar var_3EC
  loc_B4CE42: LitI4 9
  loc_B4CE47: FLdRfVar var_3FC
  loc_B4CE4A: ImpAdCallFPR4  = Chr()
  loc_B4CE4F: FLdRfVar var_3FC
  loc_B4CE52: ConcatVar var_40C
  loc_B4CE56: FLdRfVar var_438
  loc_B4CE59: FLdRfVar var_428
  loc_B4CE5C: LitVarStr var_424, "CodiUnga"
  loc_B4CE61: PopAdLdVar
  loc_B4CE62: FLdRfVar var_414
  loc_B4CE65: FLdRfVar var_410
  loc_B4CE68: FLdPr var_98
  loc_B4CE6B: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CE70: FLdPr var_410
  loc_B4CE73:  = Me.Fields
  loc_B4CE78: FLdPr var_414
  loc_B4CE7B: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CE80: FLdPr var_428
  loc_B4CE83:  = Me.Value
  loc_B4CE88: FLdRfVar var_438
  loc_B4CE8B: ConcatVar var_448
  loc_B4CE8F: LitI4 9
  loc_B4CE94: FLdRfVar var_458
  loc_B4CE97: ImpAdCallFPR4  = Chr()
  loc_B4CE9C: FLdRfVar var_458
  loc_B4CE9F: ConcatVar var_468
  loc_B4CEA3: FLdRfVar var_494
  loc_B4CEA6: FLdRfVar var_484
  loc_B4CEA9: LitVarStr var_480, "AlteItco"
  loc_B4CEAE: PopAdLdVar
  loc_B4CEAF: FLdRfVar var_470
  loc_B4CEB2: FLdRfVar var_46C
  loc_B4CEB5: FLdPr var_98
  loc_B4CEB8: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CEBD: FLdPr var_46C
  loc_B4CEC0:  = Me.Fields
  loc_B4CEC5: FLdPr var_470
  loc_B4CEC8: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CECD: FLdPr var_484
  loc_B4CED0:  = Me.Value
  loc_B4CED5: FLdRfVar var_494
  loc_B4CED8: ConcatVar var_4A4
  loc_B4CEDC: LitI4 9
  loc_B4CEE1: FLdRfVar var_4B4
  loc_B4CEE4: ImpAdCallFPR4  = Chr()
  loc_B4CEE9: FLdRfVar var_4B4
  loc_B4CEEC: ConcatVar var_4C4
  loc_B4CEF0: FLdRfVar var_4F0
  loc_B4CEF3: FLdRfVar var_4E0
  loc_B4CEF6: LitVarStr var_4DC, "IdImpuNP"
  loc_B4CEFB: PopAdLdVar
  loc_B4CEFC: FLdRfVar var_4CC
  loc_B4CEFF: FLdRfVar var_4C8
  loc_B4CF02: FLdPr var_98
  loc_B4CF05: from_stack_1v = clsordencompra.RsFrmGet()
  loc_B4CF0A: FLdPr var_4C8
  loc_B4CF0D:  = Me.Fields
  loc_B4CF12: FLdPr var_4CC
  loc_B4CF15: from_stack_2 = Me.Item(from_stack_1)
  loc_B4CF1A: FLdPr var_4E0
  loc_B4CF1D:  = Me.Value
  loc_B4CF22: FLdRfVar var_4F0
  loc_B4CF25: ConcatVar var_500
  loc_B4CF29: CStrVarTmp
  loc_B4CF2A: CVarStr var_510
  loc_B4CF2D: PopAdLdVar
  loc_B4CF2E: FLdPr Me
  loc_B4CF31: VCallAd Control_ID_FlexItemCompra
  loc_B4CF34: FStAdFunc var_524
  loc_B4CF37: FLdPr var_524
  loc_B4CF3A: LateIdCall
  loc_B4CF42: FFreeAd var_4C8 = "": var_4CC = "": var_4E0 = "": var_524 = "": var_BC = "": var_C0 = "": var_D4 = "": var_128 = "": var_12C = "": var_140 = "": var_188 = "": var_18C = "": var_190 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_2A0 = "": var_2A4 = "": var_2B8 = "": var_2FC = "": var_300 = "": var_314 = "": var_358 = "": var_35C = "": var_370 = "": var_3B4 = "": var_3B8 = "": var_3CC = "": var_410 = "": var_414 = "": var_428 = "": var_46C = "": var_470 = ""
  loc_B4CF89: FFreeVar var_390 = "": var_3A0 = "": var_3B0 = "": var_3DC = "": var_3EC = "": var_3FC = "": var_40C = "": var_438 = "": var_448 = "": var_458 = "": var_468 = "": var_494 = "": var_4A4 = "": var_4B4 = "": var_4C4 = "": var_4F0 = "": var_500 = "": var_510 = "": var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_150 = "": var_160 = "": var_180 = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_23C = "": var_24C = "": var_25C = "": var_27C = "": var_28C = "": var_29C = "": var_2C8 = "": var_2D8 = "": var_2E8 = "": var_2F8 = "": var_324 = "": var_334 = "": var_344 = "": var_354 = ""
  loc_B4CFEC: FLdPr var_98
  loc_B4CFEF: Call clsordencompra.MoveSiguiente()
  loc_B4CFF4: Branch loc_B4CAD4
  loc_B4CFF7: FLdPr var_98
  loc_B4CFFA: Call clsordencompra.MoveFirst()
  loc_B4CFFF: FLdRfVar var_90
  loc_B4D002: FLdPr var_98
  loc_B4D005: from_stack_1 = clsordencompra.RecordCount
  loc_B4D00A: ILdRf var_90
  loc_B4D00D: LitI4 0
  loc_B4D012: GtI4
  loc_B4D013: BranchF loc_B4D270
  loc_B4D016: LitStr "Datos de Imputación del Item: 1 "
  loc_B4D019: FLdPr Me
  loc_B4D01C: VCallAd Control_ID_Frame1
  loc_B4D01F: FStAdFunc var_BC
  loc_B4D022: FLdPr var_BC
  loc_B4D025: Me.Caption = from_stack_1
  loc_B4D02A: FFree1Ad var_BC
  loc_B4D02D: FLdPr Me
  loc_B4D030: VCallAd Control_ID_FlexItemCompra
  loc_B4D033: FStAdFunc var_BC
  loc_B4D036: FLdPr var_BC
  loc_B4D039: LateIdLdVar var_E4 DispID_10 0
  loc_B4D040: CI4Var
  loc_B4D042: CVarI4
  loc_B4D046: PopAdLdVar
  loc_B4D047: LitVarI4
  loc_B4D04F: PopAdLdVar
  loc_B4D050: FLdPr Me
  loc_B4D053: VCallAd Control_ID_FlexItemCompra
  loc_B4D056: FStAdFunc var_C0
  loc_B4D059: FLdPr var_C0
  loc_B4D05C: LateIdCallLdVar
  loc_B4D066: PopAd
  loc_B4D068: FLdPr Me
  loc_B4D06B: MemLdRfVar from_stack_1.global_88
  loc_B4D06E: NewIfNullRf
  loc_B4D072: FLdRfVar var_F4
  loc_B4D075: CStrVarTmp
  loc_B4D076: FStStrNoPop var_9C
  loc_B4D079: ImpAdLdI2 MemVar_C3D064
  loc_B4D07C: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_B4D081: FFree1Str var_9C
  loc_B4D084: FFreeAd var_BC = ""
  loc_B4D08B: FFreeVar var_E4 = ""
  loc_B4D092: FLdRfVar var_9C
  loc_B4D095: FLdPr Me
  loc_B4D098: MemLdRfVar from_stack_1.global_88
  loc_B4D09B: NewIfNullPr tblpartida
  loc_B4D09E: from_stack_1v = tblpartida.DetaPartGet()
  loc_B4D0A3: ILdRf var_9C
  loc_B4D0A6: FLdPr Me
  loc_B4D0A9: VCallAd Control_ID_DetaPartLbl
  loc_B4D0AC: FStAdFunc var_BC
  loc_B4D0AF: FLdPr var_BC
  loc_B4D0B2: Me.Caption = from_stack_1
  loc_B4D0B7: FFree1Str var_9C
  loc_B4D0BA: FFree1Ad var_BC
  loc_B4D0BD: FLdPr Me
  loc_B4D0C0: VCallAd Control_ID_FlexItemCompra
  loc_B4D0C3: FStAdFunc var_BC
  loc_B4D0C6: FLdPr var_BC
  loc_B4D0C9: LateIdLdVar var_E4 DispID_10 0
  loc_B4D0D0: CI4Var
  loc_B4D0D2: CVarI4
  loc_B4D0D6: PopAdLdVar
  loc_B4D0D7: LitVarI4
  loc_B4D0DF: PopAdLdVar
  loc_B4D0E0: FLdPr Me
  loc_B4D0E3: VCallAd Control_ID_FlexItemCompra
  loc_B4D0E6: FStAdFunc var_C0
  loc_B4D0E9: FLdPr var_C0
  loc_B4D0EC: LateIdCallLdVar
  loc_B4D0F6: PopAd
  loc_B4D0F8: FLdPr Me
  loc_B4D0FB: MemLdRfVar from_stack_1.global_92
  loc_B4D0FE: NewIfNullRf
  loc_B4D102: FLdRfVar var_F4
  loc_B4D105: CStrVarTmp
  loc_B4D106: FStStrNoPop var_9C
  loc_B4D109: ImpAdLdI2 MemVar_C3D064
  loc_B4D10C: ImpAdCallFPR4 Proc_259_20_B23018(, , )
  loc_B4D111: FFree1Str var_9C
  loc_B4D114: FFreeAd var_BC = ""
  loc_B4D11B: FFreeVar var_E4 = ""
  loc_B4D122: FLdRfVar var_9C
  loc_B4D125: FLdPr Me
  loc_B4D128: MemLdRfVar from_stack_1.global_92
  loc_B4D12B: NewIfNullPr tblorganigrama
  loc_B4D12E: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B4D133: ILdRf var_9C
  loc_B4D136: FLdPr Me
  loc_B4D139: VCallAd Control_ID_DetaOrgaLbl
  loc_B4D13C: FStAdFunc var_BC
  loc_B4D13F: FLdPr var_BC
  loc_B4D142: Me.Caption = from_stack_1
  loc_B4D147: FFree1Str var_9C
  loc_B4D14A: FFree1Ad var_BC
  loc_B4D14D: FLdPr Me
  loc_B4D150: VCallAd Control_ID_FlexItemCompra
  loc_B4D153: FStAdFunc var_BC
  loc_B4D156: FLdPr var_BC
  loc_B4D159: LateIdLdVar var_E4 DispID_10 0
  loc_B4D160: CI4Var
  loc_B4D162: CVarI4
  loc_B4D166: PopAdLdVar
  loc_B4D167: LitVarI4
  loc_B4D16F: PopAdLdVar
  loc_B4D170: FLdPr Me
  loc_B4D173: VCallAd Control_ID_FlexItemCompra
  loc_B4D176: FStAdFunc var_C0
  loc_B4D179: FLdPr var_C0
  loc_B4D17C: LateIdCallLdVar
  loc_B4D186: PopAd
  loc_B4D188: FLdPr Me
  loc_B4D18B: MemLdRfVar from_stack_1.global_96
  loc_B4D18E: NewIfNullRf
  loc_B4D192: FLdRfVar var_F4
  loc_B4D195: CStrVarTmp
  loc_B4D196: FStStrNoPop var_9C
  loc_B4D199: ImpAdLdI2 MemVar_C3D064
  loc_B4D19C: ImpAdCallFPR4 Proc_259_12_AE1238(, , )
  loc_B4D1A1: FFree1Str var_9C
  loc_B4D1A4: FFreeAd var_BC = ""
  loc_B4D1AB: FFreeVar var_E4 = ""
  loc_B4D1B2: FLdRfVar var_9C
  loc_B4D1B5: FLdPr Me
  loc_B4D1B8: MemLdRfVar from_stack_1.global_96
  loc_B4D1BB: NewIfNullPr tblfinalidad
  loc_B4D1BE: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_B4D1C3: ILdRf var_9C
  loc_B4D1C6: FLdPr Me
  loc_B4D1C9: VCallAd Control_ID_DetaFifuLbl
  loc_B4D1CC: FStAdFunc var_BC
  loc_B4D1CF: FLdPr var_BC
  loc_B4D1D2: Me.Caption = from_stack_1
  loc_B4D1D7: FFree1Str var_9C
  loc_B4D1DA: FFree1Ad var_BC
  loc_B4D1DD: LitStr "Partida: "
  loc_B4D1E0: FLdRfVar var_9C
  loc_B4D1E3: FLdPr Me
  loc_B4D1E6: VCallAd Control_ID_DetaPartLbl
  loc_B4D1E9: FStAdFunc var_BC
  loc_B4D1EC: FLdPr var_BC
  loc_B4D1EF:  = Me.Caption
  loc_B4D1F4: ILdRf var_9C
  loc_B4D1F7: ConcatStr
  loc_B4D1F8: FStStrNoPop var_A0
  loc_B4D1FB: LitStr " - Oficina: "
  loc_B4D1FE: ConcatStr
  loc_B4D1FF: FStStrNoPop var_A8
  loc_B4D202: FLdRfVar var_A4
  loc_B4D205: FLdPr Me
  loc_B4D208: VCallAd Control_ID_DetaOrgaLbl
  loc_B4D20B: FStAdFunc var_C0
  loc_B4D20E: FLdPr var_C0
  loc_B4D211:  = Me.Caption
  loc_B4D216: ILdRf var_A4
  loc_B4D219: ConcatStr
  loc_B4D21A: FStStrNoPop var_AC
  loc_B4D21D: LitStr " - Finalidad: "
  loc_B4D220: ConcatStr
  loc_B4D221: FStStrNoPop var_B4
  loc_B4D224: FLdRfVar var_B0
  loc_B4D227: FLdPr Me
  loc_B4D22A: VCallAd Control_ID_DetaFifuLbl
  loc_B4D22D: FStAdFunc var_D4
  loc_B4D230: FLdPr var_D4
  loc_B4D233:  = Me.Caption
  loc_B4D238: ILdRf var_B0
  loc_B4D23B: ConcatStr
  loc_B4D23C: CVarStr var_E4
  loc_B4D23F: PopAdLdVar
  loc_B4D240: FLdPr Me
  loc_B4D243: VCallAd Control_ID_FlexItemCompra
  loc_B4D246: FStAdFunc var_128
  loc_B4D249: FLdPr var_128
  loc_B4D24C: LateIdSt
  loc_B4D251: FFreeStr var_9C = "": var_A0 = "": var_A8 = "": var_A4 = "": var_AC = "": var_B4 = ""
  loc_B4D262: FFreeAd var_BC = "": var_C0 = "": var_D4 = ""
  loc_B4D26D: FFree1Var var_E4 = ""
  loc_B4D270: LitNothing
  loc_B4D272: FStAd var_98 
  loc_B4D276: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9B8204
  'Data Table: 491BF8
  loc_9B814C: LitVarStr var_94, vbNullString
  loc_9B8151: PopAdLdVar
  loc_9B8152: FLdPr Me
  loc_9B8155: VCallAd Control_ID_FiltroMsk
  loc_9B8158: FStAdFunc var_A8
  loc_9B815B: FLdPr var_A8
  loc_9B815E: LateIdSt
  loc_9B8163: FFree1Ad var_A8
  loc_9B8166: FLdRfVar var_AA
  loc_9B8169: FLdPr Me
  loc_9B816C: VCallAd Control_ID_FiltroCbo
  loc_9B816F: FStAdFunc var_A8
  loc_9B8172: FLdPr var_A8
  loc_9B8175:  = Me.ListIndex
  loc_9B817A: FLdI2 var_AA
  loc_9B817D: FStI2 var_AC
  loc_9B8180: FFree1Ad var_A8
  loc_9B8183: FLdI2 var_AC
  loc_9B8186: LitI2_Byte 0
  loc_9B8188: EqI2
  loc_9B8189: BranchF loc_9B81C3
  loc_9B818C: LitVarStr var_94, "########"
  loc_9B8191: PopAdLdVar
  loc_9B8192: FLdPr Me
  loc_9B8195: VCallAd Control_ID_FiltroMsk
  loc_9B8198: FStAdFunc var_A8
  loc_9B819B: FLdPr var_A8
  loc_9B819E: LateIdSt
  loc_9B81A3: FFree1Ad var_A8
  loc_9B81A6: LitStr "CodiOrco"
  loc_9B81A9: FStStrCopy var_B0
  loc_9B81AC: FLdRfVar var_B0
  loc_9B81AF: FLdPr Me
  loc_9B81B2: MemLdRfVar from_stack_1.global_56
  loc_9B81B5: NewIfNullPr clsordencompra
  loc_9B81B8: Call clsordencompra.Sort(from_stack_1v)
  loc_9B81BD: FFree1Str var_B0
  loc_9B81C0: Branch loc_9B8200
  loc_9B81C3: FLdI2 var_AC
  loc_9B81C6: LitI2_Byte 1
  loc_9B81C8: EqI2
  loc_9B81C9: BranchF loc_9B8200
  loc_9B81CC: LitVarStr var_94, "########"
  loc_9B81D1: PopAdLdVar
  loc_9B81D2: FLdPr Me
  loc_9B81D5: VCallAd Control_ID_FiltroMsk
  loc_9B81D8: FStAdFunc var_A8
  loc_9B81DB: FLdPr var_A8
  loc_9B81DE: LateIdSt
  loc_9B81E3: FFree1Ad var_A8
  loc_9B81E6: LitStr "CodiNope"
  loc_9B81E9: FStStrCopy var_B0
  loc_9B81EC: FLdRfVar var_B0
  loc_9B81EF: FLdPr Me
  loc_9B81F2: MemLdRfVar from_stack_1.global_56
  loc_9B81F5: NewIfNullPr clsordencompra
  loc_9B81F8: Call clsordencompra.Sort(from_stack_1v)
  loc_9B81FD: FFree1Str var_B0
  loc_9B8200: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A57C2C
  'Data Table: 491BF8
  loc_A57950: FLdPr Me
  loc_A57953: MemLdI2 global_104
  loc_A57956: BranchF loc_A57AD1
  loc_A57959: LitI2_Byte 0
  loc_A5795B: CUI1I2
  loc_A5795D: FLdPr Me
  loc_A57960: MemStUI1
  loc_A57964: ILdRf Me
  loc_A57967: CastAd
  loc_A5796A: FStAdFunc var_88
  loc_A5796D: FLdRfVar var_88
  loc_A57970: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A57975: FFree1Ad var_88
  loc_A57978: LitI4 0
  loc_A5797D: LitI4 0
  loc_A57982: FLdRfVar var_8C
  loc_A57985: Redim
  loc_A5798F: FLdPr Me
  loc_A57992: VCallAd Control_ID_dgdABMS
  loc_A57995: CVarAd
  loc_A57999: ParmAry1St
  loc_A5799F: FLdRfVar var_8C
  loc_A579A2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A579A7: FLdRfVar var_8C
  loc_A579AA: Erase
  loc_A579AB: FLdPr Me
  loc_A579AE: MemLdRfVar from_stack_1.global_56
  loc_A579B1: NewIfNullAd
  loc_A579B4: FStAd var_A0 
  loc_A579B8: FLdRfVar var_A0
  loc_A579BB: CVarRef
  loc_A579C0: ILdRf Me
  loc_A579C3: CastAd
  loc_A579C6: FStAdFunc var_88
  loc_A579C9: FLdRfVar var_88
  loc_A579CC: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A579D1: ILdRf var_A0
  loc_A579D4: CastAd
  loc_A579D7: FLdPr Me
  loc_A579DA: MemStAdFunc
  loc_A579DE: FFreeAd var_88 = ""
  loc_A579E5: ILdRf Me
  loc_A579E8: CastAd
  loc_A579EB: FStAdFunc var_88
  loc_A579EE: FLdRfVar var_88
  loc_A579F1: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A579F6: FFree1Ad var_88
  loc_A579F9: FLdPr Me
  loc_A579FC: MemLdRfVar from_stack_1.global_56
  loc_A579FF: NewIfNullPr clsordencompra
  loc_A57A02: Call clsordencompra.Requery()
  loc_A57A07: LitI2_Byte 0
  loc_A57A09: LitVarI2 var_9C, 0
  loc_A57A0E: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A57A13: FFree1Var var_9C = ""
  loc_A57A16: FLdPr Me
  loc_A57A19: MemLdStr global_84
  loc_A57A1C: LitStr vbNullString
  loc_A57A1F: NeStr
  loc_A57A21: BranchF loc_A57A79
  loc_A57A24: LitStr "Filtro: "
  loc_A57A27: FLdPr Me
  loc_A57A2A: MemLdStr global_84
  loc_A57A2D: ConcatStr
  loc_A57A2E: FStStrNoPop var_B4
  loc_A57A31: LitStr " - Registro/s: "
  loc_A57A34: ConcatStr
  loc_A57A35: FStStrNoPop var_BC
  loc_A57A38: FLdRfVar var_B8
  loc_A57A3B: FLdPr Me
  loc_A57A3E: MemLdRfVar from_stack_1.global_56
  loc_A57A41: NewIfNullPr clsordencompra
  loc_A57A44: from_stack_1 = clsordencompra.RecordCount
  loc_A57A49: ILdRf var_B8
  loc_A57A4C: CStrI4
  loc_A57A4E: FStStrNoPop var_C0
  loc_A57A51: ConcatStr
  loc_A57A52: CVarStr var_9C
  loc_A57A55: PopAdLdVar
  loc_A57A56: FLdPr Me
  loc_A57A59: VCallAd Control_ID_dgdABMS
  loc_A57A5C: FStAdFunc var_88
  loc_A57A5F: FLdPr var_88
  loc_A57A62: LateIdSt
  loc_A57A67: FFreeStr var_B4 = "": var_BC = ""
  loc_A57A70: FFree1Ad var_88
  loc_A57A73: FFree1Var var_9C = ""
  loc_A57A76: Branch loc_A57AB4
  loc_A57A79: LitStr "Registro/s: "
  loc_A57A7C: FLdRfVar var_B8
  loc_A57A7F: FLdPr Me
  loc_A57A82: MemLdRfVar from_stack_1.global_56
  loc_A57A85: NewIfNullPr clsordencompra
  loc_A57A88: from_stack_1 = clsordencompra.RecordCount
  loc_A57A8D: ILdRf var_B8
  loc_A57A90: CStrI4
  loc_A57A92: FStStrNoPop var_B4
  loc_A57A95: ConcatStr
  loc_A57A96: CVarStr var_9C
  loc_A57A99: PopAdLdVar
  loc_A57A9A: FLdPr Me
  loc_A57A9D: VCallAd Control_ID_dgdABMS
  loc_A57AA0: FStAdFunc var_88
  loc_A57AA3: FLdPr var_88
  loc_A57AA6: LateIdSt
  loc_A57AAB: FFree1Str var_B4
  loc_A57AAE: FFree1Ad var_88
  loc_A57AB1: FFree1Var var_9C = ""
  loc_A57AB4: LitI4 0
  loc_A57AB9: CI2I4
  loc_A57ABA: FLdPr Me
  loc_A57ABD: VCallAd Control_ID_chkSoloAjustes
  loc_A57AC0: FStAdFunc var_88
  loc_A57AC3: FLdPr var_88
  loc_A57AC6: Me.Value = from_stack_1
  loc_A57ACB: FFree1Ad var_88
  loc_A57ACE: Branch loc_A57C29
  loc_A57AD1: LitI2_Byte 0
  loc_A57AD3: CUI1I2
  loc_A57AD5: FLdPr Me
  loc_A57AD8: MemStUI1
  loc_A57ADC: ILdRf Me
  loc_A57ADF: CastAd
  loc_A57AE2: FStAdFunc var_88
  loc_A57AE5: FLdRfVar var_88
  loc_A57AE8: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A57AED: FFree1Ad var_88
  loc_A57AF0: LitI4 0
  loc_A57AF5: LitI4 0
  loc_A57AFA: FLdRfVar var_8C
  loc_A57AFD: Redim
  loc_A57B07: FLdPr Me
  loc_A57B0A: VCallAd Control_ID_dgdABMS
  loc_A57B0D: CVarAd
  loc_A57B11: ParmAry1St
  loc_A57B17: FLdRfVar var_8C
  loc_A57B1A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A57B1F: FLdRfVar var_8C
  loc_A57B22: Erase
  loc_A57B23: FLdPr Me
  loc_A57B26: MemLdRfVar from_stack_1.global_56
  loc_A57B29: NewIfNullAd
  loc_A57B2C: FStAd var_A0 
  loc_A57B30: FLdRfVar var_A0
  loc_A57B33: CVarRef
  loc_A57B38: ILdRf Me
  loc_A57B3B: CastAd
  loc_A57B3E: FStAdFunc var_88
  loc_A57B41: FLdRfVar var_88
  loc_A57B44: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A57B49: ILdRf var_A0
  loc_A57B4C: CastAd
  loc_A57B4F: FLdPr Me
  loc_A57B52: MemStAdFunc
  loc_A57B56: FFreeAd var_88 = ""
  loc_A57B5D: ILdRf Me
  loc_A57B60: CastAd
  loc_A57B63: FStAdFunc var_88
  loc_A57B66: FLdRfVar var_88
  loc_A57B69: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A57B6E: FFree1Ad var_88
  loc_A57B71: FLdPr Me
  loc_A57B74: MemLdStr global_84
  loc_A57B77: LitStr vbNullString
  loc_A57B7A: NeStr
  loc_A57B7C: BranchF loc_A57BD4
  loc_A57B7F: LitStr "Filtro: "
  loc_A57B82: FLdPr Me
  loc_A57B85: MemLdStr global_84
  loc_A57B88: ConcatStr
  loc_A57B89: FStStrNoPop var_B4
  loc_A57B8C: LitStr " - Registro/s: "
  loc_A57B8F: ConcatStr
  loc_A57B90: FStStrNoPop var_BC
  loc_A57B93: FLdRfVar var_B8
  loc_A57B96: FLdPr Me
  loc_A57B99: MemLdRfVar from_stack_1.global_56
  loc_A57B9C: NewIfNullPr clsordencompra
  loc_A57B9F: from_stack_1 = clsordencompra.RecordCount
  loc_A57BA4: ILdRf var_B8
  loc_A57BA7: CStrI4
  loc_A57BA9: FStStrNoPop var_C0
  loc_A57BAC: ConcatStr
  loc_A57BAD: CVarStr var_9C
  loc_A57BB0: PopAdLdVar
  loc_A57BB1: FLdPr Me
  loc_A57BB4: VCallAd Control_ID_dgdABMS
  loc_A57BB7: FStAdFunc var_88
  loc_A57BBA: FLdPr var_88
  loc_A57BBD: LateIdSt
  loc_A57BC2: FFreeStr var_B4 = "": var_BC = ""
  loc_A57BCB: FFree1Ad var_88
  loc_A57BCE: FFree1Var var_9C = ""
  loc_A57BD1: Branch loc_A57C0F
  loc_A57BD4: LitStr "Registro/s: "
  loc_A57BD7: FLdRfVar var_B8
  loc_A57BDA: FLdPr Me
  loc_A57BDD: MemLdRfVar from_stack_1.global_56
  loc_A57BE0: NewIfNullPr clsordencompra
  loc_A57BE3: from_stack_1 = clsordencompra.RecordCount
  loc_A57BE8: ILdRf var_B8
  loc_A57BEB: CStrI4
  loc_A57BED: FStStrNoPop var_B4
  loc_A57BF0: ConcatStr
  loc_A57BF1: CVarStr var_9C
  loc_A57BF4: PopAdLdVar
  loc_A57BF5: FLdPr Me
  loc_A57BF8: VCallAd Control_ID_dgdABMS
  loc_A57BFB: FStAdFunc var_88
  loc_A57BFE: FLdPr var_88
  loc_A57C01: LateIdSt
  loc_A57C06: FFree1Str var_B4
  loc_A57C09: FFree1Ad var_88
  loc_A57C0C: FFree1Var var_9C = ""
  loc_A57C0F: LitI4 0
  loc_A57C14: CI2I4
  loc_A57C15: FLdPr Me
  loc_A57C18: VCallAd Control_ID_chkSoloAjustes
  loc_A57C1B: FStAdFunc var_88
  loc_A57C1E: FLdPr var_88
  loc_A57C21: Me.Value = from_stack_1
  loc_A57C26: FFree1Ad var_88
  loc_A57C29: ExitProcHresult
  loc_A57C2A: NewIfNullPr UserControl
End Sub

Private Sub Form_Load() 'A677EC
  'Data Table: 491BF8
  loc_A674B8: LitStr "U. Ejec."
  loc_A674BB: FLdRfVar var_8C
  loc_A674BE: FLdPr Me
  loc_A674C1: VCallAd Control_ID_Label1
  loc_A674C4: FStAdFunc var_88
  loc_A674C7: FLdPr var_88
  loc_A674CA:  = Me.Caption
  loc_A674CF: ILdRf var_8C
  loc_A674D2: ConcatStr
  loc_A674D3: FStStrNoPop var_90
  loc_A674D6: FLdPr Me
  loc_A674D9: VCallAd Control_ID_Label1
  loc_A674DC: FStAdFunc var_94
  loc_A674DF: FLdPr var_94
  loc_A674E2: Me.Caption = from_stack_1
  loc_A674E7: FFreeStr var_8C = ""
  loc_A674EE: FFreeAd var_88 = ""
  loc_A674F5: ImpAdLdI2 MemVar_C3D064
  loc_A674F8: LitI2 2025
  loc_A674FB: LeI2
  loc_A674FC: BranchF loc_A6751C
  loc_A674FF: LitVarI4
  loc_A67507: PopAdLdVar
  loc_A67508: FLdPr Me
  loc_A6750B: VCallAd Control_ID_dgdABMS
  loc_A6750E: FStAdFunc var_88
  loc_A67511: FLdPr var_88
  loc_A67514: LateIdSt
  loc_A67519: FFree1Ad var_88
  loc_A6751C: LitI2_Byte 0
  loc_A6751E: CR8I2
  loc_A6751F: PopFPR4
  loc_A67520: FLdPr Me
  loc_A67523: Me.Left = from_stack_1s
  loc_A67528: LitI2_Byte 0
  loc_A6752A: CR8I2
  loc_A6752B: PopFPR4
  loc_A6752C: FLdPr Me
  loc_A6752F: Me.Top = from_stack_1s
  loc_A67534: LitStr vbNullString
  loc_A67537: FLdPr Me
  loc_A6753A: MemStStrCopy
  loc_A6753E: LitStr "SELECT ordencompra.*, DetaTico, Sum(itemcompra.CantItco*itemcompra.ImunItco) TotalItemOrden, DetaProv"
  loc_A67541: LitStr " FROM ordencompra "
  loc_A67544: ConcatStr
  loc_A67545: FStStrNoPop var_8C
  loc_A67548: LitStr " INNER JOIN itemcompra ON itemcompra.PeriInfo = ordencompra.PeriInfo AND itemcompra.CodiOrco = ordencompra.CodiOrco"
  loc_A6754B: ConcatStr
  loc_A6754C: FStStrNoPop var_90
  loc_A6754F: LitStr " INNER JOIN notapedido ON notapedido.PeriInfo = ordencompra.PeriInfo AND notapedido.CodiNope = ordencompra.CodiNope "
  loc_A67552: ConcatStr
  loc_A67553: FStStrNoPop var_B8
  loc_A67556: LitStr " INNER JOIN tipocompra ON tipocompra.CodiTico = ordencompra.CodiTico"
  loc_A67559: ConcatStr
  loc_A6755A: FStStrNoPop var_BC
  loc_A6755D: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = ordencompra.CucuPers"
  loc_A67560: ConcatStr
  loc_A67561: FStStrNoPop var_C0
  loc_A67564: LitStr " WHERE ordencompra.PeriInfo = "
  loc_A67567: ConcatStr
  loc_A67568: FStStrNoPop var_C4
  loc_A6756B: ImpAdLdI2 MemVar_C3D064
  loc_A6756E: CStrUI1
  loc_A67570: FStStrNoPop var_C8
  loc_A67573: ConcatStr
  loc_A67574: FStStrNoPop var_CC
  loc_A67577: LitStr " AND ordencompra.FeanOrco IS NULL AND IdImpu = 0 "
  loc_A6757A: ConcatStr
  loc_A6757B: FStStrNoPop var_D0
  loc_A6757E: LitStr " GROUP BY ordencompra.PeriInfo, ordencompra.CodiOrco"
  loc_A67581: ConcatStr
  loc_A67582: FStStrNoPop var_D4
  loc_A67585: FLdPr Me
  loc_A67588: MemLdRfVar from_stack_1.global_56
  loc_A6758B: NewIfNullPr clsordencompra
  loc_A6758E: Call clsordencompra.RedefineRS(from_stack_1v)
  loc_A67593: FFreeStr var_8C = "": var_90 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A675AA: LitVarI2 var_A4, 0
  loc_A675AF: PopAdLdVar
  loc_A675B0: LitStr "Orden de Compra"
  loc_A675B3: FLdPr Me
  loc_A675B6: VCallAd Control_ID_FiltroCbo
  loc_A675B9: FStAdFunc var_88
  loc_A675BC: FLdPr var_88
  loc_A675BF: Me.AddItem from_stack_1, from_stack_2
  loc_A675C4: FFree1Ad var_88
  loc_A675C7: LitVarI2 var_A4, 1
  loc_A675CC: PopAdLdVar
  loc_A675CD: LitStr "Nota de Pedido"
  loc_A675D0: FLdPr Me
  loc_A675D3: VCallAd Control_ID_FiltroCbo
  loc_A675D6: FStAdFunc var_88
  loc_A675D9: FLdPr var_88
  loc_A675DC: Me.AddItem from_stack_1, from_stack_2
  loc_A675E1: FFree1Ad var_88
  loc_A675E4: LitI2_Byte 0
  loc_A675E6: FLdPr Me
  loc_A675E9: VCallAd Control_ID_FiltroCbo
  loc_A675EC: FStAdFunc var_88
  loc_A675EF: FLdPr var_88
  loc_A675F2: Me.ListIndex = from_stack_1
  loc_A675F7: FFree1Ad var_88
  loc_A675FA: Call cmdCancelar_Click()
  loc_A675FF: LitI4 0
  loc_A67604: LitI4 1
  loc_A67609: FLdRfVar var_D8
  loc_A6760C: Redim
  loc_A67616: FLdPr Me
  loc_A67619: MemLdRfVar from_stack_1.global_56
  loc_A6761C: NewIfNullAd
  loc_A6761F: FStAd var_88 
  loc_A67623: FLdRfVar var_88
  loc_A67626: CVarRef
  loc_A6762B: ParmAry1St
  loc_A67631: FLdPr Me
  loc_A67634: VCallAd Control_ID_dgdABMS
  loc_A67637: CVarAd
  loc_A6763B: ParmAry1St
  loc_A67641: FLdRfVar var_D8
  loc_A67644: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A67649: ILdRf var_88
  loc_A6764C: CastAd
  loc_A6764F: FLdPr Me
  loc_A67652: MemStAdFunc
  loc_A67656: FLdRfVar var_D8
  loc_A67659: Erase
  loc_A6765A: FFree1Ad var_88
  loc_A6765D: FLdPr Me
  loc_A67660: VCallAd Control_ID_FlexItemCompra
  loc_A67663: FStAdFunc var_EC
  loc_A67666: LitVarI4
  loc_A6766E: PopAdLdVar
  loc_A6766F: LitVarI4
  loc_A67677: PopAdLdVar
  loc_A67678: FLdPr var_EC
  loc_A6767B: LateIdCallSt
  loc_A67683: LitVarI4
  loc_A6768B: PopAdLdVar
  loc_A6768C: LitVarI4
  loc_A67694: PopAdLdVar
  loc_A67695: FLdPr var_EC
  loc_A67698: LateIdCallSt
  loc_A676A0: LitVarI4
  loc_A676A8: PopAdLdVar
  loc_A676A9: LitVarI4
  loc_A676B1: PopAdLdVar
  loc_A676B2: FLdPr var_EC
  loc_A676B5: LateIdCallSt
  loc_A676BD: LitVarI4
  loc_A676C5: PopAdLdVar
  loc_A676C6: LitVarI4
  loc_A676CE: PopAdLdVar
  loc_A676CF: FLdPr var_EC
  loc_A676D2: LateIdCallSt
  loc_A676DA: LitVarI4
  loc_A676E2: PopAdLdVar
  loc_A676E3: LitVarI4
  loc_A676EB: PopAdLdVar
  loc_A676EC: FLdPr var_EC
  loc_A676EF: LateIdCallSt
  loc_A676F7: LitVarI4
  loc_A676FF: PopAdLdVar
  loc_A67700: LitVarI4
  loc_A67708: PopAdLdVar
  loc_A67709: FLdPr var_EC
  loc_A6770C: LateIdCallSt
  loc_A67714: LitVarI4
  loc_A6771C: PopAdLdVar
  loc_A6771D: LitVarI4
  loc_A67725: PopAdLdVar
  loc_A67726: FLdPr var_EC
  loc_A67729: LateIdCallSt
  loc_A67731: LitVarI4
  loc_A67739: PopAdLdVar
  loc_A6773A: LitVarI4
  loc_A67742: PopAdLdVar
  loc_A67743: FLdPr var_EC
  loc_A67746: LateIdCallSt
  loc_A6774E: LitVarI4
  loc_A67756: PopAdLdVar
  loc_A67757: LitVarI4
  loc_A6775F: PopAdLdVar
  loc_A67760: FLdPr var_EC
  loc_A67763: LateIdCallSt
  loc_A6776B: LitVarI4
  loc_A67773: PopAdLdVar
  loc_A67774: LitVarI4
  loc_A6777C: PopAdLdVar
  loc_A6777D: FLdPr var_EC
  loc_A67780: LateIdCallSt
  loc_A67788: LitVarI4
  loc_A67790: PopAdLdVar
  loc_A67791: LitVarI4
  loc_A67799: PopAdLdVar
  loc_A6779A: FLdPr var_EC
  loc_A6779D: LateIdCallSt
  loc_A677A5: LitVarI4
  loc_A677AD: PopAdLdVar
  loc_A677AE: LitVarI4
  loc_A677B6: PopAdLdVar
  loc_A677B7: FLdPr var_EC
  loc_A677BA: LateIdCallSt
  loc_A677C2: LitVarI4
  loc_A677CA: PopAdLdVar
  loc_A677CB: LitVarI4
  loc_A677D3: PopAdLdVar
  loc_A677D4: FLdPr var_EC
  loc_A677D7: LateIdCallSt
  loc_A677DF: LitNothing
  loc_A677E1: FStAd var_EC 
  loc_A677E5: Call Proc_110_18_A2E61C()
  loc_A677EA: ExitProcHresult
End Sub

Private Sub Form_Activate() '9983DC
  'Data Table: 491BF8
  loc_998380: FLdRfVar var_C2
  loc_998383: FLdRfVar var_C0
  loc_998386: LitVarI2 var_B8, 1
  loc_99838B: FLdPr Me
  loc_99838E: VCallAd Control_ID_tlbABMS
  loc_998391: FStAdFunc var_88
  loc_998394: FLdPr var_88
  loc_998397: LateIdLdVar var_98 DispID_3 0
  loc_99839E: CastAdVar Me
  loc_9983A2: FStAdFunc var_BC
  loc_9983A5: FLdPr var_BC
  loc_9983A8:  = Me.Buttons.ControlDefault
  loc_9983AD: FLdPr var_C0
  loc_9983B0:  = Me.Enabled
  loc_9983B5: FLdI2 var_C2
  loc_9983B8: FFreeAd var_88 = "": var_BC = ""
  loc_9983C1: FFreeVar var_98 = ""
  loc_9983C8: BranchF loc_9983D9
  loc_9983CB: FLdPr Me
  loc_9983CE: MemLdRfVar from_stack_1.global_56
  loc_9983D1: NewIfNullPr clsordencompra
  loc_9983D4: Call clsordencompra.Requery()
  loc_9983D9: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949FFC
  'Data Table: 491BF8
  loc_949FE8: ILdI2 KeyAscii
  loc_949FEB: CI4UI1
  loc_949FEC: LitI4 &HD
  loc_949FF1: EqI4
  loc_949FF2: BranchF loc_949FFA
  loc_949FF5: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949FFA: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95CE4C
  'Data Table: 491BF8
  loc_95CE34: ILdI2 KeyCode
  loc_95CE37: ILdRf Me
  loc_95CE3A: CastAd
  loc_95CE3D: FStAdFunc var_88
  loc_95CE40: FLdRfVar var_88
  loc_95CE43: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_95CE48: FFree1Ad var_88
  loc_95CE4B: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94F968
  'Data Table: 491BF8
  loc_94F954: FLdPr Me
  loc_94F957: VCallAd Control_ID_FiltroMsk
  loc_94F95A: CVarAd
  loc_94F95E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F963: FFree1Var var_94 = ""
  loc_94F966: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4CF00
  'Data Table: 491BF8
  loc_A4CC68: ILdRf Me
  loc_A4CC6B: CastAd
  loc_A4CC6E: FStAdFunc var_88
  loc_A4CC71: FLdRfVar var_88
  loc_A4CC74: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4CC79: FFree1Ad var_88
  loc_A4CC7C: FLdPr Me
  loc_A4CC7F: VCallAd Control_ID_FiltroMsk
  loc_A4CC82: FStAdFunc var_88
  loc_A4CC85: FLdPr var_88
  loc_A4CC88: LateIdLdVar var_98 DispID_22 0
  loc_A4CC8F: CStrVarTmp
  loc_A4CC90: FStStrNoPop var_9C
  loc_A4CC93: ImpAdCallI2 Trim$()
  loc_A4CC98: FStStrNoPop var_A0
  loc_A4CC9B: LitStr vbNullString
  loc_A4CC9E: NeStr
  loc_A4CCA0: FFreeStr var_9C = ""
  loc_A4CCA7: FFree1Ad var_88
  loc_A4CCAA: FFree1Var var_98 = ""
  loc_A4CCAD: BranchF loc_A4CDCE
  loc_A4CCB0: FLdRfVar var_A2
  loc_A4CCB3: FLdPr Me
  loc_A4CCB6: VCallAd Control_ID_FiltroCbo
  loc_A4CCB9: FStAdFunc var_88
  loc_A4CCBC: FLdPr var_88
  loc_A4CCBF:  = Me.ListIndex
  loc_A4CCC4: FLdI2 var_A2
  loc_A4CCC7: LitI2_Byte 0
  loc_A4CCC9: EqI2
  loc_A4CCCA: FFree1Ad var_88
  loc_A4CCCD: BranchF loc_A4CD3F
  loc_A4CCD0: LitStr "CodiOrco = "
  loc_A4CCD3: FLdPr Me
  loc_A4CCD6: VCallAd Control_ID_FiltroMsk
  loc_A4CCD9: FStAdFunc var_88
  loc_A4CCDC: FLdPr var_88
  loc_A4CCDF: LateIdLdVar var_98 DispID_22 0
  loc_A4CCE6: CStrVarTmp
  loc_A4CCE7: FStStrNoPop var_9C
  loc_A4CCEA: ConcatStr
  loc_A4CCEB: PopTmpLdAdStr
  loc_A4CCEF: FLdPr Me
  loc_A4CCF2: MemLdRfVar from_stack_1.global_56
  loc_A4CCF5: NewIfNullPr clsordencompra
  loc_A4CCF8: Call clsordencompra.Filter(from_stack_1v)
  loc_A4CCFD: FFreeStr var_9C = ""
  loc_A4CD04: FFree1Ad var_88
  loc_A4CD07: FFree1Var var_98 = ""
  loc_A4CD0A: LitStr "Orden de Compra sea igual a: "
  loc_A4CD0D: FLdPr Me
  loc_A4CD10: VCallAd Control_ID_FiltroMsk
  loc_A4CD13: FStAdFunc var_88
  loc_A4CD16: FLdPr var_88
  loc_A4CD19: LateIdLdVar var_98 DispID_22 0
  loc_A4CD20: CStrVarTmp
  loc_A4CD21: FStStrNoPop var_9C
  loc_A4CD24: ConcatStr
  loc_A4CD25: FStStrNoPop var_A0
  loc_A4CD28: FLdPr Me
  loc_A4CD2B: MemStStrCopy
  loc_A4CD2F: FFreeStr var_9C = ""
  loc_A4CD36: FFree1Ad var_88
  loc_A4CD39: FFree1Var var_98 = ""
  loc_A4CD3C: Branch loc_A4CDCB
  loc_A4CD3F: FLdRfVar var_A2
  loc_A4CD42: FLdPr Me
  loc_A4CD45: VCallAd Control_ID_FiltroCbo
  loc_A4CD48: FStAdFunc var_88
  loc_A4CD4B: FLdPr var_88
  loc_A4CD4E:  = Me.ListIndex
  loc_A4CD53: FLdI2 var_A2
  loc_A4CD56: LitI2_Byte 1
  loc_A4CD58: EqI2
  loc_A4CD59: FFree1Ad var_88
  loc_A4CD5C: BranchF loc_A4CDCB
  loc_A4CD5F: LitStr "CodiNope = "
  loc_A4CD62: FLdPr Me
  loc_A4CD65: VCallAd Control_ID_FiltroMsk
  loc_A4CD68: FStAdFunc var_88
  loc_A4CD6B: FLdPr var_88
  loc_A4CD6E: LateIdLdVar var_98 DispID_22 0
  loc_A4CD75: CStrVarTmp
  loc_A4CD76: FStStrNoPop var_9C
  loc_A4CD79: ConcatStr
  loc_A4CD7A: PopTmpLdAdStr
  loc_A4CD7E: FLdPr Me
  loc_A4CD81: MemLdRfVar from_stack_1.global_56
  loc_A4CD84: NewIfNullPr clsordencompra
  loc_A4CD87: Call clsordencompra.Filter(from_stack_1v)
  loc_A4CD8C: FFreeStr var_9C = ""
  loc_A4CD93: FFree1Ad var_88
  loc_A4CD96: FFree1Var var_98 = ""
  loc_A4CD99: LitStr "Nota de Pedido sea igual a: "
  loc_A4CD9C: FLdPr Me
  loc_A4CD9F: VCallAd Control_ID_FiltroMsk
  loc_A4CDA2: FStAdFunc var_88
  loc_A4CDA5: FLdPr var_88
  loc_A4CDA8: LateIdLdVar var_98 DispID_22 0
  loc_A4CDAF: CStrVarTmp
  loc_A4CDB0: FStStrNoPop var_9C
  loc_A4CDB3: ConcatStr
  loc_A4CDB4: FStStrNoPop var_A0
  loc_A4CDB7: FLdPr Me
  loc_A4CDBA: MemStStrCopy
  loc_A4CDBE: FFreeStr var_9C = ""
  loc_A4CDC5: FFree1Ad var_88
  loc_A4CDC8: FFree1Var var_98 = ""
  loc_A4CDCB: Branch loc_A4CDF2
  loc_A4CDCE: LitStr vbNullString
  loc_A4CDD1: FStStrCopy var_9C
  loc_A4CDD4: FLdRfVar var_9C
  loc_A4CDD7: FLdPr Me
  loc_A4CDDA: MemLdRfVar from_stack_1.global_56
  loc_A4CDDD: NewIfNullPr clsordencompra
  loc_A4CDE0: Call clsordencompra.Filter(from_stack_1v)
  loc_A4CDE5: FFree1Str var_9C
  loc_A4CDE8: LitStr vbNullString
  loc_A4CDEB: FLdPr Me
  loc_A4CDEE: MemStStrCopy
  loc_A4CDF2: FLdRfVar var_A8
  loc_A4CDF5: FLdPr Me
  loc_A4CDF8: MemLdRfVar from_stack_1.global_56
  loc_A4CDFB: NewIfNullPr clsordencompra
  loc_A4CDFE: from_stack_1 = clsordencompra.RecordCount
  loc_A4CE03: ILdRf var_A8
  loc_A4CE06: LitI4 0
  loc_A4CE0B: GtI4
  loc_A4CE0C: BranchF loc_A4CEB9
  loc_A4CE0F: FLdPr Me
  loc_A4CE12: MemLdRfVar from_stack_1.global_56
  loc_A4CE15: NewIfNullAd
  loc_A4CE18: FStAd var_AC 
  loc_A4CE1C: FLdRfVar var_AC
  loc_A4CE1F: CVarRef
  loc_A4CE24: ILdRf Me
  loc_A4CE27: CastAd
  loc_A4CE2A: FStAdFunc var_88
  loc_A4CE2D: FLdRfVar var_88
  loc_A4CE30: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4CE35: ILdRf var_AC
  loc_A4CE38: CastAd
  loc_A4CE3B: FLdPr Me
  loc_A4CE3E: MemStAdFunc
  loc_A4CE42: FFreeAd var_88 = ""
  loc_A4CE49: LitI4 0
  loc_A4CE4E: LitI4 1
  loc_A4CE53: FLdRfVar var_C0
  loc_A4CE56: Redim
  loc_A4CE60: FLdPr Me
  loc_A4CE63: MemLdRfVar from_stack_1.global_56
  loc_A4CE66: NewIfNullAd
  loc_A4CE69: FStAd var_88 
  loc_A4CE6D: FLdRfVar var_88
  loc_A4CE70: CVarRef
  loc_A4CE75: ParmAry1St
  loc_A4CE7B: FLdPr Me
  loc_A4CE7E: VCallAd Control_ID_dgdABMS
  loc_A4CE81: CVarAd
  loc_A4CE85: ParmAry1St
  loc_A4CE8B: FLdRfVar var_C0
  loc_A4CE8E: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4CE93: ILdRf var_88
  loc_A4CE96: CastAd
  loc_A4CE99: FLdPr Me
  loc_A4CE9C: MemStAdFunc
  loc_A4CEA0: FLdRfVar var_C0
  loc_A4CEA3: Erase
  loc_A4CEA4: FFree1Ad var_88
  loc_A4CEA7: LitI2_Byte 0
  loc_A4CEA9: LitVarI2 var_98, 0
  loc_A4CEAE: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A4CEB3: FFree1Var var_98 = ""
  loc_A4CEB6: Branch loc_A4CECD
  loc_A4CEB9: ILdRf Me
  loc_A4CEBC: CastAd
  loc_A4CEBF: FStAdFunc var_88
  loc_A4CEC2: FLdRfVar var_88
  loc_A4CEC5: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A4CECA: FFree1Ad var_88
  loc_A4CECD: FLdPr Me
  loc_A4CED0: VCallAd Control_ID_dgdABMS
  loc_A4CED3: FStAdFunc var_AC
  loc_A4CED6: LitI4 0
  loc_A4CEDB: FStStrCopy var_9C
  loc_A4CEDE: FLdRfVar var_9C
  loc_A4CEE1: FLdPr Me
  loc_A4CEE4: MemLdStr global_84
  loc_A4CEE7: FLdZeroAd var_AC
  loc_A4CEEA: FStAdFunc var_88
  loc_A4CEED: FLdRfVar var_88
  loc_A4CEF0: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4CEF5: FFree1Str var_9C
  loc_A4CEF8: FFreeAd var_88 = ""
  loc_A4CEFF: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '998C04
  'Data Table: 491BF8
  loc_998BA0: ILdI2 KeyAscii
  loc_998BA3: LitI2_Byte &H27
  loc_998BA5: EqI2
  loc_998BA6: BranchF loc_998BAE
  loc_998BA9: LitI2_Byte 0
  loc_998BAB: IStI2 KeyAscii
  loc_998BAE: FLdRfVar var_88
  loc_998BB1: FLdPr Me
  loc_998BB4: MemLdRfVar from_stack_1.global_56
  loc_998BB7: NewIfNullPr clsordencompra
  loc_998BBA: from_stack_1 = clsordencompra.RecordCount
  loc_998BBF: ILdRf var_88
  loc_998BC2: LitI4 0
  loc_998BC7: EqI4
  loc_998BC8: ILdI2 KeyAscii
  loc_998BCB: CI4UI1
  loc_998BCC: LitI4 8
  loc_998BD1: NeI4
  loc_998BD2: AndI4
  loc_998BD3: FLdPr Me
  loc_998BD6: VCallAd Control_ID_FiltroMsk
  loc_998BD9: FStAdFunc var_8C
  loc_998BDC: FLdPr var_8C
  loc_998BDF: LateIdLdVar var_9C DispID_16 0
  loc_998BE6: CStrVarTmp
  loc_998BE7: FStStrNoPop var_A0
  loc_998BEA: LitStr vbNullString
  loc_998BED: EqStr
  loc_998BEF: AndI4
  loc_998BF0: FFree1Str var_A0
  loc_998BF3: FFree1Ad var_8C
  loc_998BF6: FFree1Var var_9C = ""
  loc_998BF9: BranchF loc_998C01
  loc_998BFC: LitI2_Byte 0
  loc_998BFE: IStI2 KeyAscii
  loc_998C01: ExitProcHresult
  loc_998C02: FStFPR8 var_8000
End Sub

Private Sub FechImpuMsk_UnknownEvent_0 '94F9F8
  'Data Table: 491BF8
  loc_94F9E4: FLdPr Me
  loc_94F9E7: VCallAd Control_ID_FechImpuMsk
  loc_94F9EA: CVarAd
  loc_94F9EE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F9F3: FFree1Var var_94 = ""
  loc_94F9F6: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_8 '9DDFF0
  'Data Table: 491BF8
  loc_9DDEF8: FLdRfVar var_8A
  loc_9DDEFB: FLdPr Me
  loc_9DDEFE: VCallAd Control_ID_cmdCancelar
  loc_9DDF01: FStAdFunc var_88
  loc_9DDF04: FLdPr var_88
  loc_9DDF07:  = Me.Value
  loc_9DDF0C: FLdI2 var_8A
  loc_9DDF0F: NotI4
  loc_9DDF10: FLdPr Me
  loc_9DDF13: VCallAd Control_ID_FechImpuMsk
  loc_9DDF16: FStAdFunc var_90
  loc_9DDF19: FLdPr var_90
  loc_9DDF1C: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DDF23: CBoolVar
  loc_9DDF25: AndI4
  loc_9DDF26: FFreeAd var_88 = ""
  loc_9DDF2D: FFree1Var var_A0 = ""
  loc_9DDF30: BranchF loc_9DDFEC
  loc_9DDF33: FLdPr Me
  loc_9DDF36: VCallAd Control_ID_FechImpuMsk
  loc_9DDF39: FStAdFunc var_88
  loc_9DDF3C: FLdPr var_88
  loc_9DDF3F: LateIdLdVar var_A0 DispID_15 0
  loc_9DDF46: PopAd
  loc_9DDF48: FLdPr Me
  loc_9DDF4B: VCallAd Control_ID_FechImpuMsk
  loc_9DDF4E: FStAdFunc var_90
  loc_9DDF51: FLdPr var_90
  loc_9DDF54: LateIdLdVar var_B0 DispID_11 -32767
  loc_9DDF5B: PopAd
  loc_9DDF5D: FLdPr Me
  loc_9DDF60: VCallAd Control_ID_FechImpuMsk
  loc_9DDF63: FStAdFunc var_C4
  loc_9DDF66: LitI2_Byte &HFF
  loc_9DDF68: PopTmpLdAd2 var_8A
  loc_9DDF6B: FLdZeroAd var_C4
  loc_9DDF6E: FStAdFunc var_BC
  loc_9DDF71: FLdRfVar var_BC
  loc_9DDF74: FLdRfVar var_B0
  loc_9DDF77: CStrVarTmp
  loc_9DDF78: FStStrNoPop var_B8
  loc_9DDF7B: LitI2_Byte &HFF
  loc_9DDF7D: LitI2_Byte &HFF
  loc_9DDF7F: FLdRfVar var_A0
  loc_9DDF82: CStrVarTmp
  loc_9DDF83: FStStrNoPop var_B4
  loc_9DDF86: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DDF8B: FStStrNoPop var_C0
  loc_9DDF8E: FLdPr Me
  loc_9DDF91: MemStStrCopy
  loc_9DDF95: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DDF9E: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DDFA9: FFreeVar var_A0 = ""
  loc_9DDFB0: FLdPr Me
  loc_9DDFB3: VCallAd Control_ID_FechImpuMsk
  loc_9DDFB6: FStAdFunc var_C4
  loc_9DDFB9: LitNothing
  loc_9DDFBB: CastAd
  loc_9DDFBE: FStAdFunc var_BC
  loc_9DDFC1: FLdRfVar var_BC
  loc_9DDFC4: FLdZeroAd var_C4
  loc_9DDFC7: FStAdFuncNoPop
  loc_9DDFCA: CastAd
  loc_9DDFCD: FStAdFunc var_90
  loc_9DDFD0: FLdRfVar var_90
  loc_9DDFD3: FLdPr Me
  loc_9DDFD6: MemLdRfVar from_stack_1.global_68
  loc_9DDFD9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DDFDE: IStI2 KeyAscii
  loc_9DDFE1: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DDFEC: ExitProcHresult
  loc_9DDFED: FLdPr arg_0
End Sub

Private Sub FechImpuMsk_KeyPress(KeyAscii As Integer) '987C70
  'Data Table: 491BF8
  loc_987C2C: ILdI2 KeyAscii
  loc_987C2F: CI4UI1
  loc_987C30: LitI4 &H20
  loc_987C35: EqI4
  loc_987C36: BranchF loc_987C6C
  loc_987C39: LitVar_Missing var_A4
  loc_987C3C: PopAdLdVar
  loc_987C3D: LitVarI4
  loc_987C45: PopAdLdVar
  loc_987C46: ImpAdLdRf MemVar_C3D9A8
  loc_987C49: NewIfNullPr frmCalendario
  loc_987C4C: frmCalendario.Show from_stack_1, from_stack_2
  loc_987C51: ImpAdLdRf MemVar_C3D038
  loc_987C54: CDargRef
  loc_987C58: FLdPr Me
  loc_987C5B: VCallAd Control_ID_FechImpuMsk
  loc_987C5E: FStAdFunc var_A8
  loc_987C61: FLdPr var_A8
  loc_987C64: LateIdSt
  loc_987C69: FFree1Ad var_A8
  loc_987C6C: ExitProcHresult
End Sub

Private Sub FlexItemCompra_RowColChange() 'A5EEC4
  'Data Table: 491BF8
  loc_A5EBCC: FLdRfVar var_88
  loc_A5EBCF: FLdPr Me
  loc_A5EBD2: MemLdRfVar from_stack_1.global_60
  loc_A5EBD5: NewIfNullPr clsordencompra
  loc_A5EBD8: from_stack_1v = clsordencompra.RsFrmGet()
  loc_A5EBDD: ILdRf var_88
  loc_A5EBE0: LitNothing
  loc_A5EBE2: Is
  loc_A5EBE4: FFree1Ad var_88
  loc_A5EBE7: BranchF loc_A5EBED
  loc_A5EBEA: Branch loc_A5EEC2
  loc_A5EBED: LitStr "Datos de Imputación del Item: "
  loc_A5EBF0: FLdPr Me
  loc_A5EBF3: VCallAd Control_ID_FlexItemCompra
  loc_A5EBF6: FStAdFunc var_88
  loc_A5EBF9: FLdPr var_88
  loc_A5EBFC: LateIdLdVar var_98 DispID_10 0
  loc_A5EC03: CI4Var
  loc_A5EC05: CVarI4
  loc_A5EC09: PopAdLdVar
  loc_A5EC0A: LitVarI4
  loc_A5EC12: PopAdLdVar
  loc_A5EC13: FLdPr Me
  loc_A5EC16: VCallAd Control_ID_FlexItemCompra
  loc_A5EC19: FStAdFunc var_DC
  loc_A5EC1C: FLdPr var_DC
  loc_A5EC1F: LateIdCallLdVar
  loc_A5EC29: CStrVarTmp
  loc_A5EC2A: FStStrNoPop var_F0
  loc_A5EC2D: ConcatStr
  loc_A5EC2E: FStStrNoPop var_F4
  loc_A5EC31: LitStr " "
  loc_A5EC34: ConcatStr
  loc_A5EC35: FStStrNoPop var_F8
  loc_A5EC38: FLdPr Me
  loc_A5EC3B: VCallAd Control_ID_Frame1
  loc_A5EC3E: FStAdFunc var_FC
  loc_A5EC41: FLdPr var_FC
  loc_A5EC44: Me.Caption = from_stack_1
  loc_A5EC49: FFreeStr var_F0 = "": var_F4 = ""
  loc_A5EC52: FFreeAd var_88 = "": var_DC = ""
  loc_A5EC5B: FFreeVar var_98 = ""
  loc_A5EC62: FLdRfVar var_100
  loc_A5EC65: FLdPr Me
  loc_A5EC68: MemLdRfVar from_stack_1.global_60
  loc_A5EC6B: NewIfNullPr clsordencompra
  loc_A5EC6E: from_stack_1 = clsordencompra.RecordCount
  loc_A5EC73: ILdRf var_100
  loc_A5EC76: LitI4 0
  loc_A5EC7B: GtI4
  loc_A5EC7C: BranchF loc_A5EEC2
  loc_A5EC7F: FLdPr Me
  loc_A5EC82: VCallAd Control_ID_FlexItemCompra
  loc_A5EC85: FStAdFunc var_88
  loc_A5EC88: FLdPr var_88
  loc_A5EC8B: LateIdLdVar var_98 DispID_10 0
  loc_A5EC92: CI4Var
  loc_A5EC94: CVarI4
  loc_A5EC98: PopAdLdVar
  loc_A5EC99: LitVarI4
  loc_A5ECA1: PopAdLdVar
  loc_A5ECA2: FLdPr Me
  loc_A5ECA5: VCallAd Control_ID_FlexItemCompra
  loc_A5ECA8: FStAdFunc var_DC
  loc_A5ECAB: FLdPr var_DC
  loc_A5ECAE: LateIdCallLdVar
  loc_A5ECB8: PopAd
  loc_A5ECBA: FLdPr Me
  loc_A5ECBD: MemLdRfVar from_stack_1.global_88
  loc_A5ECC0: NewIfNullRf
  loc_A5ECC4: FLdRfVar var_EC
  loc_A5ECC7: CStrVarTmp
  loc_A5ECC8: FStStrNoPop var_F0
  loc_A5ECCB: ImpAdLdI2 MemVar_C3D064
  loc_A5ECCE: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A5ECD3: FFree1Str var_F0
  loc_A5ECD6: FFreeAd var_88 = ""
  loc_A5ECDD: FFreeVar var_98 = ""
  loc_A5ECE4: FLdRfVar var_F0
  loc_A5ECE7: FLdPr Me
  loc_A5ECEA: MemLdRfVar from_stack_1.global_88
  loc_A5ECED: NewIfNullPr tblpartida
  loc_A5ECF0: from_stack_1v = tblpartida.DetaPartGet()
  loc_A5ECF5: ILdRf var_F0
  loc_A5ECF8: FLdPr Me
  loc_A5ECFB: VCallAd Control_ID_DetaPartLbl
  loc_A5ECFE: FStAdFunc var_88
  loc_A5ED01: FLdPr var_88
  loc_A5ED04: Me.Caption = from_stack_1
  loc_A5ED09: FFree1Str var_F0
  loc_A5ED0C: FFree1Ad var_88
  loc_A5ED0F: FLdPr Me
  loc_A5ED12: VCallAd Control_ID_FlexItemCompra
  loc_A5ED15: FStAdFunc var_88
  loc_A5ED18: FLdPr var_88
  loc_A5ED1B: LateIdLdVar var_98 DispID_10 0
  loc_A5ED22: CI4Var
  loc_A5ED24: CVarI4
  loc_A5ED28: PopAdLdVar
  loc_A5ED29: LitVarI4
  loc_A5ED31: PopAdLdVar
  loc_A5ED32: FLdPr Me
  loc_A5ED35: VCallAd Control_ID_FlexItemCompra
  loc_A5ED38: FStAdFunc var_DC
  loc_A5ED3B: FLdPr var_DC
  loc_A5ED3E: LateIdCallLdVar
  loc_A5ED48: PopAd
  loc_A5ED4A: FLdPr Me
  loc_A5ED4D: MemLdRfVar from_stack_1.global_92
  loc_A5ED50: NewIfNullRf
  loc_A5ED54: FLdRfVar var_EC
  loc_A5ED57: CStrVarTmp
  loc_A5ED58: FStStrNoPop var_F0
  loc_A5ED5B: ImpAdLdI2 MemVar_C3D064
  loc_A5ED5E: ImpAdCallFPR4 Proc_259_20_B23018(, , )
  loc_A5ED63: FFree1Str var_F0
  loc_A5ED66: FFreeAd var_88 = ""
  loc_A5ED6D: FFreeVar var_98 = ""
  loc_A5ED74: FLdRfVar var_F0
  loc_A5ED77: FLdPr Me
  loc_A5ED7A: MemLdRfVar from_stack_1.global_92
  loc_A5ED7D: NewIfNullPr tblorganigrama
  loc_A5ED80: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_A5ED85: ILdRf var_F0
  loc_A5ED88: FLdPr Me
  loc_A5ED8B: VCallAd Control_ID_DetaOrgaLbl
  loc_A5ED8E: FStAdFunc var_88
  loc_A5ED91: FLdPr var_88
  loc_A5ED94: Me.Caption = from_stack_1
  loc_A5ED99: FFree1Str var_F0
  loc_A5ED9C: FFree1Ad var_88
  loc_A5ED9F: FLdPr Me
  loc_A5EDA2: VCallAd Control_ID_FlexItemCompra
  loc_A5EDA5: FStAdFunc var_88
  loc_A5EDA8: FLdPr var_88
  loc_A5EDAB: LateIdLdVar var_98 DispID_10 0
  loc_A5EDB2: CI4Var
  loc_A5EDB4: CVarI4
  loc_A5EDB8: PopAdLdVar
  loc_A5EDB9: LitVarI4
  loc_A5EDC1: PopAdLdVar
  loc_A5EDC2: FLdPr Me
  loc_A5EDC5: VCallAd Control_ID_FlexItemCompra
  loc_A5EDC8: FStAdFunc var_DC
  loc_A5EDCB: FLdPr var_DC
  loc_A5EDCE: LateIdCallLdVar
  loc_A5EDD8: PopAd
  loc_A5EDDA: FLdPr Me
  loc_A5EDDD: MemLdRfVar from_stack_1.global_96
  loc_A5EDE0: NewIfNullRf
  loc_A5EDE4: FLdRfVar var_EC
  loc_A5EDE7: CStrVarTmp
  loc_A5EDE8: FStStrNoPop var_F0
  loc_A5EDEB: ImpAdLdI2 MemVar_C3D064
  loc_A5EDEE: ImpAdCallFPR4 Proc_259_12_AE1238(, , )
  loc_A5EDF3: FFree1Str var_F0
  loc_A5EDF6: FFreeAd var_88 = ""
  loc_A5EDFD: FFreeVar var_98 = ""
  loc_A5EE04: FLdRfVar var_F0
  loc_A5EE07: FLdPr Me
  loc_A5EE0A: MemLdRfVar from_stack_1.global_96
  loc_A5EE0D: NewIfNullPr tblfinalidad
  loc_A5EE10: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_A5EE15: ILdRf var_F0
  loc_A5EE18: FLdPr Me
  loc_A5EE1B: VCallAd Control_ID_DetaFifuLbl
  loc_A5EE1E: FStAdFunc var_88
  loc_A5EE21: FLdPr var_88
  loc_A5EE24: Me.Caption = from_stack_1
  loc_A5EE29: FFree1Str var_F0
  loc_A5EE2C: FFree1Ad var_88
  loc_A5EE2F: LitStr "Partida: "
  loc_A5EE32: FLdRfVar var_F0
  loc_A5EE35: FLdPr Me
  loc_A5EE38: VCallAd Control_ID_DetaPartLbl
  loc_A5EE3B: FStAdFunc var_88
  loc_A5EE3E: FLdPr var_88
  loc_A5EE41:  = Me.Caption
  loc_A5EE46: ILdRf var_F0
  loc_A5EE49: ConcatStr
  loc_A5EE4A: FStStrNoPop var_F4
  loc_A5EE4D: LitStr " - Oficina: "
  loc_A5EE50: ConcatStr
  loc_A5EE51: FStStrNoPop var_104
  loc_A5EE54: FLdRfVar var_F8
  loc_A5EE57: FLdPr Me
  loc_A5EE5A: VCallAd Control_ID_DetaOrgaLbl
  loc_A5EE5D: FStAdFunc var_DC
  loc_A5EE60: FLdPr var_DC
  loc_A5EE63:  = Me.Caption
  loc_A5EE68: ILdRf var_F8
  loc_A5EE6B: ConcatStr
  loc_A5EE6C: FStStrNoPop var_108
  loc_A5EE6F: LitStr " - Finalidad: "
  loc_A5EE72: ConcatStr
  loc_A5EE73: FStStrNoPop var_110
  loc_A5EE76: FLdRfVar var_10C
  loc_A5EE79: FLdPr Me
  loc_A5EE7C: VCallAd Control_ID_DetaFifuLbl
  loc_A5EE7F: FStAdFunc var_FC
  loc_A5EE82: FLdPr var_FC
  loc_A5EE85:  = Me.Caption
  loc_A5EE8A: ILdRf var_10C
  loc_A5EE8D: ConcatStr
  loc_A5EE8E: CVarStr var_98
  loc_A5EE91: PopAdLdVar
  loc_A5EE92: FLdPr Me
  loc_A5EE95: VCallAd Control_ID_FlexItemCompra
  loc_A5EE98: FStAdFunc var_114
  loc_A5EE9B: FLdPr var_114
  loc_A5EE9E: LateIdSt
  loc_A5EEA3: FFreeStr var_F0 = "": var_F4 = "": var_104 = "": var_F8 = "": var_108 = "": var_110 = ""
  loc_A5EEB4: FFreeAd var_88 = "": var_DC = "": var_FC = ""
  loc_A5EEBF: FFree1Var var_98 = ""
  loc_A5EEC2: ExitProcHresult
End Sub

Private Function Proc_110_18_A2E61C() 'A2E61C
  'Data Table: 491BF8
  loc_A2E41C: FLdPr Me
  loc_A2E41F: VCallAd Control_ID_FlexItemCompra
  loc_A2E422: FStAdFunc var_88
  loc_A2E425: FLdPr var_88
  loc_A2E428: LateIdCall
  loc_A2E430: LitVarI4
  loc_A2E438: PopAdLdVar
  loc_A2E439: FLdPr var_88
  loc_A2E43C: LateIdSt
  loc_A2E441: LitVarI4
  loc_A2E449: PopAdLdVar
  loc_A2E44A: LitVarI4
  loc_A2E452: PopAdLdVar
  loc_A2E453: LitVarStr var_D8, "Item"
  loc_A2E458: PopAdLdVar
  loc_A2E459: FLdPr var_88
  loc_A2E45C: LateIdCallSt
  loc_A2E464: LitVarI4
  loc_A2E46C: PopAdLdVar
  loc_A2E46D: LitVarI4
  loc_A2E475: PopAdLdVar
  loc_A2E476: LitVarStr var_D8, "Insumo"
  loc_A2E47B: PopAdLdVar
  loc_A2E47C: FLdPr var_88
  loc_A2E47F: LateIdCallSt
  loc_A2E487: LitVarI4
  loc_A2E48F: PopAdLdVar
  loc_A2E490: LitVarI4
  loc_A2E498: PopAdLdVar
  loc_A2E499: LitVarStr var_D8, "Detalle"
  loc_A2E49E: PopAdLdVar
  loc_A2E49F: FLdPr var_88
  loc_A2E4A2: LateIdCallSt
  loc_A2E4AA: LitVarI4
  loc_A2E4B2: PopAdLdVar
  loc_A2E4B3: LitVarI4
  loc_A2E4BB: PopAdLdVar
  loc_A2E4BC: LitVarStr var_D8, "Cantidad"
  loc_A2E4C1: PopAdLdVar
  loc_A2E4C2: FLdPr var_88
  loc_A2E4C5: LateIdCallSt
  loc_A2E4CD: LitVarI4
  loc_A2E4D5: PopAdLdVar
  loc_A2E4D6: LitVarI4
  loc_A2E4DE: PopAdLdVar
  loc_A2E4DF: LitVarStr var_D8, "$ Unit."
  loc_A2E4E4: PopAdLdVar
  loc_A2E4E5: FLdPr var_88
  loc_A2E4E8: LateIdCallSt
  loc_A2E4F0: LitVarI4
  loc_A2E4F8: PopAdLdVar
  loc_A2E4F9: LitVarI4
  loc_A2E501: PopAdLdVar
  loc_A2E502: LitVarStr var_D8, "$ Total"
  loc_A2E507: PopAdLdVar
  loc_A2E508: FLdPr var_88
  loc_A2E50B: LateIdCallSt
  loc_A2E513: LitVarI4
  loc_A2E51B: PopAdLdVar
  loc_A2E51C: LitVarI4
  loc_A2E524: PopAdLdVar
  loc_A2E525: LitVarStr var_D8, "Partida"
  loc_A2E52A: PopAdLdVar
  loc_A2E52B: FLdPr var_88
  loc_A2E52E: LateIdCallSt
  loc_A2E536: LitVarI4
  loc_A2E53E: PopAdLdVar
  loc_A2E53F: LitVarI4
  loc_A2E547: PopAdLdVar
  loc_A2E548: LitVarStr var_D8, "Oficina"
  loc_A2E54D: PopAdLdVar
  loc_A2E54E: FLdPr var_88
  loc_A2E551: LateIdCallSt
  loc_A2E559: LitVarI4
  loc_A2E561: PopAdLdVar
  loc_A2E562: LitVarI4
  loc_A2E56A: PopAdLdVar
  loc_A2E56B: LitVarStr var_D8, "Finalidad"
  loc_A2E570: PopAdLdVar
  loc_A2E571: FLdPr var_88
  loc_A2E574: LateIdCallSt
  loc_A2E57C: LitVarI4
  loc_A2E584: PopAdLdVar
  loc_A2E585: LitVarI4
  loc_A2E58D: PopAdLdVar
  loc_A2E58E: LitVarStr var_D8, "Imput."
  loc_A2E593: PopAdLdVar
  loc_A2E594: FLdPr var_88
  loc_A2E597: LateIdCallSt
  loc_A2E59F: LitVarI4
  loc_A2E5A7: PopAdLdVar
  loc_A2E5A8: LitVarI4
  loc_A2E5B0: PopAdLdVar
  loc_A2E5B1: LitVarStr var_D8, "Un. Gasto"
  loc_A2E5B6: PopAdLdVar
  loc_A2E5B7: FLdPr var_88
  loc_A2E5BA: LateIdCallSt
  loc_A2E5C2: LitVarI4
  loc_A2E5CA: PopAdLdVar
  loc_A2E5CB: LitVarI4
  loc_A2E5D3: PopAdLdVar
  loc_A2E5D4: LitVarStr var_D8, "Alternativa"
  loc_A2E5D9: PopAdLdVar
  loc_A2E5DA: FLdPr var_88
  loc_A2E5DD: LateIdCallSt
  loc_A2E5E5: LitVarI4
  loc_A2E5ED: PopAdLdVar
  loc_A2E5EE: LitVarI4
  loc_A2E5F6: PopAdLdVar
  loc_A2E5F7: LitVarStr var_D8, "IdImpuNP"
  loc_A2E5FC: PopAdLdVar
  loc_A2E5FD: FLdPr var_88
  loc_A2E600: LateIdCallSt
  loc_A2E608: FLdPr var_88
  loc_A2E60B: LateIdCall
  loc_A2E613: LitNothing
  loc_A2E615: FStAd var_88 
  loc_A2E619: ExitProcHresult
  loc_A2E61A: FLdRfVar var_8000
End Function
