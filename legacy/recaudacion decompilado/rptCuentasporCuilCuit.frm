VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptCuentasporCuilCuit
  Caption = "Cuentas por Cuit-Cuil"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptCuentasporCuilCuit.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8280
  ClientHeight = 1704
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 1455
    Width = 8280
    Height = 255
    TabIndex = 9
    OleObjectBlob = "rptCuentasporCuilCuit.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 360
    Width = 855
    Height = 735
    TabIndex = 4
    Cancel = -1  'True
    Picture = "rptCuentasporCuilCuit.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptCuentasporCuilCuit.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 120
    Width = 1815
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
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
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 120
    Width = 4095
    Height = 1215
    TabIndex = 6
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
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
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8055
    Height = 1215
    Visible = 0   'False
    TabIndex = 5
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6240
      Top = 360
      Width = 1575
      Height = 615
      Enabled = 0   'False
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
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 720
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 8
    OleObjectBlob = "rptCuentasporCuilCuit.frx":0C00
  End
End

Attribute VB_Name = "rptCuentasporCuilCuit"

Public bGenerado As Boolean

Private Type UDT_1_005608E8
  bStruc(28) As Byte ' String fields: 7
End Type

Private Type UDT_2_005816F4
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub Form_Load(arg_C) '9E3B1C
  'Data Table: 447484
  loc_9E3B00: ILdRf Me
  loc_9E3B03: CastAd
  loc_9E3B06: FStAdFunc var_88
  loc_9E3B09: FLdRfVar var_88
  loc_9E3B0C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9E3B11: FFree1Ad var_88
  loc_9E3B14: Call cmdNueva_Click()
  loc_9E3B19: ExitProcHresult
  loc_9E3B1A: FStFPR8 arg_C03
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D979C
  'Data Table: 447484
  loc_9D9784: FLdPr Me
  loc_9D9787: VCallAd Control_ID_wbbReporte
  loc_9D978A: FStAdFunc var_88
  loc_9D978D: FLdRfVar var_88
  loc_9D9790: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D9795: FFree1Ad var_88
  loc_9D9798: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A433C8
  'Data Table: 447484
  loc_A43374: LitI2_Byte 0
  loc_A43376: ILdRf Me
  loc_A43379: CastAd
  loc_A4337C: FStAdFunc var_88
  loc_A4337F: FLdRfVar var_88
  loc_A43382: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A43387: FFree1Ad var_88
  loc_A4338A: FLdRfVar var_8A
  loc_A4338D: FLdPr Me
  loc_A43390: VCallAd Control_ID_cmdPredeterminada
  loc_A43393: FStAdFunc var_88
  loc_A43396: FLdPr var_88
  loc_A43399:  = Me.Enabled
  loc_A4339E: FLdI2 var_8A
  loc_A433A1: NotI4
  loc_A433A2: FFree1Ad var_88
  loc_A433A5: BranchF loc_A433B0
  loc_A433A8: ImpAdCallFPR4 DoEvents()
  loc_A433AD: Branch loc_A4338A
  loc_A433B0: ILdRf Me
  loc_A433B3: FStAdNoPop
  loc_A433B7: ImpAdLdRf MemVar_D9C5D8
  loc_A433BA: NewIfNullPr Global
  loc_A433BD: Global.Unload from_stack_1
  loc_A433C2: FFree1Ad var_88
  loc_A433C5: ExitProcHresult
  loc_A433C6: ImpAdStI2 MemVar_0
End Sub

Private Sub cmdSalir_Click() 'A02D9C
  'Data Table: 447484
  loc_A02D6C: LitVarStr var_94, "Cerrando..."
  loc_A02D71: PopAdLdVar
  loc_A02D72: FLdPr Me
  loc_A02D75: VCallAd Control_ID_statusBar
  loc_A02D78: FStAdFunc var_A8
  loc_A02D7B: FLdPr var_A8
  loc_A02D7E: LateIdSt
  loc_A02D83: FFree1Ad var_A8
  loc_A02D86: ILdRf Me
  loc_A02D89: FStAdNoPop
  loc_A02D8D: ImpAdLdRf MemVar_D9C5D8
  loc_A02D90: NewIfNullPr Global
  loc_A02D93: Global.Unload from_stack_1
  loc_A02D98: FFree1Ad var_A8
  loc_A02D9B: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E3C5C
  'Data Table: 447484
  loc_9E3C40: LitI2_Byte 0
  loc_9E3C42: PopTmpLdAd2 var_8A
  loc_9E3C45: ILdRf Me
  loc_9E3C48: CastAd
  loc_9E3C4B: FStAdFunc var_88
  loc_9E3C4E: FLdRfVar var_88
  loc_9E3C51: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E3C56: FFree1Ad var_88
  loc_9E3C59: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A19360
  'Data Table: 447484
  loc_A19328: FLdPr Me
  loc_A1932B: VCallAd Control_ID_statusBar
  loc_A1932E: FStAdFunc var_88
  loc_A19331: FLdPr var_88
  loc_A19334: LateIdLdVar var_98 DispID_1 0
  loc_A1933B: CStrVarTmp
  loc_A1933C: CVarStr var_A8
  loc_A1933F: PopAdLdVar
  loc_A19340: FLdPr Me
  loc_A19343: VCallAd Control_ID_statusBar
  loc_A19346: FStAdFunc var_BC
  loc_A19349: FLdPr var_BC
  loc_A1934C: LateIdSt
  loc_A19351: FFreeAd var_88 = ""
  loc_A19358: FFreeVar var_98 = ""
  loc_A1935F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D9918
  'Data Table: 447484
  loc_9D9900: ILdRf Me
  loc_9D9903: CastAd
  loc_9D9906: FStAdFunc var_88
  loc_9D9909: FLdRfVar var_88
  loc_9D990C: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D9911: FFree1Ad var_88
  loc_9D9914: ExitProcHresult
  loc_9D9915: ILdR8 arg_377
End Sub

Private Sub cmdNueva_Click() 'A09910
  'Data Table: 447484
  loc_A098D8: LitI2_Byte 0
  loc_A098DA: FLdPr Me
  loc_A098DD: MemStI2 bGenerado
  loc_A098E0: LitI2_Byte 0
  loc_A098E2: ILdRf Me
  loc_A098E5: CastAd
  loc_A098E8: FStAdFunc var_88
  loc_A098EB: FLdRfVar var_88
  loc_A098EE: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A098F3: FFree1Ad var_88
  loc_A098F6: Call HabilitarCriterio()
  loc_A098FB: ILdRf Me
  loc_A098FE: CastAd
  loc_A09901: FStAdFunc var_88
  loc_A09904: FLdRfVar var_88
  loc_A09907: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A0990C: FFree1Ad var_88
  loc_A0990F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '447D18
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '447D27
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AEBC8
  'Data Table: 447484
  loc_9AEBC4: ExitProcHresult
  loc_9AEBC5: Error
End Sub

Public Sub GeneraReporte() 'B85DE8
  'Data Table: 447484
  loc_B858C8: FLdPr Me
  loc_B858CB: MemLdI2 bGenerado
  loc_B858CE: BranchF loc_B858D2
  loc_B858D1: ExitProcHresult
  loc_B858D2: LitVarStr var_9C, "Generando reporte..."
  loc_B858D7: PopAdLdVar
  loc_B858D8: FLdPr Me
  loc_B858DB: VCallAd Control_ID_statusBar
  loc_B858DE: FStAdFunc var_B0
  loc_B858E1: FLdPr var_B0
  loc_B858E4: LateIdSt
  loc_B858E9: FFree1Ad var_B0
  loc_B858EC: LitI4 &HB
  loc_B858F1: CI2I4
  loc_B858F2: FLdPr Me
  loc_B858F5: Me.MousePointer = from_stack_1
  loc_B858FA: ImpAdLdRf MemVar_D9375C
  loc_B858FD: NewIfNullAd
  loc_B85900: FStAd var_B4 
  loc_B85904: LitI4 0
  loc_B85909: LitI4 1
  loc_B8590E: FLdPr Me
  loc_B85911: MemLdRfVar from_stack_1.global_76
  loc_B85914: Redim
  loc_B8591E: LitI4 0
  loc_B85923: LitI4 1
  loc_B85928: FLdPr Me
  loc_B8592B: MemLdRfVar from_stack_1.global_84
  loc_B8592E: Redim
  loc_B85938: FLdRfVar var_B8
  loc_B8593B: FLdPr var_B4
  loc_B8593E: VCallAd Control_ID_cmdPredeterminada
  loc_B85941: FStAdFunc var_B0
  loc_B85944: FLdPr var_B0
  loc_B85947:  = Me.Text
  loc_B8594C: LitI2_Byte 0
  loc_B8594E: LitVar_Missing var_DC
  loc_B85951: LitI2_Byte 0
  loc_B85953: FLdZeroAd var_B8
  loc_B85956: CVarStr var_CC
  loc_B85959: PopAdLdVar
  loc_B8595A: LitI4 1
  loc_B8595F: FLdPr Me
  loc_B85962: MemLdStr global_76
  loc_B85965: AryLock
  loc_B85968: Ary1LdPr
  loc_B85969: MemLdRfVar from_stack_1.global_0
  loc_B8596C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B85971: AryUnlock
  loc_B85974: FFree1Ad var_B0
  loc_B85977: FFreeVar var_CC = ""
  loc_B8597E: FLdRfVar var_B8
  loc_B85981: FLdPr var_B4
  loc_B85984: VCallAd Control_ID_
  loc_B85987: FStAdFunc var_B0
  loc_B8598A: FLdPr var_B0
  loc_B8598D:  = Me.Caption
  loc_B85992: LitI2_Byte 0
  loc_B85994: LitVar_Missing var_DC
  loc_B85997: LitI2_Byte 0
  loc_B85999: FLdZeroAd var_B8
  loc_B8599C: CVarStr var_CC
  loc_B8599F: PopAdLdVar
  loc_B859A0: LitI4 1
  loc_B859A5: FLdPr Me
  loc_B859A8: MemLdStr global_76
  loc_B859AB: AryLock
  loc_B859AE: Ary1LdPr
  loc_B859AF: MemLdRfVar from_stack_1.global_4
  loc_B859B2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B859B7: AryUnlock
  loc_B859BA: FFree1Ad var_B0
  loc_B859BD: FFreeVar var_CC = ""
  loc_B859C4: FLdRfVar var_B8
  loc_B859C7: FLdPr var_B4
  loc_B859CA: VCallAd Control_ID_
  loc_B859CD: FStAdFunc var_B0
  loc_B859D0: FLdPr var_B0
  loc_B859D3:  = Me.Caption
  loc_B859D8: LitI2_Byte 0
  loc_B859DA: LitVar_Missing var_DC
  loc_B859DD: LitI2_Byte 0
  loc_B859DF: FLdZeroAd var_B8
  loc_B859E2: CVarStr var_CC
  loc_B859E5: PopAdLdVar
  loc_B859E6: LitI4 1
  loc_B859EB: FLdPr Me
  loc_B859EE: MemLdStr global_76
  loc_B859F1: AryLock
  loc_B859F4: Ary1LdPr
  loc_B859F5: MemLdRfVar from_stack_1.global_8
  loc_B859F8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B859FD: AryUnlock
  loc_B85A00: FFree1Ad var_B0
  loc_B85A03: FFreeVar var_CC = ""
  loc_B85A0A: FLdPr var_B4
  loc_B85A0D: VCallAd Control_ID_
  loc_B85A10: FStAdFunc var_B0
  loc_B85A13: FLdPr var_B0
  loc_B85A16: LateIdLdVar var_CC DispID_4 0
  loc_B85A1D: PopAd
  loc_B85A1F: LitI4 0
  loc_B85A24: FLdRfVar var_CC
  loc_B85A27: CI4Var
  loc_B85A29: LitI4 1
  loc_B85A2E: SubI4
  loc_B85A2F: LitI4 1
  loc_B85A34: FLdPr Me
  loc_B85A37: MemLdStr global_76
  loc_B85A3A: Ary1LdPr
  loc_B85A3B: MemLdRfVar from_stack_1.global_12
  loc_B85A3E: Redim
  loc_B85A48: FFree1Ad var_B0
  loc_B85A4B: FFree1Var var_CC = ""
  loc_B85A4E: LitI2_Byte 1
  loc_B85A50: FLdPr Me
  loc_B85A53: MemLdRfVar from_stack_1.global_80
  loc_B85A56: LitI4 1
  loc_B85A5B: FLdPr Me
  loc_B85A5E: MemLdStr global_76
  loc_B85A61: Ary1LdPr
  loc_B85A62: MemLdStr global_12
  loc_B85A65: LitI2_Byte 1
  loc_B85A67: FnUBound
  loc_B85A69: CI2I4
  loc_B85A6A: ForI2 var_E0
  loc_B85A70: FLdPr var_B4
  loc_B85A73: VCallAd Control_ID_
  loc_B85A76: FStAdFunc var_E4
  loc_B85A79: FLdPr Me
  loc_B85A7C: MemLdI2 global_80
  loc_B85A7F: CI4UI1
  loc_B85A80: CVarI4
  loc_B85A84: PopAdLdVar
  loc_B85A85: LitVarI4
  loc_B85A8D: PopAdLdVar
  loc_B85A8E: FLdPr var_E4
  loc_B85A91: LateIdCallLdVar
  loc_B85A9B: PopAd
  loc_B85A9D: LitI2_Byte 0
  loc_B85A9F: LitVar_Missing var_128
  loc_B85AA2: LitI2_Byte 0
  loc_B85AA4: FLdRfVar var_CC
  loc_B85AA7: CStrVarTmp
  loc_B85AA8: CVarStr var_DC
  loc_B85AAB: PopAdLdVar
  loc_B85AAC: FLdPr Me
  loc_B85AAF: MemLdI2 global_80
  loc_B85AB2: CI4UI1
  loc_B85AB3: LitI4 1
  loc_B85AB8: FLdPr Me
  loc_B85ABB: MemLdStr global_76
  loc_B85ABE: AryLock
  loc_B85AC1: Ary1LdPr
  loc_B85AC2: MemLdStr global_12
  loc_B85AC5: AryLock
  loc_B85AC8: Ary1LdPr
  loc_B85AC9: MemLdRfVar from_stack_1.global_0
  loc_B85ACC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B85AD1: AryUnlock
  loc_B85AD4: AryUnlock
  loc_B85AD7: FFreeVar var_CC = "": var_DC = ""
  loc_B85AE0: FLdPr Me
  loc_B85AE3: MemLdI2 global_80
  loc_B85AE6: CI4UI1
  loc_B85AE7: CVarI4
  loc_B85AEB: PopAdLdVar
  loc_B85AEC: LitVarI4
  loc_B85AF4: PopAdLdVar
  loc_B85AF5: FLdPr var_E4
  loc_B85AF8: LateIdCallLdVar
  loc_B85B02: PopAd
  loc_B85B04: LitI2_Byte 0
  loc_B85B06: LitVar_Missing var_128
  loc_B85B09: LitI2_Byte 0
  loc_B85B0B: FLdRfVar var_CC
  loc_B85B0E: CStrVarTmp
  loc_B85B0F: CVarStr var_DC
  loc_B85B12: PopAdLdVar
  loc_B85B13: FLdPr Me
  loc_B85B16: MemLdI2 global_80
  loc_B85B19: CI4UI1
  loc_B85B1A: LitI4 1
  loc_B85B1F: FLdPr Me
  loc_B85B22: MemLdStr global_76
  loc_B85B25: AryLock
  loc_B85B28: Ary1LdPr
  loc_B85B29: MemLdStr global_12
  loc_B85B2C: AryLock
  loc_B85B2F: Ary1LdPr
  loc_B85B30: MemLdRfVar from_stack_1.global_4
  loc_B85B33: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B85B38: AryUnlock
  loc_B85B3B: AryUnlock
  loc_B85B3E: FFreeVar var_CC = "": var_DC = ""
  loc_B85B47: FLdPr Me
  loc_B85B4A: MemLdI2 global_80
  loc_B85B4D: CI4UI1
  loc_B85B4E: CVarI4
  loc_B85B52: PopAdLdVar
  loc_B85B53: LitVarI4
  loc_B85B5B: PopAdLdVar
  loc_B85B5C: FLdPr var_E4
  loc_B85B5F: LateIdCallLdVar
  loc_B85B69: PopAd
  loc_B85B6B: LitI2_Byte 0
  loc_B85B6D: LitVar_Missing var_128
  loc_B85B70: LitI2_Byte 0
  loc_B85B72: FLdRfVar var_CC
  loc_B85B75: CStrVarTmp
  loc_B85B76: CVarStr var_DC
  loc_B85B79: PopAdLdVar
  loc_B85B7A: FLdPr Me
  loc_B85B7D: MemLdI2 global_80
  loc_B85B80: CI4UI1
  loc_B85B81: LitI4 1
  loc_B85B86: FLdPr Me
  loc_B85B89: MemLdStr global_76
  loc_B85B8C: AryLock
  loc_B85B8F: Ary1LdPr
  loc_B85B90: MemLdStr global_12
  loc_B85B93: AryLock
  loc_B85B96: Ary1LdPr
  loc_B85B97: MemLdRfVar from_stack_1.global_8
  loc_B85B9A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B85B9F: AryUnlock
  loc_B85BA2: AryUnlock
  loc_B85BA5: FFreeVar var_CC = "": var_DC = ""
  loc_B85BAE: FLdPr Me
  loc_B85BB1: MemLdI2 global_80
  loc_B85BB4: CI4UI1
  loc_B85BB5: CVarI4
  loc_B85BB9: PopAdLdVar
  loc_B85BBA: LitVarI4
  loc_B85BC2: PopAdLdVar
  loc_B85BC3: FLdPr var_E4
  loc_B85BC6: LateIdCallLdVar
  loc_B85BD0: PopAd
  loc_B85BD2: LitI2_Byte 0
  loc_B85BD4: LitI4 1
  loc_B85BD9: FLdPr Me
  loc_B85BDC: MemLdStr global_84
  loc_B85BDF: AryLock
  loc_B85BE2: Ary1LdPr
  loc_B85BE3: MemLdRfVar from_stack_1.global_12
  loc_B85BE6: CVarRef
  loc_B85BEB: LitI2_Byte &HFF
  loc_B85BED: FLdRfVar var_CC
  loc_B85BF0: CStrVarTmp
  loc_B85BF1: CVarStr var_DC
  loc_B85BF4: PopAdLdVar
  loc_B85BF5: FLdPr Me
  loc_B85BF8: MemLdI2 global_80
  loc_B85BFB: CI4UI1
  loc_B85BFC: LitI4 1
  loc_B85C01: FLdPr Me
  loc_B85C04: MemLdStr global_76
  loc_B85C07: AryLock
  loc_B85C0A: Ary1LdPr
  loc_B85C0B: MemLdStr global_12
  loc_B85C0E: AryLock
  loc_B85C11: Ary1LdPr
  loc_B85C12: MemLdRfVar from_stack_1.global_12
  loc_B85C15: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B85C1A: AryUnlock
  loc_B85C1D: AryUnlock
  loc_B85C20: AryUnlock
  loc_B85C23: FFreeVar var_CC = ""
  loc_B85C2A: FLdPr Me
  loc_B85C2D: MemLdI2 global_80
  loc_B85C30: CI4UI1
  loc_B85C31: CVarI4
  loc_B85C35: PopAdLdVar
  loc_B85C36: LitVarI4
  loc_B85C3E: PopAdLdVar
  loc_B85C3F: FLdPr var_E4
  loc_B85C42: LateIdCallLdVar
  loc_B85C4C: PopAd
  loc_B85C4E: LitI2_Byte 0
  loc_B85C50: LitI4 1
  loc_B85C55: FLdPr Me
  loc_B85C58: MemLdStr global_84
  loc_B85C5B: AryLock
  loc_B85C5E: Ary1LdPr
  loc_B85C5F: MemLdRfVar from_stack_1.global_16
  loc_B85C62: CVarRef
  loc_B85C67: LitI2_Byte &HFF
  loc_B85C69: FLdRfVar var_CC
  loc_B85C6C: CStrVarTmp
  loc_B85C6D: CVarStr var_DC
  loc_B85C70: PopAdLdVar
  loc_B85C71: FLdPr Me
  loc_B85C74: MemLdI2 global_80
  loc_B85C77: CI4UI1
  loc_B85C78: LitI4 1
  loc_B85C7D: FLdPr Me
  loc_B85C80: MemLdStr global_76
  loc_B85C83: AryLock
  loc_B85C86: Ary1LdPr
  loc_B85C87: MemLdStr global_12
  loc_B85C8A: AryLock
  loc_B85C8D: Ary1LdPr
  loc_B85C8E: MemLdRfVar from_stack_1.global_16
  loc_B85C91: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B85C96: AryUnlock
  loc_B85C99: AryUnlock
  loc_B85C9C: AryUnlock
  loc_B85C9F: FFreeVar var_CC = ""
  loc_B85CA6: FLdPr Me
  loc_B85CA9: MemLdI2 global_80
  loc_B85CAC: CI4UI1
  loc_B85CAD: CVarI4
  loc_B85CB1: PopAdLdVar
  loc_B85CB2: LitVarI4
  loc_B85CBA: PopAdLdVar
  loc_B85CBB: FLdPr var_E4
  loc_B85CBE: LateIdCallLdVar
  loc_B85CC8: PopAd
  loc_B85CCA: LitI2_Byte 0
  loc_B85CCC: LitI4 1
  loc_B85CD1: FLdPr Me
  loc_B85CD4: MemLdStr global_84
  loc_B85CD7: AryLock
  loc_B85CDA: Ary1LdPr
  loc_B85CDB: MemLdRfVar from_stack_1.global_20
  loc_B85CDE: CVarRef
  loc_B85CE3: LitI2_Byte &HFF
  loc_B85CE5: FLdRfVar var_CC
  loc_B85CE8: CStrVarTmp
  loc_B85CE9: CVarStr var_DC
  loc_B85CEC: PopAdLdVar
  loc_B85CED: FLdPr Me
  loc_B85CF0: MemLdI2 global_80
  loc_B85CF3: CI4UI1
  loc_B85CF4: LitI4 1
  loc_B85CF9: FLdPr Me
  loc_B85CFC: MemLdStr global_76
  loc_B85CFF: AryLock
  loc_B85D02: Ary1LdPr
  loc_B85D03: MemLdStr global_12
  loc_B85D06: AryLock
  loc_B85D09: Ary1LdPr
  loc_B85D0A: MemLdRfVar from_stack_1.global_20
  loc_B85D0D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B85D12: AryUnlock
  loc_B85D15: AryUnlock
  loc_B85D18: AryUnlock
  loc_B85D1B: FFreeVar var_CC = ""
  loc_B85D22: FLdPr Me
  loc_B85D25: MemLdI2 global_80
  loc_B85D28: CI4UI1
  loc_B85D29: CVarI4
  loc_B85D2D: PopAdLdVar
  loc_B85D2E: LitVarI4
  loc_B85D36: PopAdLdVar
  loc_B85D37: FLdPr var_E4
  loc_B85D3A: LateIdCallLdVar
  loc_B85D44: PopAd
  loc_B85D46: LitI2_Byte 0
  loc_B85D48: LitI4 1
  loc_B85D4D: FLdPr Me
  loc_B85D50: MemLdStr global_84
  loc_B85D53: AryLock
  loc_B85D56: Ary1LdPr
  loc_B85D57: MemLdRfVar from_stack_1.global_24
  loc_B85D5A: CVarRef
  loc_B85D5F: LitI2_Byte &HFF
  loc_B85D61: FLdRfVar var_CC
  loc_B85D64: CStrVarTmp
  loc_B85D65: CVarStr var_DC
  loc_B85D68: PopAdLdVar
  loc_B85D69: FLdPr Me
  loc_B85D6C: MemLdI2 global_80
  loc_B85D6F: CI4UI1
  loc_B85D70: LitI4 1
  loc_B85D75: FLdPr Me
  loc_B85D78: MemLdStr global_76
  loc_B85D7B: AryLock
  loc_B85D7E: Ary1LdPr
  loc_B85D7F: MemLdStr global_12
  loc_B85D82: AryLock
  loc_B85D85: Ary1LdPr
  loc_B85D86: MemLdRfVar from_stack_1.global_24
  loc_B85D89: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B85D8E: AryUnlock
  loc_B85D91: AryUnlock
  loc_B85D94: AryUnlock
  loc_B85D97: FFreeVar var_CC = ""
  loc_B85D9E: LitNothing
  loc_B85DA0: FStAd var_E4 
  loc_B85DA4: FLdPr Me
  loc_B85DA7: MemLdRfVar from_stack_1.global_80
  loc_B85DAA: NextI2 var_E0, loc_B85A70
  loc_B85DAF: LitNothing
  loc_B85DB1: FStAd var_B4 
  loc_B85DB5: LitI2_Byte &HFF
  loc_B85DB7: FLdPr Me
  loc_B85DBA: MemStI2 bGenerado
  loc_B85DBD: LitI4 0
  loc_B85DC2: CI2I4
  loc_B85DC3: FLdPr Me
  loc_B85DC6: Me.MousePointer = from_stack_1
  loc_B85DCB: LitVarStr var_9C, vbNullString
  loc_B85DD0: PopAdLdVar
  loc_B85DD1: FLdPr Me
  loc_B85DD4: VCallAd Control_ID_statusBar
  loc_B85DD7: FStAdFunc var_B0
  loc_B85DDA: FLdPr var_B0
  loc_B85DDD: LateIdSt
  loc_B85DE2: FFree1Ad var_B0
  loc_B85DE5: ExitProcHresult
  loc_B85DE6: ExitProcR8
End Sub

Public Sub GeneraHTML() 'B03F30
  'Data Table: 447484
  loc_B03D30: FLdRfVar var_8C
  loc_B03D33: LitI2_Byte 0
  loc_B03D35: LitI2_Byte &HFF
  loc_B03D37: ImpAdLdI4 MemVar_D93C84
  loc_B03D3A: FLdPr Me
  loc_B03D3D: MemLdRfVar from_stack_1.global_56
  loc_B03D40: NewIfNullPr IFileSystem3
  loc_B03D43: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B03D48: ILdRf var_8C
  loc_B03D4B: FLdPr Me
  loc_B03D4E: MemStVarAd
  loc_B03D52: FFree1Ad var_8C
  loc_B03D55: LitI2_Byte &HFF
  loc_B03D57: ImpAdStI2 MemVar_D93C8A
  loc_B03D5A: Call Proc_351_13_B6E788()
  loc_B03D5F: Call Proc_351_14_B80C2C()
  loc_B03D64: LitI2_Byte 1
  loc_B03D66: FLdPr Me
  loc_B03D69: MemLdRfVar from_stack_1.global_80
  loc_B03D6C: LitI4 1
  loc_B03D71: FLdPr Me
  loc_B03D74: MemLdStr global_76
  loc_B03D77: Ary1LdPr
  loc_B03D78: MemLdStr global_12
  loc_B03D7B: LitI2_Byte 1
  loc_B03D7D: FnUBound
  loc_B03D7F: CI2I4
  loc_B03D80: ForI2 var_90
  loc_B03D86: FLdPr Me
  loc_B03D89: MemLdI2 global_80
  loc_B03D8C: CI4UI1
  loc_B03D8D: LitI4 1
  loc_B03D92: FLdPr Me
  loc_B03D95: MemLdStr global_76
  loc_B03D98: AryLock
  loc_B03D9B: Ary1LdPr
  loc_B03D9C: MemLdStr global_12
  loc_B03D9F: AryLock
  loc_B03DA2: Ary1LdRf
  loc_B03DA3: FStR4 var_9C
  loc_B03DA6: LitVarStr var_AC, " <tr valign=""top"" class=""LineaDato"">"
  loc_B03DAB: PopAdLdVar
  loc_B03DAC: FLdPr Me
  loc_B03DAF: MemLdRfVar from_stack_1.global_60
  loc_B03DB2: LdPrVar
  loc_B03DB4: LateMemCall
  loc_B03DBA: LitStr vbNullString
  loc_B03DBD: LitI2_Byte 0
  loc_B03DBF: LitI2_Byte 0
  loc_B03DC1: LitI2_Byte 0
  loc_B03DC3: LitStr "left"
  loc_B03DC6: FMemLdR4 var_9C(0)
  loc_B03DCB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03DD0: CVarStr var_CC
  loc_B03DD3: PopAdLdVar
  loc_B03DD4: FLdPr Me
  loc_B03DD7: MemLdRfVar from_stack_1.global_60
  loc_B03DDA: LdPrVar
  loc_B03DDC: LateMemCall
  loc_B03DE2: FFree1Var var_CC = ""
  loc_B03DE5: LitStr vbNullString
  loc_B03DE8: LitI2_Byte 0
  loc_B03DEA: LitI2_Byte 0
  loc_B03DEC: LitI2_Byte 0
  loc_B03DEE: LitStr "right"
  loc_B03DF1: FMemLdR4 var_9C(4)
  loc_B03DF6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03DFB: CVarStr var_CC
  loc_B03DFE: PopAdLdVar
  loc_B03DFF: FLdPr Me
  loc_B03E02: MemLdRfVar from_stack_1.global_60
  loc_B03E05: LdPrVar
  loc_B03E07: LateMemCall
  loc_B03E0D: FFree1Var var_CC = ""
  loc_B03E10: LitStr vbNullString
  loc_B03E13: LitI2_Byte 0
  loc_B03E15: LitI2_Byte 0
  loc_B03E17: LitI2_Byte 0
  loc_B03E19: LitStr "center"
  loc_B03E1C: FMemLdR4 var_9C(8)
  loc_B03E21: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03E26: CVarStr var_CC
  loc_B03E29: PopAdLdVar
  loc_B03E2A: FLdPr Me
  loc_B03E2D: MemLdRfVar from_stack_1.global_60
  loc_B03E30: LdPrVar
  loc_B03E32: LateMemCall
  loc_B03E38: FFree1Var var_CC = ""
  loc_B03E3B: LitStr vbNullString
  loc_B03E3E: LitI2_Byte 0
  loc_B03E40: LitI2_Byte 0
  loc_B03E42: LitI2_Byte 0
  loc_B03E44: LitStr "right"
  loc_B03E47: FMemLdR4 var_9C(12)
  loc_B03E4C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03E51: CVarStr var_CC
  loc_B03E54: PopAdLdVar
  loc_B03E55: FLdPr Me
  loc_B03E58: MemLdRfVar from_stack_1.global_60
  loc_B03E5B: LdPrVar
  loc_B03E5D: LateMemCall
  loc_B03E63: FFree1Var var_CC = ""
  loc_B03E66: LitStr vbNullString
  loc_B03E69: LitI2_Byte 0
  loc_B03E6B: LitI2_Byte 0
  loc_B03E6D: LitI2_Byte 0
  loc_B03E6F: LitStr "right"
  loc_B03E72: FMemLdR4 var_9C(16)
  loc_B03E77: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03E7C: CVarStr var_CC
  loc_B03E7F: PopAdLdVar
  loc_B03E80: FLdPr Me
  loc_B03E83: MemLdRfVar from_stack_1.global_60
  loc_B03E86: LdPrVar
  loc_B03E88: LateMemCall
  loc_B03E8E: FFree1Var var_CC = ""
  loc_B03E91: LitStr vbNullString
  loc_B03E94: LitI2_Byte 0
  loc_B03E96: LitI2_Byte 0
  loc_B03E98: LitI2_Byte 0
  loc_B03E9A: LitStr "right"
  loc_B03E9D: FMemLdR4 var_9C(20)
  loc_B03EA2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03EA7: CVarStr var_CC
  loc_B03EAA: PopAdLdVar
  loc_B03EAB: FLdPr Me
  loc_B03EAE: MemLdRfVar from_stack_1.global_60
  loc_B03EB1: LdPrVar
  loc_B03EB3: LateMemCall
  loc_B03EB9: FFree1Var var_CC = ""
  loc_B03EBC: LitStr vbNullString
  loc_B03EBF: LitI2_Byte 0
  loc_B03EC1: LitI2_Byte 0
  loc_B03EC3: LitI2_Byte 0
  loc_B03EC5: LitStr "right"
  loc_B03EC8: FMemLdR4 var_9C(24)
  loc_B03ECD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03ED2: CVarStr var_CC
  loc_B03ED5: PopAdLdVar
  loc_B03ED6: FLdPr Me
  loc_B03ED9: MemLdRfVar from_stack_1.global_60
  loc_B03EDC: LdPrVar
  loc_B03EDE: LateMemCall
  loc_B03EE4: FFree1Var var_CC = ""
  loc_B03EE7: LitVarStr var_AC, "     </tr>"
  loc_B03EEC: PopAdLdVar
  loc_B03EED: FLdPr Me
  loc_B03EF0: MemLdRfVar from_stack_1.global_60
  loc_B03EF3: LdPrVar
  loc_B03EF5: LateMemCall
  loc_B03EFB: LitI4 0
  loc_B03F00: FStR4 var_9C
  loc_B03F03: AryUnlock
  loc_B03F06: AryUnlock
  loc_B03F09: FLdPr Me
  loc_B03F0C: MemLdRfVar from_stack_1.global_80
  loc_B03F0F: NextI2 var_90, loc_B03D86
  loc_B03F14: Call Proc_351_15_AE8404()
  loc_B03F19: FLdPr Me
  loc_B03F1C: MemLdRfVar from_stack_1.global_60
  loc_B03F1F: LdPrVar
  loc_B03F21: LateMemCall
  loc_B03F27: LitStr vbNullString
  loc_B03F2A: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B03F2F: ExitProcHresult
End Sub

Private Function Proc_351_13_B6E788() 'B6E788
  'Data Table: 447484
  loc_B6E2D8: LitVarStr var_94, "<html>"
  loc_B6E2DD: PopAdLdVar
  loc_B6E2DE: FLdPr Me
  loc_B6E2E1: MemLdRfVar from_stack_1.global_60
  loc_B6E2E4: LdPrVar
  loc_B6E2E6: LateMemCall
  loc_B6E2EC: LitVarStr var_94, "<head>"
  loc_B6E2F1: PopAdLdVar
  loc_B6E2F2: FLdPr Me
  loc_B6E2F5: MemLdRfVar from_stack_1.global_60
  loc_B6E2F8: LdPrVar
  loc_B6E2FA: LateMemCall
  loc_B6E300: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B6E305: PopAdLdVar
  loc_B6E306: FLdPr Me
  loc_B6E309: MemLdRfVar from_stack_1.global_60
  loc_B6E30C: LdPrVar
  loc_B6E30E: LateMemCall
  loc_B6E314: LitStr "<title>"
  loc_B6E317: FLdRfVar var_A8
  loc_B6E31A: FLdPr Me
  loc_B6E31D:  = Me.Caption
  loc_B6E322: ILdRf var_A8
  loc_B6E325: ConcatStr
  loc_B6E326: FStStrNoPop var_AC
  loc_B6E329: LitStr "</title>"
  loc_B6E32C: ConcatStr
  loc_B6E32D: CVarStr var_BC
  loc_B6E330: PopAdLdVar
  loc_B6E331: FLdPr Me
  loc_B6E334: MemLdRfVar from_stack_1.global_60
  loc_B6E337: LdPrVar
  loc_B6E339: LateMemCall
  loc_B6E33F: FFreeStr var_A8 = ""
  loc_B6E346: FFree1Var var_BC = ""
  loc_B6E349: LitVarStr var_94, "<style type=""text/css"">"
  loc_B6E34E: PopAdLdVar
  loc_B6E34F: FLdPr Me
  loc_B6E352: MemLdRfVar from_stack_1.global_60
  loc_B6E355: LdPrVar
  loc_B6E357: LateMemCall
  loc_B6E35D: LitVarStr var_94, ".Titulo1 {"
  loc_B6E362: PopAdLdVar
  loc_B6E363: FLdPr Me
  loc_B6E366: MemLdRfVar from_stack_1.global_60
  loc_B6E369: LdPrVar
  loc_B6E36B: LateMemCall
  loc_B6E371: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B6E376: PopAdLdVar
  loc_B6E377: FLdPr Me
  loc_B6E37A: MemLdRfVar from_stack_1.global_60
  loc_B6E37D: LdPrVar
  loc_B6E37F: LateMemCall
  loc_B6E385: LitVarStr var_94, " font-size: 14px;"
  loc_B6E38A: PopAdLdVar
  loc_B6E38B: FLdPr Me
  loc_B6E38E: MemLdRfVar from_stack_1.global_60
  loc_B6E391: LdPrVar
  loc_B6E393: LateMemCall
  loc_B6E399: LitVarStr var_94, " font-weight: bold;"
  loc_B6E39E: PopAdLdVar
  loc_B6E39F: FLdPr Me
  loc_B6E3A2: MemLdRfVar from_stack_1.global_60
  loc_B6E3A5: LdPrVar
  loc_B6E3A7: LateMemCall
  loc_B6E3AD: LitVarStr var_94, "}"
  loc_B6E3B2: PopAdLdVar
  loc_B6E3B3: FLdPr Me
  loc_B6E3B6: MemLdRfVar from_stack_1.global_60
  loc_B6E3B9: LdPrVar
  loc_B6E3BB: LateMemCall
  loc_B6E3C1: LitVarStr var_94, ".Titulo2 {"
  loc_B6E3C6: PopAdLdVar
  loc_B6E3C7: FLdPr Me
  loc_B6E3CA: MemLdRfVar from_stack_1.global_60
  loc_B6E3CD: LdPrVar
  loc_B6E3CF: LateMemCall
  loc_B6E3D5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B6E3DA: PopAdLdVar
  loc_B6E3DB: FLdPr Me
  loc_B6E3DE: MemLdRfVar from_stack_1.global_60
  loc_B6E3E1: LdPrVar
  loc_B6E3E3: LateMemCall
  loc_B6E3E9: LitVarStr var_94, " font-size: 12px;"
  loc_B6E3EE: PopAdLdVar
  loc_B6E3EF: FLdPr Me
  loc_B6E3F2: MemLdRfVar from_stack_1.global_60
  loc_B6E3F5: LdPrVar
  loc_B6E3F7: LateMemCall
  loc_B6E3FD: LitVarStr var_94, " font-weight: bold;"
  loc_B6E402: PopAdLdVar
  loc_B6E403: FLdPr Me
  loc_B6E406: MemLdRfVar from_stack_1.global_60
  loc_B6E409: LdPrVar
  loc_B6E40B: LateMemCall
  loc_B6E411: LitVarStr var_94, "}"
  loc_B6E416: PopAdLdVar
  loc_B6E417: FLdPr Me
  loc_B6E41A: MemLdRfVar from_stack_1.global_60
  loc_B6E41D: LdPrVar
  loc_B6E41F: LateMemCall
  loc_B6E425: LitVarStr var_94, ".Encabezado {"
  loc_B6E42A: PopAdLdVar
  loc_B6E42B: FLdPr Me
  loc_B6E42E: MemLdRfVar from_stack_1.global_60
  loc_B6E431: LdPrVar
  loc_B6E433: LateMemCall
  loc_B6E439: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B6E43E: PopAdLdVar
  loc_B6E43F: FLdPr Me
  loc_B6E442: MemLdRfVar from_stack_1.global_60
  loc_B6E445: LdPrVar
  loc_B6E447: LateMemCall
  loc_B6E44D: LitVarStr var_94, " font-size: 10px;"
  loc_B6E452: PopAdLdVar
  loc_B6E453: FLdPr Me
  loc_B6E456: MemLdRfVar from_stack_1.global_60
  loc_B6E459: LdPrVar
  loc_B6E45B: LateMemCall
  loc_B6E461: LitVarStr var_94, " font-weight: bold;"
  loc_B6E466: PopAdLdVar
  loc_B6E467: FLdPr Me
  loc_B6E46A: MemLdRfVar from_stack_1.global_60
  loc_B6E46D: LdPrVar
  loc_B6E46F: LateMemCall
  loc_B6E475: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B6E47A: PopAdLdVar
  loc_B6E47B: FLdPr Me
  loc_B6E47E: MemLdRfVar from_stack_1.global_60
  loc_B6E481: LdPrVar
  loc_B6E483: LateMemCall
  loc_B6E489: LitVarStr var_94, "}"
  loc_B6E48E: PopAdLdVar
  loc_B6E48F: FLdPr Me
  loc_B6E492: MemLdRfVar from_stack_1.global_60
  loc_B6E495: LdPrVar
  loc_B6E497: LateMemCall
  loc_B6E49D: LitVarStr var_94, ".LineaDato {"
  loc_B6E4A2: PopAdLdVar
  loc_B6E4A3: FLdPr Me
  loc_B6E4A6: MemLdRfVar from_stack_1.global_60
  loc_B6E4A9: LdPrVar
  loc_B6E4AB: LateMemCall
  loc_B6E4B1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B6E4B6: PopAdLdVar
  loc_B6E4B7: FLdPr Me
  loc_B6E4BA: MemLdRfVar from_stack_1.global_60
  loc_B6E4BD: LdPrVar
  loc_B6E4BF: LateMemCall
  loc_B6E4C5: LitVarStr var_94, " font-size: 11px;"
  loc_B6E4CA: PopAdLdVar
  loc_B6E4CB: FLdPr Me
  loc_B6E4CE: MemLdRfVar from_stack_1.global_60
  loc_B6E4D1: LdPrVar
  loc_B6E4D3: LateMemCall
  loc_B6E4D9: LitVarStr var_94, "}"
  loc_B6E4DE: PopAdLdVar
  loc_B6E4DF: FLdPr Me
  loc_B6E4E2: MemLdRfVar from_stack_1.global_60
  loc_B6E4E5: LdPrVar
  loc_B6E4E7: LateMemCall
  loc_B6E4ED: LitVarStr var_94, ".Totales {"
  loc_B6E4F2: PopAdLdVar
  loc_B6E4F3: FLdPr Me
  loc_B6E4F6: MemLdRfVar from_stack_1.global_60
  loc_B6E4F9: LdPrVar
  loc_B6E4FB: LateMemCall
  loc_B6E501: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B6E506: PopAdLdVar
  loc_B6E507: FLdPr Me
  loc_B6E50A: MemLdRfVar from_stack_1.global_60
  loc_B6E50D: LdPrVar
  loc_B6E50F: LateMemCall
  loc_B6E515: LitVarStr var_94, " font-size: 13px;"
  loc_B6E51A: PopAdLdVar
  loc_B6E51B: FLdPr Me
  loc_B6E51E: MemLdRfVar from_stack_1.global_60
  loc_B6E521: LdPrVar
  loc_B6E523: LateMemCall
  loc_B6E529: LitVarStr var_94, " font-weight: bold;"
  loc_B6E52E: PopAdLdVar
  loc_B6E52F: FLdPr Me
  loc_B6E532: MemLdRfVar from_stack_1.global_60
  loc_B6E535: LdPrVar
  loc_B6E537: LateMemCall
  loc_B6E53D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B6E542: PopAdLdVar
  loc_B6E543: FLdPr Me
  loc_B6E546: MemLdRfVar from_stack_1.global_60
  loc_B6E549: LdPrVar
  loc_B6E54B: LateMemCall
  loc_B6E551: LitVarStr var_94, "}"
  loc_B6E556: PopAdLdVar
  loc_B6E557: FLdPr Me
  loc_B6E55A: MemLdRfVar from_stack_1.global_60
  loc_B6E55D: LdPrVar
  loc_B6E55F: LateMemCall
  loc_B6E565: LitVarStr var_94, ".DatosEncabezado {"
  loc_B6E56A: PopAdLdVar
  loc_B6E56B: FLdPr Me
  loc_B6E56E: MemLdRfVar from_stack_1.global_60
  loc_B6E571: LdPrVar
  loc_B6E573: LateMemCall
  loc_B6E579: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B6E57E: PopAdLdVar
  loc_B6E57F: FLdPr Me
  loc_B6E582: MemLdRfVar from_stack_1.global_60
  loc_B6E585: LdPrVar
  loc_B6E587: LateMemCall
  loc_B6E58D: LitVarStr var_94, " font-size: 12px;"
  loc_B6E592: PopAdLdVar
  loc_B6E593: FLdPr Me
  loc_B6E596: MemLdRfVar from_stack_1.global_60
  loc_B6E599: LdPrVar
  loc_B6E59B: LateMemCall
  loc_B6E5A1: LitVarStr var_94, "}"
  loc_B6E5A6: PopAdLdVar
  loc_B6E5A7: FLdPr Me
  loc_B6E5AA: MemLdRfVar from_stack_1.global_60
  loc_B6E5AD: LdPrVar
  loc_B6E5AF: LateMemCall
  loc_B6E5B5: LitVarStr var_94, ".EncabezadoTotales {"
  loc_B6E5BA: PopAdLdVar
  loc_B6E5BB: FLdPr Me
  loc_B6E5BE: MemLdRfVar from_stack_1.global_60
  loc_B6E5C1: LdPrVar
  loc_B6E5C3: LateMemCall
  loc_B6E5C9: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B6E5CE: PopAdLdVar
  loc_B6E5CF: FLdPr Me
  loc_B6E5D2: MemLdRfVar from_stack_1.global_60
  loc_B6E5D5: LdPrVar
  loc_B6E5D7: LateMemCall
  loc_B6E5DD: LitVarStr var_94, " font-size: 14px;"
  loc_B6E5E2: PopAdLdVar
  loc_B6E5E3: FLdPr Me
  loc_B6E5E6: MemLdRfVar from_stack_1.global_60
  loc_B6E5E9: LdPrVar
  loc_B6E5EB: LateMemCall
  loc_B6E5F1: LitVarStr var_94, " font-weight: bold;"
  loc_B6E5F6: PopAdLdVar
  loc_B6E5F7: FLdPr Me
  loc_B6E5FA: MemLdRfVar from_stack_1.global_60
  loc_B6E5FD: LdPrVar
  loc_B6E5FF: LateMemCall
  loc_B6E605: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B6E60A: PopAdLdVar
  loc_B6E60B: FLdPr Me
  loc_B6E60E: MemLdRfVar from_stack_1.global_60
  loc_B6E611: LdPrVar
  loc_B6E613: LateMemCall
  loc_B6E619: LitVarStr var_94, "}"
  loc_B6E61E: PopAdLdVar
  loc_B6E61F: FLdPr Me
  loc_B6E622: MemLdRfVar from_stack_1.global_60
  loc_B6E625: LdPrVar
  loc_B6E627: LateMemCall
  loc_B6E62D: LitVarStr var_94, ".Total {"
  loc_B6E632: PopAdLdVar
  loc_B6E633: FLdPr Me
  loc_B6E636: MemLdRfVar from_stack_1.global_60
  loc_B6E639: LdPrVar
  loc_B6E63B: LateMemCall
  loc_B6E641: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B6E646: PopAdLdVar
  loc_B6E647: FLdPr Me
  loc_B6E64A: MemLdRfVar from_stack_1.global_60
  loc_B6E64D: LdPrVar
  loc_B6E64F: LateMemCall
  loc_B6E655: LitVarStr var_94, " font-size: 13px;"
  loc_B6E65A: PopAdLdVar
  loc_B6E65B: FLdPr Me
  loc_B6E65E: MemLdRfVar from_stack_1.global_60
  loc_B6E661: LdPrVar
  loc_B6E663: LateMemCall
  loc_B6E669: LitVarStr var_94, " font-weight: bold;"
  loc_B6E66E: PopAdLdVar
  loc_B6E66F: FLdPr Me
  loc_B6E672: MemLdRfVar from_stack_1.global_60
  loc_B6E675: LdPrVar
  loc_B6E677: LateMemCall
  loc_B6E67D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B6E682: PopAdLdVar
  loc_B6E683: FLdPr Me
  loc_B6E686: MemLdRfVar from_stack_1.global_60
  loc_B6E689: LdPrVar
  loc_B6E68B: LateMemCall
  loc_B6E691: LitVarStr var_94, " border: thin solid #000000;"
  loc_B6E696: PopAdLdVar
  loc_B6E697: FLdPr Me
  loc_B6E69A: MemLdRfVar from_stack_1.global_60
  loc_B6E69D: LdPrVar
  loc_B6E69F: LateMemCall
  loc_B6E6A5: LitVarStr var_94, "}"
  loc_B6E6AA: PopAdLdVar
  loc_B6E6AB: FLdPr Me
  loc_B6E6AE: MemLdRfVar from_stack_1.global_60
  loc_B6E6B1: LdPrVar
  loc_B6E6B3: LateMemCall
  loc_B6E6B9: LitVarStr var_94, ".SubTotal {"
  loc_B6E6BE: PopAdLdVar
  loc_B6E6BF: FLdPr Me
  loc_B6E6C2: MemLdRfVar from_stack_1.global_60
  loc_B6E6C5: LdPrVar
  loc_B6E6C7: LateMemCall
  loc_B6E6CD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B6E6D2: PopAdLdVar
  loc_B6E6D3: FLdPr Me
  loc_B6E6D6: MemLdRfVar from_stack_1.global_60
  loc_B6E6D9: LdPrVar
  loc_B6E6DB: LateMemCall
  loc_B6E6E1: LitVarStr var_94, " font-size: 11px;"
  loc_B6E6E6: PopAdLdVar
  loc_B6E6E7: FLdPr Me
  loc_B6E6EA: MemLdRfVar from_stack_1.global_60
  loc_B6E6ED: LdPrVar
  loc_B6E6EF: LateMemCall
  loc_B6E6F5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B6E6FA: PopAdLdVar
  loc_B6E6FB: FLdPr Me
  loc_B6E6FE: MemLdRfVar from_stack_1.global_60
  loc_B6E701: LdPrVar
  loc_B6E703: LateMemCall
  loc_B6E709: LitVarStr var_94, "}"
  loc_B6E70E: PopAdLdVar
  loc_B6E70F: FLdPr Me
  loc_B6E712: MemLdRfVar from_stack_1.global_60
  loc_B6E715: LdPrVar
  loc_B6E717: LateMemCall
  loc_B6E71D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_B6E722: PopAdLdVar
  loc_B6E723: FLdPr Me
  loc_B6E726: MemLdRfVar from_stack_1.global_60
  loc_B6E729: LdPrVar
  loc_B6E72B: LateMemCall
  loc_B6E731: LitVarStr var_94, "TFOOT { display: table-footer-group; }"
  loc_B6E736: PopAdLdVar
  loc_B6E737: FLdPr Me
  loc_B6E73A: MemLdRfVar from_stack_1.global_60
  loc_B6E73D: LdPrVar
  loc_B6E73F: LateMemCall
  loc_B6E745: LitVarStr var_94, "</style>"
  loc_B6E74A: PopAdLdVar
  loc_B6E74B: FLdPr Me
  loc_B6E74E: MemLdRfVar from_stack_1.global_60
  loc_B6E751: LdPrVar
  loc_B6E753: LateMemCall
  loc_B6E759: LitI4 0
  loc_B6E75E: FStStrCopy var_AC
  loc_B6E761: FLdRfVar var_AC
  loc_B6E764: LitI4 0
  loc_B6E769: FStStrCopy var_A8
  loc_B6E76C: FLdRfVar var_A8
  loc_B6E76F: LitI2_Byte 0
  loc_B6E771: PopTmpLdAd2 var_BE
  loc_B6E774: FLdPr Me
  loc_B6E777: MemLdRfVar from_stack_1.global_60
  loc_B6E77A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B6E77F: FFreeStr var_A8 = ""
  loc_B6E786: ExitProcHresult
End Function

Private Function Proc_351_14_B80C2C() 'B80C2C
  'Data Table: 447484
  loc_B80744: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_B80749: PopAdLdVar
  loc_B8074A: FLdPr Me
  loc_B8074D: MemLdRfVar from_stack_1.global_60
  loc_B80750: LdPrVar
  loc_B80752: LateMemCall
  loc_B80758: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_B8075D: PopAdLdVar
  loc_B8075E: FLdPr Me
  loc_B80761: MemLdRfVar from_stack_1.global_60
  loc_B80764: LdPrVar
  loc_B80766: LateMemCall
  loc_B8076C: LitStr "    <th align=""center"" valign=""middle"" class=""Titulo1""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B8076F: LitI2_Byte &H5F
  loc_B80771: CStrUI1
  loc_B80773: FStStrNoPop var_A8
  loc_B80776: ConcatStr
  loc_B80777: FStStrNoPop var_AC
  loc_B8077A: LitStr """ height="""
  loc_B8077D: ConcatStr
  loc_B8077E: FStStrNoPop var_B0
  loc_B80781: LitI2_Byte &H3C
  loc_B80783: CStrUI1
  loc_B80785: FStStrNoPop var_B4
  loc_B80788: ConcatStr
  loc_B80789: FStStrNoPop var_B8
  loc_B8078C: LitStr """ align=""left"" valign=""middle""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_B8078F: ConcatStr
  loc_B80790: FStStrNoPop var_BC
  loc_B80793: LitI2_Byte &H3C
  loc_B80795: CStrUI1
  loc_B80797: FStStrNoPop var_C0
  loc_B8079A: ConcatStr
  loc_B8079B: FStStrNoPop var_C4
  loc_B8079E: LitStr """ height=""51"" align=""right"" valign=""middle"">"
  loc_B807A1: ConcatStr
  loc_B807A2: CVarStr var_D4
  loc_B807A5: PopAdLdVar
  loc_B807A6: FLdPr Me
  loc_B807A9: MemLdRfVar from_stack_1.global_60
  loc_B807AC: LdPrVar
  loc_B807AE: LateMemCall
  loc_B807B4: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B807C7: FFree1Var var_D4 = ""
  loc_B807CA: LitVarStr var_A4, "        "
  loc_B807CF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B807D4: FStVarCopyObj var_D4
  loc_B807D7: FLdRfVar var_D4
  loc_B807DA: FLdRfVar var_E4
  loc_B807DD: ImpAdCallFPR4  = Ucase()
  loc_B807E2: FLdRfVar var_E4
  loc_B807E5: ConcatVar var_F4
  loc_B807E9: LitVarStr var_104, "<br>"
  loc_B807EE: ConcatVar var_114
  loc_B807F2: LitVarStr var_124, "Dirección de Rentas"
  loc_B807F7: ConcatVar var_134
  loc_B807FB: LitVarStr var_144, "<br>"
  loc_B80800: ConcatVar var_154
  loc_B80804: FLdRfVar var_A8
  loc_B80807: FLdPr Me
  loc_B8080A:  = Me.Caption
  loc_B8080F: FLdZeroAd var_A8
  loc_B80812: CVarStr var_164
  loc_B80815: ConcatVar var_174
  loc_B80819: LitVarStr var_184, "</th>"
  loc_B8081E: ConcatVar var_194
  loc_B80822: PopAdLdVar
  loc_B80823: FLdPr Me
  loc_B80826: MemLdRfVar from_stack_1.global_60
  loc_B80829: LdPrVar
  loc_B8082B: LateMemCall
  loc_B80831: FFreeVar var_D4 = "": var_E4 = "": var_F4 = "": var_114 = "": var_134 = "": var_154 = "": var_164 = "": var_174 = ""
  loc_B80846: LitVarStr var_94, "  </tr>"
  loc_B8084B: PopAdLdVar
  loc_B8084C: FLdPr Me
  loc_B8084F: MemLdRfVar from_stack_1.global_60
  loc_B80852: LdPrVar
  loc_B80854: LateMemCall
  loc_B8085A: LitVarStr var_94, "  <tr>"
  loc_B8085F: PopAdLdVar
  loc_B80860: FLdPr Me
  loc_B80863: MemLdRfVar from_stack_1.global_60
  loc_B80866: LdPrVar
  loc_B80868: LateMemCall
  loc_B8086E: LitVarStr var_94, "    <th><br><hr></th>"
  loc_B80873: PopAdLdVar
  loc_B80874: FLdPr Me
  loc_B80877: MemLdRfVar from_stack_1.global_60
  loc_B8087A: LdPrVar
  loc_B8087C: LateMemCall
  loc_B80882: LitVarStr var_94, "  </tr>"
  loc_B80887: PopAdLdVar
  loc_B80888: FLdPr Me
  loc_B8088B: MemLdRfVar from_stack_1.global_60
  loc_B8088E: LdPrVar
  loc_B80890: LateMemCall
  loc_B80896: LitI4 1
  loc_B8089B: FLdPr Me
  loc_B8089E: MemLdStr global_76
  loc_B808A1: AryLock
  loc_B808A4: Ary1LdRf
  loc_B808A5: FStR4 var_1AC
  loc_B808A8: LitVarStr var_94, "  <tr valign=""top"" class=""Titulo2"">"
  loc_B808AD: PopAdLdVar
  loc_B808AE: FLdPr Me
  loc_B808B1: MemLdRfVar from_stack_1.global_60
  loc_B808B4: LdPrVar
  loc_B808B6: LateMemCall
  loc_B808BC: LitI2_Byte 0
  loc_B808BE: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B808C3: FStFPR8 var_1B4
  loc_B808C6: LitStr "    <th align=""right"" valign=""top"">"
  loc_B808C9: LitStr "Guaymallén"
  loc_B808CC: ConcatStr
  loc_B808CD: FStStrNoPop var_A8
  loc_B808D0: LitStr ", "
  loc_B808D3: ConcatStr
  loc_B808D4: FStStrNoPop var_AC
  loc_B808D7: LitStr "Mendoza"
  loc_B808DA: ConcatStr
  loc_B808DB: FStStrNoPop var_B0
  loc_B808DE: LitStr ", "
  loc_B808E1: ConcatStr
  loc_B808E2: FStStrNoPop var_B4
  loc_B808E5: LitI4 1
  loc_B808EA: LitI4 1
  loc_B808EF: LitVarStr var_A4, "dddd d \de mmmm \de yyyy"
  loc_B808F4: FStVarCopyObj var_E4
  loc_B808F7: FLdRfVar var_E4
  loc_B808FA: FLdFPR8 var_1B4
  loc_B808FD: CVarDate var_D4
  loc_B80901: ImpAdCallI2 Format$(, )
  loc_B80906: FStStrNoPop var_B8
  loc_B80909: ConcatStr
  loc_B8090A: FStStrNoPop var_BC
  loc_B8090D: LitStr "</th>"
  loc_B80910: ConcatStr
  loc_B80911: CVarStr var_F4
  loc_B80914: PopAdLdVar
  loc_B80915: FLdPr Me
  loc_B80918: MemLdRfVar from_stack_1.global_60
  loc_B8091B: LdPrVar
  loc_B8091D: LateMemCall
  loc_B80923: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_B80932: FFreeVar var_D4 = "": var_E4 = ""
  loc_B8093B: LitVarStr var_94, "  </tr>"
  loc_B80940: PopAdLdVar
  loc_B80941: FLdPr Me
  loc_B80944: MemLdRfVar from_stack_1.global_60
  loc_B80947: LdPrVar
  loc_B80949: LateMemCall
  loc_B8094F: LitVarStr var_94, "  <tr valign=""top"" class=""Titulo2"">"
  loc_B80954: PopAdLdVar
  loc_B80955: FLdPr Me
  loc_B80958: MemLdRfVar from_stack_1.global_60
  loc_B8095B: LdPrVar
  loc_B8095D: LateMemCall
  loc_B80963: LitVarStr var_94, "    <th><br></th>"
  loc_B80968: PopAdLdVar
  loc_B80969: FLdPr Me
  loc_B8096C: MemLdRfVar from_stack_1.global_60
  loc_B8096F: LdPrVar
  loc_B80971: LateMemCall
  loc_B80977: LitVarStr var_94, "  </tr>"
  loc_B8097C: PopAdLdVar
  loc_B8097D: FLdPr Me
  loc_B80980: MemLdRfVar from_stack_1.global_60
  loc_B80983: LdPrVar
  loc_B80985: LateMemCall
  loc_B8098B: LitVarStr var_94, "  <tr valign=""top"" class=""Titulo2"">"
  loc_B80990: PopAdLdVar
  loc_B80991: FLdPr Me
  loc_B80994: MemLdRfVar from_stack_1.global_60
  loc_B80997: LdPrVar
  loc_B80999: LateMemCall
  loc_B8099F: LitVarStr var_94, "    <th align=""left"" valign=""top""><table width=""80" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B809A4: PopAdLdVar
  loc_B809A5: FLdPr Me
  loc_B809A8: MemLdRfVar from_stack_1.global_60
  loc_B809AB: LdPrVar
  loc_B809AD: LateMemCall
  loc_B809B3: LitVarStr var_94, "      <tr valign=""top"">"
  loc_B809B8: PopAdLdVar
  loc_B809B9: FLdPr Me
  loc_B809BC: MemLdRfVar from_stack_1.global_60
  loc_B809BF: LdPrVar
  loc_B809C1: LateMemCall
  loc_B809C7: LitVarStr var_94, "        <td width=""30" & Chr(37) & """ align=""right"" class=""Titulo2"">CUIT/CUIL:</td>"
  loc_B809CC: PopAdLdVar
  loc_B809CD: FLdPr Me
  loc_B809D0: MemLdRfVar from_stack_1.global_60
  loc_B809D3: LdPrVar
  loc_B809D5: LateMemCall
  loc_B809DB: LitStr "        <td class=""DatosEncabezado"">"
  loc_B809DE: FMemLdR4 var_1AC(0)
  loc_B809E3: ConcatStr
  loc_B809E4: FStStrNoPop var_A8
  loc_B809E7: LitStr "</td>"
  loc_B809EA: ConcatStr
  loc_B809EB: CVarStr var_D4
  loc_B809EE: PopAdLdVar
  loc_B809EF: FLdPr Me
  loc_B809F2: MemLdRfVar from_stack_1.global_60
  loc_B809F5: LdPrVar
  loc_B809F7: LateMemCall
  loc_B809FD: FFree1Str var_A8
  loc_B80A00: FFree1Var var_D4 = ""
  loc_B80A03: LitVarStr var_94, "      </tr>"
  loc_B80A08: PopAdLdVar
  loc_B80A09: FLdPr Me
  loc_B80A0C: MemLdRfVar from_stack_1.global_60
  loc_B80A0F: LdPrVar
  loc_B80A11: LateMemCall
  loc_B80A17: LitVarStr var_94, "      <tr valign=""top"">"
  loc_B80A1C: PopAdLdVar
  loc_B80A1D: FLdPr Me
  loc_B80A20: MemLdRfVar from_stack_1.global_60
  loc_B80A23: LdPrVar
  loc_B80A25: LateMemCall
  loc_B80A2B: LitVarStr var_94, "        <td align=""right"" class=""Titulo2"">Apellido y nombre:</td>"
  loc_B80A30: PopAdLdVar
  loc_B80A31: FLdPr Me
  loc_B80A34: MemLdRfVar from_stack_1.global_60
  loc_B80A37: LdPrVar
  loc_B80A39: LateMemCall
  loc_B80A3F: LitStr "        <td class=""DatosEncabezado"">"
  loc_B80A42: FMemLdR4 var_1AC(4)
  loc_B80A47: ConcatStr
  loc_B80A48: FStStrNoPop var_A8
  loc_B80A4B: LitStr "</td>"
  loc_B80A4E: ConcatStr
  loc_B80A4F: CVarStr var_D4
  loc_B80A52: PopAdLdVar
  loc_B80A53: FLdPr Me
  loc_B80A56: MemLdRfVar from_stack_1.global_60
  loc_B80A59: LdPrVar
  loc_B80A5B: LateMemCall
  loc_B80A61: FFree1Str var_A8
  loc_B80A64: FFree1Var var_D4 = ""
  loc_B80A67: LitVarStr var_94, "      </tr>"
  loc_B80A6C: PopAdLdVar
  loc_B80A6D: FLdPr Me
  loc_B80A70: MemLdRfVar from_stack_1.global_60
  loc_B80A73: LdPrVar
  loc_B80A75: LateMemCall
  loc_B80A7B: LitVarStr var_94, "      <tr valign=""top"">"
  loc_B80A80: PopAdLdVar
  loc_B80A81: FLdPr Me
  loc_B80A84: MemLdRfVar from_stack_1.global_60
  loc_B80A87: LdPrVar
  loc_B80A89: LateMemCall
  loc_B80A8F: LitVarStr var_94, "        <td align=""right"" class=""Titulo2"">Domicilio:</td>"
  loc_B80A94: PopAdLdVar
  loc_B80A95: FLdPr Me
  loc_B80A98: MemLdRfVar from_stack_1.global_60
  loc_B80A9B: LdPrVar
  loc_B80A9D: LateMemCall
  loc_B80AA3: LitStr "        <td class=""DatosEncabezado"">"
  loc_B80AA6: FMemLdR4 var_1AC(8)
  loc_B80AAB: ConcatStr
  loc_B80AAC: FStStrNoPop var_A8
  loc_B80AAF: LitStr "</td>"
  loc_B80AB2: ConcatStr
  loc_B80AB3: CVarStr var_D4
  loc_B80AB6: PopAdLdVar
  loc_B80AB7: FLdPr Me
  loc_B80ABA: MemLdRfVar from_stack_1.global_60
  loc_B80ABD: LdPrVar
  loc_B80ABF: LateMemCall
  loc_B80AC5: FFree1Str var_A8
  loc_B80AC8: FFree1Var var_D4 = ""
  loc_B80ACB: LitVarStr var_94, "      </tr>"
  loc_B80AD0: PopAdLdVar
  loc_B80AD1: FLdPr Me
  loc_B80AD4: MemLdRfVar from_stack_1.global_60
  loc_B80AD7: LdPrVar
  loc_B80AD9: LateMemCall
  loc_B80ADF: LitVarStr var_94, "    </table></th>"
  loc_B80AE4: PopAdLdVar
  loc_B80AE5: FLdPr Me
  loc_B80AE8: MemLdRfVar from_stack_1.global_60
  loc_B80AEB: LdPrVar
  loc_B80AED: LateMemCall
  loc_B80AF3: LitVarStr var_94, "  </tr>"
  loc_B80AF8: PopAdLdVar
  loc_B80AF9: FLdPr Me
  loc_B80AFC: MemLdRfVar from_stack_1.global_60
  loc_B80AFF: LdPrVar
  loc_B80B01: LateMemCall
  loc_B80B07: LitVarStr var_94, "</table>"
  loc_B80B0C: PopAdLdVar
  loc_B80B0D: FLdPr Me
  loc_B80B10: MemLdRfVar from_stack_1.global_60
  loc_B80B13: LdPrVar
  loc_B80B15: LateMemCall
  loc_B80B1B: LitVarStr var_94, "<br>"
  loc_B80B20: PopAdLdVar
  loc_B80B21: FLdPr Me
  loc_B80B24: MemLdRfVar from_stack_1.global_60
  loc_B80B27: LdPrVar
  loc_B80B29: LateMemCall
  loc_B80B2F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B80B34: PopAdLdVar
  loc_B80B35: FLdPr Me
  loc_B80B38: MemLdRfVar from_stack_1.global_60
  loc_B80B3B: LdPrVar
  loc_B80B3D: LateMemCall
  loc_B80B43: LitVarStr var_94, " <THEAD>"
  loc_B80B48: PopAdLdVar
  loc_B80B49: FLdPr Me
  loc_B80B4C: MemLdRfVar from_stack_1.global_60
  loc_B80B4F: LdPrVar
  loc_B80B51: LateMemCall
  loc_B80B57: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_B80B5C: PopAdLdVar
  loc_B80B5D: FLdPr Me
  loc_B80B60: MemLdRfVar from_stack_1.global_60
  loc_B80B63: LdPrVar
  loc_B80B65: LateMemCall
  loc_B80B6B: LitVarStr var_94, "     <th>Oficina</th>"
  loc_B80B70: PopAdLdVar
  loc_B80B71: FLdPr Me
  loc_B80B74: MemLdRfVar from_stack_1.global_60
  loc_B80B77: LdPrVar
  loc_B80B79: LateMemCall
  loc_B80B7F: LitVarStr var_94, "     <th>Cuenta</th>"
  loc_B80B84: PopAdLdVar
  loc_B80B85: FLdPr Me
  loc_B80B88: MemLdRfVar from_stack_1.global_60
  loc_B80B8B: LdPrVar
  loc_B80B8D: LateMemCall
  loc_B80B93: LitVarStr var_94, "     <th>Relación</th>"
  loc_B80B98: PopAdLdVar
  loc_B80B99: FLdPr Me
  loc_B80B9C: MemLdRfVar from_stack_1.global_60
  loc_B80B9F: LdPrVar
  loc_B80BA1: LateMemCall
  loc_B80BA7: LitVarStr var_94, "     <th>Derecho</th>"
  loc_B80BAC: PopAdLdVar
  loc_B80BAD: FLdPr Me
  loc_B80BB0: MemLdRfVar from_stack_1.global_60
  loc_B80BB3: LdPrVar
  loc_B80BB5: LateMemCall
  loc_B80BBB: LitVarStr var_94, "     <th>Apremio</th>"
  loc_B80BC0: PopAdLdVar
  loc_B80BC1: FLdPr Me
  loc_B80BC4: MemLdRfVar from_stack_1.global_60
  loc_B80BC7: LdPrVar
  loc_B80BC9: LateMemCall
  loc_B80BCF: LitVarStr var_94, "     <th>Recargo</th>"
  loc_B80BD4: PopAdLdVar
  loc_B80BD5: FLdPr Me
  loc_B80BD8: MemLdRfVar from_stack_1.global_60
  loc_B80BDB: LdPrVar
  loc_B80BDD: LateMemCall
  loc_B80BE3: LitVarStr var_94, "     <th>Saldo</th>"
  loc_B80BE8: PopAdLdVar
  loc_B80BE9: FLdPr Me
  loc_B80BEC: MemLdRfVar from_stack_1.global_60
  loc_B80BEF: LdPrVar
  loc_B80BF1: LateMemCall
  loc_B80BF7: LitVarStr var_94, "  </tr>"
  loc_B80BFC: PopAdLdVar
  loc_B80BFD: FLdPr Me
  loc_B80C00: MemLdRfVar from_stack_1.global_60
  loc_B80C03: LdPrVar
  loc_B80C05: LateMemCall
  loc_B80C0B: LitVarStr var_94, " </THEAD>"
  loc_B80C10: PopAdLdVar
  loc_B80C11: FLdPr Me
  loc_B80C14: MemLdRfVar from_stack_1.global_60
  loc_B80C17: LdPrVar
  loc_B80C19: LateMemCall
  loc_B80C1F: LitI4 0
  loc_B80C24: FStR4 var_1AC
  loc_B80C27: AryUnlock
  loc_B80C2A: ExitProcHresult
End Function

Private Function Proc_351_15_AE8404() 'AE8404
  'Data Table: 447484
  loc_AE827C: LitI4 1
  loc_AE8281: FLdPr Me
  loc_AE8284: MemLdStr global_76
  loc_AE8287: Ary1LdPr
  loc_AE8288: MemLdStr global_12
  loc_AE828B: LitI2_Byte 1
  loc_AE828D: FnUBound
  loc_AE828F: LitI4 1
  loc_AE8294: GtI4
  loc_AE8295: BranchF loc_AE83C5
  loc_AE8298: LitI4 1
  loc_AE829D: FLdPr Me
  loc_AE82A0: MemLdStr global_84
  loc_AE82A3: AryLock
  loc_AE82A6: Ary1LdRf
  loc_AE82A7: FStR4 var_8C
  loc_AE82AA: LitVarStr var_9C, " <TFOOT>"
  loc_AE82AF: PopAdLdVar
  loc_AE82B0: FLdPr Me
  loc_AE82B3: MemLdRfVar from_stack_1.global_60
  loc_AE82B6: LdPrVar
  loc_AE82B8: LateMemCall
  loc_AE82BE: LitVarStr var_9C, "  <tr class=""Subtotal"">"
  loc_AE82C3: PopAdLdVar
  loc_AE82C4: FLdPr Me
  loc_AE82C7: MemLdRfVar from_stack_1.global_60
  loc_AE82CA: LdPrVar
  loc_AE82CC: LateMemCall
  loc_AE82D2: LitVarStr var_9C, "     <td colspan=""3"">TOTALES</td>"
  loc_AE82D7: PopAdLdVar
  loc_AE82D8: FLdPr Me
  loc_AE82DB: MemLdRfVar from_stack_1.global_60
  loc_AE82DE: LdPrVar
  loc_AE82E0: LateMemCall
  loc_AE82E6: LitStr vbNullString
  loc_AE82E9: LitI2_Byte 0
  loc_AE82EB: LitI2_Byte 0
  loc_AE82ED: LitI2_Byte 0
  loc_AE82EF: LitStr "right"
  loc_AE82F2: FMemLdR4 var_8C(12)
  loc_AE82F7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE82FC: CVarStr var_BC
  loc_AE82FF: PopAdLdVar
  loc_AE8300: FLdPr Me
  loc_AE8303: MemLdRfVar from_stack_1.global_60
  loc_AE8306: LdPrVar
  loc_AE8308: LateMemCall
  loc_AE830E: FFree1Var var_BC = ""
  loc_AE8311: LitStr vbNullString
  loc_AE8314: LitI2_Byte 0
  loc_AE8316: LitI2_Byte 0
  loc_AE8318: LitI2_Byte 0
  loc_AE831A: LitStr "right"
  loc_AE831D: FMemLdR4 var_8C(16)
  loc_AE8322: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE8327: CVarStr var_BC
  loc_AE832A: PopAdLdVar
  loc_AE832B: FLdPr Me
  loc_AE832E: MemLdRfVar from_stack_1.global_60
  loc_AE8331: LdPrVar
  loc_AE8333: LateMemCall
  loc_AE8339: FFree1Var var_BC = ""
  loc_AE833C: LitStr vbNullString
  loc_AE833F: LitI2_Byte 0
  loc_AE8341: LitI2_Byte 0
  loc_AE8343: LitI2_Byte 0
  loc_AE8345: LitStr "right"
  loc_AE8348: FMemLdR4 var_8C(20)
  loc_AE834D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE8352: CVarStr var_BC
  loc_AE8355: PopAdLdVar
  loc_AE8356: FLdPr Me
  loc_AE8359: MemLdRfVar from_stack_1.global_60
  loc_AE835C: LdPrVar
  loc_AE835E: LateMemCall
  loc_AE8364: FFree1Var var_BC = ""
  loc_AE8367: LitStr "Total"
  loc_AE836A: LitI2_Byte 0
  loc_AE836C: LitI2_Byte 0
  loc_AE836E: LitI2_Byte 0
  loc_AE8370: LitStr "right"
  loc_AE8373: FMemLdR4 var_8C(24)
  loc_AE8378: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AE837D: CVarStr var_BC
  loc_AE8380: PopAdLdVar
  loc_AE8381: FLdPr Me
  loc_AE8384: MemLdRfVar from_stack_1.global_60
  loc_AE8387: LdPrVar
  loc_AE8389: LateMemCall
  loc_AE838F: FFree1Var var_BC = ""
  loc_AE8392: LitVarStr var_9C, "  </tr>"
  loc_AE8397: PopAdLdVar
  loc_AE8398: FLdPr Me
  loc_AE839B: MemLdRfVar from_stack_1.global_60
  loc_AE839E: LdPrVar
  loc_AE83A0: LateMemCall
  loc_AE83A6: LitVarStr var_9C, " </TFOOT>"
  loc_AE83AB: PopAdLdVar
  loc_AE83AC: FLdPr Me
  loc_AE83AF: MemLdRfVar from_stack_1.global_60
  loc_AE83B2: LdPrVar
  loc_AE83B4: LateMemCall
  loc_AE83BA: LitI4 0
  loc_AE83BF: FStR4 var_8C
  loc_AE83C2: AryUnlock
  loc_AE83C5: LitVarStr var_9C, "</table>"
  loc_AE83CA: PopAdLdVar
  loc_AE83CB: FLdPr Me
  loc_AE83CE: MemLdRfVar from_stack_1.global_60
  loc_AE83D1: LdPrVar
  loc_AE83D3: LateMemCall
  loc_AE83D9: LitVarStr var_9C, "</body>"
  loc_AE83DE: PopAdLdVar
  loc_AE83DF: FLdPr Me
  loc_AE83E2: MemLdRfVar from_stack_1.global_60
  loc_AE83E5: LdPrVar
  loc_AE83E7: LateMemCall
  loc_AE83ED: LitVarStr var_9C, "</html>"
  loc_AE83F2: PopAdLdVar
  loc_AE83F3: FLdPr Me
  loc_AE83F6: MemLdRfVar from_stack_1.global_60
  loc_AE83F9: LdPrVar
  loc_AE83FB: LateMemCall
  loc_AE8401: ExitProcHresult
End Function
