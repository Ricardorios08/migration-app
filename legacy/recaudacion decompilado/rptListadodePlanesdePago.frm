VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodePlanesdePago
  Caption = "Listado de Planes de Pago"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodePlanesdePago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 7812
  ClientHeight = 2880
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2625
    Width = 7815
    Height = 255
    TabIndex = 10
    OleObjectBlob = "rptListadodePlanesdePago.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 1560
    Width = 855
    Height = 735
    TabIndex = 5
    Cancel = -1  'True
    Picture = "rptListadodePlanesdePago.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodePlanesdePago.frx":0B9C
    Left = 7200
    Top = 1320
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1320
    Width = 1815
    Height = 1215
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 3
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1320
    Width = 4095
    Height = 1215
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 2
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 1
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7575
    Height = 1215
    TabIndex = 6
    Begin VB.TextBox CodiFapaTxt
      ForeColor = &HFF0000&
      Left = 1560
      Top = 360
      Width = 1695
      Height = 345
      TabIndex = 0
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5760
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 4
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Facilidad:"
      Left = 480
      Top = 360
      Width = 1005
      Height = 300
      TabIndex = 11
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6600
    Top = 1920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "rptListadodePlanesdePago.frx":0C00
  End
End

Attribute VB_Name = "rptListadodePlanesdePago"

Public bGenerado As Boolean

Private Type UDT_1_0056084C
  bStruc(36) As Byte ' String fields: 9
End Type

Private Type UDT_2_00568EC0
  bStruc(52) As Byte ' String fields: 5
End Type

Private Type UDT_3_00568EF8
  bStruc(116) As Byte ' String fields: 13
End Type


Private Sub CodiFapaTxt_GotFocus() '9C66F8
  'Data Table: 4545F4
  loc_9C66E4: FLdPr Me
  loc_9C66E7: VCallAd Control_ID_CodiFapaTxt
  loc_9C66EA: CVarAd
  loc_9C66EE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C66F3: FFree1Var var_94 = ""
  loc_9C66F6: ExitProcHresult
End Sub

Private Sub CodiFapaTxt_Validate(Cancel As Boolean) 'A69450
  'Data Table: 4545F4
  loc_A693E8: FLdRfVar var_8C
  loc_A693EB: FLdPr Me
  loc_A693EE: VCallAd Control_ID_CodiFapaTxt
  loc_A693F1: FStAdFunc var_88
  loc_A693F4: FLdPr var_88
  loc_A693F7:  = Me.Text
  loc_A693FC: LitI2_Byte 0
  loc_A693FE: LitI2_Byte 0
  loc_A69400: ILdRf var_8C
  loc_A69403: LitStr "Facilidad"
  loc_A69406: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A6940B: FStStrNoPop var_90
  loc_A6940E: FLdPr Me
  loc_A69411: MemStStrCopy
  loc_A69415: FFreeStr var_8C = ""
  loc_A6941C: FFree1Ad var_88
  loc_A6941F: FLdPr Me
  loc_A69422: MemLdStr global_92
  loc_A69425: LitStr vbNullString
  loc_A69428: NeStr
  loc_A6942A: BranchF loc_A6944F
  loc_A6942D: FLdPr Me
  loc_A69430: MemLdStr global_92
  loc_A69433: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A69438: FLdPr Me
  loc_A6943B: VCallAd Control_ID_CodiFapaTxt
  loc_A6943E: CVarAd
  loc_A69442: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A69447: FFree1Var var_A0 = ""
  loc_A6944A: LitI2_Byte &HFF
  loc_A6944C: IStI2 Cancel
  loc_A6944F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A3CA0C
  'Data Table: 4545F4
  loc_A3C9BC: LitI2_Byte 0
  loc_A3C9BE: FLdPr Me
  loc_A3C9C1: MemStI2 bGenerado
  loc_A3C9C4: LitI2_Byte 0
  loc_A3C9C6: ILdRf Me
  loc_A3C9C9: CastAd
  loc_A3C9CC: FStAdFunc var_88
  loc_A3C9CF: FLdRfVar var_88
  loc_A3C9D2: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A3C9D7: FFree1Ad var_88
  loc_A3C9DA: LitStr vbNullString
  loc_A3C9DD: FLdPr Me
  loc_A3C9E0: VCallAd Control_ID_CodiFapaTxt
  loc_A3C9E3: FStAdFunc var_88
  loc_A3C9E6: FLdPr var_88
  loc_A3C9E9: Me.Text = from_stack_1
  loc_A3C9EE: FFree1Ad var_88
  loc_A3C9F1: Call HabilitarCriterio()
  loc_A3C9F6: ILdRf Me
  loc_A3C9F9: CastAd
  loc_A3C9FC: FStAdFunc var_88
  loc_A3C9FF: FLdRfVar var_88
  loc_A3CA02: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A3CA07: FFree1Ad var_88
  loc_A3CA0A: ExitProcHresult
End Sub

Private Sub Form_Load() '9DF74C
  'Data Table: 4545F4
  loc_9DF730: ILdRf Me
  loc_9DF733: CastAd
  loc_9DF736: FStAdFunc var_88
  loc_9DF739: FLdRfVar var_88
  loc_9DF73C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9DF741: FFree1Ad var_88
  loc_9DF744: Call cmdNueva_Click()
  loc_9DF749: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D9458
  'Data Table: 4545F4
  loc_9D9440: FLdPr Me
  loc_9D9443: VCallAd Control_ID_wbbReporte
  loc_9D9446: FStAdFunc var_88
  loc_9D9449: FLdRfVar var_88
  loc_9D944C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D9451: FFree1Ad var_88
  loc_9D9454: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A41140
  'Data Table: 4545F4
  loc_A410EC: LitI2_Byte 0
  loc_A410EE: ILdRf Me
  loc_A410F1: CastAd
  loc_A410F4: FStAdFunc var_88
  loc_A410F7: FLdRfVar var_88
  loc_A410FA: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A410FF: FFree1Ad var_88
  loc_A41102: FLdRfVar var_8A
  loc_A41105: FLdPr Me
  loc_A41108: VCallAd Control_ID_cmdPredeterminada
  loc_A4110B: FStAdFunc var_88
  loc_A4110E: FLdPr var_88
  loc_A41111:  = Me.Enabled
  loc_A41116: FLdI2 var_8A
  loc_A41119: NotI4
  loc_A4111A: FFree1Ad var_88
  loc_A4111D: BranchF loc_A41128
  loc_A41120: ImpAdCallFPR4 DoEvents()
  loc_A41125: Branch loc_A41102
  loc_A41128: ILdRf Me
  loc_A4112B: FStAdNoPop
  loc_A4112F: ImpAdLdRf MemVar_D9C5D8
  loc_A41132: NewIfNullPr Global
  loc_A41135: Global.Unload from_stack_1
  loc_A4113A: FFree1Ad var_88
  loc_A4113D: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A000B0
  'Data Table: 4545F4
  loc_A00080: LitVarStr var_94, "Cerrando..."
  loc_A00085: PopAdLdVar
  loc_A00086: FLdPr Me
  loc_A00089: VCallAd Control_ID_statusBar
  loc_A0008C: FStAdFunc var_A8
  loc_A0008F: FLdPr var_A8
  loc_A00092: LateIdSt
  loc_A00097: FFree1Ad var_A8
  loc_A0009A: ILdRf Me
  loc_A0009D: FStAdNoPop
  loc_A000A1: ImpAdLdRf MemVar_D9C5D8
  loc_A000A4: NewIfNullPr Global
  loc_A000A7: Global.Unload from_stack_1
  loc_A000AC: FFree1Ad var_A8
  loc_A000AF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D9374
  'Data Table: 4545F4
  loc_9D935C: ILdRf Me
  loc_9D935F: CastAd
  loc_9D9362: FStAdFunc var_88
  loc_9D9365: FLdRfVar var_88
  loc_9D9368: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D936D: FFree1Ad var_88
  loc_9D9370: ExitProcHresult
  loc_9D9371: DOC
End Sub

Private Sub cmdPdf_Click() '9DF9CC
  'Data Table: 4545F4
  loc_9DF9B0: LitI2_Byte 0
  loc_9DF9B2: PopTmpLdAd2 var_8A
  loc_9DF9B5: ILdRf Me
  loc_9DF9B8: CastAd
  loc_9DF9BB: FStAdFunc var_88
  loc_9DF9BE: FLdRfVar var_88
  loc_9DF9C1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DF9C6: FFree1Ad var_88
  loc_9DF9C9: ExitProcHresult
  loc_9DF9CA: MemLdStr global_31828
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A19810
  'Data Table: 4545F4
  loc_A197D8: FLdPr Me
  loc_A197DB: VCallAd Control_ID_statusBar
  loc_A197DE: FStAdFunc var_88
  loc_A197E1: FLdPr var_88
  loc_A197E4: LateIdLdVar var_98 DispID_1 0
  loc_A197EB: CStrVarTmp
  loc_A197EC: CVarStr var_A8
  loc_A197EF: PopAdLdVar
  loc_A197F0: FLdPr Me
  loc_A197F3: VCallAd Control_ID_statusBar
  loc_A197F6: FStAdFunc var_BC
  loc_A197F9: FLdPr var_BC
  loc_A197FC: LateIdSt
  loc_A19801: FFreeAd var_88 = ""
  loc_A19808: FFreeVar var_98 = ""
  loc_A1980F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '454FE4
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '454FF3
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A10F8C
  'Data Table: 4545F4
  loc_A10F58: LitI4 0
  loc_A10F5D: LitI4 0
  loc_A10F62: FLdRfVar var_88
  loc_A10F65: Redim
  loc_A10F6F: FLdPr Me
  loc_A10F72: VCallAd Control_ID_CodiFapaTxt
  loc_A10F75: CVarAd
  loc_A10F79: ParmAry1St
  loc_A10F7F: FLdRfVar var_88
  loc_A10F82: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A10F87: FLdRfVar var_88
  loc_A10F8A: Erase
  loc_A10F8B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C59148
  'Data Table: 4545F4
  loc_C5825C: FLdPr Me
  loc_C5825F: MemLdI2 bGenerado
  loc_C58262: BranchF loc_C58266
  loc_C58265: ExitProcHresult
  loc_C58266: LitVarStr var_94, "Generando reporte..."
  loc_C5826B: PopAdLdVar
  loc_C5826C: FLdPr Me
  loc_C5826F: VCallAd Control_ID_statusBar
  loc_C58272: FStAdFunc var_A8
  loc_C58275: FLdPr var_A8
  loc_C58278: LateIdSt
  loc_C5827D: FFree1Ad var_A8
  loc_C58280: LitI4 &HB
  loc_C58285: CI2I4
  loc_C58286: FLdPr Me
  loc_C58289: Me.MousePointer = from_stack_1
  loc_C5828E: FLdPr Me
  loc_C58291: MemLdRfVar from_stack_1.global_76
  loc_C58294: NewIfNullAd
  loc_C58297: FStAd var_AC 
  loc_C5829B: LitStr "SELECT facipago.*, DetaPers FROM facipago LEFT JOIN infogov.persona ON infogov.persona.CucuPers = facipago.CucuPers"
  loc_C5829E: LitStr " WHERE CodiFapa = "
  loc_C582A1: ConcatStr
  loc_C582A2: FStStrNoPop var_B4
  loc_C582A5: FLdRfVar var_B0
  loc_C582A8: FLdPr Me
  loc_C582AB: VCallAd Control_ID_CodiFapaTxt
  loc_C582AE: FStAdFunc var_A8
  loc_C582B1: FLdPr var_A8
  loc_C582B4:  = Me.Text
  loc_C582B9: ILdRf var_B0
  loc_C582BC: ConcatStr
  loc_C582BD: FStStrNoPop var_B8
  loc_C582C0: FLdPr var_AC
  loc_C582C3: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_C582C8: FFreeStr var_B4 = "": var_B0 = ""
  loc_C582D1: FFree1Ad var_A8
  loc_C582D4: FLdRfVar var_BC
  loc_C582D7: FLdPr var_AC
  loc_C582DA: from_stack_1 = clsfacipago.RecordCount
  loc_C582DF: ILdRf var_BC
  loc_C582E2: LitI4 0
  loc_C582E7: EqI4
  loc_C582E8: BranchF loc_C582F6
  loc_C582EB: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C582EE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C582F3: Branch loc_C5911D
  loc_C582F6: LitI4 1
  loc_C582FB: FLdRfVar var_BC
  loc_C582FE: FLdPr var_AC
  loc_C58301: from_stack_1 = clsfacipago.RecordCount
  loc_C58306: ILdRf var_BC
  loc_C58309: FLdPr Me
  loc_C5830C: MemLdRfVar from_stack_1.global_84
  loc_C5830F: Redim
  loc_C58319: FLdPr var_AC
  loc_C5831C: Call clsfacipago.MoveFirst()
  loc_C58321: LitI2_Byte 1
  loc_C58323: FLdPr Me
  loc_C58326: MemLdRfVar from_stack_1.global_88
  loc_C58329: FLdPr Me
  loc_C5832C: MemLdStr global_84
  loc_C5832F: LitI2_Byte 1
  loc_C58331: FnUBound
  loc_C58333: CI2I4
  loc_C58334: ForI2 var_C0
  loc_C5833A: FLdRfVar var_BC
  loc_C5833D: FLdPr var_AC
  loc_C58340: from_stack_1 = clsfacipago.CodiFapa
  loc_C58345: LitI2_Byte 0
  loc_C58347: LitVar_Missing var_D4
  loc_C5834A: LitI2_Byte 0
  loc_C5834C: ILdRf var_BC
  loc_C5834F: CVarI4
  loc_C58353: PopAdLdVar
  loc_C58354: FLdPr Me
  loc_C58357: MemLdI2 global_88
  loc_C5835A: CI4UI1
  loc_C5835B: FLdPr Me
  loc_C5835E: MemLdStr global_84
  loc_C58361: AryLock
  loc_C58364: Ary1LdPr
  loc_C58365: MemLdRfVar from_stack_1.global_0
  loc_C58368: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C5836D: AryUnlock
  loc_C58370: FFree1Var var_D4 = ""
  loc_C58373: FLdRfVar var_D6
  loc_C58376: FLdPr var_AC
  loc_C58379: from_stack_1 = clsfacipago.CodiTifa
  loc_C5837E: LitI2_Byte 0
  loc_C58380: LitVar_Missing var_D4
  loc_C58383: LitI2_Byte 0
  loc_C58385: FLdI2 var_D6
  loc_C58388: CVarI2 var_94
  loc_C5838B: PopAdLdVar
  loc_C5838C: FLdPr Me
  loc_C5838F: MemLdI2 global_88
  loc_C58392: CI4UI1
  loc_C58393: FLdPr Me
  loc_C58396: MemLdStr global_84
  loc_C58399: AryLock
  loc_C5839C: Ary1LdPr
  loc_C5839D: MemLdRfVar from_stack_1.global_4
  loc_C583A0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C583A5: AryUnlock
  loc_C583A8: FFree1Var var_D4 = ""
  loc_C583AB: FLdRfVar var_D6
  loc_C583AE: FLdPr var_AC
  loc_C583B1: from_stack_1 = clsfacipago.CacuFapa
  loc_C583B6: LitI2_Byte 0
  loc_C583B8: LitVar_Missing var_D4
  loc_C583BB: LitI2_Byte 0
  loc_C583BD: FLdI2 var_D6
  loc_C583C0: CVarI2 var_94
  loc_C583C3: PopAdLdVar
  loc_C583C4: FLdPr Me
  loc_C583C7: MemLdI2 global_88
  loc_C583CA: CI4UI1
  loc_C583CB: FLdPr Me
  loc_C583CE: MemLdStr global_84
  loc_C583D1: AryLock
  loc_C583D4: Ary1LdPr
  loc_C583D5: MemLdRfVar from_stack_1.global_8
  loc_C583D8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C583DD: AryUnlock
  loc_C583E0: FFree1Var var_D4 = ""
  loc_C583E3: FLdRfVar var_D6
  loc_C583E6: FLdPr var_AC
  loc_C583E9: from_stack_1 = clsfacipago.CaapFapa
  loc_C583EE: LitI2_Byte 0
  loc_C583F0: LitVar_Missing var_D4
  loc_C583F3: LitI2_Byte 0
  loc_C583F5: FLdI2 var_D6
  loc_C583F8: CVarI2 var_94
  loc_C583FB: PopAdLdVar
  loc_C583FC: FLdPr Me
  loc_C583FF: MemLdI2 global_88
  loc_C58402: CI4UI1
  loc_C58403: FLdPr Me
  loc_C58406: MemLdStr global_84
  loc_C58409: AryLock
  loc_C5840C: Ary1LdPr
  loc_C5840D: MemLdRfVar from_stack_1.global_12
  loc_C58410: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58415: AryUnlock
  loc_C58418: FFree1Var var_D4 = ""
  loc_C5841B: FLdRfVar var_D4
  loc_C5841E: FLdPr var_AC
  loc_C58421: from_stack_1 = clsfacipago.FealFapa
  loc_C58426: LitI2_Byte 0
  loc_C58428: LitVar_Missing var_E8
  loc_C5842B: LitI2_Byte 0
  loc_C5842D: FLdVar var_D4
  loc_C58431: FLdPr Me
  loc_C58434: MemLdI2 global_88
  loc_C58437: CI4UI1
  loc_C58438: FLdPr Me
  loc_C5843B: MemLdStr global_84
  loc_C5843E: AryLock
  loc_C58441: Ary1LdPr
  loc_C58442: MemLdRfVar from_stack_1.global_16
  loc_C58445: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C5844A: AryUnlock
  loc_C5844D: FFreeVar var_D4 = ""
  loc_C58454: FLdRfVar var_D4
  loc_C58457: FLdPr var_AC
  loc_C5845A: from_stack_1 = clsfacipago.FepaFapa
  loc_C5845F: LitI2_Byte 0
  loc_C58461: LitVar_Missing var_E8
  loc_C58464: LitI2_Byte 0
  loc_C58466: FLdVar var_D4
  loc_C5846A: FLdPr Me
  loc_C5846D: MemLdI2 global_88
  loc_C58470: CI4UI1
  loc_C58471: FLdPr Me
  loc_C58474: MemLdStr global_84
  loc_C58477: AryLock
  loc_C5847A: Ary1LdPr
  loc_C5847B: MemLdRfVar from_stack_1.global_20
  loc_C5847E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58483: AryUnlock
  loc_C58486: FFreeVar var_D4 = ""
  loc_C5848D: FLdRfVar var_D6
  loc_C58490: FLdPr var_AC
  loc_C58493: from_stack_1 = clsfacipago.CodiOfic
  loc_C58498: LitI2_Byte 0
  loc_C5849A: LitVar_Missing var_D4
  loc_C5849D: LitI2_Byte 0
  loc_C5849F: FLdUI1
  loc_C584A3: CVarUI1
  loc_C584A7: PopAdLdVar
  loc_C584A8: FLdPr Me
  loc_C584AB: MemLdI2 global_88
  loc_C584AE: CI4UI1
  loc_C584AF: FLdPr Me
  loc_C584B2: MemLdStr global_84
  loc_C584B5: AryLock
  loc_C584B8: Ary1LdPr
  loc_C584B9: MemLdRfVar from_stack_1.global_24
  loc_C584BC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C584C1: AryUnlock
  loc_C584C4: FFree1Var var_D4 = ""
  loc_C584C7: FLdRfVar var_B0
  loc_C584CA: FLdPr var_AC
  loc_C584CD: from_stack_1 = clsfacipago.CuenCtct
  loc_C584D2: LitI2_Byte 0
  loc_C584D4: LitVar_Missing var_E8
  loc_C584D7: LitI2_Byte 0
  loc_C584D9: FLdZeroAd var_B0
  loc_C584DC: CVarStr var_D4
  loc_C584DF: PopAdLdVar
  loc_C584E0: FLdPr Me
  loc_C584E3: MemLdI2 global_88
  loc_C584E6: CI4UI1
  loc_C584E7: FLdPr Me
  loc_C584EA: MemLdStr global_84
  loc_C584ED: AryLock
  loc_C584F0: Ary1LdPr
  loc_C584F1: MemLdRfVar from_stack_1.global_28
  loc_C584F4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C584F9: AryUnlock
  loc_C584FC: FFreeVar var_D4 = ""
  loc_C58503: FLdRfVar var_D4
  loc_C58506: FLdPr var_AC
  loc_C58509: from_stack_1 = clsfacipago.DetaPers
  loc_C5850E: LitI2_Byte 0
  loc_C58510: LitVar_Missing var_E8
  loc_C58513: LitI2_Byte 0
  loc_C58515: FLdVar var_D4
  loc_C58519: FLdPr Me
  loc_C5851C: MemLdI2 global_88
  loc_C5851F: CI4UI1
  loc_C58520: FLdPr Me
  loc_C58523: MemLdStr global_84
  loc_C58526: AryLock
  loc_C58529: Ary1LdPr
  loc_C5852A: MemLdRfVar from_stack_1.global_32
  loc_C5852D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58532: AryUnlock
  loc_C58535: FFreeVar var_D4 = ""
  loc_C5853C: FLdRfVar var_B0
  loc_C5853F: FLdPr var_AC
  loc_C58542: from_stack_1 = clsfacipago.EstaFapa
  loc_C58547: LitI2_Byte 0
  loc_C58549: LitVar_Missing var_E8
  loc_C5854C: LitI2_Byte 0
  loc_C5854E: FLdZeroAd var_B0
  loc_C58551: CVarStr var_D4
  loc_C58554: PopAdLdVar
  loc_C58555: FLdPr Me
  loc_C58558: MemLdI2 global_88
  loc_C5855B: CI4UI1
  loc_C5855C: FLdPr Me
  loc_C5855F: MemLdStr global_84
  loc_C58562: AryLock
  loc_C58565: Ary1LdPr
  loc_C58566: MemLdRfVar from_stack_1.global_36
  loc_C58569: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C5856E: AryUnlock
  loc_C58571: FFreeVar var_D4 = ""
  loc_C58578: FLdRfVar var_F0
  loc_C5857B: FLdPr var_AC
  loc_C5857E: from_stack_1 = clsfacipago.CapiFapa
  loc_C58583: LitI2_Byte 0
  loc_C58585: LitVar_Missing var_D4
  loc_C58588: LitI2_Byte &HFF
  loc_C5858A: FLdFPR8 var_F0
  loc_C5858D: CVarR8
  loc_C58591: PopAdLdVar
  loc_C58592: FLdPr Me
  loc_C58595: MemLdI2 global_88
  loc_C58598: CI4UI1
  loc_C58599: FLdPr Me
  loc_C5859C: MemLdStr global_84
  loc_C5859F: AryLock
  loc_C585A2: Ary1LdPr
  loc_C585A3: MemLdRfVar from_stack_1.global_40
  loc_C585A6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C585AB: AryUnlock
  loc_C585AE: FFree1Var var_D4 = ""
  loc_C585B1: FLdRfVar var_F0
  loc_C585B4: FLdPr var_AC
  loc_C585B7: from_stack_1 = clsfacipago.DecaFapa
  loc_C585BC: LitI2_Byte 0
  loc_C585BE: LitVar_Missing var_D4
  loc_C585C1: LitI2_Byte &HFF
  loc_C585C3: FLdFPR8 var_F0
  loc_C585C6: CVarR8
  loc_C585CA: PopAdLdVar
  loc_C585CB: FLdPr Me
  loc_C585CE: MemLdI2 global_88
  loc_C585D1: CI4UI1
  loc_C585D2: FLdPr Me
  loc_C585D5: MemLdStr global_84
  loc_C585D8: AryLock
  loc_C585DB: Ary1LdPr
  loc_C585DC: MemLdRfVar from_stack_1.global_44
  loc_C585DF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C585E4: AryUnlock
  loc_C585E7: FFree1Var var_D4 = ""
  loc_C585EA: FLdRfVar var_F0
  loc_C585ED: FLdPr var_AC
  loc_C585F0: from_stack_1 = clsfacipago.RecaFapa
  loc_C585F5: LitI2_Byte 0
  loc_C585F7: LitVar_Missing var_D4
  loc_C585FA: LitI2_Byte &HFF
  loc_C585FC: FLdFPR8 var_F0
  loc_C585FF: CVarR8
  loc_C58603: PopAdLdVar
  loc_C58604: FLdPr Me
  loc_C58607: MemLdI2 global_88
  loc_C5860A: CI4UI1
  loc_C5860B: FLdPr Me
  loc_C5860E: MemLdStr global_84
  loc_C58611: AryLock
  loc_C58614: Ary1LdPr
  loc_C58615: MemLdRfVar from_stack_1.global_48
  loc_C58618: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C5861D: AryUnlock
  loc_C58620: FFree1Var var_D4 = ""
  loc_C58623: FLdRfVar var_F0
  loc_C58626: FLdPr var_AC
  loc_C58629: from_stack_1 = clsfacipago.DereFapa
  loc_C5862E: LitI2_Byte 0
  loc_C58630: LitVar_Missing var_D4
  loc_C58633: LitI2_Byte &HFF
  loc_C58635: FLdFPR8 var_F0
  loc_C58638: CVarR8
  loc_C5863C: PopAdLdVar
  loc_C5863D: FLdPr Me
  loc_C58640: MemLdI2 global_88
  loc_C58643: CI4UI1
  loc_C58644: FLdPr Me
  loc_C58647: MemLdStr global_84
  loc_C5864A: AryLock
  loc_C5864D: Ary1LdPr
  loc_C5864E: MemLdRfVar from_stack_1.bGenerado
  loc_C58651: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58656: AryUnlock
  loc_C58659: FFree1Var var_D4 = ""
  loc_C5865C: FLdRfVar var_F0
  loc_C5865F: FLdPr var_AC
  loc_C58662: from_stack_1 = clsfacipago.ApreFapa
  loc_C58667: LitI2_Byte 0
  loc_C58669: LitVar_Missing var_D4
  loc_C5866C: LitI2_Byte &HFF
  loc_C5866E: FLdFPR8 var_F0
  loc_C58671: CVarR8
  loc_C58675: PopAdLdVar
  loc_C58676: FLdPr Me
  loc_C58679: MemLdI2 global_88
  loc_C5867C: CI4UI1
  loc_C5867D: FLdPr Me
  loc_C58680: MemLdStr global_84
  loc_C58683: AryLock
  loc_C58686: Ary1LdPr
  loc_C58687: MemLdRfVar from_stack_1.global_56
  loc_C5868A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C5868F: AryUnlock
  loc_C58692: FFree1Var var_D4 = ""
  loc_C58695: FLdRfVar var_F0
  loc_C58698: FLdPr var_AC
  loc_C5869B: from_stack_1 = clsfacipago.InteFapa
  loc_C586A0: LitI2_Byte 0
  loc_C586A2: LitVar_Missing var_D4
  loc_C586A5: LitI2_Byte &HFF
  loc_C586A7: FLdFPR8 var_F0
  loc_C586AA: CVarR8
  loc_C586AE: PopAdLdVar
  loc_C586AF: FLdPr Me
  loc_C586B2: MemLdI2 global_88
  loc_C586B5: CI4UI1
  loc_C586B6: FLdPr Me
  loc_C586B9: MemLdStr global_84
  loc_C586BC: AryLock
  loc_C586BF: Ary1LdPr
  loc_C586C0: MemLdRfVar from_stack_1.global_60
  loc_C586C3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C586C8: AryUnlock
  loc_C586CB: FFree1Var var_D4 = ""
  loc_C586CE: FLdRfVar var_F0
  loc_C586D1: FLdPr var_AC
  loc_C586D4: from_stack_1 = clsfacipago.TotaFapa
  loc_C586D9: LitI2_Byte 0
  loc_C586DB: LitVar_Missing var_D4
  loc_C586DE: LitI2_Byte &HFF
  loc_C586E0: FLdFPR8 var_F0
  loc_C586E3: CVarR8
  loc_C586E7: PopAdLdVar
  loc_C586E8: FLdPr Me
  loc_C586EB: MemLdI2 global_88
  loc_C586EE: CI4UI1
  loc_C586EF: FLdPr Me
  loc_C586F2: MemLdStr global_84
  loc_C586F5: AryLock
  loc_C586F8: Ary1LdPr
  loc_C586F9: MemLdRfVar from_stack_1.global_72
  loc_C586FC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58701: AryUnlock
  loc_C58704: FFree1Var var_D4 = ""
  loc_C58707: LitI2_Byte 0
  loc_C58709: LitVar_Missing var_D4
  loc_C5870C: LitI2_Byte &HFF
  loc_C5870E: LitVarI2 var_94, 0
  loc_C58713: PopAdLdVar
  loc_C58714: FLdPr Me
  loc_C58717: MemLdI2 global_88
  loc_C5871A: CI4UI1
  loc_C5871B: FLdPr Me
  loc_C5871E: MemLdStr global_84
  loc_C58721: AryLock
  loc_C58724: Ary1LdPr
  loc_C58725: MemLdRfVar from_stack_1.global_80
  loc_C58728: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C5872D: AryUnlock
  loc_C58730: FFree1Var var_D4 = ""
  loc_C58733: LitI2_Byte 0
  loc_C58735: LitVar_Missing var_D4
  loc_C58738: LitI2_Byte &HFF
  loc_C5873A: LitVarI2 var_94, 0
  loc_C5873F: PopAdLdVar
  loc_C58740: FLdPr Me
  loc_C58743: MemLdI2 global_88
  loc_C58746: CI4UI1
  loc_C58747: FLdPr Me
  loc_C5874A: MemLdStr global_84
  loc_C5874D: AryLock
  loc_C58750: Ary1LdPr
  loc_C58751: MemLdRfVar from_stack_1.global_84
  loc_C58754: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58759: AryUnlock
  loc_C5875C: FFree1Var var_D4 = ""
  loc_C5875F: LitI2_Byte 0
  loc_C58761: LitVar_Missing var_D4
  loc_C58764: LitI2_Byte &HFF
  loc_C58766: LitVarI2 var_94, 0
  loc_C5876B: PopAdLdVar
  loc_C5876C: FLdPr Me
  loc_C5876F: MemLdI2 global_88
  loc_C58772: CI4UI1
  loc_C58773: FLdPr Me
  loc_C58776: MemLdStr global_84
  loc_C58779: AryLock
  loc_C5877C: Ary1LdPr
  loc_C5877D: MemLdRfVar from_stack_1.global_88
  loc_C58780: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58785: AryUnlock
  loc_C58788: FFree1Var var_D4 = ""
  loc_C5878B: LitI2_Byte 0
  loc_C5878D: LitVar_Missing var_D4
  loc_C58790: LitI2_Byte &HFF
  loc_C58792: LitVarI2 var_94, 0
  loc_C58797: PopAdLdVar
  loc_C58798: FLdPr Me
  loc_C5879B: MemLdI2 global_88
  loc_C5879E: CI4UI1
  loc_C5879F: FLdPr Me
  loc_C587A2: MemLdStr global_84
  loc_C587A5: AryLock
  loc_C587A8: Ary1LdPr
  loc_C587A9: MemLdRfVar from_stack_1.global_92
  loc_C587AC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C587B1: AryUnlock
  loc_C587B4: FFree1Var var_D4 = ""
  loc_C587B7: LitI2_Byte 0
  loc_C587B9: LitVar_Missing var_D4
  loc_C587BC: LitI2_Byte &HFF
  loc_C587BE: LitVarI2 var_94, 0
  loc_C587C3: PopAdLdVar
  loc_C587C4: FLdPr Me
  loc_C587C7: MemLdI2 global_88
  loc_C587CA: CI4UI1
  loc_C587CB: FLdPr Me
  loc_C587CE: MemLdStr global_84
  loc_C587D1: AryLock
  loc_C587D4: Ary1LdPr
  loc_C587D5: MemLdRfVar from_stack_1.global_96
  loc_C587D8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C587DD: AryUnlock
  loc_C587E0: FFree1Var var_D4 = ""
  loc_C587E3: LitI2_Byte 0
  loc_C587E5: LitVar_Missing var_D4
  loc_C587E8: LitI2_Byte &HFF
  loc_C587EA: LitVarI2 var_94, 0
  loc_C587EF: PopAdLdVar
  loc_C587F0: FLdPr Me
  loc_C587F3: MemLdI2 global_88
  loc_C587F6: CI4UI1
  loc_C587F7: FLdPr Me
  loc_C587FA: MemLdStr global_84
  loc_C587FD: AryLock
  loc_C58800: Ary1LdPr
  loc_C58801: MemLdRfVar from_stack_1.global_100
  loc_C58804: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58809: AryUnlock
  loc_C5880C: FFree1Var var_D4 = ""
  loc_C5880F: LitI2_Byte 0
  loc_C58811: LitVar_Missing var_D4
  loc_C58814: LitI2_Byte &HFF
  loc_C58816: LitVarI2 var_94, 0
  loc_C5881B: PopAdLdVar
  loc_C5881C: FLdPr Me
  loc_C5881F: MemLdI2 global_88
  loc_C58822: CI4UI1
  loc_C58823: FLdPr Me
  loc_C58826: MemLdStr global_84
  loc_C58829: AryLock
  loc_C5882C: Ary1LdPr
  loc_C5882D: MemLdRfVar from_stack_1.global_104
  loc_C58830: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58835: AryUnlock
  loc_C58838: FFree1Var var_D4 = ""
  loc_C5883B: LitI2_Byte 0
  loc_C5883D: LitVar_Missing var_D4
  loc_C58840: LitI2_Byte &HFF
  loc_C58842: LitVarI2 var_94, 0
  loc_C58847: PopAdLdVar
  loc_C58848: FLdPr Me
  loc_C5884B: MemLdI2 global_88
  loc_C5884E: CI4UI1
  loc_C5884F: FLdPr Me
  loc_C58852: MemLdStr global_84
  loc_C58855: AryLock
  loc_C58858: Ary1LdPr
  loc_C58859: MemLdRfVar from_stack_1.global_108
  loc_C5885C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58861: AryUnlock
  loc_C58864: FFree1Var var_D4 = ""
  loc_C58867: LitI2_Byte 0
  loc_C58869: LitVar_Missing var_D4
  loc_C5886C: LitI2_Byte &HFF
  loc_C5886E: LitVarI2 var_94, 0
  loc_C58873: PopAdLdVar
  loc_C58874: FLdPr Me
  loc_C58877: MemLdI2 global_88
  loc_C5887A: CI4UI1
  loc_C5887B: FLdPr Me
  loc_C5887E: MemLdStr global_84
  loc_C58881: AryLock
  loc_C58884: Ary1LdPr
  loc_C58885: MemLdRfVar from_stack_1.global_112
  loc_C58888: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C5888D: AryUnlock
  loc_C58890: FFree1Var var_D4 = ""
  loc_C58893: FLdPr Me
  loc_C58896: MemLdRfVar from_stack_1.global_80
  loc_C58899: NewIfNullAd
  loc_C5889C: FStAd var_F4 
  loc_C588A0: LitI2_Byte 0
  loc_C588A2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C588A7: FStFPR8 var_F0
  loc_C588AA: LitStr "tmp_DetaFapaConsulta"
  loc_C588AD: FLdFPR8 var_F0
  loc_C588B0: CStrDate
  loc_C588B2: FStStrNoPop var_B0
  loc_C588B5: FLdPr Me
  loc_C588B8: MemLdI2 global_88
  loc_C588BB: CI4UI1
  loc_C588BC: FLdPr Me
  loc_C588BF: MemLdStr global_84
  loc_C588C2: Ary1LdPr
  loc_C588C3: MemLdStr global_0
  loc_C588C6: CI4Str
  loc_C588C7: FLdPr var_F4
  loc_C588CA: Call clsdetafapa.CreaTemporalConsultaDetaFapa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_C588CF: FFree1Str var_B0
  loc_C588D2: LitStr "SELECT * FROM tmp_DetaFapaConsulta ORDER BY CuotDefa"
  loc_C588D5: FLdPr var_F4
  loc_C588D8: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_C588DD: FLdRfVar var_BC
  loc_C588E0: FLdPr var_F4
  loc_C588E3: from_stack_1 = clsdetafapa.RecordCount
  loc_C588E8: ILdRf var_BC
  loc_C588EB: LitI4 0
  loc_C588F0: EqI4
  loc_C588F1: BranchF loc_C58917
  loc_C588F4: LitStr "No hay detalle para la facilidad "
  loc_C588F7: FLdPr Me
  loc_C588FA: MemLdI2 global_88
  loc_C588FD: CI4UI1
  loc_C588FE: FLdPr Me
  loc_C58901: MemLdStr global_84
  loc_C58904: Ary1LdPr
  loc_C58905: MemLdStr global_0
  loc_C58908: ConcatStr
  loc_C58909: FStStrNoPop var_B0
  loc_C5890C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C58911: FFree1Str var_B0
  loc_C58914: Branch loc_C5911D
  loc_C58917: FLdRfVar var_BC
  loc_C5891A: FLdPr var_F4
  loc_C5891D: from_stack_1 = clsdetafapa.RecordCount
  loc_C58922: LitI4 1
  loc_C58927: ILdRf var_BC
  loc_C5892A: FLdPr Me
  loc_C5892D: MemLdI2 global_88
  loc_C58930: CI4UI1
  loc_C58931: FLdPr Me
  loc_C58934: MemLdStr global_84
  loc_C58937: Ary1LdPr
  loc_C58938: MemLdRfVar from_stack_1.global_76
  loc_C5893B: Redim
  loc_C58945: FLdPr var_F4
  loc_C58948: Call clsdetafapa.MoveFirst()
  loc_C5894D: LitI2_Byte 1
  loc_C5894F: FLdPr Me
  loc_C58952: MemLdRfVar from_stack_1.global_90
  loc_C58955: FLdPr Me
  loc_C58958: MemLdI2 global_88
  loc_C5895B: CI4UI1
  loc_C5895C: FLdPr Me
  loc_C5895F: MemLdStr global_84
  loc_C58962: Ary1LdPr
  loc_C58963: MemLdStr global_76
  loc_C58966: LitI2_Byte 1
  loc_C58968: FnUBound
  loc_C5896A: CI2I4
  loc_C5896B: ForI2 var_F8
  loc_C58971: FLdRfVar var_100
  loc_C58974: LitVarStr var_94, "CuotDefa"
  loc_C58979: PopAdLdVar
  loc_C5897A: FLdRfVar var_FC
  loc_C5897D: FLdRfVar var_A8
  loc_C58980: FLdPr var_F4
  loc_C58983: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_C58988: FLdPr var_A8
  loc_C5898B:  = Me.Fields
  loc_C58990: FLdPr var_FC
  loc_C58993: from_stack_2 = Me.Item(from_stack_1)
  loc_C58998: LitI2_Byte 0
  loc_C5899A: LitVar_Missing var_E8
  loc_C5899D: LitI2_Byte 0
  loc_C5899F: FLdZeroAd var_100
  loc_C589A2: CVarAd
  loc_C589A6: PopAdLdVar
  loc_C589A7: FLdPr Me
  loc_C589AA: MemLdI2 global_90
  loc_C589AD: CI4UI1
  loc_C589AE: FLdPr Me
  loc_C589B1: MemLdI2 global_88
  loc_C589B4: CI4UI1
  loc_C589B5: FLdPr Me
  loc_C589B8: MemLdStr global_84
  loc_C589BB: AryLock
  loc_C589BE: Ary1LdPr
  loc_C589BF: MemLdStr global_76
  loc_C589C2: AryLock
  loc_C589C5: Ary1LdPr
  loc_C589C6: MemLdRfVar from_stack_1.global_0
  loc_C589C9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C589CE: AryUnlock
  loc_C589D1: AryUnlock
  loc_C589D4: FFreeAd var_A8 = ""
  loc_C589DB: FFreeVar var_D4 = ""
  loc_C589E2: FLdRfVar var_D4
  loc_C589E5: FLdPr var_F4
  loc_C589E8: from_stack_1 = clsdetafapa.FeveDefa
  loc_C589ED: LitI2_Byte 0
  loc_C589EF: LitVar_Missing var_E8
  loc_C589F2: LitI2_Byte 0
  loc_C589F4: FLdVar var_D4
  loc_C589F8: FLdPr Me
  loc_C589FB: MemLdI2 global_90
  loc_C589FE: CI4UI1
  loc_C589FF: FLdPr Me
  loc_C58A02: MemLdI2 global_88
  loc_C58A05: CI4UI1
  loc_C58A06: FLdPr Me
  loc_C58A09: MemLdStr global_84
  loc_C58A0C: AryLock
  loc_C58A0F: Ary1LdPr
  loc_C58A10: MemLdStr global_76
  loc_C58A13: AryLock
  loc_C58A16: Ary1LdPr
  loc_C58A17: MemLdRfVar from_stack_1.global_4
  loc_C58A1A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58A1F: AryUnlock
  loc_C58A22: AryUnlock
  loc_C58A25: FFreeVar var_D4 = ""
  loc_C58A2C: FLdRfVar var_B0
  loc_C58A2F: FLdPr var_F4
  loc_C58A32: from_stack_1 = clsdetafapa.EstaDefa
  loc_C58A37: LitI2_Byte 0
  loc_C58A39: LitVar_Missing var_E8
  loc_C58A3C: LitI2_Byte 0
  loc_C58A3E: FLdZeroAd var_B0
  loc_C58A41: CVarStr var_D4
  loc_C58A44: PopAdLdVar
  loc_C58A45: FLdPr Me
  loc_C58A48: MemLdI2 global_90
  loc_C58A4B: CI4UI1
  loc_C58A4C: FLdPr Me
  loc_C58A4F: MemLdI2 global_88
  loc_C58A52: CI4UI1
  loc_C58A53: FLdPr Me
  loc_C58A56: MemLdStr global_84
  loc_C58A59: AryLock
  loc_C58A5C: Ary1LdPr
  loc_C58A5D: MemLdStr global_76
  loc_C58A60: AryLock
  loc_C58A63: Ary1LdPr
  loc_C58A64: MemLdRfVar from_stack_1.global_8
  loc_C58A67: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58A6C: AryUnlock
  loc_C58A6F: AryUnlock
  loc_C58A72: FFreeVar var_D4 = ""
  loc_C58A79: FLdRfVar var_D4
  loc_C58A7C: FLdPr var_F4
  loc_C58A7F: from_stack_1 = clsdetafapa.FepaDefa
  loc_C58A84: LitI2_Byte 0
  loc_C58A86: LitVar_Missing var_E8
  loc_C58A89: LitI2_Byte 0
  loc_C58A8B: FLdVar var_D4
  loc_C58A8F: FLdPr Me
  loc_C58A92: MemLdI2 global_90
  loc_C58A95: CI4UI1
  loc_C58A96: FLdPr Me
  loc_C58A99: MemLdI2 global_88
  loc_C58A9C: CI4UI1
  loc_C58A9D: FLdPr Me
  loc_C58AA0: MemLdStr global_84
  loc_C58AA3: AryLock
  loc_C58AA6: Ary1LdPr
  loc_C58AA7: MemLdStr global_76
  loc_C58AAA: AryLock
  loc_C58AAD: Ary1LdPr
  loc_C58AAE: MemLdRfVar from_stack_1.global_12
  loc_C58AB1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58AB6: AryUnlock
  loc_C58AB9: AryUnlock
  loc_C58ABC: FFreeVar var_D4 = ""
  loc_C58AC3: FLdRfVar var_B0
  loc_C58AC6: FLdPr var_F4
  loc_C58AC9: from_stack_1 = clsdetafapa.EstaDefa
  loc_C58ACE: ILdRf var_B0
  loc_C58AD1: LitStr "Pagada"
  loc_C58AD4: NeStr
  loc_C58AD6: FFree1Str var_B0
  loc_C58AD9: BranchF loc_C58E3F
  loc_C58ADC: FLdRfVar var_F0
  loc_C58ADF: FLdPr var_F4
  loc_C58AE2: from_stack_1 = clsdetafapa.CapiDefa
  loc_C58AE7: LitI2_Byte 0
  loc_C58AE9: FLdPr Me
  loc_C58AEC: MemLdI2 global_88
  loc_C58AEF: CI4UI1
  loc_C58AF0: FLdPr Me
  loc_C58AF3: MemLdStr global_84
  loc_C58AF6: AryLock
  loc_C58AF9: Ary1LdPr
  loc_C58AFA: MemLdRfVar from_stack_1.global_80
  loc_C58AFD: CVarRef
  loc_C58B02: LitI2_Byte &HFF
  loc_C58B04: FLdFPR8 var_F0
  loc_C58B07: CVarR8
  loc_C58B0B: PopAdLdVar
  loc_C58B0C: FLdPr Me
  loc_C58B0F: MemLdI2 global_90
  loc_C58B12: CI4UI1
  loc_C58B13: FLdPr Me
  loc_C58B16: MemLdI2 global_88
  loc_C58B19: CI4UI1
  loc_C58B1A: FLdPr Me
  loc_C58B1D: MemLdStr global_84
  loc_C58B20: AryLock
  loc_C58B23: Ary1LdPr
  loc_C58B24: MemLdStr global_76
  loc_C58B27: AryLock
  loc_C58B2A: Ary1LdPr
  loc_C58B2B: MemLdRfVar from_stack_1.global_16
  loc_C58B2E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58B33: AryUnlock
  loc_C58B36: AryUnlock
  loc_C58B39: AryUnlock
  loc_C58B3C: FLdRfVar var_F0
  loc_C58B3F: FLdPr var_F4
  loc_C58B42: from_stack_1 = clsdetafapa.DecaDefa
  loc_C58B47: LitI2_Byte 0
  loc_C58B49: FLdPr Me
  loc_C58B4C: MemLdI2 global_88
  loc_C58B4F: CI4UI1
  loc_C58B50: FLdPr Me
  loc_C58B53: MemLdStr global_84
  loc_C58B56: AryLock
  loc_C58B59: Ary1LdPr
  loc_C58B5A: MemLdRfVar from_stack_1.global_84
  loc_C58B5D: CVarRef
  loc_C58B62: LitI2_Byte &HFF
  loc_C58B64: FLdFPR8 var_F0
  loc_C58B67: CVarR8
  loc_C58B6B: PopAdLdVar
  loc_C58B6C: FLdPr Me
  loc_C58B6F: MemLdI2 global_90
  loc_C58B72: CI4UI1
  loc_C58B73: FLdPr Me
  loc_C58B76: MemLdI2 global_88
  loc_C58B79: CI4UI1
  loc_C58B7A: FLdPr Me
  loc_C58B7D: MemLdStr global_84
  loc_C58B80: AryLock
  loc_C58B83: Ary1LdPr
  loc_C58B84: MemLdStr global_76
  loc_C58B87: AryLock
  loc_C58B8A: Ary1LdPr
  loc_C58B8B: MemLdRfVar from_stack_1.global_20
  loc_C58B8E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58B93: AryUnlock
  loc_C58B96: AryUnlock
  loc_C58B99: AryUnlock
  loc_C58B9C: FLdRfVar var_F0
  loc_C58B9F: FLdPr var_F4
  loc_C58BA2: from_stack_1 = clsdetafapa.RecaDefa
  loc_C58BA7: LitI2_Byte 0
  loc_C58BA9: FLdPr Me
  loc_C58BAC: MemLdI2 global_88
  loc_C58BAF: CI4UI1
  loc_C58BB0: FLdPr Me
  loc_C58BB3: MemLdStr global_84
  loc_C58BB6: AryLock
  loc_C58BB9: Ary1LdPr
  loc_C58BBA: MemLdRfVar from_stack_1.global_88
  loc_C58BBD: CVarRef
  loc_C58BC2: LitI2_Byte &HFF
  loc_C58BC4: FLdFPR8 var_F0
  loc_C58BC7: CVarR8
  loc_C58BCB: PopAdLdVar
  loc_C58BCC: FLdPr Me
  loc_C58BCF: MemLdI2 global_90
  loc_C58BD2: CI4UI1
  loc_C58BD3: FLdPr Me
  loc_C58BD6: MemLdI2 global_88
  loc_C58BD9: CI4UI1
  loc_C58BDA: FLdPr Me
  loc_C58BDD: MemLdStr global_84
  loc_C58BE0: AryLock
  loc_C58BE3: Ary1LdPr
  loc_C58BE4: MemLdStr global_76
  loc_C58BE7: AryLock
  loc_C58BEA: Ary1LdPr
  loc_C58BEB: MemLdRfVar from_stack_1.global_24
  loc_C58BEE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58BF3: AryUnlock
  loc_C58BF6: AryUnlock
  loc_C58BF9: AryUnlock
  loc_C58BFC: FLdRfVar var_F0
  loc_C58BFF: FLdPr var_F4
  loc_C58C02: from_stack_1 = clsdetafapa.DereDefa
  loc_C58C07: LitI2_Byte 0
  loc_C58C09: FLdPr Me
  loc_C58C0C: MemLdI2 global_88
  loc_C58C0F: CI4UI1
  loc_C58C10: FLdPr Me
  loc_C58C13: MemLdStr global_84
  loc_C58C16: AryLock
  loc_C58C19: Ary1LdPr
  loc_C58C1A: MemLdRfVar from_stack_1.global_92
  loc_C58C1D: CVarRef
  loc_C58C22: LitI2_Byte &HFF
  loc_C58C24: FLdFPR8 var_F0
  loc_C58C27: CVarR8
  loc_C58C2B: PopAdLdVar
  loc_C58C2C: FLdPr Me
  loc_C58C2F: MemLdI2 global_90
  loc_C58C32: CI4UI1
  loc_C58C33: FLdPr Me
  loc_C58C36: MemLdI2 global_88
  loc_C58C39: CI4UI1
  loc_C58C3A: FLdPr Me
  loc_C58C3D: MemLdStr global_84
  loc_C58C40: AryLock
  loc_C58C43: Ary1LdPr
  loc_C58C44: MemLdStr global_76
  loc_C58C47: AryLock
  loc_C58C4A: Ary1LdPr
  loc_C58C4B: MemLdRfVar from_stack_1.global_28
  loc_C58C4E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58C53: AryUnlock
  loc_C58C56: AryUnlock
  loc_C58C59: AryUnlock
  loc_C58C5C: FLdRfVar var_F0
  loc_C58C5F: FLdPr var_F4
  loc_C58C62: from_stack_1 = clsdetafapa.ApreDefa
  loc_C58C67: LitI2_Byte 0
  loc_C58C69: FLdPr Me
  loc_C58C6C: MemLdI2 global_88
  loc_C58C6F: CI4UI1
  loc_C58C70: FLdPr Me
  loc_C58C73: MemLdStr global_84
  loc_C58C76: AryLock
  loc_C58C79: Ary1LdPr
  loc_C58C7A: MemLdRfVar from_stack_1.global_96
  loc_C58C7D: CVarRef
  loc_C58C82: LitI2_Byte &HFF
  loc_C58C84: FLdFPR8 var_F0
  loc_C58C87: CVarR8
  loc_C58C8B: PopAdLdVar
  loc_C58C8C: FLdPr Me
  loc_C58C8F: MemLdI2 global_90
  loc_C58C92: CI4UI1
  loc_C58C93: FLdPr Me
  loc_C58C96: MemLdI2 global_88
  loc_C58C99: CI4UI1
  loc_C58C9A: FLdPr Me
  loc_C58C9D: MemLdStr global_84
  loc_C58CA0: AryLock
  loc_C58CA3: Ary1LdPr
  loc_C58CA4: MemLdStr global_76
  loc_C58CA7: AryLock
  loc_C58CAA: Ary1LdPr
  loc_C58CAB: MemLdRfVar from_stack_1.global_32
  loc_C58CAE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58CB3: AryUnlock
  loc_C58CB6: AryUnlock
  loc_C58CB9: AryUnlock
  loc_C58CBC: FLdRfVar var_F0
  loc_C58CBF: FLdPr var_F4
  loc_C58CC2: from_stack_1 = clsdetafapa.InteDefa
  loc_C58CC7: LitI2_Byte 0
  loc_C58CC9: FLdPr Me
  loc_C58CCC: MemLdI2 global_88
  loc_C58CCF: CI4UI1
  loc_C58CD0: FLdPr Me
  loc_C58CD3: MemLdStr global_84
  loc_C58CD6: AryLock
  loc_C58CD9: Ary1LdPr
  loc_C58CDA: MemLdRfVar from_stack_1.global_100
  loc_C58CDD: CVarRef
  loc_C58CE2: LitI2_Byte &HFF
  loc_C58CE4: FLdFPR8 var_F0
  loc_C58CE7: CVarR8
  loc_C58CEB: PopAdLdVar
  loc_C58CEC: FLdPr Me
  loc_C58CEF: MemLdI2 global_90
  loc_C58CF2: CI4UI1
  loc_C58CF3: FLdPr Me
  loc_C58CF6: MemLdI2 global_88
  loc_C58CF9: CI4UI1
  loc_C58CFA: FLdPr Me
  loc_C58CFD: MemLdStr global_84
  loc_C58D00: AryLock
  loc_C58D03: Ary1LdPr
  loc_C58D04: MemLdStr global_76
  loc_C58D07: AryLock
  loc_C58D0A: Ary1LdPr
  loc_C58D0B: MemLdRfVar from_stack_1.global_36
  loc_C58D0E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58D13: AryUnlock
  loc_C58D16: AryUnlock
  loc_C58D19: AryUnlock
  loc_C58D1C: FLdRfVar var_F0
  loc_C58D1F: FLdPr var_F4
  loc_C58D22: from_stack_1 = clsdetafapa.PacuDefa
  loc_C58D27: LitI2_Byte 0
  loc_C58D29: FLdPr Me
  loc_C58D2C: MemLdI2 global_88
  loc_C58D2F: CI4UI1
  loc_C58D30: FLdPr Me
  loc_C58D33: MemLdStr global_84
  loc_C58D36: AryLock
  loc_C58D39: Ary1LdPr
  loc_C58D3A: MemLdRfVar from_stack_1.global_104
  loc_C58D3D: CVarRef
  loc_C58D42: LitI2_Byte &HFF
  loc_C58D44: FLdFPR8 var_F0
  loc_C58D47: CVarR8
  loc_C58D4B: PopAdLdVar
  loc_C58D4C: FLdPr Me
  loc_C58D4F: MemLdI2 global_90
  loc_C58D52: CI4UI1
  loc_C58D53: FLdPr Me
  loc_C58D56: MemLdI2 global_88
  loc_C58D59: CI4UI1
  loc_C58D5A: FLdPr Me
  loc_C58D5D: MemLdStr global_84
  loc_C58D60: AryLock
  loc_C58D63: Ary1LdPr
  loc_C58D64: MemLdStr global_76
  loc_C58D67: AryLock
  loc_C58D6A: Ary1LdPr
  loc_C58D6B: MemLdRfVar from_stack_1.global_40
  loc_C58D6E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58D73: AryUnlock
  loc_C58D76: AryUnlock
  loc_C58D79: AryUnlock
  loc_C58D7C: FLdRfVar var_F0
  loc_C58D7F: FLdPr var_F4
  loc_C58D82: from_stack_1 = clsdetafapa.RemoDefa
  loc_C58D87: LitI2_Byte 0
  loc_C58D89: FLdPr Me
  loc_C58D8C: MemLdI2 global_88
  loc_C58D8F: CI4UI1
  loc_C58D90: FLdPr Me
  loc_C58D93: MemLdStr global_84
  loc_C58D96: AryLock
  loc_C58D99: Ary1LdPr
  loc_C58D9A: MemLdRfVar from_stack_1.global_108
  loc_C58D9D: CVarRef
  loc_C58DA2: LitI2_Byte &HFF
  loc_C58DA4: FLdFPR8 var_F0
  loc_C58DA7: CVarR8
  loc_C58DAB: PopAdLdVar
  loc_C58DAC: FLdPr Me
  loc_C58DAF: MemLdI2 global_90
  loc_C58DB2: CI4UI1
  loc_C58DB3: FLdPr Me
  loc_C58DB6: MemLdI2 global_88
  loc_C58DB9: CI4UI1
  loc_C58DBA: FLdPr Me
  loc_C58DBD: MemLdStr global_84
  loc_C58DC0: AryLock
  loc_C58DC3: Ary1LdPr
  loc_C58DC4: MemLdStr global_76
  loc_C58DC7: AryLock
  loc_C58DCA: Ary1LdPr
  loc_C58DCB: MemLdRfVar from_stack_1.global_44
  loc_C58DCE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58DD3: AryUnlock
  loc_C58DD6: AryUnlock
  loc_C58DD9: AryUnlock
  loc_C58DDC: FLdRfVar var_F0
  loc_C58DDF: FLdPr var_F4
  loc_C58DE2: from_stack_1 = clsdetafapa.TotaDefa
  loc_C58DE7: LitI2_Byte 0
  loc_C58DE9: FLdPr Me
  loc_C58DEC: MemLdI2 global_88
  loc_C58DEF: CI4UI1
  loc_C58DF0: FLdPr Me
  loc_C58DF3: MemLdStr global_84
  loc_C58DF6: AryLock
  loc_C58DF9: Ary1LdPr
  loc_C58DFA: MemLdRfVar from_stack_1.global_112
  loc_C58DFD: CVarRef
  loc_C58E02: LitI2_Byte &HFF
  loc_C58E04: FLdFPR8 var_F0
  loc_C58E07: CVarR8
  loc_C58E0B: PopAdLdVar
  loc_C58E0C: FLdPr Me
  loc_C58E0F: MemLdI2 global_90
  loc_C58E12: CI4UI1
  loc_C58E13: FLdPr Me
  loc_C58E16: MemLdI2 global_88
  loc_C58E19: CI4UI1
  loc_C58E1A: FLdPr Me
  loc_C58E1D: MemLdStr global_84
  loc_C58E20: AryLock
  loc_C58E23: Ary1LdPr
  loc_C58E24: MemLdStr global_76
  loc_C58E27: AryLock
  loc_C58E2A: Ary1LdPr
  loc_C58E2B: MemLdRfVar from_stack_1.global_48
  loc_C58E2E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58E33: AryUnlock
  loc_C58E36: AryUnlock
  loc_C58E39: AryUnlock
  loc_C58E3C: Branch loc_C590D9
  loc_C58E3F: FLdRfVar var_F0
  loc_C58E42: FLdPr var_F4
  loc_C58E45: from_stack_1 = clsdetafapa.CapiDefa
  loc_C58E4A: LitI2_Byte 0
  loc_C58E4C: LitVar_Missing var_D4
  loc_C58E4F: LitI2_Byte &HFF
  loc_C58E51: FLdFPR8 var_F0
  loc_C58E54: CVarR8
  loc_C58E58: PopAdLdVar
  loc_C58E59: FLdPr Me
  loc_C58E5C: MemLdI2 global_90
  loc_C58E5F: CI4UI1
  loc_C58E60: FLdPr Me
  loc_C58E63: MemLdI2 global_88
  loc_C58E66: CI4UI1
  loc_C58E67: FLdPr Me
  loc_C58E6A: MemLdStr global_84
  loc_C58E6D: AryLock
  loc_C58E70: Ary1LdPr
  loc_C58E71: MemLdStr global_76
  loc_C58E74: AryLock
  loc_C58E77: Ary1LdPr
  loc_C58E78: MemLdRfVar from_stack_1.global_16
  loc_C58E7B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58E80: AryUnlock
  loc_C58E83: AryUnlock
  loc_C58E86: FFree1Var var_D4 = ""
  loc_C58E89: FLdRfVar var_F0
  loc_C58E8C: FLdPr var_F4
  loc_C58E8F: from_stack_1 = clsdetafapa.DecaDefa
  loc_C58E94: LitI2_Byte 0
  loc_C58E96: LitVar_Missing var_D4
  loc_C58E99: LitI2_Byte &HFF
  loc_C58E9B: FLdFPR8 var_F0
  loc_C58E9E: CVarR8
  loc_C58EA2: PopAdLdVar
  loc_C58EA3: FLdPr Me
  loc_C58EA6: MemLdI2 global_90
  loc_C58EA9: CI4UI1
  loc_C58EAA: FLdPr Me
  loc_C58EAD: MemLdI2 global_88
  loc_C58EB0: CI4UI1
  loc_C58EB1: FLdPr Me
  loc_C58EB4: MemLdStr global_84
  loc_C58EB7: AryLock
  loc_C58EBA: Ary1LdPr
  loc_C58EBB: MemLdStr global_76
  loc_C58EBE: AryLock
  loc_C58EC1: Ary1LdPr
  loc_C58EC2: MemLdRfVar from_stack_1.global_20
  loc_C58EC5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58ECA: AryUnlock
  loc_C58ECD: AryUnlock
  loc_C58ED0: FFree1Var var_D4 = ""
  loc_C58ED3: FLdRfVar var_F0
  loc_C58ED6: FLdPr var_F4
  loc_C58ED9: from_stack_1 = clsdetafapa.RecaDefa
  loc_C58EDE: LitI2_Byte 0
  loc_C58EE0: LitVar_Missing var_D4
  loc_C58EE3: LitI2_Byte &HFF
  loc_C58EE5: FLdFPR8 var_F0
  loc_C58EE8: CVarR8
  loc_C58EEC: PopAdLdVar
  loc_C58EED: FLdPr Me
  loc_C58EF0: MemLdI2 global_90
  loc_C58EF3: CI4UI1
  loc_C58EF4: FLdPr Me
  loc_C58EF7: MemLdI2 global_88
  loc_C58EFA: CI4UI1
  loc_C58EFB: FLdPr Me
  loc_C58EFE: MemLdStr global_84
  loc_C58F01: AryLock
  loc_C58F04: Ary1LdPr
  loc_C58F05: MemLdStr global_76
  loc_C58F08: AryLock
  loc_C58F0B: Ary1LdPr
  loc_C58F0C: MemLdRfVar from_stack_1.global_24
  loc_C58F0F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58F14: AryUnlock
  loc_C58F17: AryUnlock
  loc_C58F1A: FFree1Var var_D4 = ""
  loc_C58F1D: FLdRfVar var_F0
  loc_C58F20: FLdPr var_F4
  loc_C58F23: from_stack_1 = clsdetafapa.DereDefa
  loc_C58F28: LitI2_Byte 0
  loc_C58F2A: LitVar_Missing var_D4
  loc_C58F2D: LitI2_Byte &HFF
  loc_C58F2F: FLdFPR8 var_F0
  loc_C58F32: CVarR8
  loc_C58F36: PopAdLdVar
  loc_C58F37: FLdPr Me
  loc_C58F3A: MemLdI2 global_90
  loc_C58F3D: CI4UI1
  loc_C58F3E: FLdPr Me
  loc_C58F41: MemLdI2 global_88
  loc_C58F44: CI4UI1
  loc_C58F45: FLdPr Me
  loc_C58F48: MemLdStr global_84
  loc_C58F4B: AryLock
  loc_C58F4E: Ary1LdPr
  loc_C58F4F: MemLdStr global_76
  loc_C58F52: AryLock
  loc_C58F55: Ary1LdPr
  loc_C58F56: MemLdRfVar from_stack_1.global_28
  loc_C58F59: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58F5E: AryUnlock
  loc_C58F61: AryUnlock
  loc_C58F64: FFree1Var var_D4 = ""
  loc_C58F67: FLdRfVar var_F0
  loc_C58F6A: FLdPr var_F4
  loc_C58F6D: from_stack_1 = clsdetafapa.ApreDefa
  loc_C58F72: LitI2_Byte 0
  loc_C58F74: LitVar_Missing var_D4
  loc_C58F77: LitI2_Byte &HFF
  loc_C58F79: FLdFPR8 var_F0
  loc_C58F7C: CVarR8
  loc_C58F80: PopAdLdVar
  loc_C58F81: FLdPr Me
  loc_C58F84: MemLdI2 global_90
  loc_C58F87: CI4UI1
  loc_C58F88: FLdPr Me
  loc_C58F8B: MemLdI2 global_88
  loc_C58F8E: CI4UI1
  loc_C58F8F: FLdPr Me
  loc_C58F92: MemLdStr global_84
  loc_C58F95: AryLock
  loc_C58F98: Ary1LdPr
  loc_C58F99: MemLdStr global_76
  loc_C58F9C: AryLock
  loc_C58F9F: Ary1LdPr
  loc_C58FA0: MemLdRfVar from_stack_1.global_32
  loc_C58FA3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58FA8: AryUnlock
  loc_C58FAB: AryUnlock
  loc_C58FAE: FFree1Var var_D4 = ""
  loc_C58FB1: FLdRfVar var_F0
  loc_C58FB4: FLdPr var_F4
  loc_C58FB7: from_stack_1 = clsdetafapa.InteDefa
  loc_C58FBC: LitI2_Byte 0
  loc_C58FBE: LitVar_Missing var_D4
  loc_C58FC1: LitI2_Byte &HFF
  loc_C58FC3: FLdFPR8 var_F0
  loc_C58FC6: CVarR8
  loc_C58FCA: PopAdLdVar
  loc_C58FCB: FLdPr Me
  loc_C58FCE: MemLdI2 global_90
  loc_C58FD1: CI4UI1
  loc_C58FD2: FLdPr Me
  loc_C58FD5: MemLdI2 global_88
  loc_C58FD8: CI4UI1
  loc_C58FD9: FLdPr Me
  loc_C58FDC: MemLdStr global_84
  loc_C58FDF: AryLock
  loc_C58FE2: Ary1LdPr
  loc_C58FE3: MemLdStr global_76
  loc_C58FE6: AryLock
  loc_C58FE9: Ary1LdPr
  loc_C58FEA: MemLdRfVar from_stack_1.global_36
  loc_C58FED: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C58FF2: AryUnlock
  loc_C58FF5: AryUnlock
  loc_C58FF8: FFree1Var var_D4 = ""
  loc_C58FFB: FLdRfVar var_F0
  loc_C58FFE: FLdPr var_F4
  loc_C59001: from_stack_1 = clsdetafapa.PacuDefa
  loc_C59006: LitI2_Byte 0
  loc_C59008: LitVar_Missing var_D4
  loc_C5900B: LitI2_Byte &HFF
  loc_C5900D: FLdFPR8 var_F0
  loc_C59010: CVarR8
  loc_C59014: PopAdLdVar
  loc_C59015: FLdPr Me
  loc_C59018: MemLdI2 global_90
  loc_C5901B: CI4UI1
  loc_C5901C: FLdPr Me
  loc_C5901F: MemLdI2 global_88
  loc_C59022: CI4UI1
  loc_C59023: FLdPr Me
  loc_C59026: MemLdStr global_84
  loc_C59029: AryLock
  loc_C5902C: Ary1LdPr
  loc_C5902D: MemLdStr global_76
  loc_C59030: AryLock
  loc_C59033: Ary1LdPr
  loc_C59034: MemLdRfVar from_stack_1.global_40
  loc_C59037: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C5903C: AryUnlock
  loc_C5903F: AryUnlock
  loc_C59042: FFree1Var var_D4 = ""
  loc_C59045: FLdRfVar var_F0
  loc_C59048: FLdPr var_F4
  loc_C5904B: from_stack_1 = clsdetafapa.RemoDefa
  loc_C59050: LitI2_Byte 0
  loc_C59052: LitVar_Missing var_D4
  loc_C59055: LitI2_Byte &HFF
  loc_C59057: FLdFPR8 var_F0
  loc_C5905A: CVarR8
  loc_C5905E: PopAdLdVar
  loc_C5905F: FLdPr Me
  loc_C59062: MemLdI2 global_90
  loc_C59065: CI4UI1
  loc_C59066: FLdPr Me
  loc_C59069: MemLdI2 global_88
  loc_C5906C: CI4UI1
  loc_C5906D: FLdPr Me
  loc_C59070: MemLdStr global_84
  loc_C59073: AryLock
  loc_C59076: Ary1LdPr
  loc_C59077: MemLdStr global_76
  loc_C5907A: AryLock
  loc_C5907D: Ary1LdPr
  loc_C5907E: MemLdRfVar from_stack_1.global_44
  loc_C59081: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C59086: AryUnlock
  loc_C59089: AryUnlock
  loc_C5908C: FFree1Var var_D4 = ""
  loc_C5908F: FLdRfVar var_F0
  loc_C59092: FLdPr var_F4
  loc_C59095: from_stack_1 = clsdetafapa.TotaDefa
  loc_C5909A: LitI2_Byte 0
  loc_C5909C: LitVar_Missing var_D4
  loc_C5909F: LitI2_Byte &HFF
  loc_C590A1: FLdFPR8 var_F0
  loc_C590A4: CVarR8
  loc_C590A8: PopAdLdVar
  loc_C590A9: FLdPr Me
  loc_C590AC: MemLdI2 global_90
  loc_C590AF: CI4UI1
  loc_C590B0: FLdPr Me
  loc_C590B3: MemLdI2 global_88
  loc_C590B6: CI4UI1
  loc_C590B7: FLdPr Me
  loc_C590BA: MemLdStr global_84
  loc_C590BD: AryLock
  loc_C590C0: Ary1LdPr
  loc_C590C1: MemLdStr global_76
  loc_C590C4: AryLock
  loc_C590C7: Ary1LdPr
  loc_C590C8: MemLdRfVar from_stack_1.global_48
  loc_C590CB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C590D0: AryUnlock
  loc_C590D3: AryUnlock
  loc_C590D6: FFree1Var var_D4 = ""
  loc_C590D9: LitI2_Byte 1
  loc_C590DB: PopTmpLdAd2 var_D6
  loc_C590DE: FLdPr var_F4
  loc_C590E1: Call clsdetafapa.Move(from_stack_1v)
  loc_C590E6: FLdPr Me
  loc_C590E9: MemLdRfVar from_stack_1.global_90
  loc_C590EC: NextI2 var_F8, loc_C58971
  loc_C590F1: LitNothing
  loc_C590F3: FStAd var_F4 
  loc_C590F7: LitI2_Byte 1
  loc_C590F9: PopTmpLdAd2 var_D6
  loc_C590FC: FLdPr var_AC
  loc_C590FF: Call clsfacipago.Move(from_stack_1v)
  loc_C59104: FLdPr Me
  loc_C59107: MemLdRfVar from_stack_1.global_88
  loc_C5910A: NextI2 var_C0, loc_C5833A
  loc_C5910F: LitNothing
  loc_C59111: FStAd var_AC 
  loc_C59115: LitI2_Byte &HFF
  loc_C59117: FLdPr Me
  loc_C5911A: MemStI2 bGenerado
  loc_C5911D: LitI4 0
  loc_C59122: CI2I4
  loc_C59123: FLdPr Me
  loc_C59126: Me.MousePointer = from_stack_1
  loc_C5912B: LitVarStr var_94, vbNullString
  loc_C59130: PopAdLdVar
  loc_C59131: FLdPr Me
  loc_C59134: VCallAd Control_ID_statusBar
  loc_C59137: FStAdFunc var_A8
  loc_C5913A: FLdPr var_A8
  loc_C5913D: LateIdSt
  loc_C59142: FFree1Ad var_A8
  loc_C59145: ExitProcHresult
  loc_C59146: Ary1StCy
End Sub

Public Sub GeneraHTML() 'C143F8
  'Data Table: 4545F4
  loc_C13A04: FLdRfVar var_88
  loc_C13A07: LitI2_Byte 0
  loc_C13A09: LitI2_Byte &HFF
  loc_C13A0B: ImpAdLdI4 MemVar_D93C84
  loc_C13A0E: FLdPr Me
  loc_C13A11: MemLdRfVar from_stack_1.global_56
  loc_C13A14: NewIfNullPr IFileSystem3
  loc_C13A17: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C13A1C: ILdRf var_88
  loc_C13A1F: FLdPr Me
  loc_C13A22: MemStVarAd
  loc_C13A26: FFree1Ad var_88
  loc_C13A29: LitI2_Byte &HFF
  loc_C13A2B: ImpAdStI2 MemVar_D93C8A
  loc_C13A2E: Call Proc_86_15_BBAF2C()
  loc_C13A33: LitI2_Byte 1
  loc_C13A35: FLdPr Me
  loc_C13A38: MemLdRfVar from_stack_1.global_88
  loc_C13A3B: FLdPr Me
  loc_C13A3E: MemLdStr global_84
  loc_C13A41: LitI2_Byte 1
  loc_C13A43: FnUBound
  loc_C13A45: CI2I4
  loc_C13A46: ForI2 var_8C
  loc_C13A4C: FLdPr Me
  loc_C13A4F: MemLdI2 global_88
  loc_C13A52: CI4UI1
  loc_C13A53: FLdPr Me
  loc_C13A56: MemLdStr global_84
  loc_C13A59: AryLock
  loc_C13A5C: Ary1LdRf
  loc_C13A5D: FStR4 var_94
  loc_C13A60: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C13A65: PopAdLdVar
  loc_C13A66: FLdPr Me
  loc_C13A69: MemLdRfVar from_stack_1.global_60
  loc_C13A6C: LdPrVar
  loc_C13A6E: LateMemCall
  loc_C13A74: LitStr vbNullString
  loc_C13A77: LitI2_Byte 0
  loc_C13A79: LitI2_Byte 0
  loc_C13A7B: LitI2_Byte 0
  loc_C13A7D: LitStr "right"
  loc_C13A80: FMemLdR4 var_94(0)
  loc_C13A85: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13A8A: CVarStr var_C4
  loc_C13A8D: PopAdLdVar
  loc_C13A8E: FLdPr Me
  loc_C13A91: MemLdRfVar from_stack_1.global_60
  loc_C13A94: LdPrVar
  loc_C13A96: LateMemCall
  loc_C13A9C: FFree1Var var_C4 = ""
  loc_C13A9F: LitStr vbNullString
  loc_C13AA2: LitI2_Byte 0
  loc_C13AA4: LitI2_Byte 0
  loc_C13AA6: LitI2_Byte 0
  loc_C13AA8: LitStr "right"
  loc_C13AAB: FMemLdR4 var_94(4)
  loc_C13AB0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13AB5: CVarStr var_C4
  loc_C13AB8: PopAdLdVar
  loc_C13AB9: FLdPr Me
  loc_C13ABC: MemLdRfVar from_stack_1.global_60
  loc_C13ABF: LdPrVar
  loc_C13AC1: LateMemCall
  loc_C13AC7: FFree1Var var_C4 = ""
  loc_C13ACA: LitStr vbNullString
  loc_C13ACD: LitI2_Byte 0
  loc_C13ACF: LitI2_Byte 0
  loc_C13AD1: LitI2_Byte 0
  loc_C13AD3: LitStr "right"
  loc_C13AD6: FMemLdR4 var_94(8)
  loc_C13ADB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13AE0: CVarStr var_C4
  loc_C13AE3: PopAdLdVar
  loc_C13AE4: FLdPr Me
  loc_C13AE7: MemLdRfVar from_stack_1.global_60
  loc_C13AEA: LdPrVar
  loc_C13AEC: LateMemCall
  loc_C13AF2: FFree1Var var_C4 = ""
  loc_C13AF5: LitStr vbNullString
  loc_C13AF8: LitI2_Byte 0
  loc_C13AFA: LitI2_Byte 0
  loc_C13AFC: LitI2_Byte 0
  loc_C13AFE: LitStr "right"
  loc_C13B01: FMemLdR4 var_94(12)
  loc_C13B06: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13B0B: CVarStr var_C4
  loc_C13B0E: PopAdLdVar
  loc_C13B0F: FLdPr Me
  loc_C13B12: MemLdRfVar from_stack_1.global_60
  loc_C13B15: LdPrVar
  loc_C13B17: LateMemCall
  loc_C13B1D: FFree1Var var_C4 = ""
  loc_C13B20: LitStr vbNullString
  loc_C13B23: LitI2_Byte 0
  loc_C13B25: LitI2_Byte 0
  loc_C13B27: LitI2_Byte 0
  loc_C13B29: LitStr "center"
  loc_C13B2C: FMemLdR4 var_94(16)
  loc_C13B31: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13B36: CVarStr var_C4
  loc_C13B39: PopAdLdVar
  loc_C13B3A: FLdPr Me
  loc_C13B3D: MemLdRfVar from_stack_1.global_60
  loc_C13B40: LdPrVar
  loc_C13B42: LateMemCall
  loc_C13B48: FFree1Var var_C4 = ""
  loc_C13B4B: LitStr vbNullString
  loc_C13B4E: LitI2_Byte 0
  loc_C13B50: LitI2_Byte 0
  loc_C13B52: LitI2_Byte 0
  loc_C13B54: LitStr "center"
  loc_C13B57: FMemLdR4 var_94(20)
  loc_C13B5C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13B61: CVarStr var_C4
  loc_C13B64: PopAdLdVar
  loc_C13B65: FLdPr Me
  loc_C13B68: MemLdRfVar from_stack_1.global_60
  loc_C13B6B: LdPrVar
  loc_C13B6D: LateMemCall
  loc_C13B73: FFree1Var var_C4 = ""
  loc_C13B76: LitStr vbNullString
  loc_C13B79: LitI2_Byte 0
  loc_C13B7B: LitI2_Byte 0
  loc_C13B7D: LitI2_Byte 0
  loc_C13B7F: LitStr "right"
  loc_C13B82: FMemLdR4 var_94(24)
  loc_C13B87: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13B8C: CVarStr var_C4
  loc_C13B8F: PopAdLdVar
  loc_C13B90: FLdPr Me
  loc_C13B93: MemLdRfVar from_stack_1.global_60
  loc_C13B96: LdPrVar
  loc_C13B98: LateMemCall
  loc_C13B9E: FFree1Var var_C4 = ""
  loc_C13BA1: LitStr vbNullString
  loc_C13BA4: LitI2_Byte 0
  loc_C13BA6: LitI2_Byte 0
  loc_C13BA8: LitI2_Byte 0
  loc_C13BAA: LitStr "right"
  loc_C13BAD: FMemLdR4 var_94(28)
  loc_C13BB2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13BB7: CVarStr var_C4
  loc_C13BBA: PopAdLdVar
  loc_C13BBB: FLdPr Me
  loc_C13BBE: MemLdRfVar from_stack_1.global_60
  loc_C13BC1: LdPrVar
  loc_C13BC3: LateMemCall
  loc_C13BC9: FFree1Var var_C4 = ""
  loc_C13BCC: LitStr vbNullString
  loc_C13BCF: LitI2_Byte 0
  loc_C13BD1: LitI2_Byte 0
  loc_C13BD3: LitI2_Byte 0
  loc_C13BD5: LitStr "left"
  loc_C13BD8: FMemLdR4 var_94(32)
  loc_C13BDD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13BE2: CVarStr var_C4
  loc_C13BE5: PopAdLdVar
  loc_C13BE6: FLdPr Me
  loc_C13BE9: MemLdRfVar from_stack_1.global_60
  loc_C13BEC: LdPrVar
  loc_C13BEE: LateMemCall
  loc_C13BF4: FFree1Var var_C4 = ""
  loc_C13BF7: LitStr vbNullString
  loc_C13BFA: LitI2_Byte 0
  loc_C13BFC: LitI2_Byte 0
  loc_C13BFE: LitI2_Byte 0
  loc_C13C00: LitStr "left"
  loc_C13C03: FMemLdR4 var_94(36)
  loc_C13C08: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13C0D: CVarStr var_C4
  loc_C13C10: PopAdLdVar
  loc_C13C11: FLdPr Me
  loc_C13C14: MemLdRfVar from_stack_1.global_60
  loc_C13C17: LdPrVar
  loc_C13C19: LateMemCall
  loc_C13C1F: FFree1Var var_C4 = ""
  loc_C13C22: LitStr vbNullString
  loc_C13C25: LitI2_Byte 0
  loc_C13C27: LitI2_Byte 0
  loc_C13C29: LitI2_Byte 0
  loc_C13C2B: LitStr "right"
  loc_C13C2E: FMemLdR4 var_94(40)
  loc_C13C33: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13C38: CVarStr var_C4
  loc_C13C3B: PopAdLdVar
  loc_C13C3C: FLdPr Me
  loc_C13C3F: MemLdRfVar from_stack_1.global_60
  loc_C13C42: LdPrVar
  loc_C13C44: LateMemCall
  loc_C13C4A: FFree1Var var_C4 = ""
  loc_C13C4D: LitStr vbNullString
  loc_C13C50: LitI2_Byte 0
  loc_C13C52: LitI2_Byte 0
  loc_C13C54: LitI2_Byte 0
  loc_C13C56: LitStr "right"
  loc_C13C59: FMemLdR4 var_94(44)
  loc_C13C5E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13C63: CVarStr var_C4
  loc_C13C66: PopAdLdVar
  loc_C13C67: FLdPr Me
  loc_C13C6A: MemLdRfVar from_stack_1.global_60
  loc_C13C6D: LdPrVar
  loc_C13C6F: LateMemCall
  loc_C13C75: FFree1Var var_C4 = ""
  loc_C13C78: LitStr vbNullString
  loc_C13C7B: LitI2_Byte 0
  loc_C13C7D: LitI2_Byte 0
  loc_C13C7F: LitI2_Byte 0
  loc_C13C81: LitStr "right"
  loc_C13C84: FMemLdR4 var_94(48)
  loc_C13C89: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13C8E: CVarStr var_C4
  loc_C13C91: PopAdLdVar
  loc_C13C92: FLdPr Me
  loc_C13C95: MemLdRfVar from_stack_1.global_60
  loc_C13C98: LdPrVar
  loc_C13C9A: LateMemCall
  loc_C13CA0: FFree1Var var_C4 = ""
  loc_C13CA3: LitStr vbNullString
  loc_C13CA6: LitI2_Byte 0
  loc_C13CA8: LitI2_Byte 0
  loc_C13CAA: LitI2_Byte 0
  loc_C13CAC: LitStr "right"
  loc_C13CAF: FMemLdR4 var_94(52)
  loc_C13CB4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13CB9: CVarStr var_C4
  loc_C13CBC: PopAdLdVar
  loc_C13CBD: FLdPr Me
  loc_C13CC0: MemLdRfVar from_stack_1.global_60
  loc_C13CC3: LdPrVar
  loc_C13CC5: LateMemCall
  loc_C13CCB: FFree1Var var_C4 = ""
  loc_C13CCE: LitStr vbNullString
  loc_C13CD1: LitI2_Byte 0
  loc_C13CD3: LitI2_Byte 0
  loc_C13CD5: LitI2_Byte 0
  loc_C13CD7: LitStr "right"
  loc_C13CDA: FMemLdR4 var_94(56)
  loc_C13CDF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13CE4: CVarStr var_C4
  loc_C13CE7: PopAdLdVar
  loc_C13CE8: FLdPr Me
  loc_C13CEB: MemLdRfVar from_stack_1.global_60
  loc_C13CEE: LdPrVar
  loc_C13CF0: LateMemCall
  loc_C13CF6: FFree1Var var_C4 = ""
  loc_C13CF9: LitStr vbNullString
  loc_C13CFC: LitI2_Byte 0
  loc_C13CFE: LitI2_Byte 0
  loc_C13D00: LitI2_Byte 0
  loc_C13D02: LitStr "right"
  loc_C13D05: FMemLdR4 var_94(60)
  loc_C13D0A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13D0F: CVarStr var_C4
  loc_C13D12: PopAdLdVar
  loc_C13D13: FLdPr Me
  loc_C13D16: MemLdRfVar from_stack_1.global_60
  loc_C13D19: LdPrVar
  loc_C13D1B: LateMemCall
  loc_C13D21: FFree1Var var_C4 = ""
  loc_C13D24: LitStr vbNullString
  loc_C13D27: LitI2_Byte 0
  loc_C13D29: LitI2_Byte 0
  loc_C13D2B: LitI2_Byte 0
  loc_C13D2D: LitStr "right"
  loc_C13D30: FMemLdR4 var_94(72)
  loc_C13D35: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13D3A: CVarStr var_C4
  loc_C13D3D: PopAdLdVar
  loc_C13D3E: FLdPr Me
  loc_C13D41: MemLdRfVar from_stack_1.global_60
  loc_C13D44: LdPrVar
  loc_C13D46: LateMemCall
  loc_C13D4C: FFree1Var var_C4 = ""
  loc_C13D4F: LitVarStr var_A4, "     </tr>"
  loc_C13D54: PopAdLdVar
  loc_C13D55: FLdPr Me
  loc_C13D58: MemLdRfVar from_stack_1.global_60
  loc_C13D5B: LdPrVar
  loc_C13D5D: LateMemCall
  loc_C13D63: LitI4 0
  loc_C13D68: FStR4 var_94
  loc_C13D6B: AryUnlock
  loc_C13D6E: LitVarStr var_A4, "  </thead>"
  loc_C13D73: PopAdLdVar
  loc_C13D74: FLdPr Me
  loc_C13D77: MemLdRfVar from_stack_1.global_60
  loc_C13D7A: LdPrVar
  loc_C13D7C: LateMemCall
  loc_C13D82: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C13D87: PopAdLdVar
  loc_C13D88: FLdPr Me
  loc_C13D8B: MemLdRfVar from_stack_1.global_60
  loc_C13D8E: LdPrVar
  loc_C13D90: LateMemCall
  loc_C13D96: LitVarStr var_A4, "     <td colspan=""17"">"
  loc_C13D9B: PopAdLdVar
  loc_C13D9C: FLdPr Me
  loc_C13D9F: MemLdRfVar from_stack_1.global_60
  loc_C13DA2: LdPrVar
  loc_C13DA4: LateMemCall
  loc_C13DAA: LitVarStr var_A4, "  <table width=""95" & Chr(37) & """ border=""1"" align=""right"" cellpadding=""1"" cellspacing=""0"">"
  loc_C13DAF: PopAdLdVar
  loc_C13DB0: FLdPr Me
  loc_C13DB3: MemLdRfVar from_stack_1.global_60
  loc_C13DB6: LdPrVar
  loc_C13DB8: LateMemCall
  loc_C13DBE: LitVarStr var_A4, "  <thead>"
  loc_C13DC3: PopAdLdVar
  loc_C13DC4: FLdPr Me
  loc_C13DC7: MemLdRfVar from_stack_1.global_60
  loc_C13DCA: LdPrVar
  loc_C13DCC: LateMemCall
  loc_C13DD2: LitVarStr var_A4, "  <tr align=""center"" class=""Encabezado"">"
  loc_C13DD7: PopAdLdVar
  loc_C13DD8: FLdPr Me
  loc_C13DDB: MemLdRfVar from_stack_1.global_60
  loc_C13DDE: LdPrVar
  loc_C13DE0: LateMemCall
  loc_C13DE6: LitVarStr var_A4, "    <th>Cuota</th>"
  loc_C13DEB: PopAdLdVar
  loc_C13DEC: FLdPr Me
  loc_C13DEF: MemLdRfVar from_stack_1.global_60
  loc_C13DF2: LdPrVar
  loc_C13DF4: LateMemCall
  loc_C13DFA: LitVarStr var_A4, "    <th>Fecha Venc.</th>"
  loc_C13DFF: PopAdLdVar
  loc_C13E00: FLdPr Me
  loc_C13E03: MemLdRfVar from_stack_1.global_60
  loc_C13E06: LdPrVar
  loc_C13E08: LateMemCall
  loc_C13E0E: LitVarStr var_A4, "    <th>Estado</th>"
  loc_C13E13: PopAdLdVar
  loc_C13E14: FLdPr Me
  loc_C13E17: MemLdRfVar from_stack_1.global_60
  loc_C13E1A: LdPrVar
  loc_C13E1C: LateMemCall
  loc_C13E22: LitVarStr var_A4, "    <th>Fecha Pago</th>"
  loc_C13E27: PopAdLdVar
  loc_C13E28: FLdPr Me
  loc_C13E2B: MemLdRfVar from_stack_1.global_60
  loc_C13E2E: LdPrVar
  loc_C13E30: LateMemCall
  loc_C13E36: LitVarStr var_A4, "    <th>Capital</th>"
  loc_C13E3B: PopAdLdVar
  loc_C13E3C: FLdPr Me
  loc_C13E3F: MemLdRfVar from_stack_1.global_60
  loc_C13E42: LdPrVar
  loc_C13E44: LateMemCall
  loc_C13E4A: LitVarStr var_A4, "    <th>Desc. Capi.</th>"
  loc_C13E4F: PopAdLdVar
  loc_C13E50: FLdPr Me
  loc_C13E53: MemLdRfVar from_stack_1.global_60
  loc_C13E56: LdPrVar
  loc_C13E58: LateMemCall
  loc_C13E5E: LitVarStr var_A4, "    <th>Recargo</th>"
  loc_C13E63: PopAdLdVar
  loc_C13E64: FLdPr Me
  loc_C13E67: MemLdRfVar from_stack_1.global_60
  loc_C13E6A: LdPrVar
  loc_C13E6C: LateMemCall
  loc_C13E72: LitVarStr var_A4, "    <th>Desc. Reca.</th>"
  loc_C13E77: PopAdLdVar
  loc_C13E78: FLdPr Me
  loc_C13E7B: MemLdRfVar from_stack_1.global_60
  loc_C13E7E: LdPrVar
  loc_C13E80: LateMemCall
  loc_C13E86: LitVarStr var_A4, "    <th>Apremio</th>"
  loc_C13E8B: PopAdLdVar
  loc_C13E8C: FLdPr Me
  loc_C13E8F: MemLdRfVar from_stack_1.global_60
  loc_C13E92: LdPrVar
  loc_C13E94: LateMemCall
  loc_C13E9A: LitVarStr var_A4, "    <th>Interés</th>"
  loc_C13E9F: PopAdLdVar
  loc_C13EA0: FLdPr Me
  loc_C13EA3: MemLdRfVar from_stack_1.global_60
  loc_C13EA6: LdPrVar
  loc_C13EA8: LateMemCall
  loc_C13EAE: LitVarStr var_A4, "    <th>Pa. Cuenta</th>"
  loc_C13EB3: PopAdLdVar
  loc_C13EB4: FLdPr Me
  loc_C13EB7: MemLdRfVar from_stack_1.global_60
  loc_C13EBA: LdPrVar
  loc_C13EBC: LateMemCall
  loc_C13EC2: LitVarStr var_A4, "    <th>Rec. mora</th>"
  loc_C13EC7: PopAdLdVar
  loc_C13EC8: FLdPr Me
  loc_C13ECB: MemLdRfVar from_stack_1.global_60
  loc_C13ECE: LdPrVar
  loc_C13ED0: LateMemCall
  loc_C13ED6: LitVarStr var_A4, "    <th>Total</th>"
  loc_C13EDB: PopAdLdVar
  loc_C13EDC: FLdPr Me
  loc_C13EDF: MemLdRfVar from_stack_1.global_60
  loc_C13EE2: LdPrVar
  loc_C13EE4: LateMemCall
  loc_C13EEA: LitVarStr var_A4, "  </tr>"
  loc_C13EEF: PopAdLdVar
  loc_C13EF0: FLdPr Me
  loc_C13EF3: MemLdRfVar from_stack_1.global_60
  loc_C13EF6: LdPrVar
  loc_C13EF8: LateMemCall
  loc_C13EFE: LitVarStr var_A4, "  </thead>"
  loc_C13F03: PopAdLdVar
  loc_C13F04: FLdPr Me
  loc_C13F07: MemLdRfVar from_stack_1.global_60
  loc_C13F0A: LdPrVar
  loc_C13F0C: LateMemCall
  loc_C13F12: LitI2_Byte 1
  loc_C13F14: FLdPr Me
  loc_C13F17: MemLdRfVar from_stack_1.global_90
  loc_C13F1A: FLdPr Me
  loc_C13F1D: MemLdI2 global_88
  loc_C13F20: CI4UI1
  loc_C13F21: FLdPr Me
  loc_C13F24: MemLdStr global_84
  loc_C13F27: Ary1LdPr
  loc_C13F28: MemLdStr global_76
  loc_C13F2B: LitI2_Byte 1
  loc_C13F2D: FnUBound
  loc_C13F2F: CI2I4
  loc_C13F30: ForI2 var_C8
  loc_C13F36: FLdPr Me
  loc_C13F39: MemLdI2 global_90
  loc_C13F3C: CI4UI1
  loc_C13F3D: FLdPr Me
  loc_C13F40: MemLdI2 global_88
  loc_C13F43: CI4UI1
  loc_C13F44: FLdPr Me
  loc_C13F47: MemLdStr global_84
  loc_C13F4A: AryLock
  loc_C13F4D: Ary1LdPr
  loc_C13F4E: MemLdStr global_76
  loc_C13F51: AryLock
  loc_C13F54: Ary1LdRf
  loc_C13F55: FStR4 var_D4
  loc_C13F58: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C13F5D: PopAdLdVar
  loc_C13F5E: FLdPr Me
  loc_C13F61: MemLdRfVar from_stack_1.global_60
  loc_C13F64: LdPrVar
  loc_C13F66: LateMemCall
  loc_C13F6C: LitStr vbNullString
  loc_C13F6F: LitI2_Byte 0
  loc_C13F71: LitI2_Byte 0
  loc_C13F73: LitI2_Byte 0
  loc_C13F75: LitStr "right"
  loc_C13F78: FMemLdR4 var_D4(0)
  loc_C13F7D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13F82: CVarStr var_C4
  loc_C13F85: PopAdLdVar
  loc_C13F86: FLdPr Me
  loc_C13F89: MemLdRfVar from_stack_1.global_60
  loc_C13F8C: LdPrVar
  loc_C13F8E: LateMemCall
  loc_C13F94: FFree1Var var_C4 = ""
  loc_C13F97: LitStr vbNullString
  loc_C13F9A: LitI2_Byte 0
  loc_C13F9C: LitI2_Byte 0
  loc_C13F9E: LitI2_Byte 0
  loc_C13FA0: LitStr "center"
  loc_C13FA3: FMemLdR4 var_D4(4)
  loc_C13FA8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13FAD: CVarStr var_C4
  loc_C13FB0: PopAdLdVar
  loc_C13FB1: FLdPr Me
  loc_C13FB4: MemLdRfVar from_stack_1.global_60
  loc_C13FB7: LdPrVar
  loc_C13FB9: LateMemCall
  loc_C13FBF: FFree1Var var_C4 = ""
  loc_C13FC2: LitStr vbNullString
  loc_C13FC5: LitI2_Byte 0
  loc_C13FC7: LitI2_Byte 0
  loc_C13FC9: LitI2_Byte 0
  loc_C13FCB: LitStr "left"
  loc_C13FCE: FMemLdR4 var_D4(8)
  loc_C13FD3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C13FD8: CVarStr var_C4
  loc_C13FDB: PopAdLdVar
  loc_C13FDC: FLdPr Me
  loc_C13FDF: MemLdRfVar from_stack_1.global_60
  loc_C13FE2: LdPrVar
  loc_C13FE4: LateMemCall
  loc_C13FEA: FFree1Var var_C4 = ""
  loc_C13FED: LitStr vbNullString
  loc_C13FF0: LitI2_Byte 0
  loc_C13FF2: LitI2_Byte 0
  loc_C13FF4: LitI2_Byte 0
  loc_C13FF6: LitStr "center"
  loc_C13FF9: FMemLdR4 var_D4(12)
  loc_C13FFE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C14003: CVarStr var_C4
  loc_C14006: PopAdLdVar
  loc_C14007: FLdPr Me
  loc_C1400A: MemLdRfVar from_stack_1.global_60
  loc_C1400D: LdPrVar
  loc_C1400F: LateMemCall
  loc_C14015: FFree1Var var_C4 = ""
  loc_C14018: LitStr vbNullString
  loc_C1401B: LitI2_Byte 0
  loc_C1401D: LitI2_Byte 0
  loc_C1401F: LitI2_Byte 0
  loc_C14021: LitStr "right"
  loc_C14024: FMemLdR4 var_D4(16)
  loc_C14029: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C1402E: CVarStr var_C4
  loc_C14031: PopAdLdVar
  loc_C14032: FLdPr Me
  loc_C14035: MemLdRfVar from_stack_1.global_60
  loc_C14038: LdPrVar
  loc_C1403A: LateMemCall
  loc_C14040: FFree1Var var_C4 = ""
  loc_C14043: LitStr vbNullString
  loc_C14046: LitI2_Byte 0
  loc_C14048: LitI2_Byte 0
  loc_C1404A: LitI2_Byte 0
  loc_C1404C: LitStr "right"
  loc_C1404F: FMemLdR4 var_D4(20)
  loc_C14054: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C14059: CVarStr var_C4
  loc_C1405C: PopAdLdVar
  loc_C1405D: FLdPr Me
  loc_C14060: MemLdRfVar from_stack_1.global_60
  loc_C14063: LdPrVar
  loc_C14065: LateMemCall
  loc_C1406B: FFree1Var var_C4 = ""
  loc_C1406E: LitStr vbNullString
  loc_C14071: LitI2_Byte 0
  loc_C14073: LitI2_Byte 0
  loc_C14075: LitI2_Byte 0
  loc_C14077: LitStr "right"
  loc_C1407A: FMemLdR4 var_D4(24)
  loc_C1407F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C14084: CVarStr var_C4
  loc_C14087: PopAdLdVar
  loc_C14088: FLdPr Me
  loc_C1408B: MemLdRfVar from_stack_1.global_60
  loc_C1408E: LdPrVar
  loc_C14090: LateMemCall
  loc_C14096: FFree1Var var_C4 = ""
  loc_C14099: LitStr vbNullString
  loc_C1409C: LitI2_Byte 0
  loc_C1409E: LitI2_Byte 0
  loc_C140A0: LitI2_Byte 0
  loc_C140A2: LitStr "right"
  loc_C140A5: FMemLdR4 var_D4(28)
  loc_C140AA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C140AF: CVarStr var_C4
  loc_C140B2: PopAdLdVar
  loc_C140B3: FLdPr Me
  loc_C140B6: MemLdRfVar from_stack_1.global_60
  loc_C140B9: LdPrVar
  loc_C140BB: LateMemCall
  loc_C140C1: FFree1Var var_C4 = ""
  loc_C140C4: LitStr vbNullString
  loc_C140C7: LitI2_Byte 0
  loc_C140C9: LitI2_Byte 0
  loc_C140CB: LitI2_Byte 0
  loc_C140CD: LitStr "right"
  loc_C140D0: FMemLdR4 var_D4(32)
  loc_C140D5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C140DA: CVarStr var_C4
  loc_C140DD: PopAdLdVar
  loc_C140DE: FLdPr Me
  loc_C140E1: MemLdRfVar from_stack_1.global_60
  loc_C140E4: LdPrVar
  loc_C140E6: LateMemCall
  loc_C140EC: FFree1Var var_C4 = ""
  loc_C140EF: LitStr vbNullString
  loc_C140F2: LitI2_Byte 0
  loc_C140F4: LitI2_Byte 0
  loc_C140F6: LitI2_Byte 0
  loc_C140F8: LitStr "right"
  loc_C140FB: FMemLdR4 var_D4(36)
  loc_C14100: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C14105: CVarStr var_C4
  loc_C14108: PopAdLdVar
  loc_C14109: FLdPr Me
  loc_C1410C: MemLdRfVar from_stack_1.global_60
  loc_C1410F: LdPrVar
  loc_C14111: LateMemCall
  loc_C14117: FFree1Var var_C4 = ""
  loc_C1411A: LitStr vbNullString
  loc_C1411D: LitI2_Byte 0
  loc_C1411F: LitI2_Byte 0
  loc_C14121: LitI2_Byte 0
  loc_C14123: LitStr "right"
  loc_C14126: FMemLdR4 var_D4(40)
  loc_C1412B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C14130: CVarStr var_C4
  loc_C14133: PopAdLdVar
  loc_C14134: FLdPr Me
  loc_C14137: MemLdRfVar from_stack_1.global_60
  loc_C1413A: LdPrVar
  loc_C1413C: LateMemCall
  loc_C14142: FFree1Var var_C4 = ""
  loc_C14145: LitStr vbNullString
  loc_C14148: LitI2_Byte 0
  loc_C1414A: LitI2_Byte 0
  loc_C1414C: LitI2_Byte 0
  loc_C1414E: LitStr "right"
  loc_C14151: FMemLdR4 var_D4(44)
  loc_C14156: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C1415B: CVarStr var_C4
  loc_C1415E: PopAdLdVar
  loc_C1415F: FLdPr Me
  loc_C14162: MemLdRfVar from_stack_1.global_60
  loc_C14165: LdPrVar
  loc_C14167: LateMemCall
  loc_C1416D: FFree1Var var_C4 = ""
  loc_C14170: LitStr vbNullString
  loc_C14173: LitI2_Byte 0
  loc_C14175: LitI2_Byte 0
  loc_C14177: LitI2_Byte 0
  loc_C14179: LitStr "right"
  loc_C1417C: FMemLdR4 var_D4(48)
  loc_C14181: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C14186: CVarStr var_C4
  loc_C14189: PopAdLdVar
  loc_C1418A: FLdPr Me
  loc_C1418D: MemLdRfVar from_stack_1.global_60
  loc_C14190: LdPrVar
  loc_C14192: LateMemCall
  loc_C14198: FFree1Var var_C4 = ""
  loc_C1419B: LitVarStr var_A4, "     </tr>"
  loc_C141A0: PopAdLdVar
  loc_C141A1: FLdPr Me
  loc_C141A4: MemLdRfVar from_stack_1.global_60
  loc_C141A7: LdPrVar
  loc_C141A9: LateMemCall
  loc_C141AF: LitI4 0
  loc_C141B4: FStR4 var_D4
  loc_C141B7: AryUnlock
  loc_C141BA: AryUnlock
  loc_C141BD: FLdPr Me
  loc_C141C0: MemLdRfVar from_stack_1.global_90
  loc_C141C3: NextI2 var_C8, loc_C13F36
  loc_C141C8: LitVarStr var_A4, "  <tr class=""SubTotales"" align=""right"">"
  loc_C141CD: PopAdLdVar
  loc_C141CE: FLdPr Me
  loc_C141D1: MemLdRfVar from_stack_1.global_60
  loc_C141D4: LdPrVar
  loc_C141D6: LateMemCall
  loc_C141DC: LitVarStr var_A4, "     <td colspan=""4"" class=""LineaDatos"">Subtotales (excluyendo Pagadas)</td>"
  loc_C141E1: PopAdLdVar
  loc_C141E2: FLdPr Me
  loc_C141E5: MemLdRfVar from_stack_1.global_60
  loc_C141E8: LdPrVar
  loc_C141EA: LateMemCall
  loc_C141F0: FLdPr Me
  loc_C141F3: MemLdI2 global_88
  loc_C141F6: CI4UI1
  loc_C141F7: FLdPr Me
  loc_C141FA: MemLdStr global_84
  loc_C141FD: AryLock
  loc_C14200: Ary1LdPr
  loc_C14201: MemLdRfVar from_stack_1.global_80
  loc_C14204: FStR4 var_DC
  loc_C14207: LitStr vbNullString
  loc_C1420A: LitI2_Byte 0
  loc_C1420C: LitI2_Byte 0
  loc_C1420E: LitI2_Byte 0
  loc_C14210: LitStr "right"
  loc_C14213: FMemLdR4 var_DC(0)
  loc_C14218: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C1421D: CVarStr var_C4
  loc_C14220: PopAdLdVar
  loc_C14221: FLdPr Me
  loc_C14224: MemLdRfVar from_stack_1.global_60
  loc_C14227: LdPrVar
  loc_C14229: LateMemCall
  loc_C1422F: FFree1Var var_C4 = ""
  loc_C14232: LitStr vbNullString
  loc_C14235: LitI2_Byte 0
  loc_C14237: LitI2_Byte 0
  loc_C14239: LitI2_Byte 0
  loc_C1423B: LitStr "right"
  loc_C1423E: FMemLdR4 var_DC(4)
  loc_C14243: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C14248: CVarStr var_C4
  loc_C1424B: PopAdLdVar
  loc_C1424C: FLdPr Me
  loc_C1424F: MemLdRfVar from_stack_1.global_60
  loc_C14252: LdPrVar
  loc_C14254: LateMemCall
  loc_C1425A: FFree1Var var_C4 = ""
  loc_C1425D: LitStr vbNullString
  loc_C14260: LitI2_Byte 0
  loc_C14262: LitI2_Byte 0
  loc_C14264: LitI2_Byte 0
  loc_C14266: LitStr "right"
  loc_C14269: FMemLdR4 var_DC(8)
  loc_C1426E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C14273: CVarStr var_C4
  loc_C14276: PopAdLdVar
  loc_C14277: FLdPr Me
  loc_C1427A: MemLdRfVar from_stack_1.global_60
  loc_C1427D: LdPrVar
  loc_C1427F: LateMemCall
  loc_C14285: FFree1Var var_C4 = ""
  loc_C14288: LitStr vbNullString
  loc_C1428B: LitI2_Byte 0
  loc_C1428D: LitI2_Byte 0
  loc_C1428F: LitI2_Byte 0
  loc_C14291: LitStr "right"
  loc_C14294: FMemLdR4 var_DC(12)
  loc_C14299: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C1429E: CVarStr var_C4
  loc_C142A1: PopAdLdVar
  loc_C142A2: FLdPr Me
  loc_C142A5: MemLdRfVar from_stack_1.global_60
  loc_C142A8: LdPrVar
  loc_C142AA: LateMemCall
  loc_C142B0: FFree1Var var_C4 = ""
  loc_C142B3: LitStr vbNullString
  loc_C142B6: LitI2_Byte 0
  loc_C142B8: LitI2_Byte 0
  loc_C142BA: LitI2_Byte 0
  loc_C142BC: LitStr "right"
  loc_C142BF: FMemLdR4 var_DC(16)
  loc_C142C4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C142C9: CVarStr var_C4
  loc_C142CC: PopAdLdVar
  loc_C142CD: FLdPr Me
  loc_C142D0: MemLdRfVar from_stack_1.global_60
  loc_C142D3: LdPrVar
  loc_C142D5: LateMemCall
  loc_C142DB: FFree1Var var_C4 = ""
  loc_C142DE: LitStr vbNullString
  loc_C142E1: LitI2_Byte 0
  loc_C142E3: LitI2_Byte 0
  loc_C142E5: LitI2_Byte 0
  loc_C142E7: LitStr "right"
  loc_C142EA: FMemLdR4 var_DC(20)
  loc_C142EF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C142F4: CVarStr var_C4
  loc_C142F7: PopAdLdVar
  loc_C142F8: FLdPr Me
  loc_C142FB: MemLdRfVar from_stack_1.global_60
  loc_C142FE: LdPrVar
  loc_C14300: LateMemCall
  loc_C14306: FFree1Var var_C4 = ""
  loc_C14309: LitStr vbNullString
  loc_C1430C: LitI2_Byte 0
  loc_C1430E: LitI2_Byte 0
  loc_C14310: LitI2_Byte 0
  loc_C14312: LitStr "right"
  loc_C14315: FMemLdR4 var_DC(24)
  loc_C1431A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C1431F: CVarStr var_C4
  loc_C14322: PopAdLdVar
  loc_C14323: FLdPr Me
  loc_C14326: MemLdRfVar from_stack_1.global_60
  loc_C14329: LdPrVar
  loc_C1432B: LateMemCall
  loc_C14331: FFree1Var var_C4 = ""
  loc_C14334: LitStr vbNullString
  loc_C14337: LitI2_Byte 0
  loc_C14339: LitI2_Byte 0
  loc_C1433B: LitI2_Byte 0
  loc_C1433D: LitStr "right"
  loc_C14340: FMemLdR4 var_DC(28)
  loc_C14345: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C1434A: CVarStr var_C4
  loc_C1434D: PopAdLdVar
  loc_C1434E: FLdPr Me
  loc_C14351: MemLdRfVar from_stack_1.global_60
  loc_C14354: LdPrVar
  loc_C14356: LateMemCall
  loc_C1435C: FFree1Var var_C4 = ""
  loc_C1435F: LitStr vbNullString
  loc_C14362: LitI2_Byte 0
  loc_C14364: LitI2_Byte 0
  loc_C14366: LitI2_Byte 0
  loc_C14368: LitStr "right"
  loc_C1436B: FMemLdR4 var_DC(32)
  loc_C14370: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C14375: CVarStr var_C4
  loc_C14378: PopAdLdVar
  loc_C14379: FLdPr Me
  loc_C1437C: MemLdRfVar from_stack_1.global_60
  loc_C1437F: LdPrVar
  loc_C14381: LateMemCall
  loc_C14387: FFree1Var var_C4 = ""
  loc_C1438A: LitI4 0
  loc_C1438F: FStR4 var_DC
  loc_C14392: AryUnlock
  loc_C14395: LitVarStr var_A4, "     </tr>"
  loc_C1439A: PopAdLdVar
  loc_C1439B: FLdPr Me
  loc_C1439E: MemLdRfVar from_stack_1.global_60
  loc_C143A1: LdPrVar
  loc_C143A3: LateMemCall
  loc_C143A9: LitVarStr var_A4, "  </table></td>"
  loc_C143AE: PopAdLdVar
  loc_C143AF: FLdPr Me
  loc_C143B2: MemLdRfVar from_stack_1.global_60
  loc_C143B5: LdPrVar
  loc_C143B7: LateMemCall
  loc_C143BD: LitVarStr var_A4, "     </tr>"
  loc_C143C2: PopAdLdVar
  loc_C143C3: FLdPr Me
  loc_C143C6: MemLdRfVar from_stack_1.global_60
  loc_C143C9: LdPrVar
  loc_C143CB: LateMemCall
  loc_C143D1: FLdPr Me
  loc_C143D4: MemLdRfVar from_stack_1.global_88
  loc_C143D7: NextI2 var_8C, loc_C13A4C
  loc_C143DC: Call Proc_86_16_A0B808()
  loc_C143E1: FLdPr Me
  loc_C143E4: MemLdRfVar from_stack_1.global_60
  loc_C143E7: LdPrVar
  loc_C143E9: LateMemCall
  loc_C143EF: LitStr vbNullString
  loc_C143F2: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_C143F7: ExitProcHresult
End Sub

Private Function Proc_86_15_BBAF2C() 'BBAF2C
  'Data Table: 4545F4
  loc_BBA888: LitVarStr var_98, "<html>"
  loc_BBA88D: PopAdLdVar
  loc_BBA88E: FLdPr Me
  loc_BBA891: MemLdRfVar from_stack_1.global_60
  loc_BBA894: LdPrVar
  loc_BBA896: LateMemCall
  loc_BBA89C: LitVarStr var_98, "<head>"
  loc_BBA8A1: PopAdLdVar
  loc_BBA8A2: FLdPr Me
  loc_BBA8A5: MemLdRfVar from_stack_1.global_60
  loc_BBA8A8: LdPrVar
  loc_BBA8AA: LateMemCall
  loc_BBA8B0: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BBA8B5: PopAdLdVar
  loc_BBA8B6: FLdPr Me
  loc_BBA8B9: MemLdRfVar from_stack_1.global_60
  loc_BBA8BC: LdPrVar
  loc_BBA8BE: LateMemCall
  loc_BBA8C4: LitStr "<title>"
  loc_BBA8C7: FLdRfVar var_AC
  loc_BBA8CA: FLdPr Me
  loc_BBA8CD:  = Me.Caption
  loc_BBA8D2: ILdRf var_AC
  loc_BBA8D5: ConcatStr
  loc_BBA8D6: FStStrNoPop var_B0
  loc_BBA8D9: LitStr "</title>"
  loc_BBA8DC: ConcatStr
  loc_BBA8DD: CVarStr var_C0
  loc_BBA8E0: PopAdLdVar
  loc_BBA8E1: FLdPr Me
  loc_BBA8E4: MemLdRfVar from_stack_1.global_60
  loc_BBA8E7: LdPrVar
  loc_BBA8E9: LateMemCall
  loc_BBA8EF: FFreeStr var_AC = ""
  loc_BBA8F6: FFree1Var var_C0 = ""
  loc_BBA8F9: LitVarStr var_98, "<style type=""text/css"">"
  loc_BBA8FE: PopAdLdVar
  loc_BBA8FF: FLdPr Me
  loc_BBA902: MemLdRfVar from_stack_1.global_60
  loc_BBA905: LdPrVar
  loc_BBA907: LateMemCall
  loc_BBA90D: LitVarStr var_98, ".Titulo1 {"
  loc_BBA912: PopAdLdVar
  loc_BBA913: FLdPr Me
  loc_BBA916: MemLdRfVar from_stack_1.global_60
  loc_BBA919: LdPrVar
  loc_BBA91B: LateMemCall
  loc_BBA921: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBA926: PopAdLdVar
  loc_BBA927: FLdPr Me
  loc_BBA92A: MemLdRfVar from_stack_1.global_60
  loc_BBA92D: LdPrVar
  loc_BBA92F: LateMemCall
  loc_BBA935: LitVarStr var_98, " font-size: 18px;"
  loc_BBA93A: PopAdLdVar
  loc_BBA93B: FLdPr Me
  loc_BBA93E: MemLdRfVar from_stack_1.global_60
  loc_BBA941: LdPrVar
  loc_BBA943: LateMemCall
  loc_BBA949: LitVarStr var_98, " font-weight: bold;"
  loc_BBA94E: PopAdLdVar
  loc_BBA94F: FLdPr Me
  loc_BBA952: MemLdRfVar from_stack_1.global_60
  loc_BBA955: LdPrVar
  loc_BBA957: LateMemCall
  loc_BBA95D: LitVarStr var_98, "}"
  loc_BBA962: PopAdLdVar
  loc_BBA963: FLdPr Me
  loc_BBA966: MemLdRfVar from_stack_1.global_60
  loc_BBA969: LdPrVar
  loc_BBA96B: LateMemCall
  loc_BBA971: LitVarStr var_98, ".Titulo2 {"
  loc_BBA976: PopAdLdVar
  loc_BBA977: FLdPr Me
  loc_BBA97A: MemLdRfVar from_stack_1.global_60
  loc_BBA97D: LdPrVar
  loc_BBA97F: LateMemCall
  loc_BBA985: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBA98A: PopAdLdVar
  loc_BBA98B: FLdPr Me
  loc_BBA98E: MemLdRfVar from_stack_1.global_60
  loc_BBA991: LdPrVar
  loc_BBA993: LateMemCall
  loc_BBA999: LitVarStr var_98, " font-size: 14px;"
  loc_BBA99E: PopAdLdVar
  loc_BBA99F: FLdPr Me
  loc_BBA9A2: MemLdRfVar from_stack_1.global_60
  loc_BBA9A5: LdPrVar
  loc_BBA9A7: LateMemCall
  loc_BBA9AD: LitVarStr var_98, " font-weight: bold;"
  loc_BBA9B2: PopAdLdVar
  loc_BBA9B3: FLdPr Me
  loc_BBA9B6: MemLdRfVar from_stack_1.global_60
  loc_BBA9B9: LdPrVar
  loc_BBA9BB: LateMemCall
  loc_BBA9C1: LitVarStr var_98, "}"
  loc_BBA9C6: PopAdLdVar
  loc_BBA9C7: FLdPr Me
  loc_BBA9CA: MemLdRfVar from_stack_1.global_60
  loc_BBA9CD: LdPrVar
  loc_BBA9CF: LateMemCall
  loc_BBA9D5: LitVarStr var_98, ".Normal {"
  loc_BBA9DA: PopAdLdVar
  loc_BBA9DB: FLdPr Me
  loc_BBA9DE: MemLdRfVar from_stack_1.global_60
  loc_BBA9E1: LdPrVar
  loc_BBA9E3: LateMemCall
  loc_BBA9E9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBA9EE: PopAdLdVar
  loc_BBA9EF: FLdPr Me
  loc_BBA9F2: MemLdRfVar from_stack_1.global_60
  loc_BBA9F5: LdPrVar
  loc_BBA9F7: LateMemCall
  loc_BBA9FD: LitVarStr var_98, " font-size: 12px;"
  loc_BBAA02: PopAdLdVar
  loc_BBAA03: FLdPr Me
  loc_BBAA06: MemLdRfVar from_stack_1.global_60
  loc_BBAA09: LdPrVar
  loc_BBAA0B: LateMemCall
  loc_BBAA11: LitVarStr var_98, " font-style: normal;"
  loc_BBAA16: PopAdLdVar
  loc_BBAA17: FLdPr Me
  loc_BBAA1A: MemLdRfVar from_stack_1.global_60
  loc_BBAA1D: LdPrVar
  loc_BBAA1F: LateMemCall
  loc_BBAA25: LitVarStr var_98, " font-weight: normal;"
  loc_BBAA2A: PopAdLdVar
  loc_BBAA2B: FLdPr Me
  loc_BBAA2E: MemLdRfVar from_stack_1.global_60
  loc_BBAA31: LdPrVar
  loc_BBAA33: LateMemCall
  loc_BBAA39: LitVarStr var_98, " font-variant: normal;"
  loc_BBAA3E: PopAdLdVar
  loc_BBAA3F: FLdPr Me
  loc_BBAA42: MemLdRfVar from_stack_1.global_60
  loc_BBAA45: LdPrVar
  loc_BBAA47: LateMemCall
  loc_BBAA4D: LitVarStr var_98, "}"
  loc_BBAA52: PopAdLdVar
  loc_BBAA53: FLdPr Me
  loc_BBAA56: MemLdRfVar from_stack_1.global_60
  loc_BBAA59: LdPrVar
  loc_BBAA5B: LateMemCall
  loc_BBAA61: LitVarStr var_98, ".Encabezado {"
  loc_BBAA66: PopAdLdVar
  loc_BBAA67: FLdPr Me
  loc_BBAA6A: MemLdRfVar from_stack_1.global_60
  loc_BBAA6D: LdPrVar
  loc_BBAA6F: LateMemCall
  loc_BBAA75: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BBAA7A: PopAdLdVar
  loc_BBAA7B: FLdPr Me
  loc_BBAA7E: MemLdRfVar from_stack_1.global_60
  loc_BBAA81: LdPrVar
  loc_BBAA83: LateMemCall
  loc_BBAA89: LitVarStr var_98, " font-size: 11px;"
  loc_BBAA8E: PopAdLdVar
  loc_BBAA8F: FLdPr Me
  loc_BBAA92: MemLdRfVar from_stack_1.global_60
  loc_BBAA95: LdPrVar
  loc_BBAA97: LateMemCall
  loc_BBAA9D: LitVarStr var_98, " font-weight: bold;"
  loc_BBAAA2: PopAdLdVar
  loc_BBAAA3: FLdPr Me
  loc_BBAAA6: MemLdRfVar from_stack_1.global_60
  loc_BBAAA9: LdPrVar
  loc_BBAAAB: LateMemCall
  loc_BBAAB1: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BBAAB6: PopAdLdVar
  loc_BBAAB7: FLdPr Me
  loc_BBAABA: MemLdRfVar from_stack_1.global_60
  loc_BBAABD: LdPrVar
  loc_BBAABF: LateMemCall
  loc_BBAAC5: LitVarStr var_98, "}"
  loc_BBAACA: PopAdLdVar
  loc_BBAACB: FLdPr Me
  loc_BBAACE: MemLdRfVar from_stack_1.global_60
  loc_BBAAD1: LdPrVar
  loc_BBAAD3: LateMemCall
  loc_BBAAD9: LitVarStr var_98, ".LineaDato {"
  loc_BBAADE: PopAdLdVar
  loc_BBAADF: FLdPr Me
  loc_BBAAE2: MemLdRfVar from_stack_1.global_60
  loc_BBAAE5: LdPrVar
  loc_BBAAE7: LateMemCall
  loc_BBAAED: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBAAF2: PopAdLdVar
  loc_BBAAF3: FLdPr Me
  loc_BBAAF6: MemLdRfVar from_stack_1.global_60
  loc_BBAAF9: LdPrVar
  loc_BBAAFB: LateMemCall
  loc_BBAB01: LitVarStr var_98, " font-size: 10px;"
  loc_BBAB06: PopAdLdVar
  loc_BBAB07: FLdPr Me
  loc_BBAB0A: MemLdRfVar from_stack_1.global_60
  loc_BBAB0D: LdPrVar
  loc_BBAB0F: LateMemCall
  loc_BBAB15: LitVarStr var_98, "}"
  loc_BBAB1A: PopAdLdVar
  loc_BBAB1B: FLdPr Me
  loc_BBAB1E: MemLdRfVar from_stack_1.global_60
  loc_BBAB21: LdPrVar
  loc_BBAB23: LateMemCall
  loc_BBAB29: LitVarStr var_98, ".Totales {"
  loc_BBAB2E: PopAdLdVar
  loc_BBAB2F: FLdPr Me
  loc_BBAB32: MemLdRfVar from_stack_1.global_60
  loc_BBAB35: LdPrVar
  loc_BBAB37: LateMemCall
  loc_BBAB3D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBAB42: PopAdLdVar
  loc_BBAB43: FLdPr Me
  loc_BBAB46: MemLdRfVar from_stack_1.global_60
  loc_BBAB49: LdPrVar
  loc_BBAB4B: LateMemCall
  loc_BBAB51: LitVarStr var_98, " font-size: 12px;"
  loc_BBAB56: PopAdLdVar
  loc_BBAB57: FLdPr Me
  loc_BBAB5A: MemLdRfVar from_stack_1.global_60
  loc_BBAB5D: LdPrVar
  loc_BBAB5F: LateMemCall
  loc_BBAB65: LitVarStr var_98, " font-weight: bold;"
  loc_BBAB6A: PopAdLdVar
  loc_BBAB6B: FLdPr Me
  loc_BBAB6E: MemLdRfVar from_stack_1.global_60
  loc_BBAB71: LdPrVar
  loc_BBAB73: LateMemCall
  loc_BBAB79: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BBAB7E: PopAdLdVar
  loc_BBAB7F: FLdPr Me
  loc_BBAB82: MemLdRfVar from_stack_1.global_60
  loc_BBAB85: LdPrVar
  loc_BBAB87: LateMemCall
  loc_BBAB8D: LitVarStr var_98, "}"
  loc_BBAB92: PopAdLdVar
  loc_BBAB93: FLdPr Me
  loc_BBAB96: MemLdRfVar from_stack_1.global_60
  loc_BBAB99: LdPrVar
  loc_BBAB9B: LateMemCall
  loc_BBABA1: LitVarStr var_98, ".SubTotales {"
  loc_BBABA6: PopAdLdVar
  loc_BBABA7: FLdPr Me
  loc_BBABAA: MemLdRfVar from_stack_1.global_60
  loc_BBABAD: LdPrVar
  loc_BBABAF: LateMemCall
  loc_BBABB5: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBABBA: PopAdLdVar
  loc_BBABBB: FLdPr Me
  loc_BBABBE: MemLdRfVar from_stack_1.global_60
  loc_BBABC1: LdPrVar
  loc_BBABC3: LateMemCall
  loc_BBABC9: LitVarStr var_98, " font-size: 10px;"
  loc_BBABCE: PopAdLdVar
  loc_BBABCF: FLdPr Me
  loc_BBABD2: MemLdRfVar from_stack_1.global_60
  loc_BBABD5: LdPrVar
  loc_BBABD7: LateMemCall
  loc_BBABDD: LitVarStr var_98, " font-weight: bold;"
  loc_BBABE2: PopAdLdVar
  loc_BBABE3: FLdPr Me
  loc_BBABE6: MemLdRfVar from_stack_1.global_60
  loc_BBABE9: LdPrVar
  loc_BBABEB: LateMemCall
  loc_BBABF1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BBABF6: PopAdLdVar
  loc_BBABF7: FLdPr Me
  loc_BBABFA: MemLdRfVar from_stack_1.global_60
  loc_BBABFD: LdPrVar
  loc_BBABFF: LateMemCall
  loc_BBAC05: LitVarStr var_98, "}"
  loc_BBAC0A: PopAdLdVar
  loc_BBAC0B: FLdPr Me
  loc_BBAC0E: MemLdRfVar from_stack_1.global_60
  loc_BBAC11: LdPrVar
  loc_BBAC13: LateMemCall
  loc_BBAC19: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BBAC1E: PopAdLdVar
  loc_BBAC1F: FLdPr Me
  loc_BBAC22: MemLdRfVar from_stack_1.global_60
  loc_BBAC25: LdPrVar
  loc_BBAC27: LateMemCall
  loc_BBAC2D: LitVarStr var_98, "</style>"
  loc_BBAC32: PopAdLdVar
  loc_BBAC33: FLdPr Me
  loc_BBAC36: MemLdRfVar from_stack_1.global_60
  loc_BBAC39: LdPrVar
  loc_BBAC3B: LateMemCall
  loc_BBAC41: LitI4 0
  loc_BBAC46: FStStrCopy var_B0
  loc_BBAC49: FLdRfVar var_B0
  loc_BBAC4C: LitI4 0
  loc_BBAC51: FStStrCopy var_AC
  loc_BBAC54: FLdRfVar var_AC
  loc_BBAC57: LitI2_Byte &HFF
  loc_BBAC59: PopTmpLdAd2 var_C2
  loc_BBAC5C: FLdPr Me
  loc_BBAC5F: MemLdRfVar from_stack_1.global_60
  loc_BBAC62: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BBAC67: FFreeStr var_AC = ""
  loc_BBAC6E: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BBAC73: PopAdLdVar
  loc_BBAC74: FLdPr Me
  loc_BBAC77: MemLdRfVar from_stack_1.global_60
  loc_BBAC7A: LdPrVar
  loc_BBAC7C: LateMemCall
  loc_BBAC82: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BBAC87: PopAdLdVar
  loc_BBAC88: FLdPr Me
  loc_BBAC8B: MemLdRfVar from_stack_1.global_60
  loc_BBAC8E: LdPrVar
  loc_BBAC90: LateMemCall
  loc_BBAC96: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BBAC99: LitI2_Byte &H5F
  loc_BBAC9B: CStrUI1
  loc_BBAC9D: FStStrNoPop var_AC
  loc_BBACA0: ConcatStr
  loc_BBACA1: FStStrNoPop var_B0
  loc_BBACA4: LitStr """ height="""
  loc_BBACA7: ConcatStr
  loc_BBACA8: FStStrNoPop var_C8
  loc_BBACAB: LitI2_Byte &H3C
  loc_BBACAD: CStrUI1
  loc_BBACAF: FStStrNoPop var_CC
  loc_BBACB2: ConcatStr
  loc_BBACB3: FStStrNoPop var_D0
  loc_BBACB6: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BBACB9: ConcatStr
  loc_BBACBA: FStStrNoPop var_D4
  loc_BBACBD: LitStr "Municipalidad de Guaymallén"
  loc_BBACC0: ConcatStr
  loc_BBACC1: FStStrNoPop var_D8
  loc_BBACC4: LitStr "</p>"
  loc_BBACC7: ConcatStr
  loc_BBACC8: CVarStr var_C0
  loc_BBACCB: PopAdLdVar
  loc_BBACCC: FLdPr Me
  loc_BBACCF: MemLdRfVar from_stack_1.global_60
  loc_BBACD2: LdPrVar
  loc_BBACD4: LateMemCall
  loc_BBACDA: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BBACEB: FFree1Var var_C0 = ""
  loc_BBACEE: LitStr "    <p>"
  loc_BBACF1: FLdRfVar var_AC
  loc_BBACF4: FLdPr Me
  loc_BBACF7:  = Me.Caption
  loc_BBACFC: ILdRf var_AC
  loc_BBACFF: ConcatStr
  loc_BBAD00: FStStrNoPop var_B0
  loc_BBAD03: LitStr "</p></th>"
  loc_BBAD06: ConcatStr
  loc_BBAD07: CVarStr var_C0
  loc_BBAD0A: PopAdLdVar
  loc_BBAD0B: FLdPr Me
  loc_BBAD0E: MemLdRfVar from_stack_1.global_60
  loc_BBAD11: LdPrVar
  loc_BBAD13: LateMemCall
  loc_BBAD19: FFreeStr var_AC = ""
  loc_BBAD20: FFree1Var var_C0 = ""
  loc_BBAD23: LitVarStr var_98, "  </tr>"
  loc_BBAD28: PopAdLdVar
  loc_BBAD29: FLdPr Me
  loc_BBAD2C: MemLdRfVar from_stack_1.global_60
  loc_BBAD2F: LdPrVar
  loc_BBAD31: LateMemCall
  loc_BBAD37: LitVarStr var_98, "  <tr>"
  loc_BBAD3C: PopAdLdVar
  loc_BBAD3D: FLdPr Me
  loc_BBAD40: MemLdRfVar from_stack_1.global_60
  loc_BBAD43: LdPrVar
  loc_BBAD45: LateMemCall
  loc_BBAD4B: LitVarStr var_98, "    <th><hr></th>"
  loc_BBAD50: PopAdLdVar
  loc_BBAD51: FLdPr Me
  loc_BBAD54: MemLdRfVar from_stack_1.global_60
  loc_BBAD57: LdPrVar
  loc_BBAD59: LateMemCall
  loc_BBAD5F: LitVarStr var_98, "  </tr>"
  loc_BBAD64: PopAdLdVar
  loc_BBAD65: FLdPr Me
  loc_BBAD68: MemLdRfVar from_stack_1.global_60
  loc_BBAD6B: LdPrVar
  loc_BBAD6D: LateMemCall
  loc_BBAD73: LitVarStr var_98, "</table>"
  loc_BBAD78: PopAdLdVar
  loc_BBAD79: FLdPr Me
  loc_BBAD7C: MemLdRfVar from_stack_1.global_60
  loc_BBAD7F: LdPrVar
  loc_BBAD81: LateMemCall
  loc_BBAD87: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BBAD8C: PopAdLdVar
  loc_BBAD8D: FLdPr Me
  loc_BBAD90: MemLdRfVar from_stack_1.global_60
  loc_BBAD93: LdPrVar
  loc_BBAD95: LateMemCall
  loc_BBAD9B: LitVarStr var_98, "  <thead>"
  loc_BBADA0: PopAdLdVar
  loc_BBADA1: FLdPr Me
  loc_BBADA4: MemLdRfVar from_stack_1.global_60
  loc_BBADA7: LdPrVar
  loc_BBADA9: LateMemCall
  loc_BBADAF: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BBADB4: PopAdLdVar
  loc_BBADB5: FLdPr Me
  loc_BBADB8: MemLdRfVar from_stack_1.global_60
  loc_BBADBB: LdPrVar
  loc_BBADBD: LateMemCall
  loc_BBADC3: LitVarStr var_98, "    <th>Facilidad</th>"
  loc_BBADC8: PopAdLdVar
  loc_BBADC9: FLdPr Me
  loc_BBADCC: MemLdRfVar from_stack_1.global_60
  loc_BBADCF: LdPrVar
  loc_BBADD1: LateMemCall
  loc_BBADD7: LitVarStr var_98, "    <th>Tipo</th>"
  loc_BBADDC: PopAdLdVar
  loc_BBADDD: FLdPr Me
  loc_BBADE0: MemLdRfVar from_stack_1.global_60
  loc_BBADE3: LdPrVar
  loc_BBADE5: LateMemCall
  loc_BBADEB: LitVarStr var_98, "    <th>Cuotas</th>"
  loc_BBADF0: PopAdLdVar
  loc_BBADF1: FLdPr Me
  loc_BBADF4: MemLdRfVar from_stack_1.global_60
  loc_BBADF7: LdPrVar
  loc_BBADF9: LateMemCall
  loc_BBADFF: LitVarStr var_98, "    <th>C. Aprep.</th>"
  loc_BBAE04: PopAdLdVar
  loc_BBAE05: FLdPr Me
  loc_BBAE08: MemLdRfVar from_stack_1.global_60
  loc_BBAE0B: LdPrVar
  loc_BBAE0D: LateMemCall
  loc_BBAE13: LitVarStr var_98, "    <th>Fecha Alta</th>"
  loc_BBAE18: PopAdLdVar
  loc_BBAE19: FLdPr Me
  loc_BBAE1C: MemLdRfVar from_stack_1.global_60
  loc_BBAE1F: LdPrVar
  loc_BBAE21: LateMemCall
  loc_BBAE27: LitVarStr var_98, "    <th>Fecha Pago</th>"
  loc_BBAE2C: PopAdLdVar
  loc_BBAE2D: FLdPr Me
  loc_BBAE30: MemLdRfVar from_stack_1.global_60
  loc_BBAE33: LdPrVar
  loc_BBAE35: LateMemCall
  loc_BBAE3B: LitVarStr var_98, "    <th>Oficina</th>"
  loc_BBAE40: PopAdLdVar
  loc_BBAE41: FLdPr Me
  loc_BBAE44: MemLdRfVar from_stack_1.global_60
  loc_BBAE47: LdPrVar
  loc_BBAE49: LateMemCall
  loc_BBAE4F: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_BBAE54: PopAdLdVar
  loc_BBAE55: FLdPr Me
  loc_BBAE58: MemLdRfVar from_stack_1.global_60
  loc_BBAE5B: LdPrVar
  loc_BBAE5D: LateMemCall
  loc_BBAE63: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_BBAE68: PopAdLdVar
  loc_BBAE69: FLdPr Me
  loc_BBAE6C: MemLdRfVar from_stack_1.global_60
  loc_BBAE6F: LdPrVar
  loc_BBAE71: LateMemCall
  loc_BBAE77: LitVarStr var_98, "    <th>Estado</th>"
  loc_BBAE7C: PopAdLdVar
  loc_BBAE7D: FLdPr Me
  loc_BBAE80: MemLdRfVar from_stack_1.global_60
  loc_BBAE83: LdPrVar
  loc_BBAE85: LateMemCall
  loc_BBAE8B: LitVarStr var_98, "    <th>Capital</th>"
  loc_BBAE90: PopAdLdVar
  loc_BBAE91: FLdPr Me
  loc_BBAE94: MemLdRfVar from_stack_1.global_60
  loc_BBAE97: LdPrVar
  loc_BBAE99: LateMemCall
  loc_BBAE9F: LitVarStr var_98, "    <th>Desc. Capi</th>"
  loc_BBAEA4: PopAdLdVar
  loc_BBAEA5: FLdPr Me
  loc_BBAEA8: MemLdRfVar from_stack_1.global_60
  loc_BBAEAB: LdPrVar
  loc_BBAEAD: LateMemCall
  loc_BBAEB3: LitVarStr var_98, "    <th>Recargo</th>"
  loc_BBAEB8: PopAdLdVar
  loc_BBAEB9: FLdPr Me
  loc_BBAEBC: MemLdRfVar from_stack_1.global_60
  loc_BBAEBF: LdPrVar
  loc_BBAEC1: LateMemCall
  loc_BBAEC7: LitVarStr var_98, "    <th>Desc. Reca.</th>"
  loc_BBAECC: PopAdLdVar
  loc_BBAECD: FLdPr Me
  loc_BBAED0: MemLdRfVar from_stack_1.global_60
  loc_BBAED3: LdPrVar
  loc_BBAED5: LateMemCall
  loc_BBAEDB: LitVarStr var_98, "    <th>Apremio</th>"
  loc_BBAEE0: PopAdLdVar
  loc_BBAEE1: FLdPr Me
  loc_BBAEE4: MemLdRfVar from_stack_1.global_60
  loc_BBAEE7: LdPrVar
  loc_BBAEE9: LateMemCall
  loc_BBAEEF: LitVarStr var_98, "    <th>Interés</th>"
  loc_BBAEF4: PopAdLdVar
  loc_BBAEF5: FLdPr Me
  loc_BBAEF8: MemLdRfVar from_stack_1.global_60
  loc_BBAEFB: LdPrVar
  loc_BBAEFD: LateMemCall
  loc_BBAF03: LitVarStr var_98, "    <th>Total</th>"
  loc_BBAF08: PopAdLdVar
  loc_BBAF09: FLdPr Me
  loc_BBAF0C: MemLdRfVar from_stack_1.global_60
  loc_BBAF0F: LdPrVar
  loc_BBAF11: LateMemCall
  loc_BBAF17: LitVarStr var_98, "  </tr>"
  loc_BBAF1C: PopAdLdVar
  loc_BBAF1D: FLdPr Me
  loc_BBAF20: MemLdRfVar from_stack_1.global_60
  loc_BBAF23: LdPrVar
  loc_BBAF25: LateMemCall
  loc_BBAF2B: ExitProcHresult
End Function

Private Function Proc_86_16_A0B808() 'A0B808
  'Data Table: 4545F4
  loc_A0B7C8: LitVarStr var_94, "</table>"
  loc_A0B7CD: PopAdLdVar
  loc_A0B7CE: FLdPr Me
  loc_A0B7D1: MemLdRfVar from_stack_1.global_60
  loc_A0B7D4: LdPrVar
  loc_A0B7D6: LateMemCall
  loc_A0B7DC: LitVarStr var_94, "</body>"
  loc_A0B7E1: PopAdLdVar
  loc_A0B7E2: FLdPr Me
  loc_A0B7E5: MemLdRfVar from_stack_1.global_60
  loc_A0B7E8: LdPrVar
  loc_A0B7EA: LateMemCall
  loc_A0B7F0: LitVarStr var_94, "</html>"
  loc_A0B7F5: PopAdLdVar
  loc_A0B7F6: FLdPr Me
  loc_A0B7F9: MemLdRfVar from_stack_1.global_60
  loc_A0B7FC: LdPrVar
  loc_A0B7FE: LateMemCall
  loc_A0B804: ExitProcHresult
End Function
