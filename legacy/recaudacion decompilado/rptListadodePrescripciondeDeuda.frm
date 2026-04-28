VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodePrescripciondeDeuda
  Caption = "Listado de Prescripción de Deuda"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodePrescripciondeDeuda.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8748
  ClientHeight = 4056
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3804
    Width = 8748
    Height = 252
    TabIndex = 12
    OleObjectBlob = "rptListadodePrescripciondeDeuda.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7080
    Top = 2760
    Width = 855
    Height = 735
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptListadodePrescripciondeDeuda.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodePrescripciondeDeuda.frx":0B9C
    Left = 8040
    Top = 2880
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2520
    Width = 1815
    Height = 1215
    TabIndex = 10
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
      TabIndex = 5
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
    Top = 2520
    Width = 4095
    Height = 1215
    TabIndex = 9
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 2415
    TabIndex = 8
    Begin VB.ComboBox OficinaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1320
      Top = 240
      Width = 2175
      Height = 420
      TabIndex = 17
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataField = "DetaOfic"
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CodiConcCmd
      Left = 2640
      Top = 1440
      Width = 450
      Height = 360
      TabIndex = 2
      Picture = "rptListadodePrescripciondeDeuda.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6840
      Top = 360
      Width = 1575
      Height = 615
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
    End
    Begin MSMask.MaskEdBox PeriCtctMsk
      Left = 1320
      Top = 840
      Width = 735
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptListadodePrescripciondeDeuda.frx":0CFA
    End
    Begin MSMask.MaskEdBox CodiConcMsk
      Left = 1320
      Top = 1440
      Width = 1215
      Height = 360
      TabIndex = 1
      OleObjectBlob = "rptListadodePrescripciondeDeuda.frx":0D8A
    End
    Begin VB.Label Label1
      Caption = "Oficina:"
      Left = 450
      Top = 240
      Width = 795
      Height = 300
      TabIndex = 16
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
    Begin VB.Label Label2
      Caption = "Concepto:"
      Left = 150
      Top = 1440
      Width = 1095
      Height = 300
      TabIndex = 15
      Alignment = 1 'Right Justify
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
    Begin VB.Label DetaConcLbl
      Left = 3240
      Top = 1440
      Width = 5175
      Height = 375
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
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
    Begin VB.Label Label5
      Caption = "Periodo:"
      Left = 375
      Top = 840
      Width = 870
      Height = 300
      TabIndex = 13
      Alignment = 1 'Right Justify
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
    Left = 7320
    Top = 3120
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptListadodePrescripciondeDeuda.frx":0E22
  End
End

Attribute VB_Name = "rptListadodePrescripciondeDeuda"

Public bGenerado As Boolean

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_2_0055D278
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub cmdNueva_Click() 'A87FD4
  'Data Table: 483F30
  loc_A87F38: LitI2_Byte 0
  loc_A87F3A: FLdPr Me
  loc_A87F3D: MemStI2 bGenerado
  loc_A87F40: LitI2_Byte 0
  loc_A87F42: ILdRf Me
  loc_A87F45: CastAd
  loc_A87F48: FStAdFunc var_88
  loc_A87F4B: FLdRfVar var_88
  loc_A87F4E: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A87F53: FFree1Ad var_88
  loc_A87F56: LitVarStr var_98, vbNullString
  loc_A87F5B: PopAdLdVar
  loc_A87F5C: FLdPr Me
  loc_A87F5F: VCallAd Control_ID_PeriCtctMsk
  loc_A87F62: FStAdFunc var_88
  loc_A87F65: FLdPr var_88
  loc_A87F68: LateIdSt
  loc_A87F6D: FFree1Ad var_88
  loc_A87F70: LitVarStr var_98, vbNullString
  loc_A87F75: PopAdLdVar
  loc_A87F76: FLdPr Me
  loc_A87F79: VCallAd Control_ID_CodiConcMsk
  loc_A87F7C: FStAdFunc var_88
  loc_A87F7F: FLdPr var_88
  loc_A87F82: LateIdSt
  loc_A87F87: FFree1Ad var_88
  loc_A87F8A: LitStr vbNullString
  loc_A87F8D: FLdPr Me
  loc_A87F90: VCallAd Control_ID_DetaConcLbl
  loc_A87F93: FStAdFunc var_88
  loc_A87F96: FLdPr var_88
  loc_A87F99: Me.Caption = from_stack_1
  loc_A87F9E: FFree1Ad var_88
  loc_A87FA1: LitI2_Byte 0
  loc_A87FA3: FLdPr Me
  loc_A87FA6: VCallAd Control_ID_OficinaCbo
  loc_A87FA9: FStAdFunc var_88
  loc_A87FAC: FLdPr var_88
  loc_A87FAF: Me.ListIndex = from_stack_1
  loc_A87FB4: FFree1Ad var_88
  loc_A87FB7: Call HabilitarCriterio()
  loc_A87FBC: ILdRf Me
  loc_A87FBF: CastAd
  loc_A87FC2: FStAdFunc var_88
  loc_A87FC5: FLdRfVar var_88
  loc_A87FC8: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A87FCD: FFree1Ad var_88
  loc_A87FD0: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D17F4
  'Data Table: 483F30
  loc_9D17DC: ILdRf Me
  loc_9D17DF: CastAd
  loc_9D17E2: FStAdFunc var_88
  loc_9D17E5: FLdRfVar var_88
  loc_9D17E8: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D17ED: FFree1Ad var_88
  loc_9D17F0: ExitProcHresult
End Sub

Private Sub CodiConcMsk_UnknownEvent_0 '9C0E60
  'Data Table: 483F30
  loc_9C0E4C: FLdPr Me
  loc_9C0E4F: VCallAd Control_ID_CodiConcMsk
  loc_9C0E52: CVarAd
  loc_9C0E56: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0E5B: FFree1Var var_94 = ""
  loc_9C0E5E: ExitProcHresult
End Sub

Private Function CodiConcMsk_UnknownEvent_8(arg_C) 'ACA6A4
  'Data Table: 483F30
  loc_ACA59C: FLdPr Me
  loc_ACA59F: VCallAd Control_ID_PeriCtctMsk
  loc_ACA5A2: FStAdFunc var_88
  loc_ACA5A5: FLdPr var_88
  loc_ACA5A8: LateIdLdVar var_98 DispID_22 0
  loc_ACA5AF: PopAd
  loc_ACA5B1: FLdPr Me
  loc_ACA5B4: VCallAd Control_ID_CodiConcMsk
  loc_ACA5B7: FStAdFunc var_9C
  loc_ACA5BA: FLdPr var_9C
  loc_ACA5BD: LateIdLdVar var_AC DispID_22 0
  loc_ACA5C4: PopAd
  loc_ACA5C6: LitI2_Byte 0
  loc_ACA5C8: LitI2_Byte 0
  loc_ACA5CA: LitI2_Byte 0
  loc_ACA5CC: LitI2_Byte 0
  loc_ACA5CE: LitI2_Byte 0
  loc_ACA5D0: LitI2_Byte 0
  loc_ACA5D2: LitI2_Byte 0
  loc_ACA5D4: LitI2_Byte 0
  loc_ACA5D6: LitI2_Byte 0
  loc_ACA5D8: FLdRfVar var_AC
  loc_ACA5DB: CStrVarTmp
  loc_ACA5DC: FStStrNoPop var_B4
  loc_ACA5DF: FLdRfVar var_98
  loc_ACA5E2: CStrVarTmp
  loc_ACA5E3: FStStrNoPop var_B0
  loc_ACA5E6: CI2Str
  loc_ACA5E8: ImpAdCallI2 Proc_18_26_B7A828(, , , , , , , , , , )
  loc_ACA5ED: FStStrNoPop var_B8
  loc_ACA5F0: FLdPr Me
  loc_ACA5F3: MemStStrCopy
  loc_ACA5F7: FFreeStr var_B0 = "": var_B4 = ""
  loc_ACA600: FFreeAd var_88 = ""
  loc_ACA607: FFreeVar var_98 = ""
  loc_ACA60E: FLdPr Me
  loc_ACA611: VCallAd Control_ID_CodiConcMsk
  loc_ACA614: FStAdFuncNoPop
  loc_ACA617: CastAd
  loc_ACA61A: FStAdFunc var_9C
  loc_ACA61D: FLdRfVar var_9C
  loc_ACA620: FLdPr Me
  loc_ACA623: MemLdStr global_96
  loc_ACA626: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_ACA62B: IStI2 arg_C
  loc_ACA62E: FFreeAd var_88 = ""
  loc_ACA635: ILdI2 arg_C
  loc_ACA638: NotI4
  loc_ACA639: BranchF loc_ACA6A3
  loc_ACA63C: FLdPr Me
  loc_ACA63F: VCallAd Control_ID_PeriCtctMsk
  loc_ACA642: FStAdFunc var_88
  loc_ACA645: FLdPr var_88
  loc_ACA648: LateIdLdVar var_98 DispID_22 0
  loc_ACA64F: PopAd
  loc_ACA651: FLdPr Me
  loc_ACA654: VCallAd Control_ID_CodiConcMsk
  loc_ACA657: FStAdFunc var_9C
  loc_ACA65A: FLdPr var_9C
  loc_ACA65D: LateIdLdVar var_AC DispID_22 0
  loc_ACA664: CStrVarTmp
  loc_ACA665: FStStrNoPop var_B4
  loc_ACA668: FLdRfVar var_98
  loc_ACA66B: CStrVarTmp
  loc_ACA66C: FStStrNoPop var_B0
  loc_ACA66F: CI2Str
  loc_ACA671: ImpAdCallI2 Proc_270_24_A92D50(, )
  loc_ACA676: FStStrNoPop var_B8
  loc_ACA679: FLdPr Me
  loc_ACA67C: VCallAd Control_ID_DetaConcLbl
  loc_ACA67F: FStAdFunc var_BC
  loc_ACA682: FLdPr var_BC
  loc_ACA685: Me.Caption = from_stack_1
  loc_ACA68A: FFreeStr var_B0 = "": var_B4 = ""
  loc_ACA693: FFreeAd var_88 = "": var_9C = ""
  loc_ACA69C: FFreeVar var_98 = ""
  loc_ACA6A3: ExitProcHresult
End Function

Private Sub cmdPredeterminada_Click() '9D1678
  'Data Table: 483F30
  loc_9D1660: LitI2_Byte 0
  loc_9D1662: ILdRf Me
  loc_9D1665: CastAd
  loc_9D1668: FStAdFunc var_88
  loc_9D166B: FLdRfVar var_88
  loc_9D166E: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D1673: FFree1Ad var_88
  loc_9D1676: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1DC80
  'Data Table: 483F30
  loc_A1DC48: FLdPr Me
  loc_A1DC4B: VCallAd Control_ID_statusBar
  loc_A1DC4E: FStAdFunc var_88
  loc_A1DC51: FLdPr var_88
  loc_A1DC54: LateIdLdVar var_98 DispID_1 0
  loc_A1DC5B: CStrVarTmp
  loc_A1DC5C: CVarStr var_A8
  loc_A1DC5F: PopAdLdVar
  loc_A1DC60: FLdPr Me
  loc_A1DC63: VCallAd Control_ID_statusBar
  loc_A1DC66: FStAdFunc var_BC
  loc_A1DC69: FLdPr var_BC
  loc_A1DC6C: LateIdSt
  loc_A1DC71: FFreeAd var_88 = ""
  loc_A1DC78: FFreeVar var_98 = ""
  loc_A1DC7F: ExitProcHresult
End Sub

Private Sub Form_Load() 'A7D3C8
  'Data Table: 483F30
  loc_A7D340: ILdRf Me
  loc_A7D343: CastAd
  loc_A7D346: FStAdFunc var_88
  loc_A7D349: FLdRfVar var_88
  loc_A7D34C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A7D351: FFree1Ad var_88
  loc_A7D354: LitVar_Missing var_98
  loc_A7D357: PopAdLdVar
  loc_A7D358: LitStr "Inmueble"
  loc_A7D35B: FLdPr Me
  loc_A7D35E: VCallAd Control_ID_OficinaCbo
  loc_A7D361: FStAdFunc var_88
  loc_A7D364: FLdPr var_88
  loc_A7D367: Me.AddItem from_stack_1, from_stack_2
  loc_A7D36C: FFree1Ad var_88
  loc_A7D36F: LitVar_Missing var_98
  loc_A7D372: PopAdLdVar
  loc_A7D373: LitStr "Comercio"
  loc_A7D376: FLdPr Me
  loc_A7D379: VCallAd Control_ID_OficinaCbo
  loc_A7D37C: FStAdFunc var_88
  loc_A7D37F: FLdPr var_88
  loc_A7D382: Me.AddItem from_stack_1, from_stack_2
  loc_A7D387: FFree1Ad var_88
  loc_A7D38A: LitVar_Missing var_98
  loc_A7D38D: PopAdLdVar
  loc_A7D38E: LitStr "Deudores Varios con creacion de cuenta"
  loc_A7D391: FLdPr Me
  loc_A7D394: VCallAd Control_ID_OficinaCbo
  loc_A7D397: FStAdFunc var_88
  loc_A7D39A: FLdPr var_88
  loc_A7D39D: Me.AddItem from_stack_1, from_stack_2
  loc_A7D3A2: FFree1Ad var_88
  loc_A7D3A5: LitVar_Missing var_98
  loc_A7D3A8: PopAdLdVar
  loc_A7D3A9: LitStr "Cementerio"
  loc_A7D3AC: FLdPr Me
  loc_A7D3AF: VCallAd Control_ID_OficinaCbo
  loc_A7D3B2: FStAdFunc var_88
  loc_A7D3B5: FLdPr var_88
  loc_A7D3B8: Me.AddItem from_stack_1, from_stack_2
  loc_A7D3BD: FFree1Ad var_88
  loc_A7D3C0: Call cmdNueva_Click()
  loc_A7D3C5: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D15E0
  'Data Table: 483F30
  loc_9D15C8: FLdPr Me
  loc_9D15CB: VCallAd Control_ID_wbbReporte
  loc_9D15CE: FStAdFunc var_88
  loc_9D15D1: FLdRfVar var_88
  loc_9D15D4: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D15D9: FFree1Ad var_88
  loc_9D15DC: ExitProcHresult
  loc_9D15DD: PopAdLdVar
  loc_9D15DE: FLdPr var_47F8
End Sub

Private Sub PeriCtctMsk_UnknownEvent_0 '9C0F38
  'Data Table: 483F30
  loc_9C0F24: FLdPr Me
  loc_9C0F27: VCallAd Control_ID_PeriCtctMsk
  loc_9C0F2A: CVarAd
  loc_9C0F2E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0F33: FFree1Var var_94 = ""
  loc_9C0F36: ExitProcHresult
End Sub

Private Sub PeriCtctMsk_UnknownEvent_8 'A71168
  'Data Table: 483F30
  loc_A71100: FLdPr Me
  loc_A71103: VCallAd Control_ID_PeriCtctMsk
  loc_A71106: FStAdFunc var_88
  loc_A71109: FLdPr var_88
  loc_A7110C: LateIdLdVar var_98 DispID_22 0
  loc_A71113: PopAd
  loc_A71115: LitI2_Byte 0
  loc_A71117: FLdRfVar var_98
  loc_A7111A: CStrVarTmp
  loc_A7111B: FStStrNoPop var_9C
  loc_A7111E: LitStr "periodo"
  loc_A71121: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A71126: FStStrNoPop var_A0
  loc_A71129: FLdPr Me
  loc_A7112C: MemStStrCopy
  loc_A71130: FFreeStr var_9C = ""
  loc_A71137: FFree1Ad var_88
  loc_A7113A: FFree1Var var_98 = ""
  loc_A7113D: FLdPr Me
  loc_A71140: VCallAd Control_ID_PeriCtctMsk
  loc_A71143: FStAdFuncNoPop
  loc_A71146: CastAd
  loc_A71149: FStAdFunc var_A4
  loc_A7114C: FLdRfVar var_A4
  loc_A7114F: FLdPr Me
  loc_A71152: MemLdStr global_96
  loc_A71155: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A7115A: IStI2 Cancel
  loc_A7115D: FFreeAd var_88 = ""
  loc_A71164: ExitProcHresult
End Sub

Private Sub CodiConcCmd_Click() 'AAA8F8
  'Data Table: 483F30
  loc_AAA830: ImpAdLdRf MemVar_D947E0
  loc_AAA833: NewIfNullAd
  loc_AAA836: FStAd var_88 
  loc_AAA83A: FLdPr Me
  loc_AAA83D: VCallAd Control_ID_PeriCtctMsk
  loc_AAA840: FStAdFunc var_8C
  loc_AAA843: FLdPr var_8C
  loc_AAA846: LateIdLdVar var_9C DispID_22 0
  loc_AAA84D: CStrVarTmp
  loc_AAA84E: FStStrNoPop var_A0
  loc_AAA851: CI2Str
  loc_AAA853: FLdPr var_88
  loc_AAA856: Call dlgBuscarConcepto.iPeriInfoPut(from_stack_1v)
  loc_AAA85B: FFree1Str var_A0
  loc_AAA85E: FFree1Ad var_8C
  loc_AAA861: FFree1Var var_9C = ""
  loc_AAA864: LitVar_Missing var_C0
  loc_AAA867: PopAdLdVar
  loc_AAA868: LitVarI4
  loc_AAA870: PopAdLdVar
  loc_AAA871: FLdPr var_88
  loc_AAA874: Me.Show from_stack_1, from_stack_2
  loc_AAA879: FLdRfVar var_A0
  loc_AAA87C: FLdRfVar var_8C
  loc_AAA87F: ImpAdLdRf MemVar_D947E0
  loc_AAA882: NewIfNullPr dlgBuscarConcepto
  loc_AAA885: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AAA88A: FLdPr var_8C
  loc_AAA88D: from_stack_1 = clsconcepto.CodiConc
  loc_AAA892: FLdZeroAd var_A0
  loc_AAA895: CVarStr var_9C
  loc_AAA898: PopAdLdVar
  loc_AAA899: FLdPr Me
  loc_AAA89C: VCallAd Control_ID_CodiConcMsk
  loc_AAA89F: FStAdFunc var_C4
  loc_AAA8A2: FLdPr var_C4
  loc_AAA8A5: LateIdSt
  loc_AAA8AA: FFreeAd var_8C = ""
  loc_AAA8B1: FFree1Var var_9C = ""
  loc_AAA8B4: FLdRfVar var_A0
  loc_AAA8B7: FLdRfVar var_8C
  loc_AAA8BA: ImpAdLdRf MemVar_D947E0
  loc_AAA8BD: NewIfNullPr dlgBuscarConcepto
  loc_AAA8C0: from_stack_1v = dlgBuscarConcepto.global_4385036Get()
  loc_AAA8C5: FLdPr var_8C
  loc_AAA8C8: from_stack_1 = clsconcepto.DetaConc
  loc_AAA8CD: ILdRf var_A0
  loc_AAA8D0: FLdPr Me
  loc_AAA8D3: VCallAd Control_ID_DetaConcLbl
  loc_AAA8D6: FStAdFunc var_C4
  loc_AAA8D9: FLdPr var_C4
  loc_AAA8DC: Me.Caption = from_stack_1
  loc_AAA8E1: FFree1Str var_A0
  loc_AAA8E4: FFreeAd var_8C = ""
  loc_AAA8EB: LitNothing
  loc_AAA8ED: FStAd var_88 
  loc_AAA8F1: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AAA8F6: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A01D34
  'Data Table: 483F30
  loc_A01D04: LitVarStr var_94, "Cerrando..."
  loc_A01D09: PopAdLdVar
  loc_A01D0A: FLdPr Me
  loc_A01D0D: VCallAd Control_ID_statusBar
  loc_A01D10: FStAdFunc var_A8
  loc_A01D13: FLdPr var_A8
  loc_A01D16: LateIdSt
  loc_A01D1B: FFree1Ad var_A8
  loc_A01D1E: ILdRf Me
  loc_A01D21: FStAdNoPop
  loc_A01D25: ImpAdLdRf MemVar_D9C5D8
  loc_A01D28: NewIfNullPr Global
  loc_A01D2B: Global.Unload from_stack_1
  loc_A01D30: FFree1Ad var_A8
  loc_A01D33: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E0D2C
  'Data Table: 483F30
  loc_9E0D10: LitI2_Byte 0
  loc_9E0D12: PopTmpLdAd2 var_8A
  loc_9E0D15: ILdRf Me
  loc_9E0D18: CastAd
  loc_9E0D1B: FStAdFunc var_88
  loc_9E0D1E: FLdRfVar var_88
  loc_9E0D21: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E0D26: FFree1Ad var_88
  loc_9E0D29: ExitProcHresult
End Sub

Public Function bGeneradoGet() '484C6C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '484C7B
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A74368
  'Data Table: 483F30
  loc_A74304: LitI4 0
  loc_A74309: LitI4 3
  loc_A7430E: FLdRfVar var_88
  loc_A74311: Redim
  loc_A7431B: FLdPr Me
  loc_A7431E: VCallAd Control_ID_PeriCtctMsk
  loc_A74321: CVarAd
  loc_A74325: ParmAry1St
  loc_A7432B: FLdPr Me
  loc_A7432E: VCallAd Control_ID_CodiConcMsk
  loc_A74331: CVarAd
  loc_A74335: ParmAry1St
  loc_A7433B: FLdPr Me
  loc_A7433E: VCallAd Control_ID_CodiConcCmd
  loc_A74341: CVarAd
  loc_A74345: ParmAry1St
  loc_A7434B: FLdPr Me
  loc_A7434E: VCallAd Control_ID_OficinaCbo
  loc_A74351: CVarAd
  loc_A74355: ParmAry1St
  loc_A7435B: FLdRfVar var_88
  loc_A7435E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A74363: FLdRfVar var_88
  loc_A74366: Erase
  loc_A74367: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B24EEC
  'Data Table: 483F30
  loc_B24C6C: FLdPr Me
  loc_B24C6F: MemLdI2 bGenerado
  loc_B24C72: BranchF loc_B24C76
  loc_B24C75: ExitProcHresult
  loc_B24C76: LitVarStr var_98, "Generando reporte..."
  loc_B24C7B: PopAdLdVar
  loc_B24C7C: FLdPr Me
  loc_B24C7F: VCallAd Control_ID_statusBar
  loc_B24C82: FStAdFunc var_AC
  loc_B24C85: FLdPr var_AC
  loc_B24C88: LateIdSt
  loc_B24C8D: FFree1Ad var_AC
  loc_B24C90: LitI4 &HB
  loc_B24C95: CI2I4
  loc_B24C96: FLdPr Me
  loc_B24C99: Me.MousePointer = from_stack_1
  loc_B24C9E: FLdPr Me
  loc_B24CA1: MemLdRfVar from_stack_1.global_76
  loc_B24CA4: NewIfNullAd
  loc_B24CA7: FStAd var_B0 
  loc_B24CAB: LitStr "DROP TEMPORARY TABLE IF EXISTS c;"
  loc_B24CAE: LitStr " CREATE TEMPORARY TABLE c"
  loc_B24CB1: ConcatStr
  loc_B24CB2: FStStrNoPop var_B4
  loc_B24CB5: LitStr " SELECT CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct FROM ctacte"
  loc_B24CB8: ConcatStr
  loc_B24CB9: FStStrNoPop var_B8
  loc_B24CBC: LitStr " WHERE PeriCtct = "
  loc_B24CBF: ConcatStr
  loc_B24CC0: FStStrNoPop var_CC
  loc_B24CC3: FLdPr Me
  loc_B24CC6: VCallAd Control_ID_PeriCtctMsk
  loc_B24CC9: FStAdFunc var_AC
  loc_B24CCC: FLdPr var_AC
  loc_B24CCF: LateIdLdVar var_C8 DispID_22 0
  loc_B24CD6: CStrVarTmp
  loc_B24CD7: FStStrNoPop var_D0
  loc_B24CDA: ConcatStr
  loc_B24CDB: FStStrNoPop var_D4
  loc_B24CDE: LitStr " AND (CodiConc = '"
  loc_B24CE1: ConcatStr
  loc_B24CE2: FStStrNoPop var_EC
  loc_B24CE5: FLdPr Me
  loc_B24CE8: VCallAd Control_ID_CodiConcMsk
  loc_B24CEB: FStAdFunc var_D8
  loc_B24CEE: FLdPr var_D8
  loc_B24CF1: LateIdLdVar var_E8 DispID_22 0
  loc_B24CF8: CStrVarTmp
  loc_B24CF9: FStStrNoPop var_F0
  loc_B24CFC: ConcatStr
  loc_B24CFD: FStStrNoPop var_F4
  loc_B24D00: LitStr "' OR CodiConc = '750')"
  loc_B24D03: ConcatStr
  loc_B24D04: FStStrNoPop var_F8
  loc_B24D07: LitStr " AND CodiFapa = 0 AND NumeApre = 0 AND MoviCtct = 1 AND CodiOfic="
  loc_B24D0A: ConcatStr
  loc_B24D0B: FStStrNoPop var_10C
  loc_B24D0E: FLdRfVar var_108
  loc_B24D11: FLdRfVar var_FE
  loc_B24D14: FLdPr Me
  loc_B24D17: VCallAd Control_ID_OficinaCbo
  loc_B24D1A: FStAdFunc var_FC
  loc_B24D1D: FLdPr var_FC
  loc_B24D20:  = Me.ListIndex
  loc_B24D25: FLdI2 var_FE
  loc_B24D28: FLdPr Me
  loc_B24D2B: VCallAd Control_ID_OficinaCbo
  loc_B24D2E: FStAdFunc var_104
  loc_B24D31: FLdPr var_104
  loc_B24D34:  = Me.ItemData
  loc_B24D39: ILdRf var_108
  loc_B24D3C: CStrI4
  loc_B24D3E: FStStrNoPop var_110
  loc_B24D41: ConcatStr
  loc_B24D42: FStStrNoPop var_114
  loc_B24D45: LitStr " ORDER BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct;"
  loc_B24D48: ConcatStr
  loc_B24D49: FStStrNoPop var_118
  loc_B24D4C: FLdPr var_B0
  loc_B24D4F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B24D54: FFreeStr var_B4 = "": var_B8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_B24D71: FFreeAd var_AC = "": var_D8 = "": var_FC = ""
  loc_B24D7C: FFreeVar var_C8 = ""
  loc_B24D83: LitStr "SELECT c.CodiOfic, c.CuenCtct, c.PeriCtct, c.BimeCtct, CodiConc, c.NumeCtct, c.MoviCtct, sum(DebeCtct)-sum(CredCtct) as SaldCtct"
  loc_B24D86: LitStr " FROM c LEFT JOIN ctacte ON ctacte.CodiOfic=c.CodiOfic AND ctacte.CuenCtct=c.CuenCtct AND ctacte.PeriCtct=c.PeriCtct"
  loc_B24D89: ConcatStr
  loc_B24D8A: FStStrNoPop var_B4
  loc_B24D8D: LitStr " AND ctacte.NumeCtct=c.NumeCtct AND ctacte.BimeCtct=c.BimeCtct GROUP BY CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct"
  loc_B24D90: ConcatStr
  loc_B24D91: FStStrNoPop var_B8
  loc_B24D94: LitStr " HAVING SaldCtct > 0;"
  loc_B24D97: ConcatStr
  loc_B24D98: FStStrNoPop var_CC
  loc_B24D9B: FLdPr var_B0
  loc_B24D9E: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B24DA3: FFreeStr var_B4 = "": var_B8 = ""
  loc_B24DAC: FLdRfVar var_108
  loc_B24DAF: FLdPr var_B0
  loc_B24DB2: from_stack_1 = clsctacte.RecordCount
  loc_B24DB7: ILdRf var_108
  loc_B24DBA: LitI4 0
  loc_B24DBF: EqI4
  loc_B24DC0: BranchF loc_B24DCE
  loc_B24DC3: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B24DC6: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B24DCB: Branch loc_B24EC3
  loc_B24DCE: LitI2_Byte 0
  loc_B24DD0: LitVar_Missing var_C8
  loc_B24DD3: LitI2_Byte &HFF
  loc_B24DD5: LitVarI2 var_98, 0
  loc_B24DDA: PopAdLdVar
  loc_B24DDB: FLdPr Me
  loc_B24DDE: MemLdRfVar from_stack_1.global_92
  loc_B24DE1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B24DE6: FFree1Var var_C8 = ""
  loc_B24DE9: LitI4 0
  loc_B24DEE: FLdPr Me
  loc_B24DF1: MemStI4 global_84
  loc_B24DF4: LitI4 0
  loc_B24DF9: FLdPr Me
  loc_B24DFC: MemLdStr global_84
  loc_B24DFF: FLdPr Me
  loc_B24E02: MemLdRfVar from_stack_1.global_80
  loc_B24E05: Redim
  loc_B24E0F: FLdPr var_B0
  loc_B24E12: Call clsctacte.MoveFirst()
  loc_B24E17: Call Proc_126_18_A7C974()
  loc_B24E1C: FLdRfVar var_FE
  loc_B24E1F: FLdPr var_B0
  loc_B24E22: from_stack_1 = clsctacte.EOF
  loc_B24E27: FLdI2 var_FE
  loc_B24E2A: NotI4
  loc_B24E2B: BranchF loc_B24E64
  loc_B24E2E: FLdRfVar var_B4
  loc_B24E31: FLdPr var_B0
  loc_B24E34: from_stack_1 = clsctacte.CuenCtct
  loc_B24E39: ILdRf var_B4
  loc_B24E3C: FLdPr Me
  loc_B24E3F: MemLdStr global_84
  loc_B24E42: FLdPr Me
  loc_B24E45: MemLdStr global_80
  loc_B24E48: Ary1LdPr
  loc_B24E49: MemLdStr global_0
  loc_B24E4C: NeStr
  loc_B24E4E: FFree1Str var_B4
  loc_B24E51: BranchF loc_B24E5C
  loc_B24E54: Call Proc_126_18_A7C974()
  loc_B24E59: Branch loc_B24E61
  loc_B24E5C: Call Proc_126_19_ADE904()
  loc_B24E61: Branch loc_B24E1C
  loc_B24E64: LitNothing
  loc_B24E66: FStAd var_B0 
  loc_B24E6A: LitI4 1
  loc_B24E6F: FLdPr Me
  loc_B24E72: MemLdRfVar from_stack_1.global_84
  loc_B24E75: FLdPr Me
  loc_B24E78: MemLdStr global_80
  loc_B24E7B: LitI2_Byte 1
  loc_B24E7D: FnUBound
  loc_B24E7F: ForI4 var_120
  loc_B24E85: LitI2_Byte 0
  loc_B24E87: FLdPr Me
  loc_B24E8A: MemLdRfVar from_stack_1.global_92
  loc_B24E8D: CVarRef
  loc_B24E92: LitI2_Byte &HFF
  loc_B24E94: FLdPr Me
  loc_B24E97: MemLdStr global_84
  loc_B24E9A: FLdPr Me
  loc_B24E9D: MemLdStr global_80
  loc_B24EA0: Ary1LdPr
  loc_B24EA1: MemLdStr global_8
  loc_B24EA4: CVarStr var_98
  loc_B24EA7: PopAdLdVar
  loc_B24EA8: FLdRfVar var_88
  loc_B24EAB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B24EB0: FLdPr Me
  loc_B24EB3: MemLdRfVar from_stack_1.global_84
  loc_B24EB6: NextI4 var_120, loc_B24E85
  loc_B24EBB: LitI2_Byte &HFF
  loc_B24EBD: FLdPr Me
  loc_B24EC0: MemStI2 bGenerado
  loc_B24EC3: LitI4 0
  loc_B24EC8: CI2I4
  loc_B24EC9: FLdPr Me
  loc_B24ECC: Me.MousePointer = from_stack_1
  loc_B24ED1: LitVarStr var_98, vbNullString
  loc_B24ED6: PopAdLdVar
  loc_B24ED7: FLdPr Me
  loc_B24EDA: VCallAd Control_ID_statusBar
  loc_B24EDD: FStAdFunc var_AC
  loc_B24EE0: FLdPr var_AC
  loc_B24EE3: LateIdSt
  loc_B24EE8: FFree1Ad var_AC
  loc_B24EEB: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B2FF74
  'Data Table: 483F30
  loc_B2FC94: FLdRfVar var_88
  loc_B2FC97: LitI2_Byte 0
  loc_B2FC99: LitI2_Byte &HFF
  loc_B2FC9B: ImpAdLdI4 MemVar_D93C84
  loc_B2FC9E: FLdPr Me
  loc_B2FCA1: MemLdRfVar from_stack_1.global_56
  loc_B2FCA4: NewIfNullPr IFileSystem3
  loc_B2FCA7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B2FCAC: ILdRf var_88
  loc_B2FCAF: FLdPr Me
  loc_B2FCB2: MemStVarAd
  loc_B2FCB6: FFree1Ad var_88
  loc_B2FCB9: LitI2_Byte &HFF
  loc_B2FCBB: ImpAdStI2 MemVar_D93C8A
  loc_B2FCBE: Call Proc_126_20_BC920C()
  loc_B2FCC3: LitI4 1
  loc_B2FCC8: FLdPr Me
  loc_B2FCCB: MemLdRfVar from_stack_1.global_84
  loc_B2FCCE: FLdPr Me
  loc_B2FCD1: MemLdStr global_80
  loc_B2FCD4: LitI2_Byte 1
  loc_B2FCD6: FnUBound
  loc_B2FCD8: ForI4 var_90
  loc_B2FCDE: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2FCE3: PopAdLdVar
  loc_B2FCE4: FLdPr Me
  loc_B2FCE7: MemLdRfVar from_stack_1.global_60
  loc_B2FCEA: LdPrVar
  loc_B2FCEC: LateMemCall
  loc_B2FCF2: LitStr "    <td rowspan="""
  loc_B2FCF5: FLdPr Me
  loc_B2FCF8: MemLdStr global_84
  loc_B2FCFB: FLdPr Me
  loc_B2FCFE: MemLdStr global_80
  loc_B2FD01: Ary1LdPr
  loc_B2FD02: MemLdStr global_4
  loc_B2FD05: LitI2_Byte 1
  loc_B2FD07: FnUBound
  loc_B2FD09: CStrI4
  loc_B2FD0B: FStStrNoPop var_B4
  loc_B2FD0E: ConcatStr
  loc_B2FD0F: FStStrNoPop var_B8
  loc_B2FD12: LitStr """ align=""left"" valign=""top"">"
  loc_B2FD15: ConcatStr
  loc_B2FD16: FStStrNoPop var_BC
  loc_B2FD19: FLdPr Me
  loc_B2FD1C: MemLdStr global_84
  loc_B2FD1F: FLdPr Me
  loc_B2FD22: MemLdStr global_80
  loc_B2FD25: Ary1LdPr
  loc_B2FD26: MemLdStr global_0
  loc_B2FD29: ConcatStr
  loc_B2FD2A: FStStrNoPop var_C0
  loc_B2FD2D: LitStr "</td>"
  loc_B2FD30: ConcatStr
  loc_B2FD31: CVarStr var_D0
  loc_B2FD34: PopAdLdVar
  loc_B2FD35: FLdPr Me
  loc_B2FD38: MemLdRfVar from_stack_1.global_60
  loc_B2FD3B: LdPrVar
  loc_B2FD3D: LateMemCall
  loc_B2FD43: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_B2FD4E: FFree1Var var_D0 = ""
  loc_B2FD51: LitI2_Byte 1
  loc_B2FD53: FLdPr Me
  loc_B2FD56: MemLdRfVar from_stack_1.global_88
  loc_B2FD59: FLdPr Me
  loc_B2FD5C: MemLdStr global_84
  loc_B2FD5F: FLdPr Me
  loc_B2FD62: MemLdStr global_80
  loc_B2FD65: Ary1LdPr
  loc_B2FD66: MemLdStr global_4
  loc_B2FD69: LitI2_Byte 1
  loc_B2FD6B: FnUBound
  loc_B2FD6D: CI2I4
  loc_B2FD6E: ForI2 var_D4
  loc_B2FD74: FLdPr Me
  loc_B2FD77: MemLdI2 global_88
  loc_B2FD7A: LitI2_Byte 1
  loc_B2FD7C: GtI2
  loc_B2FD7D: BranchF loc_B2FD94
  loc_B2FD80: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2FD85: PopAdLdVar
  loc_B2FD86: FLdPr Me
  loc_B2FD89: MemLdRfVar from_stack_1.global_60
  loc_B2FD8C: LdPrVar
  loc_B2FD8E: LateMemCall
  loc_B2FD94: FLdPr Me
  loc_B2FD97: MemLdI2 global_88
  loc_B2FD9A: CI4UI1
  loc_B2FD9B: FLdPr Me
  loc_B2FD9E: MemLdStr global_84
  loc_B2FDA1: FLdPr Me
  loc_B2FDA4: MemLdStr global_80
  loc_B2FDA7: AryLock
  loc_B2FDAA: Ary1LdPr
  loc_B2FDAB: MemLdStr global_4
  loc_B2FDAE: AryLock
  loc_B2FDB1: Ary1LdRf
  loc_B2FDB2: FStR4 var_E0
  loc_B2FDB5: LitStr vbNullString
  loc_B2FDB8: LitI2_Byte 0
  loc_B2FDBA: LitI2_Byte 0
  loc_B2FDBC: LitI2_Byte 0
  loc_B2FDBE: LitStr "right"
  loc_B2FDC1: FMemLdR4 var_E0(0)
  loc_B2FDC6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2FDCB: CVarStr var_D0
  loc_B2FDCE: PopAdLdVar
  loc_B2FDCF: FLdPr Me
  loc_B2FDD2: MemLdRfVar from_stack_1.global_60
  loc_B2FDD5: LdPrVar
  loc_B2FDD7: LateMemCall
  loc_B2FDDD: FFree1Var var_D0 = ""
  loc_B2FDE0: LitStr vbNullString
  loc_B2FDE3: LitI2_Byte 0
  loc_B2FDE5: LitI2_Byte 0
  loc_B2FDE7: LitI2_Byte 0
  loc_B2FDE9: LitStr "right"
  loc_B2FDEC: FMemLdR4 var_E0(4)
  loc_B2FDF1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2FDF6: CVarStr var_D0
  loc_B2FDF9: PopAdLdVar
  loc_B2FDFA: FLdPr Me
  loc_B2FDFD: MemLdRfVar from_stack_1.global_60
  loc_B2FE00: LdPrVar
  loc_B2FE02: LateMemCall
  loc_B2FE08: FFree1Var var_D0 = ""
  loc_B2FE0B: LitStr vbNullString
  loc_B2FE0E: LitI2_Byte 0
  loc_B2FE10: LitI2_Byte 0
  loc_B2FE12: LitI2_Byte 0
  loc_B2FE14: LitStr "right"
  loc_B2FE17: FMemLdR4 var_E0(8)
  loc_B2FE1C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2FE21: CVarStr var_D0
  loc_B2FE24: PopAdLdVar
  loc_B2FE25: FLdPr Me
  loc_B2FE28: MemLdRfVar from_stack_1.global_60
  loc_B2FE2B: LdPrVar
  loc_B2FE2D: LateMemCall
  loc_B2FE33: FFree1Var var_D0 = ""
  loc_B2FE36: FLdPr Me
  loc_B2FE39: MemLdI2 global_88
  loc_B2FE3C: CI4UI1
  loc_B2FE3D: FLdPr Me
  loc_B2FE40: MemLdStr global_84
  loc_B2FE43: FLdPr Me
  loc_B2FE46: MemLdStr global_80
  loc_B2FE49: Ary1LdPr
  loc_B2FE4A: MemLdStr global_4
  loc_B2FE4D: LitI2_Byte 1
  loc_B2FE4F: FnUBound
  loc_B2FE51: NeI4
  loc_B2FE52: BranchF loc_B2FE83
  loc_B2FE55: LitStr vbNullString
  loc_B2FE58: LitI2_Byte 0
  loc_B2FE5A: LitI2_Byte 0
  loc_B2FE5C: LitI2_Byte 0
  loc_B2FE5E: LitI4 0
  loc_B2FE63: LitStr vbNullString
  loc_B2FE66: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2FE6B: CVarStr var_D0
  loc_B2FE6E: PopAdLdVar
  loc_B2FE6F: FLdPr Me
  loc_B2FE72: MemLdRfVar from_stack_1.global_60
  loc_B2FE75: LdPrVar
  loc_B2FE77: LateMemCall
  loc_B2FE7D: FFree1Var var_D0 = ""
  loc_B2FE80: Branch loc_B2FEB6
  loc_B2FE83: LitStr "    <td class=""SubTotales"" align=""right"">"
  loc_B2FE86: FLdPr Me
  loc_B2FE89: MemLdStr global_84
  loc_B2FE8C: FLdPr Me
  loc_B2FE8F: MemLdStr global_80
  loc_B2FE92: Ary1LdPr
  loc_B2FE93: MemLdStr global_8
  loc_B2FE96: ConcatStr
  loc_B2FE97: FStStrNoPop var_B4
  loc_B2FE9A: LitStr "</td>"
  loc_B2FE9D: ConcatStr
  loc_B2FE9E: CVarStr var_D0
  loc_B2FEA1: PopAdLdVar
  loc_B2FEA2: FLdPr Me
  loc_B2FEA5: MemLdRfVar from_stack_1.global_60
  loc_B2FEA8: LdPrVar
  loc_B2FEAA: LateMemCall
  loc_B2FEB0: FFree1Str var_B4
  loc_B2FEB3: FFree1Var var_D0 = ""
  loc_B2FEB6: LitI4 0
  loc_B2FEBB: FStR4 var_E0
  loc_B2FEBE: AryUnlock
  loc_B2FEC1: AryUnlock
  loc_B2FEC4: LitVarStr var_A0, "     </tr>"
  loc_B2FEC9: PopAdLdVar
  loc_B2FECA: FLdPr Me
  loc_B2FECD: MemLdRfVar from_stack_1.global_60
  loc_B2FED0: LdPrVar
  loc_B2FED2: LateMemCall
  loc_B2FED8: FLdPr Me
  loc_B2FEDB: MemLdRfVar from_stack_1.global_88
  loc_B2FEDE: NextI2 var_D4, loc_B2FD74
  loc_B2FEE3: FLdPr Me
  loc_B2FEE6: MemLdRfVar from_stack_1.global_84
  loc_B2FEE9: NextI4 var_90, loc_B2FCDE
  loc_B2FEEE: LitVarStr var_A0, "    <tr class=""Totales"">"
  loc_B2FEF3: PopAdLdVar
  loc_B2FEF4: FLdPr Me
  loc_B2FEF7: MemLdRfVar from_stack_1.global_60
  loc_B2FEFA: LdPrVar
  loc_B2FEFC: LateMemCall
  loc_B2FF02: LitVarStr var_A0, "    <td colspan=""4"" align=""right"">Total</td>"
  loc_B2FF07: PopAdLdVar
  loc_B2FF08: FLdPr Me
  loc_B2FF0B: MemLdRfVar from_stack_1.global_60
  loc_B2FF0E: LdPrVar
  loc_B2FF10: LateMemCall
  loc_B2FF16: LitStr vbNullString
  loc_B2FF19: LitI2_Byte 0
  loc_B2FF1B: LitI2_Byte 0
  loc_B2FF1D: LitI2_Byte 0
  loc_B2FF1F: LitStr "right"
  loc_B2FF22: FLdPr Me
  loc_B2FF25: MemLdStr global_92
  loc_B2FF28: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2FF2D: CVarStr var_D0
  loc_B2FF30: PopAdLdVar
  loc_B2FF31: FLdPr Me
  loc_B2FF34: MemLdRfVar from_stack_1.global_60
  loc_B2FF37: LdPrVar
  loc_B2FF39: LateMemCall
  loc_B2FF3F: FFree1Var var_D0 = ""
  loc_B2FF42: LitVarStr var_A0, "     </tr>"
  loc_B2FF47: PopAdLdVar
  loc_B2FF48: FLdPr Me
  loc_B2FF4B: MemLdRfVar from_stack_1.global_60
  loc_B2FF4E: LdPrVar
  loc_B2FF50: LateMemCall
  loc_B2FF56: Call Proc_126_21_A0DD38()
  loc_B2FF5B: FLdPr Me
  loc_B2FF5E: MemLdRfVar from_stack_1.global_60
  loc_B2FF61: LdPrVar
  loc_B2FF63: LateMemCall
  loc_B2FF69: LitStr vbNullString
  loc_B2FF6C: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B2FF71: ExitProcHresult
  loc_B2FF72: CStrVarTmp
End Sub

Private Function Proc_126_18_A7C974() 'A7C974
  'Data Table: 483F30
  loc_A7C8F8: FLdPr Me
  loc_A7C8FB: MemLdStr global_84
  loc_A7C8FE: LitI4 1
  loc_A7C903: AddI4
  loc_A7C904: FLdPr Me
  loc_A7C907: MemStI4 global_84
  loc_A7C90A: LitI2_Byte 0
  loc_A7C90C: FLdPr Me
  loc_A7C90F: MemStI2 global_88
  loc_A7C912: LitI4 0
  loc_A7C917: FLdPr Me
  loc_A7C91A: MemLdStr global_84
  loc_A7C91D: FLdPr Me
  loc_A7C920: MemLdRfVar from_stack_1.global_80
  loc_A7C923: RedimPreserve
  loc_A7C92D: FLdRfVar var_88
  loc_A7C930: FLdPr Me
  loc_A7C933: MemLdRfVar from_stack_1.global_76
  loc_A7C936: NewIfNullPr clsctacte
  loc_A7C939: from_stack_1 = clsctacte.CuenCtct
  loc_A7C93E: LitI2_Byte 0
  loc_A7C940: LitVar_Missing var_BC
  loc_A7C943: LitI2_Byte 0
  loc_A7C945: FLdZeroAd var_88
  loc_A7C948: CVarStr var_9C
  loc_A7C94B: PopAdLdVar
  loc_A7C94C: FLdPr Me
  loc_A7C94F: MemLdStr global_84
  loc_A7C952: FLdPr Me
  loc_A7C955: MemLdStr global_80
  loc_A7C958: AryLock
  loc_A7C95B: Ary1LdPr
  loc_A7C95C: MemLdRfVar from_stack_1.global_0
  loc_A7C95F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_A7C964: AryUnlock
  loc_A7C967: FFreeVar var_9C = ""
  loc_A7C96E: Call Proc_126_19_ADE904()
  loc_A7C973: ExitProcHresult
End Function

Private Function Proc_126_19_ADE904() 'ADE904
  'Data Table: 483F30
  loc_ADE7B4: FLdPr Me
  loc_ADE7B7: MemLdI2 global_88
  loc_ADE7BA: LitI2_Byte 1
  loc_ADE7BC: AddI2
  loc_ADE7BD: FLdPr Me
  loc_ADE7C0: MemStI2 global_88
  loc_ADE7C3: LitI4 0
  loc_ADE7C8: FLdPr Me
  loc_ADE7CB: MemLdI2 global_88
  loc_ADE7CE: CI4UI1
  loc_ADE7CF: FLdPr Me
  loc_ADE7D2: MemLdStr global_84
  loc_ADE7D5: FLdPr Me
  loc_ADE7D8: MemLdStr global_80
  loc_ADE7DB: Ary1LdPr
  loc_ADE7DC: MemLdRfVar from_stack_1.global_4
  loc_ADE7DF: RedimPreserve
  loc_ADE7E9: FLdRfVar var_86
  loc_ADE7EC: FLdPr Me
  loc_ADE7EF: MemLdRfVar from_stack_1.global_76
  loc_ADE7F2: NewIfNullPr clsctacte
  loc_ADE7F5: from_stack_1 = clsctacte.BimeCtct
  loc_ADE7FA: LitI2_Byte 0
  loc_ADE7FC: LitVar_Missing var_C0
  loc_ADE7FF: LitI2_Byte 0
  loc_ADE801: FLdI2 var_86
  loc_ADE804: CVarI2 var_A0
  loc_ADE807: PopAdLdVar
  loc_ADE808: FLdPr Me
  loc_ADE80B: MemLdI2 global_88
  loc_ADE80E: CI4UI1
  loc_ADE80F: FLdPr Me
  loc_ADE812: MemLdStr global_84
  loc_ADE815: FLdPr Me
  loc_ADE818: MemLdStr global_80
  loc_ADE81B: AryLock
  loc_ADE81E: Ary1LdPr
  loc_ADE81F: MemLdStr global_4
  loc_ADE822: AryLock
  loc_ADE825: Ary1LdPr
  loc_ADE826: MemLdRfVar from_stack_1.global_0
  loc_ADE829: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ADE82E: AryUnlock
  loc_ADE831: AryUnlock
  loc_ADE834: FFree1Var var_C0 = ""
  loc_ADE837: FLdRfVar var_C4
  loc_ADE83A: FLdPr Me
  loc_ADE83D: MemLdRfVar from_stack_1.global_76
  loc_ADE840: NewIfNullPr clsctacte
  loc_ADE843: from_stack_1 = clsctacte.CodiConc
  loc_ADE848: LitI2_Byte 0
  loc_ADE84A: LitVar_Missing var_D4
  loc_ADE84D: LitI2_Byte 0
  loc_ADE84F: FLdZeroAd var_C4
  loc_ADE852: CVarStr var_C0
  loc_ADE855: PopAdLdVar
  loc_ADE856: FLdPr Me
  loc_ADE859: MemLdI2 global_88
  loc_ADE85C: CI4UI1
  loc_ADE85D: FLdPr Me
  loc_ADE860: MemLdStr global_84
  loc_ADE863: FLdPr Me
  loc_ADE866: MemLdStr global_80
  loc_ADE869: AryLock
  loc_ADE86C: Ary1LdPr
  loc_ADE86D: MemLdStr global_4
  loc_ADE870: AryLock
  loc_ADE873: Ary1LdPr
  loc_ADE874: MemLdRfVar from_stack_1.global_4
  loc_ADE877: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ADE87C: AryUnlock
  loc_ADE87F: AryUnlock
  loc_ADE882: FFreeVar var_C0 = ""
  loc_ADE889: FLdRfVar var_DC
  loc_ADE88C: FLdPr Me
  loc_ADE88F: MemLdRfVar from_stack_1.global_76
  loc_ADE892: NewIfNullPr clsctacte
  loc_ADE895: from_stack_1 = clsctacte.SaldCtct
  loc_ADE89A: LitI2_Byte 0
  loc_ADE89C: FLdPr Me
  loc_ADE89F: MemLdStr global_84
  loc_ADE8A2: FLdPr Me
  loc_ADE8A5: MemLdStr global_80
  loc_ADE8A8: AryLock
  loc_ADE8AB: Ary1LdPr
  loc_ADE8AC: MemLdRfVar from_stack_1.global_8
  loc_ADE8AF: CVarRef
  loc_ADE8B4: LitI2_Byte &HFF
  loc_ADE8B6: FLdFPR8 var_DC
  loc_ADE8B9: CVarR8
  loc_ADE8BD: PopAdLdVar
  loc_ADE8BE: FLdPr Me
  loc_ADE8C1: MemLdI2 global_88
  loc_ADE8C4: CI4UI1
  loc_ADE8C5: FLdPr Me
  loc_ADE8C8: MemLdStr global_84
  loc_ADE8CB: FLdPr Me
  loc_ADE8CE: MemLdStr global_80
  loc_ADE8D1: AryLock
  loc_ADE8D4: Ary1LdPr
  loc_ADE8D5: MemLdStr global_4
  loc_ADE8D8: AryLock
  loc_ADE8DB: Ary1LdPr
  loc_ADE8DC: MemLdRfVar from_stack_1.global_8
  loc_ADE8DF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ADE8E4: AryUnlock
  loc_ADE8E7: AryUnlock
  loc_ADE8EA: AryUnlock
  loc_ADE8ED: LitI2_Byte 1
  loc_ADE8EF: PopTmpLdAd2 var_86
  loc_ADE8F2: FLdPr Me
  loc_ADE8F5: MemLdRfVar from_stack_1.global_76
  loc_ADE8F8: NewIfNullPr clsctacte
  loc_ADE8FB: Call clsctacte.Move(from_stack_1v)
  loc_ADE900: ExitProcHresult
  loc_ADE901: VCallAd Control_ID_CodiConcCmd
End Function

Private Function Proc_126_20_BC920C() 'BC920C
  'Data Table: 483F30
  loc_BC8B24: LitVarStr var_94, "<html>"
  loc_BC8B29: PopAdLdVar
  loc_BC8B2A: FLdPr Me
  loc_BC8B2D: MemLdRfVar from_stack_1.global_60
  loc_BC8B30: LdPrVar
  loc_BC8B32: LateMemCall
  loc_BC8B38: LitVarStr var_94, "<head>"
  loc_BC8B3D: PopAdLdVar
  loc_BC8B3E: FLdPr Me
  loc_BC8B41: MemLdRfVar from_stack_1.global_60
  loc_BC8B44: LdPrVar
  loc_BC8B46: LateMemCall
  loc_BC8B4C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BC8B51: PopAdLdVar
  loc_BC8B52: FLdPr Me
  loc_BC8B55: MemLdRfVar from_stack_1.global_60
  loc_BC8B58: LdPrVar
  loc_BC8B5A: LateMemCall
  loc_BC8B60: LitStr "<title>"
  loc_BC8B63: FLdRfVar var_A8
  loc_BC8B66: FLdPr Me
  loc_BC8B69:  = Me.Caption
  loc_BC8B6E: ILdRf var_A8
  loc_BC8B71: ConcatStr
  loc_BC8B72: FStStrNoPop var_AC
  loc_BC8B75: LitStr "</title>"
  loc_BC8B78: ConcatStr
  loc_BC8B79: CVarStr var_BC
  loc_BC8B7C: PopAdLdVar
  loc_BC8B7D: FLdPr Me
  loc_BC8B80: MemLdRfVar from_stack_1.global_60
  loc_BC8B83: LdPrVar
  loc_BC8B85: LateMemCall
  loc_BC8B8B: FFreeStr var_A8 = ""
  loc_BC8B92: FFree1Var var_BC = ""
  loc_BC8B95: LitVarStr var_94, "<style type=""text/css"">"
  loc_BC8B9A: PopAdLdVar
  loc_BC8B9B: FLdPr Me
  loc_BC8B9E: MemLdRfVar from_stack_1.global_60
  loc_BC8BA1: LdPrVar
  loc_BC8BA3: LateMemCall
  loc_BC8BA9: LitVarStr var_94, ".Titulo1 {"
  loc_BC8BAE: PopAdLdVar
  loc_BC8BAF: FLdPr Me
  loc_BC8BB2: MemLdRfVar from_stack_1.global_60
  loc_BC8BB5: LdPrVar
  loc_BC8BB7: LateMemCall
  loc_BC8BBD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC8BC2: PopAdLdVar
  loc_BC8BC3: FLdPr Me
  loc_BC8BC6: MemLdRfVar from_stack_1.global_60
  loc_BC8BC9: LdPrVar
  loc_BC8BCB: LateMemCall
  loc_BC8BD1: LitVarStr var_94, " font-size: 18px;"
  loc_BC8BD6: PopAdLdVar
  loc_BC8BD7: FLdPr Me
  loc_BC8BDA: MemLdRfVar from_stack_1.global_60
  loc_BC8BDD: LdPrVar
  loc_BC8BDF: LateMemCall
  loc_BC8BE5: LitVarStr var_94, " font-weight: bold;"
  loc_BC8BEA: PopAdLdVar
  loc_BC8BEB: FLdPr Me
  loc_BC8BEE: MemLdRfVar from_stack_1.global_60
  loc_BC8BF1: LdPrVar
  loc_BC8BF3: LateMemCall
  loc_BC8BF9: LitVarStr var_94, "}"
  loc_BC8BFE: PopAdLdVar
  loc_BC8BFF: FLdPr Me
  loc_BC8C02: MemLdRfVar from_stack_1.global_60
  loc_BC8C05: LdPrVar
  loc_BC8C07: LateMemCall
  loc_BC8C0D: LitVarStr var_94, ".Titulo2 {"
  loc_BC8C12: PopAdLdVar
  loc_BC8C13: FLdPr Me
  loc_BC8C16: MemLdRfVar from_stack_1.global_60
  loc_BC8C19: LdPrVar
  loc_BC8C1B: LateMemCall
  loc_BC8C21: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC8C26: PopAdLdVar
  loc_BC8C27: FLdPr Me
  loc_BC8C2A: MemLdRfVar from_stack_1.global_60
  loc_BC8C2D: LdPrVar
  loc_BC8C2F: LateMemCall
  loc_BC8C35: LitVarStr var_94, " font-size: 14px;"
  loc_BC8C3A: PopAdLdVar
  loc_BC8C3B: FLdPr Me
  loc_BC8C3E: MemLdRfVar from_stack_1.global_60
  loc_BC8C41: LdPrVar
  loc_BC8C43: LateMemCall
  loc_BC8C49: LitVarStr var_94, " font-weight: bold;"
  loc_BC8C4E: PopAdLdVar
  loc_BC8C4F: FLdPr Me
  loc_BC8C52: MemLdRfVar from_stack_1.global_60
  loc_BC8C55: LdPrVar
  loc_BC8C57: LateMemCall
  loc_BC8C5D: LitVarStr var_94, "}"
  loc_BC8C62: PopAdLdVar
  loc_BC8C63: FLdPr Me
  loc_BC8C66: MemLdRfVar from_stack_1.global_60
  loc_BC8C69: LdPrVar
  loc_BC8C6B: LateMemCall
  loc_BC8C71: LitVarStr var_94, ".Normal {"
  loc_BC8C76: PopAdLdVar
  loc_BC8C77: FLdPr Me
  loc_BC8C7A: MemLdRfVar from_stack_1.global_60
  loc_BC8C7D: LdPrVar
  loc_BC8C7F: LateMemCall
  loc_BC8C85: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BC8C8A: PopAdLdVar
  loc_BC8C8B: FLdPr Me
  loc_BC8C8E: MemLdRfVar from_stack_1.global_60
  loc_BC8C91: LdPrVar
  loc_BC8C93: LateMemCall
  loc_BC8C99: LitVarStr var_94, " font-size: 12px;"
  loc_BC8C9E: PopAdLdVar
  loc_BC8C9F: FLdPr Me
  loc_BC8CA2: MemLdRfVar from_stack_1.global_60
  loc_BC8CA5: LdPrVar
  loc_BC8CA7: LateMemCall
  loc_BC8CAD: LitVarStr var_94, " font-style: normal;"
  loc_BC8CB2: PopAdLdVar
  loc_BC8CB3: FLdPr Me
  loc_BC8CB6: MemLdRfVar from_stack_1.global_60
  loc_BC8CB9: LdPrVar
  loc_BC8CBB: LateMemCall
  loc_BC8CC1: LitVarStr var_94, " font-weight: normal;"
  loc_BC8CC6: PopAdLdVar
  loc_BC8CC7: FLdPr Me
  loc_BC8CCA: MemLdRfVar from_stack_1.global_60
  loc_BC8CCD: LdPrVar
  loc_BC8CCF: LateMemCall
  loc_BC8CD5: LitVarStr var_94, " font-variant: normal;"
  loc_BC8CDA: PopAdLdVar
  loc_BC8CDB: FLdPr Me
  loc_BC8CDE: MemLdRfVar from_stack_1.global_60
  loc_BC8CE1: LdPrVar
  loc_BC8CE3: LateMemCall
  loc_BC8CE9: LitVarStr var_94, "}"
  loc_BC8CEE: PopAdLdVar
  loc_BC8CEF: FLdPr Me
  loc_BC8CF2: MemLdRfVar from_stack_1.global_60
  loc_BC8CF5: LdPrVar
  loc_BC8CF7: LateMemCall
  loc_BC8CFD: LitVarStr var_94, ".Encabezado {"
  loc_BC8D02: PopAdLdVar
  loc_BC8D03: FLdPr Me
  loc_BC8D06: MemLdRfVar from_stack_1.global_60
  loc_BC8D09: LdPrVar
  loc_BC8D0B: LateMemCall
  loc_BC8D11: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BC8D16: PopAdLdVar
  loc_BC8D17: FLdPr Me
  loc_BC8D1A: MemLdRfVar from_stack_1.global_60
  loc_BC8D1D: LdPrVar
  loc_BC8D1F: LateMemCall
  loc_BC8D25: LitVarStr var_94, " font-size: 11px;"
  loc_BC8D2A: PopAdLdVar
  loc_BC8D2B: FLdPr Me
  loc_BC8D2E: MemLdRfVar from_stack_1.global_60
  loc_BC8D31: LdPrVar
  loc_BC8D33: LateMemCall
  loc_BC8D39: LitVarStr var_94, " font-weight: bold;"
  loc_BC8D3E: PopAdLdVar
  loc_BC8D3F: FLdPr Me
  loc_BC8D42: MemLdRfVar from_stack_1.global_60
  loc_BC8D45: LdPrVar
  loc_BC8D47: LateMemCall
  loc_BC8D4D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BC8D52: PopAdLdVar
  loc_BC8D53: FLdPr Me
  loc_BC8D56: MemLdRfVar from_stack_1.global_60
  loc_BC8D59: LdPrVar
  loc_BC8D5B: LateMemCall
  loc_BC8D61: LitVarStr var_94, "}"
  loc_BC8D66: PopAdLdVar
  loc_BC8D67: FLdPr Me
  loc_BC8D6A: MemLdRfVar from_stack_1.global_60
  loc_BC8D6D: LdPrVar
  loc_BC8D6F: LateMemCall
  loc_BC8D75: LitVarStr var_94, ".LineaDato {"
  loc_BC8D7A: PopAdLdVar
  loc_BC8D7B: FLdPr Me
  loc_BC8D7E: MemLdRfVar from_stack_1.global_60
  loc_BC8D81: LdPrVar
  loc_BC8D83: LateMemCall
  loc_BC8D89: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC8D8E: PopAdLdVar
  loc_BC8D8F: FLdPr Me
  loc_BC8D92: MemLdRfVar from_stack_1.global_60
  loc_BC8D95: LdPrVar
  loc_BC8D97: LateMemCall
  loc_BC8D9D: LitVarStr var_94, " font-size: 10px;"
  loc_BC8DA2: PopAdLdVar
  loc_BC8DA3: FLdPr Me
  loc_BC8DA6: MemLdRfVar from_stack_1.global_60
  loc_BC8DA9: LdPrVar
  loc_BC8DAB: LateMemCall
  loc_BC8DB1: LitVarStr var_94, "}"
  loc_BC8DB6: PopAdLdVar
  loc_BC8DB7: FLdPr Me
  loc_BC8DBA: MemLdRfVar from_stack_1.global_60
  loc_BC8DBD: LdPrVar
  loc_BC8DBF: LateMemCall
  loc_BC8DC5: LitVarStr var_94, ".Totales {"
  loc_BC8DCA: PopAdLdVar
  loc_BC8DCB: FLdPr Me
  loc_BC8DCE: MemLdRfVar from_stack_1.global_60
  loc_BC8DD1: LdPrVar
  loc_BC8DD3: LateMemCall
  loc_BC8DD9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC8DDE: PopAdLdVar
  loc_BC8DDF: FLdPr Me
  loc_BC8DE2: MemLdRfVar from_stack_1.global_60
  loc_BC8DE5: LdPrVar
  loc_BC8DE7: LateMemCall
  loc_BC8DED: LitVarStr var_94, " font-size: 12px;"
  loc_BC8DF2: PopAdLdVar
  loc_BC8DF3: FLdPr Me
  loc_BC8DF6: MemLdRfVar from_stack_1.global_60
  loc_BC8DF9: LdPrVar
  loc_BC8DFB: LateMemCall
  loc_BC8E01: LitVarStr var_94, " font-weight: bold;"
  loc_BC8E06: PopAdLdVar
  loc_BC8E07: FLdPr Me
  loc_BC8E0A: MemLdRfVar from_stack_1.global_60
  loc_BC8E0D: LdPrVar
  loc_BC8E0F: LateMemCall
  loc_BC8E15: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BC8E1A: PopAdLdVar
  loc_BC8E1B: FLdPr Me
  loc_BC8E1E: MemLdRfVar from_stack_1.global_60
  loc_BC8E21: LdPrVar
  loc_BC8E23: LateMemCall
  loc_BC8E29: LitVarStr var_94, "}"
  loc_BC8E2E: PopAdLdVar
  loc_BC8E2F: FLdPr Me
  loc_BC8E32: MemLdRfVar from_stack_1.global_60
  loc_BC8E35: LdPrVar
  loc_BC8E37: LateMemCall
  loc_BC8E3D: LitVarStr var_94, ".SubTotales {"
  loc_BC8E42: PopAdLdVar
  loc_BC8E43: FLdPr Me
  loc_BC8E46: MemLdRfVar from_stack_1.global_60
  loc_BC8E49: LdPrVar
  loc_BC8E4B: LateMemCall
  loc_BC8E51: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BC8E56: PopAdLdVar
  loc_BC8E57: FLdPr Me
  loc_BC8E5A: MemLdRfVar from_stack_1.global_60
  loc_BC8E5D: LdPrVar
  loc_BC8E5F: LateMemCall
  loc_BC8E65: LitVarStr var_94, " font-size: 10px;"
  loc_BC8E6A: PopAdLdVar
  loc_BC8E6B: FLdPr Me
  loc_BC8E6E: MemLdRfVar from_stack_1.global_60
  loc_BC8E71: LdPrVar
  loc_BC8E73: LateMemCall
  loc_BC8E79: LitVarStr var_94, " font-weight: bold;"
  loc_BC8E7E: PopAdLdVar
  loc_BC8E7F: FLdPr Me
  loc_BC8E82: MemLdRfVar from_stack_1.global_60
  loc_BC8E85: LdPrVar
  loc_BC8E87: LateMemCall
  loc_BC8E8D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BC8E92: PopAdLdVar
  loc_BC8E93: FLdPr Me
  loc_BC8E96: MemLdRfVar from_stack_1.global_60
  loc_BC8E99: LdPrVar
  loc_BC8E9B: LateMemCall
  loc_BC8EA1: LitVarStr var_94, "}"
  loc_BC8EA6: PopAdLdVar
  loc_BC8EA7: FLdPr Me
  loc_BC8EAA: MemLdRfVar from_stack_1.global_60
  loc_BC8EAD: LdPrVar
  loc_BC8EAF: LateMemCall
  loc_BC8EB5: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BC8EBA: PopAdLdVar
  loc_BC8EBB: FLdPr Me
  loc_BC8EBE: MemLdRfVar from_stack_1.global_60
  loc_BC8EC1: LdPrVar
  loc_BC8EC3: LateMemCall
  loc_BC8EC9: LitVarStr var_94, "</style>"
  loc_BC8ECE: PopAdLdVar
  loc_BC8ECF: FLdPr Me
  loc_BC8ED2: MemLdRfVar from_stack_1.global_60
  loc_BC8ED5: LdPrVar
  loc_BC8ED7: LateMemCall
  loc_BC8EDD: LitI4 0
  loc_BC8EE2: FStStrCopy var_AC
  loc_BC8EE5: FLdRfVar var_AC
  loc_BC8EE8: LitI4 0
  loc_BC8EED: FStStrCopy var_A8
  loc_BC8EF0: FLdRfVar var_A8
  loc_BC8EF3: LitI2_Byte 0
  loc_BC8EF5: PopTmpLdAd2 var_BE
  loc_BC8EF8: FLdPr Me
  loc_BC8EFB: MemLdRfVar from_stack_1.global_60
  loc_BC8EFE: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BC8F03: FFreeStr var_A8 = ""
  loc_BC8F0A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BC8F0F: PopAdLdVar
  loc_BC8F10: FLdPr Me
  loc_BC8F13: MemLdRfVar from_stack_1.global_60
  loc_BC8F16: LdPrVar
  loc_BC8F18: LateMemCall
  loc_BC8F1E: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BC8F23: PopAdLdVar
  loc_BC8F24: FLdPr Me
  loc_BC8F27: MemLdRfVar from_stack_1.global_60
  loc_BC8F2A: LdPrVar
  loc_BC8F2C: LateMemCall
  loc_BC8F32: LitStr "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BC8F35: LitI2_Byte &H5F
  loc_BC8F37: CStrUI1
  loc_BC8F39: FStStrNoPop var_A8
  loc_BC8F3C: ConcatStr
  loc_BC8F3D: FStStrNoPop var_AC
  loc_BC8F40: LitStr """ height="""
  loc_BC8F43: ConcatStr
  loc_BC8F44: FStStrNoPop var_C4
  loc_BC8F47: LitI2_Byte &H3C
  loc_BC8F49: CStrUI1
  loc_BC8F4B: FStStrNoPop var_C8
  loc_BC8F4E: ConcatStr
  loc_BC8F4F: FStStrNoPop var_CC
  loc_BC8F52: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BC8F55: ConcatStr
  loc_BC8F56: FStStrNoPop var_D0
  loc_BC8F59: LitStr "Municipalidad de Guaymallén"
  loc_BC8F5C: ConcatStr
  loc_BC8F5D: FStStrNoPop var_D4
  loc_BC8F60: LitStr "</p>"
  loc_BC8F63: ConcatStr
  loc_BC8F64: CVarStr var_BC
  loc_BC8F67: PopAdLdVar
  loc_BC8F68: FLdPr Me
  loc_BC8F6B: MemLdRfVar from_stack_1.global_60
  loc_BC8F6E: LdPrVar
  loc_BC8F70: LateMemCall
  loc_BC8F76: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BC8F87: FFree1Var var_BC = ""
  loc_BC8F8A: LitStr "    <p>"
  loc_BC8F8D: FLdRfVar var_A8
  loc_BC8F90: FLdPr Me
  loc_BC8F93:  = Me.Caption
  loc_BC8F98: ILdRf var_A8
  loc_BC8F9B: ConcatStr
  loc_BC8F9C: FStStrNoPop var_AC
  loc_BC8F9F: LitStr "</p></th>"
  loc_BC8FA2: ConcatStr
  loc_BC8FA3: CVarStr var_BC
  loc_BC8FA6: PopAdLdVar
  loc_BC8FA7: FLdPr Me
  loc_BC8FAA: MemLdRfVar from_stack_1.global_60
  loc_BC8FAD: LdPrVar
  loc_BC8FAF: LateMemCall
  loc_BC8FB5: FFreeStr var_A8 = ""
  loc_BC8FBC: FFree1Var var_BC = ""
  loc_BC8FBF: LitVarStr var_94, "  </tr>"
  loc_BC8FC4: PopAdLdVar
  loc_BC8FC5: FLdPr Me
  loc_BC8FC8: MemLdRfVar from_stack_1.global_60
  loc_BC8FCB: LdPrVar
  loc_BC8FCD: LateMemCall
  loc_BC8FD3: LitVarStr var_94, "  <tr>"
  loc_BC8FD8: PopAdLdVar
  loc_BC8FD9: FLdPr Me
  loc_BC8FDC: MemLdRfVar from_stack_1.global_60
  loc_BC8FDF: LdPrVar
  loc_BC8FE1: LateMemCall
  loc_BC8FE7: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_BC8FEC: PopAdLdVar
  loc_BC8FED: FLdPr Me
  loc_BC8FF0: MemLdRfVar from_stack_1.global_60
  loc_BC8FF3: LdPrVar
  loc_BC8FF5: LateMemCall
  loc_BC8FFB: LitVarStr var_94, "  </tr>"
  loc_BC9000: PopAdLdVar
  loc_BC9001: FLdPr Me
  loc_BC9004: MemLdRfVar from_stack_1.global_60
  loc_BC9007: LdPrVar
  loc_BC9009: LateMemCall
  loc_BC900F: LitVarStr var_94, "  <tr align=""left"" valign=""top"" class=""Normal"">"
  loc_BC9014: PopAdLdVar
  loc_BC9015: FLdPr Me
  loc_BC9018: MemLdRfVar from_stack_1.global_60
  loc_BC901B: LdPrVar
  loc_BC901D: LateMemCall
  loc_BC9023: LitStr "    <td><strong>Periodo: </strong>"
  loc_BC9026: FLdPr Me
  loc_BC9029: VCallAd Control_ID_PeriCtctMsk
  loc_BC902C: FStAdFunc var_D8
  loc_BC902F: FLdPr var_D8
  loc_BC9032: LateIdLdVar var_BC DispID_22 0
  loc_BC9039: CStrVarTmp
  loc_BC903A: FStStrNoPop var_A8
  loc_BC903D: ConcatStr
  loc_BC903E: FStStrNoPop var_AC
  loc_BC9041: LitStr "</td>"
  loc_BC9044: ConcatStr
  loc_BC9045: CVarStr var_E8
  loc_BC9048: PopAdLdVar
  loc_BC9049: FLdPr Me
  loc_BC904C: MemLdRfVar from_stack_1.global_60
  loc_BC904F: LdPrVar
  loc_BC9051: LateMemCall
  loc_BC9057: FFreeStr var_A8 = ""
  loc_BC905E: FFree1Ad var_D8
  loc_BC9061: FFreeVar var_BC = ""
  loc_BC9068: LitStr "    <td align=""center""><strong>Concepto: </strong>"
  loc_BC906B: FLdPr Me
  loc_BC906E: VCallAd Control_ID_CodiConcMsk
  loc_BC9071: FStAdFunc var_D8
  loc_BC9074: FLdPr var_D8
  loc_BC9077: LateIdLdVar var_BC DispID_22 0
  loc_BC907E: CStrVarTmp
  loc_BC907F: FStStrNoPop var_A8
  loc_BC9082: ConcatStr
  loc_BC9083: FStStrNoPop var_AC
  loc_BC9086: LitStr " - "
  loc_BC9089: ConcatStr
  loc_BC908A: FStStrNoPop var_C8
  loc_BC908D: FLdRfVar var_C4
  loc_BC9090: FLdPr Me
  loc_BC9093: VCallAd Control_ID_DetaConcLbl
  loc_BC9096: FStAdFunc var_EC
  loc_BC9099: FLdPr var_EC
  loc_BC909C:  = Me.Caption
  loc_BC90A1: ILdRf var_C4
  loc_BC90A4: ConcatStr
  loc_BC90A5: FStStrNoPop var_CC
  loc_BC90A8: LitStr "</td>"
  loc_BC90AB: ConcatStr
  loc_BC90AC: CVarStr var_E8
  loc_BC90AF: PopAdLdVar
  loc_BC90B0: FLdPr Me
  loc_BC90B3: MemLdRfVar from_stack_1.global_60
  loc_BC90B6: LdPrVar
  loc_BC90B8: LateMemCall
  loc_BC90BE: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_BC90CB: FFreeAd var_D8 = ""
  loc_BC90D2: FFreeVar var_BC = ""
  loc_BC90D9: LitStr "    <td align=""right""><strong>Oficina: </strong>"
  loc_BC90DC: FLdRfVar var_A8
  loc_BC90DF: FLdPr Me
  loc_BC90E2: VCallAd Control_ID_OficinaCbo
  loc_BC90E5: FStAdFunc var_D8
  loc_BC90E8: FLdPr var_D8
  loc_BC90EB:  = Me.Text
  loc_BC90F0: ILdRf var_A8
  loc_BC90F3: ConcatStr
  loc_BC90F4: FStStrNoPop var_AC
  loc_BC90F7: LitStr "</td>"
  loc_BC90FA: ConcatStr
  loc_BC90FB: CVarStr var_BC
  loc_BC90FE: PopAdLdVar
  loc_BC90FF: FLdPr Me
  loc_BC9102: MemLdRfVar from_stack_1.global_60
  loc_BC9105: LdPrVar
  loc_BC9107: LateMemCall
  loc_BC910D: FFreeStr var_A8 = ""
  loc_BC9114: FFree1Ad var_D8
  loc_BC9117: FFree1Var var_BC = ""
  loc_BC911A: LitVarStr var_94, "  </tr>"
  loc_BC911F: PopAdLdVar
  loc_BC9120: FLdPr Me
  loc_BC9123: MemLdRfVar from_stack_1.global_60
  loc_BC9126: LdPrVar
  loc_BC9128: LateMemCall
  loc_BC912E: LitVarStr var_94, "</table>"
  loc_BC9133: PopAdLdVar
  loc_BC9134: FLdPr Me
  loc_BC9137: MemLdRfVar from_stack_1.global_60
  loc_BC913A: LdPrVar
  loc_BC913C: LateMemCall
  loc_BC9142: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BC9147: PopAdLdVar
  loc_BC9148: FLdPr Me
  loc_BC914B: MemLdRfVar from_stack_1.global_60
  loc_BC914E: LdPrVar
  loc_BC9150: LateMemCall
  loc_BC9156: LitVarStr var_94, "  <thead>"
  loc_BC915B: PopAdLdVar
  loc_BC915C: FLdPr Me
  loc_BC915F: MemLdRfVar from_stack_1.global_60
  loc_BC9162: LdPrVar
  loc_BC9164: LateMemCall
  loc_BC916A: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BC916F: PopAdLdVar
  loc_BC9170: FLdPr Me
  loc_BC9173: MemLdRfVar from_stack_1.global_60
  loc_BC9176: LdPrVar
  loc_BC9178: LateMemCall
  loc_BC917E: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BC9183: PopAdLdVar
  loc_BC9184: FLdPr Me
  loc_BC9187: MemLdRfVar from_stack_1.global_60
  loc_BC918A: LdPrVar
  loc_BC918C: LateMemCall
  loc_BC9192: LitVarStr var_94, "    <th>Bimestre</th>"
  loc_BC9197: PopAdLdVar
  loc_BC9198: FLdPr Me
  loc_BC919B: MemLdRfVar from_stack_1.global_60
  loc_BC919E: LdPrVar
  loc_BC91A0: LateMemCall
  loc_BC91A6: LitVarStr var_94, "    <th>Concepto</th>"
  loc_BC91AB: PopAdLdVar
  loc_BC91AC: FLdPr Me
  loc_BC91AF: MemLdRfVar from_stack_1.global_60
  loc_BC91B2: LdPrVar
  loc_BC91B4: LateMemCall
  loc_BC91BA: LitVarStr var_94, "    <th>Importe</th>"
  loc_BC91BF: PopAdLdVar
  loc_BC91C0: FLdPr Me
  loc_BC91C3: MemLdRfVar from_stack_1.global_60
  loc_BC91C6: LdPrVar
  loc_BC91C8: LateMemCall
  loc_BC91CE: LitVarStr var_94, "    <th>Subtotal</th>"
  loc_BC91D3: PopAdLdVar
  loc_BC91D4: FLdPr Me
  loc_BC91D7: MemLdRfVar from_stack_1.global_60
  loc_BC91DA: LdPrVar
  loc_BC91DC: LateMemCall
  loc_BC91E2: LitVarStr var_94, "  </tr>"
  loc_BC91E7: PopAdLdVar
  loc_BC91E8: FLdPr Me
  loc_BC91EB: MemLdRfVar from_stack_1.global_60
  loc_BC91EE: LdPrVar
  loc_BC91F0: LateMemCall
  loc_BC91F6: LitVarStr var_94, "  </thead>"
  loc_BC91FB: PopAdLdVar
  loc_BC91FC: FLdPr Me
  loc_BC91FF: MemLdRfVar from_stack_1.global_60
  loc_BC9202: LdPrVar
  loc_BC9204: LateMemCall
  loc_BC920A: ExitProcHresult
End Function

Private Function Proc_126_21_A0DD38() 'A0DD38
  'Data Table: 483F30
  loc_A0DCF8: LitVarStr var_94, "</table>"
  loc_A0DCFD: PopAdLdVar
  loc_A0DCFE: FLdPr Me
  loc_A0DD01: MemLdRfVar from_stack_1.global_60
  loc_A0DD04: LdPrVar
  loc_A0DD06: LateMemCall
  loc_A0DD0C: LitVarStr var_94, "</body>"
  loc_A0DD11: PopAdLdVar
  loc_A0DD12: FLdPr Me
  loc_A0DD15: MemLdRfVar from_stack_1.global_60
  loc_A0DD18: LdPrVar
  loc_A0DD1A: LateMemCall
  loc_A0DD20: LitVarStr var_94, "</html>"
  loc_A0DD25: PopAdLdVar
  loc_A0DD26: FLdPr Me
  loc_A0DD29: MemLdRfVar from_stack_1.global_60
  loc_A0DD2C: LdPrVar
  loc_A0DD2E: LateMemCall
  loc_A0DD34: ExitProcHresult
  loc_A0DD35: FFreeVar var_FFFFFF48 = ""
End Function
