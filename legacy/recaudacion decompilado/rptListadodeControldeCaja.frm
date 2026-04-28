VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeControldeCaja
  Caption = "Listado de Control de Caja"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeControldeCaja.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10740
  ClientHeight = 3840
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
    Top = 3585
    Width = 10740
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptListadodeControldeCaja.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 2400
    Width = 855
    Height = 735
    TabIndex = 13
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
    Picture = "rptListadodeControldeCaja.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeControldeCaja.frx":0B9C
    Left = 9720
    Top = 2640
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4440
    Top = 2160
    Width = 3495
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 12
    End
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
    Top = 2160
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
    Width = 8535
    Height = 1935
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
    Begin VB.Frame Frame4
      Left = 120
      Top = 240
      Width = 6615
      Height = 1455
      TabIndex = 1
      Begin MSMask.MaskEdBox FealCtctDesdeMsk
        Left = 1680
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptListadodeControldeCaja.frx":0C00
      End
      Begin MSMask.MaskEdBox FealCtctHastaMsk
        Left = 1680
        Top = 840
        Width = 1335
        Height = 360
        TabIndex = 5
        OleObjectBlob = "rptListadodeControldeCaja.frx":0CB0
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 840
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 2
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 900
        Top = 840
        Width = 705
        Height = 300
        TabIndex = 4
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6840
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 6
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8280
    Top = 2760
    Width = 615
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptListadodeControldeCaja.frx":0D60
  End
End

Attribute VB_Name = "rptListadodeControldeCaja"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub cmdPredeterminada_Click() '9CC274
  'Data Table: 475CEC
  loc_9CC25C: LitI2_Byte 0
  loc_9CC25E: ILdRf Me
  loc_9CC261: CastAd
  loc_9CC264: FStAdFunc var_88
  loc_9CC267: FLdRfVar var_88
  loc_9CC26A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CC26F: FFree1Ad var_88
  loc_9CC272: ExitProcHresult
End Sub

Private Sub FealCtctDesdeMsk_UnknownEvent_0 '9C5978
  'Data Table: 475CEC
  loc_9C5964: FLdPr Me
  loc_9C5967: VCallAd Control_ID_FealCtctDesdeMsk
  loc_9C596A: CVarAd
  loc_9C596E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5973: FFree1Var var_94 = ""
  loc_9C5976: ExitProcHresult
End Sub

Private Function FealCtctDesdeMsk_UnknownEvent_8(arg_C) 'A65AA0
  'Data Table: 475CEC
  loc_A65A44: FLdPr Me
  loc_A65A47: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A65A4A: FStAdFunc var_88
  loc_A65A4D: FLdPr var_88
  loc_A65A50: LateIdLdVar var_98 DispID_15 0
  loc_A65A57: CStrVarTmp
  loc_A65A58: FStStrNoPop var_9C
  loc_A65A5B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A65A60: FStStrNoPop var_A0
  loc_A65A63: FLdPr Me
  loc_A65A66: MemStStrCopy
  loc_A65A6A: FFreeStr var_9C = ""
  loc_A65A71: FFree1Ad var_88
  loc_A65A74: FFree1Var var_98 = ""
  loc_A65A77: FLdPr Me
  loc_A65A7A: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A65A7D: FStAdFuncNoPop
  loc_A65A80: CastAd
  loc_A65A83: FStAdFunc var_A4
  loc_A65A86: FLdRfVar var_A4
  loc_A65A89: FLdPr Me
  loc_A65A8C: MemLdStr global_108
  loc_A65A8F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A65A94: IStI2 arg_C
  loc_A65A97: FFreeAd var_88 = ""
  loc_A65A9E: ExitProcHresult
End Function

Private Sub FealCtctDesdeMsk_KeyPress(KeyAscii As Integer) 'A2476C
  'Data Table: 475CEC
  loc_A24724: ILdI2 KeyAscii
  loc_A24727: CI4UI1
  loc_A24728: LitI4 &H20
  loc_A2472D: EqI4
  loc_A2472E: BranchF loc_A2476B
  loc_A24731: LitVar_Missing var_A4
  loc_A24734: PopAdLdVar
  loc_A24735: LitVarI4
  loc_A2473D: PopAdLdVar
  loc_A2473E: ImpAdLdRf MemVar_D930A4
  loc_A24741: NewIfNullPr frmCalendario
  loc_A24744: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24749: ImpAdLdRf MemVar_D93028
  loc_A2474C: CDargRef
  loc_A24750: FLdPr Me
  loc_A24753: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A24756: FStAdFunc var_A8
  loc_A24759: FLdPr var_A8
  loc_A2475C: LateIdSt
  loc_A24761: FFree1Ad var_A8
  loc_A24764: LitStr vbNullString
  loc_A24767: ImpAdStStrCopy MemVar_D93028
  loc_A2476B: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DFECC
  'Data Table: 475CEC
  loc_9DFEB0: LitI2_Byte &HFF
  loc_9DFEB2: LitI2_Byte 0
  loc_9DFEB4: ILdRf Me
  loc_9DFEB7: CastAd
  loc_9DFEBA: FStAdFunc var_88
  loc_9DFEBD: FLdRfVar var_88
  loc_9DFEC0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DFEC5: FFree1Ad var_88
  loc_9DFEC8: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_0 '9C5738
  'Data Table: 475CEC
  loc_9C5724: FLdPr Me
  loc_9C5727: VCallAd Control_ID_FealCtctHastaMsk
  loc_9C572A: CVarAd
  loc_9C572E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5733: FFree1Var var_94 = ""
  loc_9C5736: ExitProcHresult
End Sub

Private Function FealCtctHastaMsk_UnknownEvent_8(arg_C) 'A65E60
  'Data Table: 475CEC
  loc_A65E04: FLdPr Me
  loc_A65E07: VCallAd Control_ID_FealCtctHastaMsk
  loc_A65E0A: FStAdFunc var_88
  loc_A65E0D: FLdPr var_88
  loc_A65E10: LateIdLdVar var_98 DispID_15 0
  loc_A65E17: CStrVarTmp
  loc_A65E18: FStStrNoPop var_9C
  loc_A65E1B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A65E20: FStStrNoPop var_A0
  loc_A65E23: FLdPr Me
  loc_A65E26: MemStStrCopy
  loc_A65E2A: FFreeStr var_9C = ""
  loc_A65E31: FFree1Ad var_88
  loc_A65E34: FFree1Var var_98 = ""
  loc_A65E37: FLdPr Me
  loc_A65E3A: VCallAd Control_ID_FealCtctHastaMsk
  loc_A65E3D: FStAdFuncNoPop
  loc_A65E40: CastAd
  loc_A65E43: FStAdFunc var_A4
  loc_A65E46: FLdRfVar var_A4
  loc_A65E49: FLdPr Me
  loc_A65E4C: MemLdStr global_108
  loc_A65E4F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A65E54: IStI2 arg_C
  loc_A65E57: FFreeAd var_88 = ""
  loc_A65E5E: ExitProcHresult
End Function

Private Sub FealCtctHastaMsk_KeyPress(KeyAscii As Integer) 'A257E4
  'Data Table: 475CEC
  loc_A2579C: ILdI2 KeyAscii
  loc_A2579F: CI4UI1
  loc_A257A0: LitI4 &H20
  loc_A257A5: EqI4
  loc_A257A6: BranchF loc_A257E3
  loc_A257A9: LitVar_Missing var_A4
  loc_A257AC: PopAdLdVar
  loc_A257AD: LitVarI4
  loc_A257B5: PopAdLdVar
  loc_A257B6: ImpAdLdRf MemVar_D930A4
  loc_A257B9: NewIfNullPr frmCalendario
  loc_A257BC: frmCalendario.Show from_stack_1, from_stack_2
  loc_A257C1: ImpAdLdRf MemVar_D93028
  loc_A257C4: CDargRef
  loc_A257C8: FLdPr Me
  loc_A257CB: VCallAd Control_ID_FealCtctHastaMsk
  loc_A257CE: FStAdFunc var_A8
  loc_A257D1: FLdPr var_A8
  loc_A257D4: LateIdSt
  loc_A257D9: FFree1Ad var_A8
  loc_A257DC: LitStr vbNullString
  loc_A257DF: ImpAdStStrCopy MemVar_D93028
  loc_A257E3: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CC1DC
  'Data Table: 475CEC
  loc_9CC1C4: ILdRf Me
  loc_9CC1C7: CastAd
  loc_9CC1CA: FStAdFunc var_88
  loc_9CC1CD: FLdRfVar var_88
  loc_9CC1D0: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CC1D5: FFree1Ad var_88
  loc_9CC1D8: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A7A058
  'Data Table: 475CEC
  loc_A79FD8: LitI2_Byte 0
  loc_A79FDA: FLdPr Me
  loc_A79FDD: MemStI2 bGenerado
  loc_A79FE0: LitI2_Byte 0
  loc_A79FE2: ILdRf Me
  loc_A79FE5: CastAd
  loc_A79FE8: FStAdFunc var_88
  loc_A79FEB: FLdRfVar var_88
  loc_A79FEE: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A79FF3: FFree1Ad var_88
  loc_A79FF6: LitI2_Byte 0
  loc_A79FF8: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A79FFD: CStrDate
  loc_A79FFF: CVarStr var_98
  loc_A7A002: PopAdLdVar
  loc_A7A003: FLdPr Me
  loc_A7A006: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A7A009: FStAdFunc var_88
  loc_A7A00C: FLdPr var_88
  loc_A7A00F: LateIdSt
  loc_A7A014: FFree1Ad var_88
  loc_A7A017: FFree1Var var_98 = ""
  loc_A7A01A: LitI2_Byte 0
  loc_A7A01C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A7A021: CStrDate
  loc_A7A023: CVarStr var_98
  loc_A7A026: PopAdLdVar
  loc_A7A027: FLdPr Me
  loc_A7A02A: VCallAd Control_ID_FealCtctHastaMsk
  loc_A7A02D: FStAdFunc var_88
  loc_A7A030: FLdPr var_88
  loc_A7A033: LateIdSt
  loc_A7A038: FFree1Ad var_88
  loc_A7A03B: FFree1Var var_98 = ""
  loc_A7A03E: Call HabilitarCriterio()
  loc_A7A043: ILdRf Me
  loc_A7A046: CastAd
  loc_A7A049: FStAdFunc var_88
  loc_A7A04C: FLdRfVar var_88
  loc_A7A04F: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A7A054: FFree1Ad var_88
  loc_A7A057: ExitProcHresult
End Sub

Private Sub Form_Load() '9F6314
  'Data Table: 475CEC
  loc_9F62EC: ILdRf Me
  loc_9F62EF: CastAd
  loc_9F62F2: FStAdFunc var_88
  loc_9F62F5: FLdRfVar var_88
  loc_9F62F8: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9F62FD: FFree1Ad var_88
  loc_9F6300: Call cmdNueva_Click()
  loc_9F6305: ImpAdLdI2 MemVar_D93C8E
  loc_9F6308: FLdPr Me
  loc_9F630B: MemStI2 global_112
  loc_9F630E: LitI2_Byte &HFF
  loc_9F6310: ImpAdStI2 MemVar_D93C8E
  loc_9F6313: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9E5348
  'Data Table: 475CEC
  loc_9E5328: FLdPr Me
  loc_9E532B: VCallAd Control_ID_wbbReporte
  loc_9E532E: FStAdFunc var_88
  loc_9E5331: FLdRfVar var_88
  loc_9E5334: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9E5339: FFree1Ad var_88
  loc_9E533C: FLdPr Me
  loc_9E533F: MemLdI2 global_112
  loc_9E5342: ImpAdStI2 MemVar_D93C8E
  loc_9E5345: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A02F90
  'Data Table: 475CEC
  loc_A02F60: LitVarStr var_94, "Cerrando..."
  loc_A02F65: PopAdLdVar
  loc_A02F66: FLdPr Me
  loc_A02F69: VCallAd Control_ID_statusBar
  loc_A02F6C: FStAdFunc var_A8
  loc_A02F6F: FLdPr var_A8
  loc_A02F72: LateIdSt
  loc_A02F77: FFree1Ad var_A8
  loc_A02F7A: ILdRf Me
  loc_A02F7D: FStAdNoPop
  loc_A02F81: ImpAdLdRf MemVar_D9C5D8
  loc_A02F84: NewIfNullPr Global
  loc_A02F87: Global.Unload from_stack_1
  loc_A02F8C: FFree1Ad var_A8
  loc_A02F8F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DFBFC
  'Data Table: 475CEC
  loc_9DFBE0: LitI2_Byte 0
  loc_9DFBE2: PopTmpLdAd2 var_8A
  loc_9DFBE5: ILdRf Me
  loc_9DFBE8: CastAd
  loc_9DFBEB: FStAdFunc var_88
  loc_9DFBEE: FLdRfVar var_88
  loc_9DFBF1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DFBF6: FFree1Ad var_88
  loc_9DFBF9: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A14590
  'Data Table: 475CEC
  loc_A14558: FLdPr Me
  loc_A1455B: VCallAd Control_ID_statusBar
  loc_A1455E: FStAdFunc var_88
  loc_A14561: FLdPr var_88
  loc_A14564: LateIdLdVar var_98 DispID_1 0
  loc_A1456B: CStrVarTmp
  loc_A1456C: CVarStr var_A8
  loc_A1456F: PopAdLdVar
  loc_A14570: FLdPr Me
  loc_A14573: VCallAd Control_ID_statusBar
  loc_A14576: FStAdFunc var_BC
  loc_A14579: FLdPr var_BC
  loc_A1457C: LateIdSt
  loc_A14581: FFreeAd var_88 = ""
  loc_A14588: FFreeVar var_98 = ""
  loc_A1458F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '476930
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '47693F
  bGenerado = Value
End Sub

Public Function bLogosGet() '47694E
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '47695D
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'A41A38
  'Data Table: 475CEC
  loc_A419F4: LitI4 0
  loc_A419F9: LitI4 1
  loc_A419FE: FLdRfVar var_88
  loc_A41A01: Redim
  loc_A41A0B: FLdPr Me
  loc_A41A0E: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A41A11: CVarAd
  loc_A41A15: ParmAry1St
  loc_A41A1B: FLdPr Me
  loc_A41A1E: VCallAd Control_ID_FealCtctHastaMsk
  loc_A41A21: CVarAd
  loc_A41A25: ParmAry1St
  loc_A41A2B: FLdRfVar var_88
  loc_A41A2E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A41A33: FLdRfVar var_88
  loc_A41A36: Erase
  loc_A41A37: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C558C
  'Data Table: 475CEC
  loc_9C5574: LitI2_Byte 0
  loc_9C5576: FLdPr Me
  loc_9C5579: MemStI2 bLogos
  loc_9C557C: Call GeneraHTML()
  loc_9C5581: LitI2_Byte &HFF
  loc_9C5583: FLdPr Me
  loc_9C5586: MemStI2 bLogos
  loc_9C5589: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BF0FA8
  'Data Table: 475CEC
  loc_BF07B0: FLdPr Me
  loc_BF07B3: MemLdI2 bGenerado
  loc_BF07B6: BranchF loc_BF07BA
  loc_BF07B9: ExitProcHresult
  loc_BF07BA: LitVarStr var_94, "Generando reporte..."
  loc_BF07BF: PopAdLdVar
  loc_BF07C0: FLdPr Me
  loc_BF07C3: VCallAd Control_ID_statusBar
  loc_BF07C6: FStAdFunc var_A8
  loc_BF07C9: FLdPr var_A8
  loc_BF07CC: LateIdSt
  loc_BF07D1: FFree1Ad var_A8
  loc_BF07D4: LitI4 &HB
  loc_BF07D9: CI2I4
  loc_BF07DA: FLdPr Me
  loc_BF07DD: Me.MousePointer = from_stack_1
  loc_BF07E2: LitI2_Byte 0
  loc_BF07E4: PopTmpLdAd2 var_AA
  loc_BF07E7: from_stack_2v = FealCtctDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_BF07EC: FLdPr Me
  loc_BF07EF: MemLdStr global_108
  loc_BF07F2: LitStr vbNullString
  loc_BF07F5: NeStr
  loc_BF07F7: BranchF loc_BF07FD
  loc_BF07FA: Branch loc_BF0F7D
  loc_BF07FD: LitI2_Byte 0
  loc_BF07FF: PopTmpLdAd2 var_AA
  loc_BF0802: from_stack_2v = FealCtctHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_BF0807: FLdPr Me
  loc_BF080A: MemLdStr global_108
  loc_BF080D: LitStr vbNullString
  loc_BF0810: NeStr
  loc_BF0812: BranchF loc_BF0818
  loc_BF0815: Branch loc_BF0F7D
  loc_BF0818: FLdPr Me
  loc_BF081B: MemLdRfVar from_stack_1.global_92
  loc_BF081E: NewIfNullAd
  loc_BF0821: FStAd var_B0 
  loc_BF0825: FLdPr Me
  loc_BF0828: VCallAd Control_ID_FealCtctDesdeMsk
  loc_BF082B: FStAdFunc var_A8
  loc_BF082E: FLdPr var_A8
  loc_BF0831: LateIdLdVar var_D0 DispID_15 0
  loc_BF0838: PopAd
  loc_BF083A: FLdPr Me
  loc_BF083D: VCallAd Control_ID_FealCtctHastaMsk
  loc_BF0840: FStAdFunc var_100
  loc_BF0843: FLdPr var_100
  loc_BF0846: LateIdLdVar var_110 DispID_15 0
  loc_BF084D: PopAd
  loc_BF084F: LitStr " SELECT FeenAcpa, acrepago.NumeAcpa, ActuAcpa, acrepago.CodiEnre, DetaEnre, FeacAcpa, TocoAcpa, ImpoAcpa, NoarAcpa, "
  loc_BF0852: LitStr " IFNULL((SELECT SUM(ImpoArde) FROM archdeta WHERE archdeta.NumeArch = acrepago.NumeArch),0) ImpoRend,"
  loc_BF0855: ConcatStr
  loc_BF0856: FStStrNoPop var_B4
  loc_BF0859: LitStr " IFNULL((SELECT COUNT(*) FROM archdeta WHERE archdeta.NumeArch = acrepago.NumeArch),0) CantRend"
  loc_BF085C: ConcatStr
  loc_BF085D: FStStrNoPop var_B8
  loc_BF0860: LitStr " FROM acrepago"
  loc_BF0863: ConcatStr
  loc_BF0864: FStStrNoPop var_BC
  loc_BF0867: LitStr " INNER JOIN infogov.entereca ON infogov.entereca.CodiEnre = acrepago.CodiEnre"
  loc_BF086A: ConcatStr
  loc_BF086B: FStStrNoPop var_C0
  loc_BF086E: LitStr " WHERE FeenAcpa BETWEEN '"
  loc_BF0871: ConcatStr
  loc_BF0872: FStStrNoPop var_F4
  loc_BF0875: LitI4 1
  loc_BF087A: LitI4 1
  loc_BF087F: LitVarStr var_94, "yyyy-mm-dd"
  loc_BF0884: FStVarCopyObj var_F0
  loc_BF0887: FLdRfVar var_F0
  loc_BF088A: FLdRfVar var_D0
  loc_BF088D: CStrVarTmp
  loc_BF088E: CVarStr var_E0
  loc_BF0891: ImpAdCallI2 Format$(, )
  loc_BF0896: FStStrNoPop var_F8
  loc_BF0899: ConcatStr
  loc_BF089A: FStStrNoPop var_FC
  loc_BF089D: LitStr "' AND '"
  loc_BF08A0: ConcatStr
  loc_BF08A1: FStStrNoPop var_134
  loc_BF08A4: LitI4 1
  loc_BF08A9: LitI4 1
  loc_BF08AE: LitVarStr var_A4, "yyyy-mm-dd"
  loc_BF08B3: FStVarCopyObj var_130
  loc_BF08B6: FLdRfVar var_130
  loc_BF08B9: FLdRfVar var_110
  loc_BF08BC: CStrVarTmp
  loc_BF08BD: CVarStr var_120
  loc_BF08C0: ImpAdCallI2 Format$(, )
  loc_BF08C5: FStStrNoPop var_138
  loc_BF08C8: ConcatStr
  loc_BF08C9: FStStrNoPop var_13C
  loc_BF08CC: LitStr "'"
  loc_BF08CF: ConcatStr
  loc_BF08D0: FStStrNoPop var_140
  loc_BF08D3: LitStr " ORDER BY acrepago.FeenAcpa"
  loc_BF08D6: ConcatStr
  loc_BF08D7: FStStrNoPop var_144
  loc_BF08DA: FLdPr var_B0
  loc_BF08DD: Call clsctacte.RedefineRS(from_stack_1v)
  loc_BF08E2: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_BF08FD: FFreeAd var_A8 = ""
  loc_BF0904: FFreeVar var_D0 = "": var_E0 = "": var_F0 = "": var_110 = "": var_120 = ""
  loc_BF0913: FLdRfVar var_148
  loc_BF0916: FLdPr var_B0
  loc_BF0919: from_stack_1 = clsctacte.RecordCount
  loc_BF091E: ILdRf var_148
  loc_BF0921: LitI4 0
  loc_BF0926: EqI4
  loc_BF0927: BranchF loc_BF0935
  loc_BF092A: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BF092D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF0932: Branch loc_BF0F7D
  loc_BF0935: LitI4 0
  loc_BF093A: LitI4 1
  loc_BF093F: FLdPr Me
  loc_BF0942: MemLdRfVar from_stack_1.global_96
  loc_BF0945: Redim
  loc_BF094F: LitI4 0
  loc_BF0954: FLdRfVar var_148
  loc_BF0957: FLdPr var_B0
  loc_BF095A: from_stack_1 = clsctacte.RecordCount
  loc_BF095F: ILdRf var_148
  loc_BF0962: FLdPr Me
  loc_BF0965: MemLdRfVar from_stack_1.global_100
  loc_BF0968: Redim
  loc_BF0972: FLdPr var_B0
  loc_BF0975: Call clsctacte.MoveFirst()
  loc_BF097A: LitI4 1
  loc_BF097F: FLdPr Me
  loc_BF0982: MemLdRfVar from_stack_1.global_104
  loc_BF0985: FLdPr Me
  loc_BF0988: MemLdStr global_100
  loc_BF098B: LitI2_Byte 1
  loc_BF098D: FnUBound
  loc_BF098F: ForI4 var_150
  loc_BF0995: FLdRfVar var_154
  loc_BF0998: LitVarStr var_94, "FeenAcpa"
  loc_BF099D: PopAdLdVar
  loc_BF099E: FLdRfVar var_100
  loc_BF09A1: FLdRfVar var_A8
  loc_BF09A4: FLdPr var_B0
  loc_BF09A7: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF09AC: FLdPr var_A8
  loc_BF09AF:  = Me.Fields
  loc_BF09B4: FLdPr var_100
  loc_BF09B7: from_stack_2 = Me.Item(from_stack_1)
  loc_BF09BC: LitI2_Byte 0
  loc_BF09BE: LitVar_Missing var_E0
  loc_BF09C1: LitI2_Byte 0
  loc_BF09C3: FLdZeroAd var_154
  loc_BF09C6: CVarAd
  loc_BF09CA: PopAdLdVar
  loc_BF09CB: FLdPr Me
  loc_BF09CE: MemLdStr global_104
  loc_BF09D1: FLdPr Me
  loc_BF09D4: MemLdStr global_100
  loc_BF09D7: AryLock
  loc_BF09DA: Ary1LdPr
  loc_BF09DB: MemLdRfVar from_stack_1.global_0
  loc_BF09DE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF09E3: AryUnlock
  loc_BF09E6: FFreeAd var_A8 = ""
  loc_BF09ED: FFreeVar var_D0 = ""
  loc_BF09F4: FLdRfVar var_154
  loc_BF09F7: LitVarStr var_94, "NumeAcpa"
  loc_BF09FC: PopAdLdVar
  loc_BF09FD: FLdRfVar var_100
  loc_BF0A00: FLdRfVar var_A8
  loc_BF0A03: FLdPr var_B0
  loc_BF0A06: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0A0B: FLdPr var_A8
  loc_BF0A0E:  = Me.Fields
  loc_BF0A13: FLdPr var_100
  loc_BF0A16: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0A1B: LitI2_Byte 0
  loc_BF0A1D: LitVar_Missing var_E0
  loc_BF0A20: LitI2_Byte 0
  loc_BF0A22: FLdZeroAd var_154
  loc_BF0A25: CVarAd
  loc_BF0A29: PopAdLdVar
  loc_BF0A2A: FLdPr Me
  loc_BF0A2D: MemLdStr global_104
  loc_BF0A30: FLdPr Me
  loc_BF0A33: MemLdStr global_100
  loc_BF0A36: AryLock
  loc_BF0A39: Ary1LdPr
  loc_BF0A3A: MemLdRfVar from_stack_1.global_4
  loc_BF0A3D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0A42: AryUnlock
  loc_BF0A45: FFreeAd var_A8 = ""
  loc_BF0A4C: FFreeVar var_D0 = ""
  loc_BF0A53: FLdRfVar var_154
  loc_BF0A56: LitVarStr var_94, "ActuAcpa"
  loc_BF0A5B: PopAdLdVar
  loc_BF0A5C: FLdRfVar var_100
  loc_BF0A5F: FLdRfVar var_A8
  loc_BF0A62: FLdPr var_B0
  loc_BF0A65: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0A6A: FLdPr var_A8
  loc_BF0A6D:  = Me.Fields
  loc_BF0A72: FLdPr var_100
  loc_BF0A75: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0A7A: LitI2_Byte 0
  loc_BF0A7C: LitVar_Missing var_E0
  loc_BF0A7F: LitI2_Byte 0
  loc_BF0A81: FLdZeroAd var_154
  loc_BF0A84: CVarAd
  loc_BF0A88: PopAdLdVar
  loc_BF0A89: FLdPr Me
  loc_BF0A8C: MemLdStr global_104
  loc_BF0A8F: FLdPr Me
  loc_BF0A92: MemLdStr global_100
  loc_BF0A95: AryLock
  loc_BF0A98: Ary1LdPr
  loc_BF0A99: MemLdRfVar from_stack_1.global_8
  loc_BF0A9C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0AA1: AryUnlock
  loc_BF0AA4: FFreeAd var_A8 = ""
  loc_BF0AAB: FFreeVar var_D0 = ""
  loc_BF0AB2: FLdRfVar var_154
  loc_BF0AB5: LitVarStr var_94, "FeacAcpa"
  loc_BF0ABA: PopAdLdVar
  loc_BF0ABB: FLdRfVar var_100
  loc_BF0ABE: FLdRfVar var_A8
  loc_BF0AC1: FLdPr var_B0
  loc_BF0AC4: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0AC9: FLdPr var_A8
  loc_BF0ACC:  = Me.Fields
  loc_BF0AD1: FLdPr var_100
  loc_BF0AD4: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0AD9: LitI2_Byte 0
  loc_BF0ADB: LitVar_Missing var_E0
  loc_BF0ADE: LitI2_Byte 0
  loc_BF0AE0: FLdZeroAd var_154
  loc_BF0AE3: CVarAd
  loc_BF0AE7: PopAdLdVar
  loc_BF0AE8: FLdPr Me
  loc_BF0AEB: MemLdStr global_104
  loc_BF0AEE: FLdPr Me
  loc_BF0AF1: MemLdStr global_100
  loc_BF0AF4: AryLock
  loc_BF0AF7: Ary1LdPr
  loc_BF0AF8: MemLdRfVar from_stack_1.global_20
  loc_BF0AFB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0B00: AryUnlock
  loc_BF0B03: FFreeAd var_A8 = ""
  loc_BF0B0A: FFreeVar var_D0 = ""
  loc_BF0B11: FLdRfVar var_154
  loc_BF0B14: LitVarStr var_94, "CodiEnre"
  loc_BF0B19: PopAdLdVar
  loc_BF0B1A: FLdRfVar var_100
  loc_BF0B1D: FLdRfVar var_A8
  loc_BF0B20: FLdPr var_B0
  loc_BF0B23: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0B28: FLdPr var_A8
  loc_BF0B2B:  = Me.Fields
  loc_BF0B30: FLdPr var_100
  loc_BF0B33: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0B38: LitI2_Byte 0
  loc_BF0B3A: LitVar_Missing var_E0
  loc_BF0B3D: LitI2_Byte 0
  loc_BF0B3F: FLdZeroAd var_154
  loc_BF0B42: CVarAd
  loc_BF0B46: PopAdLdVar
  loc_BF0B47: FLdPr Me
  loc_BF0B4A: MemLdStr global_104
  loc_BF0B4D: FLdPr Me
  loc_BF0B50: MemLdStr global_100
  loc_BF0B53: AryLock
  loc_BF0B56: Ary1LdPr
  loc_BF0B57: MemLdRfVar from_stack_1.global_12
  loc_BF0B5A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0B5F: AryUnlock
  loc_BF0B62: FFreeAd var_A8 = ""
  loc_BF0B69: FFreeVar var_D0 = ""
  loc_BF0B70: FLdRfVar var_154
  loc_BF0B73: LitVarStr var_94, "DetaEnre"
  loc_BF0B78: PopAdLdVar
  loc_BF0B79: FLdRfVar var_100
  loc_BF0B7C: FLdRfVar var_A8
  loc_BF0B7F: FLdPr var_B0
  loc_BF0B82: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0B87: FLdPr var_A8
  loc_BF0B8A:  = Me.Fields
  loc_BF0B8F: FLdPr var_100
  loc_BF0B92: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0B97: LitI2_Byte 0
  loc_BF0B99: LitVar_Missing var_E0
  loc_BF0B9C: LitI2_Byte 0
  loc_BF0B9E: FLdZeroAd var_154
  loc_BF0BA1: CVarAd
  loc_BF0BA5: PopAdLdVar
  loc_BF0BA6: FLdPr Me
  loc_BF0BA9: MemLdStr global_104
  loc_BF0BAC: FLdPr Me
  loc_BF0BAF: MemLdStr global_100
  loc_BF0BB2: AryLock
  loc_BF0BB5: Ary1LdPr
  loc_BF0BB6: MemLdRfVar from_stack_1.global_16
  loc_BF0BB9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0BBE: AryUnlock
  loc_BF0BC1: FFreeAd var_A8 = ""
  loc_BF0BC8: FFreeVar var_D0 = ""
  loc_BF0BCF: FLdRfVar var_D0
  loc_BF0BD2: FLdRfVar var_154
  loc_BF0BD5: LitVarStr var_94, "TocoAcpa"
  loc_BF0BDA: PopAdLdVar
  loc_BF0BDB: FLdRfVar var_100
  loc_BF0BDE: FLdRfVar var_A8
  loc_BF0BE1: FLdPr var_B0
  loc_BF0BE4: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0BE9: FLdPr var_A8
  loc_BF0BEC:  = Me.Fields
  loc_BF0BF1: FLdPr var_100
  loc_BF0BF4: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0BF9: FLdPr var_154
  loc_BF0BFC:  = Me.Value
  loc_BF0C01: LitI2_Byte 0
  loc_BF0C03: LitI4 1
  loc_BF0C08: FLdPr Me
  loc_BF0C0B: MemLdStr global_96
  loc_BF0C0E: AryLock
  loc_BF0C11: Ary1LdPr
  loc_BF0C12: MemLdRfVar from_stack_1.global_24
  loc_BF0C15: CVarRef
  loc_BF0C1A: LitI2_Byte &HFF
  loc_BF0C1C: FLdRfVar var_D0
  loc_BF0C1F: FnCLngVar
  loc_BF0C21: CVarI4
  loc_BF0C25: PopAdLdVar
  loc_BF0C26: FLdPr Me
  loc_BF0C29: MemLdStr global_104
  loc_BF0C2C: FLdPr Me
  loc_BF0C2F: MemLdStr global_100
  loc_BF0C32: AryLock
  loc_BF0C35: Ary1LdPr
  loc_BF0C36: MemLdRfVar from_stack_1.global_24
  loc_BF0C39: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0C3E: AryUnlock
  loc_BF0C41: AryUnlock
  loc_BF0C44: FFreeAd var_A8 = "": var_100 = ""
  loc_BF0C4D: FFree1Var var_D0 = ""
  loc_BF0C50: FLdRfVar var_D0
  loc_BF0C53: FLdRfVar var_154
  loc_BF0C56: LitVarStr var_94, "ImpoAcpa"
  loc_BF0C5B: PopAdLdVar
  loc_BF0C5C: FLdRfVar var_100
  loc_BF0C5F: FLdRfVar var_A8
  loc_BF0C62: FLdPr var_B0
  loc_BF0C65: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0C6A: FLdPr var_A8
  loc_BF0C6D:  = Me.Fields
  loc_BF0C72: FLdPr var_100
  loc_BF0C75: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0C7A: FLdPr var_154
  loc_BF0C7D:  = Me.Value
  loc_BF0C82: LitI2_Byte 0
  loc_BF0C84: LitI4 1
  loc_BF0C89: FLdPr Me
  loc_BF0C8C: MemLdStr global_96
  loc_BF0C8F: AryLock
  loc_BF0C92: Ary1LdPr
  loc_BF0C93: MemLdRfVar from_stack_1.global_28
  loc_BF0C96: CVarRef
  loc_BF0C9B: LitI2_Byte &HFF
  loc_BF0C9D: FLdRfVar var_D0
  loc_BF0CA0: FnCDblVar
  loc_BF0CA2: CVarR8
  loc_BF0CA6: PopAdLdVar
  loc_BF0CA7: FLdPr Me
  loc_BF0CAA: MemLdStr global_104
  loc_BF0CAD: FLdPr Me
  loc_BF0CB0: MemLdStr global_100
  loc_BF0CB3: AryLock
  loc_BF0CB6: Ary1LdPr
  loc_BF0CB7: MemLdRfVar from_stack_1.global_28
  loc_BF0CBA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0CBF: AryUnlock
  loc_BF0CC2: AryUnlock
  loc_BF0CC5: FFreeAd var_A8 = "": var_100 = ""
  loc_BF0CCE: FFree1Var var_D0 = ""
  loc_BF0CD1: FLdRfVar var_D0
  loc_BF0CD4: FLdRfVar var_154
  loc_BF0CD7: LitVarStr var_94, "CantRend"
  loc_BF0CDC: PopAdLdVar
  loc_BF0CDD: FLdRfVar var_100
  loc_BF0CE0: FLdRfVar var_A8
  loc_BF0CE3: FLdPr var_B0
  loc_BF0CE6: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0CEB: FLdPr var_A8
  loc_BF0CEE:  = Me.Fields
  loc_BF0CF3: FLdPr var_100
  loc_BF0CF6: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0CFB: FLdPr var_154
  loc_BF0CFE:  = Me.Value
  loc_BF0D03: LitI2_Byte 0
  loc_BF0D05: LitI4 1
  loc_BF0D0A: FLdPr Me
  loc_BF0D0D: MemLdStr global_96
  loc_BF0D10: AryLock
  loc_BF0D13: Ary1LdPr
  loc_BF0D14: MemLdRfVar from_stack_1.global_32
  loc_BF0D17: CVarRef
  loc_BF0D1C: LitI2_Byte &HFF
  loc_BF0D1E: FLdRfVar var_D0
  loc_BF0D21: FnCIntVar
  loc_BF0D23: CVarI2 var_A4
  loc_BF0D26: PopAdLdVar
  loc_BF0D27: FLdPr Me
  loc_BF0D2A: MemLdStr global_104
  loc_BF0D2D: FLdPr Me
  loc_BF0D30: MemLdStr global_100
  loc_BF0D33: AryLock
  loc_BF0D36: Ary1LdPr
  loc_BF0D37: MemLdRfVar from_stack_1.global_32
  loc_BF0D3A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0D3F: AryUnlock
  loc_BF0D42: AryUnlock
  loc_BF0D45: FFreeAd var_A8 = "": var_100 = ""
  loc_BF0D4E: FFree1Var var_D0 = ""
  loc_BF0D51: FLdRfVar var_D0
  loc_BF0D54: FLdRfVar var_154
  loc_BF0D57: LitVarStr var_94, "ImpoRend"
  loc_BF0D5C: PopAdLdVar
  loc_BF0D5D: FLdRfVar var_100
  loc_BF0D60: FLdRfVar var_A8
  loc_BF0D63: FLdPr var_B0
  loc_BF0D66: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0D6B: FLdPr var_A8
  loc_BF0D6E:  = Me.Fields
  loc_BF0D73: FLdPr var_100
  loc_BF0D76: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0D7B: FLdPr var_154
  loc_BF0D7E:  = Me.Value
  loc_BF0D83: LitI2_Byte 0
  loc_BF0D85: LitI4 1
  loc_BF0D8A: FLdPr Me
  loc_BF0D8D: MemLdStr global_96
  loc_BF0D90: AryLock
  loc_BF0D93: Ary1LdPr
  loc_BF0D94: MemLdRfVar from_stack_1.global_36
  loc_BF0D97: CVarRef
  loc_BF0D9C: LitI2_Byte &HFF
  loc_BF0D9E: FLdRfVar var_D0
  loc_BF0DA1: FnCDblVar
  loc_BF0DA3: CVarR8
  loc_BF0DA7: PopAdLdVar
  loc_BF0DA8: FLdPr Me
  loc_BF0DAB: MemLdStr global_104
  loc_BF0DAE: FLdPr Me
  loc_BF0DB1: MemLdStr global_100
  loc_BF0DB4: AryLock
  loc_BF0DB7: Ary1LdPr
  loc_BF0DB8: MemLdRfVar from_stack_1.global_36
  loc_BF0DBB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0DC0: AryUnlock
  loc_BF0DC3: AryUnlock
  loc_BF0DC6: FFreeAd var_A8 = "": var_100 = ""
  loc_BF0DCF: FFree1Var var_D0 = ""
  loc_BF0DD2: FLdRfVar var_D0
  loc_BF0DD5: FLdRfVar var_154
  loc_BF0DD8: LitVarStr var_94, "CantRend"
  loc_BF0DDD: PopAdLdVar
  loc_BF0DDE: FLdRfVar var_100
  loc_BF0DE1: FLdRfVar var_A8
  loc_BF0DE4: FLdPr var_B0
  loc_BF0DE7: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0DEC: FLdPr var_A8
  loc_BF0DEF:  = Me.Fields
  loc_BF0DF4: FLdPr var_100
  loc_BF0DF7: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0DFC: FLdPr var_154
  loc_BF0DFF:  = Me.Value
  loc_BF0E04: FLdRfVar var_E0
  loc_BF0E07: FLdRfVar var_178
  loc_BF0E0A: LitVarStr var_A4, "TocoAcpa"
  loc_BF0E0F: PopAdLdVar
  loc_BF0E10: FLdRfVar var_174
  loc_BF0E13: FLdRfVar var_170
  loc_BF0E16: FLdPr var_B0
  loc_BF0E19: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0E1E: FLdPr var_170
  loc_BF0E21:  = Me.Fields
  loc_BF0E26: FLdPr var_174
  loc_BF0E29: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0E2E: FLdPr var_178
  loc_BF0E31:  = Me.Value
  loc_BF0E36: LitI2_Byte 0
  loc_BF0E38: LitI4 1
  loc_BF0E3D: FLdPr Me
  loc_BF0E40: MemLdStr global_96
  loc_BF0E43: AryLock
  loc_BF0E46: Ary1LdPr
  loc_BF0E47: MemLdRfVar from_stack_1.global_40
  loc_BF0E4A: CVarRef
  loc_BF0E4F: LitI2_Byte &HFF
  loc_BF0E51: FLdRfVar var_D0
  loc_BF0E54: FnCIntVar
  loc_BF0E56: FLdRfVar var_E0
  loc_BF0E59: FnCIntVar
  loc_BF0E5B: SubI2
  loc_BF0E5C: CVarI2 var_168
  loc_BF0E5F: PopAdLdVar
  loc_BF0E60: FLdPr Me
  loc_BF0E63: MemLdStr global_104
  loc_BF0E66: FLdPr Me
  loc_BF0E69: MemLdStr global_100
  loc_BF0E6C: AryLock
  loc_BF0E6F: Ary1LdPr
  loc_BF0E70: MemLdRfVar from_stack_1.global_40
  loc_BF0E73: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0E78: AryUnlock
  loc_BF0E7B: AryUnlock
  loc_BF0E7E: FFreeAd var_A8 = "": var_100 = "": var_154 = "": var_170 = "": var_174 = ""
  loc_BF0E8D: FFreeVar var_D0 = ""
  loc_BF0E94: FLdRfVar var_D0
  loc_BF0E97: FLdRfVar var_154
  loc_BF0E9A: LitVarStr var_94, "ImpoRend"
  loc_BF0E9F: PopAdLdVar
  loc_BF0EA0: FLdRfVar var_100
  loc_BF0EA3: FLdRfVar var_A8
  loc_BF0EA6: FLdPr var_B0
  loc_BF0EA9: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0EAE: FLdPr var_A8
  loc_BF0EB1:  = Me.Fields
  loc_BF0EB6: FLdPr var_100
  loc_BF0EB9: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0EBE: FLdPr var_154
  loc_BF0EC1:  = Me.Value
  loc_BF0EC6: FLdRfVar var_E0
  loc_BF0EC9: FLdRfVar var_178
  loc_BF0ECC: LitVarStr var_A4, "ImpoAcpa"
  loc_BF0ED1: PopAdLdVar
  loc_BF0ED2: FLdRfVar var_174
  loc_BF0ED5: FLdRfVar var_170
  loc_BF0ED8: FLdPr var_B0
  loc_BF0EDB: from_stack_1v = clsctacte.RsFrmGet()
  loc_BF0EE0: FLdPr var_170
  loc_BF0EE3:  = Me.Fields
  loc_BF0EE8: FLdPr var_174
  loc_BF0EEB: from_stack_2 = Me.Item(from_stack_1)
  loc_BF0EF0: FLdPr var_178
  loc_BF0EF3:  = Me.Value
  loc_BF0EF8: LitI2_Byte 0
  loc_BF0EFA: LitI4 1
  loc_BF0EFF: FLdPr Me
  loc_BF0F02: MemLdStr global_96
  loc_BF0F05: AryLock
  loc_BF0F08: Ary1LdPr
  loc_BF0F09: MemLdRfVar from_stack_1.global_44
  loc_BF0F0C: CVarRef
  loc_BF0F11: LitI2_Byte &HFF
  loc_BF0F13: FLdRfVar var_D0
  loc_BF0F16: FnCDblVar
  loc_BF0F18: FLdRfVar var_E0
  loc_BF0F1B: FnCDblVar
  loc_BF0F1D: SubR4
  loc_BF0F1E: CVarR8
  loc_BF0F22: PopAdLdVar
  loc_BF0F23: FLdPr Me
  loc_BF0F26: MemLdStr global_104
  loc_BF0F29: FLdPr Me
  loc_BF0F2C: MemLdStr global_100
  loc_BF0F2F: AryLock
  loc_BF0F32: Ary1LdPr
  loc_BF0F33: MemLdRfVar from_stack_1.global_44
  loc_BF0F36: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF0F3B: AryUnlock
  loc_BF0F3E: AryUnlock
  loc_BF0F41: FFreeAd var_A8 = "": var_100 = "": var_154 = "": var_170 = "": var_174 = ""
  loc_BF0F50: FFreeVar var_D0 = ""
  loc_BF0F57: LitI2_Byte 1
  loc_BF0F59: PopTmpLdAd2 var_AA
  loc_BF0F5C: FLdPr var_B0
  loc_BF0F5F: Call clsctacte.Move(from_stack_1v)
  loc_BF0F64: FLdPr Me
  loc_BF0F67: MemLdRfVar from_stack_1.global_104
  loc_BF0F6A: NextI4 var_150, loc_BF0995
  loc_BF0F6F: LitNothing
  loc_BF0F71: FStAd var_B0 
  loc_BF0F75: LitI2_Byte &HFF
  loc_BF0F77: FLdPr Me
  loc_BF0F7A: MemStI2 bGenerado
  loc_BF0F7D: LitI4 0
  loc_BF0F82: CI2I4
  loc_BF0F83: FLdPr Me
  loc_BF0F86: Me.MousePointer = from_stack_1
  loc_BF0F8B: LitVarStr var_94, vbNullString
  loc_BF0F90: PopAdLdVar
  loc_BF0F91: FLdPr Me
  loc_BF0F94: VCallAd Control_ID_statusBar
  loc_BF0F97: FStAdFunc var_A8
  loc_BF0F9A: FLdPr var_A8
  loc_BF0F9D: LateIdSt
  loc_BF0FA2: FFree1Ad var_A8
  loc_BF0FA5: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B63830
  'Data Table: 475CEC
  loc_B633E0: FLdRfVar var_88
  loc_B633E3: LitI2_Byte 0
  loc_B633E5: LitI2_Byte &HFF
  loc_B633E7: ImpAdLdI4 MemVar_D93C84
  loc_B633EA: FLdPr Me
  loc_B633ED: MemLdRfVar from_stack_1.global_56
  loc_B633F0: NewIfNullPr IFileSystem3
  loc_B633F3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B633F8: ILdRf var_88
  loc_B633FB: FLdPr Me
  loc_B633FE: MemStVarAd
  loc_B63402: FFree1Ad var_88
  loc_B63405: LitI2_Byte &HFF
  loc_B63407: ImpAdStI2 MemVar_D93C8A
  loc_B6340A: Call Proc_344_24_BBB62C()
  loc_B6340F: LitI4 1
  loc_B63414: FLdPr Me
  loc_B63417: MemLdRfVar from_stack_1.global_104
  loc_B6341A: FLdPr Me
  loc_B6341D: MemLdStr global_100
  loc_B63420: LitI2_Byte 1
  loc_B63422: FnUBound
  loc_B63424: ForI4 var_90
  loc_B6342A: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B6342F: PopAdLdVar
  loc_B63430: FLdPr Me
  loc_B63433: MemLdRfVar from_stack_1.global_60
  loc_B63436: LdPrVar
  loc_B63438: LateMemCall
  loc_B6343E: FLdPr Me
  loc_B63441: MemLdStr global_104
  loc_B63444: FLdPr Me
  loc_B63447: MemLdStr global_100
  loc_B6344A: AryLock
  loc_B6344D: Ary1LdRf
  loc_B6344E: FStR4 var_B8
  loc_B63451: LitStr vbNullString
  loc_B63454: LitI2_Byte 0
  loc_B63456: LitI2_Byte 0
  loc_B63458: LitI2_Byte 0
  loc_B6345A: LitStr "center"
  loc_B6345D: FMemLdR4 var_B8(0)
  loc_B63462: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B63467: CVarStr var_C8
  loc_B6346A: PopAdLdVar
  loc_B6346B: FLdPr Me
  loc_B6346E: MemLdRfVar from_stack_1.global_60
  loc_B63471: LdPrVar
  loc_B63473: LateMemCall
  loc_B63479: FFree1Var var_C8 = ""
  loc_B6347C: LitStr vbNullString
  loc_B6347F: LitI2_Byte 0
  loc_B63481: LitI2_Byte 0
  loc_B63483: LitI2_Byte 0
  loc_B63485: LitStr "right"
  loc_B63488: FMemLdR4 var_B8(4)
  loc_B6348D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B63492: CVarStr var_C8
  loc_B63495: PopAdLdVar
  loc_B63496: FLdPr Me
  loc_B63499: MemLdRfVar from_stack_1.global_60
  loc_B6349C: LdPrVar
  loc_B6349E: LateMemCall
  loc_B634A4: FFree1Var var_C8 = ""
  loc_B634A7: LitStr vbNullString
  loc_B634AA: LitI2_Byte 0
  loc_B634AC: LitI2_Byte 0
  loc_B634AE: LitI2_Byte 0
  loc_B634B0: LitStr "right"
  loc_B634B3: FMemLdR4 var_B8(8)
  loc_B634B8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B634BD: CVarStr var_C8
  loc_B634C0: PopAdLdVar
  loc_B634C1: FLdPr Me
  loc_B634C4: MemLdRfVar from_stack_1.global_60
  loc_B634C7: LdPrVar
  loc_B634C9: LateMemCall
  loc_B634CF: FFree1Var var_C8 = ""
  loc_B634D2: LitStr vbNullString
  loc_B634D5: LitI2_Byte 0
  loc_B634D7: LitI2_Byte 0
  loc_B634D9: LitI2_Byte 0
  loc_B634DB: LitStr "center"
  loc_B634DE: FMemLdR4 var_B8(20)
  loc_B634E3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B634E8: CVarStr var_C8
  loc_B634EB: PopAdLdVar
  loc_B634EC: FLdPr Me
  loc_B634EF: MemLdRfVar from_stack_1.global_60
  loc_B634F2: LdPrVar
  loc_B634F4: LateMemCall
  loc_B634FA: FFree1Var var_C8 = ""
  loc_B634FD: LitStr vbNullString
  loc_B63500: LitI2_Byte 0
  loc_B63502: LitI2_Byte 0
  loc_B63504: LitI2_Byte 0
  loc_B63506: LitStr "right"
  loc_B63509: FMemLdR4 var_B8(12)
  loc_B6350E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B63513: CVarStr var_C8
  loc_B63516: PopAdLdVar
  loc_B63517: FLdPr Me
  loc_B6351A: MemLdRfVar from_stack_1.global_60
  loc_B6351D: LdPrVar
  loc_B6351F: LateMemCall
  loc_B63525: FFree1Var var_C8 = ""
  loc_B63528: LitStr vbNullString
  loc_B6352B: LitI2_Byte 0
  loc_B6352D: LitI2_Byte 0
  loc_B6352F: LitI2_Byte 0
  loc_B63531: LitStr "left"
  loc_B63534: FMemLdR4 var_B8(16)
  loc_B63539: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6353E: CVarStr var_C8
  loc_B63541: PopAdLdVar
  loc_B63542: FLdPr Me
  loc_B63545: MemLdRfVar from_stack_1.global_60
  loc_B63548: LdPrVar
  loc_B6354A: LateMemCall
  loc_B63550: FFree1Var var_C8 = ""
  loc_B63553: LitStr vbNullString
  loc_B63556: LitI2_Byte 0
  loc_B63558: LitI2_Byte 0
  loc_B6355A: LitI2_Byte 0
  loc_B6355C: LitStr "right"
  loc_B6355F: FMemLdR4 var_B8(24)
  loc_B63564: CI2Str
  loc_B63566: CStrUI1
  loc_B63568: FStStrNoPop var_CC
  loc_B6356B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B63570: CVarStr var_C8
  loc_B63573: PopAdLdVar
  loc_B63574: FLdPr Me
  loc_B63577: MemLdRfVar from_stack_1.global_60
  loc_B6357A: LdPrVar
  loc_B6357C: LateMemCall
  loc_B63582: FFree1Str var_CC
  loc_B63585: FFree1Var var_C8 = ""
  loc_B63588: LitStr vbNullString
  loc_B6358B: LitI2_Byte 0
  loc_B6358D: LitI2_Byte 0
  loc_B6358F: LitI2_Byte 0
  loc_B63591: LitStr "right"
  loc_B63594: FMemLdR4 var_B8(28)
  loc_B63599: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6359E: CVarStr var_C8
  loc_B635A1: PopAdLdVar
  loc_B635A2: FLdPr Me
  loc_B635A5: MemLdRfVar from_stack_1.global_60
  loc_B635A8: LdPrVar
  loc_B635AA: LateMemCall
  loc_B635B0: FFree1Var var_C8 = ""
  loc_B635B3: LitStr vbNullString
  loc_B635B6: LitI2_Byte 0
  loc_B635B8: LitI2_Byte 0
  loc_B635BA: LitI2_Byte 0
  loc_B635BC: LitStr "right"
  loc_B635BF: FMemLdR4 var_B8(32)
  loc_B635C4: CI2Str
  loc_B635C6: CStrUI1
  loc_B635C8: FStStrNoPop var_CC
  loc_B635CB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B635D0: CVarStr var_C8
  loc_B635D3: PopAdLdVar
  loc_B635D4: FLdPr Me
  loc_B635D7: MemLdRfVar from_stack_1.global_60
  loc_B635DA: LdPrVar
  loc_B635DC: LateMemCall
  loc_B635E2: FFree1Str var_CC
  loc_B635E5: FFree1Var var_C8 = ""
  loc_B635E8: LitStr vbNullString
  loc_B635EB: LitI2_Byte 0
  loc_B635ED: LitI2_Byte 0
  loc_B635EF: LitI2_Byte 0
  loc_B635F1: LitStr "right"
  loc_B635F4: FMemLdR4 var_B8(36)
  loc_B635F9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B635FE: CVarStr var_C8
  loc_B63601: PopAdLdVar
  loc_B63602: FLdPr Me
  loc_B63605: MemLdRfVar from_stack_1.global_60
  loc_B63608: LdPrVar
  loc_B6360A: LateMemCall
  loc_B63610: FFree1Var var_C8 = ""
  loc_B63613: LitStr vbNullString
  loc_B63616: LitI2_Byte 0
  loc_B63618: LitI2_Byte 0
  loc_B6361A: LitI2_Byte 0
  loc_B6361C: LitStr "right"
  loc_B6361F: FMemLdR4 var_B8(40)
  loc_B63624: CI2Str
  loc_B63626: CStrUI1
  loc_B63628: FStStrNoPop var_CC
  loc_B6362B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B63630: CVarStr var_C8
  loc_B63633: PopAdLdVar
  loc_B63634: FLdPr Me
  loc_B63637: MemLdRfVar from_stack_1.global_60
  loc_B6363A: LdPrVar
  loc_B6363C: LateMemCall
  loc_B63642: FFree1Str var_CC
  loc_B63645: FFree1Var var_C8 = ""
  loc_B63648: LitStr vbNullString
  loc_B6364B: LitI2_Byte 0
  loc_B6364D: LitI2_Byte 0
  loc_B6364F: LitI2_Byte 0
  loc_B63651: LitStr "right"
  loc_B63654: FMemLdR4 var_B8(44)
  loc_B63659: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B6365E: CVarStr var_C8
  loc_B63661: PopAdLdVar
  loc_B63662: FLdPr Me
  loc_B63665: MemLdRfVar from_stack_1.global_60
  loc_B63668: LdPrVar
  loc_B6366A: LateMemCall
  loc_B63670: FFree1Var var_C8 = ""
  loc_B63673: LitI4 0
  loc_B63678: FStR4 var_B8
  loc_B6367B: AryUnlock
  loc_B6367E: LitVarStr var_A0, "     </tr>"
  loc_B63683: PopAdLdVar
  loc_B63684: FLdPr Me
  loc_B63687: MemLdRfVar from_stack_1.global_60
  loc_B6368A: LdPrVar
  loc_B6368C: LateMemCall
  loc_B63692: FLdPr Me
  loc_B63695: MemLdRfVar from_stack_1.global_104
  loc_B63698: NextI4 var_90, loc_B6342A
  loc_B6369D: LitVarStr var_A0, "  <tr valign=""top"" class=""Totales"">"
  loc_B636A2: PopAdLdVar
  loc_B636A3: FLdPr Me
  loc_B636A6: MemLdRfVar from_stack_1.global_60
  loc_B636A9: LdPrVar
  loc_B636AB: LateMemCall
  loc_B636B1: LitVarStr var_A0, "    <td colspan=""6"" align=""right"">Totales</td>"
  loc_B636B6: PopAdLdVar
  loc_B636B7: FLdPr Me
  loc_B636BA: MemLdRfVar from_stack_1.global_60
  loc_B636BD: LdPrVar
  loc_B636BF: LateMemCall
  loc_B636C5: LitI4 1
  loc_B636CA: FLdPr Me
  loc_B636CD: MemLdStr global_96
  loc_B636D0: AryLock
  loc_B636D3: Ary1LdRf
  loc_B636D4: FStR4 var_D4
  loc_B636D7: LitStr vbNullString
  loc_B636DA: LitI2_Byte 0
  loc_B636DC: LitI2_Byte 0
  loc_B636DE: LitI2_Byte 0
  loc_B636E0: LitStr "right"
  loc_B636E3: FMemLdR4 var_D4(24)
  loc_B636E8: CI4Str
  loc_B636E9: CStrI4
  loc_B636EB: FStStrNoPop var_CC
  loc_B636EE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B636F3: CVarStr var_C8
  loc_B636F6: PopAdLdVar
  loc_B636F7: FLdPr Me
  loc_B636FA: MemLdRfVar from_stack_1.global_60
  loc_B636FD: LdPrVar
  loc_B636FF: LateMemCall
  loc_B63705: FFree1Str var_CC
  loc_B63708: FFree1Var var_C8 = ""
  loc_B6370B: LitStr vbNullString
  loc_B6370E: LitI2_Byte 0
  loc_B63710: LitI2_Byte 0
  loc_B63712: LitI2_Byte 0
  loc_B63714: LitStr "right"
  loc_B63717: FMemLdR4 var_D4(28)
  loc_B6371C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B63721: CVarStr var_C8
  loc_B63724: PopAdLdVar
  loc_B63725: FLdPr Me
  loc_B63728: MemLdRfVar from_stack_1.global_60
  loc_B6372B: LdPrVar
  loc_B6372D: LateMemCall
  loc_B63733: FFree1Var var_C8 = ""
  loc_B63736: LitStr vbNullString
  loc_B63739: LitI2_Byte 0
  loc_B6373B: LitI2_Byte 0
  loc_B6373D: LitI2_Byte 0
  loc_B6373F: LitStr "right"
  loc_B63742: FMemLdR4 var_D4(32)
  loc_B63747: CI4Str
  loc_B63748: CStrI4
  loc_B6374A: FStStrNoPop var_CC
  loc_B6374D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B63752: CVarStr var_C8
  loc_B63755: PopAdLdVar
  loc_B63756: FLdPr Me
  loc_B63759: MemLdRfVar from_stack_1.global_60
  loc_B6375C: LdPrVar
  loc_B6375E: LateMemCall
  loc_B63764: FFree1Str var_CC
  loc_B63767: FFree1Var var_C8 = ""
  loc_B6376A: LitStr vbNullString
  loc_B6376D: LitI2_Byte 0
  loc_B6376F: LitI2_Byte 0
  loc_B63771: LitI2_Byte 0
  loc_B63773: LitStr "right"
  loc_B63776: FMemLdR4 var_D4(36)
  loc_B6377B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B63780: CVarStr var_C8
  loc_B63783: PopAdLdVar
  loc_B63784: FLdPr Me
  loc_B63787: MemLdRfVar from_stack_1.global_60
  loc_B6378A: LdPrVar
  loc_B6378C: LateMemCall
  loc_B63792: FFree1Var var_C8 = ""
  loc_B63795: LitStr vbNullString
  loc_B63798: LitI2_Byte 0
  loc_B6379A: LitI2_Byte 0
  loc_B6379C: LitI2_Byte 0
  loc_B6379E: LitStr "right"
  loc_B637A1: FMemLdR4 var_D4(40)
  loc_B637A6: CI2Str
  loc_B637A8: CStrUI1
  loc_B637AA: FStStrNoPop var_CC
  loc_B637AD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B637B2: CVarStr var_C8
  loc_B637B5: PopAdLdVar
  loc_B637B6: FLdPr Me
  loc_B637B9: MemLdRfVar from_stack_1.global_60
  loc_B637BC: LdPrVar
  loc_B637BE: LateMemCall
  loc_B637C4: FFree1Str var_CC
  loc_B637C7: FFree1Var var_C8 = ""
  loc_B637CA: LitStr vbNullString
  loc_B637CD: LitI2_Byte 0
  loc_B637CF: LitI2_Byte 0
  loc_B637D1: LitI2_Byte 0
  loc_B637D3: LitStr "right"
  loc_B637D6: FMemLdR4 var_D4(44)
  loc_B637DB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B637E0: CVarStr var_C8
  loc_B637E3: PopAdLdVar
  loc_B637E4: FLdPr Me
  loc_B637E7: MemLdRfVar from_stack_1.global_60
  loc_B637EA: LdPrVar
  loc_B637EC: LateMemCall
  loc_B637F2: FFree1Var var_C8 = ""
  loc_B637F5: LitI4 0
  loc_B637FA: FStR4 var_D4
  loc_B637FD: AryUnlock
  loc_B63800: LitVarStr var_A0, "     </tr>"
  loc_B63805: PopAdLdVar
  loc_B63806: FLdPr Me
  loc_B63809: MemLdRfVar from_stack_1.global_60
  loc_B6380C: LdPrVar
  loc_B6380E: LateMemCall
  loc_B63814: Call Proc_344_25_A0E0B8()
  loc_B63819: FLdPr Me
  loc_B6381C: MemLdRfVar from_stack_1.global_60
  loc_B6381F: LdPrVar
  loc_B63821: LateMemCall
  loc_B63827: LitStr vbNullString
  loc_B6382A: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B6382F: ExitProcHresult
End Sub

Public Sub GeneraTXT() '9AF2E4
  'Data Table: 475CEC
  loc_9AF2E0: ExitProcHresult
End Sub

Private Function Proc_344_24_BBB62C() 'BBB62C
  'Data Table: 475CEC
  loc_BBAF7C: LitVarStr var_94, "<html>"
  loc_BBAF81: PopAdLdVar
  loc_BBAF82: FLdPr Me
  loc_BBAF85: MemLdRfVar from_stack_1.global_60
  loc_BBAF88: LdPrVar
  loc_BBAF8A: LateMemCall
  loc_BBAF90: LitVarStr var_94, "<head>"
  loc_BBAF95: PopAdLdVar
  loc_BBAF96: FLdPr Me
  loc_BBAF99: MemLdRfVar from_stack_1.global_60
  loc_BBAF9C: LdPrVar
  loc_BBAF9E: LateMemCall
  loc_BBAFA4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BBAFA9: PopAdLdVar
  loc_BBAFAA: FLdPr Me
  loc_BBAFAD: MemLdRfVar from_stack_1.global_60
  loc_BBAFB0: LdPrVar
  loc_BBAFB2: LateMemCall
  loc_BBAFB8: LitStr "<title>"
  loc_BBAFBB: FLdRfVar var_A8
  loc_BBAFBE: FLdPr Me
  loc_BBAFC1:  = Me.Caption
  loc_BBAFC6: ILdRf var_A8
  loc_BBAFC9: ConcatStr
  loc_BBAFCA: FStStrNoPop var_AC
  loc_BBAFCD: LitStr "</title>"
  loc_BBAFD0: ConcatStr
  loc_BBAFD1: CVarStr var_BC
  loc_BBAFD4: PopAdLdVar
  loc_BBAFD5: FLdPr Me
  loc_BBAFD8: MemLdRfVar from_stack_1.global_60
  loc_BBAFDB: LdPrVar
  loc_BBAFDD: LateMemCall
  loc_BBAFE3: FFreeStr var_A8 = ""
  loc_BBAFEA: FFree1Var var_BC = ""
  loc_BBAFED: LitVarStr var_94, "<style type=""text/css"">"
  loc_BBAFF2: PopAdLdVar
  loc_BBAFF3: FLdPr Me
  loc_BBAFF6: MemLdRfVar from_stack_1.global_60
  loc_BBAFF9: LdPrVar
  loc_BBAFFB: LateMemCall
  loc_BBB001: LitVarStr var_94, ".Titulo1 {"
  loc_BBB006: PopAdLdVar
  loc_BBB007: FLdPr Me
  loc_BBB00A: MemLdRfVar from_stack_1.global_60
  loc_BBB00D: LdPrVar
  loc_BBB00F: LateMemCall
  loc_BBB015: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBB01A: PopAdLdVar
  loc_BBB01B: FLdPr Me
  loc_BBB01E: MemLdRfVar from_stack_1.global_60
  loc_BBB021: LdPrVar
  loc_BBB023: LateMemCall
  loc_BBB029: LitVarStr var_94, " font-size: 18px;"
  loc_BBB02E: PopAdLdVar
  loc_BBB02F: FLdPr Me
  loc_BBB032: MemLdRfVar from_stack_1.global_60
  loc_BBB035: LdPrVar
  loc_BBB037: LateMemCall
  loc_BBB03D: LitVarStr var_94, " font-weight: bold;"
  loc_BBB042: PopAdLdVar
  loc_BBB043: FLdPr Me
  loc_BBB046: MemLdRfVar from_stack_1.global_60
  loc_BBB049: LdPrVar
  loc_BBB04B: LateMemCall
  loc_BBB051: LitVarStr var_94, "}"
  loc_BBB056: PopAdLdVar
  loc_BBB057: FLdPr Me
  loc_BBB05A: MemLdRfVar from_stack_1.global_60
  loc_BBB05D: LdPrVar
  loc_BBB05F: LateMemCall
  loc_BBB065: LitVarStr var_94, ".Titulo2 {"
  loc_BBB06A: PopAdLdVar
  loc_BBB06B: FLdPr Me
  loc_BBB06E: MemLdRfVar from_stack_1.global_60
  loc_BBB071: LdPrVar
  loc_BBB073: LateMemCall
  loc_BBB079: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBB07E: PopAdLdVar
  loc_BBB07F: FLdPr Me
  loc_BBB082: MemLdRfVar from_stack_1.global_60
  loc_BBB085: LdPrVar
  loc_BBB087: LateMemCall
  loc_BBB08D: LitVarStr var_94, " font-size: 14px;"
  loc_BBB092: PopAdLdVar
  loc_BBB093: FLdPr Me
  loc_BBB096: MemLdRfVar from_stack_1.global_60
  loc_BBB099: LdPrVar
  loc_BBB09B: LateMemCall
  loc_BBB0A1: LitVarStr var_94, " font-weight: bold;"
  loc_BBB0A6: PopAdLdVar
  loc_BBB0A7: FLdPr Me
  loc_BBB0AA: MemLdRfVar from_stack_1.global_60
  loc_BBB0AD: LdPrVar
  loc_BBB0AF: LateMemCall
  loc_BBB0B5: LitVarStr var_94, "}"
  loc_BBB0BA: PopAdLdVar
  loc_BBB0BB: FLdPr Me
  loc_BBB0BE: MemLdRfVar from_stack_1.global_60
  loc_BBB0C1: LdPrVar
  loc_BBB0C3: LateMemCall
  loc_BBB0C9: LitVarStr var_94, ".Normal {"
  loc_BBB0CE: PopAdLdVar
  loc_BBB0CF: FLdPr Me
  loc_BBB0D2: MemLdRfVar from_stack_1.global_60
  loc_BBB0D5: LdPrVar
  loc_BBB0D7: LateMemCall
  loc_BBB0DD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBB0E2: PopAdLdVar
  loc_BBB0E3: FLdPr Me
  loc_BBB0E6: MemLdRfVar from_stack_1.global_60
  loc_BBB0E9: LdPrVar
  loc_BBB0EB: LateMemCall
  loc_BBB0F1: LitVarStr var_94, " font-size: 12px;"
  loc_BBB0F6: PopAdLdVar
  loc_BBB0F7: FLdPr Me
  loc_BBB0FA: MemLdRfVar from_stack_1.global_60
  loc_BBB0FD: LdPrVar
  loc_BBB0FF: LateMemCall
  loc_BBB105: LitVarStr var_94, " font-style: normal;"
  loc_BBB10A: PopAdLdVar
  loc_BBB10B: FLdPr Me
  loc_BBB10E: MemLdRfVar from_stack_1.global_60
  loc_BBB111: LdPrVar
  loc_BBB113: LateMemCall
  loc_BBB119: LitVarStr var_94, " font-weight: normal;"
  loc_BBB11E: PopAdLdVar
  loc_BBB11F: FLdPr Me
  loc_BBB122: MemLdRfVar from_stack_1.global_60
  loc_BBB125: LdPrVar
  loc_BBB127: LateMemCall
  loc_BBB12D: LitVarStr var_94, " font-variant: normal;"
  loc_BBB132: PopAdLdVar
  loc_BBB133: FLdPr Me
  loc_BBB136: MemLdRfVar from_stack_1.global_60
  loc_BBB139: LdPrVar
  loc_BBB13B: LateMemCall
  loc_BBB141: LitVarStr var_94, "}"
  loc_BBB146: PopAdLdVar
  loc_BBB147: FLdPr Me
  loc_BBB14A: MemLdRfVar from_stack_1.global_60
  loc_BBB14D: LdPrVar
  loc_BBB14F: LateMemCall
  loc_BBB155: LitVarStr var_94, ".Encabezado {"
  loc_BBB15A: PopAdLdVar
  loc_BBB15B: FLdPr Me
  loc_BBB15E: MemLdRfVar from_stack_1.global_60
  loc_BBB161: LdPrVar
  loc_BBB163: LateMemCall
  loc_BBB169: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BBB16E: PopAdLdVar
  loc_BBB16F: FLdPr Me
  loc_BBB172: MemLdRfVar from_stack_1.global_60
  loc_BBB175: LdPrVar
  loc_BBB177: LateMemCall
  loc_BBB17D: LitVarStr var_94, " font-size: 11px;"
  loc_BBB182: PopAdLdVar
  loc_BBB183: FLdPr Me
  loc_BBB186: MemLdRfVar from_stack_1.global_60
  loc_BBB189: LdPrVar
  loc_BBB18B: LateMemCall
  loc_BBB191: LitVarStr var_94, " font-weight: bold;"
  loc_BBB196: PopAdLdVar
  loc_BBB197: FLdPr Me
  loc_BBB19A: MemLdRfVar from_stack_1.global_60
  loc_BBB19D: LdPrVar
  loc_BBB19F: LateMemCall
  loc_BBB1A5: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BBB1AA: PopAdLdVar
  loc_BBB1AB: FLdPr Me
  loc_BBB1AE: MemLdRfVar from_stack_1.global_60
  loc_BBB1B1: LdPrVar
  loc_BBB1B3: LateMemCall
  loc_BBB1B9: LitVarStr var_94, "}"
  loc_BBB1BE: PopAdLdVar
  loc_BBB1BF: FLdPr Me
  loc_BBB1C2: MemLdRfVar from_stack_1.global_60
  loc_BBB1C5: LdPrVar
  loc_BBB1C7: LateMemCall
  loc_BBB1CD: LitVarStr var_94, ".LineaDato {"
  loc_BBB1D2: PopAdLdVar
  loc_BBB1D3: FLdPr Me
  loc_BBB1D6: MemLdRfVar from_stack_1.global_60
  loc_BBB1D9: LdPrVar
  loc_BBB1DB: LateMemCall
  loc_BBB1E1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBB1E6: PopAdLdVar
  loc_BBB1E7: FLdPr Me
  loc_BBB1EA: MemLdRfVar from_stack_1.global_60
  loc_BBB1ED: LdPrVar
  loc_BBB1EF: LateMemCall
  loc_BBB1F5: LitVarStr var_94, " font-size: 10px;"
  loc_BBB1FA: PopAdLdVar
  loc_BBB1FB: FLdPr Me
  loc_BBB1FE: MemLdRfVar from_stack_1.global_60
  loc_BBB201: LdPrVar
  loc_BBB203: LateMemCall
  loc_BBB209: LitVarStr var_94, "}"
  loc_BBB20E: PopAdLdVar
  loc_BBB20F: FLdPr Me
  loc_BBB212: MemLdRfVar from_stack_1.global_60
  loc_BBB215: LdPrVar
  loc_BBB217: LateMemCall
  loc_BBB21D: LitVarStr var_94, ".Totales {"
  loc_BBB222: PopAdLdVar
  loc_BBB223: FLdPr Me
  loc_BBB226: MemLdRfVar from_stack_1.global_60
  loc_BBB229: LdPrVar
  loc_BBB22B: LateMemCall
  loc_BBB231: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBB236: PopAdLdVar
  loc_BBB237: FLdPr Me
  loc_BBB23A: MemLdRfVar from_stack_1.global_60
  loc_BBB23D: LdPrVar
  loc_BBB23F: LateMemCall
  loc_BBB245: LitVarStr var_94, " font-size: 12px;"
  loc_BBB24A: PopAdLdVar
  loc_BBB24B: FLdPr Me
  loc_BBB24E: MemLdRfVar from_stack_1.global_60
  loc_BBB251: LdPrVar
  loc_BBB253: LateMemCall
  loc_BBB259: LitVarStr var_94, " font-weight: bold;"
  loc_BBB25E: PopAdLdVar
  loc_BBB25F: FLdPr Me
  loc_BBB262: MemLdRfVar from_stack_1.global_60
  loc_BBB265: LdPrVar
  loc_BBB267: LateMemCall
  loc_BBB26D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BBB272: PopAdLdVar
  loc_BBB273: FLdPr Me
  loc_BBB276: MemLdRfVar from_stack_1.global_60
  loc_BBB279: LdPrVar
  loc_BBB27B: LateMemCall
  loc_BBB281: LitVarStr var_94, "}"
  loc_BBB286: PopAdLdVar
  loc_BBB287: FLdPr Me
  loc_BBB28A: MemLdRfVar from_stack_1.global_60
  loc_BBB28D: LdPrVar
  loc_BBB28F: LateMemCall
  loc_BBB295: LitVarStr var_94, ".SubTotales {"
  loc_BBB29A: PopAdLdVar
  loc_BBB29B: FLdPr Me
  loc_BBB29E: MemLdRfVar from_stack_1.global_60
  loc_BBB2A1: LdPrVar
  loc_BBB2A3: LateMemCall
  loc_BBB2A9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBB2AE: PopAdLdVar
  loc_BBB2AF: FLdPr Me
  loc_BBB2B2: MemLdRfVar from_stack_1.global_60
  loc_BBB2B5: LdPrVar
  loc_BBB2B7: LateMemCall
  loc_BBB2BD: LitVarStr var_94, " font-size: 10px;"
  loc_BBB2C2: PopAdLdVar
  loc_BBB2C3: FLdPr Me
  loc_BBB2C6: MemLdRfVar from_stack_1.global_60
  loc_BBB2C9: LdPrVar
  loc_BBB2CB: LateMemCall
  loc_BBB2D1: LitVarStr var_94, " font-weight: bold;"
  loc_BBB2D6: PopAdLdVar
  loc_BBB2D7: FLdPr Me
  loc_BBB2DA: MemLdRfVar from_stack_1.global_60
  loc_BBB2DD: LdPrVar
  loc_BBB2DF: LateMemCall
  loc_BBB2E5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BBB2EA: PopAdLdVar
  loc_BBB2EB: FLdPr Me
  loc_BBB2EE: MemLdRfVar from_stack_1.global_60
  loc_BBB2F1: LdPrVar
  loc_BBB2F3: LateMemCall
  loc_BBB2F9: LitVarStr var_94, "}"
  loc_BBB2FE: PopAdLdVar
  loc_BBB2FF: FLdPr Me
  loc_BBB302: MemLdRfVar from_stack_1.global_60
  loc_BBB305: LdPrVar
  loc_BBB307: LateMemCall
  loc_BBB30D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BBB312: PopAdLdVar
  loc_BBB313: FLdPr Me
  loc_BBB316: MemLdRfVar from_stack_1.global_60
  loc_BBB319: LdPrVar
  loc_BBB31B: LateMemCall
  loc_BBB321: LitVarStr var_94, "</style>"
  loc_BBB326: PopAdLdVar
  loc_BBB327: FLdPr Me
  loc_BBB32A: MemLdRfVar from_stack_1.global_60
  loc_BBB32D: LdPrVar
  loc_BBB32F: LateMemCall
  loc_BBB335: LitI4 0
  loc_BBB33A: FStStrCopy var_AC
  loc_BBB33D: FLdRfVar var_AC
  loc_BBB340: LitI4 0
  loc_BBB345: FStStrCopy var_A8
  loc_BBB348: FLdRfVar var_A8
  loc_BBB34B: LitI2_Byte &HFF
  loc_BBB34D: PopTmpLdAd2 var_BE
  loc_BBB350: FLdPr Me
  loc_BBB353: MemLdRfVar from_stack_1.global_60
  loc_BBB356: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BBB35B: FFreeStr var_A8 = ""
  loc_BBB362: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BBB367: PopAdLdVar
  loc_BBB368: FLdPr Me
  loc_BBB36B: MemLdRfVar from_stack_1.global_60
  loc_BBB36E: LdPrVar
  loc_BBB370: LateMemCall
  loc_BBB376: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BBB37B: PopAdLdVar
  loc_BBB37C: FLdPr Me
  loc_BBB37F: MemLdRfVar from_stack_1.global_60
  loc_BBB382: LdPrVar
  loc_BBB384: LateMemCall
  loc_BBB38A: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_BBB38F: PopAdLdVar
  loc_BBB390: FLdPr Me
  loc_BBB393: MemLdRfVar from_stack_1.global_60
  loc_BBB396: LdPrVar
  loc_BBB398: LateMemCall
  loc_BBB39E: FLdPr Me
  loc_BBB3A1: MemLdI2 bLogos
  loc_BBB3A4: BranchF loc_BBB3ED
  loc_BBB3A7: LitStr "      <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BBB3AA: LitI2_Byte &H5F
  loc_BBB3AC: CStrUI1
  loc_BBB3AE: FStStrNoPop var_A8
  loc_BBB3B1: ConcatStr
  loc_BBB3B2: FStStrNoPop var_AC
  loc_BBB3B5: LitStr """ height="""
  loc_BBB3B8: ConcatStr
  loc_BBB3B9: FStStrNoPop var_C4
  loc_BBB3BC: LitI2_Byte &H3C
  loc_BBB3BE: CStrUI1
  loc_BBB3C0: FStStrNoPop var_C8
  loc_BBB3C3: ConcatStr
  loc_BBB3C4: FStStrNoPop var_CC
  loc_BBB3C7: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BBB3CA: ConcatStr
  loc_BBB3CB: CVarStr var_BC
  loc_BBB3CE: PopAdLdVar
  loc_BBB3CF: FLdPr Me
  loc_BBB3D2: MemLdRfVar from_stack_1.global_60
  loc_BBB3D5: LdPrVar
  loc_BBB3D7: LateMemCall
  loc_BBB3DD: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BBB3EA: FFree1Var var_BC = ""
  loc_BBB3ED: LitStr "     <br>"
  loc_BBB3F0: LitStr "Municipalidad de Guaymallén"
  loc_BBB3F3: ConcatStr
  loc_BBB3F4: FStStrNoPop var_A8
  loc_BBB3F7: LitStr "</p>"
  loc_BBB3FA: ConcatStr
  loc_BBB3FB: CVarStr var_BC
  loc_BBB3FE: PopAdLdVar
  loc_BBB3FF: FLdPr Me
  loc_BBB402: MemLdRfVar from_stack_1.global_60
  loc_BBB405: LdPrVar
  loc_BBB407: LateMemCall
  loc_BBB40D: FFree1Str var_A8
  loc_BBB410: FFree1Var var_BC = ""
  loc_BBB413: LitStr "    <p>"
  loc_BBB416: FLdRfVar var_A8
  loc_BBB419: FLdPr Me
  loc_BBB41C:  = Me.Caption
  loc_BBB421: ILdRf var_A8
  loc_BBB424: ConcatStr
  loc_BBB425: FStStrNoPop var_AC
  loc_BBB428: LitStr "</p></th>"
  loc_BBB42B: ConcatStr
  loc_BBB42C: CVarStr var_BC
  loc_BBB42F: PopAdLdVar
  loc_BBB430: FLdPr Me
  loc_BBB433: MemLdRfVar from_stack_1.global_60
  loc_BBB436: LdPrVar
  loc_BBB438: LateMemCall
  loc_BBB43E: FFreeStr var_A8 = ""
  loc_BBB445: FFree1Var var_BC = ""
  loc_BBB448: LitVarStr var_94, "  </tr>"
  loc_BBB44D: PopAdLdVar
  loc_BBB44E: FLdPr Me
  loc_BBB451: MemLdRfVar from_stack_1.global_60
  loc_BBB454: LdPrVar
  loc_BBB456: LateMemCall
  loc_BBB45C: LitVarStr var_94, "  <tr>"
  loc_BBB461: PopAdLdVar
  loc_BBB462: FLdPr Me
  loc_BBB465: MemLdRfVar from_stack_1.global_60
  loc_BBB468: LdPrVar
  loc_BBB46A: LateMemCall
  loc_BBB470: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_BBB475: PopAdLdVar
  loc_BBB476: FLdPr Me
  loc_BBB479: MemLdRfVar from_stack_1.global_60
  loc_BBB47C: LdPrVar
  loc_BBB47E: LateMemCall
  loc_BBB484: LitVarStr var_94, "  </tr>"
  loc_BBB489: PopAdLdVar
  loc_BBB48A: FLdPr Me
  loc_BBB48D: MemLdRfVar from_stack_1.global_60
  loc_BBB490: LdPrVar
  loc_BBB492: LateMemCall
  loc_BBB498: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BBB49D: PopAdLdVar
  loc_BBB49E: FLdPr Me
  loc_BBB4A1: MemLdRfVar from_stack_1.global_60
  loc_BBB4A4: LdPrVar
  loc_BBB4A6: LateMemCall
  loc_BBB4AC: LitVarStr var_94, "  </tr>"
  loc_BBB4B1: PopAdLdVar
  loc_BBB4B2: FLdPr Me
  loc_BBB4B5: MemLdRfVar from_stack_1.global_60
  loc_BBB4B8: LdPrVar
  loc_BBB4BA: LateMemCall
  loc_BBB4C0: LitVarStr var_94, "</table>"
  loc_BBB4C5: PopAdLdVar
  loc_BBB4C6: FLdPr Me
  loc_BBB4C9: MemLdRfVar from_stack_1.global_60
  loc_BBB4CC: LdPrVar
  loc_BBB4CE: LateMemCall
  loc_BBB4D4: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BBB4D9: PopAdLdVar
  loc_BBB4DA: FLdPr Me
  loc_BBB4DD: MemLdRfVar from_stack_1.global_60
  loc_BBB4E0: LdPrVar
  loc_BBB4E2: LateMemCall
  loc_BBB4E8: LitVarStr var_94, "  <thead>"
  loc_BBB4ED: PopAdLdVar
  loc_BBB4EE: FLdPr Me
  loc_BBB4F1: MemLdRfVar from_stack_1.global_60
  loc_BBB4F4: LdPrVar
  loc_BBB4F6: LateMemCall
  loc_BBB4FC: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BBB501: PopAdLdVar
  loc_BBB502: FLdPr Me
  loc_BBB505: MemLdRfVar from_stack_1.global_60
  loc_BBB508: LdPrVar
  loc_BBB50A: LateMemCall
  loc_BBB510: LitVarStr var_94, "    <th>Fecha de<br>envio</th>"
  loc_BBB515: PopAdLdVar
  loc_BBB516: FLdPr Me
  loc_BBB519: MemLdRfVar from_stack_1.global_60
  loc_BBB51C: LdPrVar
  loc_BBB51E: LateMemCall
  loc_BBB524: LitVarStr var_94, "    <th>Nro de Grupo</th>"
  loc_BBB529: PopAdLdVar
  loc_BBB52A: FLdPr Me
  loc_BBB52D: MemLdRfVar from_stack_1.global_60
  loc_BBB530: LdPrVar
  loc_BBB532: LateMemCall
  loc_BBB538: LitVarStr var_94, "    <th>Act.</th>"
  loc_BBB53D: PopAdLdVar
  loc_BBB53E: FLdPr Me
  loc_BBB541: MemLdRfVar from_stack_1.global_60
  loc_BBB544: LdPrVar
  loc_BBB546: LateMemCall
  loc_BBB54C: LitVarStr var_94, "    <th>Fecha de Actua</th>"
  loc_BBB551: PopAdLdVar
  loc_BBB552: FLdPr Me
  loc_BBB555: MemLdRfVar from_stack_1.global_60
  loc_BBB558: LdPrVar
  loc_BBB55A: LateMemCall
  loc_BBB560: LitVarStr var_94, "    <th>Cod. Ent.</th>"
  loc_BBB565: PopAdLdVar
  loc_BBB566: FLdPr Me
  loc_BBB569: MemLdRfVar from_stack_1.global_60
  loc_BBB56C: LdPrVar
  loc_BBB56E: LateMemCall
  loc_BBB574: LitVarStr var_94, "    <th>Detalle del Ente</th>"
  loc_BBB579: PopAdLdVar
  loc_BBB57A: FLdPr Me
  loc_BBB57D: MemLdRfVar from_stack_1.global_60
  loc_BBB580: LdPrVar
  loc_BBB582: LateMemCall
  loc_BBB588: LitVarStr var_94, "    <th>Boletos Procesados</th>"
  loc_BBB58D: PopAdLdVar
  loc_BBB58E: FLdPr Me
  loc_BBB591: MemLdRfVar from_stack_1.global_60
  loc_BBB594: LdPrVar
  loc_BBB596: LateMemCall
  loc_BBB59C: LitVarStr var_94, "    <th>Importe Procesado</th>"
  loc_BBB5A1: PopAdLdVar
  loc_BBB5A2: FLdPr Me
  loc_BBB5A5: MemLdRfVar from_stack_1.global_60
  loc_BBB5A8: LdPrVar
  loc_BBB5AA: LateMemCall
  loc_BBB5B0: LitVarStr var_94, "    <th>Boletos Ingresados</th>"
  loc_BBB5B5: PopAdLdVar
  loc_BBB5B6: FLdPr Me
  loc_BBB5B9: MemLdRfVar from_stack_1.global_60
  loc_BBB5BC: LdPrVar
  loc_BBB5BE: LateMemCall
  loc_BBB5C4: LitVarStr var_94, "    <th>Importe Ingresado</th>"
  loc_BBB5C9: PopAdLdVar
  loc_BBB5CA: FLdPr Me
  loc_BBB5CD: MemLdRfVar from_stack_1.global_60
  loc_BBB5D0: LdPrVar
  loc_BBB5D2: LateMemCall
  loc_BBB5D8: LitVarStr var_94, "    <th>Diferencia Boletos</th>"
  loc_BBB5DD: PopAdLdVar
  loc_BBB5DE: FLdPr Me
  loc_BBB5E1: MemLdRfVar from_stack_1.global_60
  loc_BBB5E4: LdPrVar
  loc_BBB5E6: LateMemCall
  loc_BBB5EC: LitVarStr var_94, "    <th>Diferencia Importe</th>"
  loc_BBB5F1: PopAdLdVar
  loc_BBB5F2: FLdPr Me
  loc_BBB5F5: MemLdRfVar from_stack_1.global_60
  loc_BBB5F8: LdPrVar
  loc_BBB5FA: LateMemCall
  loc_BBB600: LitVarStr var_94, "  </tr>"
  loc_BBB605: PopAdLdVar
  loc_BBB606: FLdPr Me
  loc_BBB609: MemLdRfVar from_stack_1.global_60
  loc_BBB60C: LdPrVar
  loc_BBB60E: LateMemCall
  loc_BBB614: LitVarStr var_94, "  </thead>"
  loc_BBB619: PopAdLdVar
  loc_BBB61A: FLdPr Me
  loc_BBB61D: MemLdRfVar from_stack_1.global_60
  loc_BBB620: LdPrVar
  loc_BBB622: LateMemCall
  loc_BBB628: ExitProcHresult
End Function

Private Function Proc_344_25_A0E0B8() 'A0E0B8
  'Data Table: 475CEC
  loc_A0E078: LitVarStr var_94, "</table>"
  loc_A0E07D: PopAdLdVar
  loc_A0E07E: FLdPr Me
  loc_A0E081: MemLdRfVar from_stack_1.global_60
  loc_A0E084: LdPrVar
  loc_A0E086: LateMemCall
  loc_A0E08C: LitVarStr var_94, "</body>"
  loc_A0E091: PopAdLdVar
  loc_A0E092: FLdPr Me
  loc_A0E095: MemLdRfVar from_stack_1.global_60
  loc_A0E098: LdPrVar
  loc_A0E09A: LateMemCall
  loc_A0E0A0: LitVarStr var_94, "</html>"
  loc_A0E0A5: PopAdLdVar
  loc_A0E0A6: FLdPr Me
  loc_A0E0A9: MemLdRfVar from_stack_1.global_60
  loc_A0E0AC: LdPrVar
  loc_A0E0AE: LateMemCall
  loc_A0E0B4: ExitProcHresult
End Function
