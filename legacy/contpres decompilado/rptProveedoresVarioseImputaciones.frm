VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptProveedoresVarioseImputaciones
  Caption = "Proveedores Varios e Imputaciones"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptProveedoresVarioseImputaciones.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6195
  ClientHeight = 2880
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2625
    Width = 6195
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptProveedoresVarioseImputaciones.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 1680
    Width = 735
    Height = 615
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptProveedoresVarioseImputaciones.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptProveedoresVarioseImputaciones.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1440
    Width = 1815
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1440
    Width = 3015
    Height = 1095
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5895
    Height = 1335
    TabIndex = 0
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 1560
      Top = 720
      Width = 1095
      Height = 315
      TabIndex = 5
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1560
      Top = 240
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.Label Label1
      Caption = "Mes:"
      Left = 1080
      Top = 720
      Width = 345
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 840
      Top = 240
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 2040
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptProveedoresVarioseImputaciones.frx":0C00
  End
End

Attribute VB_Name = "rptProveedoresVarioseImputaciones"

Public bGenerado As Boolean

Private Type UDT_1_00519134
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub cmdSalir_Click() '9776D4
  'Data Table: 4397A4
  loc_9776A4: LitVarStr var_94, "Cerrando..."
  loc_9776A9: PopAdLdVar
  loc_9776AA: FLdPr Me
  loc_9776AD: VCallAd Control_ID_statusBar
  loc_9776B0: FStAdFunc var_A8
  loc_9776B3: FLdPr var_A8
  loc_9776B6: LateIdSt
  loc_9776BB: FFree1Ad var_A8
  loc_9776BE: ILdRf Me
  loc_9776C1: FStAdNoPop
  loc_9776C5: ImpAdLdRf MemVar_C44F9C
  loc_9776C8: NewIfNullPr Me
  loc_9776CB: Me.Global.Unload from_stack_1
  loc_9776D0: FFree1Ad var_A8
  loc_9776D3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '98D030
  'Data Table: 4397A4
  loc_98CFE8: LitI2_Byte 0
  loc_98CFEA: FLdPr Me
  loc_98CFED: MemStI2 bGenerado
  loc_98CFF0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_98CFF5: ImpAdLdI2 MemVar_C3D064
  loc_98CFF8: CStrUI1
  loc_98CFFA: FStStrNoPop var_88
  loc_98CFFD: FLdPr Me
  loc_98D000: VCallAd Control_ID_cboPeriodo
  loc_98D003: FStAdFunc var_8C
  loc_98D006: FLdPr var_8C
  loc_98D009: Me.Text = from_stack_1
  loc_98D00E: FFree1Str var_88
  loc_98D011: FFree1Ad var_8C
  loc_98D014: Call HabilitarCriterio()
  loc_98D019: ILdRf Me
  loc_98D01C: CastAd
  loc_98D01F: FStAdFunc var_8C
  loc_98D022: FLdRfVar var_8C
  loc_98D025: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_98D02A: FFree1Ad var_8C
  loc_98D02D: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9660F4
  'Data Table: 4397A4
  loc_9660DC: ILdRf Me
  loc_9660DF: CastAd
  loc_9660E2: FStAdFunc var_88
  loc_9660E5: FLdRfVar var_88
  loc_9660E8: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9660ED: FFree1Ad var_88
  loc_9660F0: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9660A8
  'Data Table: 4397A4
  loc_966090: LitI2_Byte 0
  loc_966092: ILdRf Me
  loc_966095: CastAd
  loc_966098: FStAdFunc var_88
  loc_96609B: FLdRfVar var_88
  loc_96609E: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9660A3: FFree1Ad var_88
  loc_9660A6: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98C1C4
  'Data Table: 4397A4
  loc_98C18C: FLdPr Me
  loc_98C18F: VCallAd Control_ID_statusBar
  loc_98C192: FStAdFunc var_88
  loc_98C195: FLdPr var_88
  loc_98C198: LateIdLdVar var_98 DispID_1 0
  loc_98C19F: CStrVarTmp
  loc_98C1A0: CVarStr var_A8
  loc_98C1A3: PopAdLdVar
  loc_98C1A4: FLdPr Me
  loc_98C1A7: VCallAd Control_ID_statusBar
  loc_98C1AA: FStAdFunc var_BC
  loc_98C1AD: FLdPr var_BC
  loc_98C1B0: LateIdSt
  loc_98C1B5: FFreeAd var_88 = ""
  loc_98C1BC: FFreeVar var_98 = ""
  loc_98C1C3: ExitProcHresult
End Sub

Private Sub Form_Load() '9CD29C
  'Data Table: 4397A4
  loc_9CD1C4: LitI2_Byte &HFF
  loc_9CD1C6: ImpAdStI2 MemVar_C3D840
  loc_9CD1C9: ILdRf Me
  loc_9CD1CC: CastAd
  loc_9CD1CF: FStAdFunc var_8C
  loc_9CD1D2: FLdRfVar var_8C
  loc_9CD1D5: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CD1DA: FFree1Ad var_8C
  loc_9CD1DD: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CD1E0: FLdRfVar var_88
  loc_9CD1E3: NewIfNullPr clsperiodo
  loc_9CD1E6: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CD1EB: FLdRfVar var_90
  loc_9CD1EE: FLdRfVar var_88
  loc_9CD1F1: NewIfNullPr clsperiodo
  loc_9CD1F4: from_stack_1 = clsperiodo.RecordCount
  loc_9CD1F9: ILdRf var_90
  loc_9CD1FC: LitI4 0
  loc_9CD201: GtI4
  loc_9CD202: BranchF loc_9CD295
  loc_9CD205: FLdRfVar var_88
  loc_9CD208: NewIfNullPr clsperiodo
  loc_9CD20B: Call clsperiodo.MoveFirst()
  loc_9CD210: FLdRfVar var_92
  loc_9CD213: FLdRfVar var_88
  loc_9CD216: NewIfNullPr clsperiodo
  loc_9CD219: from_stack_1 = clsperiodo.EOF
  loc_9CD21E: FLdI2 var_92
  loc_9CD221: NotI4
  loc_9CD222: BranchF loc_9CD295
  loc_9CD225: LitVar_Missing var_D0
  loc_9CD228: PopAdLdVar
  loc_9CD229: FLdRfVar var_BC
  loc_9CD22C: FLdRfVar var_AC
  loc_9CD22F: LitVarStr var_A8, "PeriInfo"
  loc_9CD234: PopAdLdVar
  loc_9CD235: FLdRfVar var_98
  loc_9CD238: FLdRfVar var_8C
  loc_9CD23B: FLdRfVar var_88
  loc_9CD23E: NewIfNullPr clsperiodo
  loc_9CD241: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CD246: FLdPr var_8C
  loc_9CD249:  = Me.Fields
  loc_9CD24E: FLdPr var_98
  loc_9CD251: from_stack_2 = Me.Item(from_stack_1)
  loc_9CD256: FLdPr var_AC
  loc_9CD259:  = Me.Value
  loc_9CD25E: FLdRfVar var_BC
  loc_9CD261: CStrVarTmp
  loc_9CD262: FStStrNoPop var_C0
  loc_9CD265: FLdPr Me
  loc_9CD268: VCallAd Control_ID_cboPeriodo
  loc_9CD26B: FStAdFunc var_D4
  loc_9CD26E: FLdPr var_D4
  loc_9CD271: Me.AddItem from_stack_1, from_stack_2
  loc_9CD276: FFree1Str var_C0
  loc_9CD279: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CD284: FFree1Var var_BC = ""
  loc_9CD287: FLdRfVar var_88
  loc_9CD28A: NewIfNullPr clsperiodo
  loc_9CD28D: Call clsperiodo.MoveSiguiente()
  loc_9CD292: Branch loc_9CD210
  loc_9CD295: Call cmdNueva_Click()
  loc_9CD29A: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '965F2C
  'Data Table: 4397A4
  loc_965F14: FLdPr Me
  loc_965F17: VCallAd Control_ID_wbbReporte
  loc_965F1A: FStAdFunc var_88
  loc_965F1D: FLdRfVar var_88
  loc_965F20: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_965F25: FFree1Ad var_88
  loc_965F28: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '96618C
  'Data Table: 4397A4
  loc_966174: ILdRf Me
  loc_966177: CastAd
  loc_96617A: FStAdFunc var_88
  loc_96617D: FLdRfVar var_88
  loc_966180: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_966185: FFree1Ad var_88
  loc_966188: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() 'A1C110
  'Data Table: 4397A4
  loc_A1BF8C: FLdPr Me
  loc_A1BF8F: MemLdRfVar from_stack_1.global_56
  loc_A1BF92: NewIfNullAd
  loc_A1BF95: FStAd var_88 
  loc_A1BF99: LitStr "SELECT month(FechAsie) AS FechAsie FROM asiento WHERE PeriInfo = "
  loc_A1BF9C: FLdRfVar var_90
  loc_A1BF9F: FLdPr Me
  loc_A1BFA2: VCallAd Control_ID_cboPeriodo
  loc_A1BFA5: FStAdFunc var_8C
  loc_A1BFA8: FLdPr var_8C
  loc_A1BFAB:  = Me.Text
  loc_A1BFB0: ILdRf var_90
  loc_A1BFB3: ConcatStr
  loc_A1BFB4: FStStrNoPop var_94
  loc_A1BFB7: LitStr " ORDER BY FechAsie DESC LIMIT 1"
  loc_A1BFBA: ConcatStr
  loc_A1BFBB: FStStrNoPop var_98
  loc_A1BFBE: FLdPr var_88
  loc_A1BFC1: Call clsasiento.RedefineRS(from_stack_1v)
  loc_A1BFC6: FFreeStr var_90 = "": var_94 = ""
  loc_A1BFCF: FFree1Ad var_8C
  loc_A1BFD2: FLdRfVar var_9C
  loc_A1BFD5: FLdPr var_88
  loc_A1BFD8: from_stack_1 = clsasiento.RecordCount
  loc_A1BFDD: ILdRf var_9C
  loc_A1BFE0: LitI4 0
  loc_A1BFE5: GtI4
  loc_A1BFE6: BranchF loc_A1C0F9
  loc_A1BFE9: FLdPr Me
  loc_A1BFEC: VCallAd Control_ID_cboMes
  loc_A1BFEF: FStAdFunc var_A0
  loc_A1BFF2: FLdPr var_A0
  loc_A1BFF5: Me.Clear
  loc_A1BFFA: LitI2_Byte 1
  loc_A1BFFC: CUI1I2
  loc_A1BFFE: FLdRfVar var_A2
  loc_A1C001: FLdRfVar var_CC
  loc_A1C004: FLdRfVar var_BC
  loc_A1C007: LitVarStr var_B8, "FechAsie"
  loc_A1C00C: PopAdLdVar
  loc_A1C00D: FLdRfVar var_A8
  loc_A1C010: FLdRfVar var_8C
  loc_A1C013: FLdPr Me
  loc_A1C016: MemLdRfVar from_stack_1.global_56
  loc_A1C019: NewIfNullPr clsasiento
  loc_A1C01C: from_stack_1v = clsasiento.RsFrmGet()
  loc_A1C021: FLdPr var_8C
  loc_A1C024:  = Me.Fields
  loc_A1C029: FLdPr var_A8
  loc_A1C02C: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C031: FLdPr var_BC
  loc_A1C034:  = Me.Value
  loc_A1C039: FLdRfVar var_CC
  loc_A1C03C: CUI1Var
  loc_A1C03E: FFreeAd var_8C = "": var_A8 = ""
  loc_A1C047: FFree1Var var_CC = ""
  loc_A1C04A: ForUI1 var_D0
  loc_A1C050: LitVar_Missing var_B8
  loc_A1C053: PopAdLdVar
  loc_A1C054: LitI2_Byte 0
  loc_A1C056: FLdUI1
  loc_A1C05A: CI4UI1
  loc_A1C05B: ImpAdCallI2 MonthName(, )
  loc_A1C060: FStStrNoPop var_90
  loc_A1C063: FLdPr var_A0
  loc_A1C066: Me.AddItem from_stack_1, from_stack_2
  loc_A1C06B: FFree1Str var_90
  loc_A1C06E: FLdUI1
  loc_A1C072: CI4UI1
  loc_A1C073: FLdRfVar var_D2
  loc_A1C076: FLdPr var_A0
  loc_A1C079:  = Me.NewIndex
  loc_A1C07E: FLdI2 var_D2
  loc_A1C081: FLdPr var_A0
  loc_A1C084: Me.ItemData = from_stack_1
  loc_A1C089: FLdRfVar var_A2
  loc_A1C08C: NextUI1
  loc_A1C092: LitNothing
  loc_A1C094: FStAd var_A0 
  loc_A1C098: FLdRfVar var_CC
  loc_A1C09B: FLdRfVar var_BC
  loc_A1C09E: LitVarStr var_B8, "FechAsie"
  loc_A1C0A3: PopAdLdVar
  loc_A1C0A4: FLdRfVar var_A8
  loc_A1C0A7: FLdRfVar var_8C
  loc_A1C0AA: FLdPr var_88
  loc_A1C0AD: from_stack_1v = clsasiento.RsFrmGet()
  loc_A1C0B2: FLdPr var_8C
  loc_A1C0B5:  = Me.Fields
  loc_A1C0BA: FLdPr var_A8
  loc_A1C0BD: from_stack_2 = Me.Item(from_stack_1)
  loc_A1C0C2: FLdPr var_BC
  loc_A1C0C5:  = Me.Value
  loc_A1C0CA: FLdRfVar var_CC
  loc_A1C0CD: LitVarI2 var_E4, 1
  loc_A1C0D2: SubVar var_F4
  loc_A1C0D6: CI2Var
  loc_A1C0D7: FLdPr Me
  loc_A1C0DA: VCallAd Control_ID_cboMes
  loc_A1C0DD: FStAdFunc var_F8
  loc_A1C0E0: FLdPr var_F8
  loc_A1C0E3: Me.ListIndex = from_stack_1
  loc_A1C0E8: FFreeAd var_8C = "": var_A8 = "": var_BC = ""
  loc_A1C0F3: FFree1Var var_CC = ""
  loc_A1C0F6: Branch loc_A1C106
  loc_A1C0F9: LitI4 0
  loc_A1C0FE: LitStr "El periodo seleccionado no posee asientos"
  loc_A1C101: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A1C106: LitNothing
  loc_A1C108: FStAd var_88 
  loc_A1C10C: ExitProcHresult
End Sub

Public Function bGeneradoGet() '43A2BC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '43A2CB
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '991B70
  'Data Table: 4397A4
  loc_991B2C: LitI4 0
  loc_991B31: LitI4 1
  loc_991B36: FLdRfVar var_88
  loc_991B39: Redim
  loc_991B43: FLdPr Me
  loc_991B46: VCallAd Control_ID_cboPeriodo
  loc_991B49: CVarAd
  loc_991B4D: ParmAry1St
  loc_991B53: FLdPr Me
  loc_991B56: VCallAd Control_ID_cboMes
  loc_991B59: CVarAd
  loc_991B5D: ParmAry1St
  loc_991B63: FLdRfVar var_88
  loc_991B66: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_991B6B: FLdRfVar var_88
  loc_991B6E: Erase
  loc_991B6F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B213A8
  'Data Table: 4397A4
  loc_B20B64: FLdPr Me
  loc_B20B67: MemLdI2 bGenerado
  loc_B20B6A: BranchF loc_B20B6E
  loc_B20B6D: ExitProcHresult
  loc_B20B6E: LitVarStr var_94, "Generando reporte..."
  loc_B20B73: PopAdLdVar
  loc_B20B74: FLdPr Me
  loc_B20B77: VCallAd Control_ID_statusBar
  loc_B20B7A: FStAdFunc var_A8
  loc_B20B7D: FLdPr var_A8
  loc_B20B80: LateIdSt
  loc_B20B85: FFree1Ad var_A8
  loc_B20B88: LitI4 &HB
  loc_B20B8D: CI2I4
  loc_B20B8E: FLdPr Me
  loc_B20B91: Me.MousePointer = from_stack_1
  loc_B20B96: FLdRfVar var_AA
  loc_B20B99: FLdPr Me
  loc_B20B9C: VCallAd Control_ID_cboMes
  loc_B20B9F: FStAdFunc var_A8
  loc_B20BA2: FLdPr var_A8
  loc_B20BA5:  = Me.ListIndex
  loc_B20BAA: FLdRfVar var_B4
  loc_B20BAD: FLdI2 var_AA
  loc_B20BB0: FLdPr Me
  loc_B20BB3: VCallAd Control_ID_cboMes
  loc_B20BB6: FStAdFunc var_B0
  loc_B20BB9: FLdPr var_B0
  loc_B20BBC:  = Me.ItemData
  loc_B20BC1: FLdRfVar var_BC
  loc_B20BC4: FLdPr Me
  loc_B20BC7: VCallAd Control_ID_cboPeriodo
  loc_B20BCA: FStAdFunc var_B8
  loc_B20BCD: FLdPr var_B8
  loc_B20BD0:  = Me.Text
  loc_B20BD5: ILdRf var_BC
  loc_B20BD8: CI2Str
  loc_B20BDA: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B20BDF: CVarStr var_CC
  loc_B20BE2: FLdRfVar var_DC
  loc_B20BE5: ImpAdCallFPR4  = Month()
  loc_B20BEA: LitVarStr var_11C, "Definitivo"
  loc_B20BEF: FStVarCopyObj var_12C
  loc_B20BF2: FLdRfVar var_12C
  loc_B20BF5: LitVarStr var_A4, "Provisorio"
  loc_B20BFA: FStVarCopyObj var_10C
  loc_B20BFD: FLdRfVar var_10C
  loc_B20C00: ILdRf var_B4
  loc_B20C03: CVarI4
  loc_B20C07: HardType
  loc_B20C08: FLdRfVar var_DC
  loc_B20C0B: GtVar var_EC
  loc_B20C0F: FStVar var_FC
  loc_B20C13: FLdRfVar var_FC
  loc_B20C16: FLdRfVar var_13C
  loc_B20C19: ImpAdCallFPR4  = IIf(, , )
  loc_B20C1E: FLdRfVar var_13C
  loc_B20C21: CStrVarTmp
  loc_B20C22: FStStrNoPop var_140
  loc_B20C25: FLdPr Me
  loc_B20C28: MemStStrCopy
  loc_B20C2C: FFreeStr var_BC = ""
  loc_B20C33: FFreeAd var_A8 = "": var_B0 = ""
  loc_B20C3C: FFreeVar var_CC = "": var_DC = "": var_FC = "": var_10C = "": var_12C = ""
  loc_B20C4B: FLdPr Me
  loc_B20C4E: MemLdRfVar from_stack_1.global_56
  loc_B20C51: NewIfNullAd
  loc_B20C54: FStAd var_144 
  loc_B20C58: LitStr "DROP TEMPORARY TABLE IF EXISTS timpu; CREATE TEMPORARY TABLE timpu"
  loc_B20C5B: LitStr " (SELECT 1 AS CodiAsie, moviasiento.CodiCuco, DetaCuco, SUM(DebeMoas) AS DebeMoas, SUM(HabeMoas) AS HabeMoas"
  loc_B20C5E: ConcatStr
  loc_B20C5F: FStStrNoPop var_BC
  loc_B20C62: LitStr " FROM asiento"
  loc_B20C65: ConcatStr
  loc_B20C66: FStStrNoPop var_140
  loc_B20C69: LitStr " LEFT JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_B20C6C: ConcatStr
  loc_B20C6D: FStStrNoPop var_148
  loc_B20C70: LitStr " LEFT JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_B20C73: ConcatStr
  loc_B20C74: FStStrNoPop var_14C
  loc_B20C77: LitStr " LEFT JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = paraconta.PeriInfo AND infogov.cuentacontable.CodiCuco = paraconta.ProvPaco"
  loc_B20C7A: ConcatStr
  loc_B20C7B: FStStrNoPop var_150
  loc_B20C7E: LitStr " WHERE asiento.PeriInfo = "
  loc_B20C81: ConcatStr
  loc_B20C82: FStStrNoPop var_158
  loc_B20C85: FLdRfVar var_154
  loc_B20C88: FLdPr Me
  loc_B20C8B: VCallAd Control_ID_cboPeriodo
  loc_B20C8E: FStAdFunc var_A8
  loc_B20C91: FLdPr var_A8
  loc_B20C94:  = Me.Text
  loc_B20C99: ILdRf var_154
  loc_B20C9C: ConcatStr
  loc_B20C9D: FStStrNoPop var_15C
  loc_B20CA0: LitStr " AND MONTH(FechAsie) = "
  loc_B20CA3: ConcatStr
  loc_B20CA4: FStStrNoPop var_160
  loc_B20CA7: FLdRfVar var_B4
  loc_B20CAA: FLdRfVar var_AA
  loc_B20CAD: FLdPr Me
  loc_B20CB0: VCallAd Control_ID_cboMes
  loc_B20CB3: FStAdFunc var_B0
  loc_B20CB6: FLdPr var_B0
  loc_B20CB9:  = Me.ListIndex
  loc_B20CBE: FLdI2 var_AA
  loc_B20CC1: FLdPr Me
  loc_B20CC4: VCallAd Control_ID_cboMes
  loc_B20CC7: FStAdFunc var_B8
  loc_B20CCA: FLdPr var_B8
  loc_B20CCD:  = Me.ItemData
  loc_B20CD2: ILdRf var_B4
  loc_B20CD5: CStrI4
  loc_B20CD7: FStStrNoPop var_164
  loc_B20CDA: ConcatStr
  loc_B20CDB: FStStrNoPop var_168
  loc_B20CDE: LitStr " AND moviasiento.CodiCuco = paraconta.ProvPaco"
  loc_B20CE1: ConcatStr
  loc_B20CE2: FStStrNoPop var_16C
  loc_B20CE5: LitStr " GROUP BY asiento.PeriInfo)"
  loc_B20CE8: ConcatStr
  loc_B20CE9: FStStrNoPop var_170
  loc_B20CEC: LitStr " UNION ALL"
  loc_B20CEF: ConcatStr
  loc_B20CF0: FStStrNoPop var_174
  loc_B20CF3: LitStr " (SELECT 2 AS CodiAsie, imputacion.CodiPart AS CodiCuco, DetaPart AS DetaCuco, SUM(MapaImpu) AS DebeMoas, SUM(DeveImpu) as HabeMoas"
  loc_B20CF6: ConcatStr
  loc_B20CF7: FStStrNoPop var_178
  loc_B20CFA: LitStr " FROM imputacion"
  loc_B20CFD: ConcatStr
  loc_B20CFE: FStStrNoPop var_17C
  loc_B20D01: LitStr " LEFT JOIN partida ON partida.PeriInfo = imputacion.PeriInfo AND partida.CodiPart = imputacion.CodiPart"
  loc_B20D04: ConcatStr
  loc_B20D05: FStStrNoPop var_180
  loc_B20D08: LitStr " WHERE imputacion.PeriInfo = "
  loc_B20D0B: ConcatStr
  loc_B20D0C: FStStrNoPop var_18C
  loc_B20D0F: FLdRfVar var_188
  loc_B20D12: FLdPr Me
  loc_B20D15: VCallAd Control_ID_cboPeriodo
  loc_B20D18: FStAdFunc var_184
  loc_B20D1B: FLdPr var_184
  loc_B20D1E:  = Me.Text
  loc_B20D23: ILdRf var_188
  loc_B20D26: ConcatStr
  loc_B20D27: FStStrNoPop var_190
  loc_B20D2A: LitStr " AND MONTH(FechImpu) = "
  loc_B20D2D: ConcatStr
  loc_B20D2E: FStStrNoPop var_1A4
  loc_B20D31: FLdRfVar var_1A0
  loc_B20D34: FLdRfVar var_196
  loc_B20D37: FLdPr Me
  loc_B20D3A: VCallAd Control_ID_cboMes
  loc_B20D3D: FStAdFunc var_194
  loc_B20D40: FLdPr var_194
  loc_B20D43:  = Me.ListIndex
  loc_B20D48: FLdI2 var_196
  loc_B20D4B: FLdPr Me
  loc_B20D4E: VCallAd Control_ID_cboMes
  loc_B20D51: FStAdFunc var_19C
  loc_B20D54: FLdPr var_19C
  loc_B20D57:  = Me.ItemData
  loc_B20D5C: ILdRf var_1A0
  loc_B20D5F: CStrI4
  loc_B20D61: FStStrNoPop var_1A8
  loc_B20D64: ConcatStr
  loc_B20D65: FStStrNoPop var_1AC
  loc_B20D68: LitStr " GROUP BY imputacion.PeriInfo, imputacion.CodiPart)"
  loc_B20D6B: ConcatStr
  loc_B20D6C: FStStrNoPop var_1B0
  loc_B20D6F: LitStr " UNION ALL"
  loc_B20D72: ConcatStr
  loc_B20D73: FStStrNoPop var_1B4
  loc_B20D76: LitStr " (SELECT 3 AS CodiAsie, '' AS CodiCuco, 'Total General' AS DetaCuco, SUM(MapaImpu) AS DebeMoas, SUM(DeveImpu) AS HabeMoas"
  loc_B20D79: ConcatStr
  loc_B20D7A: FStStrNoPop var_1B8
  loc_B20D7D: LitStr " FROM imputacion"
  loc_B20D80: ConcatStr
  loc_B20D81: FStStrNoPop var_1BC
  loc_B20D84: LitStr " WHERE PeriInfo = "
  loc_B20D87: ConcatStr
  loc_B20D88: FStStrNoPop var_1C8
  loc_B20D8B: FLdRfVar var_1C4
  loc_B20D8E: FLdPr Me
  loc_B20D91: VCallAd Control_ID_cboPeriodo
  loc_B20D94: FStAdFunc var_1C0
  loc_B20D97: FLdPr var_1C0
  loc_B20D9A:  = Me.Text
  loc_B20D9F: ILdRf var_1C4
  loc_B20DA2: ConcatStr
  loc_B20DA3: FStStrNoPop var_1CC
  loc_B20DA6: LitStr " AND MONTH(FechImpu) = "
  loc_B20DA9: ConcatStr
  loc_B20DAA: FStStrNoPop var_1E0
  loc_B20DAD: FLdRfVar var_1DC
  loc_B20DB0: FLdRfVar var_1D2
  loc_B20DB3: FLdPr Me
  loc_B20DB6: VCallAd Control_ID_cboMes
  loc_B20DB9: FStAdFunc var_1D0
  loc_B20DBC: FLdPr var_1D0
  loc_B20DBF:  = Me.ListIndex
  loc_B20DC4: FLdI2 var_1D2
  loc_B20DC7: FLdPr Me
  loc_B20DCA: VCallAd Control_ID_cboMes
  loc_B20DCD: FStAdFunc var_1D8
  loc_B20DD0: FLdPr var_1D8
  loc_B20DD3:  = Me.ItemData
  loc_B20DD8: ILdRf var_1DC
  loc_B20DDB: CStrI4
  loc_B20DDD: FStStrNoPop var_1E4
  loc_B20DE0: ConcatStr
  loc_B20DE1: FStStrNoPop var_1E8
  loc_B20DE4: LitStr " GROUP BY PeriInfo);"
  loc_B20DE7: ConcatStr
  loc_B20DE8: FStStrNoPop var_1EC
  loc_B20DEB: FLdPr var_144
  loc_B20DEE: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B20DF3: FFreeStr var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_BC = "": var_140 = "": var_148 = "": var_14C = "": var_150 = "": var_158 = "": var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_18C = "": var_188 = "": var_190 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C8 = "": var_1C4 = ""
  loc_B20E3A: FFreeAd var_A8 = "": var_B0 = "": var_B8 = "": var_184 = "": var_194 = "": var_19C = "": var_1C0 = "": var_1D0 = ""
  loc_B20E4F: LitStr "SELECT * FROM timpu ORDER BY CodiAsie, CodiCuco"
  loc_B20E52: FLdPr var_144
  loc_B20E55: Call clsasiento.RedefineRS(from_stack_1v)
  loc_B20E5A: FLdRfVar var_B4
  loc_B20E5D: FLdPr var_144
  loc_B20E60: from_stack_1 = clsasiento.RecordCount
  loc_B20E65: ILdRf var_B4
  loc_B20E68: LitI4 1
  loc_B20E6D: LtI4
  loc_B20E6E: BranchF loc_B20E81
  loc_B20E71: LitI4 0
  loc_B20E76: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B20E79: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B20E7E: Branch loc_B2137E
  loc_B20E81: LitI4 0
  loc_B20E86: LitI4 0
  loc_B20E8B: FLdPr Me
  loc_B20E8E: MemLdRfVar from_stack_1.global_80
  loc_B20E91: Redim
  loc_B20E9B: LitI4 0
  loc_B20EA0: FLdRfVar var_B4
  loc_B20EA3: FLdPr var_144
  loc_B20EA6: from_stack_1 = clsasiento.RecordCount
  loc_B20EAB: ILdRf var_B4
  loc_B20EAE: LitI4 2
  loc_B20EB3: SubI4
  loc_B20EB4: FLdPr Me
  loc_B20EB7: MemLdRfVar from_stack_1.global_84
  loc_B20EBA: Redim
  loc_B20EC4: LitI4 0
  loc_B20EC9: LitI4 0
  loc_B20ECE: FLdPr Me
  loc_B20ED1: MemLdRfVar from_stack_1.global_88
  loc_B20ED4: Redim
  loc_B20EDE: LitI4 0
  loc_B20EE3: LitI4 0
  loc_B20EE8: FLdPr Me
  loc_B20EEB: MemLdRfVar from_stack_1.global_92
  loc_B20EEE: Redim
  loc_B20EF8: FLdPr var_144
  loc_B20EFB: Call clsasiento.MoveFirst(from_stack_1v)
  loc_B20F00: FLdRfVar var_CC
  loc_B20F03: FLdRfVar var_B8
  loc_B20F06: LitVarStr var_94, "CodiCuco"
  loc_B20F0B: PopAdLdVar
  loc_B20F0C: FLdRfVar var_B0
  loc_B20F0F: FLdRfVar var_A8
  loc_B20F12: FLdPr var_144
  loc_B20F15: from_stack_1v = clsasiento.RsFrmGet()
  loc_B20F1A: FLdPr var_A8
  loc_B20F1D:  = Me.Fields
  loc_B20F22: FLdPr var_B0
  loc_B20F25: from_stack_2 = Me.Item(from_stack_1)
  loc_B20F2A: FLdPr var_B8
  loc_B20F2D:  = Me.Value
  loc_B20F32: FLdRfVar var_EC
  loc_B20F35: FLdRfVar var_19C
  loc_B20F38: LitVarStr var_11C, "DetaCuco"
  loc_B20F3D: PopAdLdVar
  loc_B20F3E: FLdRfVar var_194
  loc_B20F41: FLdRfVar var_184
  loc_B20F44: FLdPr var_144
  loc_B20F47: from_stack_1v = clsasiento.RsFrmGet()
  loc_B20F4C: FLdPr var_184
  loc_B20F4F:  = Me.Fields
  loc_B20F54: FLdPr var_194
  loc_B20F57: from_stack_2 = Me.Item(from_stack_1)
  loc_B20F5C: FLdPr var_19C
  loc_B20F5F:  = Me.Value
  loc_B20F64: LitI2_Byte 0
  loc_B20F66: LitVar_Missing var_10C
  loc_B20F69: LitI2_Byte 0
  loc_B20F6B: FLdRfVar var_CC
  loc_B20F6E: LitVarStr var_A4, " - "
  loc_B20F73: ConcatVar var_DC
  loc_B20F77: FLdRfVar var_EC
  loc_B20F7A: ConcatVar var_FC
  loc_B20F7E: PopAdLdVar
  loc_B20F7F: LitI4 0
  loc_B20F84: FLdPr Me
  loc_B20F87: MemLdStr global_80
  loc_B20F8A: AryLock
  loc_B20F8D: Ary1LdPr
  loc_B20F8E: MemLdRfVar from_stack_1.global_0
  loc_B20F91: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B20F96: AryUnlock
  loc_B20F99: FFreeAd var_A8 = "": var_B0 = "": var_B8 = "": var_184 = "": var_194 = ""
  loc_B20FA8: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_FC = ""
  loc_B20FB5: FLdRfVar var_B8
  loc_B20FB8: LitVarStr var_94, "DebeMoas"
  loc_B20FBD: PopAdLdVar
  loc_B20FBE: FLdRfVar var_B0
  loc_B20FC1: FLdRfVar var_A8
  loc_B20FC4: FLdPr var_144
  loc_B20FC7: from_stack_1v = clsasiento.RsFrmGet()
  loc_B20FCC: FLdPr var_A8
  loc_B20FCF:  = Me.Fields
  loc_B20FD4: FLdPr var_B0
  loc_B20FD7: from_stack_2 = Me.Item(from_stack_1)
  loc_B20FDC: LitI2_Byte 0
  loc_B20FDE: LitVar_Missing var_DC
  loc_B20FE1: LitI2_Byte &HFF
  loc_B20FE3: FLdZeroAd var_B8
  loc_B20FE6: CVarAd
  loc_B20FEA: PopAdLdVar
  loc_B20FEB: LitI4 0
  loc_B20FF0: FLdPr Me
  loc_B20FF3: MemLdStr global_80
  loc_B20FF6: AryLock
  loc_B20FF9: Ary1LdPr
  loc_B20FFA: MemLdRfVar from_stack_1.global_4
  loc_B20FFD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B21002: AryUnlock
  loc_B21005: FFreeAd var_A8 = ""
  loc_B2100C: FFreeVar var_CC = ""
  loc_B21013: FLdRfVar var_B8
  loc_B21016: LitVarStr var_94, "HabeMoas"
  loc_B2101B: PopAdLdVar
  loc_B2101C: FLdRfVar var_B0
  loc_B2101F: FLdRfVar var_A8
  loc_B21022: FLdPr var_144
  loc_B21025: from_stack_1v = clsasiento.RsFrmGet()
  loc_B2102A: FLdPr var_A8
  loc_B2102D:  = Me.Fields
  loc_B21032: FLdPr var_B0
  loc_B21035: from_stack_2 = Me.Item(from_stack_1)
  loc_B2103A: LitI2_Byte 0
  loc_B2103C: LitVar_Missing var_DC
  loc_B2103F: LitI2_Byte &HFF
  loc_B21041: FLdZeroAd var_B8
  loc_B21044: CVarAd
  loc_B21048: PopAdLdVar
  loc_B21049: LitI4 0
  loc_B2104E: FLdPr Me
  loc_B21051: MemLdStr global_80
  loc_B21054: AryLock
  loc_B21057: Ary1LdPr
  loc_B21058: MemLdRfVar from_stack_1.global_8
  loc_B2105B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B21060: AryUnlock
  loc_B21063: FFreeAd var_A8 = ""
  loc_B2106A: FFreeVar var_CC = ""
  loc_B21071: FLdPr var_144
  loc_B21074: Call clsasiento.MoveSiguiente()
  loc_B21079: LitI2_Byte 1
  loc_B2107B: FLdPr Me
  loc_B2107E: MemLdRfVar from_stack_1.global_96
  loc_B21081: FLdPr Me
  loc_B21084: MemLdStr global_84
  loc_B21087: LitI2_Byte 1
  loc_B21089: FnUBound
  loc_B2108B: CI2I4
  loc_B2108C: ForI2 var_204
  loc_B21092: FLdRfVar var_CC
  loc_B21095: FLdRfVar var_B8
  loc_B21098: LitVarStr var_94, "CodiCuco"
  loc_B2109D: PopAdLdVar
  loc_B2109E: FLdRfVar var_B0
  loc_B210A1: FLdRfVar var_A8
  loc_B210A4: FLdPr var_144
  loc_B210A7: from_stack_1v = clsasiento.RsFrmGet()
  loc_B210AC: FLdPr var_A8
  loc_B210AF:  = Me.Fields
  loc_B210B4: FLdPr var_B0
  loc_B210B7: from_stack_2 = Me.Item(from_stack_1)
  loc_B210BC: FLdPr var_B8
  loc_B210BF:  = Me.Value
  loc_B210C4: FLdRfVar var_EC
  loc_B210C7: FLdRfVar var_19C
  loc_B210CA: LitVarStr var_11C, "DetaCuco"
  loc_B210CF: PopAdLdVar
  loc_B210D0: FLdRfVar var_194
  loc_B210D3: FLdRfVar var_184
  loc_B210D6: FLdPr var_144
  loc_B210D9: from_stack_1v = clsasiento.RsFrmGet()
  loc_B210DE: FLdPr var_184
  loc_B210E1:  = Me.Fields
  loc_B210E6: FLdPr var_194
  loc_B210E9: from_stack_2 = Me.Item(from_stack_1)
  loc_B210EE: FLdPr var_19C
  loc_B210F1:  = Me.Value
  loc_B210F6: LitI2_Byte 0
  loc_B210F8: LitVar_Missing var_10C
  loc_B210FB: LitI2_Byte 0
  loc_B210FD: FLdRfVar var_CC
  loc_B21100: LitVarStr var_A4, " - "
  loc_B21105: ConcatVar var_DC
  loc_B21109: FLdRfVar var_EC
  loc_B2110C: ConcatVar var_FC
  loc_B21110: PopAdLdVar
  loc_B21111: FLdPr Me
  loc_B21114: MemLdI2 global_96
  loc_B21117: CI4UI1
  loc_B21118: FLdPr Me
  loc_B2111B: MemLdStr global_84
  loc_B2111E: AryLock
  loc_B21121: Ary1LdPr
  loc_B21122: MemLdRfVar from_stack_1.global_0
  loc_B21125: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2112A: AryUnlock
  loc_B2112D: FFreeAd var_A8 = "": var_B0 = "": var_B8 = "": var_184 = "": var_194 = ""
  loc_B2113C: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_FC = ""
  loc_B21149: FLdRfVar var_B8
  loc_B2114C: LitVarStr var_94, "DebeMoas"
  loc_B21151: PopAdLdVar
  loc_B21152: FLdRfVar var_B0
  loc_B21155: FLdRfVar var_A8
  loc_B21158: FLdPr var_144
  loc_B2115B: from_stack_1v = clsasiento.RsFrmGet()
  loc_B21160: FLdPr var_A8
  loc_B21163:  = Me.Fields
  loc_B21168: FLdPr var_B0
  loc_B2116B: from_stack_2 = Me.Item(from_stack_1)
  loc_B21170: LitI2_Byte 0
  loc_B21172: LitVar_Missing var_DC
  loc_B21175: LitI2_Byte &HFF
  loc_B21177: FLdZeroAd var_B8
  loc_B2117A: CVarAd
  loc_B2117E: PopAdLdVar
  loc_B2117F: FLdPr Me
  loc_B21182: MemLdI2 global_96
  loc_B21185: CI4UI1
  loc_B21186: FLdPr Me
  loc_B21189: MemLdStr global_84
  loc_B2118C: AryLock
  loc_B2118F: Ary1LdPr
  loc_B21190: MemLdRfVar from_stack_1.global_4
  loc_B21193: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B21198: AryUnlock
  loc_B2119B: FFreeAd var_A8 = ""
  loc_B211A2: FFreeVar var_CC = ""
  loc_B211A9: FLdRfVar var_B8
  loc_B211AC: LitVarStr var_94, "HabeMoas"
  loc_B211B1: PopAdLdVar
  loc_B211B2: FLdRfVar var_B0
  loc_B211B5: FLdRfVar var_A8
  loc_B211B8: FLdPr var_144
  loc_B211BB: from_stack_1v = clsasiento.RsFrmGet()
  loc_B211C0: FLdPr var_A8
  loc_B211C3:  = Me.Fields
  loc_B211C8: FLdPr var_B0
  loc_B211CB: from_stack_2 = Me.Item(from_stack_1)
  loc_B211D0: LitI2_Byte 0
  loc_B211D2: LitVar_Missing var_DC
  loc_B211D5: LitI2_Byte &HFF
  loc_B211D7: FLdZeroAd var_B8
  loc_B211DA: CVarAd
  loc_B211DE: PopAdLdVar
  loc_B211DF: FLdPr Me
  loc_B211E2: MemLdI2 global_96
  loc_B211E5: CI4UI1
  loc_B211E6: FLdPr Me
  loc_B211E9: MemLdStr global_84
  loc_B211EC: AryLock
  loc_B211EF: Ary1LdPr
  loc_B211F0: MemLdRfVar from_stack_1.global_8
  loc_B211F3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B211F8: AryUnlock
  loc_B211FB: FFreeAd var_A8 = ""
  loc_B21202: FFreeVar var_CC = ""
  loc_B21209: FLdPr var_144
  loc_B2120C: Call clsasiento.MoveSiguiente()
  loc_B21211: FLdPr Me
  loc_B21214: MemLdRfVar from_stack_1.global_96
  loc_B21217: NextI2 var_204, loc_B21092
  loc_B2121C: FLdRfVar var_B8
  loc_B2121F: LitVarStr var_94, "DebeMoas"
  loc_B21224: PopAdLdVar
  loc_B21225: FLdRfVar var_B0
  loc_B21228: FLdRfVar var_A8
  loc_B2122B: FLdPr var_144
  loc_B2122E: from_stack_1v = clsasiento.RsFrmGet()
  loc_B21233: FLdPr var_A8
  loc_B21236:  = Me.Fields
  loc_B2123B: FLdPr var_B0
  loc_B2123E: from_stack_2 = Me.Item(from_stack_1)
  loc_B21243: LitI2_Byte 0
  loc_B21245: LitVar_Missing var_DC
  loc_B21248: LitI2_Byte &HFF
  loc_B2124A: FLdZeroAd var_B8
  loc_B2124D: CVarAd
  loc_B21251: PopAdLdVar
  loc_B21252: LitI4 0
  loc_B21257: FLdPr Me
  loc_B2125A: MemLdStr global_88
  loc_B2125D: AryLock
  loc_B21260: Ary1LdPr
  loc_B21261: MemLdRfVar from_stack_1.global_4
  loc_B21264: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B21269: AryUnlock
  loc_B2126C: FFreeAd var_A8 = ""
  loc_B21273: FFreeVar var_CC = ""
  loc_B2127A: FLdRfVar var_B8
  loc_B2127D: LitVarStr var_94, "HabeMoas"
  loc_B21282: PopAdLdVar
  loc_B21283: FLdRfVar var_B0
  loc_B21286: FLdRfVar var_A8
  loc_B21289: FLdPr var_144
  loc_B2128C: from_stack_1v = clsasiento.RsFrmGet()
  loc_B21291: FLdPr var_A8
  loc_B21294:  = Me.Fields
  loc_B21299: FLdPr var_B0
  loc_B2129C: from_stack_2 = Me.Item(from_stack_1)
  loc_B212A1: LitI2_Byte 0
  loc_B212A3: LitVar_Missing var_DC
  loc_B212A6: LitI2_Byte &HFF
  loc_B212A8: FLdZeroAd var_B8
  loc_B212AB: CVarAd
  loc_B212AF: PopAdLdVar
  loc_B212B0: LitI4 0
  loc_B212B5: FLdPr Me
  loc_B212B8: MemLdStr global_88
  loc_B212BB: AryLock
  loc_B212BE: Ary1LdPr
  loc_B212BF: MemLdRfVar from_stack_1.global_8
  loc_B212C2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B212C7: AryUnlock
  loc_B212CA: FFreeAd var_A8 = ""
  loc_B212D1: FFreeVar var_CC = ""
  loc_B212D8: LitI2_Byte 0
  loc_B212DA: LitVar_Missing var_CC
  loc_B212DD: LitI2_Byte &HFF
  loc_B212DF: LitI4 0
  loc_B212E4: FLdPr Me
  loc_B212E7: MemLdStr global_80
  loc_B212EA: Ary1LdPr
  loc_B212EB: MemLdStr global_4
  loc_B212EE: CR8Str
  loc_B212F0: LitI4 0
  loc_B212F5: FLdPr Me
  loc_B212F8: MemLdStr global_88
  loc_B212FB: Ary1LdPr
  loc_B212FC: MemLdStr global_4
  loc_B212FF: CR8Str
  loc_B21301: SubR4
  loc_B21302: CVarR8
  loc_B21306: PopAdLdVar
  loc_B21307: LitI4 0
  loc_B2130C: FLdPr Me
  loc_B2130F: MemLdStr global_92
  loc_B21312: AryLock
  loc_B21315: Ary1LdPr
  loc_B21316: MemLdRfVar from_stack_1.global_4
  loc_B21319: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2131E: AryUnlock
  loc_B21321: FFree1Var var_CC = ""
  loc_B21324: LitI2_Byte 0
  loc_B21326: LitVar_Missing var_CC
  loc_B21329: LitI2_Byte &HFF
  loc_B2132B: LitI4 0
  loc_B21330: FLdPr Me
  loc_B21333: MemLdStr global_80
  loc_B21336: Ary1LdPr
  loc_B21337: MemLdStr global_8
  loc_B2133A: CR8Str
  loc_B2133C: LitI4 0
  loc_B21341: FLdPr Me
  loc_B21344: MemLdStr global_88
  loc_B21347: Ary1LdPr
  loc_B21348: MemLdStr global_8
  loc_B2134B: CR8Str
  loc_B2134D: SubR4
  loc_B2134E: CVarR8
  loc_B21352: PopAdLdVar
  loc_B21353: LitI4 0
  loc_B21358: FLdPr Me
  loc_B2135B: MemLdStr global_92
  loc_B2135E: AryLock
  loc_B21361: Ary1LdPr
  loc_B21362: MemLdRfVar from_stack_1.global_8
  loc_B21365: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2136A: AryUnlock
  loc_B2136D: FFree1Var var_CC = ""
  loc_B21370: LitNothing
  loc_B21372: FStAd var_144 
  loc_B21376: LitI2_Byte &HFF
  loc_B21378: FLdPr Me
  loc_B2137B: MemStI2 bGenerado
  loc_B2137E: LitI4 0
  loc_B21383: CI2I4
  loc_B21384: FLdPr Me
  loc_B21387: Me.MousePointer = from_stack_1
  loc_B2138C: LitVarStr var_94, vbNullString
  loc_B21391: PopAdLdVar
  loc_B21392: FLdPr Me
  loc_B21395: VCallAd Control_ID_statusBar
  loc_B21398: FStAdFunc var_A8
  loc_B2139B: FLdPr var_A8
  loc_B2139E: LateIdSt
  loc_B213A3: FFree1Ad var_A8
  loc_B213A6: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AA3DD8
  'Data Table: 4397A4
  loc_AA38CC: FLdRfVar var_88
  loc_AA38CF: LitI2_Byte 0
  loc_AA38D1: LitI2_Byte &HFF
  loc_AA38D3: ImpAdLdI4 MemVar_C3D83C
  loc_AA38D6: FLdPr Me
  loc_AA38D9: MemLdRfVar from_stack_1.global_60
  loc_AA38DC: NewIfNullPr IFileSystem3
  loc_AA38DF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AA38E4: ILdRf var_88
  loc_AA38E7: FLdPr Me
  loc_AA38EA: MemStVarAd
  loc_AA38EE: FFree1Ad var_88
  loc_AA38F1: Call Proc_218_14_ABAAF8()
  loc_AA38F6: LitVarStr var_98, "<br>"
  loc_AA38FB: PopAdLdVar
  loc_AA38FC: FLdPr Me
  loc_AA38FF: MemLdRfVar from_stack_1.global_64
  loc_AA3902: LdPrVar
  loc_AA3904: LateMemCall
  loc_AA390A: LitVarStr var_98, "<table width=""95" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_AA390F: PopAdLdVar
  loc_AA3910: FLdPr Me
  loc_AA3913: MemLdRfVar from_stack_1.global_64
  loc_AA3916: LdPrVar
  loc_AA3918: LateMemCall
  loc_AA391E: LitVarStr var_98, "  <tr align=""center"" class=""EncabezadoGrande"">"
  loc_AA3923: PopAdLdVar
  loc_AA3924: FLdPr Me
  loc_AA3927: MemLdRfVar from_stack_1.global_64
  loc_AA392A: LdPrVar
  loc_AA392C: LateMemCall
  loc_AA3932: LitVarStr var_98, "    <th width=""60" & Chr(37) & """>Cuenta Contable</th>"
  loc_AA3937: PopAdLdVar
  loc_AA3938: FLdPr Me
  loc_AA393B: MemLdRfVar from_stack_1.global_64
  loc_AA393E: LdPrVar
  loc_AA3940: LateMemCall
  loc_AA3946: LitVarStr var_98, "    <th width=""20" & Chr(37) & """>Debe</th>"
  loc_AA394B: PopAdLdVar
  loc_AA394C: FLdPr Me
  loc_AA394F: MemLdRfVar from_stack_1.global_64
  loc_AA3952: LdPrVar
  loc_AA3954: LateMemCall
  loc_AA395A: LitVarStr var_98, "    <th width=""20" & Chr(37) & """>Haber</th>"
  loc_AA395F: PopAdLdVar
  loc_AA3960: FLdPr Me
  loc_AA3963: MemLdRfVar from_stack_1.global_64
  loc_AA3966: LdPrVar
  loc_AA3968: LateMemCall
  loc_AA396E: LitVarStr var_98, "  </tr>"
  loc_AA3973: PopAdLdVar
  loc_AA3974: FLdPr Me
  loc_AA3977: MemLdRfVar from_stack_1.global_64
  loc_AA397A: LdPrVar
  loc_AA397C: LateMemCall
  loc_AA3982: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AA3987: PopAdLdVar
  loc_AA3988: FLdPr Me
  loc_AA398B: MemLdRfVar from_stack_1.global_64
  loc_AA398E: LdPrVar
  loc_AA3990: LateMemCall
  loc_AA3996: LitI4 0
  loc_AA399B: LitI4 0
  loc_AA39A0: LitI2_Byte 0
  loc_AA39A2: LitStr "left"
  loc_AA39A5: LitI4 0
  loc_AA39AA: FLdPr Me
  loc_AA39AD: MemLdStr global_80
  loc_AA39B0: Ary1LdPr
  loc_AA39B1: MemLdStr global_0
  loc_AA39B4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA39B9: CVarStr var_B8
  loc_AA39BC: PopAdLdVar
  loc_AA39BD: FLdPr Me
  loc_AA39C0: MemLdRfVar from_stack_1.global_64
  loc_AA39C3: LdPrVar
  loc_AA39C5: LateMemCall
  loc_AA39CB: FFree1Var var_B8 = ""
  loc_AA39CE: LitStr "    <th width=""20" & Chr(37) & """ class=""Totales"">"
  loc_AA39D1: LitI4 0
  loc_AA39D6: FLdPr Me
  loc_AA39D9: MemLdStr global_80
  loc_AA39DC: Ary1LdPr
  loc_AA39DD: MemLdStr global_4
  loc_AA39E0: ConcatStr
  loc_AA39E1: FStStrNoPop var_BC
  loc_AA39E4: LitStr "</th>"
  loc_AA39E7: ConcatStr
  loc_AA39E8: CVarStr var_B8
  loc_AA39EB: PopAdLdVar
  loc_AA39EC: FLdPr Me
  loc_AA39EF: MemLdRfVar from_stack_1.global_64
  loc_AA39F2: LdPrVar
  loc_AA39F4: LateMemCall
  loc_AA39FA: FFree1Str var_BC
  loc_AA39FD: FFree1Var var_B8 = ""
  loc_AA3A00: LitStr "    <th width=""20" & Chr(37) & """ class=""Totales"">"
  loc_AA3A03: LitI4 0
  loc_AA3A08: FLdPr Me
  loc_AA3A0B: MemLdStr global_80
  loc_AA3A0E: Ary1LdPr
  loc_AA3A0F: MemLdStr global_8
  loc_AA3A12: ConcatStr
  loc_AA3A13: FStStrNoPop var_BC
  loc_AA3A16: LitStr "</th>"
  loc_AA3A19: ConcatStr
  loc_AA3A1A: CVarStr var_B8
  loc_AA3A1D: PopAdLdVar
  loc_AA3A1E: FLdPr Me
  loc_AA3A21: MemLdRfVar from_stack_1.global_64
  loc_AA3A24: LdPrVar
  loc_AA3A26: LateMemCall
  loc_AA3A2C: FFree1Str var_BC
  loc_AA3A2F: FFree1Var var_B8 = ""
  loc_AA3A32: LitVarStr var_98, "     </tr>"
  loc_AA3A37: PopAdLdVar
  loc_AA3A38: FLdPr Me
  loc_AA3A3B: MemLdRfVar from_stack_1.global_64
  loc_AA3A3E: LdPrVar
  loc_AA3A40: LateMemCall
  loc_AA3A46: LitVarStr var_98, "</table>"
  loc_AA3A4B: PopAdLdVar
  loc_AA3A4C: FLdPr Me
  loc_AA3A4F: MemLdRfVar from_stack_1.global_64
  loc_AA3A52: LdPrVar
  loc_AA3A54: LateMemCall
  loc_AA3A5A: LitVarStr var_98, "<br>"
  loc_AA3A5F: PopAdLdVar
  loc_AA3A60: FLdPr Me
  loc_AA3A63: MemLdRfVar from_stack_1.global_64
  loc_AA3A66: LdPrVar
  loc_AA3A68: LateMemCall
  loc_AA3A6E: LitVarStr var_98, "<table width=""95" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_AA3A73: PopAdLdVar
  loc_AA3A74: FLdPr Me
  loc_AA3A77: MemLdRfVar from_stack_1.global_64
  loc_AA3A7A: LdPrVar
  loc_AA3A7C: LateMemCall
  loc_AA3A82: LitVarStr var_98, " <thead>"
  loc_AA3A87: PopAdLdVar
  loc_AA3A88: FLdPr Me
  loc_AA3A8B: MemLdRfVar from_stack_1.global_64
  loc_AA3A8E: LdPrVar
  loc_AA3A90: LateMemCall
  loc_AA3A96: LitVarStr var_98, "  <tr align=""center"" class=""EncabezadoGrande"">"
  loc_AA3A9B: PopAdLdVar
  loc_AA3A9C: FLdPr Me
  loc_AA3A9F: MemLdRfVar from_stack_1.global_64
  loc_AA3AA2: LdPrVar
  loc_AA3AA4: LateMemCall
  loc_AA3AAA: LitVarStr var_98, "    <th width=""60" & Chr(37) & """>Partida</th>"
  loc_AA3AAF: PopAdLdVar
  loc_AA3AB0: FLdPr Me
  loc_AA3AB3: MemLdRfVar from_stack_1.global_64
  loc_AA3AB6: LdPrVar
  loc_AA3AB8: LateMemCall
  loc_AA3ABE: LitVarStr var_98, "    <th width=""20" & Chr(37) & """>Mandado a Pagar</th>"
  loc_AA3AC3: PopAdLdVar
  loc_AA3AC4: FLdPr Me
  loc_AA3AC7: MemLdRfVar from_stack_1.global_64
  loc_AA3ACA: LdPrVar
  loc_AA3ACC: LateMemCall
  loc_AA3AD2: LitVarStr var_98, "    <th width=""20" & Chr(37) & """>Devengado</th>"
  loc_AA3AD7: PopAdLdVar
  loc_AA3AD8: FLdPr Me
  loc_AA3ADB: MemLdRfVar from_stack_1.global_64
  loc_AA3ADE: LdPrVar
  loc_AA3AE0: LateMemCall
  loc_AA3AE6: LitVarStr var_98, "  </tr>"
  loc_AA3AEB: PopAdLdVar
  loc_AA3AEC: FLdPr Me
  loc_AA3AEF: MemLdRfVar from_stack_1.global_64
  loc_AA3AF2: LdPrVar
  loc_AA3AF4: LateMemCall
  loc_AA3AFA: LitVarStr var_98, " </thead>"
  loc_AA3AFF: PopAdLdVar
  loc_AA3B00: FLdPr Me
  loc_AA3B03: MemLdRfVar from_stack_1.global_64
  loc_AA3B06: LdPrVar
  loc_AA3B08: LateMemCall
  loc_AA3B0E: LitI2_Byte 1
  loc_AA3B10: FLdPr Me
  loc_AA3B13: MemLdRfVar from_stack_1.global_96
  loc_AA3B16: FLdPr Me
  loc_AA3B19: MemLdStr global_84
  loc_AA3B1C: LitI2_Byte 1
  loc_AA3B1E: FnUBound
  loc_AA3B20: CI2I4
  loc_AA3B21: ForI2 var_C0
  loc_AA3B27: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AA3B2C: PopAdLdVar
  loc_AA3B2D: FLdPr Me
  loc_AA3B30: MemLdRfVar from_stack_1.global_64
  loc_AA3B33: LdPrVar
  loc_AA3B35: LateMemCall
  loc_AA3B3B: LitI4 0
  loc_AA3B40: LitI4 0
  loc_AA3B45: LitI2_Byte 0
  loc_AA3B47: LitStr "left"
  loc_AA3B4A: FLdPr Me
  loc_AA3B4D: MemLdI2 global_96
  loc_AA3B50: CI4UI1
  loc_AA3B51: FLdPr Me
  loc_AA3B54: MemLdStr global_84
  loc_AA3B57: Ary1LdPr
  loc_AA3B58: MemLdStr global_0
  loc_AA3B5B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA3B60: CVarStr var_B8
  loc_AA3B63: PopAdLdVar
  loc_AA3B64: FLdPr Me
  loc_AA3B67: MemLdRfVar from_stack_1.global_64
  loc_AA3B6A: LdPrVar
  loc_AA3B6C: LateMemCall
  loc_AA3B72: FFree1Var var_B8 = ""
  loc_AA3B75: LitI4 0
  loc_AA3B7A: LitI4 0
  loc_AA3B7F: LitI2_Byte 0
  loc_AA3B81: LitStr "right"
  loc_AA3B84: FLdPr Me
  loc_AA3B87: MemLdI2 global_96
  loc_AA3B8A: CI4UI1
  loc_AA3B8B: FLdPr Me
  loc_AA3B8E: MemLdStr global_84
  loc_AA3B91: Ary1LdPr
  loc_AA3B92: MemLdStr global_4
  loc_AA3B95: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA3B9A: CVarStr var_B8
  loc_AA3B9D: PopAdLdVar
  loc_AA3B9E: FLdPr Me
  loc_AA3BA1: MemLdRfVar from_stack_1.global_64
  loc_AA3BA4: LdPrVar
  loc_AA3BA6: LateMemCall
  loc_AA3BAC: FFree1Var var_B8 = ""
  loc_AA3BAF: LitI4 0
  loc_AA3BB4: LitI4 0
  loc_AA3BB9: LitI2_Byte 0
  loc_AA3BBB: LitStr "right"
  loc_AA3BBE: FLdPr Me
  loc_AA3BC1: MemLdI2 global_96
  loc_AA3BC4: CI4UI1
  loc_AA3BC5: FLdPr Me
  loc_AA3BC8: MemLdStr global_84
  loc_AA3BCB: Ary1LdPr
  loc_AA3BCC: MemLdStr global_8
  loc_AA3BCF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA3BD4: CVarStr var_B8
  loc_AA3BD7: PopAdLdVar
  loc_AA3BD8: FLdPr Me
  loc_AA3BDB: MemLdRfVar from_stack_1.global_64
  loc_AA3BDE: LdPrVar
  loc_AA3BE0: LateMemCall
  loc_AA3BE6: FFree1Var var_B8 = ""
  loc_AA3BE9: LitVarStr var_98, "     </tr>"
  loc_AA3BEE: PopAdLdVar
  loc_AA3BEF: FLdPr Me
  loc_AA3BF2: MemLdRfVar from_stack_1.global_64
  loc_AA3BF5: LdPrVar
  loc_AA3BF7: LateMemCall
  loc_AA3BFD: FLdPr Me
  loc_AA3C00: MemLdRfVar from_stack_1.global_96
  loc_AA3C03: NextI2 var_C0, loc_AA3B27
  loc_AA3C08: LitVarStr var_98, "  <tr class=""Totales"">"
  loc_AA3C0D: PopAdLdVar
  loc_AA3C0E: FLdPr Me
  loc_AA3C11: MemLdRfVar from_stack_1.global_64
  loc_AA3C14: LdPrVar
  loc_AA3C16: LateMemCall
  loc_AA3C1C: LitI4 0
  loc_AA3C21: LitI4 0
  loc_AA3C26: LitI2_Byte 0
  loc_AA3C28: LitStr "right"
  loc_AA3C2B: LitStr "Total Imputaciones"
  loc_AA3C2E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA3C33: CVarStr var_B8
  loc_AA3C36: PopAdLdVar
  loc_AA3C37: FLdPr Me
  loc_AA3C3A: MemLdRfVar from_stack_1.global_64
  loc_AA3C3D: LdPrVar
  loc_AA3C3F: LateMemCall
  loc_AA3C45: FFree1Var var_B8 = ""
  loc_AA3C48: LitI4 0
  loc_AA3C4D: LitI4 0
  loc_AA3C52: LitI2_Byte 0
  loc_AA3C54: LitStr "right"
  loc_AA3C57: LitI4 0
  loc_AA3C5C: FLdPr Me
  loc_AA3C5F: MemLdStr global_88
  loc_AA3C62: Ary1LdPr
  loc_AA3C63: MemLdStr global_4
  loc_AA3C66: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA3C6B: CVarStr var_B8
  loc_AA3C6E: PopAdLdVar
  loc_AA3C6F: FLdPr Me
  loc_AA3C72: MemLdRfVar from_stack_1.global_64
  loc_AA3C75: LdPrVar
  loc_AA3C77: LateMemCall
  loc_AA3C7D: FFree1Var var_B8 = ""
  loc_AA3C80: LitI4 0
  loc_AA3C85: LitI4 0
  loc_AA3C8A: LitI2_Byte 0
  loc_AA3C8C: LitStr "right"
  loc_AA3C8F: LitI4 0
  loc_AA3C94: FLdPr Me
  loc_AA3C97: MemLdStr global_88
  loc_AA3C9A: Ary1LdPr
  loc_AA3C9B: MemLdStr global_8
  loc_AA3C9E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_AA3CA3: CVarStr var_B8
  loc_AA3CA6: PopAdLdVar
  loc_AA3CA7: FLdPr Me
  loc_AA3CAA: MemLdRfVar from_stack_1.global_64
  loc_AA3CAD: LdPrVar
  loc_AA3CAF: LateMemCall
  loc_AA3CB5: FFree1Var var_B8 = ""
  loc_AA3CB8: LitVarStr var_98, "  </tr>"
  loc_AA3CBD: PopAdLdVar
  loc_AA3CBE: FLdPr Me
  loc_AA3CC1: MemLdRfVar from_stack_1.global_64
  loc_AA3CC4: LdPrVar
  loc_AA3CC6: LateMemCall
  loc_AA3CCC: LitVarStr var_98, "</table>"
  loc_AA3CD1: PopAdLdVar
  loc_AA3CD2: FLdPr Me
  loc_AA3CD5: MemLdRfVar from_stack_1.global_64
  loc_AA3CD8: LdPrVar
  loc_AA3CDA: LateMemCall
  loc_AA3CE0: LitVarStr var_98, "<br>"
  loc_AA3CE5: PopAdLdVar
  loc_AA3CE6: FLdPr Me
  loc_AA3CE9: MemLdRfVar from_stack_1.global_64
  loc_AA3CEC: LdPrVar
  loc_AA3CEE: LateMemCall
  loc_AA3CF4: LitVarStr var_98, "<table width=""95" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""3"" cellspacing=""0"">"
  loc_AA3CF9: PopAdLdVar
  loc_AA3CFA: FLdPr Me
  loc_AA3CFD: MemLdRfVar from_stack_1.global_64
  loc_AA3D00: LdPrVar
  loc_AA3D02: LateMemCall
  loc_AA3D08: LitVarStr var_98, "  <tr align=""right"" class=""Totales"">"
  loc_AA3D0D: PopAdLdVar
  loc_AA3D0E: FLdPr Me
  loc_AA3D11: MemLdRfVar from_stack_1.global_64
  loc_AA3D14: LdPrVar
  loc_AA3D16: LateMemCall
  loc_AA3D1C: LitVarStr var_98, "    <th width=""60" & Chr(37) & """>Diferencia</th>"
  loc_AA3D21: PopAdLdVar
  loc_AA3D22: FLdPr Me
  loc_AA3D25: MemLdRfVar from_stack_1.global_64
  loc_AA3D28: LdPrVar
  loc_AA3D2A: LateMemCall
  loc_AA3D30: LitStr "    <th width=""20" & Chr(37) & """>"
  loc_AA3D33: LitI4 0
  loc_AA3D38: FLdPr Me
  loc_AA3D3B: MemLdStr global_92
  loc_AA3D3E: Ary1LdPr
  loc_AA3D3F: MemLdStr global_4
  loc_AA3D42: ConcatStr
  loc_AA3D43: FStStrNoPop var_BC
  loc_AA3D46: LitStr "</th>"
  loc_AA3D49: ConcatStr
  loc_AA3D4A: CVarStr var_B8
  loc_AA3D4D: PopAdLdVar
  loc_AA3D4E: FLdPr Me
  loc_AA3D51: MemLdRfVar from_stack_1.global_64
  loc_AA3D54: LdPrVar
  loc_AA3D56: LateMemCall
  loc_AA3D5C: FFree1Str var_BC
  loc_AA3D5F: FFree1Var var_B8 = ""
  loc_AA3D62: LitStr "    <th width=""20" & Chr(37) & """>"
  loc_AA3D65: LitI4 0
  loc_AA3D6A: FLdPr Me
  loc_AA3D6D: MemLdStr global_92
  loc_AA3D70: Ary1LdPr
  loc_AA3D71: MemLdStr global_8
  loc_AA3D74: ConcatStr
  loc_AA3D75: FStStrNoPop var_BC
  loc_AA3D78: LitStr "</th>"
  loc_AA3D7B: ConcatStr
  loc_AA3D7C: CVarStr var_B8
  loc_AA3D7F: PopAdLdVar
  loc_AA3D80: FLdPr Me
  loc_AA3D83: MemLdRfVar from_stack_1.global_64
  loc_AA3D86: LdPrVar
  loc_AA3D88: LateMemCall
  loc_AA3D8E: FFree1Str var_BC
  loc_AA3D91: FFree1Var var_B8 = ""
  loc_AA3D94: LitVarStr var_98, "  </tr>"
  loc_AA3D99: PopAdLdVar
  loc_AA3D9A: FLdPr Me
  loc_AA3D9D: MemLdRfVar from_stack_1.global_64
  loc_AA3DA0: LdPrVar
  loc_AA3DA2: LateMemCall
  loc_AA3DA8: LitVarStr var_98, "</table>"
  loc_AA3DAD: PopAdLdVar
  loc_AA3DAE: FLdPr Me
  loc_AA3DB1: MemLdRfVar from_stack_1.global_64
  loc_AA3DB4: LdPrVar
  loc_AA3DB6: LateMemCall
  loc_AA3DBC: Call Proc_218_15_972698()
  loc_AA3DC1: FLdPr Me
  loc_AA3DC4: MemLdRfVar from_stack_1.global_64
  loc_AA3DC7: LdPrVar
  loc_AA3DC9: LateMemCall
  loc_AA3DCF: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_AA3DD4: ExitProcHresult
  loc_AA3DD5: CStr2Ansi
  loc_AA3DD6: DOC
End Sub

Private Function Proc_218_14_ABAAF8() 'ABAAF8
  'Data Table: 4397A4
  loc_ABA560: LitVarStr var_94, "<html>"
  loc_ABA565: PopAdLdVar
  loc_ABA566: FLdPr Me
  loc_ABA569: MemLdRfVar from_stack_1.global_64
  loc_ABA56C: LdPrVar
  loc_ABA56E: LateMemCall
  loc_ABA574: LitVarStr var_94, "<head>"
  loc_ABA579: PopAdLdVar
  loc_ABA57A: FLdPr Me
  loc_ABA57D: MemLdRfVar from_stack_1.global_64
  loc_ABA580: LdPrVar
  loc_ABA582: LateMemCall
  loc_ABA588: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_ABA58D: PopAdLdVar
  loc_ABA58E: FLdPr Me
  loc_ABA591: MemLdRfVar from_stack_1.global_64
  loc_ABA594: LdPrVar
  loc_ABA596: LateMemCall
  loc_ABA59C: LitStr "<title>"
  loc_ABA59F: FLdRfVar var_A8
  loc_ABA5A2: FLdPr Me
  loc_ABA5A5:  = Me.Caption
  loc_ABA5AA: ILdRf var_A8
  loc_ABA5AD: ConcatStr
  loc_ABA5AE: FStStrNoPop var_AC
  loc_ABA5B1: LitStr "</title>"
  loc_ABA5B4: ConcatStr
  loc_ABA5B5: CVarStr var_BC
  loc_ABA5B8: PopAdLdVar
  loc_ABA5B9: FLdPr Me
  loc_ABA5BC: MemLdRfVar from_stack_1.global_64
  loc_ABA5BF: LdPrVar
  loc_ABA5C1: LateMemCall
  loc_ABA5C7: FFreeStr var_A8 = ""
  loc_ABA5CE: FFree1Var var_BC = ""
  loc_ABA5D1: LitVarStr var_94, "<style type=""text/css"">"
  loc_ABA5D6: PopAdLdVar
  loc_ABA5D7: FLdPr Me
  loc_ABA5DA: MemLdRfVar from_stack_1.global_64
  loc_ABA5DD: LdPrVar
  loc_ABA5DF: LateMemCall
  loc_ABA5E5: LitVarStr var_94, ".Titulo1 {"
  loc_ABA5EA: PopAdLdVar
  loc_ABA5EB: FLdPr Me
  loc_ABA5EE: MemLdRfVar from_stack_1.global_64
  loc_ABA5F1: LdPrVar
  loc_ABA5F3: LateMemCall
  loc_ABA5F9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ABA5FE: PopAdLdVar
  loc_ABA5FF: FLdPr Me
  loc_ABA602: MemLdRfVar from_stack_1.global_64
  loc_ABA605: LdPrVar
  loc_ABA607: LateMemCall
  loc_ABA60D: LitVarStr var_94, " font-size: 18px;"
  loc_ABA612: PopAdLdVar
  loc_ABA613: FLdPr Me
  loc_ABA616: MemLdRfVar from_stack_1.global_64
  loc_ABA619: LdPrVar
  loc_ABA61B: LateMemCall
  loc_ABA621: LitVarStr var_94, " font-weight: bold;"
  loc_ABA626: PopAdLdVar
  loc_ABA627: FLdPr Me
  loc_ABA62A: MemLdRfVar from_stack_1.global_64
  loc_ABA62D: LdPrVar
  loc_ABA62F: LateMemCall
  loc_ABA635: LitVarStr var_94, "}"
  loc_ABA63A: PopAdLdVar
  loc_ABA63B: FLdPr Me
  loc_ABA63E: MemLdRfVar from_stack_1.global_64
  loc_ABA641: LdPrVar
  loc_ABA643: LateMemCall
  loc_ABA649: LitVarStr var_94, ".Titulo2 {"
  loc_ABA64E: PopAdLdVar
  loc_ABA64F: FLdPr Me
  loc_ABA652: MemLdRfVar from_stack_1.global_64
  loc_ABA655: LdPrVar
  loc_ABA657: LateMemCall
  loc_ABA65D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ABA662: PopAdLdVar
  loc_ABA663: FLdPr Me
  loc_ABA666: MemLdRfVar from_stack_1.global_64
  loc_ABA669: LdPrVar
  loc_ABA66B: LateMemCall
  loc_ABA671: LitVarStr var_94, " font-size: 14px;"
  loc_ABA676: PopAdLdVar
  loc_ABA677: FLdPr Me
  loc_ABA67A: MemLdRfVar from_stack_1.global_64
  loc_ABA67D: LdPrVar
  loc_ABA67F: LateMemCall
  loc_ABA685: LitVarStr var_94, " font-weight: bold;"
  loc_ABA68A: PopAdLdVar
  loc_ABA68B: FLdPr Me
  loc_ABA68E: MemLdRfVar from_stack_1.global_64
  loc_ABA691: LdPrVar
  loc_ABA693: LateMemCall
  loc_ABA699: LitVarStr var_94, "}"
  loc_ABA69E: PopAdLdVar
  loc_ABA69F: FLdPr Me
  loc_ABA6A2: MemLdRfVar from_stack_1.global_64
  loc_ABA6A5: LdPrVar
  loc_ABA6A7: LateMemCall
  loc_ABA6AD: LitVarStr var_94, ".Normal {"
  loc_ABA6B2: PopAdLdVar
  loc_ABA6B3: FLdPr Me
  loc_ABA6B6: MemLdRfVar from_stack_1.global_64
  loc_ABA6B9: LdPrVar
  loc_ABA6BB: LateMemCall
  loc_ABA6C1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ABA6C6: PopAdLdVar
  loc_ABA6C7: FLdPr Me
  loc_ABA6CA: MemLdRfVar from_stack_1.global_64
  loc_ABA6CD: LdPrVar
  loc_ABA6CF: LateMemCall
  loc_ABA6D5: LitVarStr var_94, " font-size: 14px;"
  loc_ABA6DA: PopAdLdVar
  loc_ABA6DB: FLdPr Me
  loc_ABA6DE: MemLdRfVar from_stack_1.global_64
  loc_ABA6E1: LdPrVar
  loc_ABA6E3: LateMemCall
  loc_ABA6E9: LitVarStr var_94, " font-style: normal;"
  loc_ABA6EE: PopAdLdVar
  loc_ABA6EF: FLdPr Me
  loc_ABA6F2: MemLdRfVar from_stack_1.global_64
  loc_ABA6F5: LdPrVar
  loc_ABA6F7: LateMemCall
  loc_ABA6FD: LitVarStr var_94, " font-weight: normal;"
  loc_ABA702: PopAdLdVar
  loc_ABA703: FLdPr Me
  loc_ABA706: MemLdRfVar from_stack_1.global_64
  loc_ABA709: LdPrVar
  loc_ABA70B: LateMemCall
  loc_ABA711: LitVarStr var_94, " font-variant: normal;"
  loc_ABA716: PopAdLdVar
  loc_ABA717: FLdPr Me
  loc_ABA71A: MemLdRfVar from_stack_1.global_64
  loc_ABA71D: LdPrVar
  loc_ABA71F: LateMemCall
  loc_ABA725: LitVarStr var_94, "}"
  loc_ABA72A: PopAdLdVar
  loc_ABA72B: FLdPr Me
  loc_ABA72E: MemLdRfVar from_stack_1.global_64
  loc_ABA731: LdPrVar
  loc_ABA733: LateMemCall
  loc_ABA739: LitVarStr var_94, ".EncabezadoGrande {"
  loc_ABA73E: PopAdLdVar
  loc_ABA73F: FLdPr Me
  loc_ABA742: MemLdRfVar from_stack_1.global_64
  loc_ABA745: LdPrVar
  loc_ABA747: LateMemCall
  loc_ABA74D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_ABA752: PopAdLdVar
  loc_ABA753: FLdPr Me
  loc_ABA756: MemLdRfVar from_stack_1.global_64
  loc_ABA759: LdPrVar
  loc_ABA75B: LateMemCall
  loc_ABA761: LitVarStr var_94, " font-size: 14px;"
  loc_ABA766: PopAdLdVar
  loc_ABA767: FLdPr Me
  loc_ABA76A: MemLdRfVar from_stack_1.global_64
  loc_ABA76D: LdPrVar
  loc_ABA76F: LateMemCall
  loc_ABA775: LitVarStr var_94, " font-weight: bold;"
  loc_ABA77A: PopAdLdVar
  loc_ABA77B: FLdPr Me
  loc_ABA77E: MemLdRfVar from_stack_1.global_64
  loc_ABA781: LdPrVar
  loc_ABA783: LateMemCall
  loc_ABA789: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_ABA78E: PopAdLdVar
  loc_ABA78F: FLdPr Me
  loc_ABA792: MemLdRfVar from_stack_1.global_64
  loc_ABA795: LdPrVar
  loc_ABA797: LateMemCall
  loc_ABA79D: LitVarStr var_94, "}"
  loc_ABA7A2: PopAdLdVar
  loc_ABA7A3: FLdPr Me
  loc_ABA7A6: MemLdRfVar from_stack_1.global_64
  loc_ABA7A9: LdPrVar
  loc_ABA7AB: LateMemCall
  loc_ABA7B1: LitVarStr var_94, ".Encabezado {"
  loc_ABA7B6: PopAdLdVar
  loc_ABA7B7: FLdPr Me
  loc_ABA7BA: MemLdRfVar from_stack_1.global_64
  loc_ABA7BD: LdPrVar
  loc_ABA7BF: LateMemCall
  loc_ABA7C5: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_ABA7CA: PopAdLdVar
  loc_ABA7CB: FLdPr Me
  loc_ABA7CE: MemLdRfVar from_stack_1.global_64
  loc_ABA7D1: LdPrVar
  loc_ABA7D3: LateMemCall
  loc_ABA7D9: LitVarStr var_94, " font-size: 12px;"
  loc_ABA7DE: PopAdLdVar
  loc_ABA7DF: FLdPr Me
  loc_ABA7E2: MemLdRfVar from_stack_1.global_64
  loc_ABA7E5: LdPrVar
  loc_ABA7E7: LateMemCall
  loc_ABA7ED: LitVarStr var_94, " font-weight: bold;"
  loc_ABA7F2: PopAdLdVar
  loc_ABA7F3: FLdPr Me
  loc_ABA7F6: MemLdRfVar from_stack_1.global_64
  loc_ABA7F9: LdPrVar
  loc_ABA7FB: LateMemCall
  loc_ABA801: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_ABA806: PopAdLdVar
  loc_ABA807: FLdPr Me
  loc_ABA80A: MemLdRfVar from_stack_1.global_64
  loc_ABA80D: LdPrVar
  loc_ABA80F: LateMemCall
  loc_ABA815: LitVarStr var_94, "}"
  loc_ABA81A: PopAdLdVar
  loc_ABA81B: FLdPr Me
  loc_ABA81E: MemLdRfVar from_stack_1.global_64
  loc_ABA821: LdPrVar
  loc_ABA823: LateMemCall
  loc_ABA829: LitVarStr var_94, ".LineaDato {"
  loc_ABA82E: PopAdLdVar
  loc_ABA82F: FLdPr Me
  loc_ABA832: MemLdRfVar from_stack_1.global_64
  loc_ABA835: LdPrVar
  loc_ABA837: LateMemCall
  loc_ABA83D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ABA842: PopAdLdVar
  loc_ABA843: FLdPr Me
  loc_ABA846: MemLdRfVar from_stack_1.global_64
  loc_ABA849: LdPrVar
  loc_ABA84B: LateMemCall
  loc_ABA851: LitVarStr var_94, " font-size: 12px;"
  loc_ABA856: PopAdLdVar
  loc_ABA857: FLdPr Me
  loc_ABA85A: MemLdRfVar from_stack_1.global_64
  loc_ABA85D: LdPrVar
  loc_ABA85F: LateMemCall
  loc_ABA865: LitVarStr var_94, "}"
  loc_ABA86A: PopAdLdVar
  loc_ABA86B: FLdPr Me
  loc_ABA86E: MemLdRfVar from_stack_1.global_64
  loc_ABA871: LdPrVar
  loc_ABA873: LateMemCall
  loc_ABA879: LitVarStr var_94, ".Totales {"
  loc_ABA87E: PopAdLdVar
  loc_ABA87F: FLdPr Me
  loc_ABA882: MemLdRfVar from_stack_1.global_64
  loc_ABA885: LdPrVar
  loc_ABA887: LateMemCall
  loc_ABA88D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ABA892: PopAdLdVar
  loc_ABA893: FLdPr Me
  loc_ABA896: MemLdRfVar from_stack_1.global_64
  loc_ABA899: LdPrVar
  loc_ABA89B: LateMemCall
  loc_ABA8A1: LitVarStr var_94, " font-size: 14px;"
  loc_ABA8A6: PopAdLdVar
  loc_ABA8A7: FLdPr Me
  loc_ABA8AA: MemLdRfVar from_stack_1.global_64
  loc_ABA8AD: LdPrVar
  loc_ABA8AF: LateMemCall
  loc_ABA8B5: LitVarStr var_94, " font-weight: bold;"
  loc_ABA8BA: PopAdLdVar
  loc_ABA8BB: FLdPr Me
  loc_ABA8BE: MemLdRfVar from_stack_1.global_64
  loc_ABA8C1: LdPrVar
  loc_ABA8C3: LateMemCall
  loc_ABA8C9: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_ABA8CE: PopAdLdVar
  loc_ABA8CF: FLdPr Me
  loc_ABA8D2: MemLdRfVar from_stack_1.global_64
  loc_ABA8D5: LdPrVar
  loc_ABA8D7: LateMemCall
  loc_ABA8DD: LitVarStr var_94, "}"
  loc_ABA8E2: PopAdLdVar
  loc_ABA8E3: FLdPr Me
  loc_ABA8E6: MemLdRfVar from_stack_1.global_64
  loc_ABA8E9: LdPrVar
  loc_ABA8EB: LateMemCall
  loc_ABA8F1: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_ABA8F6: PopAdLdVar
  loc_ABA8F7: FLdPr Me
  loc_ABA8FA: MemLdRfVar from_stack_1.global_64
  loc_ABA8FD: LdPrVar
  loc_ABA8FF: LateMemCall
  loc_ABA905: LitVarStr var_94, "</style>"
  loc_ABA90A: PopAdLdVar
  loc_ABA90B: FLdPr Me
  loc_ABA90E: MemLdRfVar from_stack_1.global_64
  loc_ABA911: LdPrVar
  loc_ABA913: LateMemCall
  loc_ABA919: LitI4 0
  loc_ABA91E: FStStrCopy var_AC
  loc_ABA921: FLdRfVar var_AC
  loc_ABA924: LitI4 0
  loc_ABA929: FStStrCopy var_A8
  loc_ABA92C: FLdRfVar var_A8
  loc_ABA92F: LitI2_Byte 0
  loc_ABA931: PopTmpLdAd2 var_BE
  loc_ABA934: FLdPr Me
  loc_ABA937: MemLdRfVar from_stack_1.global_64
  loc_ABA93A: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_ABA93F: FFreeStr var_A8 = ""
  loc_ABA946: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_ABA94B: PopAdLdVar
  loc_ABA94C: FLdPr Me
  loc_ABA94F: MemLdRfVar from_stack_1.global_64
  loc_ABA952: LdPrVar
  loc_ABA954: LateMemCall
  loc_ABA95A: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_ABA95F: PopAdLdVar
  loc_ABA960: FLdPr Me
  loc_ABA963: MemLdRfVar from_stack_1.global_64
  loc_ABA966: LdPrVar
  loc_ABA968: LateMemCall
  loc_ABA96E: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_ABA973: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_ABA978: FStVarCopyObj var_BC
  loc_ABA97B: FLdRfVar var_BC
  loc_ABA97E: FLdRfVar var_D0
  loc_ABA981: ImpAdCallFPR4  = Ucase()
  loc_ABA986: FLdRfVar var_D0
  loc_ABA989: ConcatVar var_E0
  loc_ABA98D: LitVarStr var_F0, "<br><br>"
  loc_ABA992: ConcatVar var_100
  loc_ABA996: FLdRfVar var_A8
  loc_ABA999: FLdPr Me
  loc_ABA99C:  = Me.Caption
  loc_ABA9A1: FLdZeroAd var_A8
  loc_ABA9A4: CVarStr var_110
  loc_ABA9A7: ConcatVar var_120
  loc_ABA9AB: LitVarStr var_130, "</th>"
  loc_ABA9B0: ConcatVar var_140
  loc_ABA9B4: PopAdLdVar
  loc_ABA9B5: FLdPr Me
  loc_ABA9B8: MemLdRfVar from_stack_1.global_64
  loc_ABA9BB: LdPrVar
  loc_ABA9BD: LateMemCall
  loc_ABA9C3: FFreeVar var_BC = "": var_D0 = "": var_E0 = "": var_100 = "": var_110 = "": var_120 = ""
  loc_ABA9D4: LitVarStr var_94, "  </tr>"
  loc_ABA9D9: PopAdLdVar
  loc_ABA9DA: FLdPr Me
  loc_ABA9DD: MemLdRfVar from_stack_1.global_64
  loc_ABA9E0: LdPrVar
  loc_ABA9E2: LateMemCall
  loc_ABA9E8: LitVarStr var_94, "  <tr>"
  loc_ABA9ED: PopAdLdVar
  loc_ABA9EE: FLdPr Me
  loc_ABA9F1: MemLdRfVar from_stack_1.global_64
  loc_ABA9F4: LdPrVar
  loc_ABA9F6: LateMemCall
  loc_ABA9FC: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_ABAA01: PopAdLdVar
  loc_ABAA02: FLdPr Me
  loc_ABAA05: MemLdRfVar from_stack_1.global_64
  loc_ABAA08: LdPrVar
  loc_ABAA0A: LateMemCall
  loc_ABAA10: LitVarStr var_94, "  </tr>"
  loc_ABAA15: PopAdLdVar
  loc_ABAA16: FLdPr Me
  loc_ABAA19: MemLdRfVar from_stack_1.global_64
  loc_ABAA1C: LdPrVar
  loc_ABAA1E: LateMemCall
  loc_ABAA24: LitVarStr var_94, "  <tr align=""left"">"
  loc_ABAA29: PopAdLdVar
  loc_ABAA2A: FLdPr Me
  loc_ABAA2D: MemLdRfVar from_stack_1.global_64
  loc_ABAA30: LdPrVar
  loc_ABAA32: LateMemCall
  loc_ABAA38: LitStr "    <th>Periodo: <span class=""Normal"">"
  loc_ABAA3B: FLdRfVar var_A8
  loc_ABAA3E: FLdPr Me
  loc_ABAA41: VCallAd Control_ID_cboPeriodo
  loc_ABAA44: FStAdFunc var_154
  loc_ABAA47: FLdPr var_154
  loc_ABAA4A:  = Me.Text
  loc_ABAA4F: ILdRf var_A8
  loc_ABAA52: ConcatStr
  loc_ABAA53: FStStrNoPop var_AC
  loc_ABAA56: LitStr "</span></th>"
  loc_ABAA59: ConcatStr
  loc_ABAA5A: CVarStr var_BC
  loc_ABAA5D: PopAdLdVar
  loc_ABAA5E: FLdPr Me
  loc_ABAA61: MemLdRfVar from_stack_1.global_64
  loc_ABAA64: LdPrVar
  loc_ABAA66: LateMemCall
  loc_ABAA6C: FFreeStr var_A8 = ""
  loc_ABAA73: FFree1Ad var_154
  loc_ABAA76: FFree1Var var_BC = ""
  loc_ABAA79: LitStr "    <th align=""right"">Mes: <span class=""Normal"">"
  loc_ABAA7C: FLdRfVar var_A8
  loc_ABAA7F: FLdPr Me
  loc_ABAA82: VCallAd Control_ID_cboMes
  loc_ABAA85: FStAdFunc var_154
  loc_ABAA88: FLdPr var_154
  loc_ABAA8B:  = Me.Text
  loc_ABAA90: ILdRf var_A8
  loc_ABAA93: ConcatStr
  loc_ABAA94: FStStrNoPop var_AC
  loc_ABAA97: LitStr " ("
  loc_ABAA9A: ConcatStr
  loc_ABAA9B: FStStrNoPop var_158
  loc_ABAA9E: FLdPr Me
  loc_ABAAA1: MemLdStr global_100
  loc_ABAAA4: ConcatStr
  loc_ABAAA5: FStStrNoPop var_15C
  loc_ABAAA8: LitStr ")</span></th>"
  loc_ABAAAB: ConcatStr
  loc_ABAAAC: CVarStr var_BC
  loc_ABAAAF: PopAdLdVar
  loc_ABAAB0: FLdPr Me
  loc_ABAAB3: MemLdRfVar from_stack_1.global_64
  loc_ABAAB6: LdPrVar
  loc_ABAAB8: LateMemCall
  loc_ABAABE: FFreeStr var_A8 = "": var_AC = "": var_158 = ""
  loc_ABAAC9: FFree1Ad var_154
  loc_ABAACC: FFree1Var var_BC = ""
  loc_ABAACF: LitVarStr var_94, "  </tr>"
  loc_ABAAD4: PopAdLdVar
  loc_ABAAD5: FLdPr Me
  loc_ABAAD8: MemLdRfVar from_stack_1.global_64
  loc_ABAADB: LdPrVar
  loc_ABAADD: LateMemCall
  loc_ABAAE3: LitVarStr var_94, "</table>"
  loc_ABAAE8: PopAdLdVar
  loc_ABAAE9: FLdPr Me
  loc_ABAAEC: MemLdRfVar from_stack_1.global_64
  loc_ABAAEF: LdPrVar
  loc_ABAAF1: LateMemCall
  loc_ABAAF7: ExitProcHresult
End Function

Private Function Proc_218_15_972698() '972698
  'Data Table: 4397A4
  loc_97266C: LitVarStr var_94, "</body>"
  loc_972671: PopAdLdVar
  loc_972672: FLdPr Me
  loc_972675: MemLdRfVar from_stack_1.global_64
  loc_972678: LdPrVar
  loc_97267A: LateMemCall
  loc_972680: LitVarStr var_94, "</html>"
  loc_972685: PopAdLdVar
  loc_972686: FLdPr Me
  loc_972689: MemLdRfVar from_stack_1.global_64
  loc_97268C: LdPrVar
  loc_97268E: LateMemCall
  loc_972694: ExitProcHresult
End Function
