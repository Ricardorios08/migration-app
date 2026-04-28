VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeExpensasAforadas
  Caption = "Listado de Expensas Aforadas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeExpensasAforadas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9672
  ClientHeight = 5124
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
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4875
    Width = 9675
    Height = 255
    TabIndex = 14
    OleObjectBlob = "rptListadodeExpensasAforadas.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 3720
    Width = 855
    Height = 735
    TabIndex = 12
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptListadodeExpensasAforadas.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeExpensasAforadas.frx":0B9C
    Left = 8640
    Top = 1440
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 3360
    Width = 1815
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3360
    Width = 4095
    Height = 1215
    TabIndex = 7
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9495
    Height = 3135
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame5
      Left = 240
      Top = 240
      Width = 6735
      Height = 1335
      TabIndex = 1
      Begin VB.OptionButton ActivasOpt
        Caption = "Cuentas Activas"
        Left = 360
        Top = 720
        Width = 2655
        Height = 300
        TabIndex = 3
      End
      Begin VB.OptionButton TodasLasCuentasOpt
        Caption = "Todas las Cuentas"
        Left = 360
        Top = 360
        Width = 2655
        Height = 300
        TabIndex = 2
      End
    End
    Begin VB.ComboBox CementerioCbo
      Style = 2
      Left = 1680
      Top = 2040
      Width = 4455
      Height = 420
      TabIndex = 6
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7440
      Top = 480
      Width = 1575
      Height = 615
      TabIndex = 4
    End
    Begin VB.Label Label3
      Caption = "Cementerio:"
      Left = 315
      Top = 2040
      Width = 1290
      Height = 300
      TabIndex = 5
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8280
    Top = 4080
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptListadodeExpensasAforadas.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeExpensasAforadas"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub cmdPdf_Click() '9E041C
  'Data Table: 464FB4
  loc_9E0400: LitI2_Byte 0
  loc_9E0402: PopTmpLdAd2 var_8A
  loc_9E0405: ILdRf Me
  loc_9E0408: CastAd
  loc_9E040B: FStAdFunc var_88
  loc_9E040E: FLdRfVar var_88
  loc_9E0411: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E0416: FFree1Ad var_88
  loc_9E0419: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A76060
  'Data Table: 464FB4
  loc_A75FE4: LitI2_Byte 0
  loc_A75FE6: FLdPr Me
  loc_A75FE9: MemStI2 bGenerado
  loc_A75FEC: LitI2_Byte 0
  loc_A75FEE: ILdRf Me
  loc_A75FF1: CastAd
  loc_A75FF4: FStAdFunc var_88
  loc_A75FF7: FLdRfVar var_88
  loc_A75FFA: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A75FFF: FFree1Ad var_88
  loc_A76002: LitI2_Byte &HFF
  loc_A76004: FLdPr Me
  loc_A76007: VCallAd Control_ID_TodasLasCuentasOpt
  loc_A7600A: FStAdFunc var_88
  loc_A7600D: FLdPr var_88
  loc_A76010: Me.Value = from_stack_1b
  loc_A76015: FFree1Ad var_88
  loc_A76018: LitI2_Byte 0
  loc_A7601A: FLdPr Me
  loc_A7601D: VCallAd Control_ID_ActivasOpt
  loc_A76020: FStAdFunc var_88
  loc_A76023: FLdPr var_88
  loc_A76026: Me.Value = from_stack_1b
  loc_A7602B: FFree1Ad var_88
  loc_A7602E: LitI2_Byte 0
  loc_A76030: FLdPr Me
  loc_A76033: VCallAd Control_ID_CementerioCbo
  loc_A76036: FStAdFunc var_88
  loc_A76039: FLdPr var_88
  loc_A7603C: Me.ListIndex = from_stack_1
  loc_A76041: FFree1Ad var_88
  loc_A76044: Call HabilitarCriterio()
  loc_A76049: ILdRf Me
  loc_A7604C: CastAd
  loc_A7604F: FStAdFunc var_88
  loc_A76052: FLdRfVar var_88
  loc_A76055: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A7605A: FFree1Ad var_88
  loc_A7605D: ExitProcHresult
  loc_A7605E: FLdPr arg_3C08
End Sub

Private Sub cmdPrevia_Click() '9C9E88
  'Data Table: 464FB4
  loc_9C9E70: ILdRf Me
  loc_9C9E73: CastAd
  loc_9C9E76: FStAdFunc var_88
  loc_9C9E79: FLdRfVar var_88
  loc_9C9E7C: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9C9E81: FFree1Ad var_88
  loc_9C9E84: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A04444
  'Data Table: 464FB4
  loc_A04414: LitVarStr var_94, "Cerrando..."
  loc_A04419: PopAdLdVar
  loc_A0441A: FLdPr Me
  loc_A0441D: VCallAd Control_ID_statusBar
  loc_A04420: FStAdFunc var_A8
  loc_A04423: FLdPr var_A8
  loc_A04426: LateIdSt
  loc_A0442B: FFree1Ad var_A8
  loc_A0442E: ILdRf Me
  loc_A04431: FStAdNoPop
  loc_A04435: ImpAdLdRf MemVar_D9C5D8
  loc_A04438: NewIfNullPr Global
  loc_A0443B: Global.Unload from_stack_1
  loc_A04440: FFree1Ad var_A8
  loc_A04443: ExitProcHresult
End Sub

Private Sub Form_Load() 'AC7C0C
  'Data Table: 464FB4
  loc_AC7B00: ILdRf Me
  loc_AC7B03: CastAd
  loc_AC7B06: FStAdFunc var_8C
  loc_AC7B09: FLdRfVar var_8C
  loc_AC7B0C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AC7B11: FFree1Ad var_8C
  loc_AC7B14: FLdRfVar var_88
  loc_AC7B17: NewIfNullAd
  loc_AC7B1A: FStAd var_90 
  loc_AC7B1E: FLdPr Me
  loc_AC7B21: VCallAd Control_ID_CementerioCbo
  loc_AC7B24: FStAdFunc var_8C
  loc_AC7B27: FLdPr var_8C
  loc_AC7B2A: Me.Clear
  loc_AC7B2F: FFree1Ad var_8C
  loc_AC7B32: LitVar_Missing var_A0
  loc_AC7B35: PopAdLdVar
  loc_AC7B36: LitStr "TODOS"
  loc_AC7B39: FLdPr Me
  loc_AC7B3C: VCallAd Control_ID_CementerioCbo
  loc_AC7B3F: FStAdFunc var_8C
  loc_AC7B42: FLdPr var_8C
  loc_AC7B45: Me.AddItem from_stack_1, from_stack_2
  loc_AC7B4A: FFree1Ad var_8C
  loc_AC7B4D: LitStr "SELECT CodiCeme, DetaCeme FROM cementerio ORDER BY CodiCeme"
  loc_AC7B50: FLdPr var_90
  loc_AC7B53: Call clscementerio.RedefineRS(from_stack_1v)
  loc_AC7B58: FLdRfVar var_A4
  loc_AC7B5B: FLdPr var_90
  loc_AC7B5E: from_stack_1 = clscementerio.RecordCount
  loc_AC7B63: ILdRf var_A4
  loc_AC7B66: LitI4 0
  loc_AC7B6B: GtI4
  loc_AC7B6C: BranchF loc_AC7BFE
  loc_AC7B6F: FLdPr var_90
  loc_AC7B72: Call clscementerio.MoveFirst()
  loc_AC7B77: LitVar_Missing var_A0
  loc_AC7B7A: PopAdLdVar
  loc_AC7B7B: FLdRfVar var_A8
  loc_AC7B7E: FLdPr var_90
  loc_AC7B81: from_stack_1 = clscementerio.DetaCeme
  loc_AC7B86: ILdRf var_A8
  loc_AC7B89: FLdPr Me
  loc_AC7B8C: VCallAd Control_ID_CementerioCbo
  loc_AC7B8F: FStAdFunc var_8C
  loc_AC7B92: FLdPr var_8C
  loc_AC7B95: Me.AddItem from_stack_1, from_stack_2
  loc_AC7B9A: FFree1Str var_A8
  loc_AC7B9D: FFree1Ad var_8C
  loc_AC7BA0: FLdRfVar var_AA
  loc_AC7BA3: FLdPr var_90
  loc_AC7BA6: from_stack_1 = clscementerio.CodiCeme
  loc_AC7BAB: FLdUI1
  loc_AC7BAF: CI4UI1
  loc_AC7BB0: FLdRfVar var_AC
  loc_AC7BB3: FLdPr Me
  loc_AC7BB6: VCallAd Control_ID_CementerioCbo
  loc_AC7BB9: FStAdFunc var_8C
  loc_AC7BBC: FLdPr var_8C
  loc_AC7BBF:  = Me.NewIndex
  loc_AC7BC4: FLdI2 var_AC
  loc_AC7BC7: FLdPr Me
  loc_AC7BCA: VCallAd Control_ID_CementerioCbo
  loc_AC7BCD: FStAdFunc var_B0
  loc_AC7BD0: FLdPr var_B0
  loc_AC7BD3: Me.ItemData = from_stack_1
  loc_AC7BD8: FFreeAd var_8C = ""
  loc_AC7BDF: LitI2_Byte 1
  loc_AC7BE1: PopTmpLdAd2 var_AA
  loc_AC7BE4: FLdPr var_90
  loc_AC7BE7: Call clscementerio.Move(from_stack_1v)
  loc_AC7BEC: FLdRfVar var_AA
  loc_AC7BEF: FLdPr var_90
  loc_AC7BF2: from_stack_1 = clscementerio.EOF
  loc_AC7BF7: FLdI2 var_AA
  loc_AC7BFA: NotI4
  loc_AC7BFB: BranchT loc_AC7B77
  loc_AC7BFE: LitNothing
  loc_AC7C00: FStAd var_90 
  loc_AC7C04: Call cmdNueva_Click()
  loc_AC7C09: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D2CBC
  'Data Table: 464FB4
  loc_9D2CA4: FLdPr Me
  loc_9D2CA7: VCallAd Control_ID_wbbReporte
  loc_9D2CAA: FStAdFunc var_88
  loc_9D2CAD: FLdRfVar var_88
  loc_9D2CB0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D2CB5: FFree1Ad var_88
  loc_9D2CB8: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13E10
  'Data Table: 464FB4
  loc_A13DD8: FLdPr Me
  loc_A13DDB: VCallAd Control_ID_statusBar
  loc_A13DDE: FStAdFunc var_88
  loc_A13DE1: FLdPr var_88
  loc_A13DE4: LateIdLdVar var_98 DispID_1 0
  loc_A13DEB: CStrVarTmp
  loc_A13DEC: CVarStr var_A8
  loc_A13DEF: PopAdLdVar
  loc_A13DF0: FLdPr Me
  loc_A13DF3: VCallAd Control_ID_statusBar
  loc_A13DF6: FStAdFunc var_BC
  loc_A13DF9: FLdPr var_BC
  loc_A13DFC: LateIdSt
  loc_A13E01: FFreeAd var_88 = ""
  loc_A13E08: FFreeVar var_98 = ""
  loc_A13E0F: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9C9ED4
  'Data Table: 464FB4
  loc_9C9EBC: LitI2_Byte 0
  loc_9C9EBE: ILdRf Me
  loc_9C9EC1: CastAd
  loc_9C9EC4: FStAdFunc var_88
  loc_9C9EC7: FLdRfVar var_88
  loc_9C9ECA: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C9ECF: FFree1Ad var_88
  loc_9C9ED2: ExitProcHresult
End Sub

Public Function htmFileGet() '465B30
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '465B3F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '465B4E
  htmFile = Value
End Sub

Public Function bGeneradoGet() '465B5D
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '465B6C
  bGenerado = Value
End Sub

Public Function bLogosGet() '465B7B
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '465B8A
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'A5E0DC
  'Data Table: 464FB4
  loc_A5E088: LitI4 0
  loc_A5E08D: LitI4 2
  loc_A5E092: FLdRfVar var_88
  loc_A5E095: Redim
  loc_A5E09F: FLdPrThis
  loc_A5E0A0: VCallAd Control_ID_TodasLasCuentasOpt
  loc_A5E0A3: CVarAd
  loc_A5E0A7: ParmAry1St
  loc_A5E0AD: FLdPr Me
  loc_A5E0B0: VCallAd Control_ID_ActivasOpt
  loc_A5E0B3: CVarAd
  loc_A5E0B7: ParmAry1St
  loc_A5E0BD: FLdPr Me
  loc_A5E0C0: VCallAd Control_ID_CementerioCbo
  loc_A5E0C3: CVarAd
  loc_A5E0C7: ParmAry1St
  loc_A5E0CD: FLdRfVar var_88
  loc_A5E0D0: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5E0D5: FLdRfVar var_88
  loc_A5E0D8: Erase
  loc_A5E0D9: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C21838
  'Data Table: 464FB4
  loc_C20DDC: FLdPr Me
  loc_C20DDF: MemLdI2 bGenerado
  loc_C20DE2: BranchF loc_C20DE6
  loc_C20DE5: ExitProcHresult
  loc_C20DE6: LitVarStr var_98, "Generando reporte..."
  loc_C20DEB: PopAdLdVar
  loc_C20DEC: FLdPr Me
  loc_C20DEF: VCallAd Control_ID_statusBar
  loc_C20DF2: FStAdFunc var_AC
  loc_C20DF5: FLdPr var_AC
  loc_C20DF8: LateIdSt
  loc_C20DFD: FFree1Ad var_AC
  loc_C20E00: LitI4 &HB
  loc_C20E05: CI2I4
  loc_C20E06: FLdPr Me
  loc_C20E09: Me.MousePointer = from_stack_1
  loc_C20E0E: FLdRfVar var_AE
  loc_C20E11: FLdPr Me
  loc_C20E14: VCallAd Control_ID_CementerioCbo
  loc_C20E17: FStAdFunc var_AC
  loc_C20E1A: FLdPr var_AC
  loc_C20E1D:  = Me.ListIndex
  loc_C20E22: FLdRfVar var_B6
  loc_C20E25: FLdPr Me
  loc_C20E28: VCallAd Control_ID_CementerioCbo
  loc_C20E2B: FStAdFunc var_B4
  loc_C20E2E: FLdPr var_B4
  loc_C20E31:  = Me.ListIndex
  loc_C20E36: FLdRfVar var_C0
  loc_C20E39: FLdI2 var_B6
  loc_C20E3C: FLdPr Me
  loc_C20E3F: VCallAd Control_ID_CementerioCbo
  loc_C20E42: FStAdFunc var_BC
  loc_C20E45: FLdPr var_BC
  loc_C20E48:  = Me.ItemData
  loc_C20E4D: LitVarStr var_A8, vbNullString
  loc_C20E52: FStVarCopyObj var_E4
  loc_C20E55: FLdRfVar var_E4
  loc_C20E58: LitStr " AND difunto.CodiCeme = "
  loc_C20E5B: ILdRf var_C0
  loc_C20E5E: CStrI4
  loc_C20E60: FStStrNoPop var_C4
  loc_C20E63: ConcatStr
  loc_C20E64: CVarStr var_D4
  loc_C20E67: FLdI2 var_AE
  loc_C20E6A: LitI2_Byte 0
  loc_C20E6C: GtI2
  loc_C20E6D: CVarBoolI2 var_98
  loc_C20E71: FLdRfVar var_F4
  loc_C20E74: ImpAdCallFPR4  = IIf(, , )
  loc_C20E79: FLdRfVar var_F4
  loc_C20E7C: CStrVarTmp
  loc_C20E7D: FStStr var_88
  loc_C20E80: FFree1Str var_C4
  loc_C20E83: FFreeAd var_AC = "": var_B4 = ""
  loc_C20E8C: FFreeVar var_98 = "": var_D4 = "": var_E4 = ""
  loc_C20E97: FLdPr Me
  loc_C20E9A: MemLdRfVar from_stack_1.global_76
  loc_C20E9D: NewIfNullAd
  loc_C20EA0: FStAd var_F8 
  loc_C20EA4: LitStr "SELECT cast(GROUP_CONCAT(CodiSece) as CHAR) as DetaSece FROM servceme WHERE DetaSece LIKE '" & Chr(37) & "expensas" & Chr(37) & "'"
  loc_C20EA7: FLdPr var_F8
  loc_C20EAA: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C20EAF: FLdRfVar var_C0
  loc_C20EB2: FLdPr var_F8
  loc_C20EB5: from_stack_1 = clsdifunto.RecordCount
  loc_C20EBA: ILdRf var_C0
  loc_C20EBD: LitI4 0
  loc_C20EC2: GtI4
  loc_C20EC3: BranchF loc_C20FF0
  loc_C20EC6: FLdRfVar var_AE
  loc_C20EC9: FLdPr Me
  loc_C20ECC: VCallAd Control_ID_ActivasOpt
  loc_C20ECF: FStAdFunc var_168
  loc_C20ED2: FLdPr var_168
  loc_C20ED5:  = Me.Value
  loc_C20EDA: LitStr " SELECT difunto.CodiDifu, DetaPers, DetaCeme, PeriDifu, MesDifu, AnioDifu, FebaDifu, FeveDifu,"
  loc_C20EDD: LitStr " SUM(IF(PeriCtct=2008,IFNULL(ctactedeta.DebeCtde,0),0)) as Peri2008, SUM(IF(PeriCtct=2009,IFNULL(ctactedeta.DebeCtde,0),0)) as Peri2009,"
  loc_C20EE0: ConcatStr
  loc_C20EE1: FStStrNoPop var_C4
  loc_C20EE4: LitStr " SUM(IF(PeriCtct=2010,IFNULL(ctactedeta.DebeCtde,0),0)) as Peri2010, SUM(IF(PeriCtct=2011,IFNULL(ctactedeta.DebeCtde,0),0)) as Peri2011, "
  loc_C20EE7: ConcatStr
  loc_C20EE8: FStStrNoPop var_FC
  loc_C20EEB: LitStr " SUM(IF(PeriCtct=2012,IFNULL(ctactedeta.DebeCtde,0),0)) as Peri2012"
  loc_C20EEE: ConcatStr
  loc_C20EEF: FStStrNoPop var_100
  loc_C20EF2: LitStr " FROM difunto"
  loc_C20EF5: ConcatStr
  loc_C20EF6: FStStrNoPop var_104
  loc_C20EF9: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_C20EFC: ConcatStr
  loc_C20EFD: FStStrNoPop var_108
  loc_C20F00: LitStr " LEFT JOIN cementerio ON  cementerio.CodiCeme = difunto.CodiCeme"
  loc_C20F03: ConcatStr
  loc_C20F04: FStStrNoPop var_10C
  loc_C20F07: LitStr " LEFT JOIN ctactedeta ON ctactedeta.CodiOfic = 4 AND ctactedeta.CuenCtct = difunto.CodiDifu"
  loc_C20F0A: ConcatStr
  loc_C20F0B: FStStrNoPop var_110
  loc_C20F0E: LitStr " AND ctactedeta.CodiTimo = 1 "
  loc_C20F11: ConcatStr
  loc_C20F12: FStStrNoPop var_114
  loc_C20F15: LitStr " AND ctactedeta.CodiCtde IN ("
  loc_C20F18: ConcatStr
  loc_C20F19: CVarStr var_E4
  loc_C20F1C: FLdRfVar var_D4
  loc_C20F1F: FLdRfVar var_BC
  loc_C20F22: LitVarStr var_98, "DetaSece"
  loc_C20F27: PopAdLdVar
  loc_C20F28: FLdRfVar var_B4
  loc_C20F2B: FLdRfVar var_AC
  loc_C20F2E: FLdPr var_F8
  loc_C20F31: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C20F36: FLdPr var_AC
  loc_C20F39:  = Me.Fields
  loc_C20F3E: FLdPr var_B4
  loc_C20F41: from_stack_2 = Me.Item(from_stack_1)
  loc_C20F46: FLdPr var_BC
  loc_C20F49:  = Me.Value
  loc_C20F4E: FLdRfVar var_D4
  loc_C20F51: ConcatVar var_F4
  loc_C20F55: LitVarStr var_A8, ")"
  loc_C20F5A: ConcatVar var_124
  loc_C20F5E: LitVarStr var_134, " WHERE ctactedeta.PeriCtct >= 2008"
  loc_C20F63: ConcatVar var_144
  loc_C20F67: ILdRf var_88
  loc_C20F6A: CVarStr var_154
  loc_C20F6D: ConcatVar var_164
  loc_C20F71: LitVarStr var_1A8, vbNullString
  loc_C20F76: FStVarCopyObj var_1B8
  loc_C20F79: FLdRfVar var_1B8
  loc_C20F7C: LitVarStr var_188, " AND difunto.FebaDifu IS NULL"
  loc_C20F81: FStVarCopyObj var_198
  loc_C20F84: FLdRfVar var_198
  loc_C20F87: FLdI2 var_AE
  loc_C20F8A: LitI2_Byte &HFF
  loc_C20F8C: EqI2
  loc_C20F8D: CVarBoolI2 var_178
  loc_C20F91: FLdRfVar var_1C8
  loc_C20F94: ImpAdCallFPR4  = IIf(, , )
  loc_C20F99: FLdRfVar var_1C8
  loc_C20F9C: ConcatVar var_1D8
  loc_C20FA0: LitVarStr var_1E8, " GROUP BY difunto.CodiDifu"
  loc_C20FA5: ConcatVar var_1F8
  loc_C20FA9: CStrVarVal var_1FC
  loc_C20FAD: FLdPr var_F8
  loc_C20FB0: Call clsdifunto.RedefineRS(from_stack_1v)
  loc_C20FB5: FFreeStr var_C4 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_C20FCA: FFreeAd var_AC = "": var_B4 = "": var_BC = ""
  loc_C20FD5: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_124 = "": var_144 = "": var_178 = "": var_198 = "": var_1B8 = "": var_164 = "": var_1C8 = "": var_1D8 = ""
  loc_C20FF0: FLdRfVar var_C0
  loc_C20FF3: FLdPr var_F8
  loc_C20FF6: from_stack_1 = clsdifunto.RecordCount
  loc_C20FFB: ILdRf var_C0
  loc_C20FFE: LitI4 0
  loc_C21003: EqI4
  loc_C21004: BranchF loc_C21012
  loc_C21007: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C2100A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C2100F: Branch loc_C2180F
  loc_C21012: LitI4 0
  loc_C21017: FLdRfVar var_C0
  loc_C2101A: FLdPr var_F8
  loc_C2101D: from_stack_1 = clsdifunto.RecordCount
  loc_C21022: ILdRf var_C0
  loc_C21025: FLdPr Me
  loc_C21028: MemLdRfVar from_stack_1.global_80
  loc_C2102B: Redim
  loc_C21035: FLdPr var_F8
  loc_C21038: Call clsdifunto.MoveFirst()
  loc_C2103D: LitI4 1
  loc_C21042: FLdPr Me
  loc_C21045: MemLdRfVar from_stack_1.global_84
  loc_C21048: FLdPr Me
  loc_C2104B: MemLdStr global_80
  loc_C2104E: LitI2_Byte 1
  loc_C21050: FnUBound
  loc_C21052: ForI4 var_204
  loc_C21058: FLdRfVar var_BC
  loc_C2105B: LitVarStr var_98, "CodiDifu"
  loc_C21060: PopAdLdVar
  loc_C21061: FLdRfVar var_B4
  loc_C21064: FLdRfVar var_AC
  loc_C21067: FLdPr var_F8
  loc_C2106A: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C2106F: FLdPr var_AC
  loc_C21072:  = Me.Fields
  loc_C21077: FLdPr var_B4
  loc_C2107A: from_stack_2 = Me.Item(from_stack_1)
  loc_C2107F: LitI2_Byte 0
  loc_C21081: LitVar_Missing var_E4
  loc_C21084: LitI2_Byte 0
  loc_C21086: FLdZeroAd var_BC
  loc_C21089: CVarAd
  loc_C2108D: PopAdLdVar
  loc_C2108E: FLdPr Me
  loc_C21091: MemLdStr global_84
  loc_C21094: FLdPr Me
  loc_C21097: MemLdStr global_80
  loc_C2109A: AryLock
  loc_C2109D: Ary1LdPr
  loc_C2109E: MemLdRfVar from_stack_1.global_0
  loc_C210A1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C210A6: AryUnlock
  loc_C210A9: FFreeAd var_AC = ""
  loc_C210B0: FFreeVar var_D4 = ""
  loc_C210B7: FLdRfVar var_BC
  loc_C210BA: LitVarStr var_98, "DetaPers"
  loc_C210BF: PopAdLdVar
  loc_C210C0: FLdRfVar var_B4
  loc_C210C3: FLdRfVar var_AC
  loc_C210C6: FLdPr var_F8
  loc_C210C9: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C210CE: FLdPr var_AC
  loc_C210D1:  = Me.Fields
  loc_C210D6: FLdPr var_B4
  loc_C210D9: from_stack_2 = Me.Item(from_stack_1)
  loc_C210DE: LitI2_Byte 0
  loc_C210E0: LitVar_Missing var_E4
  loc_C210E3: LitI2_Byte 0
  loc_C210E5: FLdZeroAd var_BC
  loc_C210E8: CVarAd
  loc_C210EC: PopAdLdVar
  loc_C210ED: FLdPr Me
  loc_C210F0: MemLdStr global_84
  loc_C210F3: FLdPr Me
  loc_C210F6: MemLdStr global_80
  loc_C210F9: AryLock
  loc_C210FC: Ary1LdPr
  loc_C210FD: MemLdRfVar from_stack_1.global_4
  loc_C21100: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C21105: AryUnlock
  loc_C21108: FFreeAd var_AC = ""
  loc_C2110F: FFreeVar var_D4 = ""
  loc_C21116: FLdRfVar var_BC
  loc_C21119: LitVarStr var_98, "DetaCeme"
  loc_C2111E: PopAdLdVar
  loc_C2111F: FLdRfVar var_B4
  loc_C21122: FLdRfVar var_AC
  loc_C21125: FLdPr var_F8
  loc_C21128: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C2112D: FLdPr var_AC
  loc_C21130:  = Me.Fields
  loc_C21135: FLdPr var_B4
  loc_C21138: from_stack_2 = Me.Item(from_stack_1)
  loc_C2113D: LitI2_Byte 0
  loc_C2113F: LitVar_Missing var_E4
  loc_C21142: LitI2_Byte 0
  loc_C21144: FLdZeroAd var_BC
  loc_C21147: CVarAd
  loc_C2114B: PopAdLdVar
  loc_C2114C: FLdPr Me
  loc_C2114F: MemLdStr global_84
  loc_C21152: FLdPr Me
  loc_C21155: MemLdStr global_80
  loc_C21158: AryLock
  loc_C2115B: Ary1LdPr
  loc_C2115C: MemLdRfVar from_stack_1.global_8
  loc_C2115F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C21164: AryUnlock
  loc_C21167: FFreeAd var_AC = ""
  loc_C2116E: FFreeVar var_D4 = ""
  loc_C21175: FLdRfVar var_D4
  loc_C21178: FLdRfVar var_BC
  loc_C2117B: LitVarStr var_98, "PeriDifu"
  loc_C21180: PopAdLdVar
  loc_C21181: FLdRfVar var_B4
  loc_C21184: FLdRfVar var_AC
  loc_C21187: FLdPr var_F8
  loc_C2118A: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C2118F: FLdPr var_AC
  loc_C21192:  = Me.Fields
  loc_C21197: FLdPr var_B4
  loc_C2119A: from_stack_2 = Me.Item(from_stack_1)
  loc_C2119F: FLdPr var_BC
  loc_C211A2:  = Me.Value
  loc_C211A7: FLdRfVar var_F4
  loc_C211AA: FLdRfVar var_210
  loc_C211AD: LitVarStr var_134, "MesDifu"
  loc_C211B2: PopAdLdVar
  loc_C211B3: FLdRfVar var_20C
  loc_C211B6: FLdRfVar var_168
  loc_C211B9: FLdPr var_F8
  loc_C211BC: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C211C1: FLdPr var_168
  loc_C211C4:  = Me.Fields
  loc_C211C9: FLdPr var_20C
  loc_C211CC: from_stack_2 = Me.Item(from_stack_1)
  loc_C211D1: FLdPr var_210
  loc_C211D4:  = Me.Value
  loc_C211D9: LitI2_Byte 0
  loc_C211DB: LitVar_Missing var_144
  loc_C211DE: LitI2_Byte 0
  loc_C211E0: FLdRfVar var_D4
  loc_C211E3: LitVarStr var_A8, "-"
  loc_C211E8: ConcatVar var_E4
  loc_C211EC: FLdRfVar var_F4
  loc_C211EF: ConcatVar var_124
  loc_C211F3: PopAdLdVar
  loc_C211F4: FLdPr Me
  loc_C211F7: MemLdStr global_84
  loc_C211FA: FLdPr Me
  loc_C211FD: MemLdStr global_80
  loc_C21200: AryLock
  loc_C21203: Ary1LdPr
  loc_C21204: MemLdRfVar from_stack_1.global_12
  loc_C21207: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C2120C: AryUnlock
  loc_C2120F: FFreeAd var_AC = "": var_B4 = "": var_BC = "": var_168 = "": var_20C = ""
  loc_C2121E: FFreeVar var_D4 = "": var_E4 = "": var_F4 = "": var_124 = ""
  loc_C2122B: FLdRfVar var_BC
  loc_C2122E: LitVarStr var_98, "AnioDifu"
  loc_C21233: PopAdLdVar
  loc_C21234: FLdRfVar var_B4
  loc_C21237: FLdRfVar var_AC
  loc_C2123A: FLdPr var_F8
  loc_C2123D: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C21242: FLdPr var_AC
  loc_C21245:  = Me.Fields
  loc_C2124A: FLdPr var_B4
  loc_C2124D: from_stack_2 = Me.Item(from_stack_1)
  loc_C21252: LitI2_Byte 0
  loc_C21254: LitVar_Missing var_E4
  loc_C21257: LitI2_Byte 0
  loc_C21259: FLdZeroAd var_BC
  loc_C2125C: CVarAd
  loc_C21260: PopAdLdVar
  loc_C21261: FLdPr Me
  loc_C21264: MemLdStr global_84
  loc_C21267: FLdPr Me
  loc_C2126A: MemLdStr global_80
  loc_C2126D: AryLock
  loc_C21270: Ary1LdPr
  loc_C21271: MemLdRfVar from_stack_1.global_16
  loc_C21274: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C21279: AryUnlock
  loc_C2127C: FFreeAd var_AC = ""
  loc_C21283: FFreeVar var_D4 = ""
  loc_C2128A: FLdRfVar var_BC
  loc_C2128D: LitVarStr var_98, "FebaDifu"
  loc_C21292: PopAdLdVar
  loc_C21293: FLdRfVar var_B4
  loc_C21296: FLdRfVar var_AC
  loc_C21299: FLdPr var_F8
  loc_C2129C: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C212A1: FLdPr var_AC
  loc_C212A4:  = Me.Fields
  loc_C212A9: FLdPr var_B4
  loc_C212AC: from_stack_2 = Me.Item(from_stack_1)
  loc_C212B1: LitI2_Byte 0
  loc_C212B3: LitVar_Missing var_E4
  loc_C212B6: LitI2_Byte 0
  loc_C212B8: FLdZeroAd var_BC
  loc_C212BB: CVarAd
  loc_C212BF: PopAdLdVar
  loc_C212C0: FLdPr Me
  loc_C212C3: MemLdStr global_84
  loc_C212C6: FLdPr Me
  loc_C212C9: MemLdStr global_80
  loc_C212CC: AryLock
  loc_C212CF: Ary1LdPr
  loc_C212D0: MemLdRfVar from_stack_1.global_20
  loc_C212D3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C212D8: AryUnlock
  loc_C212DB: FFreeAd var_AC = ""
  loc_C212E2: FFreeVar var_D4 = ""
  loc_C212E9: FLdRfVar var_BC
  loc_C212EC: LitVarStr var_98, "FeveDifu"
  loc_C212F1: PopAdLdVar
  loc_C212F2: FLdRfVar var_B4
  loc_C212F5: FLdRfVar var_AC
  loc_C212F8: FLdPr var_F8
  loc_C212FB: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C21300: FLdPr var_AC
  loc_C21303:  = Me.Fields
  loc_C21308: FLdPr var_B4
  loc_C2130B: from_stack_2 = Me.Item(from_stack_1)
  loc_C21310: LitI2_Byte 0
  loc_C21312: LitVar_Missing var_E4
  loc_C21315: LitI2_Byte 0
  loc_C21317: FLdZeroAd var_BC
  loc_C2131A: CVarAd
  loc_C2131E: PopAdLdVar
  loc_C2131F: FLdPr Me
  loc_C21322: MemLdStr global_84
  loc_C21325: FLdPr Me
  loc_C21328: MemLdStr global_80
  loc_C2132B: AryLock
  loc_C2132E: Ary1LdPr
  loc_C2132F: MemLdRfVar from_stack_1.global_24
  loc_C21332: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C21337: AryUnlock
  loc_C2133A: FFreeAd var_AC = ""
  loc_C21341: FFreeVar var_D4 = ""
  loc_C21348: FLdRfVar var_D4
  loc_C2134B: FLdRfVar var_BC
  loc_C2134E: LitVarStr var_98, "Peri2008"
  loc_C21353: PopAdLdVar
  loc_C21354: FLdRfVar var_B4
  loc_C21357: FLdRfVar var_AC
  loc_C2135A: FLdPr var_F8
  loc_C2135D: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C21362: FLdPr var_AC
  loc_C21365:  = Me.Fields
  loc_C2136A: FLdPr var_B4
  loc_C2136D: from_stack_2 = Me.Item(from_stack_1)
  loc_C21372: FLdPr var_BC
  loc_C21375:  = Me.Value
  loc_C2137A: FLdRfVar var_210
  loc_C2137D: LitVarStr var_134, "Peri2008"
  loc_C21382: PopAdLdVar
  loc_C21383: FLdRfVar var_20C
  loc_C21386: FLdRfVar var_168
  loc_C21389: FLdPr var_F8
  loc_C2138C: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C21391: FLdPr var_168
  loc_C21394:  = Me.Fields
  loc_C21399: FLdPr var_20C
  loc_C2139C: from_stack_2 = Me.Item(from_stack_1)
  loc_C213A1: LitI4 1
  loc_C213A6: LitI4 1
  loc_C213AB: LitVarStr var_154, "0.00"
  loc_C213B0: FStVarCopyObj var_124
  loc_C213B3: FLdRfVar var_124
  loc_C213B6: FLdZeroAd var_210
  loc_C213B9: CVarAd
  loc_C213BD: FLdRfVar var_144
  loc_C213C0: ImpAdCallFPR4  = Format(, )
  loc_C213C5: FLdRfVar var_144
  loc_C213C8: LitVarStr var_178, vbNullString
  loc_C213CD: FStVarCopyObj var_198
  loc_C213D0: FLdRfVar var_198
  loc_C213D3: FLdRfVar var_D4
  loc_C213D6: LitVarI2 var_A8, 0
  loc_C213DB: HardType
  loc_C213DC: EqVar var_E4
  loc_C213E0: FStVar var_164
  loc_C213E4: FLdRfVar var_164
  loc_C213E7: FLdRfVar var_1B8
  loc_C213EA: ImpAdCallFPR4  = IIf(, , )
  loc_C213EF: LitI2_Byte 0
  loc_C213F1: LitVar_Missing var_1C8
  loc_C213F4: LitI2_Byte 0
  loc_C213F6: FLdVar var_1B8
  loc_C213FA: FLdPr Me
  loc_C213FD: MemLdStr global_84
  loc_C21400: FLdPr Me
  loc_C21403: MemLdStr global_80
  loc_C21406: AryLock
  loc_C21409: Ary1LdPr
  loc_C2140A: MemLdRfVar from_stack_1.global_28
  loc_C2140D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C21412: AryUnlock
  loc_C21415: FFreeAd var_AC = "": var_B4 = "": var_BC = "": var_168 = ""
  loc_C21422: FFreeVar var_D4 = "": var_F4 = "": var_124 = "": var_164 = "": var_198 = "": var_144 = "": var_1B8 = ""
  loc_C21435: FLdRfVar var_D4
  loc_C21438: FLdRfVar var_BC
  loc_C2143B: LitVarStr var_98, "Peri2009"
  loc_C21440: PopAdLdVar
  loc_C21441: FLdRfVar var_B4
  loc_C21444: FLdRfVar var_AC
  loc_C21447: FLdPr var_F8
  loc_C2144A: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C2144F: FLdPr var_AC
  loc_C21452:  = Me.Fields
  loc_C21457: FLdPr var_B4
  loc_C2145A: from_stack_2 = Me.Item(from_stack_1)
  loc_C2145F: FLdPr var_BC
  loc_C21462:  = Me.Value
  loc_C21467: FLdRfVar var_210
  loc_C2146A: LitVarStr var_134, "Peri2009"
  loc_C2146F: PopAdLdVar
  loc_C21470: FLdRfVar var_20C
  loc_C21473: FLdRfVar var_168
  loc_C21476: FLdPr var_F8
  loc_C21479: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C2147E: FLdPr var_168
  loc_C21481:  = Me.Fields
  loc_C21486: FLdPr var_20C
  loc_C21489: from_stack_2 = Me.Item(from_stack_1)
  loc_C2148E: LitI4 1
  loc_C21493: LitI4 1
  loc_C21498: LitVarStr var_154, "0.00"
  loc_C2149D: FStVarCopyObj var_124
  loc_C214A0: FLdRfVar var_124
  loc_C214A3: FLdZeroAd var_210
  loc_C214A6: CVarAd
  loc_C214AA: FLdRfVar var_144
  loc_C214AD: ImpAdCallFPR4  = Format(, )
  loc_C214B2: FLdRfVar var_144
  loc_C214B5: LitVarStr var_178, vbNullString
  loc_C214BA: FStVarCopyObj var_198
  loc_C214BD: FLdRfVar var_198
  loc_C214C0: FLdRfVar var_D4
  loc_C214C3: LitVarI2 var_A8, 0
  loc_C214C8: HardType
  loc_C214C9: EqVar var_E4
  loc_C214CD: FStVar var_164
  loc_C214D1: FLdRfVar var_164
  loc_C214D4: FLdRfVar var_1B8
  loc_C214D7: ImpAdCallFPR4  = IIf(, , )
  loc_C214DC: LitI2_Byte 0
  loc_C214DE: LitVar_Missing var_1C8
  loc_C214E1: LitI2_Byte 0
  loc_C214E3: FLdVar var_1B8
  loc_C214E7: FLdPr Me
  loc_C214EA: MemLdStr global_84
  loc_C214ED: FLdPr Me
  loc_C214F0: MemLdStr global_80
  loc_C214F3: AryLock
  loc_C214F6: Ary1LdPr
  loc_C214F7: MemLdRfVar from_stack_1.global_32
  loc_C214FA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C214FF: AryUnlock
  loc_C21502: FFreeAd var_AC = "": var_B4 = "": var_BC = "": var_168 = ""
  loc_C2150F: FFreeVar var_D4 = "": var_F4 = "": var_124 = "": var_164 = "": var_198 = "": var_144 = "": var_1B8 = ""
  loc_C21522: FLdRfVar var_D4
  loc_C21525: FLdRfVar var_BC
  loc_C21528: LitVarStr var_98, "Peri2010"
  loc_C2152D: PopAdLdVar
  loc_C2152E: FLdRfVar var_B4
  loc_C21531: FLdRfVar var_AC
  loc_C21534: FLdPr var_F8
  loc_C21537: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C2153C: FLdPr var_AC
  loc_C2153F:  = Me.Fields
  loc_C21544: FLdPr var_B4
  loc_C21547: from_stack_2 = Me.Item(from_stack_1)
  loc_C2154C: FLdPr var_BC
  loc_C2154F:  = Me.Value
  loc_C21554: FLdRfVar var_210
  loc_C21557: LitVarStr var_134, "Peri2010"
  loc_C2155C: PopAdLdVar
  loc_C2155D: FLdRfVar var_20C
  loc_C21560: FLdRfVar var_168
  loc_C21563: FLdPr var_F8
  loc_C21566: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C2156B: FLdPr var_168
  loc_C2156E:  = Me.Fields
  loc_C21573: FLdPr var_20C
  loc_C21576: from_stack_2 = Me.Item(from_stack_1)
  loc_C2157B: LitI4 1
  loc_C21580: LitI4 1
  loc_C21585: LitVarStr var_154, "0.00"
  loc_C2158A: FStVarCopyObj var_124
  loc_C2158D: FLdRfVar var_124
  loc_C21590: FLdZeroAd var_210
  loc_C21593: CVarAd
  loc_C21597: FLdRfVar var_144
  loc_C2159A: ImpAdCallFPR4  = Format(, )
  loc_C2159F: FLdRfVar var_144
  loc_C215A2: LitVarStr var_178, vbNullString
  loc_C215A7: FStVarCopyObj var_198
  loc_C215AA: FLdRfVar var_198
  loc_C215AD: FLdRfVar var_D4
  loc_C215B0: LitVarI2 var_A8, 0
  loc_C215B5: HardType
  loc_C215B6: EqVar var_E4
  loc_C215BA: FStVar var_164
  loc_C215BE: FLdRfVar var_164
  loc_C215C1: FLdRfVar var_1B8
  loc_C215C4: ImpAdCallFPR4  = IIf(, , )
  loc_C215C9: LitI2_Byte 0
  loc_C215CB: LitVar_Missing var_1C8
  loc_C215CE: LitI2_Byte 0
  loc_C215D0: FLdVar var_1B8
  loc_C215D4: FLdPr Me
  loc_C215D7: MemLdStr global_84
  loc_C215DA: FLdPr Me
  loc_C215DD: MemLdStr global_80
  loc_C215E0: AryLock
  loc_C215E3: Ary1LdPr
  loc_C215E4: MemLdRfVar from_stack_1.global_36
  loc_C215E7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C215EC: AryUnlock
  loc_C215EF: FFreeAd var_AC = "": var_B4 = "": var_BC = "": var_168 = ""
  loc_C215FC: FFreeVar var_D4 = "": var_F4 = "": var_124 = "": var_164 = "": var_198 = "": var_144 = "": var_1B8 = ""
  loc_C2160F: FLdRfVar var_D4
  loc_C21612: FLdRfVar var_BC
  loc_C21615: LitVarStr var_98, "Peri2011"
  loc_C2161A: PopAdLdVar
  loc_C2161B: FLdRfVar var_B4
  loc_C2161E: FLdRfVar var_AC
  loc_C21621: FLdPr var_F8
  loc_C21624: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C21629: FLdPr var_AC
  loc_C2162C:  = Me.Fields
  loc_C21631: FLdPr var_B4
  loc_C21634: from_stack_2 = Me.Item(from_stack_1)
  loc_C21639: FLdPr var_BC
  loc_C2163C:  = Me.Value
  loc_C21641: FLdRfVar var_210
  loc_C21644: LitVarStr var_134, "Peri2011"
  loc_C21649: PopAdLdVar
  loc_C2164A: FLdRfVar var_20C
  loc_C2164D: FLdRfVar var_168
  loc_C21650: FLdPr var_F8
  loc_C21653: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C21658: FLdPr var_168
  loc_C2165B:  = Me.Fields
  loc_C21660: FLdPr var_20C
  loc_C21663: from_stack_2 = Me.Item(from_stack_1)
  loc_C21668: LitI4 1
  loc_C2166D: LitI4 1
  loc_C21672: LitVarStr var_154, "0.00"
  loc_C21677: FStVarCopyObj var_124
  loc_C2167A: FLdRfVar var_124
  loc_C2167D: FLdZeroAd var_210
  loc_C21680: CVarAd
  loc_C21684: FLdRfVar var_144
  loc_C21687: ImpAdCallFPR4  = Format(, )
  loc_C2168C: FLdRfVar var_144
  loc_C2168F: LitVarStr var_178, vbNullString
  loc_C21694: FStVarCopyObj var_198
  loc_C21697: FLdRfVar var_198
  loc_C2169A: FLdRfVar var_D4
  loc_C2169D: LitVarI2 var_A8, 0
  loc_C216A2: HardType
  loc_C216A3: EqVar var_E4
  loc_C216A7: FStVar var_164
  loc_C216AB: FLdRfVar var_164
  loc_C216AE: FLdRfVar var_1B8
  loc_C216B1: ImpAdCallFPR4  = IIf(, , )
  loc_C216B6: LitI2_Byte 0
  loc_C216B8: LitVar_Missing var_1C8
  loc_C216BB: LitI2_Byte 0
  loc_C216BD: FLdVar var_1B8
  loc_C216C1: FLdPr Me
  loc_C216C4: MemLdStr global_84
  loc_C216C7: FLdPr Me
  loc_C216CA: MemLdStr global_80
  loc_C216CD: AryLock
  loc_C216D0: Ary1LdPr
  loc_C216D1: MemLdRfVar from_stack_1.global_40
  loc_C216D4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C216D9: AryUnlock
  loc_C216DC: FFreeAd var_AC = "": var_B4 = "": var_BC = "": var_168 = ""
  loc_C216E9: FFreeVar var_D4 = "": var_F4 = "": var_124 = "": var_164 = "": var_198 = "": var_144 = "": var_1B8 = ""
  loc_C216FC: FLdRfVar var_D4
  loc_C216FF: FLdRfVar var_BC
  loc_C21702: LitVarStr var_98, "Peri2012"
  loc_C21707: PopAdLdVar
  loc_C21708: FLdRfVar var_B4
  loc_C2170B: FLdRfVar var_AC
  loc_C2170E: FLdPr var_F8
  loc_C21711: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C21716: FLdPr var_AC
  loc_C21719:  = Me.Fields
  loc_C2171E: FLdPr var_B4
  loc_C21721: from_stack_2 = Me.Item(from_stack_1)
  loc_C21726: FLdPr var_BC
  loc_C21729:  = Me.Value
  loc_C2172E: FLdRfVar var_210
  loc_C21731: LitVarStr var_134, "Peri2012"
  loc_C21736: PopAdLdVar
  loc_C21737: FLdRfVar var_20C
  loc_C2173A: FLdRfVar var_168
  loc_C2173D: FLdPr var_F8
  loc_C21740: from_stack_1v = clsdifunto.RsFrmGet()
  loc_C21745: FLdPr var_168
  loc_C21748:  = Me.Fields
  loc_C2174D: FLdPr var_20C
  loc_C21750: from_stack_2 = Me.Item(from_stack_1)
  loc_C21755: LitI4 1
  loc_C2175A: LitI4 1
  loc_C2175F: LitVarStr var_154, "0.00"
  loc_C21764: FStVarCopyObj var_124
  loc_C21767: FLdRfVar var_124
  loc_C2176A: FLdZeroAd var_210
  loc_C2176D: CVarAd
  loc_C21771: FLdRfVar var_144
  loc_C21774: ImpAdCallFPR4  = Format(, )
  loc_C21779: FLdRfVar var_144
  loc_C2177C: LitVarStr var_178, vbNullString
  loc_C21781: FStVarCopyObj var_198
  loc_C21784: FLdRfVar var_198
  loc_C21787: FLdRfVar var_D4
  loc_C2178A: LitVarI2 var_A8, 0
  loc_C2178F: HardType
  loc_C21790: EqVar var_E4
  loc_C21794: FStVar var_164
  loc_C21798: FLdRfVar var_164
  loc_C2179B: FLdRfVar var_1B8
  loc_C2179E: ImpAdCallFPR4  = IIf(, , )
  loc_C217A3: LitI2_Byte 0
  loc_C217A5: LitVar_Missing var_1C8
  loc_C217A8: LitI2_Byte 0
  loc_C217AA: FLdVar var_1B8
  loc_C217AE: FLdPr Me
  loc_C217B1: MemLdStr global_84
  loc_C217B4: FLdPr Me
  loc_C217B7: MemLdStr global_80
  loc_C217BA: AryLock
  loc_C217BD: Ary1LdPr
  loc_C217BE: MemLdRfVar from_stack_1.global_44
  loc_C217C1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C217C6: AryUnlock
  loc_C217C9: FFreeAd var_AC = "": var_B4 = "": var_BC = "": var_168 = ""
  loc_C217D6: FFreeVar var_D4 = "": var_F4 = "": var_124 = "": var_164 = "": var_198 = "": var_144 = "": var_1B8 = ""
  loc_C217E9: LitI2_Byte 1
  loc_C217EB: PopTmpLdAd2 var_AE
  loc_C217EE: FLdPr var_F8
  loc_C217F1: Call clsdifunto.Move(from_stack_1v)
  loc_C217F6: FLdPr Me
  loc_C217F9: MemLdRfVar from_stack_1.global_84
  loc_C217FC: NextI4 var_204, loc_C21058
  loc_C21801: LitNothing
  loc_C21803: FStAd var_F8 
  loc_C21807: LitI2_Byte &HFF
  loc_C21809: FLdPr Me
  loc_C2180C: MemStI2 bGenerado
  loc_C2180F: LitI4 0
  loc_C21814: CI2I4
  loc_C21815: FLdPr Me
  loc_C21818: Me.MousePointer = from_stack_1
  loc_C2181D: LitVarStr var_98, vbNullString
  loc_C21822: PopAdLdVar
  loc_C21823: FLdPr Me
  loc_C21826: VCallAd Control_ID_statusBar
  loc_C21829: FStAdFunc var_AC
  loc_C2182C: FLdPr var_AC
  loc_C2182F: LateIdSt
  loc_C21834: FFree1Ad var_AC
  loc_C21837: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B4C6C8
  'Data Table: 464FB4
  loc_B4C340: FLdRfVar var_88
  loc_B4C343: LitI2_Byte 0
  loc_B4C345: LitI2_Byte &HFF
  loc_B4C347: ImpAdLdI4 MemVar_D93C84
  loc_B4C34A: FLdPr Me
  loc_B4C34D: MemLdRfVar from_stack_1.global_72
  loc_B4C350: NewIfNullPr IFileSystem3
  loc_B4C353: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B4C358: ILdRf var_88
  loc_B4C35B: FLdPr Me
  loc_B4C35E: MemStVarAd
  loc_B4C362: FFree1Ad var_88
  loc_B4C365: LitI2_Byte &HFF
  loc_B4C367: ImpAdStI2 MemVar_D93C8A
  loc_B4C36A: Call Proc_231_20_B7890C()
  loc_B4C36F: LitI4 1
  loc_B4C374: FLdPr Me
  loc_B4C377: MemLdRfVar from_stack_1.global_84
  loc_B4C37A: FLdPr Me
  loc_B4C37D: MemLdStr global_80
  loc_B4C380: LitI2_Byte 1
  loc_B4C382: FnUBound
  loc_B4C384: ForI4 var_90
  loc_B4C38A: FLdPr Me
  loc_B4C38D: MemLdStr global_84
  loc_B4C390: FLdPr Me
  loc_B4C393: MemLdStr global_80
  loc_B4C396: AryLock
  loc_B4C399: Ary1LdRf
  loc_B4C39A: FStR4 var_98
  loc_B4C39D: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B4C3A2: PopAdLdVar
  loc_B4C3A3: FLdPr Me
  loc_B4C3A6: MemLdRfVar from_stack_1.htmFile
  loc_B4C3A9: LdPrVar
  loc_B4C3AB: LateMemCall
  loc_B4C3B1: LitStr vbNullString
  loc_B4C3B4: LitI2_Byte 0
  loc_B4C3B6: LitI2_Byte 0
  loc_B4C3B8: LitI2_Byte 0
  loc_B4C3BA: LitStr "right"
  loc_B4C3BD: FMemLdR4 var_98(0)
  loc_B4C3C2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C3C7: CVarStr var_C8
  loc_B4C3CA: PopAdLdVar
  loc_B4C3CB: FLdPr Me
  loc_B4C3CE: MemLdRfVar from_stack_1.htmFile
  loc_B4C3D1: LdPrVar
  loc_B4C3D3: LateMemCall
  loc_B4C3D9: FFree1Var var_C8 = ""
  loc_B4C3DC: LitStr vbNullString
  loc_B4C3DF: LitI2_Byte 0
  loc_B4C3E1: LitI2_Byte 0
  loc_B4C3E3: LitI2_Byte 0
  loc_B4C3E5: LitStr "left"
  loc_B4C3E8: FMemLdR4 var_98(4)
  loc_B4C3ED: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C3F2: CVarStr var_C8
  loc_B4C3F5: PopAdLdVar
  loc_B4C3F6: FLdPr Me
  loc_B4C3F9: MemLdRfVar from_stack_1.htmFile
  loc_B4C3FC: LdPrVar
  loc_B4C3FE: LateMemCall
  loc_B4C404: FFree1Var var_C8 = ""
  loc_B4C407: LitStr vbNullString
  loc_B4C40A: LitI2_Byte 0
  loc_B4C40C: LitI2_Byte 0
  loc_B4C40E: LitI2_Byte 0
  loc_B4C410: LitStr "left"
  loc_B4C413: FMemLdR4 var_98(8)
  loc_B4C418: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C41D: CVarStr var_C8
  loc_B4C420: PopAdLdVar
  loc_B4C421: FLdPr Me
  loc_B4C424: MemLdRfVar from_stack_1.htmFile
  loc_B4C427: LdPrVar
  loc_B4C429: LateMemCall
  loc_B4C42F: FFree1Var var_C8 = ""
  loc_B4C432: LitStr vbNullString
  loc_B4C435: LitI2_Byte 0
  loc_B4C437: LitI2_Byte 0
  loc_B4C439: LitI2_Byte 0
  loc_B4C43B: LitStr "right"
  loc_B4C43E: FMemLdR4 var_98(12)
  loc_B4C443: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C448: CVarStr var_C8
  loc_B4C44B: PopAdLdVar
  loc_B4C44C: FLdPr Me
  loc_B4C44F: MemLdRfVar from_stack_1.htmFile
  loc_B4C452: LdPrVar
  loc_B4C454: LateMemCall
  loc_B4C45A: FFree1Var var_C8 = ""
  loc_B4C45D: LitStr vbNullString
  loc_B4C460: LitI2_Byte 0
  loc_B4C462: LitI2_Byte 0
  loc_B4C464: LitI2_Byte 0
  loc_B4C466: LitStr "right"
  loc_B4C469: FMemLdR4 var_98(16)
  loc_B4C46E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C473: CVarStr var_C8
  loc_B4C476: PopAdLdVar
  loc_B4C477: FLdPr Me
  loc_B4C47A: MemLdRfVar from_stack_1.htmFile
  loc_B4C47D: LdPrVar
  loc_B4C47F: LateMemCall
  loc_B4C485: FFree1Var var_C8 = ""
  loc_B4C488: LitStr vbNullString
  loc_B4C48B: LitI2_Byte 0
  loc_B4C48D: LitI2_Byte 0
  loc_B4C48F: LitI2_Byte 0
  loc_B4C491: LitStr "center"
  loc_B4C494: FMemLdR4 var_98(20)
  loc_B4C499: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C49E: CVarStr var_C8
  loc_B4C4A1: PopAdLdVar
  loc_B4C4A2: FLdPr Me
  loc_B4C4A5: MemLdRfVar from_stack_1.htmFile
  loc_B4C4A8: LdPrVar
  loc_B4C4AA: LateMemCall
  loc_B4C4B0: FFree1Var var_C8 = ""
  loc_B4C4B3: LitStr vbNullString
  loc_B4C4B6: LitI2_Byte 0
  loc_B4C4B8: LitI2_Byte 0
  loc_B4C4BA: LitI2_Byte 0
  loc_B4C4BC: LitStr "center"
  loc_B4C4BF: FMemLdR4 var_98(24)
  loc_B4C4C4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C4C9: CVarStr var_C8
  loc_B4C4CC: PopAdLdVar
  loc_B4C4CD: FLdPr Me
  loc_B4C4D0: MemLdRfVar from_stack_1.htmFile
  loc_B4C4D3: LdPrVar
  loc_B4C4D5: LateMemCall
  loc_B4C4DB: FFree1Var var_C8 = ""
  loc_B4C4DE: LitStr vbNullString
  loc_B4C4E1: LitI2_Byte 0
  loc_B4C4E3: LitI2_Byte 0
  loc_B4C4E5: LitI2_Byte 0
  loc_B4C4E7: LitStr "right"
  loc_B4C4EA: FMemLdR4 var_98(28)
  loc_B4C4EF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C4F4: CVarStr var_C8
  loc_B4C4F7: PopAdLdVar
  loc_B4C4F8: FLdPr Me
  loc_B4C4FB: MemLdRfVar from_stack_1.htmFile
  loc_B4C4FE: LdPrVar
  loc_B4C500: LateMemCall
  loc_B4C506: FFree1Var var_C8 = ""
  loc_B4C509: LitStr vbNullString
  loc_B4C50C: LitI2_Byte 0
  loc_B4C50E: LitI2_Byte 0
  loc_B4C510: LitI2_Byte 0
  loc_B4C512: LitStr "right"
  loc_B4C515: FMemLdR4 var_98(32)
  loc_B4C51A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C51F: CVarStr var_C8
  loc_B4C522: PopAdLdVar
  loc_B4C523: FLdPr Me
  loc_B4C526: MemLdRfVar from_stack_1.htmFile
  loc_B4C529: LdPrVar
  loc_B4C52B: LateMemCall
  loc_B4C531: FFree1Var var_C8 = ""
  loc_B4C534: LitStr vbNullString
  loc_B4C537: LitI2_Byte 0
  loc_B4C539: LitI2_Byte 0
  loc_B4C53B: LitI2_Byte 0
  loc_B4C53D: LitStr "right"
  loc_B4C540: FMemLdR4 var_98(36)
  loc_B4C545: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C54A: CVarStr var_C8
  loc_B4C54D: PopAdLdVar
  loc_B4C54E: FLdPr Me
  loc_B4C551: MemLdRfVar from_stack_1.htmFile
  loc_B4C554: LdPrVar
  loc_B4C556: LateMemCall
  loc_B4C55C: FFree1Var var_C8 = ""
  loc_B4C55F: LitStr vbNullString
  loc_B4C562: LitI2_Byte 0
  loc_B4C564: LitI2_Byte 0
  loc_B4C566: LitI2_Byte 0
  loc_B4C568: LitStr "right"
  loc_B4C56B: FMemLdR4 var_98(40)
  loc_B4C570: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C575: CVarStr var_C8
  loc_B4C578: PopAdLdVar
  loc_B4C579: FLdPr Me
  loc_B4C57C: MemLdRfVar from_stack_1.htmFile
  loc_B4C57F: LdPrVar
  loc_B4C581: LateMemCall
  loc_B4C587: FFree1Var var_C8 = ""
  loc_B4C58A: LitStr vbNullString
  loc_B4C58D: LitI2_Byte 0
  loc_B4C58F: LitI2_Byte 0
  loc_B4C591: LitI2_Byte 0
  loc_B4C593: LitStr "right"
  loc_B4C596: FMemLdR4 var_98(44)
  loc_B4C59B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B4C5A0: CVarStr var_C8
  loc_B4C5A3: PopAdLdVar
  loc_B4C5A4: FLdPr Me
  loc_B4C5A7: MemLdRfVar from_stack_1.htmFile
  loc_B4C5AA: LdPrVar
  loc_B4C5AC: LateMemCall
  loc_B4C5B2: FFree1Var var_C8 = ""
  loc_B4C5B5: LitVarStr var_A8, "     </tr>"
  loc_B4C5BA: PopAdLdVar
  loc_B4C5BB: FLdPr Me
  loc_B4C5BE: MemLdRfVar from_stack_1.htmFile
  loc_B4C5C1: LdPrVar
  loc_B4C5C3: LateMemCall
  loc_B4C5C9: LitI4 0
  loc_B4C5CE: FStR4 var_98
  loc_B4C5D1: AryUnlock
  loc_B4C5D4: FLdPr Me
  loc_B4C5D7: MemLdRfVar from_stack_1.global_84
  loc_B4C5DA: NextI4 var_90, loc_B4C38A
  loc_B4C5DF: LitVarStr var_A8, "  <tr align=""center"" class=""Totales"">"
  loc_B4C5E4: PopAdLdVar
  loc_B4C5E5: FLdPr Me
  loc_B4C5E8: MemLdRfVar from_stack_1.htmFile
  loc_B4C5EB: LdPrVar
  loc_B4C5ED: LateMemCall
  loc_B4C5F3: LitStr "    <th colspan=""12"">"
  loc_B4C5F6: LitI4 -1
  loc_B4C5FB: LitI4 0
  loc_B4C600: LitI4 -1
  loc_B4C605: LitI4 0
  loc_B4C60A: FLdPr Me
  loc_B4C60D: MemLdStr global_80
  loc_B4C610: LitI2_Byte 1
  loc_B4C612: FnUBound
  loc_B4C614: CVarI4
  loc_B4C618: ImpAdCallI2 FormatNumber(, , , , )
  loc_B4C61D: FStStrNoPop var_CC
  loc_B4C620: ConcatStr
  loc_B4C621: FStStrNoPop var_D0
  loc_B4C624: LitStr " cuenta"
  loc_B4C627: ConcatStr
  loc_B4C628: CVarStr var_130
  loc_B4C62B: LitVarStr var_100, vbNullString
  loc_B4C630: FStVarCopyObj var_110
  loc_B4C633: FLdRfVar var_110
  loc_B4C636: LitVarStr var_E0, "s"
  loc_B4C63B: FStVarCopyObj var_F0
  loc_B4C63E: FLdRfVar var_F0
  loc_B4C641: FLdPr Me
  loc_B4C644: MemLdStr global_80
  loc_B4C647: LitI2_Byte 1
  loc_B4C649: FnUBound
  loc_B4C64B: LitI4 1
  loc_B4C650: GtI4
  loc_B4C651: CVarBoolI2 var_B8
  loc_B4C655: FLdRfVar var_120
  loc_B4C658: ImpAdCallFPR4  = IIf(, , )
  loc_B4C65D: FLdRfVar var_120
  loc_B4C660: ConcatVar var_140
  loc_B4C664: LitVarStr var_150, ".</th>"
  loc_B4C669: ConcatVar var_160
  loc_B4C66D: PopAdLdVar
  loc_B4C66E: FLdPr Me
  loc_B4C671: MemLdRfVar from_stack_1.htmFile
  loc_B4C674: LdPrVar
  loc_B4C676: LateMemCall
  loc_B4C67C: FFreeStr var_CC = ""
  loc_B4C683: FFreeVar var_C8 = "": var_B8 = "": var_F0 = "": var_110 = "": var_130 = "": var_120 = "": var_140 = ""
  loc_B4C696: LitVarStr var_A8, "  </tr>"
  loc_B4C69B: PopAdLdVar
  loc_B4C69C: FLdPr Me
  loc_B4C69F: MemLdRfVar from_stack_1.htmFile
  loc_B4C6A2: LdPrVar
  loc_B4C6A4: LateMemCall
  loc_B4C6AA: Call Proc_231_21_A0AA08()
  loc_B4C6AF: FLdPr Me
  loc_B4C6B2: MemLdRfVar from_stack_1.htmFile
  loc_B4C6B5: LdPrVar
  loc_B4C6B7: LateMemCall
  loc_B4C6BD: LitStr vbNullString
  loc_B4C6C0: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B4C6C5: ExitProcHresult
End Sub

Private Function Proc_231_18_9AEAC4() '9AEAC4
  'Data Table: 464FB4
  loc_9AEAC0: ExitProcHresult
End Function

Private Function Proc_231_19_9AEBFC() '9AEBFC
  'Data Table: 464FB4
  loc_9AEBF8: ExitProcHresult
  loc_9AEBFB: Ary1LdCy
End Function

Private Function Proc_231_20_B7890C() 'B7890C
  'Data Table: 464FB4
  loc_B78444: LitVarStr var_98, "<html>"
  loc_B78449: PopAdLdVar
  loc_B7844A: FLdPr Me
  loc_B7844D: MemLdRfVar from_stack_1.htmFile
  loc_B78450: LdPrVar
  loc_B78452: LateMemCall
  loc_B78458: LitVarStr var_98, "<head>"
  loc_B7845D: PopAdLdVar
  loc_B7845E: FLdPr Me
  loc_B78461: MemLdRfVar from_stack_1.htmFile
  loc_B78464: LdPrVar
  loc_B78466: LateMemCall
  loc_B7846C: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B78471: PopAdLdVar
  loc_B78472: FLdPr Me
  loc_B78475: MemLdRfVar from_stack_1.htmFile
  loc_B78478: LdPrVar
  loc_B7847A: LateMemCall
  loc_B78480: LitStr "<title>"
  loc_B78483: FLdRfVar var_AC
  loc_B78486: FLdPr Me
  loc_B78489:  = Me.Caption
  loc_B7848E: ILdRf var_AC
  loc_B78491: ConcatStr
  loc_B78492: FStStrNoPop var_B0
  loc_B78495: LitStr "</title>"
  loc_B78498: ConcatStr
  loc_B78499: CVarStr var_C0
  loc_B7849C: PopAdLdVar
  loc_B7849D: FLdPr Me
  loc_B784A0: MemLdRfVar from_stack_1.htmFile
  loc_B784A3: LdPrVar
  loc_B784A5: LateMemCall
  loc_B784AB: FFreeStr var_AC = ""
  loc_B784B2: FFree1Var var_C0 = ""
  loc_B784B5: ILdRf Me
  loc_B784B8: CastAd
  loc_B784BB: FStAdFunc var_C4
  loc_B784BE: FLdRfVar var_C4
  loc_B784C1: ImpAdCallFPR4  = Proc_57_6_B93510()
  loc_B784C6: FFree1Ad var_C4
  loc_B784C9: LitI4 0
  loc_B784CE: FStStrCopy var_B0
  loc_B784D1: FLdRfVar var_B0
  loc_B784D4: LitI4 0
  loc_B784D9: FStStrCopy var_AC
  loc_B784DC: FLdRfVar var_AC
  loc_B784DF: LitI2_Byte 0
  loc_B784E1: PopTmpLdAd2 var_C6
  loc_B784E4: FLdPr Me
  loc_B784E7: MemLdRfVar from_stack_1.htmFile
  loc_B784EA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B784EF: FFreeStr var_AC = ""
  loc_B784F6: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B784FB: PopAdLdVar
  loc_B784FC: FLdPr Me
  loc_B784FF: MemLdRfVar from_stack_1.htmFile
  loc_B78502: LdPrVar
  loc_B78504: LateMemCall
  loc_B7850A: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_B7850F: PopAdLdVar
  loc_B78510: FLdPr Me
  loc_B78513: MemLdRfVar from_stack_1.htmFile
  loc_B78516: LdPrVar
  loc_B78518: LateMemCall
  loc_B7851E: LitStr "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B78521: LitI2_Byte &H5F
  loc_B78523: CStrUI1
  loc_B78525: FStStrNoPop var_AC
  loc_B78528: ConcatStr
  loc_B78529: FStStrNoPop var_B0
  loc_B7852C: LitStr """ height="""
  loc_B7852F: ConcatStr
  loc_B78530: FStStrNoPop var_CC
  loc_B78533: LitI2_Byte &H3C
  loc_B78535: CStrUI1
  loc_B78537: FStStrNoPop var_D0
  loc_B7853A: ConcatStr
  loc_B7853B: FStStrNoPop var_D4
  loc_B7853E: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B78541: ConcatStr
  loc_B78542: FStStrNoPop var_D8
  loc_B78545: LitStr "Municipalidad de Guaymallén"
  loc_B78548: ConcatStr
  loc_B78549: FStStrNoPop var_DC
  loc_B7854C: LitStr "</p>"
  loc_B7854F: ConcatStr
  loc_B78550: CVarStr var_C0
  loc_B78553: PopAdLdVar
  loc_B78554: FLdPr Me
  loc_B78557: MemLdRfVar from_stack_1.htmFile
  loc_B7855A: LdPrVar
  loc_B7855C: LateMemCall
  loc_B78562: FFreeStr var_AC = "": var_B0 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B78573: FFree1Var var_C0 = ""
  loc_B78576: LitStr "    <p>"
  loc_B78579: FLdRfVar var_AC
  loc_B7857C: FLdPr Me
  loc_B7857F:  = Me.Caption
  loc_B78584: ILdRf var_AC
  loc_B78587: ConcatStr
  loc_B78588: FStStrNoPop var_B0
  loc_B7858B: LitStr "</p></th>"
  loc_B7858E: ConcatStr
  loc_B7858F: CVarStr var_C0
  loc_B78592: PopAdLdVar
  loc_B78593: FLdPr Me
  loc_B78596: MemLdRfVar from_stack_1.htmFile
  loc_B78599: LdPrVar
  loc_B7859B: LateMemCall
  loc_B785A1: FFreeStr var_AC = ""
  loc_B785A8: FFree1Var var_C0 = ""
  loc_B785AB: LitVarStr var_98, "  </tr>"
  loc_B785B0: PopAdLdVar
  loc_B785B1: FLdPr Me
  loc_B785B4: MemLdRfVar from_stack_1.htmFile
  loc_B785B7: LdPrVar
  loc_B785B9: LateMemCall
  loc_B785BF: LitVarStr var_98, "  <tr>"
  loc_B785C4: PopAdLdVar
  loc_B785C5: FLdPr Me
  loc_B785C8: MemLdRfVar from_stack_1.htmFile
  loc_B785CB: LdPrVar
  loc_B785CD: LateMemCall
  loc_B785D3: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_B785D8: PopAdLdVar
  loc_B785D9: FLdPr Me
  loc_B785DC: MemLdRfVar from_stack_1.htmFile
  loc_B785DF: LdPrVar
  loc_B785E1: LateMemCall
  loc_B785E7: LitVarStr var_98, "  </tr>"
  loc_B785EC: PopAdLdVar
  loc_B785ED: FLdPr Me
  loc_B785F0: MemLdRfVar from_stack_1.htmFile
  loc_B785F3: LdPrVar
  loc_B785F5: LateMemCall
  loc_B785FB: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_B78600: PopAdLdVar
  loc_B78601: FLdPr Me
  loc_B78604: MemLdRfVar from_stack_1.htmFile
  loc_B78607: LdPrVar
  loc_B78609: LateMemCall
  loc_B7860F: LitStr "    <td align=""left""><strong>"
  loc_B78612: FLdPr Me
  loc_B78615: MemLdStr global_88
  loc_B78618: ConcatStr
  loc_B78619: FStStrNoPop var_AC
  loc_B7861C: LitStr "</strong>"
  loc_B7861F: ConcatStr
  loc_B78620: CVarStr var_C0
  loc_B78623: PopAdLdVar
  loc_B78624: FLdPr Me
  loc_B78627: MemLdRfVar from_stack_1.htmFile
  loc_B7862A: LdPrVar
  loc_B7862C: LateMemCall
  loc_B78632: FFree1Str var_AC
  loc_B78635: FFree1Var var_C0 = ""
  loc_B78638: FLdRfVar var_C6
  loc_B7863B: FLdPr Me
  loc_B7863E: VCallAd Control_ID_CementerioCbo
  loc_B78641: FStAdFunc var_C4
  loc_B78644: FLdPr var_C4
  loc_B78647:  = Me.ListIndex
  loc_B7864C: FLdI2 var_C6
  loc_B7864F: LitI2_Byte 0
  loc_B78651: GtI2
  loc_B78652: FFree1Ad var_C4
  loc_B78655: BranchF loc_B7868E
  loc_B78658: LitStr "                   <br><strong>Cementerio: </strong>"
  loc_B7865B: FLdRfVar var_AC
  loc_B7865E: FLdPr Me
  loc_B78661: VCallAd Control_ID_CementerioCbo
  loc_B78664: FStAdFunc var_C4
  loc_B78667: FLdPr var_C4
  loc_B7866A:  = Me.Text
  loc_B7866F: ILdRf var_AC
  loc_B78672: ConcatStr
  loc_B78673: CVarStr var_C0
  loc_B78676: PopAdLdVar
  loc_B78677: FLdPr Me
  loc_B7867A: MemLdRfVar from_stack_1.htmFile
  loc_B7867D: LdPrVar
  loc_B7867F: LateMemCall
  loc_B78685: FFree1Str var_AC
  loc_B78688: FFree1Ad var_C4
  loc_B7868B: FFree1Var var_C0 = ""
  loc_B7868E: LitVarStr var_98, "    </td>"
  loc_B78693: PopAdLdVar
  loc_B78694: FLdPr Me
  loc_B78697: MemLdRfVar from_stack_1.htmFile
  loc_B7869A: LdPrVar
  loc_B7869C: LateMemCall
  loc_B786A2: LitStr "    <td align=""left""><strong>"
  loc_B786A5: FLdPr Me
  loc_B786A8: MemLdStr global_88
  loc_B786AB: ConcatStr
  loc_B786AC: FStStrNoPop var_AC
  loc_B786AF: LitStr "</strong>"
  loc_B786B2: ConcatStr
  loc_B786B3: CVarStr var_C0
  loc_B786B6: PopAdLdVar
  loc_B786B7: FLdPr Me
  loc_B786BA: MemLdRfVar from_stack_1.htmFile
  loc_B786BD: LdPrVar
  loc_B786BF: LateMemCall
  loc_B786C5: FFree1Str var_AC
  loc_B786C8: FFree1Var var_C0 = ""
  loc_B786CB: FLdRfVar var_C6
  loc_B786CE: FLdPr Me
  loc_B786D1: VCallAd Control_ID_ActivasOpt
  loc_B786D4: FStAdFunc var_C4
  loc_B786D7: FLdPr var_C4
  loc_B786DA:  = Me.Value
  loc_B786DF: LitVarStr var_11C, "    <br><strong>"
  loc_B786E4: LitVarStr var_EC, "Todas las Cuentas"
  loc_B786E9: FStVarCopyObj var_FC
  loc_B786EC: FLdRfVar var_FC
  loc_B786EF: LitVarStr var_A8, "Solo Cuentas Activas"
  loc_B786F4: FStVarCopyObj var_C0
  loc_B786F7: FLdRfVar var_C0
  loc_B786FA: FLdI2 var_C6
  loc_B786FD: LitI2_Byte &HFF
  loc_B786FF: EqI2
  loc_B78700: CVarBoolI2 var_98
  loc_B78704: FLdRfVar var_10C
  loc_B78707: ImpAdCallFPR4  = IIf(, , )
  loc_B7870C: FLdRfVar var_10C
  loc_B7870F: ConcatVar var_12C
  loc_B78713: LitVarStr var_13C, " </strong>"
  loc_B78718: ConcatVar var_14C
  loc_B7871C: PopAdLdVar
  loc_B7871D: FLdPr Me
  loc_B78720: MemLdRfVar from_stack_1.htmFile
  loc_B78723: LdPrVar
  loc_B78725: LateMemCall
  loc_B7872B: FFree1Ad var_C4
  loc_B7872E: FFreeVar var_98 = "": var_C0 = "": var_FC = "": var_10C = "": var_12C = ""
  loc_B7873D: LitVarStr var_98, "    </td>"
  loc_B78742: PopAdLdVar
  loc_B78743: FLdPr Me
  loc_B78746: MemLdRfVar from_stack_1.htmFile
  loc_B78749: LdPrVar
  loc_B7874B: LateMemCall
  loc_B78751: LitVarStr var_98, "  </tr>"
  loc_B78756: PopAdLdVar
  loc_B78757: FLdPr Me
  loc_B7875A: MemLdRfVar from_stack_1.htmFile
  loc_B7875D: LdPrVar
  loc_B7875F: LateMemCall
  loc_B78765: LitVarStr var_98, "</table>"
  loc_B7876A: PopAdLdVar
  loc_B7876B: FLdPr Me
  loc_B7876E: MemLdRfVar from_stack_1.htmFile
  loc_B78771: LdPrVar
  loc_B78773: LateMemCall
  loc_B78779: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B7877E: PopAdLdVar
  loc_B7877F: FLdPr Me
  loc_B78782: MemLdRfVar from_stack_1.htmFile
  loc_B78785: LdPrVar
  loc_B78787: LateMemCall
  loc_B7878D: LitVarStr var_98, "  <thead>"
  loc_B78792: PopAdLdVar
  loc_B78793: FLdPr Me
  loc_B78796: MemLdRfVar from_stack_1.htmFile
  loc_B78799: LdPrVar
  loc_B7879B: LateMemCall
  loc_B787A1: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_B787A6: PopAdLdVar
  loc_B787A7: FLdPr Me
  loc_B787AA: MemLdRfVar from_stack_1.htmFile
  loc_B787AD: LdPrVar
  loc_B787AF: LateMemCall
  loc_B787B5: LitVarStr var_98, "    <th rowspan=2>Cuenta</th>"
  loc_B787BA: PopAdLdVar
  loc_B787BB: FLdPr Me
  loc_B787BE: MemLdRfVar from_stack_1.htmFile
  loc_B787C1: LdPrVar
  loc_B787C3: LateMemCall
  loc_B787C9: LitVarStr var_98, "    <th rowspan=2>Apellido y Nombre</th>"
  loc_B787CE: PopAdLdVar
  loc_B787CF: FLdPr Me
  loc_B787D2: MemLdRfVar from_stack_1.htmFile
  loc_B787D5: LdPrVar
  loc_B787D7: LateMemCall
  loc_B787DD: LitVarStr var_98, "    <th rowspan=2>Cementerio</th>"
  loc_B787E2: PopAdLdVar
  loc_B787E3: FLdPr Me
  loc_B787E6: MemLdRfVar from_stack_1.htmFile
  loc_B787E9: LdPrVar
  loc_B787EB: LateMemCall
  loc_B787F1: LitVarStr var_98, "    <th rowspan=2>Concesión</th>"
  loc_B787F6: PopAdLdVar
  loc_B787F7: FLdPr Me
  loc_B787FA: MemLdRfVar from_stack_1.htmFile
  loc_B787FD: LdPrVar
  loc_B787FF: LateMemCall
  loc_B78805: LitVarStr var_98, "    <th rowspan=2>Año</th>"
  loc_B7880A: PopAdLdVar
  loc_B7880B: FLdPr Me
  loc_B7880E: MemLdRfVar from_stack_1.htmFile
  loc_B78811: LdPrVar
  loc_B78813: LateMemCall
  loc_B78819: LitVarStr var_98, "    <th rowspan=2>Fecha de Baja</th>"
  loc_B7881E: PopAdLdVar
  loc_B7881F: FLdPr Me
  loc_B78822: MemLdRfVar from_stack_1.htmFile
  loc_B78825: LdPrVar
  loc_B78827: LateMemCall
  loc_B7882D: LitVarStr var_98, "    <th rowspan=2>Fecha de Vencimiento</th>"
  loc_B78832: PopAdLdVar
  loc_B78833: FLdPr Me
  loc_B78836: MemLdRfVar from_stack_1.htmFile
  loc_B78839: LdPrVar
  loc_B7883B: LateMemCall
  loc_B78841: LitVarStr var_98, "    <th colspan=5>Expensas Aforadas en los últimos 5 ejercicios</th>"
  loc_B78846: PopAdLdVar
  loc_B78847: FLdPr Me
  loc_B7884A: MemLdRfVar from_stack_1.htmFile
  loc_B7884D: LdPrVar
  loc_B7884F: LateMemCall
  loc_B78855: LitVarStr var_98, "  </tr>"
  loc_B7885A: PopAdLdVar
  loc_B7885B: FLdPr Me
  loc_B7885E: MemLdRfVar from_stack_1.htmFile
  loc_B78861: LdPrVar
  loc_B78863: LateMemCall
  loc_B78869: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_B7886E: PopAdLdVar
  loc_B7886F: FLdPr Me
  loc_B78872: MemLdRfVar from_stack_1.htmFile
  loc_B78875: LdPrVar
  loc_B78877: LateMemCall
  loc_B7887D: LitVarStr var_98, "    <th>2008</th>"
  loc_B78882: PopAdLdVar
  loc_B78883: FLdPr Me
  loc_B78886: MemLdRfVar from_stack_1.htmFile
  loc_B78889: LdPrVar
  loc_B7888B: LateMemCall
  loc_B78891: LitVarStr var_98, "    <th>2009</th>"
  loc_B78896: PopAdLdVar
  loc_B78897: FLdPr Me
  loc_B7889A: MemLdRfVar from_stack_1.htmFile
  loc_B7889D: LdPrVar
  loc_B7889F: LateMemCall
  loc_B788A5: LitVarStr var_98, "    <th>2010</th>"
  loc_B788AA: PopAdLdVar
  loc_B788AB: FLdPr Me
  loc_B788AE: MemLdRfVar from_stack_1.htmFile
  loc_B788B1: LdPrVar
  loc_B788B3: LateMemCall
  loc_B788B9: LitVarStr var_98, "    <th>2011</th>"
  loc_B788BE: PopAdLdVar
  loc_B788BF: FLdPr Me
  loc_B788C2: MemLdRfVar from_stack_1.htmFile
  loc_B788C5: LdPrVar
  loc_B788C7: LateMemCall
  loc_B788CD: LitVarStr var_98, "    <th>2012</th>"
  loc_B788D2: PopAdLdVar
  loc_B788D3: FLdPr Me
  loc_B788D6: MemLdRfVar from_stack_1.htmFile
  loc_B788D9: LdPrVar
  loc_B788DB: LateMemCall
  loc_B788E1: LitVarStr var_98, "  </tr>"
  loc_B788E6: PopAdLdVar
  loc_B788E7: FLdPr Me
  loc_B788EA: MemLdRfVar from_stack_1.htmFile
  loc_B788ED: LdPrVar
  loc_B788EF: LateMemCall
  loc_B788F5: LitVarStr var_98, "  </thead>"
  loc_B788FA: PopAdLdVar
  loc_B788FB: FLdPr Me
  loc_B788FE: MemLdRfVar from_stack_1.htmFile
  loc_B78901: LdPrVar
  loc_B78903: LateMemCall
  loc_B78909: ExitProcHresult
End Function

Private Function Proc_231_21_A0AA08() 'A0AA08
  'Data Table: 464FB4
  loc_A0A9C8: LitVarStr var_94, "</table>"
  loc_A0A9CD: PopAdLdVar
  loc_A0A9CE: FLdPr Me
  loc_A0A9D1: MemLdRfVar from_stack_1.htmFile
  loc_A0A9D4: LdPrVar
  loc_A0A9D6: LateMemCall
  loc_A0A9DC: LitVarStr var_94, "</body>"
  loc_A0A9E1: PopAdLdVar
  loc_A0A9E2: FLdPr Me
  loc_A0A9E5: MemLdRfVar from_stack_1.htmFile
  loc_A0A9E8: LdPrVar
  loc_A0A9EA: LateMemCall
  loc_A0A9F0: LitVarStr var_94, "</html>"
  loc_A0A9F5: PopAdLdVar
  loc_A0A9F6: FLdPr Me
  loc_A0A9F9: MemLdRfVar from_stack_1.htmFile
  loc_A0A9FC: LdPrVar
  loc_A0A9FE: LateMemCall
  loc_A0AA04: ExitProcHresult
End Function
