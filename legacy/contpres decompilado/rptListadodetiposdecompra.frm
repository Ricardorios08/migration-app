VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodetiposdecompra
  Caption = "Listado de tipos de compra"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodetiposdecompra.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6435
  ClientHeight = 1560
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 1305
    Width = 6435
    Height = 255
    TabIndex = 7
    OleObjectBlob = "rptListadodetiposdecompra.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 5
    Cancel = -1  'True
    Picture = "rptListadodetiposdecompra.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodetiposdecompra.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 120
    Width = 1815
    Height = 1095
    TabIndex = 3
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 120
    Width = 3015
    Height = 1095
    TabIndex = 0
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 2
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 1
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5520
    Top = 600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 6
    OleObjectBlob = "rptListadodetiposdecompra.frx":0C00
  End
End

Attribute VB_Name = "rptListadodetiposdecompra"

Public bGenerado As Boolean

Private Type UDT_1_0059A1E0
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98575C
  'Data Table: 4252CC
  loc_985724: FLdPr Me
  loc_985727: VCallAd Control_ID_statusBar
  loc_98572A: FStAdFunc var_88
  loc_98572D: FLdPr var_88
  loc_985730: LateIdLdVar var_98 DispID_1 0
  loc_985737: CStrVarTmp
  loc_985738: CVarStr var_A8
  loc_98573B: PopAdLdVar
  loc_98573C: FLdPr Me
  loc_98573F: VCallAd Control_ID_statusBar
  loc_985742: FStAdFunc var_BC
  loc_985745: FLdPr var_BC
  loc_985748: LateIdSt
  loc_98574D: FFreeAd var_88 = ""
  loc_985754: FFreeVar var_98 = ""
  loc_98575B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '964000
  'Data Table: 4252CC
  loc_963FE8: ILdRf Me
  loc_963FEB: CastAd
  loc_963FEE: FStAdFunc var_88
  loc_963FF1: FLdRfVar var_88
  loc_963FF4: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_963FF9: FFree1Ad var_88
  loc_963FFC: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A550
  'Data Table: 4252CC
  loc_97A520: LitVarStr var_94, "Cerrando..."
  loc_97A525: PopAdLdVar
  loc_97A526: FLdPr Me
  loc_97A529: VCallAd Control_ID_statusBar
  loc_97A52C: FStAdFunc var_A8
  loc_97A52F: FLdPr var_A8
  loc_97A532: LateIdSt
  loc_97A537: FFree1Ad var_A8
  loc_97A53A: ILdRf Me
  loc_97A53D: FStAdNoPop
  loc_97A541: ImpAdLdRf MemVar_C44F9C
  loc_97A544: NewIfNullPr Me
  loc_97A547: Me.Global.Unload from_stack_1
  loc_97A54C: FFree1Ad var_A8
  loc_97A54F: ExitProcHresult
End Sub

Private Sub Form_Load() '940A90
  'Data Table: 4252CC
  loc_940A88: LitI2_Byte &HFF
  loc_940A8A: ImpAdStI2 MemVar_C3D840
  loc_940A8D: ExitProcHresult
  loc_940A8E: FLdPrThis
End Sub

Private Sub Form_Unload(Cancel As Integer) '964214
  'Data Table: 4252CC
  loc_9641FC: FLdPr Me
  loc_9641FF: VCallAd Control_ID_wbbReporte
  loc_964202: FStAdFunc var_88
  loc_964205: FLdRfVar var_88
  loc_964208: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_96420D: FFree1Ad var_88
  loc_964210: ExitProcHresult
  loc_964211: CStrVarTmp
  loc_964212: CRec2Ansi arg_5400
End Sub

Private Sub cmdPredeterminada_Click() '96404C
  'Data Table: 4252CC
  loc_964034: ILdRf Me
  loc_964037: CastAd
  loc_96403A: FStAdFunc var_88
  loc_96403D: FLdRfVar var_88
  loc_964040: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_964045: FFree1Ad var_88
  loc_964048: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '96417C
  'Data Table: 4252CC
  loc_964164: LitI2_Byte 0
  loc_964166: ILdRf Me
  loc_964169: CastAd
  loc_96416C: FStAdFunc var_88
  loc_96416F: FLdRfVar var_88
  loc_964172: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_964177: FFree1Ad var_88
  loc_96417A: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4259DC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4259EB
  bGenerado = Value
End Sub

Public Sub GeneraReporte() 'A68E14
  'Data Table: 4252CC
  loc_A68AC0: OnErrorGoto loc_A68DAE
  loc_A68AC3: FLdPr Me
  loc_A68AC6: MemLdI2 bGenerado
  loc_A68AC9: BranchF loc_A68ACD
  loc_A68ACC: ExitProcHresult
  loc_A68ACD: LitVarStr var_94, "Generando reporte..."
  loc_A68AD2: PopAdLdVar
  loc_A68AD3: FLdPr Me
  loc_A68AD6: VCallAd Control_ID_statusBar
  loc_A68AD9: FStAdFunc var_A8
  loc_A68ADC: FLdPr var_A8
  loc_A68ADF: LateIdSt
  loc_A68AE4: FFree1Ad var_A8
  loc_A68AE7: LitI4 &HB
  loc_A68AEC: CI2I4
  loc_A68AED: FLdPr Me
  loc_A68AF0: Me.MousePointer = from_stack_1
  loc_A68AF5: LitStr "SELECT * FROM tipocompra ORDER BY CodiTico"
  loc_A68AF8: FLdPr Me
  loc_A68AFB: MemLdRfVar from_stack_1.global_56
  loc_A68AFE: NewIfNullPr clstipocompra
  loc_A68B01: Call clstipocompra.RedefineRS(from_stack_1v)
  loc_A68B06: FLdRfVar var_AC
  loc_A68B09: FLdPr Me
  loc_A68B0C: MemLdRfVar from_stack_1.global_56
  loc_A68B0F: NewIfNullPr clstipocompra
  loc_A68B12: from_stack_1 = clstipocompra.RecordCount
  loc_A68B17: ILdRf var_AC
  loc_A68B1A: LitI4 0
  loc_A68B1F: EqI4
  loc_A68B20: BranchF loc_A68B33
  loc_A68B23: LitI4 0
  loc_A68B28: LitStr "No existen registros"
  loc_A68B2B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A68B30: Branch loc_A68D85
  loc_A68B33: FLdPr Me
  loc_A68B36: MemLdRfVar from_stack_1.global_56
  loc_A68B39: NewIfNullAd
  loc_A68B3C: FStAd var_B0 
  loc_A68B40: LitI4 1
  loc_A68B45: FLdRfVar var_AC
  loc_A68B48: FLdPr var_B0
  loc_A68B4B: from_stack_1 = clstipocompra.RecordCount
  loc_A68B50: ILdRf var_AC
  loc_A68B53: FLdPr Me
  loc_A68B56: MemLdRfVar from_stack_1.global_80
  loc_A68B59: Redim
  loc_A68B63: FLdPr var_B0
  loc_A68B66: Call clstipocompra.MoveFirst()
  loc_A68B6B: LitI2_Byte 1
  loc_A68B6D: FLdPr Me
  loc_A68B70: MemLdRfVar from_stack_1.global_84
  loc_A68B73: FLdPr Me
  loc_A68B76: MemLdStr global_80
  loc_A68B79: LitI2_Byte 1
  loc_A68B7B: FnUBound
  loc_A68B7D: CI2I4
  loc_A68B7E: ForI2 var_B4
  loc_A68B84: FLdRfVar var_BC
  loc_A68B87: LitVarStr var_94, "CodiTico"
  loc_A68B8C: PopAdLdVar
  loc_A68B8D: FLdRfVar var_B8
  loc_A68B90: FLdRfVar var_A8
  loc_A68B93: FLdPr var_B0
  loc_A68B96: from_stack_1v = clstipocompra.RsFrmGet()
  loc_A68B9B: FLdPr var_A8
  loc_A68B9E:  = Me.Fields
  loc_A68BA3: FLdPr var_B8
  loc_A68BA6: from_stack_2 = Me.Item(from_stack_1)
  loc_A68BAB: LitI2_Byte 0
  loc_A68BAD: LitVar_Missing var_E0
  loc_A68BB0: LitI2_Byte 0
  loc_A68BB2: FLdZeroAd var_BC
  loc_A68BB5: CVarAd
  loc_A68BB9: PopAdLdVar
  loc_A68BBA: FLdPr Me
  loc_A68BBD: MemLdI2 global_84
  loc_A68BC0: CI4UI1
  loc_A68BC1: FLdPr Me
  loc_A68BC4: MemLdStr global_80
  loc_A68BC7: AryLock
  loc_A68BCA: Ary1LdPr
  loc_A68BCB: MemLdRfVar from_stack_1.global_0
  loc_A68BCE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A68BD3: AryUnlock
  loc_A68BD6: FFreeAd var_A8 = ""
  loc_A68BDD: FFreeVar var_D0 = ""
  loc_A68BE4: FLdRfVar var_BC
  loc_A68BE7: LitVarStr var_94, "DetaTico"
  loc_A68BEC: PopAdLdVar
  loc_A68BED: FLdRfVar var_B8
  loc_A68BF0: FLdRfVar var_A8
  loc_A68BF3: FLdPr var_B0
  loc_A68BF6: from_stack_1v = clstipocompra.RsFrmGet()
  loc_A68BFB: FLdPr var_A8
  loc_A68BFE:  = Me.Fields
  loc_A68C03: FLdPr var_B8
  loc_A68C06: from_stack_2 = Me.Item(from_stack_1)
  loc_A68C0B: LitI2_Byte 0
  loc_A68C0D: LitVar_Missing var_E0
  loc_A68C10: LitI2_Byte 0
  loc_A68C12: FLdZeroAd var_BC
  loc_A68C15: CVarAd
  loc_A68C19: PopAdLdVar
  loc_A68C1A: FLdPr Me
  loc_A68C1D: MemLdI2 global_84
  loc_A68C20: CI4UI1
  loc_A68C21: FLdPr Me
  loc_A68C24: MemLdStr global_80
  loc_A68C27: AryLock
  loc_A68C2A: Ary1LdPr
  loc_A68C2B: MemLdRfVar from_stack_1.global_4
  loc_A68C2E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A68C33: AryUnlock
  loc_A68C36: FFreeAd var_A8 = ""
  loc_A68C3D: FFreeVar var_D0 = ""
  loc_A68C44: FLdRfVar var_BC
  loc_A68C47: LitVarStr var_94, "LimiTico"
  loc_A68C4C: PopAdLdVar
  loc_A68C4D: FLdRfVar var_B8
  loc_A68C50: FLdRfVar var_A8
  loc_A68C53: FLdPr var_B0
  loc_A68C56: from_stack_1v = clstipocompra.RsFrmGet()
  loc_A68C5B: FLdPr var_A8
  loc_A68C5E:  = Me.Fields
  loc_A68C63: FLdPr var_B8
  loc_A68C66: from_stack_2 = Me.Item(from_stack_1)
  loc_A68C6B: LitI2_Byte 0
  loc_A68C6D: LitVar_Missing var_E0
  loc_A68C70: LitI2_Byte &HFF
  loc_A68C72: FLdZeroAd var_BC
  loc_A68C75: CVarAd
  loc_A68C79: PopAdLdVar
  loc_A68C7A: FLdPr Me
  loc_A68C7D: MemLdI2 global_84
  loc_A68C80: CI4UI1
  loc_A68C81: FLdPr Me
  loc_A68C84: MemLdStr global_80
  loc_A68C87: AryLock
  loc_A68C8A: Ary1LdPr
  loc_A68C8B: MemLdRfVar from_stack_1.global_8
  loc_A68C8E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A68C93: AryUnlock
  loc_A68C96: FFreeAd var_A8 = ""
  loc_A68C9D: FFreeVar var_D0 = ""
  loc_A68CA4: FLdRfVar var_BC
  loc_A68CA7: LitVarStr var_94, "DipaTico"
  loc_A68CAC: PopAdLdVar
  loc_A68CAD: FLdRfVar var_B8
  loc_A68CB0: FLdRfVar var_A8
  loc_A68CB3: FLdPr var_B0
  loc_A68CB6: from_stack_1v = clstipocompra.RsFrmGet()
  loc_A68CBB: FLdPr var_A8
  loc_A68CBE:  = Me.Fields
  loc_A68CC3: FLdPr var_B8
  loc_A68CC6: from_stack_2 = Me.Item(from_stack_1)
  loc_A68CCB: LitI2_Byte 0
  loc_A68CCD: LitVar_Missing var_E0
  loc_A68CD0: LitI2_Byte 0
  loc_A68CD2: FLdZeroAd var_BC
  loc_A68CD5: CVarAd
  loc_A68CD9: PopAdLdVar
  loc_A68CDA: FLdPr Me
  loc_A68CDD: MemLdI2 global_84
  loc_A68CE0: CI4UI1
  loc_A68CE1: FLdPr Me
  loc_A68CE4: MemLdStr global_80
  loc_A68CE7: AryLock
  loc_A68CEA: Ary1LdPr
  loc_A68CEB: MemLdRfVar from_stack_1.global_12
  loc_A68CEE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A68CF3: AryUnlock
  loc_A68CF6: FFreeAd var_A8 = ""
  loc_A68CFD: FFreeVar var_D0 = ""
  loc_A68D04: FLdRfVar var_BC
  loc_A68D07: LitVarStr var_94, "AltaUsua"
  loc_A68D0C: PopAdLdVar
  loc_A68D0D: FLdRfVar var_B8
  loc_A68D10: FLdRfVar var_A8
  loc_A68D13: FLdPr var_B0
  loc_A68D16: from_stack_1v = clstipocompra.RsFrmGet()
  loc_A68D1B: FLdPr var_A8
  loc_A68D1E:  = Me.Fields
  loc_A68D23: FLdPr var_B8
  loc_A68D26: from_stack_2 = Me.Item(from_stack_1)
  loc_A68D2B: LitI2_Byte 0
  loc_A68D2D: LitVar_Missing var_E0
  loc_A68D30: LitI2_Byte 0
  loc_A68D32: FLdZeroAd var_BC
  loc_A68D35: CVarAd
  loc_A68D39: PopAdLdVar
  loc_A68D3A: FLdPr Me
  loc_A68D3D: MemLdI2 global_84
  loc_A68D40: CI4UI1
  loc_A68D41: FLdPr Me
  loc_A68D44: MemLdStr global_80
  loc_A68D47: AryLock
  loc_A68D4A: Ary1LdPr
  loc_A68D4B: MemLdRfVar from_stack_1.global_16
  loc_A68D4E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A68D53: AryUnlock
  loc_A68D56: FFreeAd var_A8 = ""
  loc_A68D5D: FFreeVar var_D0 = ""
  loc_A68D64: FLdPr var_B0
  loc_A68D67: Call clstipocompra.MoveSiguiente()
  loc_A68D6C: FLdPr Me
  loc_A68D6F: MemLdRfVar from_stack_1.global_84
  loc_A68D72: NextI2 var_B4, loc_A68B84
  loc_A68D77: LitNothing
  loc_A68D79: FStAd var_B0 
  loc_A68D7D: LitI2_Byte &HFF
  loc_A68D7F: FLdPr Me
  loc_A68D82: MemStI2 bGenerado
  loc_A68D85: LitI4 0
  loc_A68D8A: CI2I4
  loc_A68D8B: FLdPr Me
  loc_A68D8E: Me.MousePointer = from_stack_1
  loc_A68D93: LitVarStr var_94, vbNullString
  loc_A68D98: PopAdLdVar
  loc_A68D99: FLdPr Me
  loc_A68D9C: VCallAd Control_ID_statusBar
  loc_A68D9F: FStAdFunc var_A8
  loc_A68DA2: FLdPr var_A8
  loc_A68DA5: LateIdSt
  loc_A68DAA: FFree1Ad var_A8
  loc_A68DAD: ExitProcHresult
  loc_A68DAE: LitI4 0
  loc_A68DB3: LitStr "Error "
  loc_A68DB6: FLdRfVar var_AC
  loc_A68DB9: ImpAdCallI2 Err 'rtcErrObj
  loc_A68DBE: FStAdFunc var_A8
  loc_A68DC1: FLdPr var_A8
  loc_A68DC4:  = Err.Number
  loc_A68DC9: ILdRf var_AC
  loc_A68DCC: CStrI4
  loc_A68DCE: FStStrNoPop var_E4
  loc_A68DD1: ConcatStr
  loc_A68DD2: FStStrNoPop var_E8
  loc_A68DD5: LitStr ": "
  loc_A68DD8: ConcatStr
  loc_A68DD9: FStStrNoPop var_F0
  loc_A68DDC: FLdRfVar var_EC
  loc_A68DDF: ImpAdCallI2 Err 'rtcErrObj
  loc_A68DE4: FStAdFunc var_B8
  loc_A68DE7: FLdPr var_B8
  loc_A68DEA:  = Err.Description
  loc_A68DEF: ILdRf var_EC
  loc_A68DF2: ConcatStr
  loc_A68DF3: FStStrNoPop var_F4
  loc_A68DF6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A68DFB: FFreeStr var_E4 = "": var_E8 = "": var_F0 = "": var_EC = ""
  loc_A68E08: FFreeAd var_A8 = ""
  loc_A68E0F: ExitProcHresult
  loc_A68E10: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A18D28
  'Data Table: 4252CC
  loc_A18B90: FLdRfVar var_88
  loc_A18B93: LitI2_Byte 0
  loc_A18B95: LitI2_Byte &HFF
  loc_A18B97: ImpAdLdI4 MemVar_C3D83C
  loc_A18B9A: FLdPr Me
  loc_A18B9D: MemLdRfVar from_stack_1.global_60
  loc_A18BA0: NewIfNullPr IFileSystem3
  loc_A18BA3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A18BA8: ILdRf var_88
  loc_A18BAB: FLdPr Me
  loc_A18BAE: MemStVarAd
  loc_A18BB2: FFree1Ad var_88
  loc_A18BB5: Call Proc_205_11_AA5DB4()
  loc_A18BBA: LitI2_Byte 1
  loc_A18BBC: FLdPr Me
  loc_A18BBF: MemLdRfVar from_stack_1.global_84
  loc_A18BC2: FLdPr Me
  loc_A18BC5: MemLdStr global_80
  loc_A18BC8: LitI2_Byte 1
  loc_A18BCA: FnUBound
  loc_A18BCC: CI2I4
  loc_A18BCD: ForI2 var_8C
  loc_A18BD3: FLdPr Me
  loc_A18BD6: MemLdI2 global_84
  loc_A18BD9: CI4UI1
  loc_A18BDA: FLdPr Me
  loc_A18BDD: MemLdStr global_80
  loc_A18BE0: AryLock
  loc_A18BE3: Ary1LdRf
  loc_A18BE4: FStR4 var_94
  loc_A18BE7: FLdPr Me
  loc_A18BEA: MemLdRfVar from_stack_1.global_88
  loc_A18BED: CDargRef
  loc_A18BF1: FLdPr Me
  loc_A18BF4: MemLdRfVar from_stack_1.global_64
  loc_A18BF7: LdPrVar
  loc_A18BF9: LateMemCall
  loc_A18BFF: LitI4 0
  loc_A18C04: LitI4 0
  loc_A18C09: LitI2_Byte 0
  loc_A18C0B: LitStr "right"
  loc_A18C0E: FMemLdR4 var_94(0)
  loc_A18C13: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A18C18: CVarStr var_B4
  loc_A18C1B: PopAdLdVar
  loc_A18C1C: FLdPr Me
  loc_A18C1F: MemLdRfVar from_stack_1.global_64
  loc_A18C22: LdPrVar
  loc_A18C24: LateMemCall
  loc_A18C2A: FFree1Var var_B4 = ""
  loc_A18C2D: LitI4 0
  loc_A18C32: LitI4 0
  loc_A18C37: LitI2_Byte 0
  loc_A18C39: LitStr "left"
  loc_A18C3C: FMemLdR4 var_94(4)
  loc_A18C41: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A18C46: CVarStr var_B4
  loc_A18C49: PopAdLdVar
  loc_A18C4A: FLdPr Me
  loc_A18C4D: MemLdRfVar from_stack_1.global_64
  loc_A18C50: LdPrVar
  loc_A18C52: LateMemCall
  loc_A18C58: FFree1Var var_B4 = ""
  loc_A18C5B: LitI4 0
  loc_A18C60: LitI4 0
  loc_A18C65: LitI2_Byte 0
  loc_A18C67: LitStr "right"
  loc_A18C6A: FMemLdR4 var_94(8)
  loc_A18C6F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A18C74: CVarStr var_B4
  loc_A18C77: PopAdLdVar
  loc_A18C78: FLdPr Me
  loc_A18C7B: MemLdRfVar from_stack_1.global_64
  loc_A18C7E: LdPrVar
  loc_A18C80: LateMemCall
  loc_A18C86: FFree1Var var_B4 = ""
  loc_A18C89: LitI4 0
  loc_A18C8E: LitI4 0
  loc_A18C93: LitI2_Byte 0
  loc_A18C95: LitStr "center"
  loc_A18C98: FMemLdR4 var_94(12)
  loc_A18C9D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A18CA2: CVarStr var_B4
  loc_A18CA5: PopAdLdVar
  loc_A18CA6: FLdPr Me
  loc_A18CA9: MemLdRfVar from_stack_1.global_64
  loc_A18CAC: LdPrVar
  loc_A18CAE: LateMemCall
  loc_A18CB4: FFree1Var var_B4 = ""
  loc_A18CB7: LitI4 0
  loc_A18CBC: LitI4 0
  loc_A18CC1: LitI2_Byte 0
  loc_A18CC3: LitStr "center"
  loc_A18CC6: FMemLdR4 var_94(16)
  loc_A18CCB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A18CD0: CVarStr var_B4
  loc_A18CD3: PopAdLdVar
  loc_A18CD4: FLdPr Me
  loc_A18CD7: MemLdRfVar from_stack_1.global_64
  loc_A18CDA: LdPrVar
  loc_A18CDC: LateMemCall
  loc_A18CE2: FFree1Var var_B4 = ""
  loc_A18CE5: LitVarStr var_A4, "     </tr>"
  loc_A18CEA: PopAdLdVar
  loc_A18CEB: FLdPr Me
  loc_A18CEE: MemLdRfVar from_stack_1.global_64
  loc_A18CF1: LdPrVar
  loc_A18CF3: LateMemCall
  loc_A18CF9: LitI4 0
  loc_A18CFE: FStR4 var_94
  loc_A18D01: AryUnlock
  loc_A18D04: FLdPr Me
  loc_A18D07: MemLdRfVar from_stack_1.global_84
  loc_A18D0A: NextI2 var_8C, loc_A18BD3
  loc_A18D0F: Call Proc_205_12_983B20()
  loc_A18D14: FLdPr Me
  loc_A18D17: MemLdRfVar from_stack_1.global_64
  loc_A18D1A: LdPrVar
  loc_A18D1C: LateMemCall
  loc_A18D22: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A18D27: ExitProcHresult
End Sub

Private Function Proc_205_11_AA5DB4() 'AA5DB4
  'Data Table: 4252CC
  loc_AA58A0: LitVarStr var_94, "<html>"
  loc_AA58A5: PopAdLdVar
  loc_AA58A6: FLdPr Me
  loc_AA58A9: MemLdRfVar from_stack_1.global_64
  loc_AA58AC: LdPrVar
  loc_AA58AE: LateMemCall
  loc_AA58B4: LitVarStr var_94, "<head>"
  loc_AA58B9: PopAdLdVar
  loc_AA58BA: FLdPr Me
  loc_AA58BD: MemLdRfVar from_stack_1.global_64
  loc_AA58C0: LdPrVar
  loc_AA58C2: LateMemCall
  loc_AA58C8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AA58CD: PopAdLdVar
  loc_AA58CE: FLdPr Me
  loc_AA58D1: MemLdRfVar from_stack_1.global_64
  loc_AA58D4: LdPrVar
  loc_AA58D6: LateMemCall
  loc_AA58DC: LitStr "<title>"
  loc_AA58DF: FLdRfVar var_A8
  loc_AA58E2: FLdPr Me
  loc_AA58E5:  = Me.Caption
  loc_AA58EA: ILdRf var_A8
  loc_AA58ED: ConcatStr
  loc_AA58EE: FStStrNoPop var_AC
  loc_AA58F1: LitStr "</title>"
  loc_AA58F4: ConcatStr
  loc_AA58F5: CVarStr var_BC
  loc_AA58F8: PopAdLdVar
  loc_AA58F9: FLdPr Me
  loc_AA58FC: MemLdRfVar from_stack_1.global_64
  loc_AA58FF: LdPrVar
  loc_AA5901: LateMemCall
  loc_AA5907: FFreeStr var_A8 = ""
  loc_AA590E: FFree1Var var_BC = ""
  loc_AA5911: LitVarStr var_94, "<style type=""text/css"">"
  loc_AA5916: PopAdLdVar
  loc_AA5917: FLdPr Me
  loc_AA591A: MemLdRfVar from_stack_1.global_64
  loc_AA591D: LdPrVar
  loc_AA591F: LateMemCall
  loc_AA5925: LitVarStr var_94, ".Titulo1 {"
  loc_AA592A: PopAdLdVar
  loc_AA592B: FLdPr Me
  loc_AA592E: MemLdRfVar from_stack_1.global_64
  loc_AA5931: LdPrVar
  loc_AA5933: LateMemCall
  loc_AA5939: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AA593E: PopAdLdVar
  loc_AA593F: FLdPr Me
  loc_AA5942: MemLdRfVar from_stack_1.global_64
  loc_AA5945: LdPrVar
  loc_AA5947: LateMemCall
  loc_AA594D: LitVarStr var_94, " font-size: 18px;"
  loc_AA5952: PopAdLdVar
  loc_AA5953: FLdPr Me
  loc_AA5956: MemLdRfVar from_stack_1.global_64
  loc_AA5959: LdPrVar
  loc_AA595B: LateMemCall
  loc_AA5961: LitVarStr var_94, " font-weight: bold;"
  loc_AA5966: PopAdLdVar
  loc_AA5967: FLdPr Me
  loc_AA596A: MemLdRfVar from_stack_1.global_64
  loc_AA596D: LdPrVar
  loc_AA596F: LateMemCall
  loc_AA5975: LitVarStr var_94, "}"
  loc_AA597A: PopAdLdVar
  loc_AA597B: FLdPr Me
  loc_AA597E: MemLdRfVar from_stack_1.global_64
  loc_AA5981: LdPrVar
  loc_AA5983: LateMemCall
  loc_AA5989: LitVarStr var_94, ".Titulo2 {"
  loc_AA598E: PopAdLdVar
  loc_AA598F: FLdPr Me
  loc_AA5992: MemLdRfVar from_stack_1.global_64
  loc_AA5995: LdPrVar
  loc_AA5997: LateMemCall
  loc_AA599D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AA59A2: PopAdLdVar
  loc_AA59A3: FLdPr Me
  loc_AA59A6: MemLdRfVar from_stack_1.global_64
  loc_AA59A9: LdPrVar
  loc_AA59AB: LateMemCall
  loc_AA59B1: LitVarStr var_94, " font-size: 14px;"
  loc_AA59B6: PopAdLdVar
  loc_AA59B7: FLdPr Me
  loc_AA59BA: MemLdRfVar from_stack_1.global_64
  loc_AA59BD: LdPrVar
  loc_AA59BF: LateMemCall
  loc_AA59C5: LitVarStr var_94, " font-weight: bold;"
  loc_AA59CA: PopAdLdVar
  loc_AA59CB: FLdPr Me
  loc_AA59CE: MemLdRfVar from_stack_1.global_64
  loc_AA59D1: LdPrVar
  loc_AA59D3: LateMemCall
  loc_AA59D9: LitVarStr var_94, "}"
  loc_AA59DE: PopAdLdVar
  loc_AA59DF: FLdPr Me
  loc_AA59E2: MemLdRfVar from_stack_1.global_64
  loc_AA59E5: LdPrVar
  loc_AA59E7: LateMemCall
  loc_AA59ED: LitVarStr var_94, ".Normal {"
  loc_AA59F2: PopAdLdVar
  loc_AA59F3: FLdPr Me
  loc_AA59F6: MemLdRfVar from_stack_1.global_64
  loc_AA59F9: LdPrVar
  loc_AA59FB: LateMemCall
  loc_AA5A01: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AA5A06: PopAdLdVar
  loc_AA5A07: FLdPr Me
  loc_AA5A0A: MemLdRfVar from_stack_1.global_64
  loc_AA5A0D: LdPrVar
  loc_AA5A0F: LateMemCall
  loc_AA5A15: LitVarStr var_94, " font-size: 14px;"
  loc_AA5A1A: PopAdLdVar
  loc_AA5A1B: FLdPr Me
  loc_AA5A1E: MemLdRfVar from_stack_1.global_64
  loc_AA5A21: LdPrVar
  loc_AA5A23: LateMemCall
  loc_AA5A29: LitVarStr var_94, " font-style: normal;"
  loc_AA5A2E: PopAdLdVar
  loc_AA5A2F: FLdPr Me
  loc_AA5A32: MemLdRfVar from_stack_1.global_64
  loc_AA5A35: LdPrVar
  loc_AA5A37: LateMemCall
  loc_AA5A3D: LitVarStr var_94, " font-weight: normal;"
  loc_AA5A42: PopAdLdVar
  loc_AA5A43: FLdPr Me
  loc_AA5A46: MemLdRfVar from_stack_1.global_64
  loc_AA5A49: LdPrVar
  loc_AA5A4B: LateMemCall
  loc_AA5A51: LitVarStr var_94, " font-variant: normal;"
  loc_AA5A56: PopAdLdVar
  loc_AA5A57: FLdPr Me
  loc_AA5A5A: MemLdRfVar from_stack_1.global_64
  loc_AA5A5D: LdPrVar
  loc_AA5A5F: LateMemCall
  loc_AA5A65: LitVarStr var_94, "}"
  loc_AA5A6A: PopAdLdVar
  loc_AA5A6B: FLdPr Me
  loc_AA5A6E: MemLdRfVar from_stack_1.global_64
  loc_AA5A71: LdPrVar
  loc_AA5A73: LateMemCall
  loc_AA5A79: LitVarStr var_94, ".Encabezado {"
  loc_AA5A7E: PopAdLdVar
  loc_AA5A7F: FLdPr Me
  loc_AA5A82: MemLdRfVar from_stack_1.global_64
  loc_AA5A85: LdPrVar
  loc_AA5A87: LateMemCall
  loc_AA5A8D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AA5A92: PopAdLdVar
  loc_AA5A93: FLdPr Me
  loc_AA5A96: MemLdRfVar from_stack_1.global_64
  loc_AA5A99: LdPrVar
  loc_AA5A9B: LateMemCall
  loc_AA5AA1: LitVarStr var_94, " font-size: 13px;"
  loc_AA5AA6: PopAdLdVar
  loc_AA5AA7: FLdPr Me
  loc_AA5AAA: MemLdRfVar from_stack_1.global_64
  loc_AA5AAD: LdPrVar
  loc_AA5AAF: LateMemCall
  loc_AA5AB5: LitVarStr var_94, " font-weight: bold;"
  loc_AA5ABA: PopAdLdVar
  loc_AA5ABB: FLdPr Me
  loc_AA5ABE: MemLdRfVar from_stack_1.global_64
  loc_AA5AC1: LdPrVar
  loc_AA5AC3: LateMemCall
  loc_AA5AC9: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AA5ACE: PopAdLdVar
  loc_AA5ACF: FLdPr Me
  loc_AA5AD2: MemLdRfVar from_stack_1.global_64
  loc_AA5AD5: LdPrVar
  loc_AA5AD7: LateMemCall
  loc_AA5ADD: LitVarStr var_94, "}"
  loc_AA5AE2: PopAdLdVar
  loc_AA5AE3: FLdPr Me
  loc_AA5AE6: MemLdRfVar from_stack_1.global_64
  loc_AA5AE9: LdPrVar
  loc_AA5AEB: LateMemCall
  loc_AA5AF1: LitVarStr var_94, ".LineaDato {"
  loc_AA5AF6: PopAdLdVar
  loc_AA5AF7: FLdPr Me
  loc_AA5AFA: MemLdRfVar from_stack_1.global_64
  loc_AA5AFD: LdPrVar
  loc_AA5AFF: LateMemCall
  loc_AA5B05: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AA5B0A: PopAdLdVar
  loc_AA5B0B: FLdPr Me
  loc_AA5B0E: MemLdRfVar from_stack_1.global_64
  loc_AA5B11: LdPrVar
  loc_AA5B13: LateMemCall
  loc_AA5B19: LitVarStr var_94, " font-size: 10px;"
  loc_AA5B1E: PopAdLdVar
  loc_AA5B1F: FLdPr Me
  loc_AA5B22: MemLdRfVar from_stack_1.global_64
  loc_AA5B25: LdPrVar
  loc_AA5B27: LateMemCall
  loc_AA5B2D: LitVarStr var_94, "}"
  loc_AA5B32: PopAdLdVar
  loc_AA5B33: FLdPr Me
  loc_AA5B36: MemLdRfVar from_stack_1.global_64
  loc_AA5B39: LdPrVar
  loc_AA5B3B: LateMemCall
  loc_AA5B41: LitVarStr var_94, ".Totales {"
  loc_AA5B46: PopAdLdVar
  loc_AA5B47: FLdPr Me
  loc_AA5B4A: MemLdRfVar from_stack_1.global_64
  loc_AA5B4D: LdPrVar
  loc_AA5B4F: LateMemCall
  loc_AA5B55: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AA5B5A: PopAdLdVar
  loc_AA5B5B: FLdPr Me
  loc_AA5B5E: MemLdRfVar from_stack_1.global_64
  loc_AA5B61: LdPrVar
  loc_AA5B63: LateMemCall
  loc_AA5B69: LitVarStr var_94, " font-size: 12px;"
  loc_AA5B6E: PopAdLdVar
  loc_AA5B6F: FLdPr Me
  loc_AA5B72: MemLdRfVar from_stack_1.global_64
  loc_AA5B75: LdPrVar
  loc_AA5B77: LateMemCall
  loc_AA5B7D: LitVarStr var_94, " font-weight: bold;"
  loc_AA5B82: PopAdLdVar
  loc_AA5B83: FLdPr Me
  loc_AA5B86: MemLdRfVar from_stack_1.global_64
  loc_AA5B89: LdPrVar
  loc_AA5B8B: LateMemCall
  loc_AA5B91: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AA5B96: PopAdLdVar
  loc_AA5B97: FLdPr Me
  loc_AA5B9A: MemLdRfVar from_stack_1.global_64
  loc_AA5B9D: LdPrVar
  loc_AA5B9F: LateMemCall
  loc_AA5BA5: LitVarStr var_94, "}"
  loc_AA5BAA: PopAdLdVar
  loc_AA5BAB: FLdPr Me
  loc_AA5BAE: MemLdRfVar from_stack_1.global_64
  loc_AA5BB1: LdPrVar
  loc_AA5BB3: LateMemCall
  loc_AA5BB9: LitVarStr var_94, "</style>"
  loc_AA5BBE: PopAdLdVar
  loc_AA5BBF: FLdPr Me
  loc_AA5BC2: MemLdRfVar from_stack_1.global_64
  loc_AA5BC5: LdPrVar
  loc_AA5BC7: LateMemCall
  loc_AA5BCD: LitI4 0
  loc_AA5BD2: FStStrCopy var_AC
  loc_AA5BD5: FLdRfVar var_AC
  loc_AA5BD8: LitI4 0
  loc_AA5BDD: FStStrCopy var_A8
  loc_AA5BE0: FLdRfVar var_A8
  loc_AA5BE3: LitI2_Byte 0
  loc_AA5BE5: PopTmpLdAd2 var_BE
  loc_AA5BE8: FLdPr Me
  loc_AA5BEB: MemLdRfVar from_stack_1.global_64
  loc_AA5BEE: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AA5BF3: FFreeStr var_A8 = ""
  loc_AA5BFA: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AA5BFF: PopAdLdVar
  loc_AA5C00: FLdPr Me
  loc_AA5C03: MemLdRfVar from_stack_1.global_64
  loc_AA5C06: LdPrVar
  loc_AA5C08: LateMemCall
  loc_AA5C0E: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA5C13: PopAdLdVar
  loc_AA5C14: FLdPr Me
  loc_AA5C17: MemLdRfVar from_stack_1.global_64
  loc_AA5C1A: LdPrVar
  loc_AA5C1C: LateMemCall
  loc_AA5C22: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_AA5C27: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AA5C2C: FStVarCopyObj var_BC
  loc_AA5C2F: FLdRfVar var_BC
  loc_AA5C32: FLdRfVar var_D0
  loc_AA5C35: ImpAdCallFPR4  = Ucase()
  loc_AA5C3A: FLdRfVar var_D0
  loc_AA5C3D: ConcatVar var_E0
  loc_AA5C41: LitVarStr var_F0, "</p>"
  loc_AA5C46: ConcatVar var_100
  loc_AA5C4A: PopAdLdVar
  loc_AA5C4B: FLdPr Me
  loc_AA5C4E: MemLdRfVar from_stack_1.global_64
  loc_AA5C51: LdPrVar
  loc_AA5C53: LateMemCall
  loc_AA5C59: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_AA5C64: LitStr "    <p>"
  loc_AA5C67: FLdRfVar var_A8
  loc_AA5C6A: FLdPr Me
  loc_AA5C6D:  = Me.Caption
  loc_AA5C72: ILdRf var_A8
  loc_AA5C75: ConcatStr
  loc_AA5C76: FStStrNoPop var_AC
  loc_AA5C79: LitStr "</p></th>"
  loc_AA5C7C: ConcatStr
  loc_AA5C7D: CVarStr var_BC
  loc_AA5C80: PopAdLdVar
  loc_AA5C81: FLdPr Me
  loc_AA5C84: MemLdRfVar from_stack_1.global_64
  loc_AA5C87: LdPrVar
  loc_AA5C89: LateMemCall
  loc_AA5C8F: FFreeStr var_A8 = ""
  loc_AA5C96: FFree1Var var_BC = ""
  loc_AA5C99: LitVarStr var_94, "  </tr>"
  loc_AA5C9E: PopAdLdVar
  loc_AA5C9F: FLdPr Me
  loc_AA5CA2: MemLdRfVar from_stack_1.global_64
  loc_AA5CA5: LdPrVar
  loc_AA5CA7: LateMemCall
  loc_AA5CAD: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA5CB2: PopAdLdVar
  loc_AA5CB3: FLdPr Me
  loc_AA5CB6: MemLdRfVar from_stack_1.global_64
  loc_AA5CB9: LdPrVar
  loc_AA5CBB: LateMemCall
  loc_AA5CC1: LitVarStr var_94, "    <th align=""left"" valign=""bottom""><hr></th>"
  loc_AA5CC6: PopAdLdVar
  loc_AA5CC7: FLdPr Me
  loc_AA5CCA: MemLdRfVar from_stack_1.global_64
  loc_AA5CCD: LdPrVar
  loc_AA5CCF: LateMemCall
  loc_AA5CD5: LitVarStr var_94, "  </tr>"
  loc_AA5CDA: PopAdLdVar
  loc_AA5CDB: FLdPr Me
  loc_AA5CDE: MemLdRfVar from_stack_1.global_64
  loc_AA5CE1: LdPrVar
  loc_AA5CE3: LateMemCall
  loc_AA5CE9: LitVarStr var_94, "</table>"
  loc_AA5CEE: PopAdLdVar
  loc_AA5CEF: FLdPr Me
  loc_AA5CF2: MemLdRfVar from_stack_1.global_64
  loc_AA5CF5: LdPrVar
  loc_AA5CF7: LateMemCall
  loc_AA5CFD: LitVarStr var_94, "<br>"
  loc_AA5D02: PopAdLdVar
  loc_AA5D03: FLdPr Me
  loc_AA5D06: MemLdRfVar from_stack_1.global_64
  loc_AA5D09: LdPrVar
  loc_AA5D0B: LateMemCall
  loc_AA5D11: LitVarStr var_94, "<table border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA5D16: PopAdLdVar
  loc_AA5D17: FLdPr Me
  loc_AA5D1A: MemLdRfVar from_stack_1.global_64
  loc_AA5D1D: LdPrVar
  loc_AA5D1F: LateMemCall
  loc_AA5D25: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_AA5D2A: PopAdLdVar
  loc_AA5D2B: FLdPr Me
  loc_AA5D2E: MemLdRfVar from_stack_1.global_64
  loc_AA5D31: LdPrVar
  loc_AA5D33: LateMemCall
  loc_AA5D39: LitVarStr var_94, "    <th>Código</th>"
  loc_AA5D3E: PopAdLdVar
  loc_AA5D3F: FLdPr Me
  loc_AA5D42: MemLdRfVar from_stack_1.global_64
  loc_AA5D45: LdPrVar
  loc_AA5D47: LateMemCall
  loc_AA5D4D: LitVarStr var_94, "    <th>Detalle</th>"
  loc_AA5D52: PopAdLdVar
  loc_AA5D53: FLdPr Me
  loc_AA5D56: MemLdRfVar from_stack_1.global_64
  loc_AA5D59: LdPrVar
  loc_AA5D5B: LateMemCall
  loc_AA5D61: LitVarStr var_94, "    <th>L&iacutemite</th>"
  loc_AA5D66: PopAdLdVar
  loc_AA5D67: FLdPr Me
  loc_AA5D6A: MemLdRfVar from_stack_1.global_64
  loc_AA5D6D: LdPrVar
  loc_AA5D6F: LateMemCall
  loc_AA5D75: LitVarStr var_94, "    <th>Días para el pago</th>"
  loc_AA5D7A: PopAdLdVar
  loc_AA5D7B: FLdPr Me
  loc_AA5D7E: MemLdRfVar from_stack_1.global_64
  loc_AA5D81: LdPrVar
  loc_AA5D83: LateMemCall
  loc_AA5D89: LitVarStr var_94, "    <th>Usuario</th>"
  loc_AA5D8E: PopAdLdVar
  loc_AA5D8F: FLdPr Me
  loc_AA5D92: MemLdRfVar from_stack_1.global_64
  loc_AA5D95: LdPrVar
  loc_AA5D97: LateMemCall
  loc_AA5D9D: LitVarStr var_94, "  </tr>"
  loc_AA5DA2: PopAdLdVar
  loc_AA5DA3: FLdPr Me
  loc_AA5DA6: MemLdRfVar from_stack_1.global_64
  loc_AA5DA9: LdPrVar
  loc_AA5DAB: LateMemCall
  loc_AA5DB1: ExitProcHresult
End Function

Private Function Proc_205_12_983B20() '983B20
  'Data Table: 4252CC
  loc_983AE0: LitVarStr var_94, "</table>"
  loc_983AE5: PopAdLdVar
  loc_983AE6: FLdPr Me
  loc_983AE9: MemLdRfVar from_stack_1.global_64
  loc_983AEC: LdPrVar
  loc_983AEE: LateMemCall
  loc_983AF4: LitVarStr var_94, "</body>"
  loc_983AF9: PopAdLdVar
  loc_983AFA: FLdPr Me
  loc_983AFD: MemLdRfVar from_stack_1.global_64
  loc_983B00: LdPrVar
  loc_983B02: LateMemCall
  loc_983B08: LitVarStr var_94, "</html>"
  loc_983B0D: PopAdLdVar
  loc_983B0E: FLdPr Me
  loc_983B11: MemLdRfVar from_stack_1.global_64
  loc_983B14: LdPrVar
  loc_983B16: LateMemCall
  loc_983B1C: ExitProcHresult
  loc_983B1D: ImpAdStI2 MemVar_C3D83C
End Function
