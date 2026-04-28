VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptConciliacionbancaria
  Caption = "Reporte Conciliacion Bancaria"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptConciliacionbancaria.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8070
  ClientHeight = 4890
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3360
    Width = 3015
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4635
    Width = 8070
    Height = 255
    TabIndex = 22
    OleObjectBlob = "rptConciliacionbancaria.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6840
    Top = 3600
    Width = 735
    Height = 615
    TabIndex = 20
    Cancel = -1  'True
    Picture = "rptConciliacionbancaria.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptConciliacionbancaria.frx":0B9C
    Left = 5520
    Top = 960
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3360
    Top = 3360
    Width = 3015
    Height = 1095
    TabIndex = 17
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7815
    Height = 3255
    TabIndex = 0
    Begin VB.CheckBox chkExcluirFeco
      Caption = "Excluir Fecha Conciliación"
      Left = 1845
      Top = 2520
      Width = 2295
      Height = 375
      TabIndex = 13
    End
    Begin VB.CheckBox chkMuestraOrdendePago
      Caption = "Muestra Orden de Pago"
      Left = 1845
      Top = 2160
      Width = 2175
      Height = 255
      TabIndex = 12
    End
    Begin VB.CheckBox chkMuestraalaOrden
      Caption = "Muestra a la Orden de ..."
      Left = 1845
      Top = 1800
      Width = 2175
      Height = 255
      TabIndex = 11
    End
    Begin VB.TextBox txtImporte
      Left = 1845
      Top = 1320
      Width = 2775
      Height = 285
      TabIndex = 10
      Alignment = 1 'Right Justify
    End
    Begin VB.CommandButton cmdCalFechMoba
      Left = 3000
      Top = 840
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "rptConciliacionbancaria.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton CodiBancCmd
      Left = 2880
      Top = 360
      Width = 375
      Height = 255
      TabIndex = 3
      Picture = "rptConciliacionbancaria.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6240
      Top = 960
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin MSMask.MaskEdBox FechMobaMsk
      Left = 1845
      Top = 840
      Width = 1095
      Height = 285
      TabIndex = 6
      OleObjectBlob = "rptConciliacionbancaria.frx":123C
    End
    Begin MSMask.MaskEdBox CodiBancMsk
      Left = 1845
      Top = 360
      Width = 855
      Height = 285
      TabIndex = 2
      OleObjectBlob = "rptConciliacionbancaria.frx":12C4
    End
    Begin VB.Label Label1
      Caption = "Saldo según Extracto:"
      Left = 180
      Top = 1320
      Width = 1560
      Height = 195
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Fecha:"
      Left = 1215
      Top = 840
      Width = 495
      Height = 195
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label DetaBancLbl
      Left = 3360
      Top = 360
      Width = 3615
      Height = 255
      TabIndex = 4
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label4
      Caption = "Banco:"
      Left = 1200
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6960
    Top = 3720
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 21
    OleObjectBlob = "rptConciliacionbancaria.frx":132E
  End
End

Attribute VB_Name = "rptConciliacionbancaria"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00589EAC
  bStruc(36) As Byte ' String fields: 9
End Type


Private Sub cmdXLS_Click() '96B6CC
  'Data Table: 49BA1C
  loc_96B6B0: LitI2_Byte 0
  loc_96B6B2: LitI2_Byte 0
  loc_96B6B4: ILdRf Me
  loc_96B6B7: CastAd
  loc_96B6BA: FStAdFunc var_88
  loc_96B6BD: FLdRfVar var_88
  loc_96B6C0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B6C5: FFree1Ad var_88
  loc_96B6C8: ExitProcHresult
  loc_96B6C9: Ary1LdPr
  loc_96B6CA: MemLdStr global_-23536
End Sub

Private Sub Form_Load() '96CA54
  'Data Table: 49BA1C
  loc_96CA34: LitI2_Byte &HFF
  loc_96CA36: ImpAdStI2 MemVar_C3D840
  loc_96CA39: ILdRf Me
  loc_96CA3C: CastAd
  loc_96CA3F: FStAdFunc var_88
  loc_96CA42: FLdRfVar var_88
  loc_96CA45: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96CA4A: FFree1Ad var_88
  loc_96CA4D: Call cmdNueva_Click()
  loc_96CA52: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95A340
  'Data Table: 49BA1C
  loc_95A328: FLdPr Me
  loc_95A32B: VCallAd Control_ID_wbbReporte
  loc_95A32E: FStAdFunc var_88
  loc_95A331: FLdRfVar var_88
  loc_95A334: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95A339: FFree1Ad var_88
  loc_95A33C: ExitProcHresult
  loc_95A33D: HardType
End Sub

Private Sub CodiBancMsk_UnknownEvent_0 '950580
  'Data Table: 49BA1C
  loc_95056C: FLdPr Me
  loc_95056F: VCallAd Control_ID_CodiBancMsk
  loc_950572: CVarAd
  loc_950576: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95057B: FFree1Var var_94 = ""
  loc_95057E: ExitProcHresult
End Sub

Private Sub CodiBancMsk_UnknownEvent_8 '9E9DF4
  'Data Table: 49BA1C
  loc_9E9CD8: FLdPr Me
  loc_9E9CDB: VCallAd Control_ID_CodiBancMsk
  loc_9E9CDE: FStAdFunc var_88
  loc_9E9CE1: FLdPr var_88
  loc_9E9CE4: LateIdLdVar var_98 DispID_20 0
  loc_9E9CEB: CStrVarTmp
  loc_9E9CEC: FStStrNoPop var_9C
  loc_9E9CEF: LitStr vbNullString
  loc_9E9CF2: NeStr
  loc_9E9CF4: FFree1Str var_9C
  loc_9E9CF7: FFree1Ad var_88
  loc_9E9CFA: FFree1Var var_98 = ""
  loc_9E9CFD: BranchF loc_9E9DDC
  loc_9E9D00: FLdPr Me
  loc_9E9D03: VCallAd Control_ID_CodiBancMsk
  loc_9E9D06: FStAdFunc var_88
  loc_9E9D09: FLdPr var_88
  loc_9E9D0C: LateIdLdVar var_98 DispID_22 0
  loc_9E9D13: PopAd
  loc_9E9D15: LitI4 0
  loc_9E9D1A: FStStrCopy var_A4
  loc_9E9D1D: FLdRfVar var_A4
  loc_9E9D20: FLdPr Me
  loc_9E9D23: MemLdRfVar from_stack_1.global_76
  loc_9E9D26: NewIfNullRf
  loc_9E9D2A: FLdRfVar var_98
  loc_9E9D2D: CStrVarTmp
  loc_9E9D2E: FStStrNoPop var_A0
  loc_9E9D31: ImpAdLdI2 MemVar_C3D064
  loc_9E9D34: CStrUI1
  loc_9E9D36: FStStrNoPop var_9C
  loc_9E9D39: ImpAdCallI2 Proc_259_5_B268F0(, , , )
  loc_9E9D3E: FFreeStr var_9C = "": var_A0 = ""
  loc_9E9D47: FFree1Ad var_88
  loc_9E9D4A: FFree1Var var_98 = ""
  loc_9E9D4D: BranchF loc_9E9D7E
  loc_9E9D50: FLdRfVar var_9C
  loc_9E9D53: FLdPr Me
  loc_9E9D56: MemLdRfVar from_stack_1.global_76
  loc_9E9D59: NewIfNullPr tblbanco
  loc_9E9D5C: from_stack_1v = tblbanco.DetaBancGet()
  loc_9E9D61: ILdRf var_9C
  loc_9E9D64: FLdPr Me
  loc_9E9D67: VCallAd Control_ID_DetaBancLbl
  loc_9E9D6A: FStAdFunc var_88
  loc_9E9D6D: FLdPr var_88
  loc_9E9D70: Me.Caption = from_stack_1
  loc_9E9D75: FFree1Str var_9C
  loc_9E9D78: FFree1Ad var_88
  loc_9E9D7B: Branch loc_9E9DD9
  loc_9E9D7E: FLdRfVar var_9C
  loc_9E9D81: FLdPr Me
  loc_9E9D84: MemLdRfVar from_stack_1.global_76
  loc_9E9D87: NewIfNullPr tblbanco
  loc_9E9D8A: from_stack_1v = tblbanco.MsgErrorGet()
  loc_9E9D8F: ILdRf var_9C
  loc_9E9D92: FLdPr Me
  loc_9E9D95: MemStStrCopy
  loc_9E9D99: FFree1Str var_9C
  loc_9E9D9C: FLdPr Me
  loc_9E9D9F: VCallAd Control_ID_CodiBancMsk
  loc_9E9DA2: FStAdFunc var_B0
  loc_9E9DA5: FLdPr Me
  loc_9E9DA8: VCallAd Control_ID_DetaBancLbl
  loc_9E9DAB: FStAdFunc var_AC
  loc_9E9DAE: FLdRfVar var_AC
  loc_9E9DB1: FLdZeroAd var_B0
  loc_9E9DB4: FStAdFuncNoPop
  loc_9E9DB7: CastAd
  loc_9E9DBA: FStAdFunc var_A8
  loc_9E9DBD: FLdRfVar var_A8
  loc_9E9DC0: FLdPr Me
  loc_9E9DC3: MemLdRfVar from_stack_1.global_72
  loc_9E9DC6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E9DCB: IStI2 Cancel
  loc_9E9DCE: FFreeAd var_88 = "": var_A8 = "": var_AC = ""
  loc_9E9DD9: Branch loc_9E9DF3
  loc_9E9DDC: LitStr vbNullString
  loc_9E9DDF: FLdPr Me
  loc_9E9DE2: VCallAd Control_ID_DetaBancLbl
  loc_9E9DE5: FStAdFunc var_88
  loc_9E9DE8: FLdPr var_88
  loc_9E9DEB: Me.Caption = from_stack_1
  loc_9E9DF0: FFree1Ad var_88
  loc_9E9DF3: ExitProcHresult
End Sub

Private Sub txtImporte_GotFocus() '952B30
  'Data Table: 49BA1C
  loc_952B1C: FLdPr Me
  loc_952B1F: VCallAd Control_ID_txtImporte
  loc_952B22: CVarAd
  loc_952B26: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952B2B: FFree1Var var_94 = ""
  loc_952B2E: ExitProcHresult
End Sub

Private Sub txtImporte_KeyPress(KeyAscii As Integer) '98CF30
  'Data Table: 49BA1C
  loc_98CEF0: LitStr "1234567890,.-"
  loc_98CEF3: FStStrCopy var_88
  loc_98CEF6: FLdRfVar var_88
  loc_98CEF9: ILdRf KeyAscii
  loc_98CEFC: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_98CF01: IStI2 KeyAscii
  loc_98CF04: FFree1Str var_88
  loc_98CF07: ILdI2 KeyAscii
  loc_98CF0A: CI4UI1
  loc_98CF0B: FLdRfVar var_98
  loc_98CF0E: ImpAdCallFPR4  = Chr()
  loc_98CF13: FLdRfVar var_98
  loc_98CF16: LitVarStr var_A8, "."
  loc_98CF1B: HardType
  loc_98CF1C: EqVarBool
  loc_98CF1E: FFree1Var var_98 = ""
  loc_98CF21: BranchF loc_98CF2F
  loc_98CF24: LitStr ","
  loc_98CF27: ImpAdCallI2 Asc()
  loc_98CF2C: IStI2 KeyAscii
  loc_98CF2F: ExitProcHresult
End Sub

Private Sub txtImporte_Validate(Cancel As Boolean) '9E5AEC
  'Data Table: 49BA1C
  loc_9E59E4: FLdRfVar var_8C
  loc_9E59E7: FLdPr Me
  loc_9E59EA: VCallAd Control_ID_txtImporte
  loc_9E59ED: FStAdFunc var_88
  loc_9E59F0: FLdPr var_88
  loc_9E59F3:  = Me.Text
  loc_9E59F8: LitStr "0"
  loc_9E59FB: LitI2_Byte &HFF
  loc_9E59FD: LitI2_Byte &HFF
  loc_9E59FF: LitI2_Byte &HFF
  loc_9E5A01: ILdRf var_8C
  loc_9E5A04: LitStr "Saldo según extracto"
  loc_9E5A07: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9E5A0C: FStStrNoPop var_90
  loc_9E5A0F: FLdPr Me
  loc_9E5A12: MemStStrCopy
  loc_9E5A16: FFreeStr var_8C = ""
  loc_9E5A1D: FFree1Ad var_88
  loc_9E5A20: FLdPr Me
  loc_9E5A23: VCallAd Control_ID_txtImporte
  loc_9E5A26: FStAdFunc var_9C
  loc_9E5A29: LitNothing
  loc_9E5A2B: CastAd
  loc_9E5A2E: FStAdFunc var_98
  loc_9E5A31: FLdRfVar var_98
  loc_9E5A34: FLdZeroAd var_9C
  loc_9E5A37: FStAdFuncNoPop
  loc_9E5A3A: CastAd
  loc_9E5A3D: FStAdFunc var_94
  loc_9E5A40: FLdRfVar var_94
  loc_9E5A43: FLdPr Me
  loc_9E5A46: MemLdRfVar from_stack_1.global_72
  loc_9E5A49: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E5A4E: IStI2 Cancel
  loc_9E5A51: FFreeAd var_88 = "": var_94 = "": var_98 = ""
  loc_9E5A5C: ILdI2 Cancel
  loc_9E5A5F: NotI4
  loc_9E5A60: BranchF loc_9E5AEA
  loc_9E5A63: FLdPr Me
  loc_9E5A66: VCallAd Control_ID_txtImporte
  loc_9E5A69: CVarAd
  loc_9E5A6D: ImpAdCallI2 IsNumeric()
  loc_9E5A72: FFree1Var var_AC = ""
  loc_9E5A75: BranchF loc_9E5AEA
  loc_9E5A78: FLdRfVar var_8C
  loc_9E5A7B: FLdPr Me
  loc_9E5A7E: VCallAd Control_ID_txtImporte
  loc_9E5A81: FStAdFunc var_88
  loc_9E5A84: FLdPr var_88
  loc_9E5A87:  = Me.Text
  loc_9E5A8C: LitI4 2
  loc_9E5A91: ILdRf var_8C
  loc_9E5A94: CR8Str
  loc_9E5A96: CVarR8
  loc_9E5A9A: FLdRfVar var_CC
  loc_9E5A9D: ImpAdCallFPR4  = Round(, )
  loc_9E5AA2: LitI4 1
  loc_9E5AA7: LitI4 1
  loc_9E5AAC: LitVarStr var_DC, "###,###,###,###,##0.00"
  loc_9E5AB1: FStVarCopyObj var_EC
  loc_9E5AB4: FLdRfVar var_EC
  loc_9E5AB7: FLdRfVar var_CC
  loc_9E5ABA: ImpAdCallI2 Format$(, )
  loc_9E5ABF: FStStrNoPop var_90
  loc_9E5AC2: FLdPr Me
  loc_9E5AC5: VCallAd Control_ID_txtImporte
  loc_9E5AC8: FStAdFunc var_94
  loc_9E5ACB: FLdPr var_94
  loc_9E5ACE: Me.Text = from_stack_1
  loc_9E5AD3: FFreeStr var_8C = ""
  loc_9E5ADA: FFreeAd var_88 = ""
  loc_9E5AE1: FFreeVar var_AC = "": var_CC = ""
  loc_9E5AEA: ExitProcHresult
End Sub

Private Sub CodiBancCmd_Click() '9FBCC4
  'Data Table: 49BA1C
  loc_9FBB84: LitI2_Byte &HFF
  loc_9FBB86: ImpAdLdRf MemVar_C3D6AC
  loc_9FBB89: NewIfNullPr bscBanco
  loc_9FBB8C: Call bscBanco.MuestroAnuladosPut(from_stack_1v)
  loc_9FBB91: LitVar_Missing var_A4
  loc_9FBB94: PopAdLdVar
  loc_9FBB95: LitVarI4
  loc_9FBB9D: PopAdLdVar
  loc_9FBB9E: ImpAdLdRf MemVar_C3D6AC
  loc_9FBBA1: NewIfNullPr bscBanco
  loc_9FBBA4: bscBanco.Show from_stack_1, from_stack_2
  loc_9FBBA9: FLdRfVar var_AC
  loc_9FBBAC: FLdRfVar var_A8
  loc_9FBBAF: ImpAdLdRf MemVar_C3D6AC
  loc_9FBBB2: NewIfNullPr bscBanco
  loc_9FBBB5: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FBBBA: FLdPr var_A8
  loc_9FBBBD: from_stack_1 = clsbase.RecordCount
  loc_9FBBC2: ILdRf var_AC
  loc_9FBBC5: LitI4 0
  loc_9FBBCA: GtI4
  loc_9FBBCB: FFree1Ad var_A8
  loc_9FBBCE: BranchF loc_9FBCA9
  loc_9FBBD1: FLdRfVar var_C8
  loc_9FBBD4: FLdRfVar var_B8
  loc_9FBBD7: LitVarStr var_94, "CodiBanc"
  loc_9FBBDC: PopAdLdVar
  loc_9FBBDD: FLdRfVar var_B4
  loc_9FBBE0: FLdRfVar var_B0
  loc_9FBBE3: FLdRfVar var_A8
  loc_9FBBE6: ImpAdLdRf MemVar_C3D6AC
  loc_9FBBE9: NewIfNullPr bscBanco
  loc_9FBBEC: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FBBF1: FLdPr var_A8
  loc_9FBBF4: from_stack_1v = clsbase.RsFrmGet()
  loc_9FBBF9: FLdPr var_B0
  loc_9FBBFC:  = Me.Fields
  loc_9FBC01: FLdPr var_B4
  loc_9FBC04: from_stack_2 = Me.Item(from_stack_1)
  loc_9FBC09: FLdPr var_B8
  loc_9FBC0C:  = Me.Value
  loc_9FBC11: FLdRfVar var_C8
  loc_9FBC14: CStrVarTmp
  loc_9FBC15: CVarStr var_D8
  loc_9FBC18: PopAdLdVar
  loc_9FBC19: FLdPr Me
  loc_9FBC1C: VCallAd Control_ID_CodiBancMsk
  loc_9FBC1F: FStAdFunc var_DC
  loc_9FBC22: FLdPr var_DC
  loc_9FBC25: LateIdSt
  loc_9FBC2A: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FBC37: FFreeVar var_C8 = ""
  loc_9FBC3E: FLdRfVar var_C8
  loc_9FBC41: FLdRfVar var_B8
  loc_9FBC44: LitVarStr var_94, "DetaBanc"
  loc_9FBC49: PopAdLdVar
  loc_9FBC4A: FLdRfVar var_B4
  loc_9FBC4D: FLdRfVar var_B0
  loc_9FBC50: FLdRfVar var_A8
  loc_9FBC53: ImpAdLdRf MemVar_C3D6AC
  loc_9FBC56: NewIfNullPr bscBanco
  loc_9FBC59: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FBC5E: FLdPr var_A8
  loc_9FBC61: from_stack_1v = clsbase.RsFrmGet()
  loc_9FBC66: FLdPr var_B0
  loc_9FBC69:  = Me.Fields
  loc_9FBC6E: FLdPr var_B4
  loc_9FBC71: from_stack_2 = Me.Item(from_stack_1)
  loc_9FBC76: FLdPr var_B8
  loc_9FBC79:  = Me.Value
  loc_9FBC7E: FLdRfVar var_C8
  loc_9FBC81: CStrVarTmp
  loc_9FBC82: FStStrNoPop var_E0
  loc_9FBC85: FLdPr Me
  loc_9FBC88: VCallAd Control_ID_DetaBancLbl
  loc_9FBC8B: FStAdFunc var_DC
  loc_9FBC8E: FLdPr var_DC
  loc_9FBC91: Me.Caption = from_stack_1
  loc_9FBC96: FFree1Str var_E0
  loc_9FBC99: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9FBCA6: FFree1Var var_C8 = ""
  loc_9FBCA9: FLdPr Me
  loc_9FBCAC: VCallAd Control_ID_FechMobaMsk
  loc_9FBCAF: FStAdFunc var_A8
  loc_9FBCB2: FLdPr var_A8
  loc_9FBCB5: LateIdCall
  loc_9FBCBD: FFree1Ad var_A8
  loc_9FBCC0: ExitProcHresult
  loc_9FBCC1: Ary1LdRf
End Sub

Private Sub cmdCalFechMoba_Click() '9803F0
  'Data Table: 49BA1C
  loc_9803BC: LitVar_Missing var_A4
  loc_9803BF: PopAdLdVar
  loc_9803C0: LitVarI4
  loc_9803C8: PopAdLdVar
  loc_9803C9: ImpAdLdRf MemVar_C3D9A8
  loc_9803CC: NewIfNullPr frmCalendario
  loc_9803CF: frmCalendario.Show from_stack_1, from_stack_2
  loc_9803D4: ImpAdLdRf MemVar_C3D038
  loc_9803D7: CDargRef
  loc_9803DB: FLdPr Me
  loc_9803DE: VCallAd Control_ID_FechMobaMsk
  loc_9803E1: FStAdFunc var_A8
  loc_9803E4: FLdPr var_A8
  loc_9803E7: LateIdSt
  loc_9803EC: FFree1Ad var_A8
  loc_9803EF: ExitProcHresult
End Sub

Private Sub FechMobaMsk_UnknownEvent_0 '950538
  'Data Table: 49BA1C
  loc_950524: FLdPr Me
  loc_950527: VCallAd Control_ID_FechMobaMsk
  loc_95052A: CVarAd
  loc_95052E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950533: FFree1Var var_94 = ""
  loc_950536: ExitProcHresult
End Sub

Private Function FechMobaMsk_UnknownEvent_8(arg_C) '9B0E24
  'Data Table: 49BA1C
  loc_9B0D88: FLdPr Me
  loc_9B0D8B: VCallAd Control_ID_FechMobaMsk
  loc_9B0D8E: FStAdFunc var_88
  loc_9B0D91: FLdPr var_88
  loc_9B0D94: LateIdLdVar var_98 DispID_15 0
  loc_9B0D9B: PopAd
  loc_9B0D9D: FLdPr Me
  loc_9B0DA0: VCallAd Control_ID_FechMobaMsk
  loc_9B0DA3: FStAdFunc var_AC
  loc_9B0DA6: LitI2_Byte 0
  loc_9B0DA8: PopTmpLdAd2 var_A2
  loc_9B0DAB: FLdZeroAd var_AC
  loc_9B0DAE: FStAdFunc var_A0
  loc_9B0DB1: FLdRfVar var_A0
  loc_9B0DB4: LitStr vbNullString
  loc_9B0DB7: LitI2_Byte 0
  loc_9B0DB9: LitI2_Byte 0
  loc_9B0DBB: FLdRfVar var_98
  loc_9B0DBE: CStrVarTmp
  loc_9B0DBF: FStStrNoPop var_9C
  loc_9B0DC2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B0DC7: FStStrNoPop var_A8
  loc_9B0DCA: FLdPr Me
  loc_9B0DCD: MemStStrCopy
  loc_9B0DD1: FFreeStr var_9C = ""
  loc_9B0DD8: FFreeAd var_88 = "": var_A0 = ""
  loc_9B0DE1: FFree1Var var_98 = ""
  loc_9B0DE4: FLdPr Me
  loc_9B0DE7: VCallAd Control_ID_FechMobaMsk
  loc_9B0DEA: FStAdFunc var_B0
  loc_9B0DED: LitNothing
  loc_9B0DEF: CastAd
  loc_9B0DF2: FStAdFunc var_AC
  loc_9B0DF5: FLdRfVar var_AC
  loc_9B0DF8: FLdZeroAd var_B0
  loc_9B0DFB: FStAdFuncNoPop
  loc_9B0DFE: CastAd
  loc_9B0E01: FStAdFunc var_A0
  loc_9B0E04: FLdRfVar var_A0
  loc_9B0E07: FLdPr Me
  loc_9B0E0A: MemLdRfVar from_stack_1.global_72
  loc_9B0E0D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B0E12: IStI2 arg_C
  loc_9B0E15: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B0E20: ExitProcHresult
End Function

Private Sub cmdPdf_Click() '959DE8
  'Data Table: 49BA1C
  loc_959DD0: LitI2_Byte 0
  loc_959DD2: ILdRf Me
  loc_959DD5: CastAd
  loc_959DD8: FStAdFunc var_88
  loc_959DDB: FLdRfVar var_88
  loc_959DDE: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_959DE3: FFree1Ad var_88
  loc_959DE6: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '976A54
  'Data Table: 49BA1C
  loc_976A24: LitVarStr var_94, "Cerrando..."
  loc_976A29: PopAdLdVar
  loc_976A2A: FLdPr Me
  loc_976A2D: VCallAd Control_ID_statusBar
  loc_976A30: FStAdFunc var_A8
  loc_976A33: FLdPr var_A8
  loc_976A36: LateIdSt
  loc_976A3B: FFree1Ad var_A8
  loc_976A3E: ILdRf Me
  loc_976A41: FStAdNoPop
  loc_976A45: ImpAdLdRf MemVar_C44F9C
  loc_976A48: NewIfNullPr Me
  loc_976A4B: Me.Global.Unload from_stack_1
  loc_976A50: FFree1Ad var_A8
  loc_976A53: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9666E4
  'Data Table: 49BA1C
  loc_9666CC: ILdRf Me
  loc_9666CF: CastAd
  loc_9666D2: FStAdFunc var_88
  loc_9666D5: FLdRfVar var_88
  loc_9666D8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9666DD: FFree1Ad var_88
  loc_9666E0: ExitProcHresult
  loc_9666E1: FLdPr var_16C
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9885C4
  'Data Table: 49BA1C
  loc_98858C: FLdPr Me
  loc_98858F: VCallAd Control_ID_statusBar
  loc_988592: FStAdFunc var_88
  loc_988595: FLdPr var_88
  loc_988598: LateIdLdVar var_98 DispID_1 0
  loc_98859F: CStrVarTmp
  loc_9885A0: CVarStr var_A8
  loc_9885A3: PopAdLdVar
  loc_9885A4: FLdPr Me
  loc_9885A7: VCallAd Control_ID_statusBar
  loc_9885AA: FStAdFunc var_BC
  loc_9885AD: FLdPr var_BC
  loc_9885B0: LateIdSt
  loc_9885B5: FFreeAd var_88 = ""
  loc_9885BC: FFreeVar var_98 = ""
  loc_9885C3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9C9244
  'Data Table: 49BA1C
  loc_9C9160: LitI2_Byte 0
  loc_9C9162: FLdPr Me
  loc_9C9165: MemStI2 bGenerado
  loc_9C9168: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C916D: LitVarStr var_94, vbNullString
  loc_9C9172: PopAdLdVar
  loc_9C9173: FLdPr Me
  loc_9C9176: VCallAd Control_ID_CodiBancMsk
  loc_9C9179: FStAdFunc var_A8
  loc_9C917C: FLdPr var_A8
  loc_9C917F: LateIdSt
  loc_9C9184: FFree1Ad var_A8
  loc_9C9187: LitStr vbNullString
  loc_9C918A: FLdPr Me
  loc_9C918D: VCallAd Control_ID_DetaBancLbl
  loc_9C9190: FStAdFunc var_A8
  loc_9C9193: FLdPr var_A8
  loc_9C9196: Me.Caption = from_stack_1
  loc_9C919B: FFree1Ad var_A8
  loc_9C919E: LitI2_Byte 0
  loc_9C91A0: PopTmpLdAd2 var_AA
  loc_9C91A3: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9C91A8: CStrDate
  loc_9C91AA: CVarStr var_BC
  loc_9C91AD: PopAdLdVar
  loc_9C91AE: FLdPr Me
  loc_9C91B1: VCallAd Control_ID_FechMobaMsk
  loc_9C91B4: FStAdFunc var_A8
  loc_9C91B7: FLdPr var_A8
  loc_9C91BA: LateIdSt
  loc_9C91BF: FFree1Ad var_A8
  loc_9C91C2: FFree1Var var_BC = ""
  loc_9C91C5: LitStr vbNullString
  loc_9C91C8: FLdPr Me
  loc_9C91CB: VCallAd Control_ID_txtImporte
  loc_9C91CE: FStAdFunc var_A8
  loc_9C91D1: FLdPr var_A8
  loc_9C91D4: Me.Text = from_stack_1
  loc_9C91D9: FFree1Ad var_A8
  loc_9C91DC: LitI4 1
  loc_9C91E1: CI2I4
  loc_9C91E2: FLdPr Me
  loc_9C91E5: VCallAd Control_ID_chkMuestraalaOrden
  loc_9C91E8: FStAdFunc var_A8
  loc_9C91EB: FLdPr var_A8
  loc_9C91EE: Me.Value = from_stack_1
  loc_9C91F3: FFree1Ad var_A8
  loc_9C91F6: LitI4 0
  loc_9C91FB: CI2I4
  loc_9C91FC: FLdPr Me
  loc_9C91FF: VCallAd Control_ID_chkMuestraOrdendePago
  loc_9C9202: FStAdFunc var_A8
  loc_9C9205: FLdPr var_A8
  loc_9C9208: Me.Value = from_stack_1
  loc_9C920D: FFree1Ad var_A8
  loc_9C9210: LitI4 0
  loc_9C9215: CI2I4
  loc_9C9216: FLdPr Me
  loc_9C9219: VCallAd Control_ID_chkExcluirFeco
  loc_9C921C: FStAdFunc var_A8
  loc_9C921F: FLdPr var_A8
  loc_9C9222: Me.Value = from_stack_1
  loc_9C9227: FFree1Ad var_A8
  loc_9C922A: Call HabilitarCriterio()
  loc_9C922F: ILdRf Me
  loc_9C9232: CastAd
  loc_9C9235: FStAdFunc var_A8
  loc_9C9238: FLdRfVar var_A8
  loc_9C923B: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C9240: FFree1Ad var_A8
  loc_9C9243: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '959D9C
  'Data Table: 49BA1C
  loc_959D84: ILdRf Me
  loc_959D87: CastAd
  loc_959D8A: FStAdFunc var_88
  loc_959D8D: FLdRfVar var_88
  loc_959D90: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_959D95: FFree1Ad var_88
  loc_959D98: ExitProcHresult
End Sub

Public Function htmFileGet() '49CBC0
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '49CBCF
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '49CBDE
  htmFile = Value
End Sub

Public Function bGeneradoGet() '49CBED
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49CBFC
  bGenerado = Value
End Sub

Public Function bLogosGet() '49CC0B
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '49CC1A
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() '9BE364
  'Data Table: 49BA1C
  loc_9BE2C0: LitI4 0
  loc_9BE2C5: LitI4 7
  loc_9BE2CA: FLdRfVar var_88
  loc_9BE2CD: Redim
  loc_9BE2D7: FLdPr Me
  loc_9BE2DA: VCallAd Control_ID_CodiBancMsk
  loc_9BE2DD: CVarAd
  loc_9BE2E1: ParmAry1St
  loc_9BE2E7: FLdPr Me
  loc_9BE2EA: VCallAd Control_ID_CodiBancCmd
  loc_9BE2ED: CVarAd
  loc_9BE2F1: ParmAry1St
  loc_9BE2F7: FLdPr Me
  loc_9BE2FA: VCallAd Control_ID_FechMobaMsk
  loc_9BE2FD: CVarAd
  loc_9BE301: ParmAry1St
  loc_9BE307: FLdPr Me
  loc_9BE30A: VCallAd Control_ID_cmdCalFechMoba
  loc_9BE30D: CVarAd
  loc_9BE311: ParmAry1St
  loc_9BE317: FLdPr Me
  loc_9BE31A: VCallAd Control_ID_txtImporte
  loc_9BE31D: CVarAd
  loc_9BE321: ParmAry1St
  loc_9BE327: FLdPr Me
  loc_9BE32A: VCallAd Control_ID_chkMuestraalaOrden
  loc_9BE32D: CVarAd
  loc_9BE331: ParmAry1St
  loc_9BE337: FLdPr Me
  loc_9BE33A: VCallAd Control_ID_chkMuestraOrdendePago
  loc_9BE33D: CVarAd
  loc_9BE341: ParmAry1St
  loc_9BE347: FLdPr Me
  loc_9BE34A: VCallAd Control_ID_chkExcluirFeco
  loc_9BE34D: CVarAd
  loc_9BE351: ParmAry1St
  loc_9BE357: FLdRfVar var_88
  loc_9BE35A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9BE35F: FLdRfVar var_88
  loc_9BE362: Erase
  loc_9BE363: ExitProcHresult
End Sub

Public Sub GeneraReporte(arg_1C) 'B731FC
  'Data Table: 49BA1C
  loc_B72590: OnErrorGoto loc_B73196
  loc_B72593: FLdPr Me
  loc_B72596: MemLdI2 bGenerado
  loc_B72599: BranchF loc_B7259D
  loc_B7259C: ExitProcHresult
  loc_B7259D: LitVarStr var_94, "Generando reporte..."
  loc_B725A2: PopAdLdVar
  loc_B725A3: FLdPr Me
  loc_B725A6: VCallAd Control_ID_statusBar
  loc_B725A9: FStAdFunc var_A8
  loc_B725AC: FLdPr var_A8
  loc_B725AF: LateIdSt
  loc_B725B4: FFree1Ad var_A8
  loc_B725B7: LitI4 &HB
  loc_B725BC: CI2I4
  loc_B725BD: FLdPr Me
  loc_B725C0: Me.MousePointer = from_stack_1
  loc_B725C5: LitStr vbNullString
  loc_B725C8: FLdPr Me
  loc_B725CB: MemStStrCopy
  loc_B725CF: LitI2_Byte 0
  loc_B725D1: PopTmpLdAd2 var_AA
  loc_B725D4: Call CodiBancMsk_UnknownEvent_8()
  loc_B725D9: FLdPr Me
  loc_B725DC: MemLdStr global_72
  loc_B725DF: LitStr vbNullString
  loc_B725E2: NeStr
  loc_B725E4: BranchF loc_B725EA
  loc_B725E7: Branch loc_B7316D
  loc_B725EA: LitI2_Byte 0
  loc_B725EC: PopTmpLdAd2 var_AA
  loc_B725EF: from_stack_2v = FechMobaMsk_UnknownEvent_8(from_stack_1v)
  loc_B725F4: FLdPr Me
  loc_B725F7: MemLdStr global_72
  loc_B725FA: LitStr vbNullString
  loc_B725FD: NeStr
  loc_B725FF: BranchF loc_B72605
  loc_B72602: Branch loc_B7316D
  loc_B72605: LitI2_Byte 0
  loc_B72607: PopTmpLdAd2 var_AA
  loc_B7260A: Call txtImporte_Validate(from_stack_1v)
  loc_B7260F: FLdPr Me
  loc_B72612: MemLdStr global_72
  loc_B72615: LitStr vbNullString
  loc_B72618: NeStr
  loc_B7261A: BranchF loc_B72620
  loc_B7261D: Branch loc_B7316D
  loc_B72620: FLdPr Me
  loc_B72623: VCallAd Control_ID_CodiBancMsk
  loc_B72626: FStAdFunc var_A8
  loc_B72629: FLdPr var_A8
  loc_B7262C: LateIdLdVar var_BC DispID_20 0
  loc_B72633: CStrVarTmp
  loc_B72634: FStStrNoPop var_C0
  loc_B72637: FLdPr Me
  loc_B7263A: MemStStrCopy
  loc_B7263E: FFree1Str var_C0
  loc_B72641: FFree1Ad var_A8
  loc_B72644: FFree1Var var_BC = ""
  loc_B72647: FLdPr Me
  loc_B7264A: VCallAd Control_ID_FechMobaMsk
  loc_B7264D: FStAdFunc var_A8
  loc_B72650: FLdPr var_A8
  loc_B72653: LateIdLdVar var_BC DispID_15 0
  loc_B7265A: PopAd
  loc_B7265C: LitI4 1
  loc_B72661: LitI4 1
  loc_B72666: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B7266B: FStVarCopyObj var_E0
  loc_B7266E: FLdRfVar var_E0
  loc_B72671: FLdRfVar var_BC
  loc_B72674: CStrVarTmp
  loc_B72675: FStStrNoPop var_C0
  loc_B72678: CDateStr
  loc_B7267A: CVarDate var_D0
  loc_B7267E: ImpAdCallI2 Format$(, )
  loc_B72683: FStStrNoPop var_E4
  loc_B72686: FLdPr Me
  loc_B72689: MemStStrCopy
  loc_B7268D: FFreeStr var_C0 = ""
  loc_B72694: FFree1Ad var_A8
  loc_B72697: FFreeVar var_BC = "": var_D0 = ""
  loc_B726A0: FLdRfVar var_C0
  loc_B726A3: FLdPr Me
  loc_B726A6: VCallAd Control_ID_txtImporte
  loc_B726A9: FStAdFunc var_A8
  loc_B726AC: FLdPr var_A8
  loc_B726AF:  = Me.Text
  loc_B726B4: ILdRf var_C0
  loc_B726B7: FLdPr Me
  loc_B726BA: MemStStrCopy
  loc_B726BE: FFree1Str var_C0
  loc_B726C1: FFree1Ad var_A8
  loc_B726C4: LitStr "0"
  loc_B726C7: FLdPr Me
  loc_B726CA: MemStStrCopy
  loc_B726CE: LitStr "0"
  loc_B726D1: FLdPr Me
  loc_B726D4: MemStStrCopy
  loc_B726D8: LitStr "0"
  loc_B726DB: FLdPr Me
  loc_B726DE: MemStStrCopy
  loc_B726E2: LitStr "0"
  loc_B726E5: FLdPr Me
  loc_B726E8: MemStStrCopy
  loc_B726EC: LitStr "0"
  loc_B726EF: FLdPr Me
  loc_B726F2: MemStStrCopy
  loc_B726F6: LitStr "0"
  loc_B726F9: FLdPr Me
  loc_B726FC: MemStStrCopy
  loc_B72700: LitStr "0"
  loc_B72703: FLdPr Me
  loc_B72706: MemStStrCopy
  loc_B7270A: LitI4 0
  loc_B7270F: LitI4 1
  loc_B72714: FLdPr Me
  loc_B72717: MemLdRfVar from_stack_1.global_88
  loc_B7271A: Redim
  loc_B72724: LitI2_Byte 0
  loc_B72726: FLdPr Me
  loc_B72729: MemStI2 global_148
  loc_B7272C: LitI2_Byte 0
  loc_B7272E: FLdPr Me
  loc_B72731: MemStI2 global_146
  loc_B72734: FLdPr Me
  loc_B72737: MemLdRfVar from_stack_1.global_80
  loc_B7273A: NewIfNullAd
  loc_B7273D: FStAd var_E8 
  loc_B72741: LitStr "SELECT FechMoba, mb.NumeMoba, mb.CodiTimb, DetaTimb, mb.NumeOrpa, DebeMoba, HabeMoba, IFNULL(OrdeCheq,DetaMoba) OrdeCheq, FecoMoba"
  loc_B72744: LitStr " FROM movibanco mb"
  loc_B72747: ConcatStr
  loc_B72748: FStStrNoPop var_C0
  loc_B7274B: LitStr " INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(mb.PeriInfo <= 2018,2018,mb.PeriInfo) AND tmb.CodiTimb = mb.CodiTimb"
  loc_B7274E: ConcatStr
  loc_B7274F: FStStrNoPop var_E4
  loc_B72752: LitStr " LEFT JOIN cheque c ON c.PeriInfo = mb.PeriInfo AND c.CodiBanc = mb.CodiBanc AND mb.FechMoba = IF(mb.CodiTimb=1,c.FechCheq,IF(mb.CodiTimb=2,c.FeanCheq,'')) AND c.NumeMoba = mb.NumeMoba"
  loc_B72755: ConcatStr
  loc_B72756: FStStrNoPop var_EC
  loc_B72759: LitStr " WHERE mb.CodiBanc = '"
  loc_B7275C: ConcatStr
  loc_B7275D: FStStrNoPop var_F0
  loc_B72760: FLdPr Me
  loc_B72763: MemLdStr global_128
  loc_B72766: ConcatStr
  loc_B72767: FStStrNoPop var_F4
  loc_B7276A: LitStr "' AND FechMoba <= "
  loc_B7276D: ConcatStr
  loc_B7276E: FStStrNoPop var_F8
  loc_B72771: FLdPr Me
  loc_B72774: MemLdStr global_132
  loc_B72777: ConcatStr
  loc_B72778: FStStrNoPop var_FC
  loc_B7277B: LitStr " AND (FecoMoba > "
  loc_B7277E: ConcatStr
  loc_B7277F: FStStrNoPop var_100
  loc_B72782: FLdPr Me
  loc_B72785: MemLdStr global_132
  loc_B72788: ConcatStr
  loc_B72789: FStStrNoPop var_104
  loc_B7278C: LitStr " OR FecoMoba IS NULL)"
  loc_B7278F: ConcatStr
  loc_B72790: FStStrNoPop var_108
  loc_B72793: LitStr " ORDER BY FechMoba, NumeMoba, mb.CodiTimb;"
  loc_B72796: ConcatStr
  loc_B72797: FStStrNoPop var_10C
  loc_B7279A: FLdPr var_E8
  loc_B7279D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B727A2: FFreeStr var_C0 = "": var_E4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_B727BB: FLdRfVar var_110
  loc_B727BE: FLdPr var_E8
  loc_B727C1: from_stack_1 = clsbase.RecordCount
  loc_B727C6: ILdRf var_110
  loc_B727C9: LitI4 0
  loc_B727CE: GtI4
  loc_B727CF: BranchF loc_B72B9C
  loc_B727D2: LitI4 0
  loc_B727D7: FLdRfVar var_110
  loc_B727DA: FLdPr var_E8
  loc_B727DD: from_stack_1 = clsbase.RecordCount
  loc_B727E2: ILdRf var_110
  loc_B727E5: FLdPr Me
  loc_B727E8: MemLdRfVar from_stack_1.global_88
  loc_B727EB: Redim
  loc_B727F5: FLdPr var_E8
  loc_B727F8: Call clsbase.MoveFirst()
  loc_B727FD: LitI2_Byte 1
  loc_B727FF: FLdPr Me
  loc_B72802: MemLdRfVar from_stack_1.global_96
  loc_B72805: FLdPr Me
  loc_B72808: MemLdStr global_88
  loc_B7280B: LitI2_Byte 1
  loc_B7280D: FnUBound
  loc_B7280F: CI2I4
  loc_B72810: ForI2 var_114
  loc_B72816: FLdRfVar var_11C
  loc_B72819: LitVarStr var_94, "FechMoba"
  loc_B7281E: PopAdLdVar
  loc_B7281F: FLdRfVar var_118
  loc_B72822: FLdRfVar var_A8
  loc_B72825: FLdPr var_E8
  loc_B72828: from_stack_1v = clsbase.RsFrmGet()
  loc_B7282D: FLdPr var_A8
  loc_B72830:  = Me.Fields
  loc_B72835: FLdPr var_118
  loc_B72838: from_stack_2 = Me.Item(from_stack_1)
  loc_B7283D: LitI2_Byte 0
  loc_B7283F: LitVar_Missing var_D0
  loc_B72842: LitI2_Byte 0
  loc_B72844: FLdZeroAd var_11C
  loc_B72847: CVarAd
  loc_B7284B: PopAdLdVar
  loc_B7284C: FLdPr Me
  loc_B7284F: MemLdI2 global_96
  loc_B72852: CI4UI1
  loc_B72853: FLdPr Me
  loc_B72856: MemLdStr global_88
  loc_B72859: AryLock
  loc_B7285C: Ary1LdPr
  loc_B7285D: MemLdRfVar from_stack_1.global_0
  loc_B72860: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72865: AryUnlock
  loc_B72868: FFreeAd var_A8 = ""
  loc_B7286F: FFreeVar var_BC = ""
  loc_B72876: FLdRfVar var_11C
  loc_B72879: LitVarStr var_94, "NumeMoba"
  loc_B7287E: PopAdLdVar
  loc_B7287F: FLdRfVar var_118
  loc_B72882: FLdRfVar var_A8
  loc_B72885: FLdPr var_E8
  loc_B72888: from_stack_1v = clsbase.RsFrmGet()
  loc_B7288D: FLdPr var_A8
  loc_B72890:  = Me.Fields
  loc_B72895: FLdPr var_118
  loc_B72898: from_stack_2 = Me.Item(from_stack_1)
  loc_B7289D: LitI2_Byte 0
  loc_B7289F: LitVar_Missing var_D0
  loc_B728A2: LitI2_Byte 0
  loc_B728A4: FLdZeroAd var_11C
  loc_B728A7: CVarAd
  loc_B728AB: PopAdLdVar
  loc_B728AC: FLdPr Me
  loc_B728AF: MemLdI2 global_96
  loc_B728B2: CI4UI1
  loc_B728B3: FLdPr Me
  loc_B728B6: MemLdStr global_88
  loc_B728B9: AryLock
  loc_B728BC: Ary1LdPr
  loc_B728BD: MemLdRfVar from_stack_1.global_4
  loc_B728C0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B728C5: AryUnlock
  loc_B728C8: FFreeAd var_A8 = ""
  loc_B728CF: FFreeVar var_BC = ""
  loc_B728D6: FLdRfVar var_11C
  loc_B728D9: LitVarStr var_94, "CodiTimb"
  loc_B728DE: PopAdLdVar
  loc_B728DF: FLdRfVar var_118
  loc_B728E2: FLdRfVar var_A8
  loc_B728E5: FLdPr var_E8
  loc_B728E8: from_stack_1v = clsbase.RsFrmGet()
  loc_B728ED: FLdPr var_A8
  loc_B728F0:  = Me.Fields
  loc_B728F5: FLdPr var_118
  loc_B728F8: from_stack_2 = Me.Item(from_stack_1)
  loc_B728FD: LitI2_Byte 0
  loc_B728FF: LitVar_Missing var_D0
  loc_B72902: LitI2_Byte 0
  loc_B72904: FLdZeroAd var_11C
  loc_B72907: CVarAd
  loc_B7290B: PopAdLdVar
  loc_B7290C: FLdPr Me
  loc_B7290F: MemLdI2 global_96
  loc_B72912: CI4UI1
  loc_B72913: FLdPr Me
  loc_B72916: MemLdStr global_88
  loc_B72919: AryLock
  loc_B7291C: Ary1LdPr
  loc_B7291D: MemLdRfVar from_stack_1.global_8
  loc_B72920: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72925: AryUnlock
  loc_B72928: FFreeAd var_A8 = ""
  loc_B7292F: FFreeVar var_BC = ""
  loc_B72936: FLdRfVar var_11C
  loc_B72939: LitVarStr var_94, "DetaTimb"
  loc_B7293E: PopAdLdVar
  loc_B7293F: FLdRfVar var_118
  loc_B72942: FLdRfVar var_A8
  loc_B72945: FLdPr var_E8
  loc_B72948: from_stack_1v = clsbase.RsFrmGet()
  loc_B7294D: FLdPr var_A8
  loc_B72950:  = Me.Fields
  loc_B72955: FLdPr var_118
  loc_B72958: from_stack_2 = Me.Item(from_stack_1)
  loc_B7295D: LitI2_Byte 0
  loc_B7295F: LitVar_Missing var_D0
  loc_B72962: LitI2_Byte 0
  loc_B72964: FLdZeroAd var_11C
  loc_B72967: CVarAd
  loc_B7296B: PopAdLdVar
  loc_B7296C: FLdPr Me
  loc_B7296F: MemLdI2 global_96
  loc_B72972: CI4UI1
  loc_B72973: FLdPr Me
  loc_B72976: MemLdStr global_88
  loc_B72979: AryLock
  loc_B7297C: Ary1LdPr
  loc_B7297D: MemLdRfVar from_stack_1.global_12
  loc_B72980: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72985: AryUnlock
  loc_B72988: FFreeAd var_A8 = ""
  loc_B7298F: FFreeVar var_BC = ""
  loc_B72996: FLdRfVar var_11C
  loc_B72999: LitVarStr var_94, "NumeOrpa"
  loc_B7299E: PopAdLdVar
  loc_B7299F: FLdRfVar var_118
  loc_B729A2: FLdRfVar var_A8
  loc_B729A5: FLdPr var_E8
  loc_B729A8: from_stack_1v = clsbase.RsFrmGet()
  loc_B729AD: FLdPr var_A8
  loc_B729B0:  = Me.Fields
  loc_B729B5: FLdPr var_118
  loc_B729B8: from_stack_2 = Me.Item(from_stack_1)
  loc_B729BD: LitI2_Byte 0
  loc_B729BF: LitVar_Missing var_D0
  loc_B729C2: LitI2_Byte 0
  loc_B729C4: FLdZeroAd var_11C
  loc_B729C7: CVarAd
  loc_B729CB: PopAdLdVar
  loc_B729CC: FLdPr Me
  loc_B729CF: MemLdI2 global_96
  loc_B729D2: CI4UI1
  loc_B729D3: FLdPr Me
  loc_B729D6: MemLdStr global_88
  loc_B729D9: AryLock
  loc_B729DC: Ary1LdPr
  loc_B729DD: MemLdRfVar from_stack_1.global_16
  loc_B729E0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B729E5: AryUnlock
  loc_B729E8: FFreeAd var_A8 = ""
  loc_B729EF: FFreeVar var_BC = ""
  loc_B729F6: FLdRfVar var_11C
  loc_B729F9: LitVarStr var_94, "OrdeCheq"
  loc_B729FE: PopAdLdVar
  loc_B729FF: FLdRfVar var_118
  loc_B72A02: FLdRfVar var_A8
  loc_B72A05: FLdPr var_E8
  loc_B72A08: from_stack_1v = clsbase.RsFrmGet()
  loc_B72A0D: FLdPr var_A8
  loc_B72A10:  = Me.Fields
  loc_B72A15: FLdPr var_118
  loc_B72A18: from_stack_2 = Me.Item(from_stack_1)
  loc_B72A1D: LitI2_Byte 0
  loc_B72A1F: LitVar_Missing var_D0
  loc_B72A22: LitI2_Byte 0
  loc_B72A24: FLdZeroAd var_11C
  loc_B72A27: CVarAd
  loc_B72A2B: PopAdLdVar
  loc_B72A2C: FLdPr Me
  loc_B72A2F: MemLdI2 global_96
  loc_B72A32: CI4UI1
  loc_B72A33: FLdPr Me
  loc_B72A36: MemLdStr global_88
  loc_B72A39: AryLock
  loc_B72A3C: Ary1LdPr
  loc_B72A3D: MemLdRfVar from_stack_1.global_20
  loc_B72A40: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72A45: AryUnlock
  loc_B72A48: FFreeAd var_A8 = ""
  loc_B72A4F: FFreeVar var_BC = ""
  loc_B72A56: FLdRfVar var_11C
  loc_B72A59: LitVarStr var_94, "DebeMoba"
  loc_B72A5E: PopAdLdVar
  loc_B72A5F: FLdRfVar var_118
  loc_B72A62: FLdRfVar var_A8
  loc_B72A65: FLdPr var_E8
  loc_B72A68: from_stack_1v = clsbase.RsFrmGet()
  loc_B72A6D: FLdPr var_A8
  loc_B72A70:  = Me.Fields
  loc_B72A75: FLdPr var_118
  loc_B72A78: from_stack_2 = Me.Item(from_stack_1)
  loc_B72A7D: LitI2_Byte 0
  loc_B72A7F: FLdPr Me
  loc_B72A82: MemLdRfVar from_stack_1.global_100
  loc_B72A85: CVarRef
  loc_B72A8A: LitI2_Byte &HFF
  loc_B72A8C: FLdZeroAd var_11C
  loc_B72A8F: CVarAd
  loc_B72A93: PopAdLdVar
  loc_B72A94: FLdPr Me
  loc_B72A97: MemLdI2 global_96
  loc_B72A9A: CI4UI1
  loc_B72A9B: FLdPr Me
  loc_B72A9E: MemLdStr global_88
  loc_B72AA1: AryLock
  loc_B72AA4: Ary1LdPr
  loc_B72AA5: MemLdRfVar from_stack_1.global_24
  loc_B72AA8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72AAD: AryUnlock
  loc_B72AB0: FFreeAd var_A8 = ""
  loc_B72AB7: FFree1Var var_BC = ""
  loc_B72ABA: FLdRfVar var_11C
  loc_B72ABD: LitVarStr var_94, "HabeMoba"
  loc_B72AC2: PopAdLdVar
  loc_B72AC3: FLdRfVar var_118
  loc_B72AC6: FLdRfVar var_A8
  loc_B72AC9: FLdPr var_E8
  loc_B72ACC: from_stack_1v = clsbase.RsFrmGet()
  loc_B72AD1: FLdPr var_A8
  loc_B72AD4:  = Me.Fields
  loc_B72AD9: FLdPr var_118
  loc_B72ADC: from_stack_2 = Me.Item(from_stack_1)
  loc_B72AE1: LitI2_Byte 0
  loc_B72AE3: FLdPr Me
  loc_B72AE6: MemLdRfVar from_stack_1.global_104
  loc_B72AE9: CVarRef
  loc_B72AEE: LitI2_Byte &HFF
  loc_B72AF0: FLdZeroAd var_11C
  loc_B72AF3: CVarAd
  loc_B72AF7: PopAdLdVar
  loc_B72AF8: FLdPr Me
  loc_B72AFB: MemLdI2 global_96
  loc_B72AFE: CI4UI1
  loc_B72AFF: FLdPr Me
  loc_B72B02: MemLdStr global_88
  loc_B72B05: AryLock
  loc_B72B08: Ary1LdPr
  loc_B72B09: MemLdRfVar from_stack_1.global_28
  loc_B72B0C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72B11: AryUnlock
  loc_B72B14: FFreeAd var_A8 = ""
  loc_B72B1B: FFree1Var var_BC = ""
  loc_B72B1E: FLdRfVar var_11C
  loc_B72B21: LitVarStr var_94, "FecoMoba"
  loc_B72B26: PopAdLdVar
  loc_B72B27: FLdRfVar var_118
  loc_B72B2A: FLdRfVar var_A8
  loc_B72B2D: FLdPr var_E8
  loc_B72B30: from_stack_1v = clsbase.RsFrmGet()
  loc_B72B35: FLdPr var_A8
  loc_B72B38:  = Me.Fields
  loc_B72B3D: FLdPr var_118
  loc_B72B40: from_stack_2 = Me.Item(from_stack_1)
  loc_B72B45: LitI2_Byte 0
  loc_B72B47: LitVar_Missing var_D0
  loc_B72B4A: LitI2_Byte 0
  loc_B72B4C: FLdZeroAd var_11C
  loc_B72B4F: CVarAd
  loc_B72B53: PopAdLdVar
  loc_B72B54: FLdPr Me
  loc_B72B57: MemLdI2 global_96
  loc_B72B5A: CI4UI1
  loc_B72B5B: FLdPr Me
  loc_B72B5E: MemLdStr global_88
  loc_B72B61: AryLock
  loc_B72B64: Ary1LdPr
  loc_B72B65: MemLdRfVar from_stack_1.global_32
  loc_B72B68: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72B6D: AryUnlock
  loc_B72B70: FFreeAd var_A8 = ""
  loc_B72B77: FFreeVar var_BC = ""
  loc_B72B7E: FLdPr var_E8
  loc_B72B81: Call clsbase.MoveSiguiente()
  loc_B72B86: FLdPr Me
  loc_B72B89: MemLdRfVar from_stack_1.global_96
  loc_B72B8C: NextI2 var_114, loc_B72816
  loc_B72B91: LitI2_Byte &HFF
  loc_B72B93: FLdPr Me
  loc_B72B96: MemStI2 global_148
  loc_B72B99: Branch loc_B72BDA
  loc_B72B9C: LitI2_Byte 0
  loc_B72B9E: LitVar_Missing var_BC
  loc_B72BA1: LitI2_Byte &HFF
  loc_B72BA3: LitVarI2 var_94, 0
  loc_B72BA8: PopAdLdVar
  loc_B72BA9: FLdPr Me
  loc_B72BAC: MemLdRfVar from_stack_1.global_100
  loc_B72BAF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72BB4: FFree1Var var_BC = ""
  loc_B72BB7: LitI2_Byte 0
  loc_B72BB9: LitVar_Missing var_BC
  loc_B72BBC: LitI2_Byte &HFF
  loc_B72BBE: LitVarI2 var_94, 0
  loc_B72BC3: PopAdLdVar
  loc_B72BC4: FLdPr Me
  loc_B72BC7: MemLdRfVar from_stack_1.global_104
  loc_B72BCA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72BCF: FFree1Var var_BC = ""
  loc_B72BD2: LitI2_Byte 0
  loc_B72BD4: FLdPr Me
  loc_B72BD7: MemStI2 global_146
  loc_B72BDA: LitStr "SELECT FechMoba, NumeMoba, '' CodiTimb, CONVERT(IF(DebeMoba!=0,'Débito extracto','Crédito extracto'), CHAR(100)) DetaTimb, DebeMoba, HabeMoba, DetaMoba OrdeCheq, FecoMoba"
  loc_B72BDD: LitStr " FROM moviextracto me"
  loc_B72BE0: ConcatStr
  loc_B72BE1: FStStrNoPop var_C0
  loc_B72BE4: LitStr " WHERE CodiBanc = '"
  loc_B72BE7: ConcatStr
  loc_B72BE8: FStStrNoPop var_E4
  loc_B72BEB: FLdPr Me
  loc_B72BEE: MemLdStr global_128
  loc_B72BF1: ConcatStr
  loc_B72BF2: FStStrNoPop var_EC
  loc_B72BF5: LitStr "' AND FechMoba <= "
  loc_B72BF8: ConcatStr
  loc_B72BF9: FStStrNoPop var_F0
  loc_B72BFC: FLdPr Me
  loc_B72BFF: MemLdStr global_132
  loc_B72C02: ConcatStr
  loc_B72C03: FStStrNoPop var_F4
  loc_B72C06: LitStr " AND (FecoMoba > "
  loc_B72C09: ConcatStr
  loc_B72C0A: FStStrNoPop var_F8
  loc_B72C0D: FLdPr Me
  loc_B72C10: MemLdStr global_132
  loc_B72C13: ConcatStr
  loc_B72C14: FStStrNoPop var_FC
  loc_B72C17: LitStr " OR FecoMoba IS NULL)"
  loc_B72C1A: ConcatStr
  loc_B72C1B: FStStrNoPop var_100
  loc_B72C1E: LitStr " ORDER BY FechMoba, NumeMoba;"
  loc_B72C21: ConcatStr
  loc_B72C22: FStStrNoPop var_104
  loc_B72C25: FLdPr var_E8
  loc_B72C28: Call clsbase.RedefineRS(from_stack_1v)
  loc_B72C2D: FFreeStr var_C0 = "": var_E4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B72C42: FLdRfVar var_110
  loc_B72C45: FLdPr var_E8
  loc_B72C48: from_stack_1 = clsbase.RecordCount
  loc_B72C4D: ILdRf var_110
  loc_B72C50: LitI4 0
  loc_B72C55: GtI4
  loc_B72C56: BranchF loc_B72FC3
  loc_B72C59: LitI4 0
  loc_B72C5E: FLdRfVar var_110
  loc_B72C61: FLdPr var_E8
  loc_B72C64: from_stack_1 = clsbase.RecordCount
  loc_B72C69: ILdRf var_110
  loc_B72C6C: FLdPr Me
  loc_B72C6F: MemLdRfVar from_stack_1.global_92
  loc_B72C72: Redim
  loc_B72C7C: FLdPr var_E8
  loc_B72C7F: Call clsbase.MoveFirst()
  loc_B72C84: LitI2_Byte 1
  loc_B72C86: FLdPr Me
  loc_B72C89: MemLdRfVar from_stack_1.global_96
  loc_B72C8C: FLdPr Me
  loc_B72C8F: MemLdStr global_92
  loc_B72C92: LitI2_Byte 1
  loc_B72C94: FnUBound
  loc_B72C96: CI2I4
  loc_B72C97: ForI2 var_124
  loc_B72C9D: FLdRfVar var_11C
  loc_B72CA0: LitVarStr var_94, "FechMoba"
  loc_B72CA5: PopAdLdVar
  loc_B72CA6: FLdRfVar var_118
  loc_B72CA9: FLdRfVar var_A8
  loc_B72CAC: FLdPr var_E8
  loc_B72CAF: from_stack_1v = clsbase.RsFrmGet()
  loc_B72CB4: FLdPr var_A8
  loc_B72CB7:  = Me.Fields
  loc_B72CBC: FLdPr var_118
  loc_B72CBF: from_stack_2 = Me.Item(from_stack_1)
  loc_B72CC4: LitI2_Byte 0
  loc_B72CC6: LitVar_Missing var_D0
  loc_B72CC9: LitI2_Byte 0
  loc_B72CCB: FLdZeroAd var_11C
  loc_B72CCE: CVarAd
  loc_B72CD2: PopAdLdVar
  loc_B72CD3: FLdPr Me
  loc_B72CD6: MemLdI2 global_96
  loc_B72CD9: CI4UI1
  loc_B72CDA: FLdPr Me
  loc_B72CDD: MemLdStr global_92
  loc_B72CE0: AryLock
  loc_B72CE3: Ary1LdPr
  loc_B72CE4: MemLdRfVar from_stack_1.global_0
  loc_B72CE7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72CEC: AryUnlock
  loc_B72CEF: FFreeAd var_A8 = ""
  loc_B72CF6: FFreeVar var_BC = ""
  loc_B72CFD: FLdRfVar var_11C
  loc_B72D00: LitVarStr var_94, "NumeMoba"
  loc_B72D05: PopAdLdVar
  loc_B72D06: FLdRfVar var_118
  loc_B72D09: FLdRfVar var_A8
  loc_B72D0C: FLdPr var_E8
  loc_B72D0F: from_stack_1v = clsbase.RsFrmGet()
  loc_B72D14: FLdPr var_A8
  loc_B72D17:  = Me.Fields
  loc_B72D1C: FLdPr var_118
  loc_B72D1F: from_stack_2 = Me.Item(from_stack_1)
  loc_B72D24: LitI2_Byte 0
  loc_B72D26: LitVar_Missing var_D0
  loc_B72D29: LitI2_Byte 0
  loc_B72D2B: FLdZeroAd var_11C
  loc_B72D2E: CVarAd
  loc_B72D32: PopAdLdVar
  loc_B72D33: FLdPr Me
  loc_B72D36: MemLdI2 global_96
  loc_B72D39: CI4UI1
  loc_B72D3A: FLdPr Me
  loc_B72D3D: MemLdStr global_92
  loc_B72D40: AryLock
  loc_B72D43: Ary1LdPr
  loc_B72D44: MemLdRfVar from_stack_1.global_4
  loc_B72D47: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72D4C: AryUnlock
  loc_B72D4F: FFreeAd var_A8 = ""
  loc_B72D56: FFreeVar var_BC = ""
  loc_B72D5D: FLdRfVar var_11C
  loc_B72D60: LitVarStr var_94, "CodiTimb"
  loc_B72D65: PopAdLdVar
  loc_B72D66: FLdRfVar var_118
  loc_B72D69: FLdRfVar var_A8
  loc_B72D6C: FLdPr var_E8
  loc_B72D6F: from_stack_1v = clsbase.RsFrmGet()
  loc_B72D74: FLdPr var_A8
  loc_B72D77:  = Me.Fields
  loc_B72D7C: FLdPr var_118
  loc_B72D7F: from_stack_2 = Me.Item(from_stack_1)
  loc_B72D84: LitI2_Byte 0
  loc_B72D86: LitVar_Missing var_D0
  loc_B72D89: LitI2_Byte 0
  loc_B72D8B: FLdZeroAd var_11C
  loc_B72D8E: CVarAd
  loc_B72D92: PopAdLdVar
  loc_B72D93: FLdPr Me
  loc_B72D96: MemLdI2 global_96
  loc_B72D99: CI4UI1
  loc_B72D9A: FLdPr Me
  loc_B72D9D: MemLdStr global_92
  loc_B72DA0: AryLock
  loc_B72DA3: Ary1LdPr
  loc_B72DA4: MemLdRfVar from_stack_1.global_8
  loc_B72DA7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72DAC: AryUnlock
  loc_B72DAF: FFreeAd var_A8 = ""
  loc_B72DB6: FFreeVar var_BC = ""
  loc_B72DBD: FLdRfVar var_11C
  loc_B72DC0: LitVarStr var_94, "DetaTimb"
  loc_B72DC5: PopAdLdVar
  loc_B72DC6: FLdRfVar var_118
  loc_B72DC9: FLdRfVar var_A8
  loc_B72DCC: FLdPr var_E8
  loc_B72DCF: from_stack_1v = clsbase.RsFrmGet()
  loc_B72DD4: FLdPr var_A8
  loc_B72DD7:  = Me.Fields
  loc_B72DDC: FLdPr var_118
  loc_B72DDF: from_stack_2 = Me.Item(from_stack_1)
  loc_B72DE4: LitI2_Byte 0
  loc_B72DE6: LitVar_Missing var_D0
  loc_B72DE9: LitI2_Byte 0
  loc_B72DEB: FLdZeroAd var_11C
  loc_B72DEE: CVarAd
  loc_B72DF2: PopAdLdVar
  loc_B72DF3: FLdPr Me
  loc_B72DF6: MemLdI2 global_96
  loc_B72DF9: CI4UI1
  loc_B72DFA: FLdPr Me
  loc_B72DFD: MemLdStr global_92
  loc_B72E00: AryLock
  loc_B72E03: Ary1LdPr
  loc_B72E04: MemLdRfVar from_stack_1.global_12
  loc_B72E07: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72E0C: AryUnlock
  loc_B72E0F: FFreeAd var_A8 = ""
  loc_B72E16: FFreeVar var_BC = ""
  loc_B72E1D: FLdRfVar var_11C
  loc_B72E20: LitVarStr var_94, "OrdeCheq"
  loc_B72E25: PopAdLdVar
  loc_B72E26: FLdRfVar var_118
  loc_B72E29: FLdRfVar var_A8
  loc_B72E2C: FLdPr var_E8
  loc_B72E2F: from_stack_1v = clsbase.RsFrmGet()
  loc_B72E34: FLdPr var_A8
  loc_B72E37:  = Me.Fields
  loc_B72E3C: FLdPr var_118
  loc_B72E3F: from_stack_2 = Me.Item(from_stack_1)
  loc_B72E44: LitI2_Byte 0
  loc_B72E46: LitVar_Missing var_D0
  loc_B72E49: LitI2_Byte 0
  loc_B72E4B: FLdZeroAd var_11C
  loc_B72E4E: CVarAd
  loc_B72E52: PopAdLdVar
  loc_B72E53: FLdPr Me
  loc_B72E56: MemLdI2 global_96
  loc_B72E59: CI4UI1
  loc_B72E5A: FLdPr Me
  loc_B72E5D: MemLdStr global_92
  loc_B72E60: AryLock
  loc_B72E63: Ary1LdPr
  loc_B72E64: MemLdRfVar from_stack_1.global_20
  loc_B72E67: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72E6C: AryUnlock
  loc_B72E6F: FFreeAd var_A8 = ""
  loc_B72E76: FFreeVar var_BC = ""
  loc_B72E7D: FLdRfVar var_11C
  loc_B72E80: LitVarStr var_94, "DebeMoba"
  loc_B72E85: PopAdLdVar
  loc_B72E86: FLdRfVar var_118
  loc_B72E89: FLdRfVar var_A8
  loc_B72E8C: FLdPr var_E8
  loc_B72E8F: from_stack_1v = clsbase.RsFrmGet()
  loc_B72E94: FLdPr var_A8
  loc_B72E97:  = Me.Fields
  loc_B72E9C: FLdPr var_118
  loc_B72E9F: from_stack_2 = Me.Item(from_stack_1)
  loc_B72EA4: LitI2_Byte 0
  loc_B72EA6: FLdPr Me
  loc_B72EA9: MemLdRfVar from_stack_1.global_108
  loc_B72EAC: CVarRef
  loc_B72EB1: LitI2_Byte &HFF
  loc_B72EB3: FLdZeroAd var_11C
  loc_B72EB6: CVarAd
  loc_B72EBA: PopAdLdVar
  loc_B72EBB: FLdPr Me
  loc_B72EBE: MemLdI2 global_96
  loc_B72EC1: CI4UI1
  loc_B72EC2: FLdPr Me
  loc_B72EC5: MemLdStr global_92
  loc_B72EC8: AryLock
  loc_B72ECB: Ary1LdPr
  loc_B72ECC: MemLdRfVar from_stack_1.global_24
  loc_B72ECF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72ED4: AryUnlock
  loc_B72ED7: FFreeAd var_A8 = ""
  loc_B72EDE: FFree1Var var_BC = ""
  loc_B72EE1: FLdRfVar var_11C
  loc_B72EE4: LitVarStr var_94, "HabeMoba"
  loc_B72EE9: PopAdLdVar
  loc_B72EEA: FLdRfVar var_118
  loc_B72EED: FLdRfVar var_A8
  loc_B72EF0: FLdPr var_E8
  loc_B72EF3: from_stack_1v = clsbase.RsFrmGet()
  loc_B72EF8: FLdPr var_A8
  loc_B72EFB:  = Me.Fields
  loc_B72F00: FLdPr var_118
  loc_B72F03: from_stack_2 = Me.Item(from_stack_1)
  loc_B72F08: LitI2_Byte 0
  loc_B72F0A: FLdPr Me
  loc_B72F0D: MemLdRfVar from_stack_1.global_112
  loc_B72F10: CVarRef
  loc_B72F15: LitI2_Byte &HFF
  loc_B72F17: FLdZeroAd var_11C
  loc_B72F1A: CVarAd
  loc_B72F1E: PopAdLdVar
  loc_B72F1F: FLdPr Me
  loc_B72F22: MemLdI2 global_96
  loc_B72F25: CI4UI1
  loc_B72F26: FLdPr Me
  loc_B72F29: MemLdStr global_92
  loc_B72F2C: AryLock
  loc_B72F2F: Ary1LdPr
  loc_B72F30: MemLdRfVar from_stack_1.global_28
  loc_B72F33: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72F38: AryUnlock
  loc_B72F3B: FFreeAd var_A8 = ""
  loc_B72F42: FFree1Var var_BC = ""
  loc_B72F45: FLdRfVar var_11C
  loc_B72F48: LitVarStr var_94, "FecoMoba"
  loc_B72F4D: PopAdLdVar
  loc_B72F4E: FLdRfVar var_118
  loc_B72F51: FLdRfVar var_A8
  loc_B72F54: FLdPr var_E8
  loc_B72F57: from_stack_1v = clsbase.RsFrmGet()
  loc_B72F5C: FLdPr var_A8
  loc_B72F5F:  = Me.Fields
  loc_B72F64: FLdPr var_118
  loc_B72F67: from_stack_2 = Me.Item(from_stack_1)
  loc_B72F6C: LitI2_Byte 0
  loc_B72F6E: LitVar_Missing var_D0
  loc_B72F71: LitI2_Byte 0
  loc_B72F73: FLdZeroAd var_11C
  loc_B72F76: CVarAd
  loc_B72F7A: PopAdLdVar
  loc_B72F7B: FLdPr Me
  loc_B72F7E: MemLdI2 global_96
  loc_B72F81: CI4UI1
  loc_B72F82: FLdPr Me
  loc_B72F85: MemLdStr global_92
  loc_B72F88: AryLock
  loc_B72F8B: Ary1LdPr
  loc_B72F8C: MemLdRfVar from_stack_1.global_32
  loc_B72F8F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72F94: AryUnlock
  loc_B72F97: FFreeAd var_A8 = ""
  loc_B72F9E: FFreeVar var_BC = ""
  loc_B72FA5: FLdPr var_E8
  loc_B72FA8: Call clsbase.MoveSiguiente()
  loc_B72FAD: FLdPr Me
  loc_B72FB0: MemLdRfVar from_stack_1.global_96
  loc_B72FB3: NextI2 var_124, loc_B72C9D
  loc_B72FB8: LitI2_Byte &HFF
  loc_B72FBA: FLdPr Me
  loc_B72FBD: MemStI2 global_146
  loc_B72FC0: Branch loc_B73001
  loc_B72FC3: LitI2_Byte 0
  loc_B72FC5: LitVar_Missing var_BC
  loc_B72FC8: LitI2_Byte &HFF
  loc_B72FCA: LitVarI2 var_94, 0
  loc_B72FCF: PopAdLdVar
  loc_B72FD0: FLdPr Me
  loc_B72FD3: MemLdRfVar from_stack_1.global_108
  loc_B72FD6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72FDB: FFree1Var var_BC = ""
  loc_B72FDE: LitI2_Byte 0
  loc_B72FE0: LitVar_Missing var_BC
  loc_B72FE3: LitI2_Byte &HFF
  loc_B72FE5: LitVarI2 var_94, 0
  loc_B72FEA: PopAdLdVar
  loc_B72FEB: FLdPr Me
  loc_B72FEE: MemLdRfVar from_stack_1.global_112
  loc_B72FF1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B72FF6: FFree1Var var_BC = ""
  loc_B72FF9: LitI2_Byte 0
  loc_B72FFB: FLdPr Me
  loc_B72FFE: MemStI2 global_146
  loc_B73001: FLdPr Me
  loc_B73004: MemLdRfVar from_stack_1.global_132
  loc_B73007: FLdPr Me
  loc_B7300A: MemLdRfVar from_stack_1.global_76
  loc_B7300D: NewIfNullRf
  loc_B73011: FLdPr Me
  loc_B73014: MemLdStr global_128
  loc_B73017: ImpAdLdI2 MemVar_C3D064
  loc_B7301A: CStrUI1
  loc_B7301C: FStStrNoPop var_C0
  loc_B7301F: ImpAdCallFPR4 Proc_259_5_B268F0(, , , )
  loc_B73024: FFree1Str var_C0
  loc_B73027: FLdRfVar var_C0
  loc_B7302A: FLdPr Me
  loc_B7302D: MemLdRfVar from_stack_1.global_76
  loc_B73030: NewIfNullPr tblbanco
  loc_B73033: from_stack_1v = tblbanco.SaldAlIniGet()
  loc_B73038: LitI2_Byte 0
  loc_B7303A: LitVar_Missing var_D0
  loc_B7303D: LitI2_Byte &HFF
  loc_B7303F: FLdZeroAd var_C0
  loc_B73042: CVarStr var_BC
  loc_B73045: PopAdLdVar
  loc_B73046: FLdPr Me
  loc_B73049: MemLdRfVar from_stack_1.global_116
  loc_B7304C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B73051: FFreeVar var_BC = ""
  loc_B73058: LitNothing
  loc_B7305A: FStAd var_E8 
  loc_B7305E: LitI2_Byte 0
  loc_B73060: LitVar_Missing var_BC
  loc_B73063: LitI2_Byte &HFF
  loc_B73065: FLdPr Me
  loc_B73068: MemLdStr global_116
  loc_B7306B: CVarStr var_94
  loc_B7306E: PopAdLdVar
  loc_B7306F: FLdPr Me
  loc_B73072: MemLdRfVar from_stack_1.global_120
  loc_B73075: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7307A: FFree1Var var_BC = ""
  loc_B7307D: LitI2_Byte 0
  loc_B7307F: FLdPr Me
  loc_B73082: MemLdRfVar from_stack_1.global_120
  loc_B73085: CVarRef
  loc_B7308A: LitI2_Byte &HFF
  loc_B7308C: LitI2_Byte &HFF
  loc_B7308E: CR8I2
  loc_B7308F: FLdPr Me
  loc_B73092: MemLdStr global_100
  loc_B73095: CR8Str
  loc_B73097: MulR8
  loc_B73098: CVarR8
  loc_B7309C: PopAdLdVar
  loc_B7309D: FLdPr Me
  loc_B730A0: MemLdRfVar from_stack_1.global_140
  loc_B730A3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B730A8: LitI2_Byte 0
  loc_B730AA: FLdPr Me
  loc_B730AD: MemLdRfVar from_stack_1.global_120
  loc_B730B0: CVarRef
  loc_B730B5: LitI2_Byte &HFF
  loc_B730B7: FLdPr Me
  loc_B730BA: MemLdStr global_104
  loc_B730BD: CVarStr var_94
  loc_B730C0: PopAdLdVar
  loc_B730C1: FLdPr Me
  loc_B730C4: MemLdRfVar from_stack_1.global_140
  loc_B730C7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B730CC: LitI2_Byte 0
  loc_B730CE: FLdPr Me
  loc_B730D1: MemLdRfVar from_stack_1.global_120
  loc_B730D4: CVarRef
  loc_B730D9: LitI2_Byte &HFF
  loc_B730DB: LitI2_Byte &HFF
  loc_B730DD: CR8I2
  loc_B730DE: FLdPr Me
  loc_B730E1: MemLdStr global_112
  loc_B730E4: CR8Str
  loc_B730E6: MulR8
  loc_B730E7: CVarR8
  loc_B730EB: PopAdLdVar
  loc_B730EC: FLdPr Me
  loc_B730EF: MemLdRfVar from_stack_1.global_140
  loc_B730F2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B730F7: LitI2_Byte 0
  loc_B730F9: FLdPr Me
  loc_B730FC: MemLdRfVar from_stack_1.global_120
  loc_B730FF: CVarRef
  loc_B73104: LitI2_Byte &HFF
  loc_B73106: FLdPr Me
  loc_B73109: MemLdStr global_108
  loc_B7310C: CVarStr var_94
  loc_B7310F: PopAdLdVar
  loc_B73110: FLdPr Me
  loc_B73113: MemLdRfVar from_stack_1.global_140
  loc_B73116: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B7311B: LitI2_Byte 0
  loc_B7311D: LitVar_Missing var_BC
  loc_B73120: LitI2_Byte &HFF
  loc_B73122: FLdPr Me
  loc_B73125: MemLdStr global_120
  loc_B73128: CVarStr var_94
  loc_B7312B: PopAdLdVar
  loc_B7312C: FLdPr Me
  loc_B7312F: MemLdRfVar from_stack_1.global_124
  loc_B73132: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B73137: FFree1Var var_BC = ""
  loc_B7313A: LitI2_Byte 0
  loc_B7313C: FLdPr Me
  loc_B7313F: MemLdRfVar from_stack_1.global_124
  loc_B73142: CVarRef
  loc_B73147: LitI2_Byte &HFF
  loc_B73149: LitI2_Byte &HFF
  loc_B7314B: CR8I2
  loc_B7314C: FLdPr Me
  loc_B7314F: MemLdStr global_136
  loc_B73152: CR8Str
  loc_B73154: MulR8
  loc_B73155: CVarR8
  loc_B73159: PopAdLdVar
  loc_B7315A: FLdPr Me
  loc_B7315D: MemLdRfVar from_stack_1.global_140
  loc_B73160: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B73165: LitI2_Byte &HFF
  loc_B73167: FLdPr Me
  loc_B7316A: MemStI2 bGenerado
  loc_B7316D: LitI4 0
  loc_B73172: CI2I4
  loc_B73173: FLdPr Me
  loc_B73176: Me.MousePointer = from_stack_1
  loc_B7317B: LitVarStr var_94, vbNullString
  loc_B73180: PopAdLdVar
  loc_B73181: FLdPr Me
  loc_B73184: VCallAd Control_ID_statusBar
  loc_B73187: FStAdFunc var_A8
  loc_B7318A: FLdPr var_A8
  loc_B7318D: LateIdSt
  loc_B73192: FFree1Ad var_A8
  loc_B73195: ExitProcHresult
  loc_B73196: LitI4 0
  loc_B7319B: LitStr "Error "
  loc_B7319E: FLdRfVar var_110
  loc_B731A1: ImpAdCallI2 Err 'rtcErrObj
  loc_B731A6: FStAdFunc var_A8
  loc_B731A9: FLdPr var_A8
  loc_B731AC:  = Err.Number
  loc_B731B1: ILdRf var_110
  loc_B731B4: CStrI4
  loc_B731B6: FStStrNoPop var_C0
  loc_B731B9: ConcatStr
  loc_B731BA: FStStrNoPop var_E4
  loc_B731BD: LitStr ": "
  loc_B731C0: ConcatStr
  loc_B731C1: FStStrNoPop var_F0
  loc_B731C4: FLdRfVar var_EC
  loc_B731C7: ImpAdCallI2 Err 'rtcErrObj
  loc_B731CC: FStAdFunc var_118
  loc_B731CF: FLdPr var_118
  loc_B731D2:  = Err.Description
  loc_B731D7: ILdRf var_EC
  loc_B731DA: ConcatStr
  loc_B731DB: FStStrNoPop var_F4
  loc_B731DE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B731E3: FFreeStr var_C0 = "": var_E4 = "": var_F0 = "": var_EC = ""
  loc_B731F0: FFreeAd var_A8 = ""
  loc_B731F7: ExitProcHresult
  loc_B731F8: ExitProcHresult
  loc_B731F9: ILdI2 arg_1C
End Sub

Public Sub GeneraXLS(arg_20) 'BBC31C
  'Data Table: 49BA1C
  loc_BBB248: ImpAdLdI4 MemVar_C3D05C
  loc_BBB24B: FStStrCopy var_88
  loc_BBB24E: LitI4 0
  loc_BBB253: LitStr "Excel.Application"
  loc_BBB256: FLdRfVar var_C4
  loc_BBB259: ImpAdCallFPR4  = CreateObject(, )
  loc_BBB25E: FLdRfVar var_C4
  loc_BBB261: FLdRfVar var_98
  loc_BBB264: SetVarVarFunc
  loc_BBB266: FLdRfVar var_98
  loc_BBB269: VarLateMemLdVar var_C4, .Workbooks
  loc_BBB26F: CastAdVar Me
  loc_BBB273: FStAdFunc var_9C
  loc_BBB276: FFree1Var var_C4 = ""
  loc_BBB279: FLdRfVar var_F0
  loc_BBB27C: LitVarI2 var_EC, 1
  loc_BBB281: PopAdLdVar
  loc_BBB282: FLdRfVar var_DC
  loc_BBB285: FLdRfVar var_D8
  loc_BBB288: LitI4 &H409
  loc_BBB28D: LitVar_Missing var_D4
  loc_BBB290: PopAdLdVar
  loc_BBB291: FLdPr var_9C
  loc_BBB294:  = Forms
  loc_BBB299: FLdPr var_D8
  loc_BBB29C: Call 0.Method_arg_20C ()
  loc_BBB2A1: FLdPr var_DC
  loc_BBB2A4: Me.BackColor = from_stack_1
  loc_BBB2A9: ILdRf var_F0
  loc_BBB2AC: CastAd
  loc_BBB2AF: FStAdFunc var_A0
  loc_BBB2B2: FFreeAd var_D8 = "": var_DC = ""
  loc_BBB2BB: LitVar_TRUE var_D4
  loc_BBB2BE: PopAdLdVar
  loc_BBB2BF: FLdRfVar var_98
  loc_BBB2C2: VarLateMemSt .Visible
  loc_BBB2C6: LitVarI2 var_D4, 1
  loc_BBB2CB: PopAdLdVar
  loc_BBB2CC: LitVarI2 var_100, 1
  loc_BBB2D1: PopAdLdVar
  loc_BBB2D2: LitVarStr var_120, "Fecha"
  loc_BBB2D7: PopAdLdVar
  loc_BBB2D8: FLdRfVar var_D8
  loc_BBB2DB: FLdPr var_A0
  loc_BBB2DE:  = Me.FontUnderline
  loc_BBB2E3: FLdPr var_D8
  loc_BBB2E6: LateIdCallSt
  loc_BBB2EE: FFree1Ad var_D8
  loc_BBB2F1: LitVarI2 var_D4, 1
  loc_BBB2F6: PopAdLdVar
  loc_BBB2F7: LitVarI2 var_100, 2
  loc_BBB2FC: PopAdLdVar
  loc_BBB2FD: LitVarStr var_120, "Comprobante"
  loc_BBB302: PopAdLdVar
  loc_BBB303: FLdRfVar var_D8
  loc_BBB306: FLdPr var_A0
  loc_BBB309:  = Me.FontUnderline
  loc_BBB30E: FLdPr var_D8
  loc_BBB311: LateIdCallSt
  loc_BBB319: FFree1Ad var_D8
  loc_BBB31C: LitVarI2 var_D4, 1
  loc_BBB321: PopAdLdVar
  loc_BBB322: LitVarI2 var_100, 3
  loc_BBB327: PopAdLdVar
  loc_BBB328: LitVarStr var_120, "Tipo de movimiento"
  loc_BBB32D: PopAdLdVar
  loc_BBB32E: FLdRfVar var_D8
  loc_BBB331: FLdPr var_A0
  loc_BBB334:  = Me.FontUnderline
  loc_BBB339: FLdPr var_D8
  loc_BBB33C: LateIdCallSt
  loc_BBB344: FFree1Ad var_D8
  loc_BBB347: LitVarI2 var_D4, 1
  loc_BBB34C: PopAdLdVar
  loc_BBB34D: LitVarI2 var_100, 4
  loc_BBB352: PopAdLdVar
  loc_BBB353: LitVarStr var_120, "Débitos"
  loc_BBB358: PopAdLdVar
  loc_BBB359: FLdRfVar var_D8
  loc_BBB35C: FLdPr var_A0
  loc_BBB35F:  = Me.FontUnderline
  loc_BBB364: FLdPr var_D8
  loc_BBB367: LateIdCallSt
  loc_BBB36F: FFree1Ad var_D8
  loc_BBB372: LitVarI2 var_D4, 1
  loc_BBB377: PopAdLdVar
  loc_BBB378: LitVarI2 var_100, 5
  loc_BBB37D: PopAdLdVar
  loc_BBB37E: LitVarStr var_120, "Créditos"
  loc_BBB383: PopAdLdVar
  loc_BBB384: FLdRfVar var_D8
  loc_BBB387: FLdPr var_A0
  loc_BBB38A:  = Me.FontUnderline
  loc_BBB38F: FLdPr var_D8
  loc_BBB392: LateIdCallSt
  loc_BBB39A: FFree1Ad var_D8
  loc_BBB39D: FLdPr Me
  loc_BBB3A0: VCallAd Control_ID_chkMuestraOrdendePago
  loc_BBB3A3: CVarAd
  loc_BBB3A7: CBoolVarNull
  loc_BBB3A9: FFree1Var var_C4 = ""
  loc_BBB3AC: BranchF loc_BBB3DA
  loc_BBB3AF: LitVarI2 var_D4, 1
  loc_BBB3B4: PopAdLdVar
  loc_BBB3B5: LitVarI2 var_100, 6
  loc_BBB3BA: PopAdLdVar
  loc_BBB3BB: LitVarStr var_120, "Orden de Pago"
  loc_BBB3C0: PopAdLdVar
  loc_BBB3C1: FLdRfVar var_D8
  loc_BBB3C4: FLdPr var_A0
  loc_BBB3C7:  = Me.FontUnderline
  loc_BBB3CC: FLdPr var_D8
  loc_BBB3CF: LateIdCallSt
  loc_BBB3D7: FFree1Ad var_D8
  loc_BBB3DA: LitVar_TRUE var_100
  loc_BBB3DD: PopAdLdVar
  loc_BBB3DE: FLdRfVar var_D8
  loc_BBB3E1: LitVar_Missing var_EC
  loc_BBB3E4: PopAdLdVar
  loc_BBB3E5: LitVarStr var_D4, "A1:E1"
  loc_BBB3EA: PopAdLdVar
  loc_BBB3EB: FLdPr var_A0
  loc_BBB3EE:  = Me.Image
  loc_BBB3F3: FLdPr var_D8
  loc_BBB3F6: LateIdLdVar var_C4 DispID_146 0
  loc_BBB3FD: CastAdVar Me
  loc_BBB401: FStAdFunc var_DC
  loc_BBB404: FLdPr var_DC
  loc_BBB407: LateIdSt
  loc_BBB40C: FFreeAd var_D8 = ""
  loc_BBB413: FFree1Var var_C4 = ""
  loc_BBB416: LitI2_Byte 3
  loc_BBB418: FStI2 var_A2
  loc_BBB41B: FLdPr Me
  loc_BBB41E: MemLdI2 global_148
  loc_BBB421: BranchF loc_BBB8F2
  loc_BBB424: FLdI2 var_A2
  loc_BBB427: CVarI2 var_D4
  loc_BBB42A: PopAdLdVar
  loc_BBB42B: LitVarI2 var_100, 1
  loc_BBB430: PopAdLdVar
  loc_BBB431: LitVarStr var_120, "Detalle de débitos/créditos no conciliados"
  loc_BBB436: PopAdLdVar
  loc_BBB437: FLdRfVar var_D8
  loc_BBB43A: FLdPr var_A0
  loc_BBB43D:  = Me.FontUnderline
  loc_BBB442: FLdPr var_D8
  loc_BBB445: LateIdCallSt
  loc_BBB44D: FFree1Ad var_D8
  loc_BBB450: FLdRfVar var_D8
  loc_BBB453: LitVar_Missing var_D4
  loc_BBB456: PopAdLdVar
  loc_BBB457: LitStr "A"
  loc_BBB45A: FLdI2 var_A2
  loc_BBB45D: CStrUI1
  loc_BBB45F: FStStrNoPop var_134
  loc_BBB462: ConcatStr
  loc_BBB463: FStStrNoPop var_138
  loc_BBB466: LitStr ":E"
  loc_BBB469: ConcatStr
  loc_BBB46A: FStStrNoPop var_13C
  loc_BBB46D: FLdI2 var_A2
  loc_BBB470: CStrUI1
  loc_BBB472: FStStrNoPop var_140
  loc_BBB475: ConcatStr
  loc_BBB476: CVarStr var_C4
  loc_BBB479: PopAdLdVar
  loc_BBB47A: FLdPr var_A0
  loc_BBB47D:  = Me.Image
  loc_BBB482: FLdZeroAd var_D8
  loc_BBB485: FStAdFunc var_144
  loc_BBB488: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BBB493: FFree1Var var_C4 = ""
  loc_BBB496: LitVar_TRUE var_D4
  loc_BBB499: PopAdLdVar
  loc_BBB49A: FLdPr var_144
  loc_BBB49D: LateIdLdVar var_C4 DispID_146 0
  loc_BBB4A4: CastAdVar Me
  loc_BBB4A8: FStAdFunc var_D8
  loc_BBB4AB: FLdPr var_D8
  loc_BBB4AE: LateIdSt
  loc_BBB4B3: FFree1Ad var_D8
  loc_BBB4B6: FFree1Var var_C4 = ""
  loc_BBB4B9: LitVarI4
  loc_BBB4C1: PopAdLdVar
  loc_BBB4C2: FLdPr var_144
  loc_BBB4C5: LateIdSt
  loc_BBB4CA: LitVarI4
  loc_BBB4D2: PopAdLdVar
  loc_BBB4D3: FLdPr var_144
  loc_BBB4D6: LateIdSt
  loc_BBB4DB: LitVar_TRUE var_D4
  loc_BBB4DE: PopAdLdVar
  loc_BBB4DF: FLdPr var_144
  loc_BBB4E2: LateIdSt
  loc_BBB4E7: LitNothing
  loc_BBB4E9: FStAd var_144 
  loc_BBB4ED: LitI2_Byte 1
  loc_BBB4EF: FLdPr Me
  loc_BBB4F2: MemLdRfVar from_stack_1.global_96
  loc_BBB4F5: FLdPr Me
  loc_BBB4F8: MemLdStr global_88
  loc_BBB4FB: LitI2_Byte 1
  loc_BBB4FD: FnUBound
  loc_BBB4FF: CI2I4
  loc_BBB500: ForI2 var_148
  loc_BBB506: FLdPr Me
  loc_BBB509: MemLdI2 global_96
  loc_BBB50C: CI4UI1
  loc_BBB50D: FLdPr Me
  loc_BBB510: MemLdStr global_88
  loc_BBB513: AryLock
  loc_BBB516: Ary1LdRf
  loc_BBB517: FStR4 var_150
  loc_BBB51A: FLdI2 var_A2
  loc_BBB51D: FLdPr Me
  loc_BBB520: MemLdI2 global_96
  loc_BBB523: AddI2
  loc_BBB524: CVarI2 var_D4
  loc_BBB527: PopAdLdVar
  loc_BBB528: LitVarI2 var_100, 1
  loc_BBB52D: PopAdLdVar
  loc_BBB52E: FMemLdR4 var_150(0)
  loc_BBB533: CDateStr
  loc_BBB535: CVarDate var_120
  loc_BBB539: PopAdLdVar
  loc_BBB53A: FLdRfVar var_D8
  loc_BBB53D: FLdPr var_A0
  loc_BBB540:  = Me.FontUnderline
  loc_BBB545: FLdPr var_D8
  loc_BBB548: LateIdCallSt
  loc_BBB550: FFree1Ad var_D8
  loc_BBB553: FLdI2 var_A2
  loc_BBB556: FLdPr Me
  loc_BBB559: MemLdI2 global_96
  loc_BBB55C: AddI2
  loc_BBB55D: CVarI2 var_D4
  loc_BBB560: PopAdLdVar
  loc_BBB561: LitVarI2 var_100, 2
  loc_BBB566: PopAdLdVar
  loc_BBB567: FMemLdR4 var_150(4)
  loc_BBB56C: ImpAdCallFPR4 Proc_261_39_97BBF8()
  loc_BBB571: CVarR8
  loc_BBB575: PopAdLdVar
  loc_BBB576: FLdRfVar var_D8
  loc_BBB579: FLdPr var_A0
  loc_BBB57C:  = Me.FontUnderline
  loc_BBB581: FLdPr var_D8
  loc_BBB584: LateIdCallSt
  loc_BBB58C: FFree1Ad var_D8
  loc_BBB58F: FLdI2 var_A2
  loc_BBB592: FLdPr Me
  loc_BBB595: MemLdI2 global_96
  loc_BBB598: AddI2
  loc_BBB599: CVarI2 var_D4
  loc_BBB59C: PopAdLdVar
  loc_BBB59D: LitVarI2 var_100, 3
  loc_BBB5A2: PopAdLdVar
  loc_BBB5A3: FMemLdR4 var_150(8)
  loc_BBB5A8: LitStr " - "
  loc_BBB5AB: ConcatStr
  loc_BBB5AC: FStStrNoPop var_134
  loc_BBB5AF: FMemLdR4 var_150(12)
  loc_BBB5B4: ConcatStr
  loc_BBB5B5: CVarStr var_C4
  loc_BBB5B8: PopAdLdVar
  loc_BBB5B9: FLdRfVar var_D8
  loc_BBB5BC: FLdPr var_A0
  loc_BBB5BF:  = Me.FontUnderline
  loc_BBB5C4: FLdPr var_D8
  loc_BBB5C7: LateIdCallSt
  loc_BBB5CF: FFree1Str var_134
  loc_BBB5D2: FFree1Ad var_D8
  loc_BBB5D5: FFree1Var var_C4 = ""
  loc_BBB5D8: FLdI2 var_A2
  loc_BBB5DB: FLdPr Me
  loc_BBB5DE: MemLdI2 global_96
  loc_BBB5E1: AddI2
  loc_BBB5E2: CVarI2 var_D4
  loc_BBB5E5: PopAdLdVar
  loc_BBB5E6: LitVarI2 var_100, 4
  loc_BBB5EB: PopAdLdVar
  loc_BBB5EC: FMemLdR4 var_150(24)
  loc_BBB5F1: ImpAdCallFPR4 Proc_261_39_97BBF8()
  loc_BBB5F6: CVarR8
  loc_BBB5FA: PopAdLdVar
  loc_BBB5FB: FLdRfVar var_D8
  loc_BBB5FE: FLdPr var_A0
  loc_BBB601:  = Me.FontUnderline
  loc_BBB606: FLdPr var_D8
  loc_BBB609: LateIdCallSt
  loc_BBB611: FFree1Ad var_D8
  loc_BBB614: FLdI2 var_A2
  loc_BBB617: FLdPr Me
  loc_BBB61A: MemLdI2 global_96
  loc_BBB61D: AddI2
  loc_BBB61E: CVarI2 var_D4
  loc_BBB621: PopAdLdVar
  loc_BBB622: LitVarI2 var_100, 5
  loc_BBB627: PopAdLdVar
  loc_BBB628: FMemLdR4 var_150(28)
  loc_BBB62D: ImpAdCallFPR4 Proc_261_39_97BBF8()
  loc_BBB632: CVarR8
  loc_BBB636: PopAdLdVar
  loc_BBB637: FLdRfVar var_D8
  loc_BBB63A: FLdPr var_A0
  loc_BBB63D:  = Me.FontUnderline
  loc_BBB642: FLdPr var_D8
  loc_BBB645: LateIdCallSt
  loc_BBB64D: FFree1Ad var_D8
  loc_BBB650: FLdPr Me
  loc_BBB653: VCallAd Control_ID_chkMuestraOrdendePago
  loc_BBB656: CVarAd
  loc_BBB65A: CBoolVarNull
  loc_BBB65C: FFree1Var var_C4 = ""
  loc_BBB65F: BranchF loc_BBB69E
  loc_BBB662: FLdI2 var_A2
  loc_BBB665: FLdPr Me
  loc_BBB668: MemLdI2 global_96
  loc_BBB66B: AddI2
  loc_BBB66C: CVarI2 var_D4
  loc_BBB66F: PopAdLdVar
  loc_BBB670: LitVarI2 var_100, 6
  loc_BBB675: PopAdLdVar
  loc_BBB676: FMemLdR4 var_150(16)
  loc_BBB67B: ImpAdCallFPR4 Proc_261_39_97BBF8()
  loc_BBB680: CVarR8
  loc_BBB684: PopAdLdVar
  loc_BBB685: FLdRfVar var_D8
  loc_BBB688: FLdPr var_A0
  loc_BBB68B:  = Me.FontUnderline
  loc_BBB690: FLdPr var_D8
  loc_BBB693: LateIdCallSt
  loc_BBB69B: FFree1Ad var_D8
  loc_BBB69E: LitI4 0
  loc_BBB6A3: FStR4 var_150
  loc_BBB6A6: AryUnlock
  loc_BBB6A9: FLdPr Me
  loc_BBB6AC: MemLdRfVar from_stack_1.global_96
  loc_BBB6AF: NextI2 var_148, loc_BBB506
  loc_BBB6B4: FLdI2 var_A2
  loc_BBB6B7: FLdPr Me
  loc_BBB6BA: MemLdI2 global_96
  loc_BBB6BD: AddI2
  loc_BBB6BE: CVarI2 var_D4
  loc_BBB6C1: PopAdLdVar
  loc_BBB6C2: LitVarI2 var_100, 1
  loc_BBB6C7: PopAdLdVar
  loc_BBB6C8: LitVarStr var_120, "Total de débitos/créditos no conciliados:"
  loc_BBB6CD: PopAdLdVar
  loc_BBB6CE: FLdRfVar var_D8
  loc_BBB6D1: FLdPr var_A0
  loc_BBB6D4:  = Me.FontUnderline
  loc_BBB6D9: FLdPr var_D8
  loc_BBB6DC: LateIdCallSt
  loc_BBB6E4: FFree1Ad var_D8
  loc_BBB6E7: FLdRfVar var_D8
  loc_BBB6EA: LitVar_Missing var_D4
  loc_BBB6ED: PopAdLdVar
  loc_BBB6EE: LitStr "A"
  loc_BBB6F1: FLdI2 var_A2
  loc_BBB6F4: FLdPr Me
  loc_BBB6F7: MemLdI2 global_96
  loc_BBB6FA: AddI2
  loc_BBB6FB: CStrUI1
  loc_BBB6FD: FStStrNoPop var_134
  loc_BBB700: ConcatStr
  loc_BBB701: FStStrNoPop var_138
  loc_BBB704: LitStr ":C"
  loc_BBB707: ConcatStr
  loc_BBB708: FStStrNoPop var_13C
  loc_BBB70B: FLdI2 var_A2
  loc_BBB70E: FLdPr Me
  loc_BBB711: MemLdI2 global_96
  loc_BBB714: AddI2
  loc_BBB715: CStrUI1
  loc_BBB717: FStStrNoPop var_140
  loc_BBB71A: ConcatStr
  loc_BBB71B: CVarStr var_C4
  loc_BBB71E: PopAdLdVar
  loc_BBB71F: FLdPr var_A0
  loc_BBB722:  = Me.Image
  loc_BBB727: FLdZeroAd var_D8
  loc_BBB72A: FStAdFunc var_154
  loc_BBB72D: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BBB738: FFree1Var var_C4 = ""
  loc_BBB73B: LitVar_TRUE var_D4
  loc_BBB73E: PopAdLdVar
  loc_BBB73F: FLdPr var_154
  loc_BBB742: LateIdLdVar var_C4 DispID_146 0
  loc_BBB749: CastAdVar Me
  loc_BBB74D: FStAdFunc var_D8
  loc_BBB750: FLdPr var_D8
  loc_BBB753: LateIdSt
  loc_BBB758: FFree1Ad var_D8
  loc_BBB75B: FFree1Var var_C4 = ""
  loc_BBB75E: LitVarI4
  loc_BBB766: PopAdLdVar
  loc_BBB767: FLdPr var_154
  loc_BBB76A: LateIdSt
  loc_BBB76F: LitVarI4
  loc_BBB777: PopAdLdVar
  loc_BBB778: FLdPr var_154
  loc_BBB77B: LateIdSt
  loc_BBB780: LitVar_TRUE var_D4
  loc_BBB783: PopAdLdVar
  loc_BBB784: FLdPr var_154
  loc_BBB787: LateIdSt
  loc_BBB78C: LitNothing
  loc_BBB78E: FStAd var_154 
  loc_BBB792: FLdI2 var_A2
  loc_BBB795: FLdPr Me
  loc_BBB798: MemLdI2 global_96
  loc_BBB79B: AddI2
  loc_BBB79C: CVarI2 var_D4
  loc_BBB79F: PopAdLdVar
  loc_BBB7A0: LitVarI2 var_100, 4
  loc_BBB7A5: PopAdLdVar
  loc_BBB7A6: LitStr "=SUM(R[-"
  loc_BBB7A9: FLdPr Me
  loc_BBB7AC: MemLdI2 global_96
  loc_BBB7AF: LitI2_Byte 1
  loc_BBB7B1: SubI2
  loc_BBB7B2: CStrUI1
  loc_BBB7B4: FStStrNoPop var_134
  loc_BBB7B7: ConcatStr
  loc_BBB7B8: FStStrNoPop var_138
  loc_BBB7BB: LitStr "]C:R[-1]C)"
  loc_BBB7BE: ConcatStr
  loc_BBB7BF: CVarStr var_C4
  loc_BBB7C2: PopAdLdVar
  loc_BBB7C3: FLdRfVar var_D8
  loc_BBB7C6: FLdPr var_A0
  loc_BBB7C9:  = Me.FontUnderline
  loc_BBB7CE: FLdPr var_D8
  loc_BBB7D1: LateIdCallSt
  loc_BBB7D9: FFreeStr var_134 = ""
  loc_BBB7E0: FFree1Ad var_D8
  loc_BBB7E3: FFree1Var var_C4 = ""
  loc_BBB7E6: LitStr "D"
  loc_BBB7E9: FLdI2 var_A2
  loc_BBB7EC: FLdPr Me
  loc_BBB7EF: MemLdI2 global_96
  loc_BBB7F2: AddI2
  loc_BBB7F3: CStrUI1
  loc_BBB7F5: FStStrNoPop var_134
  loc_BBB7F8: ConcatStr
  loc_BBB7F9: FStStr var_A8
  loc_BBB7FC: FFree1Str var_134
  loc_BBB7FF: FLdI2 var_A2
  loc_BBB802: FLdPr Me
  loc_BBB805: MemLdI2 global_96
  loc_BBB808: AddI2
  loc_BBB809: CVarI2 var_D4
  loc_BBB80C: PopAdLdVar
  loc_BBB80D: LitVarI2 var_100, 5
  loc_BBB812: PopAdLdVar
  loc_BBB813: LitStr "=SUM(R[-"
  loc_BBB816: FLdPr Me
  loc_BBB819: MemLdI2 global_96
  loc_BBB81C: LitI2_Byte 1
  loc_BBB81E: SubI2
  loc_BBB81F: CStrUI1
  loc_BBB821: FStStrNoPop var_134
  loc_BBB824: ConcatStr
  loc_BBB825: FStStrNoPop var_138
  loc_BBB828: LitStr "]C:R[-1]C)"
  loc_BBB82B: ConcatStr
  loc_BBB82C: CVarStr var_C4
  loc_BBB82F: PopAdLdVar
  loc_BBB830: FLdRfVar var_D8
  loc_BBB833: FLdPr var_A0
  loc_BBB836:  = Me.FontUnderline
  loc_BBB83B: FLdPr var_D8
  loc_BBB83E: LateIdCallSt
  loc_BBB846: FFreeStr var_134 = ""
  loc_BBB84D: FFree1Ad var_D8
  loc_BBB850: FFree1Var var_C4 = ""
  loc_BBB853: LitStr "E"
  loc_BBB856: FLdI2 var_A2
  loc_BBB859: FLdPr Me
  loc_BBB85C: MemLdI2 global_96
  loc_BBB85F: AddI2
  loc_BBB860: CStrUI1
  loc_BBB862: FStStrNoPop var_134
  loc_BBB865: ConcatStr
  loc_BBB866: FStStr var_AC
  loc_BBB869: FFree1Str var_134
  loc_BBB86C: LitVar_TRUE var_EC
  loc_BBB86F: PopAdLdVar
  loc_BBB870: FLdRfVar var_D8
  loc_BBB873: LitVar_Missing var_D4
  loc_BBB876: PopAdLdVar
  loc_BBB877: LitStr "A"
  loc_BBB87A: FLdI2 var_A2
  loc_BBB87D: FLdPr Me
  loc_BBB880: MemLdI2 global_96
  loc_BBB883: AddI2
  loc_BBB884: CStrUI1
  loc_BBB886: FStStrNoPop var_134
  loc_BBB889: ConcatStr
  loc_BBB88A: FStStrNoPop var_138
  loc_BBB88D: LitStr ":E"
  loc_BBB890: ConcatStr
  loc_BBB891: FStStrNoPop var_13C
  loc_BBB894: FLdI2 var_A2
  loc_BBB897: FLdPr Me
  loc_BBB89A: MemLdI2 global_96
  loc_BBB89D: AddI2
  loc_BBB89E: CStrUI1
  loc_BBB8A0: FStStrNoPop var_140
  loc_BBB8A3: ConcatStr
  loc_BBB8A4: CVarStr var_C4
  loc_BBB8A7: PopAdLdVar
  loc_BBB8A8: FLdPr var_A0
  loc_BBB8AB:  = Me.Image
  loc_BBB8B0: FLdPr var_D8
  loc_BBB8B3: LateIdLdVar var_164 DispID_146 0
  loc_BBB8BA: CastAdVar Me
  loc_BBB8BE: FStAdFunc var_DC
  loc_BBB8C1: FLdPr var_DC
  loc_BBB8C4: LateIdSt
  loc_BBB8C9: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BBB8D4: FFreeAd var_D8 = ""
  loc_BBB8DB: FFreeVar var_C4 = ""
  loc_BBB8E2: FLdI2 var_A2
  loc_BBB8E5: FLdPr Me
  loc_BBB8E8: MemLdI2 global_96
  loc_BBB8EB: AddI2
  loc_BBB8EC: LitI2_Byte 2
  loc_BBB8EE: AddI2
  loc_BBB8EF: FStI2 var_A2
  loc_BBB8F2: FLdPr Me
  loc_BBB8F5: MemLdI2 global_146
  loc_BBB8F8: BranchF loc_BBBDC9
  loc_BBB8FB: FLdI2 var_A2
  loc_BBB8FE: CVarI2 var_D4
  loc_BBB901: PopAdLdVar
  loc_BBB902: LitVarI2 var_100, 1
  loc_BBB907: PopAdLdVar
  loc_BBB908: LitVarStr var_120, "Detalle de débitos/créditos no registrados"
  loc_BBB90D: PopAdLdVar
  loc_BBB90E: FLdRfVar var_D8
  loc_BBB911: FLdPr var_A0
  loc_BBB914:  = Me.FontUnderline
  loc_BBB919: FLdPr var_D8
  loc_BBB91C: LateIdCallSt
  loc_BBB924: FFree1Ad var_D8
  loc_BBB927: FLdRfVar var_D8
  loc_BBB92A: LitVar_Missing var_D4
  loc_BBB92D: PopAdLdVar
  loc_BBB92E: LitStr "A"
  loc_BBB931: FLdI2 var_A2
  loc_BBB934: CStrUI1
  loc_BBB936: FStStrNoPop var_134
  loc_BBB939: ConcatStr
  loc_BBB93A: FStStrNoPop var_138
  loc_BBB93D: LitStr ":E"
  loc_BBB940: ConcatStr
  loc_BBB941: FStStrNoPop var_13C
  loc_BBB944: FLdI2 var_A2
  loc_BBB947: CStrUI1
  loc_BBB949: FStStrNoPop var_140
  loc_BBB94C: ConcatStr
  loc_BBB94D: CVarStr var_C4
  loc_BBB950: PopAdLdVar
  loc_BBB951: FLdPr var_A0
  loc_BBB954:  = Me.Image
  loc_BBB959: FLdZeroAd var_D8
  loc_BBB95C: FStAdFunc var_168
  loc_BBB95F: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BBB96A: FFree1Var var_C4 = ""
  loc_BBB96D: LitVar_TRUE var_D4
  loc_BBB970: PopAdLdVar
  loc_BBB971: FLdPr var_168
  loc_BBB974: LateIdLdVar var_C4 DispID_146 0
  loc_BBB97B: CastAdVar Me
  loc_BBB97F: FStAdFunc var_D8
  loc_BBB982: FLdPr var_D8
  loc_BBB985: LateIdSt
  loc_BBB98A: FFree1Ad var_D8
  loc_BBB98D: FFree1Var var_C4 = ""
  loc_BBB990: LitVarI4
  loc_BBB998: PopAdLdVar
  loc_BBB999: FLdPr var_168
  loc_BBB99C: LateIdSt
  loc_BBB9A1: LitVarI4
  loc_BBB9A9: PopAdLdVar
  loc_BBB9AA: FLdPr var_168
  loc_BBB9AD: LateIdSt
  loc_BBB9B2: LitVar_TRUE var_D4
  loc_BBB9B5: PopAdLdVar
  loc_BBB9B6: FLdPr var_168
  loc_BBB9B9: LateIdSt
  loc_BBB9BE: LitNothing
  loc_BBB9C0: FStAd var_168 
  loc_BBB9C4: LitI2_Byte 1
  loc_BBB9C6: FLdPr Me
  loc_BBB9C9: MemLdRfVar from_stack_1.global_96
  loc_BBB9CC: FLdPr Me
  loc_BBB9CF: MemLdStr global_92
  loc_BBB9D2: LitI2_Byte 1
  loc_BBB9D4: FnUBound
  loc_BBB9D6: CI2I4
  loc_BBB9D7: ForI2 var_16C
  loc_BBB9DD: FLdPr Me
  loc_BBB9E0: MemLdI2 global_96
  loc_BBB9E3: CI4UI1
  loc_BBB9E4: FLdPr Me
  loc_BBB9E7: MemLdStr global_92
  loc_BBB9EA: AryLock
  loc_BBB9ED: Ary1LdRf
  loc_BBB9EE: FStR4 var_174
  loc_BBB9F1: FLdI2 var_A2
  loc_BBB9F4: FLdPr Me
  loc_BBB9F7: MemLdI2 global_96
  loc_BBB9FA: AddI2
  loc_BBB9FB: CVarI2 var_D4
  loc_BBB9FE: PopAdLdVar
  loc_BBB9FF: LitVarI2 var_100, 1
  loc_BBBA04: PopAdLdVar
  loc_BBBA05: FMemLdR4 var_174(0)
  loc_BBBA0A: CDateStr
  loc_BBBA0C: CVarDate var_120
  loc_BBBA10: PopAdLdVar
  loc_BBBA11: FLdRfVar var_D8
  loc_BBBA14: FLdPr var_A0
  loc_BBBA17:  = Me.FontUnderline
  loc_BBBA1C: FLdPr var_D8
  loc_BBBA1F: LateIdCallSt
  loc_BBBA27: FFree1Ad var_D8
  loc_BBBA2A: FLdI2 var_A2
  loc_BBBA2D: FLdPr Me
  loc_BBBA30: MemLdI2 global_96
  loc_BBBA33: AddI2
  loc_BBBA34: CVarI2 var_D4
  loc_BBBA37: PopAdLdVar
  loc_BBBA38: LitVarI2 var_100, 2
  loc_BBBA3D: PopAdLdVar
  loc_BBBA3E: FMemLdR4 var_174(4)
  loc_BBBA43: ImpAdCallFPR4 Proc_261_39_97BBF8()
  loc_BBBA48: CVarR8
  loc_BBBA4C: PopAdLdVar
  loc_BBBA4D: FLdRfVar var_D8
  loc_BBBA50: FLdPr var_A0
  loc_BBBA53:  = Me.FontUnderline
  loc_BBBA58: FLdPr var_D8
  loc_BBBA5B: LateIdCallSt
  loc_BBBA63: FFree1Ad var_D8
  loc_BBBA66: FLdI2 var_A2
  loc_BBBA69: FLdPr Me
  loc_BBBA6C: MemLdI2 global_96
  loc_BBBA6F: AddI2
  loc_BBBA70: CVarI2 var_D4
  loc_BBBA73: PopAdLdVar
  loc_BBBA74: LitVarI2 var_100, 3
  loc_BBBA79: PopAdLdVar
  loc_BBBA7A: FMemLdR4 var_174(8)
  loc_BBBA7F: LitStr " - "
  loc_BBBA82: ConcatStr
  loc_BBBA83: FStStrNoPop var_134
  loc_BBBA86: FMemLdR4 var_174(12)
  loc_BBBA8B: ConcatStr
  loc_BBBA8C: CVarStr var_C4
  loc_BBBA8F: PopAdLdVar
  loc_BBBA90: FLdRfVar var_D8
  loc_BBBA93: FLdPr var_A0
  loc_BBBA96:  = Me.FontUnderline
  loc_BBBA9B: FLdPr var_D8
  loc_BBBA9E: LateIdCallSt
  loc_BBBAA6: FFree1Str var_134
  loc_BBBAA9: FFree1Ad var_D8
  loc_BBBAAC: FFree1Var var_C4 = ""
  loc_BBBAAF: FLdI2 var_A2
  loc_BBBAB2: FLdPr Me
  loc_BBBAB5: MemLdI2 global_96
  loc_BBBAB8: AddI2
  loc_BBBAB9: CVarI2 var_D4
  loc_BBBABC: PopAdLdVar
  loc_BBBABD: LitVarI2 var_100, 4
  loc_BBBAC2: PopAdLdVar
  loc_BBBAC3: FMemLdR4 var_174(24)
  loc_BBBAC8: ImpAdCallFPR4 Proc_261_39_97BBF8()
  loc_BBBACD: CVarR8
  loc_BBBAD1: PopAdLdVar
  loc_BBBAD2: FLdRfVar var_D8
  loc_BBBAD5: FLdPr var_A0
  loc_BBBAD8:  = Me.FontUnderline
  loc_BBBADD: FLdPr var_D8
  loc_BBBAE0: LateIdCallSt
  loc_BBBAE8: FFree1Ad var_D8
  loc_BBBAEB: FLdI2 var_A2
  loc_BBBAEE: FLdPr Me
  loc_BBBAF1: MemLdI2 global_96
  loc_BBBAF4: AddI2
  loc_BBBAF5: CVarI2 var_D4
  loc_BBBAF8: PopAdLdVar
  loc_BBBAF9: LitVarI2 var_100, 5
  loc_BBBAFE: PopAdLdVar
  loc_BBBAFF: FMemLdR4 var_174(28)
  loc_BBBB04: ImpAdCallFPR4 Proc_261_39_97BBF8()
  loc_BBBB09: CVarR8
  loc_BBBB0D: PopAdLdVar
  loc_BBBB0E: FLdRfVar var_D8
  loc_BBBB11: FLdPr var_A0
  loc_BBBB14:  = Me.FontUnderline
  loc_BBBB19: FLdPr var_D8
  loc_BBBB1C: LateIdCallSt
  loc_BBBB24: FFree1Ad var_D8
  loc_BBBB27: FLdPr Me
  loc_BBBB2A: VCallAd Control_ID_chkMuestraOrdendePago
  loc_BBBB2D: CVarAd
  loc_BBBB31: CBoolVarNull
  loc_BBBB33: FFree1Var var_C4 = ""
  loc_BBBB36: BranchF loc_BBBB75
  loc_BBBB39: FLdI2 var_A2
  loc_BBBB3C: FLdPr Me
  loc_BBBB3F: MemLdI2 global_96
  loc_BBBB42: AddI2
  loc_BBBB43: CVarI2 var_D4
  loc_BBBB46: PopAdLdVar
  loc_BBBB47: LitVarI2 var_100, 6
  loc_BBBB4C: PopAdLdVar
  loc_BBBB4D: FMemLdR4 var_174(16)
  loc_BBBB52: ImpAdCallFPR4 Proc_261_39_97BBF8()
  loc_BBBB57: CVarR8
  loc_BBBB5B: PopAdLdVar
  loc_BBBB5C: FLdRfVar var_D8
  loc_BBBB5F: FLdPr var_A0
  loc_BBBB62:  = Me.FontUnderline
  loc_BBBB67: FLdPr var_D8
  loc_BBBB6A: LateIdCallSt
  loc_BBBB72: FFree1Ad var_D8
  loc_BBBB75: LitI4 0
  loc_BBBB7A: FStR4 var_174
  loc_BBBB7D: AryUnlock
  loc_BBBB80: FLdPr Me
  loc_BBBB83: MemLdRfVar from_stack_1.global_96
  loc_BBBB86: NextI2 var_16C, loc_BBB9DD
  loc_BBBB8B: FLdI2 var_A2
  loc_BBBB8E: FLdPr Me
  loc_BBBB91: MemLdI2 global_96
  loc_BBBB94: AddI2
  loc_BBBB95: CVarI2 var_D4
  loc_BBBB98: PopAdLdVar
  loc_BBBB99: LitVarI2 var_100, 1
  loc_BBBB9E: PopAdLdVar
  loc_BBBB9F: LitVarStr var_120, "Total de débitos/créditos no registrados:"
  loc_BBBBA4: PopAdLdVar
  loc_BBBBA5: FLdRfVar var_D8
  loc_BBBBA8: FLdPr var_A0
  loc_BBBBAB:  = Me.FontUnderline
  loc_BBBBB0: FLdPr var_D8
  loc_BBBBB3: LateIdCallSt
  loc_BBBBBB: FFree1Ad var_D8
  loc_BBBBBE: FLdRfVar var_D8
  loc_BBBBC1: LitVar_Missing var_D4
  loc_BBBBC4: PopAdLdVar
  loc_BBBBC5: LitStr "A"
  loc_BBBBC8: FLdI2 var_A2
  loc_BBBBCB: FLdPr Me
  loc_BBBBCE: MemLdI2 global_96
  loc_BBBBD1: AddI2
  loc_BBBBD2: CStrUI1
  loc_BBBBD4: FStStrNoPop var_134
  loc_BBBBD7: ConcatStr
  loc_BBBBD8: FStStrNoPop var_138
  loc_BBBBDB: LitStr ":C"
  loc_BBBBDE: ConcatStr
  loc_BBBBDF: FStStrNoPop var_13C
  loc_BBBBE2: FLdI2 var_A2
  loc_BBBBE5: FLdPr Me
  loc_BBBBE8: MemLdI2 global_96
  loc_BBBBEB: AddI2
  loc_BBBBEC: CStrUI1
  loc_BBBBEE: FStStrNoPop var_140
  loc_BBBBF1: ConcatStr
  loc_BBBBF2: CVarStr var_C4
  loc_BBBBF5: PopAdLdVar
  loc_BBBBF6: FLdPr var_A0
  loc_BBBBF9:  = Me.Image
  loc_BBBBFE: FLdZeroAd var_D8
  loc_BBBC01: FStAdFunc var_178
  loc_BBBC04: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BBBC0F: FFree1Var var_C4 = ""
  loc_BBBC12: LitVar_TRUE var_D4
  loc_BBBC15: PopAdLdVar
  loc_BBBC16: FLdPr var_178
  loc_BBBC19: LateIdLdVar var_C4 DispID_146 0
  loc_BBBC20: CastAdVar Me
  loc_BBBC24: FStAdFunc var_D8
  loc_BBBC27: FLdPr var_D8
  loc_BBBC2A: LateIdSt
  loc_BBBC2F: FFree1Ad var_D8
  loc_BBBC32: FFree1Var var_C4 = ""
  loc_BBBC35: LitVarI4
  loc_BBBC3D: PopAdLdVar
  loc_BBBC3E: FLdPr var_178
  loc_BBBC41: LateIdSt
  loc_BBBC46: LitVarI4
  loc_BBBC4E: PopAdLdVar
  loc_BBBC4F: FLdPr var_178
  loc_BBBC52: LateIdSt
  loc_BBBC57: LitVar_TRUE var_D4
  loc_BBBC5A: PopAdLdVar
  loc_BBBC5B: FLdPr var_178
  loc_BBBC5E: LateIdSt
  loc_BBBC63: LitNothing
  loc_BBBC65: FStAd var_178 
  loc_BBBC69: FLdI2 var_A2
  loc_BBBC6C: FLdPr Me
  loc_BBBC6F: MemLdI2 global_96
  loc_BBBC72: AddI2
  loc_BBBC73: CVarI2 var_D4
  loc_BBBC76: PopAdLdVar
  loc_BBBC77: LitVarI2 var_100, 4
  loc_BBBC7C: PopAdLdVar
  loc_BBBC7D: LitStr "=SUM(R[-"
  loc_BBBC80: FLdPr Me
  loc_BBBC83: MemLdI2 global_96
  loc_BBBC86: LitI2_Byte 1
  loc_BBBC88: SubI2
  loc_BBBC89: CStrUI1
  loc_BBBC8B: FStStrNoPop var_134
  loc_BBBC8E: ConcatStr
  loc_BBBC8F: FStStrNoPop var_138
  loc_BBBC92: LitStr "]C:R[-1]C)"
  loc_BBBC95: ConcatStr
  loc_BBBC96: CVarStr var_C4
  loc_BBBC99: PopAdLdVar
  loc_BBBC9A: FLdRfVar var_D8
  loc_BBBC9D: FLdPr var_A0
  loc_BBBCA0:  = Me.FontUnderline
  loc_BBBCA5: FLdPr var_D8
  loc_BBBCA8: LateIdCallSt
  loc_BBBCB0: FFreeStr var_134 = ""
  loc_BBBCB7: FFree1Ad var_D8
  loc_BBBCBA: FFree1Var var_C4 = ""
  loc_BBBCBD: LitStr "D"
  loc_BBBCC0: FLdI2 var_A2
  loc_BBBCC3: FLdPr Me
  loc_BBBCC6: MemLdI2 global_96
  loc_BBBCC9: AddI2
  loc_BBBCCA: CStrUI1
  loc_BBBCCC: FStStrNoPop var_134
  loc_BBBCCF: ConcatStr
  loc_BBBCD0: FStStr var_B0
  loc_BBBCD3: FFree1Str var_134
  loc_BBBCD6: FLdI2 var_A2
  loc_BBBCD9: FLdPr Me
  loc_BBBCDC: MemLdI2 global_96
  loc_BBBCDF: AddI2
  loc_BBBCE0: CVarI2 var_D4
  loc_BBBCE3: PopAdLdVar
  loc_BBBCE4: LitVarI2 var_100, 5
  loc_BBBCE9: PopAdLdVar
  loc_BBBCEA: LitStr "=SUM(R[-"
  loc_BBBCED: FLdPr Me
  loc_BBBCF0: MemLdI2 global_96
  loc_BBBCF3: LitI2_Byte 1
  loc_BBBCF5: SubI2
  loc_BBBCF6: CStrUI1
  loc_BBBCF8: FStStrNoPop var_134
  loc_BBBCFB: ConcatStr
  loc_BBBCFC: FStStrNoPop var_138
  loc_BBBCFF: LitStr "]C:R[-1]C)"
  loc_BBBD02: ConcatStr
  loc_BBBD03: CVarStr var_C4
  loc_BBBD06: PopAdLdVar
  loc_BBBD07: FLdRfVar var_D8
  loc_BBBD0A: FLdPr var_A0
  loc_BBBD0D:  = Me.FontUnderline
  loc_BBBD12: FLdPr var_D8
  loc_BBBD15: LateIdCallSt
  loc_BBBD1D: FFreeStr var_134 = ""
  loc_BBBD24: FFree1Ad var_D8
  loc_BBBD27: FFree1Var var_C4 = ""
  loc_BBBD2A: LitStr "E"
  loc_BBBD2D: FLdI2 var_A2
  loc_BBBD30: FLdPr Me
  loc_BBBD33: MemLdI2 global_96
  loc_BBBD36: AddI2
  loc_BBBD37: CStrUI1
  loc_BBBD39: FStStrNoPop var_134
  loc_BBBD3C: ConcatStr
  loc_BBBD3D: FStStr var_B4
  loc_BBBD40: FFree1Str var_134
  loc_BBBD43: LitVar_TRUE var_EC
  loc_BBBD46: PopAdLdVar
  loc_BBBD47: FLdRfVar var_D8
  loc_BBBD4A: LitVar_Missing var_D4
  loc_BBBD4D: PopAdLdVar
  loc_BBBD4E: LitStr "A"
  loc_BBBD51: FLdI2 var_A2
  loc_BBBD54: FLdPr Me
  loc_BBBD57: MemLdI2 global_96
  loc_BBBD5A: AddI2
  loc_BBBD5B: CStrUI1
  loc_BBBD5D: FStStrNoPop var_134
  loc_BBBD60: ConcatStr
  loc_BBBD61: FStStrNoPop var_138
  loc_BBBD64: LitStr ":E"
  loc_BBBD67: ConcatStr
  loc_BBBD68: FStStrNoPop var_13C
  loc_BBBD6B: FLdI2 var_A2
  loc_BBBD6E: FLdPr Me
  loc_BBBD71: MemLdI2 global_96
  loc_BBBD74: AddI2
  loc_BBBD75: CStrUI1
  loc_BBBD77: FStStrNoPop var_140
  loc_BBBD7A: ConcatStr
  loc_BBBD7B: CVarStr var_C4
  loc_BBBD7E: PopAdLdVar
  loc_BBBD7F: FLdPr var_A0
  loc_BBBD82:  = Me.Image
  loc_BBBD87: FLdPr var_D8
  loc_BBBD8A: LateIdLdVar var_164 DispID_146 0
  loc_BBBD91: CastAdVar Me
  loc_BBBD95: FStAdFunc var_DC
  loc_BBBD98: FLdPr var_DC
  loc_BBBD9B: LateIdSt
  loc_BBBDA0: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BBBDAB: FFreeAd var_D8 = ""
  loc_BBBDB2: FFreeVar var_C4 = ""
  loc_BBBDB9: FLdI2 var_A2
  loc_BBBDBC: FLdPr Me
  loc_BBBDBF: MemLdI2 global_96
  loc_BBBDC2: AddI2
  loc_BBBDC3: LitI2_Byte 2
  loc_BBBDC5: AddI2
  loc_BBBDC6: FStI2 var_A2
  loc_BBBDC9: FLdI2 var_A2
  loc_BBBDCC: LitI2_Byte 1
  loc_BBBDCE: AddI2
  loc_BBBDCF: CVarI2 var_D4
  loc_BBBDD2: PopAdLdVar
  loc_BBBDD3: LitVarI2 var_100, 3
  loc_BBBDD8: PopAdLdVar
  loc_BBBDD9: LitVarStr var_120, "SALDO SEGÚN NUESTROS LIBROS:"
  loc_BBBDDE: PopAdLdVar
  loc_BBBDDF: FLdRfVar var_D8
  loc_BBBDE2: FLdPr var_A0
  loc_BBBDE5:  = Me.FontUnderline
  loc_BBBDEA: FLdPr var_D8
  loc_BBBDED: LateIdCallSt
  loc_BBBDF5: FFree1Ad var_D8
  loc_BBBDF8: FLdI2 var_A2
  loc_BBBDFB: LitI2_Byte 1
  loc_BBBDFD: AddI2
  loc_BBBDFE: CVarI2 var_D4
  loc_BBBE01: PopAdLdVar
  loc_BBBE02: LitVarI2 var_100, 4
  loc_BBBE07: PopAdLdVar
  loc_BBBE08: FLdPr Me
  loc_BBBE0B: MemLdStr global_116
  loc_BBBE0E: ImpAdCallFPR4 Proc_261_39_97BBF8()
  loc_BBBE13: CVarR8
  loc_BBBE17: PopAdLdVar
  loc_BBBE18: FLdRfVar var_D8
  loc_BBBE1B: FLdPr var_A0
  loc_BBBE1E:  = Me.FontUnderline
  loc_BBBE23: FLdPr var_D8
  loc_BBBE26: LateIdCallSt
  loc_BBBE2E: FFree1Ad var_D8
  loc_BBBE31: FLdI2 var_A2
  loc_BBBE34: LitI2_Byte 2
  loc_BBBE36: AddI2
  loc_BBBE37: CVarI2 var_D4
  loc_BBBE3A: PopAdLdVar
  loc_BBBE3B: LitVarI2 var_100, 3
  loc_BBBE40: PopAdLdVar
  loc_BBBE41: LitVarStr var_120, "MENOS DÉBITOS NO CONCILIADOS:"
  loc_BBBE46: PopAdLdVar
  loc_BBBE47: FLdRfVar var_D8
  loc_BBBE4A: FLdPr var_A0
  loc_BBBE4D:  = Me.FontUnderline
  loc_BBBE52: FLdPr var_D8
  loc_BBBE55: LateIdCallSt
  loc_BBBE5D: FFree1Ad var_D8
  loc_BBBE60: FLdI2 var_A2
  loc_BBBE63: LitI2_Byte 2
  loc_BBBE65: AddI2
  loc_BBBE66: CVarI2 var_D4
  loc_BBBE69: PopAdLdVar
  loc_BBBE6A: LitVarI2 var_100, 4
  loc_BBBE6F: PopAdLdVar
  loc_BBBE70: LitStr "="
  loc_BBBE73: ILdRf var_A8
  loc_BBBE76: ConcatStr
  loc_BBBE77: CVarStr var_C4
  loc_BBBE7A: PopAdLdVar
  loc_BBBE7B: FLdRfVar var_D8
  loc_BBBE7E: FLdPr var_A0
  loc_BBBE81:  = Me.FontUnderline
  loc_BBBE86: FLdPr var_D8
  loc_BBBE89: LateIdCallSt
  loc_BBBE91: FFree1Ad var_D8
  loc_BBBE94: FFree1Var var_C4 = ""
  loc_BBBE97: FLdI2 var_A2
  loc_BBBE9A: LitI2_Byte 3
  loc_BBBE9C: AddI2
  loc_BBBE9D: CVarI2 var_D4
  loc_BBBEA0: PopAdLdVar
  loc_BBBEA1: LitVarI2 var_100, 3
  loc_BBBEA6: PopAdLdVar
  loc_BBBEA7: LitVarStr var_120, "MÁS CRÉDITOS NO CONCILIADOS"
  loc_BBBEAC: PopAdLdVar
  loc_BBBEAD: FLdRfVar var_D8
  loc_BBBEB0: FLdPr var_A0
  loc_BBBEB3:  = Me.FontUnderline
  loc_BBBEB8: FLdPr var_D8
  loc_BBBEBB: LateIdCallSt
  loc_BBBEC3: FFree1Ad var_D8
  loc_BBBEC6: FLdI2 var_A2
  loc_BBBEC9: LitI2_Byte 3
  loc_BBBECB: AddI2
  loc_BBBECC: CVarI2 var_D4
  loc_BBBECF: PopAdLdVar
  loc_BBBED0: LitVarI2 var_100, 4
  loc_BBBED5: PopAdLdVar
  loc_BBBED6: LitStr "="
  loc_BBBED9: ILdRf var_AC
  loc_BBBEDC: ConcatStr
  loc_BBBEDD: CVarStr var_C4
  loc_BBBEE0: PopAdLdVar
  loc_BBBEE1: FLdRfVar var_D8
  loc_BBBEE4: FLdPr var_A0
  loc_BBBEE7:  = Me.FontUnderline
  loc_BBBEEC: FLdPr var_D8
  loc_BBBEEF: LateIdCallSt
  loc_BBBEF7: FFree1Ad var_D8
  loc_BBBEFA: FFree1Var var_C4 = ""
  loc_BBBEFD: FLdI2 var_A2
  loc_BBBF00: LitI2_Byte 4
  loc_BBBF02: AddI2
  loc_BBBF03: CVarI2 var_D4
  loc_BBBF06: PopAdLdVar
  loc_BBBF07: LitVarI2 var_100, 3
  loc_BBBF0C: PopAdLdVar
  loc_BBBF0D: LitVarStr var_120, "MENOS CRÉDITOS NO REGISTRADOS"
  loc_BBBF12: PopAdLdVar
  loc_BBBF13: FLdRfVar var_D8
  loc_BBBF16: FLdPr var_A0
  loc_BBBF19:  = Me.FontUnderline
  loc_BBBF1E: FLdPr var_D8
  loc_BBBF21: LateIdCallSt
  loc_BBBF29: FFree1Ad var_D8
  loc_BBBF2C: FLdI2 var_A2
  loc_BBBF2F: LitI2_Byte 4
  loc_BBBF31: AddI2
  loc_BBBF32: CVarI2 var_D4
  loc_BBBF35: PopAdLdVar
  loc_BBBF36: LitVarI2 var_100, 4
  loc_BBBF3B: PopAdLdVar
  loc_BBBF3C: LitStr "="
  loc_BBBF3F: ILdRf var_B4
  loc_BBBF42: ConcatStr
  loc_BBBF43: CVarStr var_C4
  loc_BBBF46: PopAdLdVar
  loc_BBBF47: FLdRfVar var_D8
  loc_BBBF4A: FLdPr var_A0
  loc_BBBF4D:  = Me.FontUnderline
  loc_BBBF52: FLdPr var_D8
  loc_BBBF55: LateIdCallSt
  loc_BBBF5D: FFree1Ad var_D8
  loc_BBBF60: FFree1Var var_C4 = ""
  loc_BBBF63: FLdI2 var_A2
  loc_BBBF66: LitI2_Byte 5
  loc_BBBF68: AddI2
  loc_BBBF69: CVarI2 var_D4
  loc_BBBF6C: PopAdLdVar
  loc_BBBF6D: LitVarI2 var_100, 3
  loc_BBBF72: PopAdLdVar
  loc_BBBF73: LitVarStr var_120, "MÁS DÉBITOS NO REGISTRADOS"
  loc_BBBF78: PopAdLdVar
  loc_BBBF79: FLdRfVar var_D8
  loc_BBBF7C: FLdPr var_A0
  loc_BBBF7F:  = Me.FontUnderline
  loc_BBBF84: FLdPr var_D8
  loc_BBBF87: LateIdCallSt
  loc_BBBF8F: FFree1Ad var_D8
  loc_BBBF92: FLdI2 var_A2
  loc_BBBF95: LitI2_Byte 5
  loc_BBBF97: AddI2
  loc_BBBF98: CVarI2 var_D4
  loc_BBBF9B: PopAdLdVar
  loc_BBBF9C: LitVarI2 var_100, 4
  loc_BBBFA1: PopAdLdVar
  loc_BBBFA2: LitStr "="
  loc_BBBFA5: ILdRf var_B0
  loc_BBBFA8: ConcatStr
  loc_BBBFA9: CVarStr var_C4
  loc_BBBFAC: PopAdLdVar
  loc_BBBFAD: FLdRfVar var_D8
  loc_BBBFB0: FLdPr var_A0
  loc_BBBFB3:  = Me.FontUnderline
  loc_BBBFB8: FLdPr var_D8
  loc_BBBFBB: LateIdCallSt
  loc_BBBFC3: FFree1Ad var_D8
  loc_BBBFC6: FFree1Var var_C4 = ""
  loc_BBBFC9: FLdI2 var_A2
  loc_BBBFCC: LitI2_Byte 6
  loc_BBBFCE: AddI2
  loc_BBBFCF: CVarI2 var_D4
  loc_BBBFD2: PopAdLdVar
  loc_BBBFD3: LitVarI2 var_100, 3
  loc_BBBFD8: PopAdLdVar
  loc_BBBFD9: LitVarStr var_120, "RESULTADO"
  loc_BBBFDE: PopAdLdVar
  loc_BBBFDF: FLdRfVar var_D8
  loc_BBBFE2: FLdPr var_A0
  loc_BBBFE5:  = Me.FontUnderline
  loc_BBBFEA: FLdPr var_D8
  loc_BBBFED: LateIdCallSt
  loc_BBBFF5: FFree1Ad var_D8
  loc_BBBFF8: FLdI2 var_A2
  loc_BBBFFB: LitI2_Byte 6
  loc_BBBFFD: AddI2
  loc_BBBFFE: CVarI2 var_D4
  loc_BBC001: PopAdLdVar
  loc_BBC002: LitVarI2 var_100, 4
  loc_BBC007: PopAdLdVar
  loc_BBC008: LitStr "=D"
  loc_BBC00B: FLdI2 var_A2
  loc_BBC00E: LitI2_Byte 1
  loc_BBC010: AddI2
  loc_BBC011: CStrUI1
  loc_BBC013: FStStrNoPop var_134
  loc_BBC016: ConcatStr
  loc_BBC017: FStStrNoPop var_138
  loc_BBC01A: LitStr "-"
  loc_BBC01D: ConcatStr
  loc_BBC01E: FStStrNoPop var_13C
  loc_BBC021: ILdRf var_A8
  loc_BBC024: ConcatStr
  loc_BBC025: FStStrNoPop var_140
  loc_BBC028: LitStr "+"
  loc_BBC02B: ConcatStr
  loc_BBC02C: FStStrNoPop var_17C
  loc_BBC02F: ILdRf var_AC
  loc_BBC032: ConcatStr
  loc_BBC033: FStStrNoPop var_180
  loc_BBC036: LitStr "-"
  loc_BBC039: ConcatStr
  loc_BBC03A: FStStrNoPop var_184
  loc_BBC03D: ILdRf var_B4
  loc_BBC040: ConcatStr
  loc_BBC041: FStStrNoPop var_188
  loc_BBC044: LitStr "+"
  loc_BBC047: ConcatStr
  loc_BBC048: FStStrNoPop var_18C
  loc_BBC04B: ILdRf var_B0
  loc_BBC04E: ConcatStr
  loc_BBC04F: CVarStr var_C4
  loc_BBC052: PopAdLdVar
  loc_BBC053: FLdRfVar var_D8
  loc_BBC056: FLdPr var_A0
  loc_BBC059:  = Me.FontUnderline
  loc_BBC05E: FLdPr var_D8
  loc_BBC061: LateIdCallSt
  loc_BBC069: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = ""
  loc_BBC07E: FFree1Ad var_D8
  loc_BBC081: FFree1Var var_C4 = ""
  loc_BBC084: FLdI2 var_A2
  loc_BBC087: LitI2_Byte 7
  loc_BBC089: AddI2
  loc_BBC08A: CVarI2 var_D4
  loc_BBC08D: PopAdLdVar
  loc_BBC08E: LitVarI2 var_100, 3
  loc_BBC093: PopAdLdVar
  loc_BBC094: LitVarStr var_120, "SALDO SEGÚN EXTRACTO BANCARIO"
  loc_BBC099: PopAdLdVar
  loc_BBC09A: FLdRfVar var_D8
  loc_BBC09D: FLdPr var_A0
  loc_BBC0A0:  = Me.FontUnderline
  loc_BBC0A5: FLdPr var_D8
  loc_BBC0A8: LateIdCallSt
  loc_BBC0B0: FFree1Ad var_D8
  loc_BBC0B3: FLdI2 var_A2
  loc_BBC0B6: LitI2_Byte 7
  loc_BBC0B8: AddI2
  loc_BBC0B9: CVarI2 var_D4
  loc_BBC0BC: PopAdLdVar
  loc_BBC0BD: LitVarI2 var_100, 4
  loc_BBC0C2: PopAdLdVar
  loc_BBC0C3: FLdPr Me
  loc_BBC0C6: MemLdStr global_136
  loc_BBC0C9: ImpAdCallFPR4 Proc_261_39_97BBF8()
  loc_BBC0CE: CVarR8
  loc_BBC0D2: PopAdLdVar
  loc_BBC0D3: FLdRfVar var_D8
  loc_BBC0D6: FLdPr var_A0
  loc_BBC0D9:  = Me.FontUnderline
  loc_BBC0DE: FLdPr var_D8
  loc_BBC0E1: LateIdCallSt
  loc_BBC0E9: FFree1Ad var_D8
  loc_BBC0EC: FLdI2 var_A2
  loc_BBC0EF: LitI2_Byte 8
  loc_BBC0F1: AddI2
  loc_BBC0F2: CVarI2 var_D4
  loc_BBC0F5: PopAdLdVar
  loc_BBC0F6: LitVarI2 var_100, 3
  loc_BBC0FB: PopAdLdVar
  loc_BBC0FC: LitVarStr var_120, "DIFERENCIA"
  loc_BBC101: PopAdLdVar
  loc_BBC102: FLdRfVar var_D8
  loc_BBC105: FLdPr var_A0
  loc_BBC108:  = Me.FontUnderline
  loc_BBC10D: FLdPr var_D8
  loc_BBC110: LateIdCallSt
  loc_BBC118: FFree1Ad var_D8
  loc_BBC11B: FLdI2 var_A2
  loc_BBC11E: LitI2_Byte 8
  loc_BBC120: AddI2
  loc_BBC121: CVarI2 var_D4
  loc_BBC124: PopAdLdVar
  loc_BBC125: LitVarI2 var_100, 4
  loc_BBC12A: PopAdLdVar
  loc_BBC12B: LitStr "=D"
  loc_BBC12E: FLdI2 var_A2
  loc_BBC131: LitI2_Byte 6
  loc_BBC133: AddI2
  loc_BBC134: CStrUI1
  loc_BBC136: FStStrNoPop var_134
  loc_BBC139: ConcatStr
  loc_BBC13A: FStStrNoPop var_138
  loc_BBC13D: LitStr "-"
  loc_BBC140: ConcatStr
  loc_BBC141: FStStrNoPop var_13C
  loc_BBC144: LitStr "D"
  loc_BBC147: ConcatStr
  loc_BBC148: FStStrNoPop var_140
  loc_BBC14B: FLdI2 var_A2
  loc_BBC14E: LitI2_Byte 7
  loc_BBC150: AddI2
  loc_BBC151: CStrUI1
  loc_BBC153: FStStrNoPop var_17C
  loc_BBC156: ConcatStr
  loc_BBC157: CVarStr var_C4
  loc_BBC15A: PopAdLdVar
  loc_BBC15B: FLdRfVar var_D8
  loc_BBC15E: FLdPr var_A0
  loc_BBC161:  = Me.FontUnderline
  loc_BBC166: FLdPr var_D8
  loc_BBC169: LateIdCallSt
  loc_BBC171: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_BBC17E: FFree1Ad var_D8
  loc_BBC181: FFree1Var var_C4 = ""
  loc_BBC184: LitVar_TRUE var_EC
  loc_BBC187: PopAdLdVar
  loc_BBC188: FLdRfVar var_D8
  loc_BBC18B: LitVar_Missing var_D4
  loc_BBC18E: PopAdLdVar
  loc_BBC18F: LitStr "C"
  loc_BBC192: FLdI2 var_A2
  loc_BBC195: LitI2_Byte 1
  loc_BBC197: AddI2
  loc_BBC198: CStrUI1
  loc_BBC19A: FStStrNoPop var_134
  loc_BBC19D: ConcatStr
  loc_BBC19E: FStStrNoPop var_138
  loc_BBC1A1: LitStr ":E"
  loc_BBC1A4: ConcatStr
  loc_BBC1A5: FStStrNoPop var_13C
  loc_BBC1A8: FLdI2 var_A2
  loc_BBC1AB: LitI2_Byte 8
  loc_BBC1AD: AddI2
  loc_BBC1AE: CStrUI1
  loc_BBC1B0: FStStrNoPop var_140
  loc_BBC1B3: ConcatStr
  loc_BBC1B4: CVarStr var_C4
  loc_BBC1B7: PopAdLdVar
  loc_BBC1B8: FLdPr var_A0
  loc_BBC1BB:  = Me.Image
  loc_BBC1C0: FLdPr var_D8
  loc_BBC1C3: LateIdLdVar var_164 DispID_146 0
  loc_BBC1CA: CastAdVar Me
  loc_BBC1CE: FStAdFunc var_DC
  loc_BBC1D1: FLdPr var_DC
  loc_BBC1D4: LateIdSt
  loc_BBC1D9: FFreeStr var_134 = "": var_138 = "": var_13C = ""
  loc_BBC1E4: FFreeAd var_D8 = ""
  loc_BBC1EB: FFreeVar var_C4 = ""
  loc_BBC1F2: LitVarStr var_100, "dd/mm/yyyy;@"
  loc_BBC1F7: PopAdLdVar
  loc_BBC1F8: LitVarStr var_D4, "A"
  loc_BBC1FD: PopAdLdVar
  loc_BBC1FE: FLdRfVar var_D8
  loc_BBC201: FLdPr var_A0
  loc_BBC204:  = Me.CurrentY
  loc_BBC209: FLdPr var_D8
  loc_BBC20C: LateIdCallLdVar
  loc_BBC216: VarLateMemSt .NumberFormat
  loc_BBC21A: FFree1Ad var_D8
  loc_BBC21D: FFree1Var var_C4 = ""
  loc_BBC220: LitVarStr var_100, "###,###,###,###,##0.00"
  loc_BBC225: PopAdLdVar
  loc_BBC226: LitVarStr var_D4, "D:E"
  loc_BBC22B: PopAdLdVar
  loc_BBC22C: FLdRfVar var_D8
  loc_BBC22F: FLdPr var_A0
  loc_BBC232:  = Me.CurrentY
  loc_BBC237: FLdPr var_D8
  loc_BBC23A: LateIdCallLdVar
  loc_BBC244: VarLateMemSt .NumberFormat
  loc_BBC248: FFree1Ad var_D8
  loc_BBC24B: FFree1Var var_C4 = ""
  loc_BBC24E: LitVarStr var_D4, "A:E"
  loc_BBC253: PopAdLdVar
  loc_BBC254: FLdRfVar var_D8
  loc_BBC257: FLdPr var_A0
  loc_BBC25A:  = Me.CurrentY
  loc_BBC25F: FLdPr var_D8
  loc_BBC262: LateIdCallLdVar
  loc_BBC26C: LdPrVar
  loc_BBC26E: LateMemCall
  loc_BBC274: FFree1Ad var_D8
  loc_BBC277: FFree1Var var_164 = ""
  loc_BBC27A: LitVarStr var_D4, "2:2"
  loc_BBC27F: PopAdLdVar
  loc_BBC280: FLdRfVar var_D8
  loc_BBC283: FLdPr var_A0
  loc_BBC286:  = Me.HasDC
  loc_BBC28B: FLdPr var_D8
  loc_BBC28E: LateIdCallLdVar
  loc_BBC298: LdPrVar
  loc_BBC29A: LateMemCall
  loc_BBC2A0: FFree1Ad var_D8
  loc_BBC2A3: FFree1Var var_164 = ""
  loc_BBC2A6: LitVar_TRUE var_D4
  loc_BBC2A9: PopAdLdVar
  loc_BBC2AA: FLdRfVar var_98
  loc_BBC2AD: VarLateMemLdRfVar var_C4, .ActiveWindow
  loc_BBC2B3: VarLateMemSt .FreezePanes
  loc_BBC2B7: FFree1Var var_C4 = ""
  loc_BBC2BA: FLdRfVar var_D8
  loc_BBC2BD: LitVar_Missing var_EC
  loc_BBC2C0: PopAdLdVar
  loc_BBC2C1: LitVarStr var_D4, "A1:A1"
  loc_BBC2C6: PopAdLdVar
  loc_BBC2C7: FLdPr var_A0
  loc_BBC2CA:  = Me.Image
  loc_BBC2CF: FLdPr var_D8
  loc_BBC2D2: LateIdCall
  loc_BBC2DA: FFree1Ad var_D8
  loc_BBC2DD: LitVar_Missing var_1BC
  loc_BBC2E0: PopAdLdVar
  loc_BBC2E1: LitVar_Missing var_1AC
  loc_BBC2E4: PopAdLdVar
  loc_BBC2E5: LitVar_Missing var_19C
  loc_BBC2E8: PopAdLdVar
  loc_BBC2E9: LitVar_Missing var_130
  loc_BBC2EC: PopAdLdVar
  loc_BBC2ED: LitVar_Missing var_120
  loc_BBC2F0: PopAdLdVar
  loc_BBC2F1: LitVar_Missing var_110
  loc_BBC2F4: PopAdLdVar
  loc_BBC2F5: LitVar_Missing var_100
  loc_BBC2F8: PopAdLdVar
  loc_BBC2F9: LitVar_Missing var_EC
  loc_BBC2FC: PopAdLdVar
  loc_BBC2FD: LitVar_Missing var_D4
  loc_BBC300: PopAdLdVar
  loc_BBC301: ILdRf var_88
  loc_BBC304: FLdPr var_A0
  loc_BBC307: Me.MouseIcon = from_stack_1
  loc_BBC30C: LitI4 &H409
  loc_BBC311: FLdPr var_9C
  loc_BBC319: ExitProcHresult
  loc_BBC31A: CI2Cy
End Sub

Public Sub GeneraHTML() 'B94364
  'Data Table: 49BA1C
  loc_B934D0: FLdRfVar var_88
  loc_B934D3: LitI2_Byte 0
  loc_B934D5: LitI2_Byte &HFF
  loc_B934D7: ImpAdLdI4 MemVar_C3D83C
  loc_B934DA: FLdPr Me
  loc_B934DD: MemLdRfVar from_stack_1.global_84
  loc_B934E0: NewIfNullPr IFileSystem3
  loc_B934E3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B934E8: ILdRf var_88
  loc_B934EB: FLdPr Me
  loc_B934EE: MemStVarAd
  loc_B934F2: FFree1Ad var_88
  loc_B934F5: Call Proc_171_29_AC3784()
  loc_B934FA: LitStr "Municipalidad de Guaymallén"
  loc_B934FD: LitStr "Municipalidad de Tunuyán"
  loc_B93500: EqStr
  loc_B93502: BranchF loc_B937FC
  loc_B93505: FLdPr Me
  loc_B93508: MemLdI2 global_148
  loc_B9350B: BranchF loc_B937F9
  loc_B9350E: LitI2_Byte 1
  loc_B93510: FLdPr Me
  loc_B93513: MemLdRfVar from_stack_1.global_96
  loc_B93516: FLdPr Me
  loc_B93519: MemLdStr global_88
  loc_B9351C: LitI2_Byte 1
  loc_B9351E: FnUBound
  loc_B93520: CI2I4
  loc_B93521: ForI2 var_8C
  loc_B93527: FLdPr Me
  loc_B9352A: MemLdI2 global_96
  loc_B9352D: CI4UI1
  loc_B9352E: FLdPr Me
  loc_B93531: MemLdStr global_88
  loc_B93534: AryLock
  loc_B93537: Ary1LdRf
  loc_B93538: FStR4 var_94
  loc_B9353B: FMemLdRf unk_49B989
  loc_B93540: CVarRef
  loc_B93545: FLdRfVar var_B4
  loc_B93548: ImpAdCallFPR4  = Year()
  loc_B9354D: FLdRfVar var_B4
  loc_B93550: LitVarI2 var_C4, 2019
  loc_B93555: HardType
  loc_B93556: LeVar var_D4
  loc_B9355A: FMemLdR4 var_94(16)
  loc_B9355F: LitStr "4826"
  loc_B93562: EqStr
  loc_B93564: FMemLdR4 var_94(16)
  loc_B93569: LitStr "4475"
  loc_B9356C: EqStr
  loc_B9356E: OrI4
  loc_B9356F: FMemLdR4 var_94(16)
  loc_B93574: LitStr "4595"
  loc_B93577: EqStr
  loc_B93579: OrI4
  loc_B9357A: FMemLdR4 var_94(16)
  loc_B9357F: LitStr "4911"
  loc_B93582: EqStr
  loc_B93584: OrI4
  loc_B93585: FMemLdR4 var_94(16)
  loc_B9358A: LitStr "5514"
  loc_B9358D: EqStr
  loc_B9358F: OrI4
  loc_B93590: FMemLdR4 var_94(16)
  loc_B93595: LitStr "5035"
  loc_B93598: EqStr
  loc_B9359A: OrI4
  loc_B9359B: FMemLdR4 var_94(16)
  loc_B935A0: LitStr "5663"
  loc_B935A3: EqStr
  loc_B935A5: OrI4
  loc_B935A6: FMemLdR4 var_94(16)
  loc_B935AB: LitStr "6120"
  loc_B935AE: EqStr
  loc_B935B0: OrI4
  loc_B935B1: CVarBoolI2 var_E4
  loc_B935B5: AndVar var_F4
  loc_B935B9: CBoolVarNull
  loc_B935BB: FFreeVar var_B4 = ""
  loc_B935C2: BranchF loc_B935C8
  loc_B935C5: Branch loc_B937E3
  loc_B935C8: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B935CD: PopAdLdVar
  loc_B935CE: FLdPr Me
  loc_B935D1: MemLdRfVar from_stack_1.htmFile
  loc_B935D4: LdPrVar
  loc_B935D6: LateMemCall
  loc_B935DC: LitI4 0
  loc_B935E1: LitI4 0
  loc_B935E6: LitI2_Byte 0
  loc_B935E8: LitStr "center"
  loc_B935EB: FMemLdR4 var_94(0)
  loc_B935F0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B935F5: CVarStr var_B4
  loc_B935F8: PopAdLdVar
  loc_B935F9: FLdPr Me
  loc_B935FC: MemLdRfVar from_stack_1.htmFile
  loc_B935FF: LdPrVar
  loc_B93601: LateMemCall
  loc_B93607: FFree1Var var_B4 = ""
  loc_B9360A: LitI4 0
  loc_B9360F: LitI4 0
  loc_B93614: LitI2_Byte 0
  loc_B93616: LitStr "center"
  loc_B93619: FMemLdR4 var_94(4)
  loc_B9361E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93623: CVarStr var_B4
  loc_B93626: PopAdLdVar
  loc_B93627: FLdPr Me
  loc_B9362A: MemLdRfVar from_stack_1.htmFile
  loc_B9362D: LdPrVar
  loc_B9362F: LateMemCall
  loc_B93635: FFree1Var var_B4 = ""
  loc_B93638: LitI4 0
  loc_B9363D: LitI4 0
  loc_B93642: LitI2_Byte 0
  loc_B93644: LitStr "left"
  loc_B93647: FMemLdR4 var_94(8)
  loc_B9364C: LitStr " - "
  loc_B9364F: ConcatStr
  loc_B93650: FStStrNoPop var_F8
  loc_B93653: FMemLdR4 var_94(12)
  loc_B93658: ConcatStr
  loc_B93659: FStStrNoPop var_FC
  loc_B9365C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93661: CVarStr var_B4
  loc_B93664: PopAdLdVar
  loc_B93665: FLdPr Me
  loc_B93668: MemLdRfVar from_stack_1.htmFile
  loc_B9366B: LdPrVar
  loc_B9366D: LateMemCall
  loc_B93673: FFreeStr var_F8 = ""
  loc_B9367A: FFree1Var var_B4 = ""
  loc_B9367D: FLdRfVar var_FE
  loc_B93680: FLdPr Me
  loc_B93683: VCallAd Control_ID_chkMuestraalaOrden
  loc_B93686: FStAdFunc var_88
  loc_B93689: FLdPr var_88
  loc_B9368C:  = Me.Value
  loc_B93691: FLdI2 var_FE
  loc_B93694: CI4UI1
  loc_B93695: LitI4 1
  loc_B9369A: EqI4
  loc_B9369B: FFree1Ad var_88
  loc_B9369E: BranchF loc_B936CF
  loc_B936A1: LitI4 0
  loc_B936A6: LitI4 0
  loc_B936AB: LitI2_Byte 0
  loc_B936AD: LitStr "left"
  loc_B936B0: FMemLdR4 var_94(20)
  loc_B936B5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B936BA: CVarStr var_B4
  loc_B936BD: PopAdLdVar
  loc_B936BE: FLdPr Me
  loc_B936C1: MemLdRfVar from_stack_1.htmFile
  loc_B936C4: LdPrVar
  loc_B936C6: LateMemCall
  loc_B936CC: FFree1Var var_B4 = ""
  loc_B936CF: FLdRfVar var_FE
  loc_B936D2: FLdPr Me
  loc_B936D5: VCallAd Control_ID_chkMuestraOrdendePago
  loc_B936D8: FStAdFunc var_88
  loc_B936DB: FLdPr var_88
  loc_B936DE:  = Me.Value
  loc_B936E3: FLdI2 var_FE
  loc_B936E6: CI4UI1
  loc_B936E7: LitI4 1
  loc_B936EC: EqI4
  loc_B936ED: FFree1Ad var_88
  loc_B936F0: BranchF loc_B93721
  loc_B936F3: LitI4 0
  loc_B936F8: LitI4 0
  loc_B936FD: LitI2_Byte 0
  loc_B936FF: LitStr "right"
  loc_B93702: FMemLdR4 var_94(16)
  loc_B93707: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9370C: CVarStr var_B4
  loc_B9370F: PopAdLdVar
  loc_B93710: FLdPr Me
  loc_B93713: MemLdRfVar from_stack_1.htmFile
  loc_B93716: LdPrVar
  loc_B93718: LateMemCall
  loc_B9371E: FFree1Var var_B4 = ""
  loc_B93721: LitI4 0
  loc_B93726: LitI4 0
  loc_B9372B: LitI2_Byte 0
  loc_B9372D: LitStr "right"
  loc_B93730: FMemLdR4 var_94(24)
  loc_B93735: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9373A: CVarStr var_B4
  loc_B9373D: PopAdLdVar
  loc_B9373E: FLdPr Me
  loc_B93741: MemLdRfVar from_stack_1.htmFile
  loc_B93744: LdPrVar
  loc_B93746: LateMemCall
  loc_B9374C: FFree1Var var_B4 = ""
  loc_B9374F: LitI4 0
  loc_B93754: LitI4 0
  loc_B93759: LitI2_Byte 0
  loc_B9375B: LitStr "right"
  loc_B9375E: FMemLdR4 var_94(28)
  loc_B93763: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93768: CVarStr var_B4
  loc_B9376B: PopAdLdVar
  loc_B9376C: FLdPr Me
  loc_B9376F: MemLdRfVar from_stack_1.htmFile
  loc_B93772: LdPrVar
  loc_B93774: LateMemCall
  loc_B9377A: FFree1Var var_B4 = ""
  loc_B9377D: FLdRfVar var_FE
  loc_B93780: FLdPr Me
  loc_B93783: VCallAd Control_ID_chkExcluirFeco
  loc_B93786: FStAdFunc var_88
  loc_B93789: FLdPr var_88
  loc_B9378C:  = Me.Value
  loc_B93791: FLdI2 var_FE
  loc_B93794: CI4UI1
  loc_B93795: LitI4 0
  loc_B9379A: EqI4
  loc_B9379B: FFree1Ad var_88
  loc_B9379E: BranchF loc_B937CF
  loc_B937A1: LitI4 0
  loc_B937A6: LitI4 0
  loc_B937AB: LitI2_Byte 0
  loc_B937AD: LitStr "center"
  loc_B937B0: FMemLdR4 var_94(32)
  loc_B937B5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B937BA: CVarStr var_B4
  loc_B937BD: PopAdLdVar
  loc_B937BE: FLdPr Me
  loc_B937C1: MemLdRfVar from_stack_1.htmFile
  loc_B937C4: LdPrVar
  loc_B937C6: LateMemCall
  loc_B937CC: FFree1Var var_B4 = ""
  loc_B937CF: LitVarStr var_A4, "     </tr>"
  loc_B937D4: PopAdLdVar
  loc_B937D5: FLdPr Me
  loc_B937D8: MemLdRfVar from_stack_1.htmFile
  loc_B937DB: LdPrVar
  loc_B937DD: LateMemCall
  loc_B937E3: LitI4 0
  loc_B937E8: FStR4 var_94
  loc_B937EB: AryUnlock
  loc_B937EE: FLdPr Me
  loc_B937F1: MemLdRfVar from_stack_1.global_96
  loc_B937F4: NextI2 var_8C, loc_B93527
  loc_B937F9: Branch loc_B93A63
  loc_B937FC: FLdPr Me
  loc_B937FF: MemLdI2 global_148
  loc_B93802: BranchF loc_B93A63
  loc_B93805: LitI2_Byte 1
  loc_B93807: FLdPr Me
  loc_B9380A: MemLdRfVar from_stack_1.global_96
  loc_B9380D: FLdPr Me
  loc_B93810: MemLdStr global_88
  loc_B93813: LitI2_Byte 1
  loc_B93815: FnUBound
  loc_B93817: CI2I4
  loc_B93818: ForI2 var_102
  loc_B9381E: FLdPr Me
  loc_B93821: MemLdI2 global_96
  loc_B93824: CI4UI1
  loc_B93825: FLdPr Me
  loc_B93828: MemLdStr global_88
  loc_B9382B: AryLock
  loc_B9382E: Ary1LdRf
  loc_B9382F: FStR4 var_10C
  loc_B93832: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B93837: PopAdLdVar
  loc_B93838: FLdPr Me
  loc_B9383B: MemLdRfVar from_stack_1.htmFile
  loc_B9383E: LdPrVar
  loc_B93840: LateMemCall
  loc_B93846: LitI4 0
  loc_B9384B: LitI4 0
  loc_B93850: LitI2_Byte 0
  loc_B93852: LitStr "center"
  loc_B93855: FMemLdR4 var_10C(0)
  loc_B9385A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9385F: CVarStr var_B4
  loc_B93862: PopAdLdVar
  loc_B93863: FLdPr Me
  loc_B93866: MemLdRfVar from_stack_1.htmFile
  loc_B93869: LdPrVar
  loc_B9386B: LateMemCall
  loc_B93871: FFree1Var var_B4 = ""
  loc_B93874: LitI4 0
  loc_B93879: LitI4 0
  loc_B9387E: LitI2_Byte 0
  loc_B93880: LitStr "center"
  loc_B93883: FMemLdR4 var_10C(4)
  loc_B93888: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B9388D: CVarStr var_B4
  loc_B93890: PopAdLdVar
  loc_B93891: FLdPr Me
  loc_B93894: MemLdRfVar from_stack_1.htmFile
  loc_B93897: LdPrVar
  loc_B93899: LateMemCall
  loc_B9389F: FFree1Var var_B4 = ""
  loc_B938A2: LitI4 0
  loc_B938A7: LitI4 0
  loc_B938AC: LitI2_Byte 0
  loc_B938AE: LitStr "left"
  loc_B938B1: FMemLdR4 var_10C(8)
  loc_B938B6: LitStr " - "
  loc_B938B9: ConcatStr
  loc_B938BA: FStStrNoPop var_F8
  loc_B938BD: FMemLdR4 var_10C(12)
  loc_B938C2: ConcatStr
  loc_B938C3: FStStrNoPop var_FC
  loc_B938C6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B938CB: CVarStr var_B4
  loc_B938CE: PopAdLdVar
  loc_B938CF: FLdPr Me
  loc_B938D2: MemLdRfVar from_stack_1.htmFile
  loc_B938D5: LdPrVar
  loc_B938D7: LateMemCall
  loc_B938DD: FFreeStr var_F8 = ""
  loc_B938E4: FFree1Var var_B4 = ""
  loc_B938E7: FLdRfVar var_FE
  loc_B938EA: FLdPr Me
  loc_B938ED: VCallAd Control_ID_chkMuestraalaOrden
  loc_B938F0: FStAdFunc var_88
  loc_B938F3: FLdPr var_88
  loc_B938F6:  = Me.Value
  loc_B938FB: FLdI2 var_FE
  loc_B938FE: CI4UI1
  loc_B938FF: LitI4 1
  loc_B93904: EqI4
  loc_B93905: FFree1Ad var_88
  loc_B93908: BranchF loc_B93939
  loc_B9390B: LitI4 0
  loc_B93910: LitI4 0
  loc_B93915: LitI2_Byte 0
  loc_B93917: LitStr "left"
  loc_B9391A: FMemLdR4 var_10C(20)
  loc_B9391F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93924: CVarStr var_B4
  loc_B93927: PopAdLdVar
  loc_B93928: FLdPr Me
  loc_B9392B: MemLdRfVar from_stack_1.htmFile
  loc_B9392E: LdPrVar
  loc_B93930: LateMemCall
  loc_B93936: FFree1Var var_B4 = ""
  loc_B93939: FLdRfVar var_FE
  loc_B9393C: FLdPr Me
  loc_B9393F: VCallAd Control_ID_chkMuestraOrdendePago
  loc_B93942: FStAdFunc var_88
  loc_B93945: FLdPr var_88
  loc_B93948:  = Me.Value
  loc_B9394D: FLdI2 var_FE
  loc_B93950: CI4UI1
  loc_B93951: LitI4 1
  loc_B93956: EqI4
  loc_B93957: FFree1Ad var_88
  loc_B9395A: BranchF loc_B9398B
  loc_B9395D: LitI4 0
  loc_B93962: LitI4 0
  loc_B93967: LitI2_Byte 0
  loc_B93969: LitStr "right"
  loc_B9396C: FMemLdR4 var_10C(16)
  loc_B93971: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93976: CVarStr var_B4
  loc_B93979: PopAdLdVar
  loc_B9397A: FLdPr Me
  loc_B9397D: MemLdRfVar from_stack_1.htmFile
  loc_B93980: LdPrVar
  loc_B93982: LateMemCall
  loc_B93988: FFree1Var var_B4 = ""
  loc_B9398B: LitI4 0
  loc_B93990: LitI4 0
  loc_B93995: LitI2_Byte 0
  loc_B93997: LitStr "right"
  loc_B9399A: FMemLdR4 var_10C(24)
  loc_B9399F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B939A4: CVarStr var_B4
  loc_B939A7: PopAdLdVar
  loc_B939A8: FLdPr Me
  loc_B939AB: MemLdRfVar from_stack_1.htmFile
  loc_B939AE: LdPrVar
  loc_B939B0: LateMemCall
  loc_B939B6: FFree1Var var_B4 = ""
  loc_B939B9: LitI4 0
  loc_B939BE: LitI4 0
  loc_B939C3: LitI2_Byte 0
  loc_B939C5: LitStr "right"
  loc_B939C8: FMemLdR4 var_10C(28)
  loc_B939CD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B939D2: CVarStr var_B4
  loc_B939D5: PopAdLdVar
  loc_B939D6: FLdPr Me
  loc_B939D9: MemLdRfVar from_stack_1.htmFile
  loc_B939DC: LdPrVar
  loc_B939DE: LateMemCall
  loc_B939E4: FFree1Var var_B4 = ""
  loc_B939E7: FLdRfVar var_FE
  loc_B939EA: FLdPr Me
  loc_B939ED: VCallAd Control_ID_chkExcluirFeco
  loc_B939F0: FStAdFunc var_88
  loc_B939F3: FLdPr var_88
  loc_B939F6:  = Me.Value
  loc_B939FB: FLdI2 var_FE
  loc_B939FE: CI4UI1
  loc_B939FF: LitI4 0
  loc_B93A04: EqI4
  loc_B93A05: FFree1Ad var_88
  loc_B93A08: BranchF loc_B93A39
  loc_B93A0B: LitI4 0
  loc_B93A10: LitI4 0
  loc_B93A15: LitI2_Byte 0
  loc_B93A17: LitStr "center"
  loc_B93A1A: FMemLdR4 var_10C(32)
  loc_B93A1F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93A24: CVarStr var_B4
  loc_B93A27: PopAdLdVar
  loc_B93A28: FLdPr Me
  loc_B93A2B: MemLdRfVar from_stack_1.htmFile
  loc_B93A2E: LdPrVar
  loc_B93A30: LateMemCall
  loc_B93A36: FFree1Var var_B4 = ""
  loc_B93A39: LitVarStr var_A4, "     </tr>"
  loc_B93A3E: PopAdLdVar
  loc_B93A3F: FLdPr Me
  loc_B93A42: MemLdRfVar from_stack_1.htmFile
  loc_B93A45: LdPrVar
  loc_B93A47: LateMemCall
  loc_B93A4D: LitI4 0
  loc_B93A52: FStR4 var_10C
  loc_B93A55: AryUnlock
  loc_B93A58: FLdPr Me
  loc_B93A5B: MemLdRfVar from_stack_1.global_96
  loc_B93A5E: NextI2 var_102, loc_B9381E
  loc_B93A63: LitVarStr var_A4, "  <tr class=""Totales"">"
  loc_B93A68: PopAdLdVar
  loc_B93A69: FLdPr Me
  loc_B93A6C: MemLdRfVar from_stack_1.htmFile
  loc_B93A6F: LdPrVar
  loc_B93A71: LateMemCall
  loc_B93A77: LitStr "    <th colspan="""
  loc_B93A7A: LitI2_Byte 3
  loc_B93A7C: FLdPr Me
  loc_B93A7F: MemLdUI1 global_144
  loc_B93A83: CI2UI1
  loc_B93A85: AddI2
  loc_B93A86: CStrUI1
  loc_B93A88: FStStrNoPop var_F8
  loc_B93A8B: ConcatStr
  loc_B93A8C: FStStrNoPop var_FC
  loc_B93A8F: LitStr """ align=""right"">Total de débitos/créditos no conciliados </th>"
  loc_B93A92: ConcatStr
  loc_B93A93: CVarStr var_B4
  loc_B93A96: PopAdLdVar
  loc_B93A97: FLdPr Me
  loc_B93A9A: MemLdRfVar from_stack_1.htmFile
  loc_B93A9D: LdPrVar
  loc_B93A9F: LateMemCall
  loc_B93AA5: FFreeStr var_F8 = ""
  loc_B93AAC: FFree1Var var_B4 = ""
  loc_B93AAF: LitStr "    <th align=""right"">"
  loc_B93AB2: FLdPr Me
  loc_B93AB5: MemLdStr global_100
  loc_B93AB8: ConcatStr
  loc_B93AB9: FStStrNoPop var_F8
  loc_B93ABC: LitStr "</th>"
  loc_B93ABF: ConcatStr
  loc_B93AC0: CVarStr var_B4
  loc_B93AC3: PopAdLdVar
  loc_B93AC4: FLdPr Me
  loc_B93AC7: MemLdRfVar from_stack_1.htmFile
  loc_B93ACA: LdPrVar
  loc_B93ACC: LateMemCall
  loc_B93AD2: FFree1Str var_F8
  loc_B93AD5: FFree1Var var_B4 = ""
  loc_B93AD8: LitStr "    <th align=""right"">"
  loc_B93ADB: FLdPr Me
  loc_B93ADE: MemLdStr global_104
  loc_B93AE1: ConcatStr
  loc_B93AE2: FStStrNoPop var_F8
  loc_B93AE5: LitStr "</th>"
  loc_B93AE8: ConcatStr
  loc_B93AE9: CVarStr var_B4
  loc_B93AEC: PopAdLdVar
  loc_B93AED: FLdPr Me
  loc_B93AF0: MemLdRfVar from_stack_1.htmFile
  loc_B93AF3: LdPrVar
  loc_B93AF5: LateMemCall
  loc_B93AFB: FFree1Str var_F8
  loc_B93AFE: FFree1Var var_B4 = ""
  loc_B93B01: LitVarStr var_A4, "    <th align=""right"">&nbsp;</th>"
  loc_B93B06: PopAdLdVar
  loc_B93B07: FLdPr Me
  loc_B93B0A: MemLdRfVar from_stack_1.htmFile
  loc_B93B0D: LdPrVar
  loc_B93B0F: LateMemCall
  loc_B93B15: LitVarStr var_A4, "  </tr>"
  loc_B93B1A: PopAdLdVar
  loc_B93B1B: FLdPr Me
  loc_B93B1E: MemLdRfVar from_stack_1.htmFile
  loc_B93B21: LdPrVar
  loc_B93B23: LateMemCall
  loc_B93B29: LitVarStr var_A4, "  <tr class=""Encabezado"">"
  loc_B93B2E: PopAdLdVar
  loc_B93B2F: FLdPr Me
  loc_B93B32: MemLdRfVar from_stack_1.htmFile
  loc_B93B35: LdPrVar
  loc_B93B37: LateMemCall
  loc_B93B3D: LitStr "    <th colspan="""
  loc_B93B40: LitI2_Byte 6
  loc_B93B42: FLdPr Me
  loc_B93B45: MemLdUI1 global_144
  loc_B93B49: CI2UI1
  loc_B93B4B: AddI2
  loc_B93B4C: CStrUI1
  loc_B93B4E: FStStrNoPop var_F8
  loc_B93B51: ConcatStr
  loc_B93B52: FStStrNoPop var_FC
  loc_B93B55: LitStr """ align=""left"">Detalle de débitos/créditos no registrados</th>"
  loc_B93B58: ConcatStr
  loc_B93B59: CVarStr var_B4
  loc_B93B5C: PopAdLdVar
  loc_B93B5D: FLdPr Me
  loc_B93B60: MemLdRfVar from_stack_1.htmFile
  loc_B93B63: LdPrVar
  loc_B93B65: LateMemCall
  loc_B93B6B: FFreeStr var_F8 = ""
  loc_B93B72: FFree1Var var_B4 = ""
  loc_B93B75: LitVarStr var_A4, "  </tr>"
  loc_B93B7A: PopAdLdVar
  loc_B93B7B: FLdPr Me
  loc_B93B7E: MemLdRfVar from_stack_1.htmFile
  loc_B93B81: LdPrVar
  loc_B93B83: LateMemCall
  loc_B93B89: FLdPr Me
  loc_B93B8C: MemLdI2 global_146
  loc_B93B8F: BranchF loc_B93DF0
  loc_B93B92: LitI2_Byte 1
  loc_B93B94: FLdPr Me
  loc_B93B97: MemLdRfVar from_stack_1.global_96
  loc_B93B9A: FLdPr Me
  loc_B93B9D: MemLdStr global_92
  loc_B93BA0: LitI2_Byte 1
  loc_B93BA2: FnUBound
  loc_B93BA4: CI2I4
  loc_B93BA5: ForI2 var_110
  loc_B93BAB: FLdPr Me
  loc_B93BAE: MemLdI2 global_96
  loc_B93BB1: CI4UI1
  loc_B93BB2: FLdPr Me
  loc_B93BB5: MemLdStr global_92
  loc_B93BB8: AryLock
  loc_B93BBB: Ary1LdRf
  loc_B93BBC: FStR4 var_118
  loc_B93BBF: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B93BC4: PopAdLdVar
  loc_B93BC5: FLdPr Me
  loc_B93BC8: MemLdRfVar from_stack_1.htmFile
  loc_B93BCB: LdPrVar
  loc_B93BCD: LateMemCall
  loc_B93BD3: LitI4 0
  loc_B93BD8: LitI4 0
  loc_B93BDD: LitI2_Byte 0
  loc_B93BDF: LitStr "center"
  loc_B93BE2: FMemLdR4 var_118(0)
  loc_B93BE7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93BEC: CVarStr var_B4
  loc_B93BEF: PopAdLdVar
  loc_B93BF0: FLdPr Me
  loc_B93BF3: MemLdRfVar from_stack_1.htmFile
  loc_B93BF6: LdPrVar
  loc_B93BF8: LateMemCall
  loc_B93BFE: FFree1Var var_B4 = ""
  loc_B93C01: LitI4 0
  loc_B93C06: LitI4 0
  loc_B93C0B: LitI2_Byte 0
  loc_B93C0D: LitStr "center"
  loc_B93C10: FMemLdR4 var_118(4)
  loc_B93C15: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93C1A: CVarStr var_B4
  loc_B93C1D: PopAdLdVar
  loc_B93C1E: FLdPr Me
  loc_B93C21: MemLdRfVar from_stack_1.htmFile
  loc_B93C24: LdPrVar
  loc_B93C26: LateMemCall
  loc_B93C2C: FFree1Var var_B4 = ""
  loc_B93C2F: LitI4 0
  loc_B93C34: LitI4 0
  loc_B93C39: LitI2_Byte 0
  loc_B93C3B: LitStr "left"
  loc_B93C3E: FMemLdR4 var_118(8)
  loc_B93C43: LitStr " - "
  loc_B93C46: ConcatStr
  loc_B93C47: FStStrNoPop var_F8
  loc_B93C4A: FMemLdR4 var_118(12)
  loc_B93C4F: ConcatStr
  loc_B93C50: FStStrNoPop var_FC
  loc_B93C53: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93C58: CVarStr var_B4
  loc_B93C5B: PopAdLdVar
  loc_B93C5C: FLdPr Me
  loc_B93C5F: MemLdRfVar from_stack_1.htmFile
  loc_B93C62: LdPrVar
  loc_B93C64: LateMemCall
  loc_B93C6A: FFreeStr var_F8 = ""
  loc_B93C71: FFree1Var var_B4 = ""
  loc_B93C74: FLdRfVar var_FE
  loc_B93C77: FLdPr Me
  loc_B93C7A: VCallAd Control_ID_chkMuestraalaOrden
  loc_B93C7D: FStAdFunc var_88
  loc_B93C80: FLdPr var_88
  loc_B93C83:  = Me.Value
  loc_B93C88: FLdI2 var_FE
  loc_B93C8B: CI4UI1
  loc_B93C8C: LitI4 1
  loc_B93C91: EqI4
  loc_B93C92: FFree1Ad var_88
  loc_B93C95: BranchF loc_B93CC6
  loc_B93C98: LitI4 0
  loc_B93C9D: LitI4 0
  loc_B93CA2: LitI2_Byte 0
  loc_B93CA4: LitStr "left"
  loc_B93CA7: FMemLdR4 var_118(20)
  loc_B93CAC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93CB1: CVarStr var_B4
  loc_B93CB4: PopAdLdVar
  loc_B93CB5: FLdPr Me
  loc_B93CB8: MemLdRfVar from_stack_1.htmFile
  loc_B93CBB: LdPrVar
  loc_B93CBD: LateMemCall
  loc_B93CC3: FFree1Var var_B4 = ""
  loc_B93CC6: FLdRfVar var_FE
  loc_B93CC9: FLdPr Me
  loc_B93CCC: VCallAd Control_ID_chkMuestraOrdendePago
  loc_B93CCF: FStAdFunc var_88
  loc_B93CD2: FLdPr var_88
  loc_B93CD5:  = Me.Value
  loc_B93CDA: FLdI2 var_FE
  loc_B93CDD: CI4UI1
  loc_B93CDE: LitI4 1
  loc_B93CE3: EqI4
  loc_B93CE4: FFree1Ad var_88
  loc_B93CE7: BranchF loc_B93D18
  loc_B93CEA: LitI4 0
  loc_B93CEF: LitI4 0
  loc_B93CF4: LitI2_Byte 0
  loc_B93CF6: LitStr "right"
  loc_B93CF9: FMemLdR4 var_118(16)
  loc_B93CFE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93D03: CVarStr var_B4
  loc_B93D06: PopAdLdVar
  loc_B93D07: FLdPr Me
  loc_B93D0A: MemLdRfVar from_stack_1.htmFile
  loc_B93D0D: LdPrVar
  loc_B93D0F: LateMemCall
  loc_B93D15: FFree1Var var_B4 = ""
  loc_B93D18: LitI4 0
  loc_B93D1D: LitI4 0
  loc_B93D22: LitI2_Byte 0
  loc_B93D24: LitStr "right"
  loc_B93D27: FMemLdR4 var_118(24)
  loc_B93D2C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93D31: CVarStr var_B4
  loc_B93D34: PopAdLdVar
  loc_B93D35: FLdPr Me
  loc_B93D38: MemLdRfVar from_stack_1.htmFile
  loc_B93D3B: LdPrVar
  loc_B93D3D: LateMemCall
  loc_B93D43: FFree1Var var_B4 = ""
  loc_B93D46: LitI4 0
  loc_B93D4B: LitI4 0
  loc_B93D50: LitI2_Byte 0
  loc_B93D52: LitStr "right"
  loc_B93D55: FMemLdR4 var_118(28)
  loc_B93D5A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93D5F: CVarStr var_B4
  loc_B93D62: PopAdLdVar
  loc_B93D63: FLdPr Me
  loc_B93D66: MemLdRfVar from_stack_1.htmFile
  loc_B93D69: LdPrVar
  loc_B93D6B: LateMemCall
  loc_B93D71: FFree1Var var_B4 = ""
  loc_B93D74: FLdRfVar var_FE
  loc_B93D77: FLdPr Me
  loc_B93D7A: VCallAd Control_ID_chkExcluirFeco
  loc_B93D7D: FStAdFunc var_88
  loc_B93D80: FLdPr var_88
  loc_B93D83:  = Me.Value
  loc_B93D88: FLdI2 var_FE
  loc_B93D8B: CI4UI1
  loc_B93D8C: LitI4 0
  loc_B93D91: EqI4
  loc_B93D92: FFree1Ad var_88
  loc_B93D95: BranchF loc_B93DC6
  loc_B93D98: LitI4 0
  loc_B93D9D: LitI4 0
  loc_B93DA2: LitI2_Byte 0
  loc_B93DA4: LitStr "center"
  loc_B93DA7: FMemLdR4 var_118(32)
  loc_B93DAC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B93DB1: CVarStr var_B4
  loc_B93DB4: PopAdLdVar
  loc_B93DB5: FLdPr Me
  loc_B93DB8: MemLdRfVar from_stack_1.htmFile
  loc_B93DBB: LdPrVar
  loc_B93DBD: LateMemCall
  loc_B93DC3: FFree1Var var_B4 = ""
  loc_B93DC6: LitVarStr var_A4, "     </tr>"
  loc_B93DCB: PopAdLdVar
  loc_B93DCC: FLdPr Me
  loc_B93DCF: MemLdRfVar from_stack_1.htmFile
  loc_B93DD2: LdPrVar
  loc_B93DD4: LateMemCall
  loc_B93DDA: LitI4 0
  loc_B93DDF: FStR4 var_118
  loc_B93DE2: AryUnlock
  loc_B93DE5: FLdPr Me
  loc_B93DE8: MemLdRfVar from_stack_1.global_96
  loc_B93DEB: NextI2 var_110, loc_B93BAB
  loc_B93DF0: LitVarStr var_A4, "  <tr class=""Totales"">"
  loc_B93DF5: PopAdLdVar
  loc_B93DF6: FLdPr Me
  loc_B93DF9: MemLdRfVar from_stack_1.htmFile
  loc_B93DFC: LdPrVar
  loc_B93DFE: LateMemCall
  loc_B93E04: LitStr "    <th colspan="""
  loc_B93E07: LitI2_Byte 3
  loc_B93E09: FLdPr Me
  loc_B93E0C: MemLdUI1 global_144
  loc_B93E10: CI2UI1
  loc_B93E12: AddI2
  loc_B93E13: CStrUI1
  loc_B93E15: FStStrNoPop var_F8
  loc_B93E18: ConcatStr
  loc_B93E19: FStStrNoPop var_FC
  loc_B93E1C: LitStr """ align=""right"">Total de débitos/créditos no registrados </th>"
  loc_B93E1F: ConcatStr
  loc_B93E20: CVarStr var_B4
  loc_B93E23: PopAdLdVar
  loc_B93E24: FLdPr Me
  loc_B93E27: MemLdRfVar from_stack_1.htmFile
  loc_B93E2A: LdPrVar
  loc_B93E2C: LateMemCall
  loc_B93E32: FFreeStr var_F8 = ""
  loc_B93E39: FFree1Var var_B4 = ""
  loc_B93E3C: LitStr "    <th align=""right"">"
  loc_B93E3F: FLdPr Me
  loc_B93E42: MemLdStr global_108
  loc_B93E45: ConcatStr
  loc_B93E46: FStStrNoPop var_F8
  loc_B93E49: LitStr "</th>"
  loc_B93E4C: ConcatStr
  loc_B93E4D: CVarStr var_B4
  loc_B93E50: PopAdLdVar
  loc_B93E51: FLdPr Me
  loc_B93E54: MemLdRfVar from_stack_1.htmFile
  loc_B93E57: LdPrVar
  loc_B93E59: LateMemCall
  loc_B93E5F: FFree1Str var_F8
  loc_B93E62: FFree1Var var_B4 = ""
  loc_B93E65: LitStr "    <th align=""right"">"
  loc_B93E68: FLdPr Me
  loc_B93E6B: MemLdStr global_112
  loc_B93E6E: ConcatStr
  loc_B93E6F: FStStrNoPop var_F8
  loc_B93E72: LitStr "</th>"
  loc_B93E75: ConcatStr
  loc_B93E76: CVarStr var_B4
  loc_B93E79: PopAdLdVar
  loc_B93E7A: FLdPr Me
  loc_B93E7D: MemLdRfVar from_stack_1.htmFile
  loc_B93E80: LdPrVar
  loc_B93E82: LateMemCall
  loc_B93E88: FFree1Str var_F8
  loc_B93E8B: FFree1Var var_B4 = ""
  loc_B93E8E: LitVarStr var_A4, "    <th align=""right"">&nbsp;</th>"
  loc_B93E93: PopAdLdVar
  loc_B93E94: FLdPr Me
  loc_B93E97: MemLdRfVar from_stack_1.htmFile
  loc_B93E9A: LdPrVar
  loc_B93E9C: LateMemCall
  loc_B93EA2: LitVarStr var_A4, "  </tr>"
  loc_B93EA7: PopAdLdVar
  loc_B93EA8: FLdPr Me
  loc_B93EAB: MemLdRfVar from_stack_1.htmFile
  loc_B93EAE: LdPrVar
  loc_B93EB0: LateMemCall
  loc_B93EB6: LitVarStr var_A4, "</table>"
  loc_B93EBB: PopAdLdVar
  loc_B93EBC: FLdPr Me
  loc_B93EBF: MemLdRfVar from_stack_1.htmFile
  loc_B93EC2: LdPrVar
  loc_B93EC4: LateMemCall
  loc_B93ECA: LitVarStr var_A4, "<br>"
  loc_B93ECF: PopAdLdVar
  loc_B93ED0: FLdPr Me
  loc_B93ED3: MemLdRfVar from_stack_1.htmFile
  loc_B93ED6: LdPrVar
  loc_B93ED8: LateMemCall
  loc_B93EDE: LitVarStr var_A4, "<table border=""1"" align=""center"" cellpadding=""5"" cellspacing=""0"" class=""LineaDato"">"
  loc_B93EE3: PopAdLdVar
  loc_B93EE4: FLdPr Me
  loc_B93EE7: MemLdRfVar from_stack_1.htmFile
  loc_B93EEA: LdPrVar
  loc_B93EEC: LateMemCall
  loc_B93EF2: LitVarStr var_A4, "  <tr>"
  loc_B93EF7: PopAdLdVar
  loc_B93EF8: FLdPr Me
  loc_B93EFB: MemLdRfVar from_stack_1.htmFile
  loc_B93EFE: LdPrVar
  loc_B93F00: LateMemCall
  loc_B93F06: LitVarStr var_A4, "    <td align=""right"">SALDO SEGÚN NUESTROS LIBROS</td>"
  loc_B93F0B: PopAdLdVar
  loc_B93F0C: FLdPr Me
  loc_B93F0F: MemLdRfVar from_stack_1.htmFile
  loc_B93F12: LdPrVar
  loc_B93F14: LateMemCall
  loc_B93F1A: FLdPr Me
  loc_B93F1D: MemLdStr global_116
  loc_B93F20: CR8Str
  loc_B93F22: LitI2_Byte 0
  loc_B93F24: CR8I2
  loc_B93F25: LtR8
  loc_B93F26: BranchF loc_B93F78
  loc_B93F29: LitI2_Byte 0
  loc_B93F2B: LitVar_Missing var_B4
  loc_B93F2E: LitI2_Byte &HFF
  loc_B93F30: FLdPr Me
  loc_B93F33: MemLdStr global_116
  loc_B93F36: CR8Str
  loc_B93F38: FnAbsR4
  loc_B93F39: CVarR8
  loc_B93F3D: PopAdLdVar
  loc_B93F3E: FLdPr Me
  loc_B93F41: MemLdRfVar from_stack_1.global_116
  loc_B93F44: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B93F49: FFree1Var var_B4 = ""
  loc_B93F4C: LitStr "    <td align=""right"">("
  loc_B93F4F: FLdPr Me
  loc_B93F52: MemLdStr global_116
  loc_B93F55: ConcatStr
  loc_B93F56: FStStrNoPop var_F8
  loc_B93F59: LitStr ")</td>"
  loc_B93F5C: ConcatStr
  loc_B93F5D: CVarStr var_B4
  loc_B93F60: PopAdLdVar
  loc_B93F61: FLdPr Me
  loc_B93F64: MemLdRfVar from_stack_1.htmFile
  loc_B93F67: LdPrVar
  loc_B93F69: LateMemCall
  loc_B93F6F: FFree1Str var_F8
  loc_B93F72: FFree1Var var_B4 = ""
  loc_B93F75: Branch loc_B93FA1
  loc_B93F78: LitStr "    <td align=""right"">"
  loc_B93F7B: FLdPr Me
  loc_B93F7E: MemLdStr global_116
  loc_B93F81: ConcatStr
  loc_B93F82: FStStrNoPop var_F8
  loc_B93F85: LitStr "</td>"
  loc_B93F88: ConcatStr
  loc_B93F89: CVarStr var_B4
  loc_B93F8C: PopAdLdVar
  loc_B93F8D: FLdPr Me
  loc_B93F90: MemLdRfVar from_stack_1.htmFile
  loc_B93F93: LdPrVar
  loc_B93F95: LateMemCall
  loc_B93F9B: FFree1Str var_F8
  loc_B93F9E: FFree1Var var_B4 = ""
  loc_B93FA1: LitVarStr var_A4, "  </tr>"
  loc_B93FA6: PopAdLdVar
  loc_B93FA7: FLdPr Me
  loc_B93FAA: MemLdRfVar from_stack_1.htmFile
  loc_B93FAD: LdPrVar
  loc_B93FAF: LateMemCall
  loc_B93FB5: LitVarStr var_A4, "  <tr>"
  loc_B93FBA: PopAdLdVar
  loc_B93FBB: FLdPr Me
  loc_B93FBE: MemLdRfVar from_stack_1.htmFile
  loc_B93FC1: LdPrVar
  loc_B93FC3: LateMemCall
  loc_B93FC9: LitVarStr var_A4, "    <td align=""right"">MENOS DÉBITOS NO CONCILIADOS</td>"
  loc_B93FCE: PopAdLdVar
  loc_B93FCF: FLdPr Me
  loc_B93FD2: MemLdRfVar from_stack_1.htmFile
  loc_B93FD5: LdPrVar
  loc_B93FD7: LateMemCall
  loc_B93FDD: LitStr "    <td align=""right"">"
  loc_B93FE0: FLdPr Me
  loc_B93FE3: MemLdStr global_100
  loc_B93FE6: ConcatStr
  loc_B93FE7: FStStrNoPop var_F8
  loc_B93FEA: LitStr "</td>"
  loc_B93FED: ConcatStr
  loc_B93FEE: CVarStr var_B4
  loc_B93FF1: PopAdLdVar
  loc_B93FF2: FLdPr Me
  loc_B93FF5: MemLdRfVar from_stack_1.htmFile
  loc_B93FF8: LdPrVar
  loc_B93FFA: LateMemCall
  loc_B94000: FFree1Str var_F8
  loc_B94003: FFree1Var var_B4 = ""
  loc_B94006: LitVarStr var_A4, "  </tr>"
  loc_B9400B: PopAdLdVar
  loc_B9400C: FLdPr Me
  loc_B9400F: MemLdRfVar from_stack_1.htmFile
  loc_B94012: LdPrVar
  loc_B94014: LateMemCall
  loc_B9401A: LitVarStr var_A4, "  <tr>"
  loc_B9401F: PopAdLdVar
  loc_B94020: FLdPr Me
  loc_B94023: MemLdRfVar from_stack_1.htmFile
  loc_B94026: LdPrVar
  loc_B94028: LateMemCall
  loc_B9402E: LitVarStr var_A4, "    <td align=""right"">MAS CRÉDITOS NO CONCILIADOS</td>"
  loc_B94033: PopAdLdVar
  loc_B94034: FLdPr Me
  loc_B94037: MemLdRfVar from_stack_1.htmFile
  loc_B9403A: LdPrVar
  loc_B9403C: LateMemCall
  loc_B94042: LitStr "    <td align=""right"">"
  loc_B94045: FLdPr Me
  loc_B94048: MemLdStr global_104
  loc_B9404B: ConcatStr
  loc_B9404C: FStStrNoPop var_F8
  loc_B9404F: LitStr "</td>"
  loc_B94052: ConcatStr
  loc_B94053: CVarStr var_B4
  loc_B94056: PopAdLdVar
  loc_B94057: FLdPr Me
  loc_B9405A: MemLdRfVar from_stack_1.htmFile
  loc_B9405D: LdPrVar
  loc_B9405F: LateMemCall
  loc_B94065: FFree1Str var_F8
  loc_B94068: FFree1Var var_B4 = ""
  loc_B9406B: LitVarStr var_A4, "  </tr>"
  loc_B94070: PopAdLdVar
  loc_B94071: FLdPr Me
  loc_B94074: MemLdRfVar from_stack_1.htmFile
  loc_B94077: LdPrVar
  loc_B94079: LateMemCall
  loc_B9407F: LitVarStr var_A4, "  <tr>"
  loc_B94084: PopAdLdVar
  loc_B94085: FLdPr Me
  loc_B94088: MemLdRfVar from_stack_1.htmFile
  loc_B9408B: LdPrVar
  loc_B9408D: LateMemCall
  loc_B94093: LitVarStr var_A4, "    <td align=""right"">MENOS CRÉDITOS NO REGISTRADOS</td>"
  loc_B94098: PopAdLdVar
  loc_B94099: FLdPr Me
  loc_B9409C: MemLdRfVar from_stack_1.htmFile
  loc_B9409F: LdPrVar
  loc_B940A1: LateMemCall
  loc_B940A7: LitStr "    <td align=""right"">"
  loc_B940AA: FLdPr Me
  loc_B940AD: MemLdStr global_112
  loc_B940B0: ConcatStr
  loc_B940B1: FStStrNoPop var_F8
  loc_B940B4: LitStr "</td>"
  loc_B940B7: ConcatStr
  loc_B940B8: CVarStr var_B4
  loc_B940BB: PopAdLdVar
  loc_B940BC: FLdPr Me
  loc_B940BF: MemLdRfVar from_stack_1.htmFile
  loc_B940C2: LdPrVar
  loc_B940C4: LateMemCall
  loc_B940CA: FFree1Str var_F8
  loc_B940CD: FFree1Var var_B4 = ""
  loc_B940D0: LitVarStr var_A4, "  </tr>"
  loc_B940D5: PopAdLdVar
  loc_B940D6: FLdPr Me
  loc_B940D9: MemLdRfVar from_stack_1.htmFile
  loc_B940DC: LdPrVar
  loc_B940DE: LateMemCall
  loc_B940E4: LitVarStr var_A4, "  <tr>"
  loc_B940E9: PopAdLdVar
  loc_B940EA: FLdPr Me
  loc_B940ED: MemLdRfVar from_stack_1.htmFile
  loc_B940F0: LdPrVar
  loc_B940F2: LateMemCall
  loc_B940F8: LitVarStr var_A4, "    <td align=""right"">MAS DÉBITOS NO REGISTRADOS</td>"
  loc_B940FD: PopAdLdVar
  loc_B940FE: FLdPr Me
  loc_B94101: MemLdRfVar from_stack_1.htmFile
  loc_B94104: LdPrVar
  loc_B94106: LateMemCall
  loc_B9410C: LitStr "    <td align=""right"">"
  loc_B9410F: FLdPr Me
  loc_B94112: MemLdStr global_108
  loc_B94115: ConcatStr
  loc_B94116: FStStrNoPop var_F8
  loc_B94119: LitStr "</td>"
  loc_B9411C: ConcatStr
  loc_B9411D: CVarStr var_B4
  loc_B94120: PopAdLdVar
  loc_B94121: FLdPr Me
  loc_B94124: MemLdRfVar from_stack_1.htmFile
  loc_B94127: LdPrVar
  loc_B94129: LateMemCall
  loc_B9412F: FFree1Str var_F8
  loc_B94132: FFree1Var var_B4 = ""
  loc_B94135: LitVarStr var_A4, "  </tr>"
  loc_B9413A: PopAdLdVar
  loc_B9413B: FLdPr Me
  loc_B9413E: MemLdRfVar from_stack_1.htmFile
  loc_B94141: LdPrVar
  loc_B94143: LateMemCall
  loc_B94149: LitVarStr var_A4, "  <tr>"
  loc_B9414E: PopAdLdVar
  loc_B9414F: FLdPr Me
  loc_B94152: MemLdRfVar from_stack_1.htmFile
  loc_B94155: LdPrVar
  loc_B94157: LateMemCall
  loc_B9415D: LitVarStr var_A4, "    <td align=""right"">RESULTADO</td>"
  loc_B94162: PopAdLdVar
  loc_B94163: FLdPr Me
  loc_B94166: MemLdRfVar from_stack_1.htmFile
  loc_B94169: LdPrVar
  loc_B9416B: LateMemCall
  loc_B94171: FLdPr Me
  loc_B94174: MemLdStr global_120
  loc_B94177: CR8Str
  loc_B94179: LitI2_Byte 0
  loc_B9417B: CR8I2
  loc_B9417C: LtR8
  loc_B9417D: BranchF loc_B941CF
  loc_B94180: LitI2_Byte 0
  loc_B94182: LitVar_Missing var_B4
  loc_B94185: LitI2_Byte &HFF
  loc_B94187: FLdPr Me
  loc_B9418A: MemLdStr global_120
  loc_B9418D: CR8Str
  loc_B9418F: FnAbsR4
  loc_B94190: CVarR8
  loc_B94194: PopAdLdVar
  loc_B94195: FLdPr Me
  loc_B94198: MemLdRfVar from_stack_1.global_120
  loc_B9419B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B941A0: FFree1Var var_B4 = ""
  loc_B941A3: LitStr "    <td align=""right"">("
  loc_B941A6: FLdPr Me
  loc_B941A9: MemLdStr global_120
  loc_B941AC: ConcatStr
  loc_B941AD: FStStrNoPop var_F8
  loc_B941B0: LitStr ")</td>"
  loc_B941B3: ConcatStr
  loc_B941B4: CVarStr var_B4
  loc_B941B7: PopAdLdVar
  loc_B941B8: FLdPr Me
  loc_B941BB: MemLdRfVar from_stack_1.htmFile
  loc_B941BE: LdPrVar
  loc_B941C0: LateMemCall
  loc_B941C6: FFree1Str var_F8
  loc_B941C9: FFree1Var var_B4 = ""
  loc_B941CC: Branch loc_B941F8
  loc_B941CF: LitStr "    <td align=""right"">"
  loc_B941D2: FLdPr Me
  loc_B941D5: MemLdStr global_120
  loc_B941D8: ConcatStr
  loc_B941D9: FStStrNoPop var_F8
  loc_B941DC: LitStr "</td>"
  loc_B941DF: ConcatStr
  loc_B941E0: CVarStr var_B4
  loc_B941E3: PopAdLdVar
  loc_B941E4: FLdPr Me
  loc_B941E7: MemLdRfVar from_stack_1.htmFile
  loc_B941EA: LdPrVar
  loc_B941EC: LateMemCall
  loc_B941F2: FFree1Str var_F8
  loc_B941F5: FFree1Var var_B4 = ""
  loc_B941F8: LitVarStr var_A4, "  </tr>"
  loc_B941FD: PopAdLdVar
  loc_B941FE: FLdPr Me
  loc_B94201: MemLdRfVar from_stack_1.htmFile
  loc_B94204: LdPrVar
  loc_B94206: LateMemCall
  loc_B9420C: LitVarStr var_A4, "  <tr>"
  loc_B94211: PopAdLdVar
  loc_B94212: FLdPr Me
  loc_B94215: MemLdRfVar from_stack_1.htmFile
  loc_B94218: LdPrVar
  loc_B9421A: LateMemCall
  loc_B94220: LitVarStr var_A4, "    <td align=""right"">SALDO SEGÚN EXTRACTO BANCARIO</td>"
  loc_B94225: PopAdLdVar
  loc_B94226: FLdPr Me
  loc_B94229: MemLdRfVar from_stack_1.htmFile
  loc_B9422C: LdPrVar
  loc_B9422E: LateMemCall
  loc_B94234: LitStr "    <td align=""right"">"
  loc_B94237: FLdPr Me
  loc_B9423A: MemLdStr global_136
  loc_B9423D: ConcatStr
  loc_B9423E: FStStrNoPop var_F8
  loc_B94241: LitStr "</td>"
  loc_B94244: ConcatStr
  loc_B94245: CVarStr var_B4
  loc_B94248: PopAdLdVar
  loc_B94249: FLdPr Me
  loc_B9424C: MemLdRfVar from_stack_1.htmFile
  loc_B9424F: LdPrVar
  loc_B94251: LateMemCall
  loc_B94257: FFree1Str var_F8
  loc_B9425A: FFree1Var var_B4 = ""
  loc_B9425D: LitVarStr var_A4, "  </tr>"
  loc_B94262: PopAdLdVar
  loc_B94263: FLdPr Me
  loc_B94266: MemLdRfVar from_stack_1.htmFile
  loc_B94269: LdPrVar
  loc_B9426B: LateMemCall
  loc_B94271: LitVarStr var_A4, "  <tr>"
  loc_B94276: PopAdLdVar
  loc_B94277: FLdPr Me
  loc_B9427A: MemLdRfVar from_stack_1.htmFile
  loc_B9427D: LdPrVar
  loc_B9427F: LateMemCall
  loc_B94285: LitVarStr var_A4, "    <td align=""right"">DIFERENCIA</td>"
  loc_B9428A: PopAdLdVar
  loc_B9428B: FLdPr Me
  loc_B9428E: MemLdRfVar from_stack_1.htmFile
  loc_B94291: LdPrVar
  loc_B94293: LateMemCall
  loc_B94299: FLdPr Me
  loc_B9429C: MemLdStr global_124
  loc_B9429F: CR8Str
  loc_B942A1: LitI2_Byte 0
  loc_B942A3: CR8I2
  loc_B942A4: LtR8
  loc_B942A5: BranchF loc_B942F7
  loc_B942A8: LitI2_Byte 0
  loc_B942AA: LitVar_Missing var_B4
  loc_B942AD: LitI2_Byte &HFF
  loc_B942AF: FLdPr Me
  loc_B942B2: MemLdStr global_124
  loc_B942B5: CR8Str
  loc_B942B7: FnAbsR4
  loc_B942B8: CVarR8
  loc_B942BC: PopAdLdVar
  loc_B942BD: FLdPr Me
  loc_B942C0: MemLdRfVar from_stack_1.global_124
  loc_B942C3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B942C8: FFree1Var var_B4 = ""
  loc_B942CB: LitStr "    <td align=""right"">("
  loc_B942CE: FLdPr Me
  loc_B942D1: MemLdStr global_124
  loc_B942D4: ConcatStr
  loc_B942D5: FStStrNoPop var_F8
  loc_B942D8: LitStr ")</td>"
  loc_B942DB: ConcatStr
  loc_B942DC: CVarStr var_B4
  loc_B942DF: PopAdLdVar
  loc_B942E0: FLdPr Me
  loc_B942E3: MemLdRfVar from_stack_1.htmFile
  loc_B942E6: LdPrVar
  loc_B942E8: LateMemCall
  loc_B942EE: FFree1Str var_F8
  loc_B942F1: FFree1Var var_B4 = ""
  loc_B942F4: Branch loc_B94320
  loc_B942F7: LitStr "    <td align=""right"">"
  loc_B942FA: FLdPr Me
  loc_B942FD: MemLdStr global_124
  loc_B94300: ConcatStr
  loc_B94301: FStStrNoPop var_F8
  loc_B94304: LitStr "</td>"
  loc_B94307: ConcatStr
  loc_B94308: CVarStr var_B4
  loc_B9430B: PopAdLdVar
  loc_B9430C: FLdPr Me
  loc_B9430F: MemLdRfVar from_stack_1.htmFile
  loc_B94312: LdPrVar
  loc_B94314: LateMemCall
  loc_B9431A: FFree1Str var_F8
  loc_B9431D: FFree1Var var_B4 = ""
  loc_B94320: LitVarStr var_A4, "  </tr>"
  loc_B94325: PopAdLdVar
  loc_B94326: FLdPr Me
  loc_B94329: MemLdRfVar from_stack_1.htmFile
  loc_B9432C: LdPrVar
  loc_B9432E: LateMemCall
  loc_B94334: LitVarStr var_A4, "</table>"
  loc_B94339: PopAdLdVar
  loc_B9433A: FLdPr Me
  loc_B9433D: MemLdRfVar from_stack_1.htmFile
  loc_B94340: LdPrVar
  loc_B94342: LateMemCall
  loc_B94348: Call Proc_171_30_971D40()
  loc_B9434D: FLdPr Me
  loc_B94350: MemLdRfVar from_stack_1.htmFile
  loc_B94353: LdPrVar
  loc_B94355: LateMemCall
  loc_B9435B: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B94360: ExitProcHresult
  loc_B94361: ConcatStr
  loc_B94362: FStStrNoPop var_5BD0
End Sub

Private Function Proc_171_29_AC3784() 'AC3784
  'Data Table: 49BA1C
  loc_AC3194: LitVarStr var_94, "<html>"
  loc_AC3199: PopAdLdVar
  loc_AC319A: FLdPr Me
  loc_AC319D: MemLdRfVar from_stack_1.htmFile
  loc_AC31A0: LdPrVar
  loc_AC31A2: LateMemCall
  loc_AC31A8: LitVarStr var_94, "<head>"
  loc_AC31AD: PopAdLdVar
  loc_AC31AE: FLdPr Me
  loc_AC31B1: MemLdRfVar from_stack_1.htmFile
  loc_AC31B4: LdPrVar
  loc_AC31B6: LateMemCall
  loc_AC31BC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AC31C1: PopAdLdVar
  loc_AC31C2: FLdPr Me
  loc_AC31C5: MemLdRfVar from_stack_1.htmFile
  loc_AC31C8: LdPrVar
  loc_AC31CA: LateMemCall
  loc_AC31D0: LitStr "<title>"
  loc_AC31D3: FLdRfVar var_A8
  loc_AC31D6: FLdPr Me
  loc_AC31D9:  = Me.Caption
  loc_AC31DE: ILdRf var_A8
  loc_AC31E1: ConcatStr
  loc_AC31E2: FStStrNoPop var_AC
  loc_AC31E5: LitStr "</title>"
  loc_AC31E8: ConcatStr
  loc_AC31E9: CVarStr var_BC
  loc_AC31EC: PopAdLdVar
  loc_AC31ED: FLdPr Me
  loc_AC31F0: MemLdRfVar from_stack_1.htmFile
  loc_AC31F3: LdPrVar
  loc_AC31F5: LateMemCall
  loc_AC31FB: FFreeStr var_A8 = ""
  loc_AC3202: FFree1Var var_BC = ""
  loc_AC3205: LitStr vbNullString
  loc_AC3208: ILdRf Me
  loc_AC320B: CastAd
  loc_AC320E: FStAdFunc var_C0
  loc_AC3211: FLdRfVar var_C0
  loc_AC3214: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AC3219: FFree1Ad var_C0
  loc_AC321C: LitI4 0
  loc_AC3221: FStStrCopy var_AC
  loc_AC3224: FLdRfVar var_AC
  loc_AC3227: LitI4 0
  loc_AC322C: FStStrCopy var_A8
  loc_AC322F: FLdRfVar var_A8
  loc_AC3232: LitI2_Byte &HFF
  loc_AC3234: PopTmpLdAd2 var_C2
  loc_AC3237: FLdPr Me
  loc_AC323A: MemLdRfVar from_stack_1.htmFile
  loc_AC323D: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AC3242: FFreeStr var_A8 = ""
  loc_AC3249: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AC324E: PopAdLdVar
  loc_AC324F: FLdPr Me
  loc_AC3252: MemLdRfVar from_stack_1.htmFile
  loc_AC3255: LdPrVar
  loc_AC3257: LateMemCall
  loc_AC325D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AC3262: PopAdLdVar
  loc_AC3263: FLdPr Me
  loc_AC3266: MemLdRfVar from_stack_1.htmFile
  loc_AC3269: LdPrVar
  loc_AC326B: LateMemCall
  loc_AC3271: LitVarStr var_A4, "    <th colspan=""2"" align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_AC3276: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AC327B: FStVarCopyObj var_BC
  loc_AC327E: FLdRfVar var_BC
  loc_AC3281: FLdRfVar var_D4
  loc_AC3284: ImpAdCallFPR4  = Ucase()
  loc_AC3289: FLdRfVar var_D4
  loc_AC328C: ConcatVar var_E4
  loc_AC3290: LitVarStr var_F4, "</p>"
  loc_AC3295: ConcatVar var_104
  loc_AC3299: PopAdLdVar
  loc_AC329A: FLdPr Me
  loc_AC329D: MemLdRfVar from_stack_1.htmFile
  loc_AC32A0: LdPrVar
  loc_AC32A2: LateMemCall
  loc_AC32A8: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_AC32B3: FLdPr Me
  loc_AC32B6: VCallAd Control_ID_FechMobaMsk
  loc_AC32B9: FStAdFunc var_C0
  loc_AC32BC: FLdPr var_C0
  loc_AC32BF: LateIdLdVar var_BC DispID_15 0
  loc_AC32C6: PopAd
  loc_AC32C8: LitVarStr var_F4, "    <p>Conciliación bancaria al "
  loc_AC32CD: LitI4 1
  loc_AC32D2: LitI4 1
  loc_AC32D7: LitVarStr var_A4, "dd/mm/yyyy"
  loc_AC32DC: FStVarCopyObj var_E4
  loc_AC32DF: FLdRfVar var_E4
  loc_AC32E2: FLdRfVar var_BC
  loc_AC32E5: CStrVarTmp
  loc_AC32E6: FStStrNoPop var_A8
  loc_AC32E9: CDateStr
  loc_AC32EB: CVarDate var_D4
  loc_AC32EF: FLdRfVar var_104
  loc_AC32F2: ImpAdCallFPR4  = Format(, )
  loc_AC32F7: FLdRfVar var_104
  loc_AC32FA: ConcatVar var_124
  loc_AC32FE: LitVarStr var_114, "</p></th>"
  loc_AC3303: ConcatVar var_134
  loc_AC3307: PopAdLdVar
  loc_AC3308: FLdPr Me
  loc_AC330B: MemLdRfVar from_stack_1.htmFile
  loc_AC330E: LdPrVar
  loc_AC3310: LateMemCall
  loc_AC3316: FFree1Str var_A8
  loc_AC3319: FFree1Ad var_C0
  loc_AC331C: FFreeVar var_BC = "": var_D4 = "": var_E4 = "": var_104 = "": var_124 = ""
  loc_AC332B: LitVarStr var_94, "  </tr>"
  loc_AC3330: PopAdLdVar
  loc_AC3331: FLdPr Me
  loc_AC3334: MemLdRfVar from_stack_1.htmFile
  loc_AC3337: LdPrVar
  loc_AC3339: LateMemCall
  loc_AC333F: LitVarStr var_94, "  <tr>"
  loc_AC3344: PopAdLdVar
  loc_AC3345: FLdPr Me
  loc_AC3348: MemLdRfVar from_stack_1.htmFile
  loc_AC334B: LdPrVar
  loc_AC334D: LateMemCall
  loc_AC3353: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_AC3358: PopAdLdVar
  loc_AC3359: FLdPr Me
  loc_AC335C: MemLdRfVar from_stack_1.htmFile
  loc_AC335F: LdPrVar
  loc_AC3361: LateMemCall
  loc_AC3367: LitVarStr var_94, "  </tr>"
  loc_AC336C: PopAdLdVar
  loc_AC336D: FLdPr Me
  loc_AC3370: MemLdRfVar from_stack_1.htmFile
  loc_AC3373: LdPrVar
  loc_AC3375: LateMemCall
  loc_AC337B: LitVarStr var_94, "  <tr valign=""top"">"
  loc_AC3380: PopAdLdVar
  loc_AC3381: FLdPr Me
  loc_AC3384: MemLdRfVar from_stack_1.htmFile
  loc_AC3387: LdPrVar
  loc_AC3389: LateMemCall
  loc_AC338F: LitVarStr var_94, "    <th width=""7" & Chr(37) & """ align=""left"">Banco:<br>"
  loc_AC3394: PopAdLdVar
  loc_AC3395: FLdPr Me
  loc_AC3398: MemLdRfVar from_stack_1.htmFile
  loc_AC339B: LdPrVar
  loc_AC339D: LateMemCall
  loc_AC33A3: LitVarStr var_94, "    N&ordm;:<br></th>"
  loc_AC33A8: PopAdLdVar
  loc_AC33A9: FLdPr Me
  loc_AC33AC: MemLdRfVar from_stack_1.htmFile
  loc_AC33AF: LdPrVar
  loc_AC33B1: LateMemCall
  loc_AC33B7: LitVarStr var_94, "    <th width=""93" & Chr(37) & """ align=""left"">"
  loc_AC33BC: PopAdLdVar
  loc_AC33BD: FLdPr Me
  loc_AC33C0: MemLdRfVar from_stack_1.htmFile
  loc_AC33C3: LdPrVar
  loc_AC33C5: LateMemCall
  loc_AC33CB: LitStr "      "
  loc_AC33CE: FLdRfVar var_A8
  loc_AC33D1: FLdPr Me
  loc_AC33D4: MemLdRfVar from_stack_1.global_76
  loc_AC33D7: NewIfNullPr tblbanco
  loc_AC33DA: from_stack_1v = tblbanco.CodiBancGet()
  loc_AC33DF: ILdRf var_A8
  loc_AC33E2: ConcatStr
  loc_AC33E3: FStStrNoPop var_AC
  loc_AC33E6: LitStr " - "
  loc_AC33E9: ConcatStr
  loc_AC33EA: CVarStr var_BC
  loc_AC33ED: PopAdLdVar
  loc_AC33EE: FLdPr Me
  loc_AC33F1: MemLdRfVar from_stack_1.htmFile
  loc_AC33F4: LdPrVar
  loc_AC33F6: LateMemCall
  loc_AC33FC: FFreeStr var_A8 = ""
  loc_AC3403: FFree1Var var_BC = ""
  loc_AC3406: LitStr "      "
  loc_AC3409: FLdRfVar var_A8
  loc_AC340C: FLdPr Me
  loc_AC340F: MemLdRfVar from_stack_1.global_76
  loc_AC3412: NewIfNullPr tblbanco
  loc_AC3415: from_stack_1v = tblbanco.DetaBancGet()
  loc_AC341A: ILdRf var_A8
  loc_AC341D: ConcatStr
  loc_AC341E: FStStrNoPop var_AC
  loc_AC3421: LitStr "<br>"
  loc_AC3424: ConcatStr
  loc_AC3425: CVarStr var_BC
  loc_AC3428: PopAdLdVar
  loc_AC3429: FLdPr Me
  loc_AC342C: MemLdRfVar from_stack_1.htmFile
  loc_AC342F: LdPrVar
  loc_AC3431: LateMemCall
  loc_AC3437: FFreeStr var_A8 = ""
  loc_AC343E: FFree1Var var_BC = ""
  loc_AC3441: LitStr "      "
  loc_AC3444: FLdRfVar var_A8
  loc_AC3447: FLdPr Me
  loc_AC344A: MemLdRfVar from_stack_1.global_76
  loc_AC344D: NewIfNullPr tblbanco
  loc_AC3450: from_stack_1v = tblbanco.NumeBancGet()
  loc_AC3455: ILdRf var_A8
  loc_AC3458: ConcatStr
  loc_AC3459: FStStrNoPop var_AC
  loc_AC345C: LitStr "</th>"
  loc_AC345F: ConcatStr
  loc_AC3460: CVarStr var_BC
  loc_AC3463: PopAdLdVar
  loc_AC3464: FLdPr Me
  loc_AC3467: MemLdRfVar from_stack_1.htmFile
  loc_AC346A: LdPrVar
  loc_AC346C: LateMemCall
  loc_AC3472: FFreeStr var_A8 = ""
  loc_AC3479: FFree1Var var_BC = ""
  loc_AC347C: LitVarStr var_94, "  </tr>"
  loc_AC3481: PopAdLdVar
  loc_AC3482: FLdPr Me
  loc_AC3485: MemLdRfVar from_stack_1.htmFile
  loc_AC3488: LdPrVar
  loc_AC348A: LateMemCall
  loc_AC3490: LitVarStr var_94, "</table>"
  loc_AC3495: PopAdLdVar
  loc_AC3496: FLdPr Me
  loc_AC3499: MemLdRfVar from_stack_1.htmFile
  loc_AC349C: LdPrVar
  loc_AC349E: LateMemCall
  loc_AC34A4: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AC34A9: PopAdLdVar
  loc_AC34AA: FLdPr Me
  loc_AC34AD: MemLdRfVar from_stack_1.htmFile
  loc_AC34B0: LdPrVar
  loc_AC34B2: LateMemCall
  loc_AC34B8: LitVarStr var_94, "  <THEAD>"
  loc_AC34BD: PopAdLdVar
  loc_AC34BE: FLdPr Me
  loc_AC34C1: MemLdRfVar from_stack_1.htmFile
  loc_AC34C4: LdPrVar
  loc_AC34C6: LateMemCall
  loc_AC34CC: LitVarStr var_94, "  <tr class=""Encabezado"">"
  loc_AC34D1: PopAdLdVar
  loc_AC34D2: FLdPr Me
  loc_AC34D5: MemLdRfVar from_stack_1.htmFile
  loc_AC34D8: LdPrVar
  loc_AC34DA: LateMemCall
  loc_AC34E0: LitVarStr var_94, "    <th align=""center"">Fecha</th>"
  loc_AC34E5: PopAdLdVar
  loc_AC34E6: FLdPr Me
  loc_AC34E9: MemLdRfVar from_stack_1.htmFile
  loc_AC34EC: LdPrVar
  loc_AC34EE: LateMemCall
  loc_AC34F4: LitVarStr var_94, "    <th align=""center"">Comprobante</th>"
  loc_AC34F9: PopAdLdVar
  loc_AC34FA: FLdPr Me
  loc_AC34FD: MemLdRfVar from_stack_1.htmFile
  loc_AC3500: LdPrVar
  loc_AC3502: LateMemCall
  loc_AC3508: LitVarStr var_94, "    <th align=""center"">Tipo de movimiento </th>"
  loc_AC350D: PopAdLdVar
  loc_AC350E: FLdPr Me
  loc_AC3511: MemLdRfVar from_stack_1.htmFile
  loc_AC3514: LdPrVar
  loc_AC3516: LateMemCall
  loc_AC351C: FLdRfVar var_C2
  loc_AC351F: FLdPr Me
  loc_AC3522: VCallAd Control_ID_chkMuestraalaOrden
  loc_AC3525: FStAdFunc var_C0
  loc_AC3528: FLdPr var_C0
  loc_AC352B:  = Me.Value
  loc_AC3530: FLdI2 var_C2
  loc_AC3533: CI4UI1
  loc_AC3534: LitI4 1
  loc_AC3539: EqI4
  loc_AC353A: FFree1Ad var_C0
  loc_AC353D: BranchF loc_AC3554
  loc_AC3540: LitVarStr var_94, "    <th align=""center"">a la Orden de ...</th>"
  loc_AC3545: PopAdLdVar
  loc_AC3546: FLdPr Me
  loc_AC3549: MemLdRfVar from_stack_1.htmFile
  loc_AC354C: LdPrVar
  loc_AC354E: LateMemCall
  loc_AC3554: FLdRfVar var_C2
  loc_AC3557: FLdPr Me
  loc_AC355A: VCallAd Control_ID_chkMuestraOrdendePago
  loc_AC355D: FStAdFunc var_C0
  loc_AC3560: FLdPr var_C0
  loc_AC3563:  = Me.Value
  loc_AC3568: FLdI2 var_C2
  loc_AC356B: CI4UI1
  loc_AC356C: LitI4 1
  loc_AC3571: EqI4
  loc_AC3572: FFree1Ad var_C0
  loc_AC3575: BranchF loc_AC358C
  loc_AC3578: LitVarStr var_94, "    <th align=""center"">Orden de pago</th>"
  loc_AC357D: PopAdLdVar
  loc_AC357E: FLdPr Me
  loc_AC3581: MemLdRfVar from_stack_1.htmFile
  loc_AC3584: LdPrVar
  loc_AC3586: LateMemCall
  loc_AC358C: LitVarStr var_94, "    <th align=""center"">Débitos</th>"
  loc_AC3591: PopAdLdVar
  loc_AC3592: FLdPr Me
  loc_AC3595: MemLdRfVar from_stack_1.htmFile
  loc_AC3598: LdPrVar
  loc_AC359A: LateMemCall
  loc_AC35A0: LitVarStr var_94, "    <th align=""center"">Créditos</th>"
  loc_AC35A5: PopAdLdVar
  loc_AC35A6: FLdPr Me
  loc_AC35A9: MemLdRfVar from_stack_1.htmFile
  loc_AC35AC: LdPrVar
  loc_AC35AE: LateMemCall
  loc_AC35B4: FLdRfVar var_C2
  loc_AC35B7: FLdPr Me
  loc_AC35BA: VCallAd Control_ID_chkExcluirFeco
  loc_AC35BD: FStAdFunc var_C0
  loc_AC35C0: FLdPr var_C0
  loc_AC35C3:  = Me.Value
  loc_AC35C8: FLdI2 var_C2
  loc_AC35CB: CI4UI1
  loc_AC35CC: LitI4 0
  loc_AC35D1: EqI4
  loc_AC35D2: FFree1Ad var_C0
  loc_AC35D5: BranchF loc_AC35EC
  loc_AC35D8: LitVarStr var_94, "    <th align=""center"">Fecha Conciliación</th>"
  loc_AC35DD: PopAdLdVar
  loc_AC35DE: FLdPr Me
  loc_AC35E1: MemLdRfVar from_stack_1.htmFile
  loc_AC35E4: LdPrVar
  loc_AC35E6: LateMemCall
  loc_AC35EC: LitVarStr var_94, "  </tr>"
  loc_AC35F1: PopAdLdVar
  loc_AC35F2: FLdPr Me
  loc_AC35F5: MemLdRfVar from_stack_1.htmFile
  loc_AC35F8: LdPrVar
  loc_AC35FA: LateMemCall
  loc_AC3600: LitVarStr var_94, "  </THEAD>"
  loc_AC3605: PopAdLdVar
  loc_AC3606: FLdPr Me
  loc_AC3609: MemLdRfVar from_stack_1.htmFile
  loc_AC360C: LdPrVar
  loc_AC360E: LateMemCall
  loc_AC3614: LitVarStr var_94, "  <tr class=""Encabezado"">"
  loc_AC3619: PopAdLdVar
  loc_AC361A: FLdPr Me
  loc_AC361D: MemLdRfVar from_stack_1.htmFile
  loc_AC3620: LdPrVar
  loc_AC3622: LateMemCall
  loc_AC3628: FLdRfVar var_C2
  loc_AC362B: FLdPr Me
  loc_AC362E: VCallAd Control_ID_chkMuestraalaOrden
  loc_AC3631: FStAdFunc var_C0
  loc_AC3634: FLdPr var_C0
  loc_AC3637:  = Me.Value
  loc_AC363C: LitVarI2 var_D4, 0
  loc_AC3641: LitVarI2 var_BC, 1
  loc_AC3646: FLdI2 var_C2
  loc_AC3649: CI4UI1
  loc_AC364A: LitI4 1
  loc_AC364F: EqI4
  loc_AC3650: CVarBoolI2 var_94
  loc_AC3654: FLdRfVar var_E4
  loc_AC3657: ImpAdCallFPR4  = IIf(, , )
  loc_AC365C: FLdRfVar var_E4
  loc_AC365F: CUI1Var
  loc_AC3661: FLdPr Me
  loc_AC3664: MemStUI1
  loc_AC3668: FFree1Ad var_C0
  loc_AC366B: FFreeVar var_94 = "": var_BC = "": var_D4 = ""
  loc_AC3676: FLdRfVar var_C2
  loc_AC3679: FLdPr Me
  loc_AC367C: VCallAd Control_ID_chkMuestraOrdendePago
  loc_AC367F: FStAdFunc var_C0
  loc_AC3682: FLdPr var_C0
  loc_AC3685:  = Me.Value
  loc_AC368A: FLdPr Me
  loc_AC368D: MemLdUI1 global_144
  loc_AC3691: CVarUI1
  loc_AC3695: LitVarI2 var_D4, 0
  loc_AC369A: LitVarI2 var_BC, 1
  loc_AC369F: FLdI2 var_C2
  loc_AC36A2: CI4UI1
  loc_AC36A3: LitI4 1
  loc_AC36A8: EqI4
  loc_AC36A9: CVarBoolI2 var_94
  loc_AC36AD: FLdRfVar var_E4
  loc_AC36B0: ImpAdCallFPR4  = IIf(, , )
  loc_AC36B5: FLdRfVar var_E4
  loc_AC36B8: AddVar var_104
  loc_AC36BC: CUI1Var
  loc_AC36BE: FLdPr Me
  loc_AC36C1: MemStUI1
  loc_AC36C5: FFree1Ad var_C0
  loc_AC36C8: FFreeVar var_94 = "": var_BC = "": var_D4 = "": var_E4 = ""
  loc_AC36D5: FLdRfVar var_C2
  loc_AC36D8: FLdPr Me
  loc_AC36DB: VCallAd Control_ID_chkExcluirFeco
  loc_AC36DE: FStAdFunc var_C0
  loc_AC36E1: FLdPr var_C0
  loc_AC36E4:  = Me.Value
  loc_AC36E9: FLdPr Me
  loc_AC36EC: MemLdUI1 global_144
  loc_AC36F0: CVarUI1
  loc_AC36F4: LitVarI2 var_D4, -1
  loc_AC36F9: LitVarI2 var_BC, 0
  loc_AC36FE: FLdI2 var_C2
  loc_AC3701: CI4UI1
  loc_AC3702: LitI4 0
  loc_AC3707: EqI4
  loc_AC3708: CVarBoolI2 var_94
  loc_AC370C: FLdRfVar var_E4
  loc_AC370F: ImpAdCallFPR4  = IIf(, , )
  loc_AC3714: FLdRfVar var_E4
  loc_AC3717: AddVar var_104
  loc_AC371B: CUI1Var
  loc_AC371D: FLdPr Me
  loc_AC3720: MemStUI1
  loc_AC3724: FFree1Ad var_C0
  loc_AC3727: FFreeVar var_94 = "": var_BC = "": var_D4 = "": var_E4 = ""
  loc_AC3734: LitStr "    <th colspan="""
  loc_AC3737: LitI2_Byte 6
  loc_AC3739: FLdPr Me
  loc_AC373C: MemLdUI1 global_144
  loc_AC3740: CI2UI1
  loc_AC3742: AddI2
  loc_AC3743: CStrUI1
  loc_AC3745: FStStrNoPop var_A8
  loc_AC3748: ConcatStr
  loc_AC3749: FStStrNoPop var_AC
  loc_AC374C: LitStr """ align=""left"">Detalle de débitos/créditos no conciliados</th>"
  loc_AC374F: ConcatStr
  loc_AC3750: CVarStr var_BC
  loc_AC3753: PopAdLdVar
  loc_AC3754: FLdPr Me
  loc_AC3757: MemLdRfVar from_stack_1.htmFile
  loc_AC375A: LdPrVar
  loc_AC375C: LateMemCall
  loc_AC3762: FFreeStr var_A8 = ""
  loc_AC3769: FFree1Var var_BC = ""
  loc_AC376C: LitVarStr var_94, "  </tr>"
  loc_AC3771: PopAdLdVar
  loc_AC3772: FLdPr Me
  loc_AC3775: MemLdRfVar from_stack_1.htmFile
  loc_AC3778: LdPrVar
  loc_AC377A: LateMemCall
  loc_AC3780: ExitProcHresult
  loc_AC3781: Ary1StFPR8
End Function

Private Function Proc_171_30_971D40() '971D40
  'Data Table: 49BA1C
  loc_971D14: LitVarStr var_94, "</body>"
  loc_971D19: PopAdLdVar
  loc_971D1A: FLdPr Me
  loc_971D1D: MemLdRfVar from_stack_1.htmFile
  loc_971D20: LdPrVar
  loc_971D22: LateMemCall
  loc_971D28: LitVarStr var_94, "</html>"
  loc_971D2D: PopAdLdVar
  loc_971D2E: FLdPr Me
  loc_971D31: MemLdRfVar from_stack_1.htmFile
  loc_971D34: LdPrVar
  loc_971D36: LateMemCall
  loc_971D3C: ExitProcHresult
End Function
