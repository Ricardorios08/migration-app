VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoVIII
  Caption = "ACUERDO 2988 - ANEXO VIII - Del Resultado Financiero del Ejercicio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoVIII.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9270
  ClientHeight = 3135
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2880
    Width = 9270
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptA2988AnexoVIII.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7800
    Top = 600
    Width = 735
    Height = 615
    TabIndex = 4
    Cancel = -1  'True
    Picture = "rptA2988AnexoVIII.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoVIII.frx":0B9C
    Left = 240
    Top = 840
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1680
    Width = 5895
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT HTC"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1680
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
    Width = 6855
    Height = 1575
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 3960
      Top = 570
      Width = 2055
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1920
      Top = 660
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1200
      Top = 720
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7920
    Top = 720
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 5
    OleObjectBlob = "rptA2988AnexoVIII.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoVIII"

Public htmFile As Variant
Public txtFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean
Public sValErr As String

Private Type UDT_1_00575408
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdXLS_Click() '96B03C
  'Data Table: 461414
  loc_96B020: LitI2_Byte &HFF
  loc_96B022: LitI2_Byte 0
  loc_96B024: ILdRf Me
  loc_96B027: CastAd
  loc_96B02A: FStAdFunc var_88
  loc_96B02D: FLdRfVar var_88
  loc_96B030: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B035: FFree1Ad var_88
  loc_96B038: ExitProcHresult
End Sub

Private Sub Form_Load() '9D13B4
  'Data Table: 461414
  loc_9D12DC: LitI2_Byte &HFF
  loc_9D12DE: ImpAdStI2 MemVar_C3D840
  loc_9D12E1: ILdRf Me
  loc_9D12E4: CastAd
  loc_9D12E7: FStAdFunc var_8C
  loc_9D12EA: FLdRfVar var_8C
  loc_9D12ED: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D12F2: FFree1Ad var_8C
  loc_9D12F5: FLdRfVar var_88
  loc_9D12F8: NewIfNullAd
  loc_9D12FB: FStAd var_90 
  loc_9D12FF: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D1302: FLdPr var_90
  loc_9D1305: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D130A: FLdRfVar var_94
  loc_9D130D: FLdPr var_90
  loc_9D1310: from_stack_1 = clsperiodo.RecordCount
  loc_9D1315: ILdRf var_94
  loc_9D1318: LitI4 0
  loc_9D131D: GtI4
  loc_9D131E: BranchF loc_9D13A5
  loc_9D1321: FLdPr var_90
  loc_9D1324: Call clsperiodo.MoveFirst()
  loc_9D1329: FLdRfVar var_96
  loc_9D132C: FLdPr var_90
  loc_9D132F: from_stack_1 = clsperiodo.EOF
  loc_9D1334: FLdI2 var_96
  loc_9D1337: NotI4
  loc_9D1338: BranchF loc_9D13A5
  loc_9D133B: LitVar_Missing var_D4
  loc_9D133E: PopAdLdVar
  loc_9D133F: FLdRfVar var_C0
  loc_9D1342: FLdRfVar var_B0
  loc_9D1345: LitVarStr var_AC, "PeriInfo"
  loc_9D134A: PopAdLdVar
  loc_9D134B: FLdRfVar var_9C
  loc_9D134E: FLdRfVar var_8C
  loc_9D1351: FLdPr var_90
  loc_9D1354: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D1359: FLdPr var_8C
  loc_9D135C:  = Me.Fields
  loc_9D1361: FLdPr var_9C
  loc_9D1364: from_stack_2 = Me.Item(from_stack_1)
  loc_9D1369: FLdPr var_B0
  loc_9D136C:  = Me.Value
  loc_9D1371: FLdRfVar var_C0
  loc_9D1374: CStrVarTmp
  loc_9D1375: FStStrNoPop var_C4
  loc_9D1378: FLdPr Me
  loc_9D137B: VCallAd Control_ID_cboPeriodo
  loc_9D137E: FStAdFunc var_D8
  loc_9D1381: FLdPr var_D8
  loc_9D1384: Me.AddItem from_stack_1, from_stack_2
  loc_9D1389: FFree1Str var_C4
  loc_9D138C: FFreeAd var_8C = "": var_9C = "": var_B0 = ""
  loc_9D1397: FFree1Var var_C0 = ""
  loc_9D139A: FLdPr var_90
  loc_9D139D: Call clsperiodo.MoveSiguiente()
  loc_9D13A2: Branch loc_9D1329
  loc_9D13A5: LitNothing
  loc_9D13A7: FStAd var_90 
  loc_9D13AB: Call cmdNueva_Click()
  loc_9D13B0: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9553B0
  'Data Table: 461414
  loc_955398: FLdPr Me
  loc_95539B: VCallAd Control_ID_wbbReporte
  loc_95539E: FStAdFunc var_88
  loc_9553A1: FLdRfVar var_88
  loc_9553A4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9553A9: FFree1Ad var_88
  loc_9553AC: ExitProcHresult
  loc_9553AD: ThisVCallI2
End Sub

Private Sub cmdHtml_Click() '955280
  'Data Table: 461414
  loc_955268: ILdRf Me
  loc_95526B: CastAd
  loc_95526E: FStAdFunc var_88
  loc_955271: FLdRfVar var_88
  loc_955274: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_955279: FFree1Ad var_88
  loc_95527C: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '954C90
  'Data Table: 461414
  loc_954C78: ILdRf Me
  loc_954C7B: CastAd
  loc_954C7E: FStAdFunc var_88
  loc_954C81: FLdRfVar var_88
  loc_954C84: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_954C89: FFree1Ad var_88
  loc_954C8C: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988C54
  'Data Table: 461414
  loc_988C1C: FLdPr Me
  loc_988C1F: VCallAd Control_ID_statusBar
  loc_988C22: FStAdFunc var_88
  loc_988C25: FLdPr var_88
  loc_988C28: LateIdLdVar var_98 DispID_1 0
  loc_988C2F: CStrVarTmp
  loc_988C30: CVarStr var_A8
  loc_988C33: PopAdLdVar
  loc_988C34: FLdPr Me
  loc_988C37: VCallAd Control_ID_statusBar
  loc_988C3A: FStAdFunc var_BC
  loc_988C3D: FLdPr var_BC
  loc_988C40: LateIdSt
  loc_988C45: FFreeAd var_88 = ""
  loc_988C4C: FFreeVar var_98 = ""
  loc_988C53: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A938
  'Data Table: 461414
  loc_97A908: LitVarStr var_94, "Cerrando..."
  loc_97A90D: PopAdLdVar
  loc_97A90E: FLdPr Me
  loc_97A911: VCallAd Control_ID_statusBar
  loc_97A914: FStAdFunc var_A8
  loc_97A917: FLdPr var_A8
  loc_97A91A: LateIdSt
  loc_97A91F: FFree1Ad var_A8
  loc_97A922: ILdRf Me
  loc_97A925: FStAdNoPop
  loc_97A929: ImpAdLdRf MemVar_C44F9C
  loc_97A92C: NewIfNullPr Me
  loc_97A92F: Me.Global.Unload from_stack_1
  loc_97A934: FFree1Ad var_A8
  loc_97A937: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95941C
  'Data Table: 461414
  loc_959404: ILdRf Me
  loc_959407: CastAd
  loc_95940A: FStAdFunc var_88
  loc_95940D: FLdRfVar var_88
  loc_959410: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_959415: FFree1Ad var_88
  loc_959418: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9918D4
  'Data Table: 461414
  loc_991884: LitI2_Byte 0
  loc_991886: FLdPr Me
  loc_991889: MemStI2 bGenerado
  loc_99188C: LitI2_Byte &HFF
  loc_99188E: FLdPr Me
  loc_991891: MemStI2 bLogos
  loc_991894: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_991899: ImpAdLdI2 MemVar_C3D064
  loc_99189C: CStrUI1
  loc_99189E: FStStrNoPop var_88
  loc_9918A1: FLdPr Me
  loc_9918A4: VCallAd Control_ID_cboPeriodo
  loc_9918A7: FStAdFunc var_8C
  loc_9918AA: FLdPr var_8C
  loc_9918AD: Me.Text = from_stack_1
  loc_9918B2: FFree1Str var_88
  loc_9918B5: FFree1Ad var_8C
  loc_9918B8: Call HabilitarCriterio()
  loc_9918BD: ILdRf Me
  loc_9918C0: CastAd
  loc_9918C3: FStAdFunc var_8C
  loc_9918C6: FLdRfVar var_8C
  loc_9918C9: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9918CE: FFree1Ad var_8C
  loc_9918D1: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '98F9D0
  'Data Table: 461414
  loc_98F988: LitStr "Acuerdo 2988 Anexo VIII "
  loc_98F98B: FLdRfVar var_8C
  loc_98F98E: FLdPr Me
  loc_98F991: VCallAd Control_ID_cboPeriodo
  loc_98F994: FStAdFunc var_88
  loc_98F997: FLdPr var_88
  loc_98F99A:  = Me.Text
  loc_98F99F: ILdRf var_8C
  loc_98F9A2: ConcatStr
  loc_98F9A3: FStStrNoPop var_90
  loc_98F9A6: FLdPr Me
  loc_98F9A9: Me.Tag = from_stack_1
  loc_98F9AE: FFreeStr var_8C = ""
  loc_98F9B5: FFree1Ad var_88
  loc_98F9B8: LitI2_Byte 0
  loc_98F9BA: ILdRf Me
  loc_98F9BD: CastAd
  loc_98F9C0: FStAdFunc var_88
  loc_98F9C3: FLdRfVar var_88
  loc_98F9C6: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_98F9CB: FFree1Ad var_88
  loc_98F9CE: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9702D8
  'Data Table: 461414
  loc_9702B4: LitStr "ResFinancEjer.txt"
  loc_9702B7: FLdPr Me
  loc_9702BA: Me.Tag = from_stack_1
  loc_9702BF: LitI2_Byte 0
  loc_9702C1: ILdRf Me
  loc_9702C4: CastAd
  loc_9702C7: FStAdFunc var_88
  loc_9702CA: FLdRfVar var_88
  loc_9702CD: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_9702D2: FFree1Ad var_88
  loc_9702D5: ExitProcHresult
End Sub

Public Function htmFileGet() '46210C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '46211B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '46212A
  htmFile = Value
End Sub

Public Function txtFileGet() '462139
  txtFileGet = txtFile
End Function

Public Sub txtFilePut(Value) '462148
  txtFile = Value
End Sub

Public Sub txtFileSet(Value) '462157
  txtFile = Value
End Sub

Public Function bLogosGet() '462166
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '462175
  bLogos = Value
End Sub

Public Function bGeneradoGet() '462184
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '462193
  bGenerado = Value
End Sub

Public Function sValErrGet() '4621A2
  sValErrGet = sValErr
End Function

Public Sub sValErrPut(Value) '4621B1
  sValErr = Value
End Sub

Public Sub HabilitarCriterio() '984B68
  'Data Table: 461414
  loc_984B34: LitI4 0
  loc_984B39: LitI4 0
  loc_984B3E: FLdRfVar var_88
  loc_984B41: Redim
  loc_984B4B: FLdPr Me
  loc_984B4E: VCallAd Control_ID_cboPeriodo
  loc_984B51: CVarAd
  loc_984B55: ParmAry1St
  loc_984B5B: FLdRfVar var_88
  loc_984B5E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984B63: FLdRfVar var_88
  loc_984B66: Erase
  loc_984B67: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BC7D6C
  'Data Table: 461414
  loc_BC6A6C: LitStr vbNullString
  loc_BC6A6F: FLdPr Me
  loc_BC6A72: MemStStrCopy
  loc_BC6A76: OnErrorGoto loc_BC7CF5
  loc_BC6A79: FLdPr Me
  loc_BC6A7C: MemLdI2 bGenerado
  loc_BC6A7F: BranchF loc_BC6A83
  loc_BC6A82: ExitProcHresult
  loc_BC6A83: LitVarStr var_94, "Generando reporte..."
  loc_BC6A88: PopAdLdVar
  loc_BC6A89: FLdPr Me
  loc_BC6A8C: VCallAd Control_ID_statusBar
  loc_BC6A8F: FStAdFunc var_A8
  loc_BC6A92: FLdPr var_A8
  loc_BC6A95: LateIdSt
  loc_BC6A9A: FFree1Ad var_A8
  loc_BC6A9D: LitI4 &HB
  loc_BC6AA2: CI2I4
  loc_BC6AA3: FLdPr Me
  loc_BC6AA6: Me.MousePointer = from_stack_1
  loc_BC6AAB: FLdRfVar var_AC
  loc_BC6AAE: FLdPr Me
  loc_BC6AB1: VCallAd Control_ID_cboPeriodo
  loc_BC6AB4: FStAdFunc var_A8
  loc_BC6AB7: FLdPr var_A8
  loc_BC6ABA:  = Me.Text
  loc_BC6ABF: ILdRf var_AC
  loc_BC6AC2: CI2Str
  loc_BC6AC4: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_BC6AC9: FStStr var_12C
  loc_BC6ACC: FLdRfVar var_B4
  loc_BC6ACF: FLdPr Me
  loc_BC6AD2: VCallAd Control_ID_cboPeriodo
  loc_BC6AD5: FStAdFunc var_B0
  loc_BC6AD8: FLdPr var_B0
  loc_BC6ADB:  = Me.Text
  loc_BC6AE0: LitI2_Byte &H1F
  loc_BC6AE2: LitI2_Byte &HC
  loc_BC6AE4: ILdRf var_B4
  loc_BC6AE7: CI2Str
  loc_BC6AE9: FLdRfVar var_C4
  loc_BC6AEC: ImpAdCallFPR4  = DateSerial(, , )
  loc_BC6AF1: LitVarStr var_A4, "Provisorio"
  loc_BC6AF6: FStVarCopyObj var_114
  loc_BC6AF9: FLdRfVar var_114
  loc_BC6AFC: LitVarStr var_94, "Definitivo"
  loc_BC6B01: FStVarCopyObj var_104
  loc_BC6B04: FLdRfVar var_104
  loc_BC6B07: FLdZeroAd var_12C
  loc_BC6B0A: CVarStr var_D4
  loc_BC6B0D: HardType
  loc_BC6B0E: FLdRfVar var_C4
  loc_BC6B11: EqVar var_E4
  loc_BC6B15: FStVar var_F4
  loc_BC6B19: FLdRfVar var_F4
  loc_BC6B1C: FLdRfVar var_124
  loc_BC6B1F: ImpAdCallFPR4  = IIf(, , )
  loc_BC6B24: FLdRfVar var_124
  loc_BC6B27: CStrVarTmp
  loc_BC6B28: FStStrNoPop var_128
  loc_BC6B2B: FLdPr Me
  loc_BC6B2E: MemStStrCopy
  loc_BC6B32: FFreeStr var_AC = "": var_B4 = "": var_128 = ""
  loc_BC6B3D: FFreeAd var_A8 = ""
  loc_BC6B44: FFreeVar var_D4 = "": var_C4 = "": var_F4 = "": var_104 = "": var_114 = ""
  loc_BC6B53: LitI2_Byte 0
  loc_BC6B55: FLdPr Me
  loc_BC6B58: MemStI2 global_340
  loc_BC6B5B: FLdPr Me
  loc_BC6B5E: MemLdRfVar from_stack_1.global_100
  loc_BC6B61: FStR4 var_130
  loc_BC6B64: FLdRfVar var_B4
  loc_BC6B67: LitI2_Byte &HFF
  loc_BC6B69: LitI2_Byte 0
  loc_BC6B6B: CUI1I2
  loc_BC6B6D: LitI2_Byte 7
  loc_BC6B6F: CStrUI1
  loc_BC6B71: FStStrNoPop var_AC
  loc_BC6B74: LitI2_Byte &H33
  loc_BC6B76: LitStr "Recursos Corrientes calculado"
  loc_BC6B79: Call Proc_153_28_ACDE40()
  loc_BC6B7E: LitI2_Byte 0
  loc_BC6B80: LitVar_Missing var_D4
  loc_BC6B83: LitI2_Byte &HFF
  loc_BC6B85: FLdZeroAd var_B4
  loc_BC6B88: CVarStr var_C4
  loc_BC6B8B: PopAdLdVar
  loc_BC6B8C: FMemLdRf 0
  loc_BC6B91: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6B96: FFree1Str var_AC
  loc_BC6B99: FFreeVar var_C4 = ""
  loc_BC6BA0: FLdRfVar var_B4
  loc_BC6BA3: LitI2_Byte &HFF
  loc_BC6BA5: LitI2_Byte 0
  loc_BC6BA7: CUI1I2
  loc_BC6BA9: LitI2_Byte 8
  loc_BC6BAB: CStrUI1
  loc_BC6BAD: FStStrNoPop var_AC
  loc_BC6BB0: LitI2_Byte &H33
  loc_BC6BB2: LitStr "Recursos Corrientes modificaciones"
  loc_BC6BB5: Call Proc_153_28_ACDE40()
  loc_BC6BBA: LitI2_Byte 0
  loc_BC6BBC: LitVar_Missing var_D4
  loc_BC6BBF: LitI2_Byte &HFF
  loc_BC6BC1: FLdZeroAd var_B4
  loc_BC6BC4: CVarStr var_C4
  loc_BC6BC7: PopAdLdVar
  loc_BC6BC8: FMemLdRf 0
  loc_BC6BCD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6BD2: FFree1Str var_AC
  loc_BC6BD5: FFreeVar var_C4 = ""
  loc_BC6BDC: LitI2_Byte 0
  loc_BC6BDE: LitVar_Missing var_C4
  loc_BC6BE1: LitI2_Byte &HFF
  loc_BC6BE3: FMemLdR4 var_130(0)
  loc_BC6BE8: CR8Str
  loc_BC6BEA: FMemLdR4 var_130(4)
  loc_BC6BEF: CR8Str
  loc_BC6BF1: AddR8
  loc_BC6BF2: CVarR8
  loc_BC6BF6: PopAdLdVar
  loc_BC6BF7: FMemLdRf 0
  loc_BC6BFC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6C01: FFree1Var var_C4 = ""
  loc_BC6C04: FLdRfVar var_B4
  loc_BC6C07: LitI2_Byte 0
  loc_BC6C09: LitI2_Byte 1
  loc_BC6C0B: CUI1I2
  loc_BC6C0D: LitI2_Byte 9
  loc_BC6C0F: CStrUI1
  loc_BC6C11: FStStrNoPop var_AC
  loc_BC6C14: LitI2_Byte &H33
  loc_BC6C16: LitStr "Recursos Corrientes ejecutado"
  loc_BC6C19: Call Proc_153_28_ACDE40()
  loc_BC6C1E: LitI2_Byte 0
  loc_BC6C20: LitVar_Missing var_D4
  loc_BC6C23: LitI2_Byte &HFF
  loc_BC6C25: FLdZeroAd var_B4
  loc_BC6C28: CVarStr var_C4
  loc_BC6C2B: PopAdLdVar
  loc_BC6C2C: FMemLdRf 0
  loc_BC6C31: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6C36: FFree1Str var_AC
  loc_BC6C39: FFreeVar var_C4 = ""
  loc_BC6C40: LitI4 0
  loc_BC6C45: FStR4 var_130
  loc_BC6C48: FLdPr Me
  loc_BC6C4B: MemLdRfVar from_stack_1.global_116
  loc_BC6C4E: FStR4 var_134
  loc_BC6C51: FLdRfVar var_B4
  loc_BC6C54: LitI2_Byte 0
  loc_BC6C56: LitI2_Byte 0
  loc_BC6C58: CUI1I2
  loc_BC6C5A: LitI2_Byte 1
  loc_BC6C5C: CStrUI1
  loc_BC6C5E: FStStrNoPop var_AC
  loc_BC6C61: LitI2_Byte &H3D
  loc_BC6C63: LitStr "Gastos Corrientes calculado"
  loc_BC6C66: Call Proc_153_28_ACDE40()
  loc_BC6C6B: LitI2_Byte 0
  loc_BC6C6D: LitVar_Missing var_D4
  loc_BC6C70: LitI2_Byte &HFF
  loc_BC6C72: FLdZeroAd var_B4
  loc_BC6C75: CVarStr var_C4
  loc_BC6C78: PopAdLdVar
  loc_BC6C79: FMemLdRf 0
  loc_BC6C7E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6C83: FFree1Str var_AC
  loc_BC6C86: FFreeVar var_C4 = ""
  loc_BC6C8D: FLdRfVar var_B4
  loc_BC6C90: LitI2_Byte 0
  loc_BC6C92: LitI2_Byte 0
  loc_BC6C94: CUI1I2
  loc_BC6C96: LitI2_Byte &HE
  loc_BC6C98: CStrUI1
  loc_BC6C9A: FStStrNoPop var_AC
  loc_BC6C9D: LitI2_Byte &H3D
  loc_BC6C9F: LitStr "Gastos Corrientes modificaciones"
  loc_BC6CA2: Call Proc_153_28_ACDE40()
  loc_BC6CA7: LitI2_Byte 0
  loc_BC6CA9: LitVar_Missing var_D4
  loc_BC6CAC: LitI2_Byte &HFF
  loc_BC6CAE: FLdZeroAd var_B4
  loc_BC6CB1: CVarStr var_C4
  loc_BC6CB4: PopAdLdVar
  loc_BC6CB5: FMemLdRf 0
  loc_BC6CBA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6CBF: FFree1Str var_AC
  loc_BC6CC2: FFreeVar var_C4 = ""
  loc_BC6CC9: LitI2_Byte 0
  loc_BC6CCB: LitVar_Missing var_C4
  loc_BC6CCE: LitI2_Byte &HFF
  loc_BC6CD0: FMemLdR4 var_134(0)
  loc_BC6CD5: CR8Str
  loc_BC6CD7: FMemLdR4 var_134(4)
  loc_BC6CDC: CR8Str
  loc_BC6CDE: AddR8
  loc_BC6CDF: CVarR8
  loc_BC6CE3: PopAdLdVar
  loc_BC6CE4: FMemLdRf 0
  loc_BC6CE9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6CEE: FFree1Var var_C4 = ""
  loc_BC6CF1: FLdRfVar var_AC
  loc_BC6CF4: LitI2_Byte &HFF
  loc_BC6CF6: LitI2_Byte 0
  loc_BC6CF8: CUI1I2
  loc_BC6CFA: LitStr "2,24"
  loc_BC6CFD: LitI2_Byte &H3D
  loc_BC6CFF: LitStr "Gastos Corrientes ejecutado"
  loc_BC6D02: Call Proc_153_28_ACDE40()
  loc_BC6D07: LitI2_Byte 0
  loc_BC6D09: LitVar_Missing var_D4
  loc_BC6D0C: LitI2_Byte &HFF
  loc_BC6D0E: FLdZeroAd var_AC
  loc_BC6D11: CVarStr var_C4
  loc_BC6D14: PopAdLdVar
  loc_BC6D15: FMemLdRf 0
  loc_BC6D1A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6D1F: FFreeVar var_C4 = ""
  loc_BC6D26: LitI4 0
  loc_BC6D2B: FStR4 var_134
  loc_BC6D2E: LitI2_Byte 0
  loc_BC6D30: LitVar_Missing var_C4
  loc_BC6D33: LitI2_Byte &HFF
  loc_BC6D35: FLdPr Me
  loc_BC6D38: MemLdStr global_100
  loc_BC6D3B: CR8Str
  loc_BC6D3D: FLdPr Me
  loc_BC6D40: MemLdStr global_116
  loc_BC6D43: CR8Str
  loc_BC6D45: SubR4
  loc_BC6D46: CVarR8
  loc_BC6D4A: PopAdLdVar
  loc_BC6D4B: FLdPr Me
  loc_BC6D4E: MemLdRfVar from_stack_1.global_132
  loc_BC6D51: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6D56: FFree1Var var_C4 = ""
  loc_BC6D59: LitI2_Byte 0
  loc_BC6D5B: LitVar_Missing var_C4
  loc_BC6D5E: LitI2_Byte &HFF
  loc_BC6D60: FLdPr Me
  loc_BC6D63: MemLdStr global_104
  loc_BC6D66: CR8Str
  loc_BC6D68: FLdPr Me
  loc_BC6D6B: MemLdStr global_120
  loc_BC6D6E: CR8Str
  loc_BC6D70: SubR4
  loc_BC6D71: CVarR8
  loc_BC6D75: PopAdLdVar
  loc_BC6D76: FLdPr Me
  loc_BC6D79: MemLdRfVar from_stack_1.global_136
  loc_BC6D7C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6D81: FFree1Var var_C4 = ""
  loc_BC6D84: LitI2_Byte 0
  loc_BC6D86: LitVar_Missing var_C4
  loc_BC6D89: LitI2_Byte &HFF
  loc_BC6D8B: FLdPr Me
  loc_BC6D8E: MemLdStr global_108
  loc_BC6D91: CR8Str
  loc_BC6D93: FLdPr Me
  loc_BC6D96: MemLdStr global_124
  loc_BC6D99: CR8Str
  loc_BC6D9B: SubR4
  loc_BC6D9C: CVarR8
  loc_BC6DA0: PopAdLdVar
  loc_BC6DA1: FLdPr Me
  loc_BC6DA4: MemLdRfVar from_stack_1.global_140
  loc_BC6DA7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6DAC: FFree1Var var_C4 = ""
  loc_BC6DAF: LitI2_Byte 0
  loc_BC6DB1: LitVar_Missing var_C4
  loc_BC6DB4: LitI2_Byte &HFF
  loc_BC6DB6: FLdPr Me
  loc_BC6DB9: MemLdStr global_112
  loc_BC6DBC: CR8Str
  loc_BC6DBE: FLdPr Me
  loc_BC6DC1: MemLdStr global_128
  loc_BC6DC4: CR8Str
  loc_BC6DC6: SubR4
  loc_BC6DC7: CVarR8
  loc_BC6DCB: PopAdLdVar
  loc_BC6DCC: FLdPr Me
  loc_BC6DCF: MemLdRfVar from_stack_1.global_144
  loc_BC6DD2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6DD7: FFree1Var var_C4 = ""
  loc_BC6DDA: FLdPr Me
  loc_BC6DDD: MemLdRfVar from_stack_1.global_148
  loc_BC6DE0: FStR4 var_138
  loc_BC6DE3: FLdRfVar var_B4
  loc_BC6DE6: LitI2_Byte &HFF
  loc_BC6DE8: LitI2_Byte 0
  loc_BC6DEA: CUI1I2
  loc_BC6DEC: LitI2_Byte 7
  loc_BC6DEE: CStrUI1
  loc_BC6DF0: FStStrNoPop var_AC
  loc_BC6DF3: LitI2_Byte &H34
  loc_BC6DF5: LitStr "Recursos de Capital calculado"
  loc_BC6DF8: Call Proc_153_28_ACDE40()
  loc_BC6DFD: LitI2_Byte 0
  loc_BC6DFF: LitVar_Missing var_D4
  loc_BC6E02: LitI2_Byte &HFF
  loc_BC6E04: FLdZeroAd var_B4
  loc_BC6E07: CVarStr var_C4
  loc_BC6E0A: PopAdLdVar
  loc_BC6E0B: FMemLdRf ext_4010A8
  loc_BC6E10: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6E15: FFree1Str var_AC
  loc_BC6E18: FFreeVar var_C4 = ""
  loc_BC6E1F: FLdRfVar var_B4
  loc_BC6E22: LitI2_Byte &HFF
  loc_BC6E24: LitI2_Byte 0
  loc_BC6E26: CUI1I2
  loc_BC6E28: LitI2_Byte 8
  loc_BC6E2A: CStrUI1
  loc_BC6E2C: FStStrNoPop var_AC
  loc_BC6E2F: LitI2_Byte &H34
  loc_BC6E31: LitStr "Recursos de Capital modificaciones"
  loc_BC6E34: Call Proc_153_28_ACDE40()
  loc_BC6E39: LitI2_Byte 0
  loc_BC6E3B: LitVar_Missing var_D4
  loc_BC6E3E: LitI2_Byte &HFF
  loc_BC6E40: FLdZeroAd var_B4
  loc_BC6E43: CVarStr var_C4
  loc_BC6E46: PopAdLdVar
  loc_BC6E47: FMemLdRf ext_4010A8
  loc_BC6E4C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6E51: FFree1Str var_AC
  loc_BC6E54: FFreeVar var_C4 = ""
  loc_BC6E5B: LitI2_Byte 0
  loc_BC6E5D: LitVar_Missing var_C4
  loc_BC6E60: LitI2_Byte &HFF
  loc_BC6E62: FMemLdR4 var_138(0)
  loc_BC6E67: CR8Str
  loc_BC6E69: FMemLdR4 var_138(4)
  loc_BC6E6E: CR8Str
  loc_BC6E70: AddR8
  loc_BC6E71: CVarR8
  loc_BC6E75: PopAdLdVar
  loc_BC6E76: FMemLdRf ext_4010A8
  loc_BC6E7B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6E80: FFree1Var var_C4 = ""
  loc_BC6E83: FLdRfVar var_B4
  loc_BC6E86: LitI2_Byte 0
  loc_BC6E88: LitI2_Byte 0
  loc_BC6E8A: CUI1I2
  loc_BC6E8C: LitI2_Byte 9
  loc_BC6E8E: CStrUI1
  loc_BC6E90: FStStrNoPop var_AC
  loc_BC6E93: LitI2_Byte &H34
  loc_BC6E95: LitStr "Recursos de Capital ejecutado"
  loc_BC6E98: Call Proc_153_28_ACDE40()
  loc_BC6E9D: LitI2_Byte 0
  loc_BC6E9F: LitVar_Missing var_D4
  loc_BC6EA2: LitI2_Byte &HFF
  loc_BC6EA4: FLdZeroAd var_B4
  loc_BC6EA7: CVarStr var_C4
  loc_BC6EAA: PopAdLdVar
  loc_BC6EAB: FMemLdRf ext_4010A8
  loc_BC6EB0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6EB5: FFree1Str var_AC
  loc_BC6EB8: FFreeVar var_C4 = ""
  loc_BC6EBF: LitI4 0
  loc_BC6EC4: FStR4 var_138
  loc_BC6EC7: FLdPr Me
  loc_BC6ECA: MemLdRfVar from_stack_1.global_164
  loc_BC6ECD: FStR4 var_13C
  loc_BC6ED0: FLdRfVar var_B4
  loc_BC6ED3: LitI2_Byte 0
  loc_BC6ED5: LitI2_Byte 0
  loc_BC6ED7: CUI1I2
  loc_BC6ED9: LitI2_Byte 1
  loc_BC6EDB: CStrUI1
  loc_BC6EDD: FStStrNoPop var_AC
  loc_BC6EE0: LitI2_Byte &H3E
  loc_BC6EE2: LitStr "Gastos de Capital calculado"
  loc_BC6EE5: Call Proc_153_28_ACDE40()
  loc_BC6EEA: LitI2_Byte 0
  loc_BC6EEC: LitVar_Missing var_D4
  loc_BC6EEF: LitI2_Byte &HFF
  loc_BC6EF1: FLdZeroAd var_B4
  loc_BC6EF4: CVarStr var_C4
  loc_BC6EF7: PopAdLdVar
  loc_BC6EF8: FMemLdRf unk_4612D9
  loc_BC6EFD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6F02: FFree1Str var_AC
  loc_BC6F05: FFreeVar var_C4 = ""
  loc_BC6F0C: FLdRfVar var_B4
  loc_BC6F0F: LitI2_Byte 0
  loc_BC6F11: LitI2_Byte 0
  loc_BC6F13: CUI1I2
  loc_BC6F15: LitI2_Byte &HE
  loc_BC6F17: CStrUI1
  loc_BC6F19: FStStrNoPop var_AC
  loc_BC6F1C: LitI2_Byte &H3E
  loc_BC6F1E: LitStr "Gastos de Capital modificaciones"
  loc_BC6F21: Call Proc_153_28_ACDE40()
  loc_BC6F26: LitI2_Byte 0
  loc_BC6F28: LitVar_Missing var_D4
  loc_BC6F2B: LitI2_Byte &HFF
  loc_BC6F2D: FLdZeroAd var_B4
  loc_BC6F30: CVarStr var_C4
  loc_BC6F33: PopAdLdVar
  loc_BC6F34: FMemLdRf unk_4612D9
  loc_BC6F39: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6F3E: FFree1Str var_AC
  loc_BC6F41: FFreeVar var_C4 = ""
  loc_BC6F48: LitI2_Byte 0
  loc_BC6F4A: LitVar_Missing var_C4
  loc_BC6F4D: LitI2_Byte &HFF
  loc_BC6F4F: FMemLdR4 var_13C(0)
  loc_BC6F54: CR8Str
  loc_BC6F56: FMemLdR4 var_13C(4)
  loc_BC6F5B: CR8Str
  loc_BC6F5D: AddR8
  loc_BC6F5E: CVarR8
  loc_BC6F62: PopAdLdVar
  loc_BC6F63: FMemLdRf unk_4612D9
  loc_BC6F68: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6F6D: FFree1Var var_C4 = ""
  loc_BC6F70: FLdRfVar var_AC
  loc_BC6F73: LitI2_Byte &HFF
  loc_BC6F75: LitI2_Byte 0
  loc_BC6F77: CUI1I2
  loc_BC6F79: LitStr "2,24"
  loc_BC6F7C: LitI2_Byte &H3E
  loc_BC6F7E: LitStr "Gastos de Capital ejecutado"
  loc_BC6F81: Call Proc_153_28_ACDE40()
  loc_BC6F86: LitI2_Byte 0
  loc_BC6F88: LitVar_Missing var_D4
  loc_BC6F8B: LitI2_Byte &HFF
  loc_BC6F8D: FLdZeroAd var_AC
  loc_BC6F90: CVarStr var_C4
  loc_BC6F93: PopAdLdVar
  loc_BC6F94: FMemLdRf unk_4612D9
  loc_BC6F99: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6F9E: FFreeVar var_C4 = ""
  loc_BC6FA5: LitI4 0
  loc_BC6FAA: FStR4 var_13C
  loc_BC6FAD: LitI2_Byte 0
  loc_BC6FAF: LitVar_Missing var_C4
  loc_BC6FB2: LitI2_Byte &HFF
  loc_BC6FB4: FLdPr Me
  loc_BC6FB7: MemLdStr global_100
  loc_BC6FBA: CR8Str
  loc_BC6FBC: FLdPr Me
  loc_BC6FBF: MemLdStr global_148
  loc_BC6FC2: CR8Str
  loc_BC6FC4: AddR8
  loc_BC6FC5: CVarR8
  loc_BC6FC9: PopAdLdVar
  loc_BC6FCA: FLdPr Me
  loc_BC6FCD: MemLdRfVar from_stack_1.global_180
  loc_BC6FD0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC6FD5: FFree1Var var_C4 = ""
  loc_BC6FD8: LitI2_Byte 0
  loc_BC6FDA: LitVar_Missing var_C4
  loc_BC6FDD: LitI2_Byte &HFF
  loc_BC6FDF: FLdPr Me
  loc_BC6FE2: MemLdStr global_104
  loc_BC6FE5: CR8Str
  loc_BC6FE7: FLdPr Me
  loc_BC6FEA: MemLdStr global_152
  loc_BC6FED: CR8Str
  loc_BC6FEF: AddR8
  loc_BC6FF0: CVarR8
  loc_BC6FF4: PopAdLdVar
  loc_BC6FF5: FLdPr Me
  loc_BC6FF8: MemLdRfVar from_stack_1.global_184
  loc_BC6FFB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7000: FFree1Var var_C4 = ""
  loc_BC7003: LitI2_Byte 0
  loc_BC7005: LitVar_Missing var_C4
  loc_BC7008: LitI2_Byte &HFF
  loc_BC700A: FLdPr Me
  loc_BC700D: MemLdStr global_108
  loc_BC7010: CR8Str
  loc_BC7012: FLdPr Me
  loc_BC7015: MemLdStr global_156
  loc_BC7018: CR8Str
  loc_BC701A: AddR8
  loc_BC701B: CVarR8
  loc_BC701F: PopAdLdVar
  loc_BC7020: FLdPr Me
  loc_BC7023: MemLdRfVar from_stack_1.global_188
  loc_BC7026: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC702B: FFree1Var var_C4 = ""
  loc_BC702E: LitI2_Byte 0
  loc_BC7030: LitVar_Missing var_C4
  loc_BC7033: LitI2_Byte &HFF
  loc_BC7035: FLdPr Me
  loc_BC7038: MemLdStr global_112
  loc_BC703B: CR8Str
  loc_BC703D: FLdPr Me
  loc_BC7040: MemLdStr global_160
  loc_BC7043: CR8Str
  loc_BC7045: AddR8
  loc_BC7046: CVarR8
  loc_BC704A: PopAdLdVar
  loc_BC704B: FLdPr Me
  loc_BC704E: MemLdRfVar from_stack_1.global_192
  loc_BC7051: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7056: FFree1Var var_C4 = ""
  loc_BC7059: LitI2_Byte 0
  loc_BC705B: LitVar_Missing var_C4
  loc_BC705E: LitI2_Byte &HFF
  loc_BC7060: FLdPr Me
  loc_BC7063: MemLdStr global_116
  loc_BC7066: CR8Str
  loc_BC7068: FLdPr Me
  loc_BC706B: MemLdStr global_164
  loc_BC706E: CR8Str
  loc_BC7070: AddR8
  loc_BC7071: CVarR8
  loc_BC7075: PopAdLdVar
  loc_BC7076: FLdPr Me
  loc_BC7079: MemLdRfVar from_stack_1.global_196
  loc_BC707C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7081: FFree1Var var_C4 = ""
  loc_BC7084: LitI2_Byte 0
  loc_BC7086: LitVar_Missing var_C4
  loc_BC7089: LitI2_Byte &HFF
  loc_BC708B: FLdPr Me
  loc_BC708E: MemLdStr global_120
  loc_BC7091: CR8Str
  loc_BC7093: FLdPr Me
  loc_BC7096: MemLdStr global_168
  loc_BC7099: CR8Str
  loc_BC709B: AddR8
  loc_BC709C: CVarR8
  loc_BC70A0: PopAdLdVar
  loc_BC70A1: FLdPr Me
  loc_BC70A4: MemLdRfVar from_stack_1.global_200
  loc_BC70A7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC70AC: FFree1Var var_C4 = ""
  loc_BC70AF: LitI2_Byte 0
  loc_BC70B1: LitVar_Missing var_C4
  loc_BC70B4: LitI2_Byte &HFF
  loc_BC70B6: FLdPr Me
  loc_BC70B9: MemLdStr global_124
  loc_BC70BC: CR8Str
  loc_BC70BE: FLdPr Me
  loc_BC70C1: MemLdStr global_172
  loc_BC70C4: CR8Str
  loc_BC70C6: AddR8
  loc_BC70C7: CVarR8
  loc_BC70CB: PopAdLdVar
  loc_BC70CC: FLdPr Me
  loc_BC70CF: MemLdRfVar from_stack_1.global_204
  loc_BC70D2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC70D7: FFree1Var var_C4 = ""
  loc_BC70DA: LitI2_Byte 0
  loc_BC70DC: LitVar_Missing var_C4
  loc_BC70DF: LitI2_Byte &HFF
  loc_BC70E1: FLdPr Me
  loc_BC70E4: MemLdStr global_128
  loc_BC70E7: CR8Str
  loc_BC70E9: FLdPr Me
  loc_BC70EC: MemLdStr global_176
  loc_BC70EF: CR8Str
  loc_BC70F1: AddR8
  loc_BC70F2: CVarR8
  loc_BC70F6: PopAdLdVar
  loc_BC70F7: FLdPr Me
  loc_BC70FA: MemLdRfVar from_stack_1.global_208
  loc_BC70FD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7102: FFree1Var var_C4 = ""
  loc_BC7105: LitI2_Byte 0
  loc_BC7107: LitVar_Missing var_C4
  loc_BC710A: LitI2_Byte &HFF
  loc_BC710C: FLdPr Me
  loc_BC710F: MemLdStr global_180
  loc_BC7112: CR8Str
  loc_BC7114: FLdPr Me
  loc_BC7117: MemLdStr global_196
  loc_BC711A: CR8Str
  loc_BC711C: SubR4
  loc_BC711D: CVarR8
  loc_BC7121: PopAdLdVar
  loc_BC7122: FLdPr Me
  loc_BC7125: MemLdRfVar from_stack_1.global_212
  loc_BC7128: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC712D: FFree1Var var_C4 = ""
  loc_BC7130: LitI2_Byte 0
  loc_BC7132: LitVar_Missing var_C4
  loc_BC7135: LitI2_Byte &HFF
  loc_BC7137: FLdPr Me
  loc_BC713A: MemLdStr global_184
  loc_BC713D: CR8Str
  loc_BC713F: FLdPr Me
  loc_BC7142: MemLdStr global_200
  loc_BC7145: CR8Str
  loc_BC7147: SubR4
  loc_BC7148: CVarR8
  loc_BC714C: PopAdLdVar
  loc_BC714D: FLdPr Me
  loc_BC7150: MemLdRfVar from_stack_1.global_216
  loc_BC7153: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7158: FFree1Var var_C4 = ""
  loc_BC715B: LitI2_Byte 0
  loc_BC715D: LitVar_Missing var_C4
  loc_BC7160: LitI2_Byte &HFF
  loc_BC7162: FLdPr Me
  loc_BC7165: MemLdStr global_188
  loc_BC7168: CR8Str
  loc_BC716A: FLdPr Me
  loc_BC716D: MemLdStr global_204
  loc_BC7170: CR8Str
  loc_BC7172: SubR4
  loc_BC7173: CVarR8
  loc_BC7177: PopAdLdVar
  loc_BC7178: FLdPr Me
  loc_BC717B: MemLdRfVar from_stack_1.global_220
  loc_BC717E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7183: FFree1Var var_C4 = ""
  loc_BC7186: LitI2_Byte 0
  loc_BC7188: LitVar_Missing var_C4
  loc_BC718B: LitI2_Byte &HFF
  loc_BC718D: FLdPr Me
  loc_BC7190: MemLdStr global_192
  loc_BC7193: CR8Str
  loc_BC7195: FLdPr Me
  loc_BC7198: MemLdStr global_208
  loc_BC719B: CR8Str
  loc_BC719D: SubR4
  loc_BC719E: CVarR8
  loc_BC71A2: PopAdLdVar
  loc_BC71A3: FLdPr Me
  loc_BC71A6: MemLdRfVar from_stack_1.global_224
  loc_BC71A9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC71AE: FFree1Var var_C4 = ""
  loc_BC71B1: FLdPr Me
  loc_BC71B4: MemLdRfVar from_stack_1.global_228
  loc_BC71B7: FStR4 var_140
  loc_BC71BA: LitStr "Municipalidad de Guaymallén"
  loc_BC71BD: LitStr "Municipalidad de La Paz"
  loc_BC71C0: EqStr
  loc_BC71C2: BranchF loc_BC71C8
  loc_BC71C5: Branch loc_BC738E
  loc_BC71C8: LitStr "Municipalidad de Guaymallén"
  loc_BC71CB: LitStr "EPRE - Ente Provincial Regulador Eléctricoooo"
  loc_BC71CE: EqStr
  loc_BC71D0: BranchF loc_BC72B2
  loc_BC71D3: FLdRfVar var_B4
  loc_BC71D6: LitI2_Byte &HFF
  loc_BC71D8: LitI2_Byte 0
  loc_BC71DA: CUI1I2
  loc_BC71DC: LitI2_Byte 7
  loc_BC71DE: CStrUI1
  loc_BC71E0: FStStrNoPop var_AC
  loc_BC71E3: LitI2_Byte 7
  loc_BC71E5: LitStr "Recursos Figurativos calculado"
  loc_BC71E8: Call Proc_153_28_ACDE40()
  loc_BC71ED: LitI2_Byte 0
  loc_BC71EF: LitVar_Missing var_D4
  loc_BC71F2: LitI2_Byte &HFF
  loc_BC71F4: FLdZeroAd var_B4
  loc_BC71F7: CVarStr var_C4
  loc_BC71FA: PopAdLdVar
  loc_BC71FB: FMemLdRf 0
  loc_BC7200: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7205: FFree1Str var_AC
  loc_BC7208: FFreeVar var_C4 = ""
  loc_BC720F: FLdRfVar var_B4
  loc_BC7212: LitI2_Byte &HFF
  loc_BC7214: LitI2_Byte 0
  loc_BC7216: CUI1I2
  loc_BC7218: LitI2_Byte 8
  loc_BC721A: CStrUI1
  loc_BC721C: FStStrNoPop var_AC
  loc_BC721F: LitI2_Byte 7
  loc_BC7221: LitStr "Recursos Figurativos modificaciones"
  loc_BC7224: Call Proc_153_28_ACDE40()
  loc_BC7229: LitI2_Byte 0
  loc_BC722B: LitVar_Missing var_D4
  loc_BC722E: LitI2_Byte &HFF
  loc_BC7230: FLdZeroAd var_B4
  loc_BC7233: CVarStr var_C4
  loc_BC7236: PopAdLdVar
  loc_BC7237: FMemLdRf 0
  loc_BC723C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7241: FFree1Str var_AC
  loc_BC7244: FFreeVar var_C4 = ""
  loc_BC724B: LitI2_Byte 0
  loc_BC724D: LitVar_Missing var_C4
  loc_BC7250: LitI2_Byte &HFF
  loc_BC7252: FMemLdR4 var_140(0)
  loc_BC7257: CR8Str
  loc_BC7259: FMemLdR4 var_140(4)
  loc_BC725E: CR8Str
  loc_BC7260: AddR8
  loc_BC7261: CVarR8
  loc_BC7265: PopAdLdVar
  loc_BC7266: FMemLdRf 0
  loc_BC726B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7270: FFree1Var var_C4 = ""
  loc_BC7273: FLdRfVar var_B4
  loc_BC7276: LitI2_Byte 0
  loc_BC7278: LitI2_Byte 0
  loc_BC727A: CUI1I2
  loc_BC727C: LitI2_Byte 9
  loc_BC727E: CStrUI1
  loc_BC7280: FStStrNoPop var_AC
  loc_BC7283: LitI2_Byte 7
  loc_BC7285: LitStr "Recursos Figurativos ejecutado"
  loc_BC7288: Call Proc_153_28_ACDE40()
  loc_BC728D: LitI2_Byte 0
  loc_BC728F: LitVar_Missing var_D4
  loc_BC7292: LitI2_Byte &HFF
  loc_BC7294: FLdZeroAd var_B4
  loc_BC7297: CVarStr var_C4
  loc_BC729A: PopAdLdVar
  loc_BC729B: FMemLdRf 0
  loc_BC72A0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC72A5: FFree1Str var_AC
  loc_BC72A8: FFreeVar var_C4 = ""
  loc_BC72AF: Branch loc_BC738E
  loc_BC72B2: FLdRfVar var_B4
  loc_BC72B5: LitI2_Byte &HFF
  loc_BC72B7: LitI2_Byte 0
  loc_BC72B9: CUI1I2
  loc_BC72BB: LitI2_Byte 7
  loc_BC72BD: CStrUI1
  loc_BC72BF: FStStrNoPop var_AC
  loc_BC72C2: LitI2_Byte &H35
  loc_BC72C4: LitStr "Recursos Figurativos calculado"
  loc_BC72C7: Call Proc_153_28_ACDE40()
  loc_BC72CC: LitI2_Byte 0
  loc_BC72CE: LitVar_Missing var_D4
  loc_BC72D1: LitI2_Byte &HFF
  loc_BC72D3: FLdZeroAd var_B4
  loc_BC72D6: CVarStr var_C4
  loc_BC72D9: PopAdLdVar
  loc_BC72DA: FMemLdRf 0
  loc_BC72DF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC72E4: FFree1Str var_AC
  loc_BC72E7: FFreeVar var_C4 = ""
  loc_BC72EE: FLdRfVar var_B4
  loc_BC72F1: LitI2_Byte &HFF
  loc_BC72F3: LitI2_Byte 0
  loc_BC72F5: CUI1I2
  loc_BC72F7: LitI2_Byte 8
  loc_BC72F9: CStrUI1
  loc_BC72FB: FStStrNoPop var_AC
  loc_BC72FE: LitI2_Byte &H35
  loc_BC7300: LitStr "Recursos Figurativos modificaciones"
  loc_BC7303: Call Proc_153_28_ACDE40()
  loc_BC7308: LitI2_Byte 0
  loc_BC730A: LitVar_Missing var_D4
  loc_BC730D: LitI2_Byte &HFF
  loc_BC730F: FLdZeroAd var_B4
  loc_BC7312: CVarStr var_C4
  loc_BC7315: PopAdLdVar
  loc_BC7316: FMemLdRf 0
  loc_BC731B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7320: FFree1Str var_AC
  loc_BC7323: FFreeVar var_C4 = ""
  loc_BC732A: LitI2_Byte 0
  loc_BC732C: LitVar_Missing var_C4
  loc_BC732F: LitI2_Byte &HFF
  loc_BC7331: FMemLdR4 var_140(0)
  loc_BC7336: CR8Str
  loc_BC7338: FMemLdR4 var_140(4)
  loc_BC733D: CR8Str
  loc_BC733F: AddR8
  loc_BC7340: CVarR8
  loc_BC7344: PopAdLdVar
  loc_BC7345: FMemLdRf 0
  loc_BC734A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC734F: FFree1Var var_C4 = ""
  loc_BC7352: FLdRfVar var_B4
  loc_BC7355: LitI2_Byte 0
  loc_BC7357: LitI2_Byte 0
  loc_BC7359: CUI1I2
  loc_BC735B: LitI2_Byte 9
  loc_BC735D: CStrUI1
  loc_BC735F: FStStrNoPop var_AC
  loc_BC7362: LitI2_Byte &H35
  loc_BC7364: LitStr "Recursos Figurativos ejecutado"
  loc_BC7367: Call Proc_153_28_ACDE40()
  loc_BC736C: LitI2_Byte 0
  loc_BC736E: LitVar_Missing var_D4
  loc_BC7371: LitI2_Byte &HFF
  loc_BC7373: FLdZeroAd var_B4
  loc_BC7376: CVarStr var_C4
  loc_BC7379: PopAdLdVar
  loc_BC737A: FMemLdRf 0
  loc_BC737F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7384: FFree1Str var_AC
  loc_BC7387: FFreeVar var_C4 = ""
  loc_BC738E: LitI4 0
  loc_BC7393: FStR4 var_140
  loc_BC7396: FLdPr Me
  loc_BC7399: MemLdRfVar from_stack_1.global_244
  loc_BC739C: FStR4 var_144
  loc_BC739F: LitStr "Municipalidad de Guaymallén"
  loc_BC73A2: LitStr "Municipalidad de Santa Rosa"
  loc_BC73A5: EqStr
  loc_BC73A7: BranchF loc_BC7482
  loc_BC73AA: FLdRfVar var_B4
  loc_BC73AD: LitI2_Byte 0
  loc_BC73AF: LitI2_Byte 0
  loc_BC73B1: CUI1I2
  loc_BC73B3: LitI2_Byte 1
  loc_BC73B5: CStrUI1
  loc_BC73B7: FStStrNoPop var_AC
  loc_BC73BA: LitI2_Byte &H40
  loc_BC73BC: LitStr "Gastos Figurativos calculado"
  loc_BC73BF: Call Proc_153_28_ACDE40()
  loc_BC73C4: LitI2_Byte 0
  loc_BC73C6: LitVar_Missing var_D4
  loc_BC73C9: LitI2_Byte &HFF
  loc_BC73CB: FLdZeroAd var_B4
  loc_BC73CE: CVarStr var_C4
  loc_BC73D1: PopAdLdVar
  loc_BC73D2: FMemLdRf 0
  loc_BC73D7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC73DC: FFree1Str var_AC
  loc_BC73DF: FFreeVar var_C4 = ""
  loc_BC73E6: FLdRfVar var_B4
  loc_BC73E9: LitI2_Byte 0
  loc_BC73EB: LitI2_Byte 0
  loc_BC73ED: CUI1I2
  loc_BC73EF: LitI2_Byte &HE
  loc_BC73F1: CStrUI1
  loc_BC73F3: FStStrNoPop var_AC
  loc_BC73F6: LitI2_Byte &H40
  loc_BC73F8: LitStr "Gastos Figurativos modificaciones"
  loc_BC73FB: Call Proc_153_28_ACDE40()
  loc_BC7400: LitI2_Byte 0
  loc_BC7402: LitVar_Missing var_D4
  loc_BC7405: LitI2_Byte &HFF
  loc_BC7407: FLdZeroAd var_B4
  loc_BC740A: CVarStr var_C4
  loc_BC740D: PopAdLdVar
  loc_BC740E: FMemLdRf 0
  loc_BC7413: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7418: FFree1Str var_AC
  loc_BC741B: FFreeVar var_C4 = ""
  loc_BC7422: LitI2_Byte 0
  loc_BC7424: LitVar_Missing var_C4
  loc_BC7427: LitI2_Byte &HFF
  loc_BC7429: FMemLdR4 var_144(0)
  loc_BC742E: CR8Str
  loc_BC7430: FMemLdR4 var_144(4)
  loc_BC7435: CR8Str
  loc_BC7437: AddR8
  loc_BC7438: CVarR8
  loc_BC743C: PopAdLdVar
  loc_BC743D: FMemLdRf 0
  loc_BC7442: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7447: FFree1Var var_C4 = ""
  loc_BC744A: FLdRfVar var_AC
  loc_BC744D: LitI2_Byte &HFF
  loc_BC744F: LitI2_Byte 0
  loc_BC7451: CUI1I2
  loc_BC7453: LitStr "2,24"
  loc_BC7456: LitI2_Byte &H40
  loc_BC7458: LitStr "Gastos Figurativos ejecutado"
  loc_BC745B: Call Proc_153_28_ACDE40()
  loc_BC7460: LitI2_Byte 0
  loc_BC7462: LitVar_Missing var_D4
  loc_BC7465: LitI2_Byte &HFF
  loc_BC7467: FLdZeroAd var_AC
  loc_BC746A: CVarStr var_C4
  loc_BC746D: PopAdLdVar
  loc_BC746E: FMemLdRf 0
  loc_BC7473: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7478: FFreeVar var_C4 = ""
  loc_BC747F: Branch loc_BC7543
  loc_BC7482: LitStr "Municipalidad de Guaymallén"
  loc_BC7485: LitStr "Municipalidad de La Paz"
  loc_BC7488: EqStr
  loc_BC748A: BranchF loc_BC7490
  loc_BC748D: Branch loc_BC7543
  loc_BC7490: FLdRfVar var_B4
  loc_BC7493: LitI2_Byte 0
  loc_BC7495: LitI2_Byte 0
  loc_BC7497: CUI1I2
  loc_BC7499: LitI2_Byte 1
  loc_BC749B: CStrUI1
  loc_BC749D: FStStrNoPop var_AC
  loc_BC74A0: LitI2_Byte &H3F
  loc_BC74A2: LitStr "Gastos Figurativos calculado"
  loc_BC74A5: Call Proc_153_28_ACDE40()
  loc_BC74AA: LitI2_Byte 0
  loc_BC74AC: LitVar_Missing var_D4
  loc_BC74AF: LitI2_Byte &HFF
  loc_BC74B1: FLdZeroAd var_B4
  loc_BC74B4: CVarStr var_C4
  loc_BC74B7: PopAdLdVar
  loc_BC74B8: FMemLdRf 0
  loc_BC74BD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC74C2: FFree1Str var_AC
  loc_BC74C5: FFreeVar var_C4 = ""
  loc_BC74CC: LitI2_Byte 0
  loc_BC74CE: LitVar_Missing var_C4
  loc_BC74D1: LitI2_Byte &HFF
  loc_BC74D3: LitVarI2 var_94, 0
  loc_BC74D8: PopAdLdVar
  loc_BC74D9: FMemLdRf 0
  loc_BC74DE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC74E3: FFree1Var var_C4 = ""
  loc_BC74E6: LitI2_Byte 0
  loc_BC74E8: LitVar_Missing var_C4
  loc_BC74EB: LitI2_Byte &HFF
  loc_BC74ED: FMemLdR4 var_144(0)
  loc_BC74F2: CR8Str
  loc_BC74F4: FMemLdR4 var_144(4)
  loc_BC74F9: CR8Str
  loc_BC74FB: AddR8
  loc_BC74FC: CVarR8
  loc_BC7500: PopAdLdVar
  loc_BC7501: FMemLdRf 0
  loc_BC7506: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC750B: FFree1Var var_C4 = ""
  loc_BC750E: FLdRfVar var_AC
  loc_BC7511: LitI2_Byte &HFF
  loc_BC7513: LitI2_Byte 0
  loc_BC7515: CUI1I2
  loc_BC7517: LitStr "2,24"
  loc_BC751A: LitI2_Byte &H3F
  loc_BC751C: LitStr "Gastos Figurativos ejecutado"
  loc_BC751F: Call Proc_153_28_ACDE40()
  loc_BC7524: LitI2_Byte 0
  loc_BC7526: LitVar_Missing var_D4
  loc_BC7529: LitI2_Byte &HFF
  loc_BC752B: FLdZeroAd var_AC
  loc_BC752E: CVarStr var_C4
  loc_BC7531: PopAdLdVar
  loc_BC7532: FMemLdRf 0
  loc_BC7537: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC753C: FFreeVar var_C4 = ""
  loc_BC7543: LitI4 0
  loc_BC7548: FStR4 var_144
  loc_BC754B: FLdPr Me
  loc_BC754E: MemLdRfVar from_stack_1.global_228
  loc_BC7551: CVarRef
  loc_BC7556: LitVarStr var_A4, "0"
  loc_BC755B: FStVarCopyObj var_C4
  loc_BC755E: FLdRfVar var_C4
  loc_BC7561: FLdPr Me
  loc_BC7564: MemLdStr global_228
  loc_BC7567: LitStr vbNullString
  loc_BC756A: EqStr
  loc_BC756C: CVarBoolI2 var_94
  loc_BC7570: FLdRfVar var_D4
  loc_BC7573: ImpAdCallFPR4  = IIf(, , )
  loc_BC7578: FLdPr Me
  loc_BC757B: MemLdRfVar from_stack_1.global_244
  loc_BC757E: CVarRef
  loc_BC7583: LitVarStr var_174, "0"
  loc_BC7588: FStVarCopyObj var_E4
  loc_BC758B: FLdRfVar var_E4
  loc_BC758E: FLdPr Me
  loc_BC7591: MemLdStr global_244
  loc_BC7594: LitStr vbNullString
  loc_BC7597: EqStr
  loc_BC7599: CVarBoolI2 var_164
  loc_BC759D: FLdRfVar var_F4
  loc_BC75A0: ImpAdCallFPR4  = IIf(, , )
  loc_BC75A5: LitI2_Byte 0
  loc_BC75A7: LitVar_Missing var_104
  loc_BC75AA: LitI2_Byte &HFF
  loc_BC75AC: FLdPr Me
  loc_BC75AF: MemLdStr global_212
  loc_BC75B2: CR8Str
  loc_BC75B4: FLdRfVar var_D4
  loc_BC75B7: FnCDblVar
  loc_BC75B9: AddR8
  loc_BC75BA: FLdRfVar var_F4
  loc_BC75BD: FnCDblVar
  loc_BC75BF: SubR4
  loc_BC75C0: CVarR8
  loc_BC75C4: PopAdLdVar
  loc_BC75C5: FLdPr Me
  loc_BC75C8: MemLdRfVar from_stack_1.global_260
  loc_BC75CB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC75D0: FFreeVar var_94 = "": var_C4 = "": var_D4 = "": var_D4 = "": var_164 = "": var_E4 = "": var_F4 = "": var_F4 = ""
  loc_BC75E5: FLdPr Me
  loc_BC75E8: MemLdRfVar from_stack_1.global_232
  loc_BC75EB: CVarRef
  loc_BC75F0: LitVarStr var_A4, "0"
  loc_BC75F5: FStVarCopyObj var_C4
  loc_BC75F8: FLdRfVar var_C4
  loc_BC75FB: FLdPr Me
  loc_BC75FE: MemLdStr global_232
  loc_BC7601: LitStr vbNullString
  loc_BC7604: EqStr
  loc_BC7606: CVarBoolI2 var_94
  loc_BC760A: FLdRfVar var_D4
  loc_BC760D: ImpAdCallFPR4  = IIf(, , )
  loc_BC7612: FLdPr Me
  loc_BC7615: MemLdRfVar from_stack_1.global_248
  loc_BC7618: CVarRef
  loc_BC761D: LitVarStr var_174, "0"
  loc_BC7622: FStVarCopyObj var_E4
  loc_BC7625: FLdRfVar var_E4
  loc_BC7628: FLdPr Me
  loc_BC762B: MemLdStr global_248
  loc_BC762E: LitStr vbNullString
  loc_BC7631: EqStr
  loc_BC7633: CVarBoolI2 var_164
  loc_BC7637: FLdRfVar var_F4
  loc_BC763A: ImpAdCallFPR4  = IIf(, , )
  loc_BC763F: LitI2_Byte 0
  loc_BC7641: LitVar_Missing var_104
  loc_BC7644: LitI2_Byte &HFF
  loc_BC7646: FLdPr Me
  loc_BC7649: MemLdStr global_216
  loc_BC764C: CR8Str
  loc_BC764E: FLdRfVar var_D4
  loc_BC7651: FnCDblVar
  loc_BC7653: AddR8
  loc_BC7654: FLdRfVar var_F4
  loc_BC7657: FnCDblVar
  loc_BC7659: SubR4
  loc_BC765A: CVarR8
  loc_BC765E: PopAdLdVar
  loc_BC765F: FLdPr Me
  loc_BC7662: MemLdRfVar from_stack_1.global_264
  loc_BC7665: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC766A: FFreeVar var_94 = "": var_C4 = "": var_D4 = "": var_D4 = "": var_164 = "": var_E4 = "": var_F4 = "": var_F4 = ""
  loc_BC767F: FLdPr Me
  loc_BC7682: MemLdRfVar from_stack_1.global_236
  loc_BC7685: CVarRef
  loc_BC768A: LitVarStr var_A4, "0"
  loc_BC768F: FStVarCopyObj var_C4
  loc_BC7692: FLdRfVar var_C4
  loc_BC7695: FLdPr Me
  loc_BC7698: MemLdStr global_236
  loc_BC769B: LitStr vbNullString
  loc_BC769E: EqStr
  loc_BC76A0: CVarBoolI2 var_94
  loc_BC76A4: FLdRfVar var_D4
  loc_BC76A7: ImpAdCallFPR4  = IIf(, , )
  loc_BC76AC: FLdPr Me
  loc_BC76AF: MemLdRfVar from_stack_1.global_252
  loc_BC76B2: CVarRef
  loc_BC76B7: LitVarStr var_174, "0"
  loc_BC76BC: FStVarCopyObj var_E4
  loc_BC76BF: FLdRfVar var_E4
  loc_BC76C2: FLdPr Me
  loc_BC76C5: MemLdStr global_252
  loc_BC76C8: LitStr vbNullString
  loc_BC76CB: EqStr
  loc_BC76CD: CVarBoolI2 var_164
  loc_BC76D1: FLdRfVar var_F4
  loc_BC76D4: ImpAdCallFPR4  = IIf(, , )
  loc_BC76D9: LitI2_Byte 0
  loc_BC76DB: LitVar_Missing var_104
  loc_BC76DE: LitI2_Byte &HFF
  loc_BC76E0: FLdPr Me
  loc_BC76E3: MemLdStr global_220
  loc_BC76E6: CR8Str
  loc_BC76E8: FLdRfVar var_D4
  loc_BC76EB: FnCDblVar
  loc_BC76ED: AddR8
  loc_BC76EE: FLdRfVar var_F4
  loc_BC76F1: FnCDblVar
  loc_BC76F3: SubR4
  loc_BC76F4: CVarR8
  loc_BC76F8: PopAdLdVar
  loc_BC76F9: FLdPr Me
  loc_BC76FC: MemLdRfVar from_stack_1.global_268
  loc_BC76FF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7704: FFreeVar var_94 = "": var_C4 = "": var_D4 = "": var_D4 = "": var_164 = "": var_E4 = "": var_F4 = "": var_F4 = ""
  loc_BC7719: FLdPr Me
  loc_BC771C: MemLdRfVar from_stack_1.global_240
  loc_BC771F: CVarRef
  loc_BC7724: LitVarStr var_A4, "0"
  loc_BC7729: FStVarCopyObj var_C4
  loc_BC772C: FLdRfVar var_C4
  loc_BC772F: FLdPr Me
  loc_BC7732: MemLdStr global_240
  loc_BC7735: LitStr vbNullString
  loc_BC7738: EqStr
  loc_BC773A: CVarBoolI2 var_94
  loc_BC773E: FLdRfVar var_D4
  loc_BC7741: ImpAdCallFPR4  = IIf(, , )
  loc_BC7746: FLdPr Me
  loc_BC7749: MemLdRfVar from_stack_1.global_256
  loc_BC774C: CVarRef
  loc_BC7751: LitVarStr var_174, "0"
  loc_BC7756: FStVarCopyObj var_E4
  loc_BC7759: FLdRfVar var_E4
  loc_BC775C: FLdPr Me
  loc_BC775F: MemLdStr global_256
  loc_BC7762: LitStr vbNullString
  loc_BC7765: EqStr
  loc_BC7767: CVarBoolI2 var_164
  loc_BC776B: FLdRfVar var_F4
  loc_BC776E: ImpAdCallFPR4  = IIf(, , )
  loc_BC7773: LitI2_Byte 0
  loc_BC7775: LitVar_Missing var_104
  loc_BC7778: LitI2_Byte &HFF
  loc_BC777A: FLdPr Me
  loc_BC777D: MemLdStr global_224
  loc_BC7780: CR8Str
  loc_BC7782: FLdRfVar var_D4
  loc_BC7785: FnCDblVar
  loc_BC7787: AddR8
  loc_BC7788: FLdRfVar var_F4
  loc_BC778B: FnCDblVar
  loc_BC778D: SubR4
  loc_BC778E: CVarR8
  loc_BC7792: PopAdLdVar
  loc_BC7793: FLdPr Me
  loc_BC7796: MemLdRfVar from_stack_1.global_272
  loc_BC7799: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC779E: FFreeVar var_94 = "": var_C4 = "": var_D4 = "": var_D4 = "": var_164 = "": var_E4 = "": var_F4 = "": var_F4 = ""
  loc_BC77B3: FLdPr Me
  loc_BC77B6: MemLdRfVar from_stack_1.global_276
  loc_BC77B9: FStR4 var_1A8
  loc_BC77BC: LitStr "Municipalidad de Guaymallén"
  loc_BC77BF: LitStr "Municipalidad de La Pazzzzz"
  loc_BC77C2: EqStr
  loc_BC77C4: BranchF loc_BC78A6
  loc_BC77C7: FLdRfVar var_B4
  loc_BC77CA: LitI2_Byte &HFF
  loc_BC77CC: LitI2_Byte 0
  loc_BC77CE: CUI1I2
  loc_BC77D0: LitI2_Byte 7
  loc_BC77D2: CStrUI1
  loc_BC77D4: FStStrNoPop var_AC
  loc_BC77D7: LitI2_Byte &H35
  loc_BC77D9: LitStr "Fuentes de Financiamiento calculado"
  loc_BC77DC: Call Proc_153_28_ACDE40()
  loc_BC77E1: LitI2_Byte 0
  loc_BC77E3: LitVar_Missing var_D4
  loc_BC77E6: LitI2_Byte &HFF
  loc_BC77E8: FLdZeroAd var_B4
  loc_BC77EB: CVarStr var_C4
  loc_BC77EE: PopAdLdVar
  loc_BC77EF: FMemLdRf 0
  loc_BC77F4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC77F9: FFree1Str var_AC
  loc_BC77FC: FFreeVar var_C4 = ""
  loc_BC7803: FLdRfVar var_B4
  loc_BC7806: LitI2_Byte &HFF
  loc_BC7808: LitI2_Byte 0
  loc_BC780A: CUI1I2
  loc_BC780C: LitI2_Byte 8
  loc_BC780E: CStrUI1
  loc_BC7810: FStStrNoPop var_AC
  loc_BC7813: LitI2_Byte &H35
  loc_BC7815: LitStr "Fuentes de Financiamiento modificaciones"
  loc_BC7818: Call Proc_153_28_ACDE40()
  loc_BC781D: LitI2_Byte 0
  loc_BC781F: LitVar_Missing var_D4
  loc_BC7822: LitI2_Byte &HFF
  loc_BC7824: FLdZeroAd var_B4
  loc_BC7827: CVarStr var_C4
  loc_BC782A: PopAdLdVar
  loc_BC782B: FMemLdRf 0
  loc_BC7830: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7835: FFree1Str var_AC
  loc_BC7838: FFreeVar var_C4 = ""
  loc_BC783F: LitI2_Byte 0
  loc_BC7841: LitVar_Missing var_C4
  loc_BC7844: LitI2_Byte &HFF
  loc_BC7846: FMemLdR4 var_1A8(0)
  loc_BC784B: CR8Str
  loc_BC784D: FMemLdR4 var_1A8(4)
  loc_BC7852: CR8Str
  loc_BC7854: AddR8
  loc_BC7855: CVarR8
  loc_BC7859: PopAdLdVar
  loc_BC785A: FMemLdRf 0
  loc_BC785F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7864: FFree1Var var_C4 = ""
  loc_BC7867: FLdRfVar var_B4
  loc_BC786A: LitI2_Byte 0
  loc_BC786C: LitI2_Byte 0
  loc_BC786E: CUI1I2
  loc_BC7870: LitI2_Byte 9
  loc_BC7872: CStrUI1
  loc_BC7874: FStStrNoPop var_AC
  loc_BC7877: LitI2_Byte &H35
  loc_BC7879: LitStr "Fuentes de Financiamiento ejecutado"
  loc_BC787C: Call Proc_153_28_ACDE40()
  loc_BC7881: LitI2_Byte 0
  loc_BC7883: LitVar_Missing var_D4
  loc_BC7886: LitI2_Byte &HFF
  loc_BC7888: FLdZeroAd var_B4
  loc_BC788B: CVarStr var_C4
  loc_BC788E: PopAdLdVar
  loc_BC788F: FMemLdRf 0
  loc_BC7894: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7899: FFree1Str var_AC
  loc_BC789C: FFreeVar var_C4 = ""
  loc_BC78A3: Branch loc_BC7982
  loc_BC78A6: FLdRfVar var_B4
  loc_BC78A9: LitI2_Byte &HFF
  loc_BC78AB: LitI2_Byte 0
  loc_BC78AD: CUI1I2
  loc_BC78AF: LitI2_Byte 7
  loc_BC78B1: CStrUI1
  loc_BC78B3: FStStrNoPop var_AC
  loc_BC78B6: LitI2_Byte 7
  loc_BC78B8: LitStr "Fuentes de Financiamiento calculado"
  loc_BC78BB: Call Proc_153_28_ACDE40()
  loc_BC78C0: LitI2_Byte 0
  loc_BC78C2: LitVar_Missing var_D4
  loc_BC78C5: LitI2_Byte &HFF
  loc_BC78C7: FLdZeroAd var_B4
  loc_BC78CA: CVarStr var_C4
  loc_BC78CD: PopAdLdVar
  loc_BC78CE: FMemLdRf 0
  loc_BC78D3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC78D8: FFree1Str var_AC
  loc_BC78DB: FFreeVar var_C4 = ""
  loc_BC78E2: FLdRfVar var_B4
  loc_BC78E5: LitI2_Byte &HFF
  loc_BC78E7: LitI2_Byte 0
  loc_BC78E9: CUI1I2
  loc_BC78EB: LitI2_Byte 8
  loc_BC78ED: CStrUI1
  loc_BC78EF: FStStrNoPop var_AC
  loc_BC78F2: LitI2_Byte 7
  loc_BC78F4: LitStr "Fuentes de Financiamiento modificaciones"
  loc_BC78F7: Call Proc_153_28_ACDE40()
  loc_BC78FC: LitI2_Byte 0
  loc_BC78FE: LitVar_Missing var_D4
  loc_BC7901: LitI2_Byte &HFF
  loc_BC7903: FLdZeroAd var_B4
  loc_BC7906: CVarStr var_C4
  loc_BC7909: PopAdLdVar
  loc_BC790A: FMemLdRf 0
  loc_BC790F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7914: FFree1Str var_AC
  loc_BC7917: FFreeVar var_C4 = ""
  loc_BC791E: LitI2_Byte 0
  loc_BC7920: LitVar_Missing var_C4
  loc_BC7923: LitI2_Byte &HFF
  loc_BC7925: FMemLdR4 var_1A8(0)
  loc_BC792A: CR8Str
  loc_BC792C: FMemLdR4 var_1A8(4)
  loc_BC7931: CR8Str
  loc_BC7933: AddR8
  loc_BC7934: CVarR8
  loc_BC7938: PopAdLdVar
  loc_BC7939: FMemLdRf 0
  loc_BC793E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7943: FFree1Var var_C4 = ""
  loc_BC7946: FLdRfVar var_B4
  loc_BC7949: LitI2_Byte 0
  loc_BC794B: LitI2_Byte 0
  loc_BC794D: CUI1I2
  loc_BC794F: LitI2_Byte 9
  loc_BC7951: CStrUI1
  loc_BC7953: FStStrNoPop var_AC
  loc_BC7956: LitI2_Byte 7
  loc_BC7958: LitStr "Fuentes de Financiamiento ejecutado"
  loc_BC795B: Call Proc_153_28_ACDE40()
  loc_BC7960: LitI2_Byte 0
  loc_BC7962: LitVar_Missing var_D4
  loc_BC7965: LitI2_Byte &HFF
  loc_BC7967: FLdZeroAd var_B4
  loc_BC796A: CVarStr var_C4
  loc_BC796D: PopAdLdVar
  loc_BC796E: FMemLdRf 0
  loc_BC7973: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7978: FFree1Str var_AC
  loc_BC797B: FFreeVar var_C4 = ""
  loc_BC7982: LitI4 0
  loc_BC7987: FStR4 var_1A8
  loc_BC798A: FLdPr Me
  loc_BC798D: MemLdRfVar from_stack_1.global_292
  loc_BC7990: FStR4 var_1AC
  loc_BC7993: LitStr "Municipalidad de Guaymallén"
  loc_BC7996: LitStr "Municipalidad de La Paz"
  loc_BC7999: EqStr
  loc_BC799B: BranchF loc_BC7A76
  loc_BC799E: FLdRfVar var_B4
  loc_BC79A1: LitI2_Byte 0
  loc_BC79A3: LitI2_Byte 0
  loc_BC79A5: CUI1I2
  loc_BC79A7: LitI2_Byte 1
  loc_BC79A9: CStrUI1
  loc_BC79AB: FStStrNoPop var_AC
  loc_BC79AE: LitI2_Byte &H40
  loc_BC79B0: LitStr "Aplicaciones Financieras calculado"
  loc_BC79B3: Call Proc_153_28_ACDE40()
  loc_BC79B8: LitI2_Byte 0
  loc_BC79BA: LitVar_Missing var_D4
  loc_BC79BD: LitI2_Byte &HFF
  loc_BC79BF: FLdZeroAd var_B4
  loc_BC79C2: CVarStr var_C4
  loc_BC79C5: PopAdLdVar
  loc_BC79C6: FMemLdRf cmdPredeterminada_Click_95AAF8()
  loc_BC79CB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC79D0: FFree1Str var_AC
  loc_BC79D3: FFreeVar var_C4 = ""
  loc_BC79DA: FLdRfVar var_B4
  loc_BC79DD: LitI2_Byte 0
  loc_BC79DF: LitI2_Byte 0
  loc_BC79E1: CUI1I2
  loc_BC79E3: LitI2_Byte &HE
  loc_BC79E5: CStrUI1
  loc_BC79E7: FStStrNoPop var_AC
  loc_BC79EA: LitI2_Byte &H40
  loc_BC79EC: LitStr "Aplicaciones Financieras modificaciones"
  loc_BC79EF: Call Proc_153_28_ACDE40()
  loc_BC79F4: LitI2_Byte 0
  loc_BC79F6: LitVar_Missing var_D4
  loc_BC79F9: LitI2_Byte &HFF
  loc_BC79FB: FLdZeroAd var_B4
  loc_BC79FE: CVarStr var_C4
  loc_BC7A01: PopAdLdVar
  loc_BC7A02: FMemLdRf cmdPredeterminada_Click_95AAF8()
  loc_BC7A07: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7A0C: FFree1Str var_AC
  loc_BC7A0F: FFreeVar var_C4 = ""
  loc_BC7A16: LitI2_Byte 0
  loc_BC7A18: LitVar_Missing var_C4
  loc_BC7A1B: LitI2_Byte &HFF
  loc_BC7A1D: FMemLdR4 var_1AC(0)
  loc_BC7A22: CR8Str
  loc_BC7A24: FMemLdR4 var_1AC(4)
  loc_BC7A29: CR8Str
  loc_BC7A2B: AddR8
  loc_BC7A2C: CVarR8
  loc_BC7A30: PopAdLdVar
  loc_BC7A31: FMemLdRf cmdPredeterminada_Click_95AAF8()
  loc_BC7A36: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7A3B: FFree1Var var_C4 = ""
  loc_BC7A3E: FLdRfVar var_AC
  loc_BC7A41: LitI2_Byte &HFF
  loc_BC7A43: LitI2_Byte 0
  loc_BC7A45: CUI1I2
  loc_BC7A47: LitStr "2,24"
  loc_BC7A4A: LitI2_Byte &H40
  loc_BC7A4C: LitStr "Aplicaciones Financieras ejecutado"
  loc_BC7A4F: Call Proc_153_28_ACDE40()
  loc_BC7A54: LitI2_Byte 0
  loc_BC7A56: LitVar_Missing var_D4
  loc_BC7A59: LitI2_Byte &HFF
  loc_BC7A5B: FLdZeroAd var_AC
  loc_BC7A5E: CVarStr var_C4
  loc_BC7A61: PopAdLdVar
  loc_BC7A62: FMemLdRf cmdPredeterminada_Click_95AAF8()
  loc_BC7A67: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7A6C: FFreeVar var_C4 = ""
  loc_BC7A73: Branch loc_BC7B4B
  loc_BC7A76: FLdRfVar var_B4
  loc_BC7A79: LitI2_Byte 0
  loc_BC7A7B: LitI2_Byte 0
  loc_BC7A7D: CUI1I2
  loc_BC7A7F: LitI2_Byte 1
  loc_BC7A81: CStrUI1
  loc_BC7A83: FStStrNoPop var_AC
  loc_BC7A86: LitI2_Byte 8
  loc_BC7A88: LitStr "Aplicaciones Financieras calculado"
  loc_BC7A8B: Call Proc_153_28_ACDE40()
  loc_BC7A90: LitI2_Byte 0
  loc_BC7A92: LitVar_Missing var_D4
  loc_BC7A95: LitI2_Byte &HFF
  loc_BC7A97: FLdZeroAd var_B4
  loc_BC7A9A: CVarStr var_C4
  loc_BC7A9D: PopAdLdVar
  loc_BC7A9E: FMemLdRf cmdPredeterminada_Click_95AAF8()
  loc_BC7AA3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7AA8: FFree1Str var_AC
  loc_BC7AAB: FFreeVar var_C4 = ""
  loc_BC7AB2: FLdRfVar var_B4
  loc_BC7AB5: LitI2_Byte 0
  loc_BC7AB7: LitI2_Byte 0
  loc_BC7AB9: CUI1I2
  loc_BC7ABB: LitI2_Byte &HE
  loc_BC7ABD: CStrUI1
  loc_BC7ABF: FStStrNoPop var_AC
  loc_BC7AC2: LitI2_Byte 8
  loc_BC7AC4: LitStr "Aplicaciones Financieras modificaciones"
  loc_BC7AC7: Call Proc_153_28_ACDE40()
  loc_BC7ACC: LitI2_Byte 0
  loc_BC7ACE: LitVar_Missing var_D4
  loc_BC7AD1: LitI2_Byte &HFF
  loc_BC7AD3: FLdZeroAd var_B4
  loc_BC7AD6: CVarStr var_C4
  loc_BC7AD9: PopAdLdVar
  loc_BC7ADA: FMemLdRf cmdPredeterminada_Click_95AAF8()
  loc_BC7ADF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7AE4: FFree1Str var_AC
  loc_BC7AE7: FFreeVar var_C4 = ""
  loc_BC7AEE: LitI2_Byte 0
  loc_BC7AF0: LitVar_Missing var_C4
  loc_BC7AF3: LitI2_Byte &HFF
  loc_BC7AF5: FMemLdR4 var_1AC(0)
  loc_BC7AFA: CR8Str
  loc_BC7AFC: FMemLdR4 var_1AC(4)
  loc_BC7B01: CR8Str
  loc_BC7B03: AddR8
  loc_BC7B04: CVarR8
  loc_BC7B08: PopAdLdVar
  loc_BC7B09: FMemLdRf cmdPredeterminada_Click_95AAF8()
  loc_BC7B0E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7B13: FFree1Var var_C4 = ""
  loc_BC7B16: FLdRfVar var_AC
  loc_BC7B19: LitI2_Byte &HFF
  loc_BC7B1B: LitI2_Byte 0
  loc_BC7B1D: CUI1I2
  loc_BC7B1F: LitStr "2,24"
  loc_BC7B22: LitI2_Byte 8
  loc_BC7B24: LitStr "Aplicaciones Financieras ejecutado"
  loc_BC7B27: Call Proc_153_28_ACDE40()
  loc_BC7B2C: LitI2_Byte 0
  loc_BC7B2E: LitVar_Missing var_D4
  loc_BC7B31: LitI2_Byte &HFF
  loc_BC7B33: FLdZeroAd var_AC
  loc_BC7B36: CVarStr var_C4
  loc_BC7B39: PopAdLdVar
  loc_BC7B3A: FMemLdRf cmdPredeterminada_Click_95AAF8()
  loc_BC7B3F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7B44: FFreeVar var_C4 = ""
  loc_BC7B4B: LitI4 0
  loc_BC7B50: FStR4 var_1AC
  loc_BC7B53: LitI2_Byte 0
  loc_BC7B55: LitVar_Missing var_C4
  loc_BC7B58: LitI2_Byte &HFF
  loc_BC7B5A: FLdPr Me
  loc_BC7B5D: MemLdStr global_276
  loc_BC7B60: CR8Str
  loc_BC7B62: FLdPr Me
  loc_BC7B65: MemLdStr global_292
  loc_BC7B68: CR8Str
  loc_BC7B6A: SubR4
  loc_BC7B6B: CVarR8
  loc_BC7B6F: PopAdLdVar
  loc_BC7B70: FLdPr Me
  loc_BC7B73: MemLdRfVar from_stack_1.global_308
  loc_BC7B76: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7B7B: FFree1Var var_C4 = ""
  loc_BC7B7E: LitI2_Byte 0
  loc_BC7B80: LitVar_Missing var_C4
  loc_BC7B83: LitI2_Byte &HFF
  loc_BC7B85: FLdPr Me
  loc_BC7B88: MemLdStr global_280
  loc_BC7B8B: CR8Str
  loc_BC7B8D: FLdPr Me
  loc_BC7B90: MemLdStr global_296
  loc_BC7B93: CR8Str
  loc_BC7B95: SubR4
  loc_BC7B96: CVarR8
  loc_BC7B9A: PopAdLdVar
  loc_BC7B9B: FLdPr Me
  loc_BC7B9E: MemLdRfVar from_stack_1.global_312
  loc_BC7BA1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7BA6: FFree1Var var_C4 = ""
  loc_BC7BA9: LitI2_Byte 0
  loc_BC7BAB: LitVar_Missing var_C4
  loc_BC7BAE: LitI2_Byte &HFF
  loc_BC7BB0: FLdPr Me
  loc_BC7BB3: MemLdStr global_284
  loc_BC7BB6: CR8Str
  loc_BC7BB8: FLdPr Me
  loc_BC7BBB: MemLdStr global_300
  loc_BC7BBE: CR8Str
  loc_BC7BC0: SubR4
  loc_BC7BC1: CVarR8
  loc_BC7BC5: PopAdLdVar
  loc_BC7BC6: FLdPr Me
  loc_BC7BC9: MemLdRfVar from_stack_1.global_316
  loc_BC7BCC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7BD1: FFree1Var var_C4 = ""
  loc_BC7BD4: LitI2_Byte 0
  loc_BC7BD6: LitVar_Missing var_C4
  loc_BC7BD9: LitI2_Byte &HFF
  loc_BC7BDB: FLdPr Me
  loc_BC7BDE: MemLdStr global_288
  loc_BC7BE1: CR8Str
  loc_BC7BE3: FLdPr Me
  loc_BC7BE6: MemLdStr global_304
  loc_BC7BE9: CR8Str
  loc_BC7BEB: SubR4
  loc_BC7BEC: CVarR8
  loc_BC7BF0: PopAdLdVar
  loc_BC7BF1: FLdPr Me
  loc_BC7BF4: MemLdRfVar from_stack_1.global_320
  loc_BC7BF7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7BFC: FFree1Var var_C4 = ""
  loc_BC7BFF: LitI2_Byte 0
  loc_BC7C01: LitVar_Missing var_C4
  loc_BC7C04: LitI2_Byte &HFF
  loc_BC7C06: FLdPr Me
  loc_BC7C09: MemLdStr global_260
  loc_BC7C0C: CR8Str
  loc_BC7C0E: FLdPr Me
  loc_BC7C11: MemLdStr global_308
  loc_BC7C14: CR8Str
  loc_BC7C16: AddR8
  loc_BC7C17: CVarR8
  loc_BC7C1B: PopAdLdVar
  loc_BC7C1C: FLdPr Me
  loc_BC7C1F: MemLdRfVar from_stack_1.global_324
  loc_BC7C22: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7C27: FFree1Var var_C4 = ""
  loc_BC7C2A: LitI2_Byte 0
  loc_BC7C2C: LitVar_Missing var_C4
  loc_BC7C2F: LitI2_Byte &HFF
  loc_BC7C31: FLdPr Me
  loc_BC7C34: MemLdStr global_264
  loc_BC7C37: CR8Str
  loc_BC7C39: FLdPr Me
  loc_BC7C3C: MemLdStr global_312
  loc_BC7C3F: CR8Str
  loc_BC7C41: AddR8
  loc_BC7C42: CVarR8
  loc_BC7C46: PopAdLdVar
  loc_BC7C47: FLdPr Me
  loc_BC7C4A: MemLdRfVar from_stack_1.global_328
  loc_BC7C4D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7C52: FFree1Var var_C4 = ""
  loc_BC7C55: LitI2_Byte 0
  loc_BC7C57: LitVar_Missing var_C4
  loc_BC7C5A: LitI2_Byte &HFF
  loc_BC7C5C: FLdPr Me
  loc_BC7C5F: MemLdStr global_268
  loc_BC7C62: CR8Str
  loc_BC7C64: FLdPr Me
  loc_BC7C67: MemLdStr global_316
  loc_BC7C6A: CR8Str
  loc_BC7C6C: AddR8
  loc_BC7C6D: CVarR8
  loc_BC7C71: PopAdLdVar
  loc_BC7C72: FLdPr Me
  loc_BC7C75: MemLdRfVar from_stack_1.global_332
  loc_BC7C78: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7C7D: FFree1Var var_C4 = ""
  loc_BC7C80: LitI2_Byte 0
  loc_BC7C82: LitVar_Missing var_C4
  loc_BC7C85: LitI2_Byte &HFF
  loc_BC7C87: FLdPr Me
  loc_BC7C8A: MemLdStr global_272
  loc_BC7C8D: CR8Str
  loc_BC7C8F: FLdPr Me
  loc_BC7C92: MemLdStr global_320
  loc_BC7C95: CR8Str
  loc_BC7C97: AddR8
  loc_BC7C98: CVarR8
  loc_BC7C9C: PopAdLdVar
  loc_BC7C9D: FLdPr Me
  loc_BC7CA0: MemLdRfVar from_stack_1.global_336
  loc_BC7CA3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BC7CA8: FFree1Var var_C4 = ""
  loc_BC7CAB: FLdPr Me
  loc_BC7CAE: MemLdI2 global_340
  loc_BC7CB1: BranchF loc_BC7CBF
  loc_BC7CB4: LitI2_Byte &HFF
  loc_BC7CB6: FLdPr Me
  loc_BC7CB9: MemStI2 bGenerado
  loc_BC7CBC: Branch loc_BC7CCC
  loc_BC7CBF: LitI4 0
  loc_BC7CC4: LitStr "No existen registros para el criterio especificado."
  loc_BC7CC7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BC7CCC: LitI4 0
  loc_BC7CD1: CI2I4
  loc_BC7CD2: FLdPr Me
  loc_BC7CD5: Me.MousePointer = from_stack_1
  loc_BC7CDA: LitVarStr var_94, vbNullString
  loc_BC7CDF: PopAdLdVar
  loc_BC7CE0: FLdPr Me
  loc_BC7CE3: VCallAd Control_ID_statusBar
  loc_BC7CE6: FStAdFunc var_A8
  loc_BC7CE9: FLdPr var_A8
  loc_BC7CEC: LateIdSt
  loc_BC7CF1: FFree1Ad var_A8
  loc_BC7CF4: ExitProcHresult
  loc_BC7CF5: LitI4 0
  loc_BC7CFA: LitStr "Error "
  loc_BC7CFD: FLdRfVar var_1B0
  loc_BC7D00: ImpAdCallI2 Err 'rtcErrObj
  loc_BC7D05: FStAdFunc var_A8
  loc_BC7D08: FLdPr var_A8
  loc_BC7D0B:  = Err.Number
  loc_BC7D10: ILdRf var_1B0
  loc_BC7D13: CStrI4
  loc_BC7D15: FStStrNoPop var_AC
  loc_BC7D18: ConcatStr
  loc_BC7D19: FStStrNoPop var_B4
  loc_BC7D1C: LitStr ": "
  loc_BC7D1F: ConcatStr
  loc_BC7D20: FStStrNoPop var_12C
  loc_BC7D23: FLdRfVar var_128
  loc_BC7D26: ImpAdCallI2 Err 'rtcErrObj
  loc_BC7D2B: FStAdFunc var_B0
  loc_BC7D2E: FLdPr var_B0
  loc_BC7D31:  = Err.Description
  loc_BC7D36: ILdRf var_128
  loc_BC7D39: ConcatStr
  loc_BC7D3A: FStStrNoPop var_1B4
  loc_BC7D3D: LitStr vbCrLf
  loc_BC7D40: ConcatStr
  loc_BC7D41: FStStrNoPop var_1B8
  loc_BC7D44: LitStr "Verifique si ha generado el balance del mes solicitado..."
  loc_BC7D47: ConcatStr
  loc_BC7D48: FStStrNoPop var_1BC
  loc_BC7D4B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BC7D50: FFreeStr var_AC = "": var_B4 = "": var_12C = "": var_128 = "": var_1B4 = "": var_1B8 = ""
  loc_BC7D61: FFreeAd var_A8 = ""
  loc_BC7D68: ExitProcHresult
End Sub

Public Sub GeneraHTML() '9F1218
  'Data Table: 461414
  loc_9F10D4: FLdRfVar var_88
  loc_9F10D7: LitI2_Byte 0
  loc_9F10D9: LitI2_Byte &HFF
  loc_9F10DB: ImpAdLdI4 MemVar_C3D83C
  loc_9F10DE: FLdPr Me
  loc_9F10E1: MemLdRfVar from_stack_1.global_96
  loc_9F10E4: NewIfNullPr IFileSystem3
  loc_9F10E7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9F10EC: ILdRf var_88
  loc_9F10EF: FLdPr Me
  loc_9F10F2: MemStVarAd
  loc_9F10F6: FFree1Ad var_88
  loc_9F10F9: Call Proc_153_31_A6A830()
  loc_9F10FE: FLdPr Me
  loc_9F1101: MemLdRfVar from_stack_1.global_100
  loc_9F1104: LitStr "RECURSOS CORRIENTES"
  loc_9F1107: LitStr "I"
  loc_9F110A: Call Proc_153_30_9FC188()
  loc_9F110F: FLdPr Me
  loc_9F1112: MemLdRfVar from_stack_1.global_116
  loc_9F1115: LitStr "GASTOS CORRIENTES"
  loc_9F1118: LitStr "II"
  loc_9F111B: Call Proc_153_30_9FC188()
  loc_9F1120: FLdPr Me
  loc_9F1123: MemLdRfVar from_stack_1.global_132
  loc_9F1126: LitStr "RESULTADO ECONÓMICO: AHORRO/DESAHORRO (I-II)"
  loc_9F1129: LitStr "III"
  loc_9F112C: Call Proc_153_30_9FC188()
  loc_9F1131: FLdPr Me
  loc_9F1134: MemLdRfVar from_stack_1.global_148
  loc_9F1137: LitStr "RECURSOS DE CAPITAL"
  loc_9F113A: LitStr "IV"
  loc_9F113D: Call Proc_153_30_9FC188()
  loc_9F1142: FLdPr Me
  loc_9F1145: MemLdRfVar from_stack_1.global_164
  loc_9F1148: LitStr "GASTOS DE CAPITAL"
  loc_9F114B: LitStr "V"
  loc_9F114E: Call Proc_153_30_9FC188()
  loc_9F1153: FLdPr Me
  loc_9F1156: MemLdRfVar from_stack_1.global_180
  loc_9F1159: LitStr "TOTAL RECURSOS"
  loc_9F115C: LitStr "VI"
  loc_9F115F: Call Proc_153_30_9FC188()
  loc_9F1164: FLdPr Me
  loc_9F1167: MemLdRfVar from_stack_1.global_196
  loc_9F116A: LitStr "TOTAL GASTOS"
  loc_9F116D: LitStr "VII"
  loc_9F1170: Call Proc_153_30_9FC188()
  loc_9F1175: FLdPr Me
  loc_9F1178: MemLdRfVar from_stack_1.global_212
  loc_9F117B: LitStr "RESULTADO FINANCIERO"
  loc_9F117E: LitStr "VIII"
  loc_9F1181: Call Proc_153_30_9FC188()
  loc_9F1186: FLdPr Me
  loc_9F1189: MemLdRfVar from_stack_1.global_228
  loc_9F118C: LitStr "RECURSOS FIGURATIVOS"
  loc_9F118F: LitStr "IX"
  loc_9F1192: Call Proc_153_30_9FC188()
  loc_9F1197: FLdPr Me
  loc_9F119A: MemLdRfVar from_stack_1.global_244
  loc_9F119D: LitStr "GASTOS FIGURATIVOS"
  loc_9F11A0: LitStr "X"
  loc_9F11A3: Call Proc_153_30_9FC188()
  loc_9F11A8: FLdPr Me
  loc_9F11AB: MemLdRfVar from_stack_1.global_260
  loc_9F11AE: LitStr "NECESIDAD DE FINANCIAMIENTO"
  loc_9F11B1: LitStr "XI"
  loc_9F11B4: Call Proc_153_30_9FC188()
  loc_9F11B9: FLdPr Me
  loc_9F11BC: MemLdRfVar from_stack_1.global_276
  loc_9F11BF: LitStr "FUENTES DE FINANCIAMIENTO"
  loc_9F11C2: LitStr "XII"
  loc_9F11C5: Call Proc_153_30_9FC188()
  loc_9F11CA: FLdPr Me
  loc_9F11CD: MemLdRfVar from_stack_1.global_292
  loc_9F11D0: LitStr "APLICACIONES FINANCIERAS"
  loc_9F11D3: LitStr "XIII"
  loc_9F11D6: Call Proc_153_30_9FC188()
  loc_9F11DB: FLdPr Me
  loc_9F11DE: MemLdRfVar from_stack_1.global_308
  loc_9F11E1: LitStr "FINANCIAMIENTO NETO"
  loc_9F11E4: LitStr "XIV"
  loc_9F11E7: Call Proc_153_30_9FC188()
  loc_9F11EC: FLdPr Me
  loc_9F11EF: MemLdRfVar from_stack_1.global_324
  loc_9F11F2: LitStr "RESULTADO FINANCIERO"
  loc_9F11F5: LitStr "XV"
  loc_9F11F8: Call Proc_153_30_9FC188()
  loc_9F11FD: Call Proc_153_32_9EED6C()
  loc_9F1202: FLdPr Me
  loc_9F1205: MemLdRfVar from_stack_1.htmFile
  loc_9F1208: LdPrVar
  loc_9F120A: LateMemCall
  loc_9F1210: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9F1215: ExitProcHresult
  loc_9F1216: FStAdFunc var_6330
End Sub

Public Sub GeneraXLS() '94C564
  'Data Table: 461414
  loc_94C54C: LitI2_Byte 0
  loc_94C54E: FLdPr Me
  loc_94C551: MemStI2 bLogos
  loc_94C554: Call GeneraHTML()
  loc_94C559: LitI2_Byte &HFF
  loc_94C55B: FLdPr Me
  loc_94C55E: MemStI2 bLogos
  loc_94C561: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'A314C4
  'Data Table: 461414
  loc_A312D0: FLdRfVar var_90
  loc_A312D3: FLdPr Me
  loc_A312D6: VCallAd Control_ID_cboPeriodo
  loc_A312D9: FStAdFunc var_8C
  loc_A312DC: FLdPr var_8C
  loc_A312DF:  = Me.Text
  loc_A312E4: FLdZeroAd var_90
  loc_A312E7: FStStr var_88
  loc_A312EA: FFree1Ad var_8C
  loc_A312ED: FLdRfVar var_8C
  loc_A312F0: LitI2_Byte 0
  loc_A312F2: LitI2_Byte &HFF
  loc_A312F4: ImpAdLdI4 MemVar_C3D05C
  loc_A312F7: FLdPr Me
  loc_A312FA: MemLdRfVar from_stack_1.global_96
  loc_A312FD: NewIfNullPr IFileSystem3
  loc_A31300: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A31305: ILdRf var_8C
  loc_A31308: FLdPr Me
  loc_A3130B: MemStVarAd
  loc_A3130F: FFree1Ad var_8C
  loc_A31312: LitVarStr var_B0, "PeriodoPresenta|ExpID|Concepto|PresupuestoOriginal|Modificaciones|PresupuestoDefinitivo|Ejecutado"
  loc_A31317: LitI4 &HD
  loc_A3131C: FLdRfVar var_A0
  loc_A3131F: ImpAdCallFPR4  = Chr()
  loc_A31324: FLdRfVar var_A0
  loc_A31327: ConcatVar var_C0
  loc_A3132B: LitI4 &HA
  loc_A31330: FLdRfVar var_D0
  loc_A31333: ImpAdCallFPR4  = Chr()
  loc_A31338: FLdRfVar var_D0
  loc_A3133B: ConcatVar var_E0
  loc_A3133F: PopAdLdVar
  loc_A31340: FLdPr Me
  loc_A31343: MemLdRfVar from_stack_1.txtFile
  loc_A31346: LdPrVar
  loc_A31348: LateMemCall
  loc_A3134E: FFreeVar var_A0 = "": var_C0 = "": var_D0 = ""
  loc_A31359: LitStr "eee-2022-060204"
  loc_A3135C: ILdRf var_88
  loc_A3135F: FLdPr Me
  loc_A31362: MemLdRfVar from_stack_1.global_100
  loc_A31365: LitStr "RECURSOS CORRIENTES"
  loc_A31368: LitStr "I"
  loc_A3136B: Call Proc_153_29_9ED748()
  loc_A31370: LitStr "eee-2022-060204"
  loc_A31373: ILdRf var_88
  loc_A31376: FLdPr Me
  loc_A31379: MemLdRfVar from_stack_1.global_116
  loc_A3137C: LitStr "GASTOS CORRIENTES"
  loc_A3137F: LitStr "II"
  loc_A31382: Call Proc_153_29_9ED748()
  loc_A31387: LitStr "eee-2022-060204"
  loc_A3138A: ILdRf var_88
  loc_A3138D: FLdPr Me
  loc_A31390: MemLdRfVar from_stack_1.global_132
  loc_A31393: LitStr "RESULTADO ECONÓMICO: AHORRO/DESAHORRO (I-II)"
  loc_A31396: LitStr "III"
  loc_A31399: Call Proc_153_29_9ED748()
  loc_A3139E: LitStr "eee-2022-060204"
  loc_A313A1: ILdRf var_88
  loc_A313A4: FLdPr Me
  loc_A313A7: MemLdRfVar from_stack_1.global_148
  loc_A313AA: LitStr "RECURSOS DE CAPITAL"
  loc_A313AD: LitStr "IV"
  loc_A313B0: Call Proc_153_29_9ED748()
  loc_A313B5: LitStr "eee-2022-060204"
  loc_A313B8: ILdRf var_88
  loc_A313BB: FLdPr Me
  loc_A313BE: MemLdRfVar from_stack_1.global_164
  loc_A313C1: LitStr "GASTOS DE CAPITAL"
  loc_A313C4: LitStr "V"
  loc_A313C7: Call Proc_153_29_9ED748()
  loc_A313CC: LitStr "eee-2022-060204"
  loc_A313CF: ILdRf var_88
  loc_A313D2: FLdPr Me
  loc_A313D5: MemLdRfVar from_stack_1.global_180
  loc_A313D8: LitStr "TOTAL RECURSOS"
  loc_A313DB: LitStr "VI"
  loc_A313DE: Call Proc_153_29_9ED748()
  loc_A313E3: LitStr "eee-2022-060204"
  loc_A313E6: ILdRf var_88
  loc_A313E9: FLdPr Me
  loc_A313EC: MemLdRfVar from_stack_1.global_196
  loc_A313EF: LitStr "TOTAL GASTOS"
  loc_A313F2: LitStr "VII"
  loc_A313F5: Call Proc_153_29_9ED748()
  loc_A313FA: LitStr "eee-2022-060204"
  loc_A313FD: ILdRf var_88
  loc_A31400: FLdPr Me
  loc_A31403: MemLdRfVar from_stack_1.global_212
  loc_A31406: LitStr "RESULTADO FINANCIERO"
  loc_A31409: LitStr "VIII"
  loc_A3140C: Call Proc_153_29_9ED748()
  loc_A31411: LitStr "eee-2022-060204"
  loc_A31414: ILdRf var_88
  loc_A31417: FLdPr Me
  loc_A3141A: MemLdRfVar from_stack_1.global_228
  loc_A3141D: LitStr "RECURSOS FIGURATIVOS"
  loc_A31420: LitStr "IX"
  loc_A31423: Call Proc_153_29_9ED748()
  loc_A31428: LitStr "eee-2022-060204"
  loc_A3142B: ILdRf var_88
  loc_A3142E: FLdPr Me
  loc_A31431: MemLdRfVar from_stack_1.global_244
  loc_A31434: LitStr "GASTOS FIGURATIVOS"
  loc_A31437: LitStr "X"
  loc_A3143A: Call Proc_153_29_9ED748()
  loc_A3143F: LitStr "eee-2022-060204"
  loc_A31442: ILdRf var_88
  loc_A31445: FLdPr Me
  loc_A31448: MemLdRfVar from_stack_1.global_260
  loc_A3144B: LitStr "NECESIDAD DE FINANCIAMIENTO"
  loc_A3144E: LitStr "XI"
  loc_A31451: Call Proc_153_29_9ED748()
  loc_A31456: LitStr "eee-2022-060204"
  loc_A31459: ILdRf var_88
  loc_A3145C: FLdPr Me
  loc_A3145F: MemLdRfVar from_stack_1.global_276
  loc_A31462: LitStr "FUENTES DE FINANCIAMIENTO"
  loc_A31465: LitStr "XII"
  loc_A31468: Call Proc_153_29_9ED748()
  loc_A3146D: LitStr "eee-2022-060204"
  loc_A31470: ILdRf var_88
  loc_A31473: FLdPr Me
  loc_A31476: MemLdRfVar from_stack_1.global_292
  loc_A31479: LitStr "APLICACIONES FINANCIERAS"
  loc_A3147C: LitStr "XIII"
  loc_A3147F: Call Proc_153_29_9ED748()
  loc_A31484: LitStr "eee-2022-060204"
  loc_A31487: ILdRf var_88
  loc_A3148A: FLdPr Me
  loc_A3148D: MemLdRfVar from_stack_1.global_308
  loc_A31490: LitStr "FINANCIAMIENTO NETO"
  loc_A31493: LitStr "XIV"
  loc_A31496: Call Proc_153_29_9ED748()
  loc_A3149B: LitStr "eee-2022-060204"
  loc_A3149E: ILdRf var_88
  loc_A314A1: FLdPr Me
  loc_A314A4: MemLdRfVar from_stack_1.global_324
  loc_A314A7: LitStr "RESULTADO FINANCIERO"
  loc_A314AA: LitStr "XV"
  loc_A314AD: Call Proc_153_29_9ED748()
  loc_A314B2: FLdPr Me
  loc_A314B5: MemLdRfVar from_stack_1.txtFile
  loc_A314B8: LdPrVar
  loc_A314BA: LateMemCall
  loc_A314C0: ExitProcHresult
End Sub

Private Function Proc_153_28_ACDE40(arg_C, arg_10, arg_14) 'ACDE40
  'Data Table: 461414
  loc_ACD878: ILdRf arg_C
  loc_ACD87B: FStStrCopy var_8C
  loc_ACD87E: ILdRf arg_14
  loc_ACD881: FStStrCopy var_90
  loc_ACD884: ZeroRetVal
  loc_ACD886: LitVarStr var_DC, "Sum(HabeMoas-DebeMoas)"
  loc_ACD88B: FStVarCopyObj var_EC
  loc_ACD88E: FLdRfVar var_EC
  loc_ACD891: LitVarStr var_BC, "Sum(DebeMoas-HabeMoas)"
  loc_ACD896: FStVarCopyObj var_CC
  loc_ACD899: FLdRfVar var_CC
  loc_ACD89C: FLdRfVar arg_1C
  loc_ACD89F: CVarRef
  loc_ACD8A4: FLdRfVar var_FC
  loc_ACD8A7: ImpAdCallFPR4  = IIf(, , )
  loc_ACD8AC: FLdRfVar var_FC
  loc_ACD8AF: CStrVarTmp
  loc_ACD8B0: FStStr var_94
  loc_ACD8B3: FFreeVar var_CC = "": var_EC = ""
  loc_ACD8BC: ILdRf var_90
  loc_ACD8BF: LitStr vbNullString
  loc_ACD8C2: NeStr
  loc_ACD8C4: BranchF loc_ACD8DB
  loc_ACD8C7: LitStr " AND CodiTias IN ("
  loc_ACD8CA: ILdRf var_90
  loc_ACD8CD: ConcatStr
  loc_ACD8CE: FStStrNoPop var_100
  loc_ACD8D1: LitStr ")"
  loc_ACD8D4: ConcatStr
  loc_ACD8D5: FStStr var_98
  loc_ACD8D8: FFree1Str var_100
  loc_ACD8DB: FLdUI1
  loc_ACD8DF: FStUI1 var_102
  loc_ACD8E3: FLdUI1
  loc_ACD8E7: LitI2_Byte 0
  loc_ACD8E9: CUI1I2
  loc_ACD8EB: EqI2
  loc_ACD8EC: BranchF loc_ACD8F8
  loc_ACD8EF: LitStr vbNullString
  loc_ACD8F2: FStStrCopy var_9C
  loc_ACD8F5: Branch loc_ACD91F
  loc_ACD8F8: FLdUI1
  loc_ACD8FC: LitI2_Byte 1
  loc_ACD8FE: CUI1I2
  loc_ACD900: EqI2
  loc_ACD901: BranchF loc_ACD90D
  loc_ACD904: LitStr " AND moviasiento.CodiCuco NOT LIKE '2" & Chr(37) & "'"
  loc_ACD907: FStStrCopy var_9C
  loc_ACD90A: Branch loc_ACD91F
  loc_ACD90D: FLdUI1
  loc_ACD911: LitI2_Byte 2
  loc_ACD913: CUI1I2
  loc_ACD915: EqI2
  loc_ACD916: BranchF loc_ACD91F
  loc_ACD919: LitStr " AND moviasiento.CodiCuco LIKE '2" & Chr(37) & "'"
  loc_ACD91C: FStStrCopy var_9C
  loc_ACD91F: FLdPr Me
  loc_ACD922: MemLdRfVar from_stack_1.global_92
  loc_ACD925: NewIfNullAd
  loc_ACD928: FStAd var_108 
  loc_ACD92C: LitStr "Municipalidad de Guaymallén"
  loc_ACD92F: LitStr "Municipalidad de Guaymallén"
  loc_ACD932: EqStr
  loc_ACD934: BranchF loc_ACDC2E
  loc_ACD937: ILdRf var_8C
  loc_ACD93A: FStStrCopy var_10C
  loc_ACD93D: ILdRf var_10C
  loc_ACD940: LitStr "Recursos Corrientes ejecutado"
  loc_ACD943: EqStr
  loc_ACD945: BranchT loc_ACD969
  loc_ACD948: ILdRf var_10C
  loc_ACD94B: LitStr "Recursos de Capital ejecutado"
  loc_ACD94E: EqStr
  loc_ACD950: BranchT loc_ACD969
  loc_ACD953: ILdRf var_10C
  loc_ACD956: LitStr "Recursos Figurativos ejecutado"
  loc_ACD959: EqStr
  loc_ACD95B: BranchT loc_ACD969
  loc_ACD95E: ILdRf var_10C
  loc_ACD961: LitStr "Fuentes de Financiamiento ejecutado"
  loc_ACD964: EqStr
  loc_ACD966: BranchF loc_ACDA59
  loc_ACD969: LitStr "SELECT IFNULL( SUM(SaldMoas),0 ) SaldMoas"
  loc_ACD96C: LitStr " FROM ("
  loc_ACD96F: ConcatStr
  loc_ACD970: FStStrNoPop var_100
  loc_ACD973: LitStr " SELECT "
  loc_ACD976: ConcatStr
  loc_ACD977: FStStrNoPop var_110
  loc_ACD97A: ILdRf var_94
  loc_ACD97D: ConcatStr
  loc_ACD97E: FStStrNoPop var_114
  loc_ACD981: LitStr " SaldMoas"
  loc_ACD984: ConcatStr
  loc_ACD985: FStStrNoPop var_118
  loc_ACD988: LitStr " From asiento"
  loc_ACD98B: ConcatStr
  loc_ACD98C: FStStrNoPop var_11C
  loc_ACD98F: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_ACD992: ConcatStr
  loc_ACD993: FStStrNoPop var_120
  loc_ACD996: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = moviasiento.PeriInfo AND cc.CodiCuco = moviasiento.CodiCuco"
  loc_ACD999: ConcatStr
  loc_ACD99A: FStStrNoPop var_124
  loc_ACD99D: LitStr " AND cc.CodiCuco NOT LIKE '8" & Chr(37) & "'"
  loc_ACD9A0: ConcatStr
  loc_ACD9A1: FStStrNoPop var_128
  loc_ACD9A4: LitStr " INNER JOIN paraconta p ON p.PeriInfo = asiento.PeriInfo"
  loc_ACD9A7: ConcatStr
  loc_ACD9A8: FStStrNoPop var_12C
  loc_ACD9AB: LitStr " AND p.CarePaco <> moviasiento.CodiCuco"
  loc_ACD9AE: ConcatStr
  loc_ACD9AF: FStStrNoPop var_130
  loc_ACD9B2: LitStr " AND p.CajaPaco <> moviasiento.CodiCuco"
  loc_ACD9B5: ConcatStr
  loc_ACD9B6: FStStrNoPop var_134
  loc_ACD9B9: LitStr " Where asiento.PeriInfo = 2018"
  loc_ACD9BC: ConcatStr
  loc_ACD9BD: FStStrNoPop var_138
  loc_ACD9C0: LitStr " AND FechAsie >= '2018-01-01'"
  loc_ACD9C3: ConcatStr
  loc_ACD9C4: FStStrNoPop var_13C
  loc_ACD9C7: LitStr " AND FechAsie <= '2018-12-31'"
  loc_ACD9CA: ConcatStr
  loc_ACD9CB: FStStrNoPop var_140
  loc_ACD9CE: LitStr " AND (CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "')"
  loc_ACD9D1: ConcatStr
  loc_ACD9D2: FStStrNoPop var_144
  loc_ACD9D5: LitStr " AND (CodiTias = 9 OR CodiTias = 6 or CodiTias = 56)"
  loc_ACD9D8: ConcatStr
  loc_ACD9D9: FStStrNoPop var_148
  loc_ACD9DC: LitStr " AND CodiTicu LIKE '"
  loc_ACD9DF: ConcatStr
  loc_ACD9E0: FStStrNoPop var_14C
  loc_ACD9E3: FLdI2 arg_10
  loc_ACD9E6: CStrUI1
  loc_ACD9E8: FStStrNoPop var_150
  loc_ACD9EB: ConcatStr
  loc_ACD9EC: FStStrNoPop var_154
  loc_ACD9EF: LitStr Chr(37) & "' "
  loc_ACD9F2: ConcatStr
  loc_ACD9F3: FStStrNoPop var_158
  loc_ACD9F6: ILdRf var_9C
  loc_ACD9F9: ConcatStr
  loc_ACD9FA: FStStrNoPop var_15C
  loc_ACD9FD: LitStr " GROUP BY moviasiento.CodiCuco"
  loc_ACDA00: ConcatStr
  loc_ACDA01: FStStrNoPop var_160
  loc_ACDA04: LitStr " HAVING SaldMoas != 0"
  loc_ACDA07: ConcatStr
  loc_ACDA08: FStStrNoPop var_164
  loc_ACDA0B: LitStr " ORDER BY cc.CodiTicu, moviasiento.CodiCuco"
  loc_ACDA0E: ConcatStr
  loc_ACDA0F: FStStrNoPop var_168
  loc_ACDA12: LitStr " ) AS tbl;"
  loc_ACDA15: ConcatStr
  loc_ACDA16: FStStrNoPop var_16C
  loc_ACDA19: FLdPr var_108
  loc_ACDA1C: Call clsbase.RedefineRS(from_stack_1v)
  loc_ACDA21: FFreeStr var_100 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = ""
  loc_ACDA56: Branch loc_ACDC2B
  loc_ACDA59: ILdRf var_10C
  loc_ACDA5C: LitStr "Gastos Corrientes ejecutado"
  loc_ACDA5F: EqStr
  loc_ACDA61: BranchT loc_ACDA85
  loc_ACDA64: ILdRf var_10C
  loc_ACDA67: LitStr "Gastos de Capital ejecutado"
  loc_ACDA6A: EqStr
  loc_ACDA6C: BranchT loc_ACDA85
  loc_ACDA6F: ILdRf var_10C
  loc_ACDA72: LitStr "Gastos Figurativos ejecutado"
  loc_ACDA75: EqStr
  loc_ACDA77: BranchT loc_ACDA85
  loc_ACDA7A: ILdRf var_10C
  loc_ACDA7D: LitStr "Aplicaciones Financieras ejecutado"
  loc_ACDA80: EqStr
  loc_ACDA82: BranchF loc_ACDB6C
  loc_ACDA85: LitStr "SELECT IFNULL( SUM(SaldMoas),0 ) SaldMoas"
  loc_ACDA88: LitStr " FROM ("
  loc_ACDA8B: ConcatStr
  loc_ACDA8C: FStStrNoPop var_100
  loc_ACDA8F: LitStr " SELECT "
  loc_ACDA92: ConcatStr
  loc_ACDA93: FStStrNoPop var_110
  loc_ACDA96: ILdRf var_94
  loc_ACDA99: ConcatStr
  loc_ACDA9A: FStStrNoPop var_114
  loc_ACDA9D: LitStr " SaldMoas"
  loc_ACDAA0: ConcatStr
  loc_ACDAA1: FStStrNoPop var_118
  loc_ACDAA4: LitStr " From asiento"
  loc_ACDAA7: ConcatStr
  loc_ACDAA8: FStStrNoPop var_11C
  loc_ACDAAB: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_ACDAAE: ConcatStr
  loc_ACDAAF: FStStrNoPop var_120
  loc_ACDAB2: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = moviasiento.PeriInfo AND cc.CodiCuco = moviasiento.CodiCuco"
  loc_ACDAB5: ConcatStr
  loc_ACDAB6: FStStrNoPop var_124
  loc_ACDAB9: LitStr " AND cc.CodiCuco NOT LIKE '8" & Chr(37) & "'"
  loc_ACDABC: ConcatStr
  loc_ACDABD: FStStrNoPop var_128
  loc_ACDAC0: LitStr " INNER JOIN paraconta p ON p.PeriInfo = asiento.PeriInfo"
  loc_ACDAC3: ConcatStr
  loc_ACDAC4: FStStrNoPop var_12C
  loc_ACDAC7: LitStr " AND p.CarePaco <> moviasiento.CodiCuco"
  loc_ACDACA: ConcatStr
  loc_ACDACB: FStStrNoPop var_130
  loc_ACDACE: LitStr " AND p.CajaPaco <> moviasiento.CodiCuco"
  loc_ACDAD1: ConcatStr
  loc_ACDAD2: FStStrNoPop var_134
  loc_ACDAD5: LitStr " Where asiento.PeriInfo = 2018"
  loc_ACDAD8: ConcatStr
  loc_ACDAD9: FStStrNoPop var_138
  loc_ACDADC: LitStr " AND FechAsie >= '2018-01-01'"
  loc_ACDADF: ConcatStr
  loc_ACDAE0: FStStrNoPop var_13C
  loc_ACDAE3: LitStr " AND FechAsie <= '2018-12-31'"
  loc_ACDAE6: ConcatStr
  loc_ACDAE7: FStStrNoPop var_140
  loc_ACDAEA: LitStr " AND (CodiTias = 6 or CodiTias = 24)"
  loc_ACDAED: ConcatStr
  loc_ACDAEE: FStStrNoPop var_144
  loc_ACDAF1: LitStr " AND CodiTicu LIKE '"
  loc_ACDAF4: ConcatStr
  loc_ACDAF5: FStStrNoPop var_148
  loc_ACDAF8: FLdI2 arg_10
  loc_ACDAFB: CStrUI1
  loc_ACDAFD: FStStrNoPop var_14C
  loc_ACDB00: ConcatStr
  loc_ACDB01: FStStrNoPop var_150
  loc_ACDB04: LitStr Chr(37) & "' "
  loc_ACDB07: ConcatStr
  loc_ACDB08: FStStrNoPop var_154
  loc_ACDB0B: ILdRf var_9C
  loc_ACDB0E: ConcatStr
  loc_ACDB0F: FStStrNoPop var_158
  loc_ACDB12: LitStr " GROUP BY moviasiento.CodiCuco"
  loc_ACDB15: ConcatStr
  loc_ACDB16: FStStrNoPop var_15C
  loc_ACDB19: LitStr " HAVING SaldMoas != 0"
  loc_ACDB1C: ConcatStr
  loc_ACDB1D: FStStrNoPop var_160
  loc_ACDB20: LitStr " ORDER BY cc.CodiTicu, moviasiento.CodiCuco"
  loc_ACDB23: ConcatStr
  loc_ACDB24: FStStrNoPop var_164
  loc_ACDB27: LitStr " ) AS tbl;"
  loc_ACDB2A: ConcatStr
  loc_ACDB2B: FStStrNoPop var_168
  loc_ACDB2E: FLdPr var_108
  loc_ACDB31: Call clsbase.RedefineRS(from_stack_1v)
  loc_ACDB36: FFreeStr var_100 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_ACDB69: Branch loc_ACDC2B
  loc_ACDB6C: LitStr "SELECT "
  loc_ACDB6F: ILdRf var_94
  loc_ACDB72: ConcatStr
  loc_ACDB73: FStStrNoPop var_100
  loc_ACDB76: LitStr " SaldMoas"
  loc_ACDB79: ConcatStr
  loc_ACDB7A: FStStrNoPop var_110
  loc_ACDB7D: LitStr " FROM asiento"
  loc_ACDB80: ConcatStr
  loc_ACDB81: FStStrNoPop var_114
  loc_ACDB84: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_ACDB87: ConcatStr
  loc_ACDB88: FStStrNoPop var_118
  loc_ACDB8B: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = moviasiento.PeriInfo AND infogov.cuentacontable.CodiCuco = moviasiento.CodiCuco"
  loc_ACDB8E: ConcatStr
  loc_ACDB8F: FStStrNoPop var_11C
  loc_ACDB92: LitStr " WHERE moviasiento.PeriInfo = "
  loc_ACDB95: ConcatStr
  loc_ACDB96: FStStrNoPop var_124
  loc_ACDB99: FLdRfVar var_120
  loc_ACDB9C: FLdPr Me
  loc_ACDB9F: VCallAd Control_ID_cboPeriodo
  loc_ACDBA2: FStAdFunc var_170
  loc_ACDBA5: FLdPr var_170
  loc_ACDBA8:  = Me.Text
  loc_ACDBAD: ILdRf var_120
  loc_ACDBB0: ConcatStr
  loc_ACDBB1: FStStrNoPop var_128
  loc_ACDBB4: LitStr " /* AND Month(FechAsie) <= "
  loc_ACDBB7: ConcatStr
  loc_ACDBB8: FStStrNoPop var_12C
  loc_ACDBBB: FLdPr Me
  loc_ACDBBE: MemLdI2 global_348
  loc_ACDBC1: CStrUI1
  loc_ACDBC3: FStStrNoPop var_130
  loc_ACDBC6: ConcatStr
  loc_ACDBC7: FStStrNoPop var_134
  loc_ACDBCA: LitStr " */ AND CodiTicu LIKE '"
  loc_ACDBCD: ConcatStr
  loc_ACDBCE: FStStrNoPop var_138
  loc_ACDBD1: FLdI2 arg_10
  loc_ACDBD4: CStrUI1
  loc_ACDBD6: FStStrNoPop var_13C
  loc_ACDBD9: ConcatStr
  loc_ACDBDA: FStStrNoPop var_140
  loc_ACDBDD: LitStr Chr(37) & "' "
  loc_ACDBE0: ConcatStr
  loc_ACDBE1: FStStrNoPop var_144
  loc_ACDBE4: ILdRf var_98
  loc_ACDBE7: ConcatStr
  loc_ACDBE8: FStStrNoPop var_148
  loc_ACDBEB: ILdRf var_9C
  loc_ACDBEE: ConcatStr
  loc_ACDBEF: FStStrNoPop var_14C
  loc_ACDBF2: LitStr " GROUP BY moviasiento.PeriInfo;"
  loc_ACDBF5: ConcatStr
  loc_ACDBF6: FStStrNoPop var_150
  loc_ACDBF9: FLdPr var_108
  loc_ACDBFC: Call clsbase.RedefineRS(from_stack_1v)
  loc_ACDC01: FFreeStr var_100 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_124 = "": var_120 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_ACDC28: FFree1Ad var_170
  loc_ACDC2B: Branch loc_ACDDC3
  loc_ACDC2E: LitStr "Municipalidad de Guaymallén"
  loc_ACDC31: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_ACDC34: EqStr
  loc_ACDC36: BranchF loc_ACDD04
  loc_ACDC39: LitStr "SELECT "
  loc_ACDC3C: ILdRf var_94
  loc_ACDC3F: ConcatStr
  loc_ACDC40: FStStrNoPop var_100
  loc_ACDC43: LitStr " SaldMoas"
  loc_ACDC46: ConcatStr
  loc_ACDC47: FStStrNoPop var_110
  loc_ACDC4A: LitStr " FROM asiento"
  loc_ACDC4D: ConcatStr
  loc_ACDC4E: FStStrNoPop var_114
  loc_ACDC51: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_ACDC54: ConcatStr
  loc_ACDC55: FStStrNoPop var_118
  loc_ACDC58: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = moviasiento.PeriInfo AND cc.CodiCuco = moviasiento.CodiCuco"
  loc_ACDC5B: ConcatStr
  loc_ACDC5C: FStStrNoPop var_11C
  loc_ACDC5F: LitStr " AND cc.CodiCuco != '6311200000' AND cc.CodiCuco != '6310400000'"
  loc_ACDC62: ConcatStr
  loc_ACDC63: FStStrNoPop var_120
  loc_ACDC66: LitStr " WHERE moviasiento.PeriInfo = "
  loc_ACDC69: ConcatStr
  loc_ACDC6A: FStStrNoPop var_128
  loc_ACDC6D: FLdRfVar var_124
  loc_ACDC70: FLdPr Me
  loc_ACDC73: VCallAd Control_ID_cboPeriodo
  loc_ACDC76: FStAdFunc var_170
  loc_ACDC79: FLdPr var_170
  loc_ACDC7C:  = Me.Text
  loc_ACDC81: ILdRf var_124
  loc_ACDC84: ConcatStr
  loc_ACDC85: FStStrNoPop var_12C
  loc_ACDC88: LitStr " /* AND Month(FechAsie) <= "
  loc_ACDC8B: ConcatStr
  loc_ACDC8C: FStStrNoPop var_130
  loc_ACDC8F: FLdPr Me
  loc_ACDC92: MemLdI2 global_348
  loc_ACDC95: CStrUI1
  loc_ACDC97: FStStrNoPop var_134
  loc_ACDC9A: ConcatStr
  loc_ACDC9B: FStStrNoPop var_138
  loc_ACDC9E: LitStr " */ AND CodiTicu LIKE '"
  loc_ACDCA1: ConcatStr
  loc_ACDCA2: FStStrNoPop var_13C
  loc_ACDCA5: FLdI2 arg_10
  loc_ACDCA8: CStrUI1
  loc_ACDCAA: FStStrNoPop var_140
  loc_ACDCAD: ConcatStr
  loc_ACDCAE: FStStrNoPop var_144
  loc_ACDCB1: LitStr Chr(37) & "' "
  loc_ACDCB4: ConcatStr
  loc_ACDCB5: FStStrNoPop var_148
  loc_ACDCB8: ILdRf var_98
  loc_ACDCBB: ConcatStr
  loc_ACDCBC: FStStrNoPop var_14C
  loc_ACDCBF: ILdRf var_9C
  loc_ACDCC2: ConcatStr
  loc_ACDCC3: FStStrNoPop var_150
  loc_ACDCC6: LitStr " GROUP BY moviasiento.PeriInfo;"
  loc_ACDCC9: ConcatStr
  loc_ACDCCA: FStStrNoPop var_154
  loc_ACDCCD: FLdPr var_108
  loc_ACDCD0: Call clsbase.RedefineRS(from_stack_1v)
  loc_ACDCD5: FFreeStr var_100 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_ACDCFE: FFree1Ad var_170
  loc_ACDD01: Branch loc_ACDDC3
  loc_ACDD04: LitStr "SELECT "
  loc_ACDD07: ILdRf var_94
  loc_ACDD0A: ConcatStr
  loc_ACDD0B: FStStrNoPop var_100
  loc_ACDD0E: LitStr " SaldMoas"
  loc_ACDD11: ConcatStr
  loc_ACDD12: FStStrNoPop var_110
  loc_ACDD15: LitStr " FROM asiento"
  loc_ACDD18: ConcatStr
  loc_ACDD19: FStStrNoPop var_114
  loc_ACDD1C: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_ACDD1F: ConcatStr
  loc_ACDD20: FStStrNoPop var_118
  loc_ACDD23: LitStr " INNER JOIN infogov.cuentacontable ON infogov.cuentacontable.PeriInfo = moviasiento.PeriInfo AND infogov.cuentacontable.CodiCuco = moviasiento.CodiCuco"
  loc_ACDD26: ConcatStr
  loc_ACDD27: FStStrNoPop var_11C
  loc_ACDD2A: LitStr " WHERE moviasiento.PeriInfo = "
  loc_ACDD2D: ConcatStr
  loc_ACDD2E: FStStrNoPop var_124
  loc_ACDD31: FLdRfVar var_120
  loc_ACDD34: FLdPr Me
  loc_ACDD37: VCallAd Control_ID_cboPeriodo
  loc_ACDD3A: FStAdFunc var_170
  loc_ACDD3D: FLdPr var_170
  loc_ACDD40:  = Me.Text
  loc_ACDD45: ILdRf var_120
  loc_ACDD48: ConcatStr
  loc_ACDD49: FStStrNoPop var_128
  loc_ACDD4C: LitStr " /* AND Month(FechAsie) <= "
  loc_ACDD4F: ConcatStr
  loc_ACDD50: FStStrNoPop var_12C
  loc_ACDD53: FLdPr Me
  loc_ACDD56: MemLdI2 global_348
  loc_ACDD59: CStrUI1
  loc_ACDD5B: FStStrNoPop var_130
  loc_ACDD5E: ConcatStr
  loc_ACDD5F: FStStrNoPop var_134
  loc_ACDD62: LitStr " */ AND CodiTicu LIKE '"
  loc_ACDD65: ConcatStr
  loc_ACDD66: FStStrNoPop var_138
  loc_ACDD69: FLdI2 arg_10
  loc_ACDD6C: CStrUI1
  loc_ACDD6E: FStStrNoPop var_13C
  loc_ACDD71: ConcatStr
  loc_ACDD72: FStStrNoPop var_140
  loc_ACDD75: LitStr Chr(37) & "' "
  loc_ACDD78: ConcatStr
  loc_ACDD79: FStStrNoPop var_144
  loc_ACDD7C: ILdRf var_98
  loc_ACDD7F: ConcatStr
  loc_ACDD80: FStStrNoPop var_148
  loc_ACDD83: ILdRf var_9C
  loc_ACDD86: ConcatStr
  loc_ACDD87: FStStrNoPop var_14C
  loc_ACDD8A: LitStr " GROUP BY moviasiento.PeriInfo;"
  loc_ACDD8D: ConcatStr
  loc_ACDD8E: FStStrNoPop var_150
  loc_ACDD91: FLdPr var_108
  loc_ACDD94: Call clsbase.RedefineRS(from_stack_1v)
  loc_ACDD99: FFreeStr var_100 = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_124 = "": var_120 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_ACDDC0: FFree1Ad var_170
  loc_ACDDC3: FLdRfVar var_174
  loc_ACDDC6: FLdPr var_108
  loc_ACDDC9: from_stack_1 = clsbase.RecordCount
  loc_ACDDCE: ILdRf var_174
  loc_ACDDD1: LitI4 0
  loc_ACDDD6: GtI4
  loc_ACDDD7: BranchF loc_ACDE2A
  loc_ACDDDA: FLdRfVar var_CC
  loc_ACDDDD: FLdRfVar var_17C
  loc_ACDDE0: LitVarStr var_AC, "SaldMoas"
  loc_ACDDE5: PopAdLdVar
  loc_ACDDE6: FLdRfVar var_178
  loc_ACDDE9: FLdRfVar var_170
  loc_ACDDEC: FLdPr var_108
  loc_ACDDEF: from_stack_1v = clsbase.RsFrmGet()
  loc_ACDDF4: FLdPr var_170
  loc_ACDDF7:  = Me.Fields
  loc_ACDDFC: FLdPr var_178
  loc_ACDDFF: from_stack_2 = Me.Item(from_stack_1)
  loc_ACDE04: FLdPr var_17C
  loc_ACDE07:  = Me.Value
  loc_ACDE0C: FLdRfVar var_CC
  loc_ACDE0F: CStrVarTmp
  loc_ACDE10: FStStr var_88
  loc_ACDE13: FFreeAd var_170 = "": var_178 = ""
  loc_ACDE1C: FFree1Var var_CC = ""
  loc_ACDE1F: LitI2_Byte &HFF
  loc_ACDE21: FLdPr Me
  loc_ACDE24: MemStI2 global_340
  loc_ACDE27: Branch loc_ACDE31
  loc_ACDE2A: LitI2_Byte 0
  loc_ACDE2C: CStrUI1
  loc_ACDE2E: FStStr var_88
  loc_ACDE31: LitNothing
  loc_ACDE33: FStAd var_108 
  loc_ACDE37: ExitProcCbHresult
  loc_ACDE3D: SetLastSystemError
End Function

Private Function Proc_153_29_9ED748(arg_C, arg_10, arg_14, arg_18, arg_1C) '9ED748
  'Data Table: 461414
  loc_9ED65C: ILdRf arg_C
  loc_9ED65F: FStStrCopy var_88
  loc_9ED662: ILdRf arg_10
  loc_9ED665: FStStrCopy var_8C
  loc_9ED668: ILdRf arg_18
  loc_9ED66B: FStStrCopy var_90
  loc_9ED66E: ILdRf arg_1C
  loc_9ED671: FStStrCopy var_94
  loc_9ED674: ILdRf arg_14
  loc_9ED677: FStR4 var_98
  loc_9ED67A: ILdRf var_90
  loc_9ED67D: LitStr "|"
  loc_9ED680: ConcatStr
  loc_9ED681: FStStrNoPop var_9C
  loc_9ED684: ILdRf var_94
  loc_9ED687: ConcatStr
  loc_9ED688: FStStrNoPop var_A0
  loc_9ED68B: LitStr "|"
  loc_9ED68E: ConcatStr
  loc_9ED68F: FStStrNoPop var_A4
  loc_9ED692: ILdRf var_88
  loc_9ED695: ConcatStr
  loc_9ED696: FStStrNoPop var_A8
  loc_9ED699: LitStr "|"
  loc_9ED69C: ConcatStr
  loc_9ED69D: FStStrNoPop var_AC
  loc_9ED6A0: ILdRf var_8C
  loc_9ED6A3: ConcatStr
  loc_9ED6A4: FStStrNoPop var_B0
  loc_9ED6A7: LitStr "|"
  loc_9ED6AA: ConcatStr
  loc_9ED6AB: FStStrNoPop var_B4
  loc_9ED6AE: FMemLdR4 var_98(0)
  loc_9ED6B3: ImpAdCallI2 Proc_261_60_9953E4()
  loc_9ED6B8: FStStrNoPop var_B8
  loc_9ED6BB: ConcatStr
  loc_9ED6BC: FStStrNoPop var_BC
  loc_9ED6BF: LitStr "|"
  loc_9ED6C2: ConcatStr
  loc_9ED6C3: FStStrNoPop var_C0
  loc_9ED6C6: FMemLdR4 var_98(4)
  loc_9ED6CB: ImpAdCallI2 Proc_261_60_9953E4()
  loc_9ED6D0: FStStrNoPop var_C4
  loc_9ED6D3: ConcatStr
  loc_9ED6D4: FStStrNoPop var_C8
  loc_9ED6D7: LitStr "|"
  loc_9ED6DA: ConcatStr
  loc_9ED6DB: FStStrNoPop var_CC
  loc_9ED6DE: FMemLdR4 var_98(8)
  loc_9ED6E3: ImpAdCallI2 Proc_261_60_9953E4()
  loc_9ED6E8: FStStrNoPop var_D0
  loc_9ED6EB: ConcatStr
  loc_9ED6EC: FStStrNoPop var_D4
  loc_9ED6EF: LitStr "|"
  loc_9ED6F2: ConcatStr
  loc_9ED6F3: FStStrNoPop var_D8
  loc_9ED6F6: FMemLdR4 var_98(12)
  loc_9ED6FB: ImpAdCallI2 Proc_261_60_9953E4()
  loc_9ED700: FStStrNoPop var_DC
  loc_9ED703: ConcatStr
  loc_9ED704: CVarStr var_EC
  loc_9ED707: PopAdLdVar
  loc_9ED708: FLdPr Me
  loc_9ED70B: MemLdRfVar from_stack_1.txtFile
  loc_9ED70E: LdPrVar
  loc_9ED710: LateMemCall
  loc_9ED716: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_9ED73B: FFree1Var var_EC = ""
  loc_9ED73E: LitI4 0
  loc_9ED743: FStR4 var_98
  loc_9ED746: ExitProcHresult
End Function

Private Function Proc_153_30_9FC188(arg_C, arg_10, arg_14) '9FC188
  'Data Table: 461414
  loc_9FC034: ILdRf arg_C
  loc_9FC037: FStStrCopy var_88
  loc_9FC03A: ILdRf arg_10
  loc_9FC03D: FStStrCopy var_8C
  loc_9FC040: ILdRf arg_14
  loc_9FC043: FStR4 var_90
  loc_9FC046: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_9FC04B: PopAdLdVar
  loc_9FC04C: FLdPr Me
  loc_9FC04F: MemLdRfVar from_stack_1.htmFile
  loc_9FC052: LdPrVar
  loc_9FC054: LateMemCall
  loc_9FC05A: LitI4 0
  loc_9FC05F: LitI4 0
  loc_9FC064: LitI2_Byte 0
  loc_9FC066: LitStr "center"
  loc_9FC069: ILdRf var_88
  loc_9FC06C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_9FC071: CVarStr var_C0
  loc_9FC074: PopAdLdVar
  loc_9FC075: FLdPr Me
  loc_9FC078: MemLdRfVar from_stack_1.htmFile
  loc_9FC07B: LdPrVar
  loc_9FC07D: LateMemCall
  loc_9FC083: FFree1Var var_C0 = ""
  loc_9FC086: LitI4 0
  loc_9FC08B: LitI4 0
  loc_9FC090: LitI2_Byte 0
  loc_9FC092: LitStr "left"
  loc_9FC095: ILdRf var_8C
  loc_9FC098: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_9FC09D: CVarStr var_C0
  loc_9FC0A0: PopAdLdVar
  loc_9FC0A1: FLdPr Me
  loc_9FC0A4: MemLdRfVar from_stack_1.htmFile
  loc_9FC0A7: LdPrVar
  loc_9FC0A9: LateMemCall
  loc_9FC0AF: FFree1Var var_C0 = ""
  loc_9FC0B2: LitI4 0
  loc_9FC0B7: LitI4 0
  loc_9FC0BC: LitI2_Byte &HFF
  loc_9FC0BE: LitStr "right"
  loc_9FC0C1: FMemLdR4 var_90(0)
  loc_9FC0C6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_9FC0CB: CVarStr var_C0
  loc_9FC0CE: PopAdLdVar
  loc_9FC0CF: FLdPr Me
  loc_9FC0D2: MemLdRfVar from_stack_1.htmFile
  loc_9FC0D5: LdPrVar
  loc_9FC0D7: LateMemCall
  loc_9FC0DD: FFree1Var var_C0 = ""
  loc_9FC0E0: LitI4 0
  loc_9FC0E5: LitI4 0
  loc_9FC0EA: LitI2_Byte &HFF
  loc_9FC0EC: LitStr "right"
  loc_9FC0EF: FMemLdR4 var_90(4)
  loc_9FC0F4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_9FC0F9: CVarStr var_C0
  loc_9FC0FC: PopAdLdVar
  loc_9FC0FD: FLdPr Me
  loc_9FC100: MemLdRfVar from_stack_1.htmFile
  loc_9FC103: LdPrVar
  loc_9FC105: LateMemCall
  loc_9FC10B: FFree1Var var_C0 = ""
  loc_9FC10E: LitI4 0
  loc_9FC113: LitI4 0
  loc_9FC118: LitI2_Byte &HFF
  loc_9FC11A: LitStr "right"
  loc_9FC11D: FMemLdR4 var_90(8)
  loc_9FC122: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_9FC127: CVarStr var_C0
  loc_9FC12A: PopAdLdVar
  loc_9FC12B: FLdPr Me
  loc_9FC12E: MemLdRfVar from_stack_1.htmFile
  loc_9FC131: LdPrVar
  loc_9FC133: LateMemCall
  loc_9FC139: FFree1Var var_C0 = ""
  loc_9FC13C: LitI4 0
  loc_9FC141: LitI4 0
  loc_9FC146: LitI2_Byte &HFF
  loc_9FC148: LitStr "right"
  loc_9FC14B: FMemLdR4 var_90(12)
  loc_9FC150: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_9FC155: CVarStr var_C0
  loc_9FC158: PopAdLdVar
  loc_9FC159: FLdPr Me
  loc_9FC15C: MemLdRfVar from_stack_1.htmFile
  loc_9FC15F: LdPrVar
  loc_9FC161: LateMemCall
  loc_9FC167: FFree1Var var_C0 = ""
  loc_9FC16A: LitVarStr var_A0, "    </tr>"
  loc_9FC16F: PopAdLdVar
  loc_9FC170: FLdPr Me
  loc_9FC173: MemLdRfVar from_stack_1.htmFile
  loc_9FC176: LdPrVar
  loc_9FC178: LateMemCall
  loc_9FC17E: LitI4 0
  loc_9FC183: FStR4 var_90
  loc_9FC186: ExitProcHresult
End Function

Private Function Proc_153_31_A6A830() 'A6A830
  'Data Table: 461414
  loc_A6A4C8: LitVarStr var_94, "<html>"
  loc_A6A4CD: PopAdLdVar
  loc_A6A4CE: FLdPr Me
  loc_A6A4D1: MemLdRfVar from_stack_1.htmFile
  loc_A6A4D4: LdPrVar
  loc_A6A4D6: LateMemCall
  loc_A6A4DC: LitVarStr var_94, "<head>"
  loc_A6A4E1: PopAdLdVar
  loc_A6A4E2: FLdPr Me
  loc_A6A4E5: MemLdRfVar from_stack_1.htmFile
  loc_A6A4E8: LdPrVar
  loc_A6A4EA: LateMemCall
  loc_A6A4F0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A6A4F5: PopAdLdVar
  loc_A6A4F6: FLdPr Me
  loc_A6A4F9: MemLdRfVar from_stack_1.htmFile
  loc_A6A4FC: LdPrVar
  loc_A6A4FE: LateMemCall
  loc_A6A504: LitStr "<title>"
  loc_A6A507: FLdRfVar var_A8
  loc_A6A50A: FLdPr Me
  loc_A6A50D:  = Me.Caption
  loc_A6A512: ILdRf var_A8
  loc_A6A515: ConcatStr
  loc_A6A516: FStStrNoPop var_AC
  loc_A6A519: LitStr " - "
  loc_A6A51C: ConcatStr
  loc_A6A51D: FStStrNoPop var_B0
  loc_A6A520: LitStr "Municipalidad de Guaymallén"
  loc_A6A523: ConcatStr
  loc_A6A524: FStStrNoPop var_B4
  loc_A6A527: LitStr "</title>"
  loc_A6A52A: ConcatStr
  loc_A6A52B: CVarStr var_C4
  loc_A6A52E: PopAdLdVar
  loc_A6A52F: FLdPr Me
  loc_A6A532: MemLdRfVar from_stack_1.htmFile
  loc_A6A535: LdPrVar
  loc_A6A537: LateMemCall
  loc_A6A53D: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A6A548: FFree1Var var_C4 = ""
  loc_A6A54B: LitStr vbNullString
  loc_A6A54E: ILdRf Me
  loc_A6A551: CastAd
  loc_A6A554: FStAdFunc var_C8
  loc_A6A557: FLdRfVar var_C8
  loc_A6A55A: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A6A55F: FFree1Ad var_C8
  loc_A6A562: LitI4 0
  loc_A6A567: FStStrCopy var_AC
  loc_A6A56A: FLdRfVar var_AC
  loc_A6A56D: LitI4 0
  loc_A6A572: FStStrCopy var_A8
  loc_A6A575: FLdRfVar var_A8
  loc_A6A578: LitI2_Byte &HFF
  loc_A6A57A: PopTmpLdAd2 var_CA
  loc_A6A57D: FLdPr Me
  loc_A6A580: MemLdRfVar from_stack_1.htmFile
  loc_A6A583: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A6A588: FFreeStr var_A8 = ""
  loc_A6A58F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A6A594: PopAdLdVar
  loc_A6A595: FLdPr Me
  loc_A6A598: MemLdRfVar from_stack_1.htmFile
  loc_A6A59B: LdPrVar
  loc_A6A59D: LateMemCall
  loc_A6A5A3: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A6A5A8: PopAdLdVar
  loc_A6A5A9: FLdPr Me
  loc_A6A5AC: MemLdRfVar from_stack_1.htmFile
  loc_A6A5AF: LdPrVar
  loc_A6A5B1: LateMemCall
  loc_A6A5B7: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A6A5BC: PopAdLdVar
  loc_A6A5BD: FLdPr Me
  loc_A6A5C0: MemLdRfVar from_stack_1.htmFile
  loc_A6A5C3: LdPrVar
  loc_A6A5C5: LateMemCall
  loc_A6A5CB: FLdPr Me
  loc_A6A5CE: MemLdI2 bLogos
  loc_A6A5D1: BranchF loc_A6A5E8
  loc_A6A5D4: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A6A5D9: PopAdLdVar
  loc_A6A5DA: FLdPr Me
  loc_A6A5DD: MemLdRfVar from_stack_1.htmFile
  loc_A6A5E0: LdPrVar
  loc_A6A5E2: LateMemCall
  loc_A6A5E8: LitVarStr var_A4, "    <br><br>"
  loc_A6A5ED: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A6A5F2: FStVarCopyObj var_C4
  loc_A6A5F5: FLdRfVar var_C4
  loc_A6A5F8: FLdRfVar var_DC
  loc_A6A5FB: ImpAdCallFPR4  = Ucase()
  loc_A6A600: FLdRfVar var_DC
  loc_A6A603: ConcatVar var_EC
  loc_A6A607: LitVarStr var_FC, "</p>"
  loc_A6A60C: ConcatVar var_10C
  loc_A6A610: PopAdLdVar
  loc_A6A611: FLdPr Me
  loc_A6A614: MemLdRfVar from_stack_1.htmFile
  loc_A6A617: LdPrVar
  loc_A6A619: LateMemCall
  loc_A6A61F: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A6A62A: LitStr "    <p>"
  loc_A6A62D: FLdRfVar var_A8
  loc_A6A630: FLdPr Me
  loc_A6A633:  = Me.Caption
  loc_A6A638: ILdRf var_A8
  loc_A6A63B: ConcatStr
  loc_A6A63C: FStStrNoPop var_AC
  loc_A6A63F: LitStr "</p>"
  loc_A6A642: ConcatStr
  loc_A6A643: CVarStr var_C4
  loc_A6A646: PopAdLdVar
  loc_A6A647: FLdPr Me
  loc_A6A64A: MemLdRfVar from_stack_1.htmFile
  loc_A6A64D: LdPrVar
  loc_A6A64F: LateMemCall
  loc_A6A655: FFreeStr var_A8 = ""
  loc_A6A65C: FFree1Var var_C4 = ""
  loc_A6A65F: LitVarStr var_94, "    <p>Esquema de Ahorro - Inversión - Financiamiento</p></th>"
  loc_A6A664: PopAdLdVar
  loc_A6A665: FLdPr Me
  loc_A6A668: MemLdRfVar from_stack_1.htmFile
  loc_A6A66B: LdPrVar
  loc_A6A66D: LateMemCall
  loc_A6A673: LitVarStr var_94, "  </tr>"
  loc_A6A678: PopAdLdVar
  loc_A6A679: FLdPr Me
  loc_A6A67C: MemLdRfVar from_stack_1.htmFile
  loc_A6A67F: LdPrVar
  loc_A6A681: LateMemCall
  loc_A6A687: LitVarStr var_94, "  <tr>"
  loc_A6A68C: PopAdLdVar
  loc_A6A68D: FLdPr Me
  loc_A6A690: MemLdRfVar from_stack_1.htmFile
  loc_A6A693: LdPrVar
  loc_A6A695: LateMemCall
  loc_A6A69B: LitVarStr var_94, "    <th>"
  loc_A6A6A0: PopAdLdVar
  loc_A6A6A1: FLdPr Me
  loc_A6A6A4: MemLdRfVar from_stack_1.htmFile
  loc_A6A6A7: LdPrVar
  loc_A6A6A9: LateMemCall
  loc_A6A6AF: LitStr "      <p align=""left"" class=""Titulo2"">Repartición/Organismo: "
  loc_A6A6B2: LitStr "Municipalidad de Guaymallén"
  loc_A6A6B5: ConcatStr
  loc_A6A6B6: FStStrNoPop var_A8
  loc_A6A6B9: LitStr "<br>"
  loc_A6A6BC: ConcatStr
  loc_A6A6BD: CVarStr var_C4
  loc_A6A6C0: PopAdLdVar
  loc_A6A6C1: FLdPr Me
  loc_A6A6C4: MemLdRfVar from_stack_1.htmFile
  loc_A6A6C7: LdPrVar
  loc_A6A6C9: LateMemCall
  loc_A6A6CF: FFree1Str var_A8
  loc_A6A6D2: FFree1Var var_C4 = ""
  loc_A6A6D5: LitStr "    Nomenclador: "
  loc_A6A6D8: LitStr "060204"
  loc_A6A6DB: ConcatStr
  loc_A6A6DC: FStStrNoPop var_A8
  loc_A6A6DF: LitStr "<br>"
  loc_A6A6E2: ConcatStr
  loc_A6A6E3: CVarStr var_C4
  loc_A6A6E6: PopAdLdVar
  loc_A6A6E7: FLdPr Me
  loc_A6A6EA: MemLdRfVar from_stack_1.htmFile
  loc_A6A6ED: LdPrVar
  loc_A6A6EF: LateMemCall
  loc_A6A6F5: FFree1Str var_A8
  loc_A6A6F8: FFree1Var var_C4 = ""
  loc_A6A6FB: LitStr "    Ejercicio: "
  loc_A6A6FE: FLdRfVar var_A8
  loc_A6A701: FLdPr Me
  loc_A6A704: VCallAd Control_ID_cboPeriodo
  loc_A6A707: FStAdFunc var_C8
  loc_A6A70A: FLdPr var_C8
  loc_A6A70D:  = Me.Text
  loc_A6A712: ILdRf var_A8
  loc_A6A715: ConcatStr
  loc_A6A716: FStStrNoPop var_AC
  loc_A6A719: LitStr " ("
  loc_A6A71C: ConcatStr
  loc_A6A71D: FStStrNoPop var_B0
  loc_A6A720: FLdPr Me
  loc_A6A723: MemLdStr global_352
  loc_A6A726: ConcatStr
  loc_A6A727: FStStrNoPop var_B4
  loc_A6A72A: LitStr ")"
  loc_A6A72D: ConcatStr
  loc_A6A72E: CVarStr var_C4
  loc_A6A731: PopAdLdVar
  loc_A6A732: FLdPr Me
  loc_A6A735: MemLdRfVar from_stack_1.htmFile
  loc_A6A738: LdPrVar
  loc_A6A73A: LateMemCall
  loc_A6A740: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A6A74B: FFree1Ad var_C8
  loc_A6A74E: FFree1Var var_C4 = ""
  loc_A6A751: LitVarStr var_94, "    </p></th>"
  loc_A6A756: PopAdLdVar
  loc_A6A757: FLdPr Me
  loc_A6A75A: MemLdRfVar from_stack_1.htmFile
  loc_A6A75D: LdPrVar
  loc_A6A75F: LateMemCall
  loc_A6A765: LitVarStr var_94, "  </tr>"
  loc_A6A76A: PopAdLdVar
  loc_A6A76B: FLdPr Me
  loc_A6A76E: MemLdRfVar from_stack_1.htmFile
  loc_A6A771: LdPrVar
  loc_A6A773: LateMemCall
  loc_A6A779: LitVarStr var_94, "</table>"
  loc_A6A77E: PopAdLdVar
  loc_A6A77F: FLdPr Me
  loc_A6A782: MemLdRfVar from_stack_1.htmFile
  loc_A6A785: LdPrVar
  loc_A6A787: LateMemCall
  loc_A6A78D: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A6A792: PopAdLdVar
  loc_A6A793: FLdPr Me
  loc_A6A796: MemLdRfVar from_stack_1.htmFile
  loc_A6A799: LdPrVar
  loc_A6A79B: LateMemCall
  loc_A6A7A1: LitVarStr var_94, " <tr class=""Encabezado"" align=""center"">"
  loc_A6A7A6: PopAdLdVar
  loc_A6A7A7: FLdPr Me
  loc_A6A7AA: MemLdRfVar from_stack_1.htmFile
  loc_A6A7AD: LdPrVar
  loc_A6A7AF: LateMemCall
  loc_A6A7B5: LitVarStr var_94, "     <th colspan=""2"">CONCEPTO</th>"
  loc_A6A7BA: PopAdLdVar
  loc_A6A7BB: FLdPr Me
  loc_A6A7BE: MemLdRfVar from_stack_1.htmFile
  loc_A6A7C1: LdPrVar
  loc_A6A7C3: LateMemCall
  loc_A6A7C9: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>PRESUPUESTO<br>ORIGINAL</th>"
  loc_A6A7CE: PopAdLdVar
  loc_A6A7CF: FLdPr Me
  loc_A6A7D2: MemLdRfVar from_stack_1.htmFile
  loc_A6A7D5: LdPrVar
  loc_A6A7D7: LateMemCall
  loc_A6A7DD: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>MODIFICACIONES</th>"
  loc_A6A7E2: PopAdLdVar
  loc_A6A7E3: FLdPr Me
  loc_A6A7E6: MemLdRfVar from_stack_1.htmFile
  loc_A6A7E9: LdPrVar
  loc_A6A7EB: LateMemCall
  loc_A6A7F1: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>PRESUPUESTO<br>DEFINITIVO</th>"
  loc_A6A7F6: PopAdLdVar
  loc_A6A7F7: FLdPr Me
  loc_A6A7FA: MemLdRfVar from_stack_1.htmFile
  loc_A6A7FD: LdPrVar
  loc_A6A7FF: LateMemCall
  loc_A6A805: LitVarStr var_94, "     <th width=""14" & Chr(37) & """>EJECUTADO</th>"
  loc_A6A80A: PopAdLdVar
  loc_A6A80B: FLdPr Me
  loc_A6A80E: MemLdRfVar from_stack_1.htmFile
  loc_A6A811: LdPrVar
  loc_A6A813: LateMemCall
  loc_A6A819: LitVarStr var_94, "  </tr>"
  loc_A6A81E: PopAdLdVar
  loc_A6A81F: FLdPr Me
  loc_A6A822: MemLdRfVar from_stack_1.htmFile
  loc_A6A825: LdPrVar
  loc_A6A827: LateMemCall
  loc_A6A82D: ExitProcHresult
End Function

Private Function Proc_153_32_9EED6C() '9EED6C
  'Data Table: 461414
  loc_9EEC28: LitVarStr var_94, "</table>"
  loc_9EEC2D: PopAdLdVar
  loc_9EEC2E: FLdPr Me
  loc_9EEC31: MemLdRfVar from_stack_1.htmFile
  loc_9EEC34: LdPrVar
  loc_9EEC36: LateMemCall
  loc_9EEC3C: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9EEC41: PopAdLdVar
  loc_9EEC42: FLdPr Me
  loc_9EEC45: MemLdRfVar from_stack_1.htmFile
  loc_9EEC48: LdPrVar
  loc_9EEC4A: LateMemCall
  loc_9EEC50: LitVarStr var_94, "  <tr>"
  loc_9EEC55: PopAdLdVar
  loc_9EEC56: FLdPr Me
  loc_9EEC59: MemLdRfVar from_stack_1.htmFile
  loc_9EEC5C: LdPrVar
  loc_9EEC5E: LateMemCall
  loc_9EEC64: LitVarStr var_94, "    <th scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9EEC69: PopAdLdVar
  loc_9EEC6A: FLdPr Me
  loc_9EEC6D: MemLdRfVar from_stack_1.htmFile
  loc_9EEC70: LdPrVar
  loc_9EEC72: LateMemCall
  loc_9EEC78: LitVarStr var_94, "          <map name=""Map"">"
  loc_9EEC7D: PopAdLdVar
  loc_9EEC7E: FLdPr Me
  loc_9EEC81: MemLdRfVar from_stack_1.htmFile
  loc_9EEC84: LdPrVar
  loc_9EEC86: LateMemCall
  loc_9EEC8C: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9EEC91: PopAdLdVar
  loc_9EEC92: FLdPr Me
  loc_9EEC95: MemLdRfVar from_stack_1.htmFile
  loc_9EEC98: LdPrVar
  loc_9EEC9A: LateMemCall
  loc_9EECA0: LitVarStr var_94, "          </map>"
  loc_9EECA5: PopAdLdVar
  loc_9EECA6: FLdPr Me
  loc_9EECA9: MemLdRfVar from_stack_1.htmFile
  loc_9EECAC: LdPrVar
  loc_9EECAE: LateMemCall
  loc_9EECB4: LitVarStr var_94, "    </div></th>"
  loc_9EECB9: PopAdLdVar
  loc_9EECBA: FLdPr Me
  loc_9EECBD: MemLdRfVar from_stack_1.htmFile
  loc_9EECC0: LdPrVar
  loc_9EECC2: LateMemCall
  loc_9EECC8: LitVarStr var_94, "  </tr>"
  loc_9EECCD: PopAdLdVar
  loc_9EECCE: FLdPr Me
  loc_9EECD1: MemLdRfVar from_stack_1.htmFile
  loc_9EECD4: LdPrVar
  loc_9EECD6: LateMemCall
  loc_9EECDC: LitVarStr var_94, "  <tr>"
  loc_9EECE1: PopAdLdVar
  loc_9EECE2: FLdPr Me
  loc_9EECE5: MemLdRfVar from_stack_1.htmFile
  loc_9EECE8: LdPrVar
  loc_9EECEA: LateMemCall
  loc_9EECF0: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9EECF5: PopAdLdVar
  loc_9EECF6: FLdPr Me
  loc_9EECF9: MemLdRfVar from_stack_1.htmFile
  loc_9EECFC: LdPrVar
  loc_9EECFE: LateMemCall
  loc_9EED04: LitVarStr var_94, "  </tr>"
  loc_9EED09: PopAdLdVar
  loc_9EED0A: FLdPr Me
  loc_9EED0D: MemLdRfVar from_stack_1.htmFile
  loc_9EED10: LdPrVar
  loc_9EED12: LateMemCall
  loc_9EED18: LitVarStr var_94, "</table>"
  loc_9EED1D: PopAdLdVar
  loc_9EED1E: FLdPr Me
  loc_9EED21: MemLdRfVar from_stack_1.htmFile
  loc_9EED24: LdPrVar
  loc_9EED26: LateMemCall
  loc_9EED2C: LitVarStr var_94, "<p class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</p>"
  loc_9EED31: PopAdLdVar
  loc_9EED32: FLdPr Me
  loc_9EED35: MemLdRfVar from_stack_1.htmFile
  loc_9EED38: LdPrVar
  loc_9EED3A: LateMemCall
  loc_9EED40: LitVarStr var_94, "</body>"
  loc_9EED45: PopAdLdVar
  loc_9EED46: FLdPr Me
  loc_9EED49: MemLdRfVar from_stack_1.htmFile
  loc_9EED4C: LdPrVar
  loc_9EED4E: LateMemCall
  loc_9EED54: LitVarStr var_94, "</html>"
  loc_9EED59: PopAdLdVar
  loc_9EED5A: FLdPr Me
  loc_9EED5D: MemLdRfVar from_stack_1.htmFile
  loc_9EED60: LdPrVar
  loc_9EED62: LateMemCall
  loc_9EED68: ExitProcHresult
  loc_9EED69: StAryMove
End Function
