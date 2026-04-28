VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumenGeneraldeApremiosporOficialdeJusticia
  Caption = "Resumen General de Apremios por Oficial de Justicia"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumenGeneraldeApremiosporOficialdeJusticia.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9216
  ClientHeight = 4296
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4044
    Width = 9216
    Height = 252
    TabIndex = 13
    OleObjectBlob = "rptResumenGeneraldeApremiosporOficialdeJusticia.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8160
    Top = 3000
    Width = 855
    Height = 735
    TabIndex = 8
    Cancel = -1  'True
    Picture = "rptResumenGeneraldeApremiosporOficialdeJusticia.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumenGeneraldeApremiosporOficialdeJusticia.frx":0B9C
    Left = 8400
    Top = 2160
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2760
    Width = 3255
    Height = 1215
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
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
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
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
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2760
    Width = 4095
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
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
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8895
    Height = 2655
    TabIndex = 9
    Begin VB.Frame FechaEmisionFra
      Caption = "Fecha de Pago"
      Left = 960
      Top = 360
      Width = 3015
      Height = 1575
      TabIndex = 14
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin VB.CommandButton DesdeFechaCmd
        Left = 2400
        Top = 480
        Width = 375
        Height = 375
        TabIndex = 1
        Picture = "rptResumenGeneraldeApremiosporOficialdeJusticia.frx":0C00
        Style = 1
        CausesValidation = 0   'False
      End
      Begin VB.CommandButton HastaFechaCmd
        Left = 2400
        Top = 1005
        Width = 375
        Height = 375
        TabIndex = 3
        Picture = "rptResumenGeneraldeApremiosporOficialdeJusticia.frx":1142
        Style = 1
        CausesValidation = 0   'False
      End
      Begin MSMask.MaskEdBox FealBoapDesdeMsk
        Left = 960
        Top = 480
        Width = 1335
        Height = 360
        TabIndex = 0
        OleObjectBlob = "rptResumenGeneraldeApremiosporOficialdeJusticia.frx":1684
      End
      Begin MSMask.MaskEdBox FealBoapHastaMsk
        Left = 960
        Top = 1005
        Width = 1335
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptResumenGeneraldeApremiosporOficialdeJusticia.frx":1734
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 480
        Width = 765
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
      Begin VB.Label Label5
        Caption = "Hasta:"
        Left = 180
        Top = 1005
        Width = 705
        Height = 300
        TabIndex = 15
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4800
      Top = 480
      Width = 1575
      Height = 615
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
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8280
    Top = 3240
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptResumenGeneraldeApremiosporOficialdeJusticia.frx":17E4
  End
End

Attribute VB_Name = "rptResumenGeneraldeApremiosporOficialdeJusticia"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_2_00568030
  bStruc(64) As Byte ' String fields: 13
End Type

Private Type UDT_3_0056808C
  bStruc(28) As Byte ' String fields: 4
End Type


Private Sub cmdNueva_Click() 'AB0124
  'Data Table: 48CC64
  loc_AB005C: LitI2_Byte 0
  loc_AB005E: FLdPr Me
  loc_AB0061: MemStI2 bGenerado
  loc_AB0064: LitI2_Byte &HFF
  loc_AB0066: FLdPr Me
  loc_AB0069: MemStI2 bLogos
  loc_AB006C: LitI2_Byte 0
  loc_AB006E: ILdRf Me
  loc_AB0071: CastAd
  loc_AB0074: FStAdFunc var_88
  loc_AB0077: FLdRfVar var_88
  loc_AB007A: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AB007F: FFree1Ad var_88
  loc_AB0082: LitI2_Byte 0
  loc_AB0084: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB0089: CVarDate var_A8
  loc_AB008D: FLdRfVar var_B8
  loc_AB0090: ImpAdCallFPR4  = Year()
  loc_AB0095: LitI2_Byte 0
  loc_AB0097: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB009C: CVarDate var_D8
  loc_AB00A0: FLdRfVar var_E8
  loc_AB00A3: ImpAdCallFPR4  = Month()
  loc_AB00A8: LitI2_Byte 1
  loc_AB00AA: FLdRfVar var_E8
  loc_AB00AD: CI2Var
  loc_AB00AE: FLdRfVar var_B8
  loc_AB00B1: CI2Var
  loc_AB00B2: FLdRfVar var_F8
  loc_AB00B5: ImpAdCallFPR4  = DateSerial(, , )
  loc_AB00BA: FLdRfVar var_F8
  loc_AB00BD: CStrVarTmp
  loc_AB00BE: CVarStr var_108
  loc_AB00C1: PopAdLdVar
  loc_AB00C2: FLdPr Me
  loc_AB00C5: VCallAd Control_ID_FealBoapDesdeMsk
  loc_AB00C8: FStAdFunc var_88
  loc_AB00CB: FLdPr var_88
  loc_AB00CE: LateIdSt
  loc_AB00D3: FFree1Ad var_88
  loc_AB00D6: FFreeVar var_A8 = "": var_D8 = "": var_B8 = "": var_E8 = "": var_F8 = ""
  loc_AB00E5: LitI2_Byte 0
  loc_AB00E7: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB00EC: CStrDate
  loc_AB00EE: CVarStr var_A8
  loc_AB00F1: PopAdLdVar
  loc_AB00F2: FLdPr Me
  loc_AB00F5: VCallAd Control_ID_FealBoapHastaMsk
  loc_AB00F8: FStAdFunc var_88
  loc_AB00FB: FLdPr var_88
  loc_AB00FE: LateIdSt
  loc_AB0103: FFree1Ad var_88
  loc_AB0106: FFree1Var var_A8 = ""
  loc_AB0109: Call HabilitarCriterio()
  loc_AB010E: ILdRf Me
  loc_AB0111: CastAd
  loc_AB0114: FStAdFunc var_88
  loc_AB0117: FLdRfVar var_88
  loc_AB011A: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AB011F: FFree1Ad var_88
  loc_AB0122: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D421C
  'Data Table: 48CC64
  loc_9D4204: ILdRf Me
  loc_9D4207: CastAd
  loc_9D420A: FStAdFunc var_88
  loc_9D420D: FLdRfVar var_88
  loc_9D4210: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D4215: FFree1Ad var_88
  loc_9D4218: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A0C604
  'Data Table: 48CC64
  loc_A0C5C8: LitVar_Missing var_A4
  loc_A0C5CB: PopAdLdVar
  loc_A0C5CC: LitVarI4
  loc_A0C5D4: PopAdLdVar
  loc_A0C5D5: ImpAdLdRf MemVar_D930A4
  loc_A0C5D8: NewIfNullPr frmCalendario
  loc_A0C5DB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0C5E0: ImpAdLdRf MemVar_D93028
  loc_A0C5E3: CDargRef
  loc_A0C5E7: FLdPr Me
  loc_A0C5EA: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A0C5ED: FStAdFunc var_A8
  loc_A0C5F0: FLdPr var_A8
  loc_A0C5F3: LateIdSt
  loc_A0C5F8: FFree1Ad var_A8
  loc_A0C5FB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0C600: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A0C524
  'Data Table: 48CC64
  loc_A0C4E8: LitVar_Missing var_A4
  loc_A0C4EB: PopAdLdVar
  loc_A0C4EC: LitVarI4
  loc_A0C4F4: PopAdLdVar
  loc_A0C4F5: ImpAdLdRf MemVar_D930A4
  loc_A0C4F8: NewIfNullPr frmCalendario
  loc_A0C4FB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0C500: ImpAdLdRf MemVar_D93028
  loc_A0C503: CDargRef
  loc_A0C507: FLdPr Me
  loc_A0C50A: VCallAd Control_ID_FealBoapHastaMsk
  loc_A0C50D: FStAdFunc var_A8
  loc_A0C510: FLdPr var_A8
  loc_A0C513: LateIdSt
  loc_A0C518: FFree1Ad var_A8
  loc_A0C51B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0C520: ExitProcHresult
End Sub

Private Sub FealBoapDesdeMsk_UnknownEvent_0 '9C22E8
  'Data Table: 48CC64
  loc_9C22D4: FLdPr Me
  loc_9C22D7: VCallAd Control_ID_FealBoapDesdeMsk
  loc_9C22DA: CVarAd
  loc_9C22DE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C22E3: FFree1Var var_94 = ""
  loc_9C22E6: ExitProcHresult
End Sub

Private Function FealBoapDesdeMsk_UnknownEvent_8(arg_C) 'A65000
  'Data Table: 48CC64
  loc_A64FA4: FLdPr Me
  loc_A64FA7: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A64FAA: FStAdFunc var_88
  loc_A64FAD: FLdPr var_88
  loc_A64FB0: LateIdLdVar var_98 DispID_15 0
  loc_A64FB7: CStrVarTmp
  loc_A64FB8: FStStrNoPop var_9C
  loc_A64FBB: ImpAdCallI2 Proc_18_8_A4C3D0()
  loc_A64FC0: FStStrNoPop var_A0
  loc_A64FC3: FLdPr Me
  loc_A64FC6: MemStStrCopy
  loc_A64FCA: FFreeStr var_9C = ""
  loc_A64FD1: FFree1Ad var_88
  loc_A64FD4: FFree1Var var_98 = ""
  loc_A64FD7: FLdPr Me
  loc_A64FDA: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A64FDD: FStAdFuncNoPop
  loc_A64FE0: CastAd
  loc_A64FE3: FStAdFunc var_A4
  loc_A64FE6: FLdRfVar var_A4
  loc_A64FE9: FLdPr Me
  loc_A64FEC: MemLdStr global_92
  loc_A64FEF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A64FF4: IStI2 arg_C
  loc_A64FF7: FFreeAd var_88 = ""
  loc_A64FFE: ExitProcHresult
End Function

Private Sub cmdPredeterminada_Click() '9D4300
  'Data Table: 48CC64
  loc_9D42E8: LitI2_Byte 0
  loc_9D42EA: ILdRf Me
  loc_9D42ED: CastAd
  loc_9D42F0: FStAdFunc var_88
  loc_9D42F3: FLdRfVar var_88
  loc_9D42F6: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D42FB: FFree1Ad var_88
  loc_9D42FE: ExitProcHresult
End Sub

Private Sub FealBoapHastaMsk_UnknownEvent_0 '9C6B78
  'Data Table: 48CC64
  loc_9C6B64: FLdPr Me
  loc_9C6B67: VCallAd Control_ID_FealBoapHastaMsk
  loc_9C6B6A: CVarAd
  loc_9C6B6E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6B73: FFree1Var var_94 = ""
  loc_9C6B76: ExitProcHresult
End Sub

Private Function FealBoapHastaMsk_UnknownEvent_8(arg_C) 'A64D80
  'Data Table: 48CC64
  loc_A64D24: FLdPr Me
  loc_A64D27: VCallAd Control_ID_FealBoapHastaMsk
  loc_A64D2A: FStAdFunc var_88
  loc_A64D2D: FLdPr var_88
  loc_A64D30: LateIdLdVar var_98 DispID_15 0
  loc_A64D37: CStrVarTmp
  loc_A64D38: FStStrNoPop var_9C
  loc_A64D3B: ImpAdCallI2 Proc_18_8_A4C3D0()
  loc_A64D40: FStStrNoPop var_A0
  loc_A64D43: FLdPr Me
  loc_A64D46: MemStStrCopy
  loc_A64D4A: FFreeStr var_9C = ""
  loc_A64D51: FFree1Ad var_88
  loc_A64D54: FFree1Var var_98 = ""
  loc_A64D57: FLdPr Me
  loc_A64D5A: VCallAd Control_ID_FealBoapHastaMsk
  loc_A64D5D: FStAdFuncNoPop
  loc_A64D60: CastAd
  loc_A64D63: FStAdFunc var_A4
  loc_A64D66: FLdRfVar var_A4
  loc_A64D69: FLdPr Me
  loc_A64D6C: MemLdStr global_92
  loc_A64D6F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A64D74: IStI2 arg_C
  loc_A64D77: FFreeAd var_88 = ""
  loc_A64D7E: ExitProcHresult
End Function

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A16DE0
  'Data Table: 48CC64
  loc_A16DA8: FLdPr Me
  loc_A16DAB: VCallAd Control_ID_statusBar
  loc_A16DAE: FStAdFunc var_88
  loc_A16DB1: FLdPr var_88
  loc_A16DB4: LateIdLdVar var_98 DispID_1 0
  loc_A16DBB: CStrVarTmp
  loc_A16DBC: CVarStr var_A8
  loc_A16DBF: PopAdLdVar
  loc_A16DC0: FLdPr Me
  loc_A16DC3: VCallAd Control_ID_statusBar
  loc_A16DC6: FStAdFunc var_BC
  loc_A16DC9: FLdPr var_BC
  loc_A16DCC: LateIdSt
  loc_A16DD1: FFreeAd var_88 = ""
  loc_A16DD8: FFreeVar var_98 = ""
  loc_A16DDF: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E2E9C
  'Data Table: 48CC64
  loc_9E2E80: LitI2_Byte &HFF
  loc_9E2E82: LitI2_Byte 0
  loc_9E2E84: ILdRf Me
  loc_9E2E87: CastAd
  loc_9E2E8A: FStAdFunc var_88
  loc_9E2E8D: FLdRfVar var_88
  loc_9E2E90: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E2E95: FFree1Ad var_88
  loc_9E2E98: ExitProcHresult
  loc_9E2E99: FLdRfVar arg_15
End Sub

Private Sub Form_Load() '9E2DAC
  'Data Table: 48CC64
  loc_9E2D90: ILdRf Me
  loc_9E2D93: CastAd
  loc_9E2D96: FStAdFunc var_88
  loc_9E2D99: FLdRfVar var_88
  loc_9E2D9C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E2DA1: FFree1Ad var_88
  loc_9E2DA4: Call cmdNueva_Click()
  loc_9E2DA9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D4430
  'Data Table: 48CC64
  loc_9D4418: FLdPr Me
  loc_9D441B: VCallAd Control_ID_wbbReporte
  loc_9D441E: FStAdFunc var_88
  loc_9D4421: FLdRfVar var_88
  loc_9D4424: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D4429: FFree1Ad var_88
  loc_9D442C: ExitProcHresult
  loc_9D442D: FStStrCopy arg_100
End Sub

Private Sub cmdSalir_Click() '9FFCC8
  'Data Table: 48CC64
  loc_9FFC98: LitVarStr var_94, "Cerrando..."
  loc_9FFC9D: PopAdLdVar
  loc_9FFC9E: FLdPr Me
  loc_9FFCA1: VCallAd Control_ID_statusBar
  loc_9FFCA4: FStAdFunc var_A8
  loc_9FFCA7: FLdPr var_A8
  loc_9FFCAA: LateIdSt
  loc_9FFCAF: FFree1Ad var_A8
  loc_9FFCB2: ILdRf Me
  loc_9FFCB5: FStAdNoPop
  loc_9FFCB9: ImpAdLdRf MemVar_D9C5D8
  loc_9FFCBC: NewIfNullPr Global
  loc_9FFCBF: Global.Unload from_stack_1
  loc_9FFCC4: FFree1Ad var_A8
  loc_9FFCC7: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E2BCC
  'Data Table: 48CC64
  loc_9E2BB0: LitI2_Byte 0
  loc_9E2BB2: PopTmpLdAd2 var_8A
  loc_9E2BB5: ILdRf Me
  loc_9E2BB8: CastAd
  loc_9E2BBB: FStAdFunc var_88
  loc_9E2BBE: FLdRfVar var_88
  loc_9E2BC1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E2BC6: FFree1Ad var_88
  loc_9E2BC9: ExitProcHresult
End Sub

Public Function bLogosGet() '48DA08
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '48DA17
  bLogos = Value
End Sub

Public Function bGeneradoGet() '48DA26
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '48DA35
  bGenerado = Value
End Sub

Public Sub GeneraXLS() '9C20AC
  'Data Table: 48CC64
  loc_9C2094: LitI2_Byte 0
  loc_9C2096: FLdPr Me
  loc_9C2099: MemStI2 bLogos
  loc_9C209C: Call GeneraHTML()
  loc_9C20A1: LitI2_Byte &HFF
  loc_9C20A3: FLdPr Me
  loc_9C20A6: MemStI2 bLogos
  loc_9C20A9: ExitProcHresult
  loc_9C20AA: ExitProcI2
End Sub

Public Sub HabilitarCriterio() 'A737B8
  'Data Table: 48CC64
  loc_A73754: LitI4 0
  loc_A73759: LitI4 3
  loc_A7375E: FLdRfVar var_88
  loc_A73761: Redim
  loc_A7376B: FLdPr Me
  loc_A7376E: VCallAd Control_ID_FealBoapDesdeMsk
  loc_A73771: CVarAd
  loc_A73775: ParmAry1St
  loc_A7377B: FLdPr Me
  loc_A7377E: VCallAd Control_ID_DesdeFechaCmd
  loc_A73781: CVarAd
  loc_A73785: ParmAry1St
  loc_A7378B: FLdPr Me
  loc_A7378E: VCallAd Control_ID_FealBoapHastaMsk
  loc_A73791: CVarAd
  loc_A73795: ParmAry1St
  loc_A7379B: FLdPr Me
  loc_A7379E: VCallAd Control_ID_HastaFechaCmd
  loc_A737A1: CVarAd
  loc_A737A5: ParmAry1St
  loc_A737AB: FLdRfVar var_88
  loc_A737AE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A737B3: FLdRfVar var_88
  loc_A737B6: Erase
  loc_A737B7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B83C60
  'Data Table: 48CC64
  loc_B837FC: FLdPr Me
  loc_B837FF: MemLdI2 bGenerado
  loc_B83802: BranchF loc_B83806
  loc_B83805: ExitProcHresult
  loc_B83806: LitVarStr var_94, "Generando reporte..."
  loc_B8380B: PopAdLdVar
  loc_B8380C: FLdPr Me
  loc_B8380F: VCallAd Control_ID_statusBar
  loc_B83812: FStAdFunc var_A8
  loc_B83815: FLdPr var_A8
  loc_B83818: LateIdSt
  loc_B8381D: FFree1Ad var_A8
  loc_B83820: LitI4 &HB
  loc_B83825: CI2I4
  loc_B83826: FLdPr Me
  loc_B83829: Me.MousePointer = from_stack_1
  loc_B8382E: FLdPr Me
  loc_B83831: MemLdRfVar from_stack_1.global_76
  loc_B83834: NewIfNullAd
  loc_B83837: FStAd var_AC 
  loc_B8383B: FLdPr Me
  loc_B8383E: VCallAd Control_ID_FealBoapDesdeMsk
  loc_B83841: FStAdFunc var_A8
  loc_B83844: FLdPr var_A8
  loc_B83847: LateIdLdVar var_E0 DispID_15 0
  loc_B8384E: PopAd
  loc_B83850: FLdPr Me
  loc_B83853: VCallAd Control_ID_FealBoapHastaMsk
  loc_B83856: FStAdFunc var_110
  loc_B83859: FLdPr var_110
  loc_B8385C: LateIdLdVar var_120 DispID_15 0
  loc_B83863: PopAd
  loc_B83865: FLdPr Me
  loc_B83868: VCallAd Control_ID_FealBoapDesdeMsk
  loc_B8386B: FStAdFunc var_178
  loc_B8386E: FLdPr var_178
  loc_B83871: LateIdLdVar var_188 DispID_15 0
  loc_B83878: PopAd
  loc_B8387A: FLdPr Me
  loc_B8387D: VCallAd Control_ID_FealBoapHastaMsk
  loc_B83880: FStAdFunc var_1C8
  loc_B83883: FLdPr var_1C8
  loc_B83886: LateIdLdVar var_1D8 DispID_15 0
  loc_B8388D: PopAd
  loc_B8388F: LitStr " DROP TEMPORARY TABLE IF EXISTS deta;"
  loc_B83892: LitStr " CREATE TEMPORARY TABLE deta"
  loc_B83895: ConcatStr
  loc_B83896: FStStrNoPop var_B0
  loc_B83899: LitStr " (SELECT apremio.CodiOfju, DetaOfju, boleapre.FeenAcpa, apremio.CodiOfic, apremio.CuenCtct, apremio.NumeApre, AutoApre, IFNULL(persona.DetaPers,'') DetaPers, apremio.CodiInju, SecrInap, JuzgInap, (CapiApre + RecaApre) TotaApre, HoofBoap, IofiBoap, MoofBoap, "
  loc_B8389C: ConcatStr
  loc_B8389D: FStStrNoPop var_B4
  loc_B838A0: LitStr " HoofBoap + IofiBoap + MoofBoap  AS TotaBoap"
  loc_B838A3: ConcatStr
  loc_B838A4: FStStrNoPop var_B8
  loc_B838A7: LitStr " FROM boleapre"
  loc_B838AA: ConcatStr
  loc_B838AB: FStStrNoPop var_BC
  loc_B838AE: LitStr " INNER JOIN apremio ON apremio.NumeApre = boleapre.NumeApre"
  loc_B838B1: ConcatStr
  loc_B838B2: FStStrNoPop var_C0
  loc_B838B5: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = apremio.CucuPers"
  loc_B838B8: ConcatStr
  loc_B838B9: FStStrNoPop var_C4
  loc_B838BC: LitStr " LEFT JOIN oficjust ON oficjust.CodiOfju = apremio.CodiOfju"
  loc_B838BF: ConcatStr
  loc_B838C0: FStStrNoPop var_C8
  loc_B838C3: LitStr " LEFT JOIN facipago ON facipago.CodiFapa = boleapre.CodiFapa"
  loc_B838C6: ConcatStr
  loc_B838C7: FStStrNoPop var_CC
  loc_B838CA: LitStr " WHERE EstaBoap in ('Actualizado') AND boleapre.FeenAcpa"
  loc_B838CD: ConcatStr
  loc_B838CE: FStStrNoPop var_D0
  loc_B838D1: LitStr " BETWEEN '"
  loc_B838D4: ConcatStr
  loc_B838D5: FStStrNoPop var_104
  loc_B838D8: LitI4 1
  loc_B838DD: LitI4 1
  loc_B838E2: LitVarStr var_94, "yyyy-mm-dd"
  loc_B838E7: FStVarCopyObj var_100
  loc_B838EA: FLdRfVar var_100
  loc_B838ED: FLdRfVar var_E0
  loc_B838F0: CStrVarTmp
  loc_B838F1: CVarStr var_F0
  loc_B838F4: ImpAdCallI2 Format$(, )
  loc_B838F9: FStStrNoPop var_108
  loc_B838FC: ConcatStr
  loc_B838FD: FStStrNoPop var_10C
  loc_B83900: LitStr "' AND '"
  loc_B83903: ConcatStr
  loc_B83904: FStStrNoPop var_144
  loc_B83907: LitI4 1
  loc_B8390C: LitI4 1
  loc_B83911: LitVarStr var_A4, "yyyy-mm-dd"
  loc_B83916: FStVarCopyObj var_140
  loc_B83919: FLdRfVar var_140
  loc_B8391C: FLdRfVar var_120
  loc_B8391F: CStrVarTmp
  loc_B83920: CVarStr var_130
  loc_B83923: ImpAdCallI2 Format$(, )
  loc_B83928: FStStrNoPop var_148
  loc_B8392B: ConcatStr
  loc_B8392C: FStStrNoPop var_14C
  loc_B8392F: LitStr "'"
  loc_B83932: ConcatStr
  loc_B83933: FStStrNoPop var_150
  loc_B83936: LitStr " ORDER BY apremio.CodiOfju, boleapre.FeenAcpa)"
  loc_B83939: ConcatStr
  loc_B8393A: FStStrNoPop var_154
  loc_B8393D: LitStr " UNION ALL"
  loc_B83940: ConcatStr
  loc_B83941: FStStrNoPop var_158
  loc_B83944: LitStr " (SELECT apremio.CodiOfju, DetaOfju, pagoapre.FeenAcpa, apremio.CodiOfic, apremio.CuenCtct, apremio.NumeApre, AutoApre, IFNULL(persona.DetaPers,'') DetaPers, apremio.CodiInju, SecrInap, JuzgInap, (CapiApre + RecaApre) TotaApre, HoofPaap, IofiPaap, MoofPaap, HoofPaap + IofiPaap + MoofPaap AS TotaBoap"
  loc_B83947: ConcatStr
  loc_B83948: FStStrNoPop var_15C
  loc_B8394B: LitStr " FROM pagoapre"
  loc_B8394E: ConcatStr
  loc_B8394F: FStStrNoPop var_160
  loc_B83952: LitStr " INNER JOIN apremio ON apremio.NumeApre = pagoapre.NumeApre"
  loc_B83955: ConcatStr
  loc_B83956: FStStrNoPop var_164
  loc_B83959: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = apremio.CucuPers"
  loc_B8395C: ConcatStr
  loc_B8395D: FStStrNoPop var_168
  loc_B83960: LitStr " LEFT JOIN oficjust ON oficjust.CodiOfju = apremio.CodiOfju"
  loc_B83963: ConcatStr
  loc_B83964: FStStrNoPop var_16C
  loc_B83967: LitStr " LEFT JOIN facipago ON facipago.CodiFapa = pagoapre.CodiFapa"
  loc_B8396A: ConcatStr
  loc_B8396B: FStStrNoPop var_170
  loc_B8396E: LitStr " WHERE EstaPaap in ('Actualizado') AND pagoapre.FeenAcpa"
  loc_B83971: ConcatStr
  loc_B83972: FStStrNoPop var_174
  loc_B83975: LitStr " BETWEEN '"
  loc_B83978: ConcatStr
  loc_B83979: FStStrNoPop var_1BC
  loc_B8397C: LitI4 1
  loc_B83981: LitI4 1
  loc_B83986: LitVarStr var_1A8, "yyyy-mm-dd"
  loc_B8398B: FStVarCopyObj var_1B8
  loc_B8398E: FLdRfVar var_1B8
  loc_B83991: FLdRfVar var_188
  loc_B83994: CStrVarTmp
  loc_B83995: CVarStr var_198
  loc_B83998: ImpAdCallI2 Format$(, )
  loc_B8399D: FStStrNoPop var_1C0
  loc_B839A0: ConcatStr
  loc_B839A1: FStStrNoPop var_1C4
  loc_B839A4: LitStr "' AND '"
  loc_B839A7: ConcatStr
  loc_B839A8: FStStrNoPop var_20C
  loc_B839AB: LitI4 1
  loc_B839B0: LitI4 1
  loc_B839B5: LitVarStr var_1F8, "yyyy-mm-dd"
  loc_B839BA: FStVarCopyObj var_208
  loc_B839BD: FLdRfVar var_208
  loc_B839C0: FLdRfVar var_1D8
  loc_B839C3: CStrVarTmp
  loc_B839C4: CVarStr var_1E8
  loc_B839C7: ImpAdCallI2 Format$(, )
  loc_B839CC: FStStrNoPop var_210
  loc_B839CF: ConcatStr
  loc_B839D0: FStStrNoPop var_214
  loc_B839D3: LitStr "'"
  loc_B839D6: ConcatStr
  loc_B839D7: FStStrNoPop var_218
  loc_B839DA: LitStr " ORDER BY apremio.CodiOfju, pagoapre.FeenAcpa)"
  loc_B839DD: ConcatStr
  loc_B839DE: FStStrNoPop var_21C
  loc_B839E1: FLdPr var_AC
  loc_B839E4: Call clsboleapre.RedefineRS(from_stack_1v)
  loc_B839E9: FFreeStr var_214 = "": var_218 = "": var_21C = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_104 = "": var_108 = "": var_10C = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_20C = ""
  loc_B83A2E: FFreeAd var_A8 = "": var_110 = "": var_178 = ""
  loc_B83A39: FFreeVar var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_130 = "": var_140 = "": var_188 = "": var_198 = "": var_1B8 = "": var_1D8 = "": var_1E8 = ""
  loc_B83A54: LitStr "SELECT * FROM deta ORDER BY CodiOfju, FeenAcpa"
  loc_B83A57: FLdPr var_AC
  loc_B83A5A: Call clsboleapre.RedefineRS(from_stack_1v)
  loc_B83A5F: FLdRfVar var_220
  loc_B83A62: FLdPr var_AC
  loc_B83A65: from_stack_1 = clsboleapre.RecordCount
  loc_B83A6A: ILdRf var_220
  loc_B83A6D: LitI4 0
  loc_B83A72: EqI4
  loc_B83A73: BranchF loc_B83A81
  loc_B83A76: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B83A79: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B83A7E: Branch loc_B83C35
  loc_B83A81: LitI4 0
  loc_B83A86: LitI4 1
  loc_B83A8B: FLdPr Me
  loc_B83A8E: MemLdRfVar from_stack_1.global_84
  loc_B83A91: Redim
  loc_B83A9B: LitI4 0
  loc_B83AA0: LitI4 1
  loc_B83AA5: FLdRfVar var_224
  loc_B83AA8: Redim
  loc_B83AB2: LitI2_Byte 0
  loc_B83AB4: FLdPr Me
  loc_B83AB7: MemStI2 global_88
  loc_B83ABA: FLdPr var_AC
  loc_B83ABD: Call clsboleapre.MoveFirst()
  loc_B83AC2: Call Proc_256_23_AD980C()
  loc_B83AC7: FLdRfVar var_226
  loc_B83ACA: FLdPr var_AC
  loc_B83ACD: from_stack_1 = clsboleapre.EOF
  loc_B83AD2: FLdI2 var_226
  loc_B83AD5: NotI4
  loc_B83AD6: BranchF loc_B83B17
  loc_B83AD9: FLdRfVar var_E0
  loc_B83ADC: FLdPr var_AC
  loc_B83ADF: from_stack_1 = clsboleapre.CodiOfju
  loc_B83AE4: FLdRfVar var_E0
  loc_B83AE7: FnCIntVar
  loc_B83AE9: FLdPr Me
  loc_B83AEC: MemLdI2 global_88
  loc_B83AEF: CI4UI1
  loc_B83AF0: FLdPr Me
  loc_B83AF3: MemLdStr global_80
  loc_B83AF6: Ary1LdPr
  loc_B83AF7: MemLdStr global_0
  loc_B83AFA: CI2Str
  loc_B83AFC: EqI2
  loc_B83AFD: FFreeVar var_E0 = ""
  loc_B83B04: BranchF loc_B83B0F
  loc_B83B07: Call Proc_256_24_B43174()
  loc_B83B0C: Branch loc_B83B14
  loc_B83B0F: Call Proc_256_23_AD980C()
  loc_B83B14: Branch loc_B83AC7
  loc_B83B17: LitNothing
  loc_B83B19: FStAd var_AC 
  loc_B83B1D: LitI2_Byte 1
  loc_B83B1F: FLdPr Me
  loc_B83B22: MemLdRfVar from_stack_1.global_88
  loc_B83B25: FLdPr Me
  loc_B83B28: MemLdStr global_80
  loc_B83B2B: LitI2_Byte 1
  loc_B83B2D: FnUBound
  loc_B83B2F: CI2I4
  loc_B83B30: ForI2 var_230
  loc_B83B36: LitI2_Byte 0
  loc_B83B38: LitI4 1
  loc_B83B3D: FLdPr Me
  loc_B83B40: MemLdStr global_84
  loc_B83B43: AryLock
  loc_B83B46: Ary1LdPr
  loc_B83B47: MemLdRfVar from_stack_1.global_0
  loc_B83B4A: CVarRef
  loc_B83B4F: LitI2_Byte &HFF
  loc_B83B51: FLdPr Me
  loc_B83B54: MemLdI2 global_88
  loc_B83B57: CI4UI1
  loc_B83B58: FLdPr Me
  loc_B83B5B: MemLdStr global_80
  loc_B83B5E: Ary1LdPr
  loc_B83B5F: MemLdStr global_12
  loc_B83B62: CVarStr var_94
  loc_B83B65: PopAdLdVar
  loc_B83B66: FLdRfVar var_22C
  loc_B83B69: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B83B6E: AryUnlock
  loc_B83B71: LitI2_Byte 0
  loc_B83B73: LitI4 1
  loc_B83B78: FLdPr Me
  loc_B83B7B: MemLdStr global_84
  loc_B83B7E: AryLock
  loc_B83B81: Ary1LdPr
  loc_B83B82: MemLdRfVar from_stack_1.global_4
  loc_B83B85: CVarRef
  loc_B83B8A: LitI2_Byte &HFF
  loc_B83B8C: FLdPr Me
  loc_B83B8F: MemLdI2 global_88
  loc_B83B92: CI4UI1
  loc_B83B93: FLdPr Me
  loc_B83B96: MemLdStr global_80
  loc_B83B99: Ary1LdPr
  loc_B83B9A: MemLdStr global_16
  loc_B83B9D: CVarStr var_94
  loc_B83BA0: PopAdLdVar
  loc_B83BA1: FLdRfVar var_22C
  loc_B83BA4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B83BA9: AryUnlock
  loc_B83BAC: LitI2_Byte 0
  loc_B83BAE: LitI4 1
  loc_B83BB3: FLdPr Me
  loc_B83BB6: MemLdStr global_84
  loc_B83BB9: AryLock
  loc_B83BBC: Ary1LdPr
  loc_B83BBD: MemLdRfVar from_stack_1.global_8
  loc_B83BC0: CVarRef
  loc_B83BC5: LitI2_Byte &HFF
  loc_B83BC7: FLdPr Me
  loc_B83BCA: MemLdI2 global_88
  loc_B83BCD: CI4UI1
  loc_B83BCE: FLdPr Me
  loc_B83BD1: MemLdStr global_80
  loc_B83BD4: Ary1LdPr
  loc_B83BD5: MemLdStr global_20
  loc_B83BD8: CVarStr var_94
  loc_B83BDB: PopAdLdVar
  loc_B83BDC: FLdRfVar var_22C
  loc_B83BDF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B83BE4: AryUnlock
  loc_B83BE7: LitI2_Byte 0
  loc_B83BE9: LitI4 1
  loc_B83BEE: FLdPr Me
  loc_B83BF1: MemLdStr global_84
  loc_B83BF4: AryLock
  loc_B83BF7: Ary1LdPr
  loc_B83BF8: MemLdRfVar from_stack_1.global_12
  loc_B83BFB: CVarRef
  loc_B83C00: LitI2_Byte &HFF
  loc_B83C02: FLdPr Me
  loc_B83C05: MemLdI2 global_88
  loc_B83C08: CI4UI1
  loc_B83C09: FLdPr Me
  loc_B83C0C: MemLdStr global_80
  loc_B83C0F: Ary1LdPr
  loc_B83C10: MemLdStr global_24
  loc_B83C13: CVarStr var_94
  loc_B83C16: PopAdLdVar
  loc_B83C17: FLdRfVar var_22C
  loc_B83C1A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B83C1F: AryUnlock
  loc_B83C22: FLdPr Me
  loc_B83C25: MemLdRfVar from_stack_1.global_88
  loc_B83C28: NextI2 var_230, loc_B83B36
  loc_B83C2D: LitI2_Byte &HFF
  loc_B83C2F: FLdPr Me
  loc_B83C32: MemStI2 bGenerado
  loc_B83C35: LitI4 0
  loc_B83C3A: CI2I4
  loc_B83C3B: FLdPr Me
  loc_B83C3E: Me.MousePointer = from_stack_1
  loc_B83C43: LitVarStr var_94, vbNullString
  loc_B83C48: PopAdLdVar
  loc_B83C49: FLdPr Me
  loc_B83C4C: VCallAd Control_ID_statusBar
  loc_B83C4F: FStAdFunc var_A8
  loc_B83C52: FLdPr var_A8
  loc_B83C55: LateIdSt
  loc_B83C5A: FFree1Ad var_A8
  loc_B83C5D: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BA1260
  'Data Table: 48CC64
  loc_BA0C70: FLdRfVar var_88
  loc_BA0C73: LitI2_Byte 0
  loc_BA0C75: LitI2_Byte &HFF
  loc_BA0C77: ImpAdLdI4 MemVar_D93C84
  loc_BA0C7A: FLdPr Me
  loc_BA0C7D: MemLdRfVar from_stack_1.global_56
  loc_BA0C80: NewIfNullPr IFileSystem3
  loc_BA0C83: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BA0C88: ILdRf var_88
  loc_BA0C8B: FLdPr Me
  loc_BA0C8E: MemStVarAd
  loc_BA0C92: FFree1Ad var_88
  loc_BA0C95: LitI2_Byte &HFF
  loc_BA0C97: ImpAdStI2 MemVar_D93C8A
  loc_BA0C9A: Call Proc_256_25_BE4740()
  loc_BA0C9F: LitI2_Byte 1
  loc_BA0CA1: FLdPr Me
  loc_BA0CA4: MemLdRfVar from_stack_1.global_88
  loc_BA0CA7: FLdPr Me
  loc_BA0CAA: MemLdStr global_80
  loc_BA0CAD: LitI2_Byte 1
  loc_BA0CAF: FnUBound
  loc_BA0CB1: CI2I4
  loc_BA0CB2: ForI2 var_8C
  loc_BA0CB8: LitVarStr var_9C, "  <tr align=""left"" class=""Encabezado"">"
  loc_BA0CBD: PopAdLdVar
  loc_BA0CBE: FLdPr Me
  loc_BA0CC1: MemLdRfVar from_stack_1.global_60
  loc_BA0CC4: LdPrVar
  loc_BA0CC6: LateMemCall
  loc_BA0CCC: LitStr "    <th colspan=""14"">Oficial de Justicia: "
  loc_BA0CCF: FLdPr Me
  loc_BA0CD2: MemLdI2 global_88
  loc_BA0CD5: CI4UI1
  loc_BA0CD6: FLdPr Me
  loc_BA0CD9: MemLdStr global_80
  loc_BA0CDC: Ary1LdPr
  loc_BA0CDD: MemLdStr global_0
  loc_BA0CE0: ConcatStr
  loc_BA0CE1: FStStrNoPop var_B0
  loc_BA0CE4: LitStr " - "
  loc_BA0CE7: ConcatStr
  loc_BA0CE8: FStStrNoPop var_B4
  loc_BA0CEB: FLdPr Me
  loc_BA0CEE: MemLdI2 global_88
  loc_BA0CF1: CI4UI1
  loc_BA0CF2: FLdPr Me
  loc_BA0CF5: MemLdStr global_80
  loc_BA0CF8: Ary1LdPr
  loc_BA0CF9: MemLdStr global_4
  loc_BA0CFC: ConcatStr
  loc_BA0CFD: FStStrNoPop var_B8
  loc_BA0D00: LitStr "</th>"
  loc_BA0D03: ConcatStr
  loc_BA0D04: CVarStr var_C8
  loc_BA0D07: PopAdLdVar
  loc_BA0D08: FLdPr Me
  loc_BA0D0B: MemLdRfVar from_stack_1.global_60
  loc_BA0D0E: LdPrVar
  loc_BA0D10: LateMemCall
  loc_BA0D16: FFreeStr var_B0 = "": var_B4 = ""
  loc_BA0D1F: FFree1Var var_C8 = ""
  loc_BA0D22: LitVarStr var_9C, "     </tr>"
  loc_BA0D27: PopAdLdVar
  loc_BA0D28: FLdPr Me
  loc_BA0D2B: MemLdRfVar from_stack_1.global_60
  loc_BA0D2E: LdPrVar
  loc_BA0D30: LateMemCall
  loc_BA0D36: LitI2_Byte 1
  loc_BA0D38: FLdPr Me
  loc_BA0D3B: MemLdRfVar from_stack_1.global_90
  loc_BA0D3E: FLdPr Me
  loc_BA0D41: MemLdI2 global_88
  loc_BA0D44: CI4UI1
  loc_BA0D45: FLdPr Me
  loc_BA0D48: MemLdStr global_80
  loc_BA0D4B: Ary1LdPr
  loc_BA0D4C: MemLdStr global_8
  loc_BA0D4F: LitI2_Byte 1
  loc_BA0D51: FnUBound
  loc_BA0D53: CI2I4
  loc_BA0D54: ForI2 var_CC
  loc_BA0D5A: FLdPr Me
  loc_BA0D5D: MemLdI2 global_90
  loc_BA0D60: CI4UI1
  loc_BA0D61: FLdPr Me
  loc_BA0D64: MemLdI2 global_88
  loc_BA0D67: CI4UI1
  loc_BA0D68: FLdPr Me
  loc_BA0D6B: MemLdStr global_80
  loc_BA0D6E: AryLock
  loc_BA0D71: Ary1LdPr
  loc_BA0D72: MemLdStr global_8
  loc_BA0D75: AryLock
  loc_BA0D78: Ary1LdRf
  loc_BA0D79: FStR4 var_D8
  loc_BA0D7C: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BA0D81: PopAdLdVar
  loc_BA0D82: FLdPr Me
  loc_BA0D85: MemLdRfVar from_stack_1.global_60
  loc_BA0D88: LdPrVar
  loc_BA0D8A: LateMemCall
  loc_BA0D90: LitStr vbNullString
  loc_BA0D93: LitI2_Byte 0
  loc_BA0D95: LitI2_Byte 0
  loc_BA0D97: LitI2_Byte 0
  loc_BA0D99: LitStr "center"
  loc_BA0D9C: FMemLdR4 var_D8(0)
  loc_BA0DA1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0DA6: CVarStr var_C8
  loc_BA0DA9: PopAdLdVar
  loc_BA0DAA: FLdPr Me
  loc_BA0DAD: MemLdRfVar from_stack_1.global_60
  loc_BA0DB0: LdPrVar
  loc_BA0DB2: LateMemCall
  loc_BA0DB8: FFree1Var var_C8 = ""
  loc_BA0DBB: LitStr vbNullString
  loc_BA0DBE: LitI2_Byte 0
  loc_BA0DC0: LitI2_Byte 0
  loc_BA0DC2: LitI2_Byte 0
  loc_BA0DC4: LitStr "right"
  loc_BA0DC7: FMemLdR4 var_D8(4)
  loc_BA0DCC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0DD1: CVarStr var_C8
  loc_BA0DD4: PopAdLdVar
  loc_BA0DD5: FLdPr Me
  loc_BA0DD8: MemLdRfVar from_stack_1.global_60
  loc_BA0DDB: LdPrVar
  loc_BA0DDD: LateMemCall
  loc_BA0DE3: FFree1Var var_C8 = ""
  loc_BA0DE6: LitStr vbNullString
  loc_BA0DE9: LitI2_Byte 0
  loc_BA0DEB: LitI2_Byte 0
  loc_BA0DED: LitI2_Byte 0
  loc_BA0DEF: LitStr "right"
  loc_BA0DF2: FMemLdR4 var_D8(8)
  loc_BA0DF7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0DFC: CVarStr var_C8
  loc_BA0DFF: PopAdLdVar
  loc_BA0E00: FLdPr Me
  loc_BA0E03: MemLdRfVar from_stack_1.global_60
  loc_BA0E06: LdPrVar
  loc_BA0E08: LateMemCall
  loc_BA0E0E: FFree1Var var_C8 = ""
  loc_BA0E11: LitStr vbNullString
  loc_BA0E14: LitI2_Byte 0
  loc_BA0E16: LitI2_Byte 0
  loc_BA0E18: LitI2_Byte 0
  loc_BA0E1A: LitStr "right"
  loc_BA0E1D: FMemLdR4 var_D8(12)
  loc_BA0E22: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0E27: CVarStr var_C8
  loc_BA0E2A: PopAdLdVar
  loc_BA0E2B: FLdPr Me
  loc_BA0E2E: MemLdRfVar from_stack_1.global_60
  loc_BA0E31: LdPrVar
  loc_BA0E33: LateMemCall
  loc_BA0E39: FFree1Var var_C8 = ""
  loc_BA0E3C: LitStr vbNullString
  loc_BA0E3F: LitI2_Byte 0
  loc_BA0E41: LitI2_Byte 0
  loc_BA0E43: LitI2_Byte 0
  loc_BA0E45: LitStr "right"
  loc_BA0E48: FMemLdR4 var_D8(16)
  loc_BA0E4D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0E52: CVarStr var_C8
  loc_BA0E55: PopAdLdVar
  loc_BA0E56: FLdPr Me
  loc_BA0E59: MemLdRfVar from_stack_1.global_60
  loc_BA0E5C: LdPrVar
  loc_BA0E5E: LateMemCall
  loc_BA0E64: FFree1Var var_C8 = ""
  loc_BA0E67: LitStr vbNullString
  loc_BA0E6A: LitI2_Byte 0
  loc_BA0E6C: LitI2_Byte 0
  loc_BA0E6E: LitI2_Byte 0
  loc_BA0E70: LitStr "right"
  loc_BA0E73: FMemLdR4 var_D8(20)
  loc_BA0E78: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0E7D: CVarStr var_C8
  loc_BA0E80: PopAdLdVar
  loc_BA0E81: FLdPr Me
  loc_BA0E84: MemLdRfVar from_stack_1.global_60
  loc_BA0E87: LdPrVar
  loc_BA0E89: LateMemCall
  loc_BA0E8F: FFree1Var var_C8 = ""
  loc_BA0E92: LitStr vbNullString
  loc_BA0E95: LitI2_Byte 0
  loc_BA0E97: LitI2_Byte 0
  loc_BA0E99: LitI2_Byte 0
  loc_BA0E9B: LitStr "right"
  loc_BA0E9E: FMemLdR4 var_D8(24)
  loc_BA0EA3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0EA8: CVarStr var_C8
  loc_BA0EAB: PopAdLdVar
  loc_BA0EAC: FLdPr Me
  loc_BA0EAF: MemLdRfVar from_stack_1.global_60
  loc_BA0EB2: LdPrVar
  loc_BA0EB4: LateMemCall
  loc_BA0EBA: FFree1Var var_C8 = ""
  loc_BA0EBD: LitStr vbNullString
  loc_BA0EC0: LitI2_Byte 0
  loc_BA0EC2: LitI2_Byte 0
  loc_BA0EC4: LitI2_Byte 0
  loc_BA0EC6: LitStr "right"
  loc_BA0EC9: FMemLdR4 var_D8(28)
  loc_BA0ECE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0ED3: CVarStr var_C8
  loc_BA0ED6: PopAdLdVar
  loc_BA0ED7: FLdPr Me
  loc_BA0EDA: MemLdRfVar from_stack_1.global_60
  loc_BA0EDD: LdPrVar
  loc_BA0EDF: LateMemCall
  loc_BA0EE5: FFree1Var var_C8 = ""
  loc_BA0EE8: LitStr vbNullString
  loc_BA0EEB: LitI2_Byte 0
  loc_BA0EED: LitI2_Byte 0
  loc_BA0EEF: LitI2_Byte 0
  loc_BA0EF1: LitStr "right"
  loc_BA0EF4: FMemLdR4 var_D8(32)
  loc_BA0EF9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0EFE: CVarStr var_C8
  loc_BA0F01: PopAdLdVar
  loc_BA0F02: FLdPr Me
  loc_BA0F05: MemLdRfVar from_stack_1.global_60
  loc_BA0F08: LdPrVar
  loc_BA0F0A: LateMemCall
  loc_BA0F10: FFree1Var var_C8 = ""
  loc_BA0F13: LitStr vbNullString
  loc_BA0F16: LitI2_Byte 0
  loc_BA0F18: LitI2_Byte 0
  loc_BA0F1A: LitI2_Byte 0
  loc_BA0F1C: LitStr "right"
  loc_BA0F1F: FMemLdR4 var_D8(36)
  loc_BA0F24: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0F29: CVarStr var_C8
  loc_BA0F2C: PopAdLdVar
  loc_BA0F2D: FLdPr Me
  loc_BA0F30: MemLdRfVar from_stack_1.global_60
  loc_BA0F33: LdPrVar
  loc_BA0F35: LateMemCall
  loc_BA0F3B: FFree1Var var_C8 = ""
  loc_BA0F3E: LitStr vbNullString
  loc_BA0F41: LitI2_Byte 0
  loc_BA0F43: LitI2_Byte 0
  loc_BA0F45: LitI2_Byte 0
  loc_BA0F47: LitStr "right"
  loc_BA0F4A: FMemLdR4 var_D8(44)
  loc_BA0F4F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0F54: CVarStr var_C8
  loc_BA0F57: PopAdLdVar
  loc_BA0F58: FLdPr Me
  loc_BA0F5B: MemLdRfVar from_stack_1.global_60
  loc_BA0F5E: LdPrVar
  loc_BA0F60: LateMemCall
  loc_BA0F66: FFree1Var var_C8 = ""
  loc_BA0F69: LitStr vbNullString
  loc_BA0F6C: LitI2_Byte 0
  loc_BA0F6E: LitI2_Byte 0
  loc_BA0F70: LitI2_Byte 0
  loc_BA0F72: LitStr "right"
  loc_BA0F75: FMemLdR4 var_D8(48)
  loc_BA0F7A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0F7F: CVarStr var_C8
  loc_BA0F82: PopAdLdVar
  loc_BA0F83: FLdPr Me
  loc_BA0F86: MemLdRfVar from_stack_1.global_60
  loc_BA0F89: LdPrVar
  loc_BA0F8B: LateMemCall
  loc_BA0F91: FFree1Var var_C8 = ""
  loc_BA0F94: LitStr vbNullString
  loc_BA0F97: LitI2_Byte 0
  loc_BA0F99: LitI2_Byte 0
  loc_BA0F9B: LitI2_Byte 0
  loc_BA0F9D: LitStr "right"
  loc_BA0FA0: FMemLdR4 var_D8(52)
  loc_BA0FA5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0FAA: CVarStr var_C8
  loc_BA0FAD: PopAdLdVar
  loc_BA0FAE: FLdPr Me
  loc_BA0FB1: MemLdRfVar from_stack_1.global_60
  loc_BA0FB4: LdPrVar
  loc_BA0FB6: LateMemCall
  loc_BA0FBC: FFree1Var var_C8 = ""
  loc_BA0FBF: LitStr vbNullString
  loc_BA0FC2: LitI2_Byte 0
  loc_BA0FC4: LitI2_Byte 0
  loc_BA0FC6: LitI2_Byte 0
  loc_BA0FC8: LitStr "right"
  loc_BA0FCB: FMemLdR4 var_D8(56)
  loc_BA0FD0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA0FD5: CVarStr var_C8
  loc_BA0FD8: PopAdLdVar
  loc_BA0FD9: FLdPr Me
  loc_BA0FDC: MemLdRfVar from_stack_1.global_60
  loc_BA0FDF: LdPrVar
  loc_BA0FE1: LateMemCall
  loc_BA0FE7: FFree1Var var_C8 = ""
  loc_BA0FEA: LitVarStr var_9C, "     </tr>"
  loc_BA0FEF: PopAdLdVar
  loc_BA0FF0: FLdPr Me
  loc_BA0FF3: MemLdRfVar from_stack_1.global_60
  loc_BA0FF6: LdPrVar
  loc_BA0FF8: LateMemCall
  loc_BA0FFE: LitI4 0
  loc_BA1003: FStR4 var_D8
  loc_BA1006: AryUnlock
  loc_BA1009: AryUnlock
  loc_BA100C: FLdPr Me
  loc_BA100F: MemLdRfVar from_stack_1.global_90
  loc_BA1012: NextI2 var_CC, loc_BA0D5A
  loc_BA1017: FLdPr Me
  loc_BA101A: MemLdStr global_80
  loc_BA101D: LitI2_Byte 1
  loc_BA101F: FnUBound
  loc_BA1021: LitI4 1
  loc_BA1026: GtI4
  loc_BA1027: BranchF loc_BA1134
  loc_BA102A: LitVarStr var_9C, "  <tr align=""right"" class=""SubTotales"">"
  loc_BA102F: PopAdLdVar
  loc_BA1030: FLdPr Me
  loc_BA1033: MemLdRfVar from_stack_1.global_60
  loc_BA1036: LdPrVar
  loc_BA1038: LateMemCall
  loc_BA103E: LitVarStr var_9C, "    <th colspan=""10"">Subtotal</th>"
  loc_BA1043: PopAdLdVar
  loc_BA1044: FLdPr Me
  loc_BA1047: MemLdRfVar from_stack_1.global_60
  loc_BA104A: LdPrVar
  loc_BA104C: LateMemCall
  loc_BA1052: FLdPr Me
  loc_BA1055: MemLdI2 global_88
  loc_BA1058: CI4UI1
  loc_BA1059: FLdPr Me
  loc_BA105C: MemLdStr global_80
  loc_BA105F: AryLock
  loc_BA1062: Ary1LdPr
  loc_BA1063: MemLdRfVar from_stack_1.global_12
  loc_BA1066: FStR4 var_E0
  loc_BA1069: LitStr vbNullString
  loc_BA106C: LitI2_Byte 0
  loc_BA106E: LitI2_Byte 0
  loc_BA1070: LitI2_Byte 0
  loc_BA1072: LitStr "right"
  loc_BA1075: FMemLdR4 var_E0(0)
  loc_BA107A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA107F: CVarStr var_C8
  loc_BA1082: PopAdLdVar
  loc_BA1083: FLdPr Me
  loc_BA1086: MemLdRfVar from_stack_1.global_60
  loc_BA1089: LdPrVar
  loc_BA108B: LateMemCall
  loc_BA1091: FFree1Var var_C8 = ""
  loc_BA1094: LitStr vbNullString
  loc_BA1097: LitI2_Byte 0
  loc_BA1099: LitI2_Byte 0
  loc_BA109B: LitI2_Byte 0
  loc_BA109D: LitStr "right"
  loc_BA10A0: FMemLdR4 var_E0(4)
  loc_BA10A5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA10AA: CVarStr var_C8
  loc_BA10AD: PopAdLdVar
  loc_BA10AE: FLdPr Me
  loc_BA10B1: MemLdRfVar from_stack_1.global_60
  loc_BA10B4: LdPrVar
  loc_BA10B6: LateMemCall
  loc_BA10BC: FFree1Var var_C8 = ""
  loc_BA10BF: LitStr vbNullString
  loc_BA10C2: LitI2_Byte 0
  loc_BA10C4: LitI2_Byte 0
  loc_BA10C6: LitI2_Byte 0
  loc_BA10C8: LitStr "right"
  loc_BA10CB: FMemLdR4 var_E0(8)
  loc_BA10D0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA10D5: CVarStr var_C8
  loc_BA10D8: PopAdLdVar
  loc_BA10D9: FLdPr Me
  loc_BA10DC: MemLdRfVar from_stack_1.global_60
  loc_BA10DF: LdPrVar
  loc_BA10E1: LateMemCall
  loc_BA10E7: FFree1Var var_C8 = ""
  loc_BA10EA: LitStr vbNullString
  loc_BA10ED: LitI2_Byte 0
  loc_BA10EF: LitI2_Byte 0
  loc_BA10F1: LitI2_Byte 0
  loc_BA10F3: LitStr "right"
  loc_BA10F6: FMemLdR4 var_E0(12)
  loc_BA10FB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA1100: CVarStr var_C8
  loc_BA1103: PopAdLdVar
  loc_BA1104: FLdPr Me
  loc_BA1107: MemLdRfVar from_stack_1.global_60
  loc_BA110A: LdPrVar
  loc_BA110C: LateMemCall
  loc_BA1112: FFree1Var var_C8 = ""
  loc_BA1115: LitVarStr var_9C, "     </tr>"
  loc_BA111A: PopAdLdVar
  loc_BA111B: FLdPr Me
  loc_BA111E: MemLdRfVar from_stack_1.global_60
  loc_BA1121: LdPrVar
  loc_BA1123: LateMemCall
  loc_BA1129: LitI4 0
  loc_BA112E: FStR4 var_E0
  loc_BA1131: AryUnlock
  loc_BA1134: FLdPr Me
  loc_BA1137: MemLdRfVar from_stack_1.global_88
  loc_BA113A: NextI2 var_8C, loc_BA0CB8
  loc_BA113F: LitVarStr var_9C, "    <tr class=""Totales"">"
  loc_BA1144: PopAdLdVar
  loc_BA1145: FLdPr Me
  loc_BA1148: MemLdRfVar from_stack_1.global_60
  loc_BA114B: LdPrVar
  loc_BA114D: LateMemCall
  loc_BA1153: LitVarStr var_9C, "    <td colspan=""10"" align=""right"">Total</td>"
  loc_BA1158: PopAdLdVar
  loc_BA1159: FLdPr Me
  loc_BA115C: MemLdRfVar from_stack_1.global_60
  loc_BA115F: LdPrVar
  loc_BA1161: LateMemCall
  loc_BA1167: LitI4 1
  loc_BA116C: FLdPr Me
  loc_BA116F: MemLdStr global_84
  loc_BA1172: AryLock
  loc_BA1175: Ary1LdRf
  loc_BA1176: FStR4 var_E8
  loc_BA1179: LitStr vbNullString
  loc_BA117C: LitI2_Byte 0
  loc_BA117E: LitI2_Byte 0
  loc_BA1180: LitI2_Byte 0
  loc_BA1182: LitStr "right"
  loc_BA1185: FMemLdR4 var_E8(0)
  loc_BA118A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA118F: CVarStr var_C8
  loc_BA1192: PopAdLdVar
  loc_BA1193: FLdPr Me
  loc_BA1196: MemLdRfVar from_stack_1.global_60
  loc_BA1199: LdPrVar
  loc_BA119B: LateMemCall
  loc_BA11A1: FFree1Var var_C8 = ""
  loc_BA11A4: LitStr vbNullString
  loc_BA11A7: LitI2_Byte 0
  loc_BA11A9: LitI2_Byte 0
  loc_BA11AB: LitI2_Byte 0
  loc_BA11AD: LitStr "right"
  loc_BA11B0: FMemLdR4 var_E8(4)
  loc_BA11B5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA11BA: CVarStr var_C8
  loc_BA11BD: PopAdLdVar
  loc_BA11BE: FLdPr Me
  loc_BA11C1: MemLdRfVar from_stack_1.global_60
  loc_BA11C4: LdPrVar
  loc_BA11C6: LateMemCall
  loc_BA11CC: FFree1Var var_C8 = ""
  loc_BA11CF: LitStr vbNullString
  loc_BA11D2: LitI2_Byte 0
  loc_BA11D4: LitI2_Byte 0
  loc_BA11D6: LitI2_Byte 0
  loc_BA11D8: LitStr "right"
  loc_BA11DB: FMemLdR4 var_E8(8)
  loc_BA11E0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA11E5: CVarStr var_C8
  loc_BA11E8: PopAdLdVar
  loc_BA11E9: FLdPr Me
  loc_BA11EC: MemLdRfVar from_stack_1.global_60
  loc_BA11EF: LdPrVar
  loc_BA11F1: LateMemCall
  loc_BA11F7: FFree1Var var_C8 = ""
  loc_BA11FA: LitStr vbNullString
  loc_BA11FD: LitI2_Byte 0
  loc_BA11FF: LitI2_Byte 0
  loc_BA1201: LitI2_Byte 0
  loc_BA1203: LitStr "right"
  loc_BA1206: FMemLdR4 var_E8(12)
  loc_BA120B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA1210: CVarStr var_C8
  loc_BA1213: PopAdLdVar
  loc_BA1214: FLdPr Me
  loc_BA1217: MemLdRfVar from_stack_1.global_60
  loc_BA121A: LdPrVar
  loc_BA121C: LateMemCall
  loc_BA1222: FFree1Var var_C8 = ""
  loc_BA1225: LitI4 0
  loc_BA122A: FStR4 var_E8
  loc_BA122D: AryUnlock
  loc_BA1230: LitVarStr var_9C, "     </tr>"
  loc_BA1235: PopAdLdVar
  loc_BA1236: FLdPr Me
  loc_BA1239: MemLdRfVar from_stack_1.global_60
  loc_BA123C: LdPrVar
  loc_BA123E: LateMemCall
  loc_BA1244: Call Proc_256_26_A0C2F8()
  loc_BA1249: FLdPr Me
  loc_BA124C: MemLdRfVar from_stack_1.global_60
  loc_BA124F: LdPrVar
  loc_BA1251: LateMemCall
  loc_BA1257: LitStr vbNullString
  loc_BA125A: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BA125F: ExitProcHresult
End Sub

Private Function Proc_256_23_AD980C() 'AD980C
  'Data Table: 48CC64
  loc_AD96C8: FLdPr Me
  loc_AD96CB: MemLdI2 global_88
  loc_AD96CE: LitI2_Byte 1
  loc_AD96D0: AddI2
  loc_AD96D1: FLdPr Me
  loc_AD96D4: MemStI2 global_88
  loc_AD96D7: LitI2_Byte 0
  loc_AD96D9: FLdPr Me
  loc_AD96DC: MemStI2 global_90
  loc_AD96DF: LitI4 0
  loc_AD96E4: FLdPr Me
  loc_AD96E7: MemLdI2 global_88
  loc_AD96EA: CI4UI1
  loc_AD96EB: FLdPr Me
  loc_AD96EE: MemLdRfVar from_stack_1.global_80
  loc_AD96F1: RedimPreserve
  loc_AD96FB: FLdRfVar var_94
  loc_AD96FE: FLdPr Me
  loc_AD9701: MemLdRfVar from_stack_1.global_76
  loc_AD9704: NewIfNullPr clsboleapre
  loc_AD9707: from_stack_1 = clsboleapre.CodiOfju
  loc_AD970C: LitI2_Byte 0
  loc_AD970E: LitVar_Missing var_B8
  loc_AD9711: LitI2_Byte 0
  loc_AD9713: FLdVar var_94
  loc_AD9717: FLdPr Me
  loc_AD971A: MemLdI2 global_88
  loc_AD971D: CI4UI1
  loc_AD971E: FLdPr Me
  loc_AD9721: MemLdStr global_80
  loc_AD9724: AryLock
  loc_AD9727: Ary1LdPr
  loc_AD9728: MemLdRfVar from_stack_1.global_0
  loc_AD972B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD9730: AryUnlock
  loc_AD9733: FFreeVar var_94 = ""
  loc_AD973A: FLdRfVar var_94
  loc_AD973D: FLdPr Me
  loc_AD9740: MemLdRfVar from_stack_1.global_76
  loc_AD9743: NewIfNullPr clsboleapre
  loc_AD9746: from_stack_1 = clsboleapre.DetaOfju
  loc_AD974B: LitI2_Byte 0
  loc_AD974D: LitVar_Missing var_B8
  loc_AD9750: LitI2_Byte 0
  loc_AD9752: FLdVar var_94
  loc_AD9756: FLdPr Me
  loc_AD9759: MemLdI2 global_88
  loc_AD975C: CI4UI1
  loc_AD975D: FLdPr Me
  loc_AD9760: MemLdStr global_80
  loc_AD9763: AryLock
  loc_AD9766: Ary1LdPr
  loc_AD9767: MemLdRfVar from_stack_1.global_4
  loc_AD976A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD976F: AryUnlock
  loc_AD9772: FFreeVar var_94 = ""
  loc_AD9779: FLdPr Me
  loc_AD977C: MemLdI2 global_88
  loc_AD977F: CI4UI1
  loc_AD9780: FLdPr Me
  loc_AD9783: MemLdStr global_80
  loc_AD9786: AryLock
  loc_AD9789: Ary1LdPr
  loc_AD978A: MemLdRfVar from_stack_1.global_12
  loc_AD978D: FStR4 var_C0
  loc_AD9790: LitI2_Byte 0
  loc_AD9792: LitVar_Missing var_94
  loc_AD9795: LitI2_Byte &HFF
  loc_AD9797: LitVarI2 var_A8, 0
  loc_AD979C: PopAdLdVar
  loc_AD979D: FMemLdRf 0
  loc_AD97A2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD97A7: FFree1Var var_94 = ""
  loc_AD97AA: LitI2_Byte 0
  loc_AD97AC: LitVar_Missing var_94
  loc_AD97AF: LitI2_Byte &HFF
  loc_AD97B1: LitVarI2 var_A8, 0
  loc_AD97B6: PopAdLdVar
  loc_AD97B7: FMemLdRf 0
  loc_AD97BC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD97C1: FFree1Var var_94 = ""
  loc_AD97C4: LitI2_Byte 0
  loc_AD97C6: LitVar_Missing var_94
  loc_AD97C9: LitI2_Byte &HFF
  loc_AD97CB: LitVarI2 var_A8, 0
  loc_AD97D0: PopAdLdVar
  loc_AD97D1: FMemLdRf 0
  loc_AD97D6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD97DB: FFree1Var var_94 = ""
  loc_AD97DE: LitI2_Byte 0
  loc_AD97E0: LitVar_Missing var_94
  loc_AD97E3: LitI2_Byte &HFF
  loc_AD97E5: LitVarI2 var_A8, 0
  loc_AD97EA: PopAdLdVar
  loc_AD97EB: FMemLdRf 0
  loc_AD97F0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD97F5: FFree1Var var_94 = ""
  loc_AD97F8: LitI4 0
  loc_AD97FD: FStR4 var_C0
  loc_AD9800: AryUnlock
  loc_AD9803: Call Proc_256_24_B43174()
  loc_AD9808: ExitProcHresult
End Function

Private Function Proc_256_24_B43174() 'B43174
  'Data Table: 48CC64
  loc_B42E24: FLdPr Me
  loc_B42E27: MemLdI2 global_90
  loc_B42E2A: LitI2_Byte 1
  loc_B42E2C: AddI2
  loc_B42E2D: FLdPr Me
  loc_B42E30: MemStI2 global_90
  loc_B42E33: LitI4 0
  loc_B42E38: FLdPr Me
  loc_B42E3B: MemLdI2 global_90
  loc_B42E3E: CI4UI1
  loc_B42E3F: FLdPr Me
  loc_B42E42: MemLdI2 global_88
  loc_B42E45: CI4UI1
  loc_B42E46: FLdPr Me
  loc_B42E49: MemLdStr global_80
  loc_B42E4C: Ary1LdPr
  loc_B42E4D: MemLdRfVar from_stack_1.global_8
  loc_B42E50: RedimPreserve
  loc_B42E5A: FLdPr Me
  loc_B42E5D: MemLdI2 global_90
  loc_B42E60: CI4UI1
  loc_B42E61: FLdPr Me
  loc_B42E64: MemLdI2 global_88
  loc_B42E67: CI4UI1
  loc_B42E68: FLdPr Me
  loc_B42E6B: MemLdStr global_80
  loc_B42E6E: AryLock
  loc_B42E71: Ary1LdPr
  loc_B42E72: MemLdStr global_8
  loc_B42E75: AryLock
  loc_B42E78: Ary1LdRf
  loc_B42E79: FStR4 var_90
  loc_B42E7C: FLdRfVar var_A0
  loc_B42E7F: FLdPr Me
  loc_B42E82: MemLdRfVar from_stack_1.global_76
  loc_B42E85: NewIfNullPr clsboleapre
  loc_B42E88: from_stack_1 = clsboleapre.FeenAcpa
  loc_B42E8D: LitI2_Byte 0
  loc_B42E8F: LitVar_Missing var_C0
  loc_B42E92: LitI2_Byte 0
  loc_B42E94: FLdVar var_A0
  loc_B42E98: FMemLdRf 0
  loc_B42E9D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B42EA2: FFreeVar var_A0 = ""
  loc_B42EA9: FLdRfVar var_A0
  loc_B42EAC: FLdPr Me
  loc_B42EAF: MemLdRfVar from_stack_1.global_76
  loc_B42EB2: NewIfNullPr clsboleapre
  loc_B42EB5: from_stack_1 = clsboleapre.CodiOfic
  loc_B42EBA: LitI2_Byte 0
  loc_B42EBC: LitVar_Missing var_C0
  loc_B42EBF: LitI2_Byte 0
  loc_B42EC1: FLdVar var_A0
  loc_B42EC5: FMemLdRf 0
  loc_B42ECA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B42ECF: FFreeVar var_A0 = ""
  loc_B42ED6: FLdRfVar var_A0
  loc_B42ED9: FLdPr Me
  loc_B42EDC: MemLdRfVar from_stack_1.global_76
  loc_B42EDF: NewIfNullPr clsboleapre
  loc_B42EE2: from_stack_1 = clsboleapre.CuenCtct
  loc_B42EE7: LitI2_Byte 0
  loc_B42EE9: LitVar_Missing var_C0
  loc_B42EEC: LitI2_Byte 0
  loc_B42EEE: FLdVar var_A0
  loc_B42EF2: FMemLdRf 0
  loc_B42EF7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B42EFC: FFreeVar var_A0 = ""
  loc_B42F03: FLdRfVar var_C4
  loc_B42F06: FLdPr Me
  loc_B42F09: MemLdRfVar from_stack_1.global_76
  loc_B42F0C: NewIfNullPr clsboleapre
  loc_B42F0F: from_stack_1 = clsboleapre.NumeApre
  loc_B42F14: LitI2_Byte 0
  loc_B42F16: LitVar_Missing var_A0
  loc_B42F19: LitI2_Byte 0
  loc_B42F1B: ILdRf var_C4
  loc_B42F1E: CVarI4
  loc_B42F22: PopAdLdVar
  loc_B42F23: FMemLdRf 0
  loc_B42F28: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B42F2D: FFree1Var var_A0 = ""
  loc_B42F30: FLdRfVar var_A0
  loc_B42F33: FLdPr Me
  loc_B42F36: MemLdRfVar from_stack_1.global_76
  loc_B42F39: NewIfNullPr clsboleapre
  loc_B42F3C: from_stack_1 = clsboleapre.AutoApre
  loc_B42F41: LitI2_Byte 0
  loc_B42F43: LitVar_Missing var_C0
  loc_B42F46: LitI2_Byte 0
  loc_B42F48: FLdVar var_A0
  loc_B42F4C: FMemLdRf 0
  loc_B42F51: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B42F56: FFreeVar var_A0 = ""
  loc_B42F5D: FLdRfVar var_D8
  loc_B42F60: FLdPr Me
  loc_B42F63: MemLdRfVar from_stack_1.global_76
  loc_B42F66: NewIfNullPr clsboleapre
  loc_B42F69: from_stack_1 = clsboleapre.DetaPers
  loc_B42F6E: LitI2_Byte 0
  loc_B42F70: LitVar_Missing var_C0
  loc_B42F73: LitI2_Byte 0
  loc_B42F75: FLdZeroAd var_D8
  loc_B42F78: CVarStr var_A0
  loc_B42F7B: PopAdLdVar
  loc_B42F7C: FMemLdRf 0
  loc_B42F81: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B42F86: FFreeVar var_A0 = ""
  loc_B42F8D: FLdRfVar var_D8
  loc_B42F90: FLdPr Me
  loc_B42F93: MemLdRfVar from_stack_1.global_76
  loc_B42F96: NewIfNullPr clsboleapre
  loc_B42F99: from_stack_1 = clsboleapre.SecrInap
  loc_B42F9E: LitI2_Byte 0
  loc_B42FA0: LitVar_Missing var_C0
  loc_B42FA3: LitI2_Byte 0
  loc_B42FA5: FLdZeroAd var_D8
  loc_B42FA8: CVarStr var_A0
  loc_B42FAB: PopAdLdVar
  loc_B42FAC: FMemLdRf 0
  loc_B42FB1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B42FB6: FFreeVar var_A0 = ""
  loc_B42FBD: FLdRfVar var_D8
  loc_B42FC0: FLdPr Me
  loc_B42FC3: MemLdRfVar from_stack_1.global_76
  loc_B42FC6: NewIfNullPr clsboleapre
  loc_B42FC9: from_stack_1 = clsboleapre.JuzgInap
  loc_B42FCE: LitI2_Byte 0
  loc_B42FD0: LitVar_Missing var_C0
  loc_B42FD3: LitI2_Byte 0
  loc_B42FD5: FLdZeroAd var_D8
  loc_B42FD8: CVarStr var_A0
  loc_B42FDB: PopAdLdVar
  loc_B42FDC: FMemLdRf 0
  loc_B42FE1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B42FE6: FFreeVar var_A0 = ""
  loc_B42FED: FLdRfVar var_E0
  loc_B42FF0: FLdPr Me
  loc_B42FF3: MemLdRfVar from_stack_1.global_76
  loc_B42FF6: NewIfNullPr clsboleapre
  loc_B42FF9: from_stack_1 = clsboleapre.TotaApre
  loc_B42FFE: LitI2_Byte 0
  loc_B43000: LitVar_Missing var_A0
  loc_B43003: LitI2_Byte 0
  loc_B43005: FLdFPR8 var_E0
  loc_B43008: CVarR8
  loc_B4300C: PopAdLdVar
  loc_B4300D: FMemLdRf 0
  loc_B43012: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43017: FFree1Var var_A0 = ""
  loc_B4301A: FLdRfVar var_E2
  loc_B4301D: FLdPr Me
  loc_B43020: MemLdRfVar from_stack_1.global_76
  loc_B43023: NewIfNullPr clsboleapre
  loc_B43026: from_stack_1 = clsboleapre.CodiInju
  loc_B4302B: LitI2_Byte 0
  loc_B4302D: LitVar_Missing var_A0
  loc_B43030: LitI2_Byte 0
  loc_B43032: FLdI2 var_E2
  loc_B43035: CVarI2 var_B0
  loc_B43038: PopAdLdVar
  loc_B43039: FMemLdRf 0
  loc_B4303E: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43043: FFree1Var var_A0 = ""
  loc_B43046: FLdRfVar var_E0
  loc_B43049: FLdPr Me
  loc_B4304C: MemLdRfVar from_stack_1.global_76
  loc_B4304F: NewIfNullPr clsboleapre
  loc_B43052: from_stack_1 = clsboleapre.HoofBoap
  loc_B43057: LitI2_Byte 0
  loc_B43059: FLdPr Me
  loc_B4305C: MemLdI2 global_88
  loc_B4305F: CI4UI1
  loc_B43060: FLdPr Me
  loc_B43063: MemLdStr global_80
  loc_B43066: AryLock
  loc_B43069: Ary1LdPr
  loc_B4306A: MemLdRfVar from_stack_1.global_12
  loc_B4306D: CVarRef
  loc_B43072: LitI2_Byte &HFF
  loc_B43074: FLdFPR8 var_E0
  loc_B43077: CVarR8
  loc_B4307B: PopAdLdVar
  loc_B4307C: FMemLdRf 0
  loc_B43081: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B43086: AryUnlock
  loc_B43089: FLdRfVar var_E0
  loc_B4308C: FLdPr Me
  loc_B4308F: MemLdRfVar from_stack_1.global_76
  loc_B43092: NewIfNullPr clsboleapre
  loc_B43095: from_stack_1 = clsboleapre.IofiBoap
  loc_B4309A: LitI2_Byte 0
  loc_B4309C: FLdPr Me
  loc_B4309F: MemLdI2 global_88
  loc_B430A2: CI4UI1
  loc_B430A3: FLdPr Me
  loc_B430A6: MemLdStr global_80
  loc_B430A9: AryLock
  loc_B430AC: Ary1LdPr
  loc_B430AD: MemLdRfVar from_stack_1.global_16
  loc_B430B0: CVarRef
  loc_B430B5: LitI2_Byte &HFF
  loc_B430B7: FLdFPR8 var_E0
  loc_B430BA: CVarR8
  loc_B430BE: PopAdLdVar
  loc_B430BF: FMemLdRf 0
  loc_B430C4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B430C9: AryUnlock
  loc_B430CC: FLdRfVar var_E0
  loc_B430CF: FLdPr Me
  loc_B430D2: MemLdRfVar from_stack_1.global_76
  loc_B430D5: NewIfNullPr clsboleapre
  loc_B430D8: from_stack_1 = clsboleapre.MoofBoap
  loc_B430DD: LitI2_Byte 0
  loc_B430DF: FLdPr Me
  loc_B430E2: MemLdI2 global_88
  loc_B430E5: CI4UI1
  loc_B430E6: FLdPr Me
  loc_B430E9: MemLdStr global_80
  loc_B430EC: AryLock
  loc_B430EF: Ary1LdPr
  loc_B430F0: MemLdRfVar from_stack_1.global_20
  loc_B430F3: CVarRef
  loc_B430F8: LitI2_Byte &HFF
  loc_B430FA: FLdFPR8 var_E0
  loc_B430FD: CVarR8
  loc_B43101: PopAdLdVar
  loc_B43102: FMemLdRf 0
  loc_B43107: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B4310C: AryUnlock
  loc_B4310F: FLdRfVar var_A0
  loc_B43112: FLdPr Me
  loc_B43115: MemLdRfVar from_stack_1.global_76
  loc_B43118: NewIfNullPr clsboleapre
  loc_B4311B: from_stack_1 = clsboleapre.TotaBoap
  loc_B43120: LitI2_Byte 0
  loc_B43122: FLdPr Me
  loc_B43125: MemLdI2 global_88
  loc_B43128: CI4UI1
  loc_B43129: FLdPr Me
  loc_B4312C: MemLdStr global_80
  loc_B4312F: AryLock
  loc_B43132: Ary1LdPr
  loc_B43133: MemLdRfVar from_stack_1.global_24
  loc_B43136: CVarRef
  loc_B4313B: LitI2_Byte &HFF
  loc_B4313D: FLdVar var_A0
  loc_B43141: FMemLdRf 0
  loc_B43146: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B4314B: AryUnlock
  loc_B4314E: FFree1Var var_A0 = ""
  loc_B43151: LitI4 0
  loc_B43156: FStR4 var_90
  loc_B43159: AryUnlock
  loc_B4315C: AryUnlock
  loc_B4315F: LitI2_Byte 1
  loc_B43161: PopTmpLdAd2 var_E2
  loc_B43164: FLdPr Me
  loc_B43167: MemLdRfVar from_stack_1.global_76
  loc_B4316A: NewIfNullPr clsboleapre
  loc_B4316D: Call clsboleapre.Move(from_stack_1v)
  loc_B43172: ExitProcHresult
End Function

Private Function Proc_256_25_BE4740() 'BE4740
  'Data Table: 48CC64
  loc_BE3F7C: LitVarStr var_94, "<html>"
  loc_BE3F81: PopAdLdVar
  loc_BE3F82: FLdPr Me
  loc_BE3F85: MemLdRfVar from_stack_1.global_60
  loc_BE3F88: LdPrVar
  loc_BE3F8A: LateMemCall
  loc_BE3F90: LitVarStr var_94, "<head>"
  loc_BE3F95: PopAdLdVar
  loc_BE3F96: FLdPr Me
  loc_BE3F99: MemLdRfVar from_stack_1.global_60
  loc_BE3F9C: LdPrVar
  loc_BE3F9E: LateMemCall
  loc_BE3FA4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BE3FA9: PopAdLdVar
  loc_BE3FAA: FLdPr Me
  loc_BE3FAD: MemLdRfVar from_stack_1.global_60
  loc_BE3FB0: LdPrVar
  loc_BE3FB2: LateMemCall
  loc_BE3FB8: LitStr "<title>"
  loc_BE3FBB: FLdRfVar var_A8
  loc_BE3FBE: FLdPr Me
  loc_BE3FC1:  = Me.Caption
  loc_BE3FC6: ILdRf var_A8
  loc_BE3FC9: ConcatStr
  loc_BE3FCA: FStStrNoPop var_AC
  loc_BE3FCD: LitStr "</title>"
  loc_BE3FD0: ConcatStr
  loc_BE3FD1: CVarStr var_BC
  loc_BE3FD4: PopAdLdVar
  loc_BE3FD5: FLdPr Me
  loc_BE3FD8: MemLdRfVar from_stack_1.global_60
  loc_BE3FDB: LdPrVar
  loc_BE3FDD: LateMemCall
  loc_BE3FE3: FFreeStr var_A8 = ""
  loc_BE3FEA: FFree1Var var_BC = ""
  loc_BE3FED: LitVarStr var_94, "<style type=""text/css"">"
  loc_BE3FF2: PopAdLdVar
  loc_BE3FF3: FLdPr Me
  loc_BE3FF6: MemLdRfVar from_stack_1.global_60
  loc_BE3FF9: LdPrVar
  loc_BE3FFB: LateMemCall
  loc_BE4001: LitVarStr var_94, ".Titulo1 {"
  loc_BE4006: PopAdLdVar
  loc_BE4007: FLdPr Me
  loc_BE400A: MemLdRfVar from_stack_1.global_60
  loc_BE400D: LdPrVar
  loc_BE400F: LateMemCall
  loc_BE4015: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE401A: PopAdLdVar
  loc_BE401B: FLdPr Me
  loc_BE401E: MemLdRfVar from_stack_1.global_60
  loc_BE4021: LdPrVar
  loc_BE4023: LateMemCall
  loc_BE4029: LitVarStr var_94, " font-size: 18px;"
  loc_BE402E: PopAdLdVar
  loc_BE402F: FLdPr Me
  loc_BE4032: MemLdRfVar from_stack_1.global_60
  loc_BE4035: LdPrVar
  loc_BE4037: LateMemCall
  loc_BE403D: LitVarStr var_94, " font-weight: bold;"
  loc_BE4042: PopAdLdVar
  loc_BE4043: FLdPr Me
  loc_BE4046: MemLdRfVar from_stack_1.global_60
  loc_BE4049: LdPrVar
  loc_BE404B: LateMemCall
  loc_BE4051: LitVarStr var_94, "}"
  loc_BE4056: PopAdLdVar
  loc_BE4057: FLdPr Me
  loc_BE405A: MemLdRfVar from_stack_1.global_60
  loc_BE405D: LdPrVar
  loc_BE405F: LateMemCall
  loc_BE4065: LitVarStr var_94, ".Titulo2 {"
  loc_BE406A: PopAdLdVar
  loc_BE406B: FLdPr Me
  loc_BE406E: MemLdRfVar from_stack_1.global_60
  loc_BE4071: LdPrVar
  loc_BE4073: LateMemCall
  loc_BE4079: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE407E: PopAdLdVar
  loc_BE407F: FLdPr Me
  loc_BE4082: MemLdRfVar from_stack_1.global_60
  loc_BE4085: LdPrVar
  loc_BE4087: LateMemCall
  loc_BE408D: LitVarStr var_94, " font-size: 14px;"
  loc_BE4092: PopAdLdVar
  loc_BE4093: FLdPr Me
  loc_BE4096: MemLdRfVar from_stack_1.global_60
  loc_BE4099: LdPrVar
  loc_BE409B: LateMemCall
  loc_BE40A1: LitVarStr var_94, " font-weight: bold;"
  loc_BE40A6: PopAdLdVar
  loc_BE40A7: FLdPr Me
  loc_BE40AA: MemLdRfVar from_stack_1.global_60
  loc_BE40AD: LdPrVar
  loc_BE40AF: LateMemCall
  loc_BE40B5: LitVarStr var_94, "}"
  loc_BE40BA: PopAdLdVar
  loc_BE40BB: FLdPr Me
  loc_BE40BE: MemLdRfVar from_stack_1.global_60
  loc_BE40C1: LdPrVar
  loc_BE40C3: LateMemCall
  loc_BE40C9: LitVarStr var_94, ".Normal {"
  loc_BE40CE: PopAdLdVar
  loc_BE40CF: FLdPr Me
  loc_BE40D2: MemLdRfVar from_stack_1.global_60
  loc_BE40D5: LdPrVar
  loc_BE40D7: LateMemCall
  loc_BE40DD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BE40E2: PopAdLdVar
  loc_BE40E3: FLdPr Me
  loc_BE40E6: MemLdRfVar from_stack_1.global_60
  loc_BE40E9: LdPrVar
  loc_BE40EB: LateMemCall
  loc_BE40F1: LitVarStr var_94, " font-size: 12px;"
  loc_BE40F6: PopAdLdVar
  loc_BE40F7: FLdPr Me
  loc_BE40FA: MemLdRfVar from_stack_1.global_60
  loc_BE40FD: LdPrVar
  loc_BE40FF: LateMemCall
  loc_BE4105: LitVarStr var_94, " font-style: normal;"
  loc_BE410A: PopAdLdVar
  loc_BE410B: FLdPr Me
  loc_BE410E: MemLdRfVar from_stack_1.global_60
  loc_BE4111: LdPrVar
  loc_BE4113: LateMemCall
  loc_BE4119: LitVarStr var_94, " font-weight: normal;"
  loc_BE411E: PopAdLdVar
  loc_BE411F: FLdPr Me
  loc_BE4122: MemLdRfVar from_stack_1.global_60
  loc_BE4125: LdPrVar
  loc_BE4127: LateMemCall
  loc_BE412D: LitVarStr var_94, " font-variant: normal;"
  loc_BE4132: PopAdLdVar
  loc_BE4133: FLdPr Me
  loc_BE4136: MemLdRfVar from_stack_1.global_60
  loc_BE4139: LdPrVar
  loc_BE413B: LateMemCall
  loc_BE4141: LitVarStr var_94, "}"
  loc_BE4146: PopAdLdVar
  loc_BE4147: FLdPr Me
  loc_BE414A: MemLdRfVar from_stack_1.global_60
  loc_BE414D: LdPrVar
  loc_BE414F: LateMemCall
  loc_BE4155: LitVarStr var_94, ".Encabezado {"
  loc_BE415A: PopAdLdVar
  loc_BE415B: FLdPr Me
  loc_BE415E: MemLdRfVar from_stack_1.global_60
  loc_BE4161: LdPrVar
  loc_BE4163: LateMemCall
  loc_BE4169: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BE416E: PopAdLdVar
  loc_BE416F: FLdPr Me
  loc_BE4172: MemLdRfVar from_stack_1.global_60
  loc_BE4175: LdPrVar
  loc_BE4177: LateMemCall
  loc_BE417D: LitVarStr var_94, " font-size: 11px;"
  loc_BE4182: PopAdLdVar
  loc_BE4183: FLdPr Me
  loc_BE4186: MemLdRfVar from_stack_1.global_60
  loc_BE4189: LdPrVar
  loc_BE418B: LateMemCall
  loc_BE4191: LitVarStr var_94, " font-weight: bold;"
  loc_BE4196: PopAdLdVar
  loc_BE4197: FLdPr Me
  loc_BE419A: MemLdRfVar from_stack_1.global_60
  loc_BE419D: LdPrVar
  loc_BE419F: LateMemCall
  loc_BE41A5: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BE41AA: PopAdLdVar
  loc_BE41AB: FLdPr Me
  loc_BE41AE: MemLdRfVar from_stack_1.global_60
  loc_BE41B1: LdPrVar
  loc_BE41B3: LateMemCall
  loc_BE41B9: LitVarStr var_94, "}"
  loc_BE41BE: PopAdLdVar
  loc_BE41BF: FLdPr Me
  loc_BE41C2: MemLdRfVar from_stack_1.global_60
  loc_BE41C5: LdPrVar
  loc_BE41C7: LateMemCall
  loc_BE41CD: LitVarStr var_94, ".LineaDato {"
  loc_BE41D2: PopAdLdVar
  loc_BE41D3: FLdPr Me
  loc_BE41D6: MemLdRfVar from_stack_1.global_60
  loc_BE41D9: LdPrVar
  loc_BE41DB: LateMemCall
  loc_BE41E1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE41E6: PopAdLdVar
  loc_BE41E7: FLdPr Me
  loc_BE41EA: MemLdRfVar from_stack_1.global_60
  loc_BE41ED: LdPrVar
  loc_BE41EF: LateMemCall
  loc_BE41F5: LitVarStr var_94, " font-size: 10px;"
  loc_BE41FA: PopAdLdVar
  loc_BE41FB: FLdPr Me
  loc_BE41FE: MemLdRfVar from_stack_1.global_60
  loc_BE4201: LdPrVar
  loc_BE4203: LateMemCall
  loc_BE4209: LitVarStr var_94, "}"
  loc_BE420E: PopAdLdVar
  loc_BE420F: FLdPr Me
  loc_BE4212: MemLdRfVar from_stack_1.global_60
  loc_BE4215: LdPrVar
  loc_BE4217: LateMemCall
  loc_BE421D: LitVarStr var_94, ".Totales {"
  loc_BE4222: PopAdLdVar
  loc_BE4223: FLdPr Me
  loc_BE4226: MemLdRfVar from_stack_1.global_60
  loc_BE4229: LdPrVar
  loc_BE422B: LateMemCall
  loc_BE4231: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE4236: PopAdLdVar
  loc_BE4237: FLdPr Me
  loc_BE423A: MemLdRfVar from_stack_1.global_60
  loc_BE423D: LdPrVar
  loc_BE423F: LateMemCall
  loc_BE4245: LitVarStr var_94, " font-size: 12px;"
  loc_BE424A: PopAdLdVar
  loc_BE424B: FLdPr Me
  loc_BE424E: MemLdRfVar from_stack_1.global_60
  loc_BE4251: LdPrVar
  loc_BE4253: LateMemCall
  loc_BE4259: LitVarStr var_94, " font-weight: bold;"
  loc_BE425E: PopAdLdVar
  loc_BE425F: FLdPr Me
  loc_BE4262: MemLdRfVar from_stack_1.global_60
  loc_BE4265: LdPrVar
  loc_BE4267: LateMemCall
  loc_BE426D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BE4272: PopAdLdVar
  loc_BE4273: FLdPr Me
  loc_BE4276: MemLdRfVar from_stack_1.global_60
  loc_BE4279: LdPrVar
  loc_BE427B: LateMemCall
  loc_BE4281: LitVarStr var_94, "}"
  loc_BE4286: PopAdLdVar
  loc_BE4287: FLdPr Me
  loc_BE428A: MemLdRfVar from_stack_1.global_60
  loc_BE428D: LdPrVar
  loc_BE428F: LateMemCall
  loc_BE4295: LitVarStr var_94, ".SubTotales {"
  loc_BE429A: PopAdLdVar
  loc_BE429B: FLdPr Me
  loc_BE429E: MemLdRfVar from_stack_1.global_60
  loc_BE42A1: LdPrVar
  loc_BE42A3: LateMemCall
  loc_BE42A9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BE42AE: PopAdLdVar
  loc_BE42AF: FLdPr Me
  loc_BE42B2: MemLdRfVar from_stack_1.global_60
  loc_BE42B5: LdPrVar
  loc_BE42B7: LateMemCall
  loc_BE42BD: LitVarStr var_94, " font-size: 10px;"
  loc_BE42C2: PopAdLdVar
  loc_BE42C3: FLdPr Me
  loc_BE42C6: MemLdRfVar from_stack_1.global_60
  loc_BE42C9: LdPrVar
  loc_BE42CB: LateMemCall
  loc_BE42D1: LitVarStr var_94, " font-weight: bold;"
  loc_BE42D6: PopAdLdVar
  loc_BE42D7: FLdPr Me
  loc_BE42DA: MemLdRfVar from_stack_1.global_60
  loc_BE42DD: LdPrVar
  loc_BE42DF: LateMemCall
  loc_BE42E5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BE42EA: PopAdLdVar
  loc_BE42EB: FLdPr Me
  loc_BE42EE: MemLdRfVar from_stack_1.global_60
  loc_BE42F1: LdPrVar
  loc_BE42F3: LateMemCall
  loc_BE42F9: LitVarStr var_94, "}"
  loc_BE42FE: PopAdLdVar
  loc_BE42FF: FLdPr Me
  loc_BE4302: MemLdRfVar from_stack_1.global_60
  loc_BE4305: LdPrVar
  loc_BE4307: LateMemCall
  loc_BE430D: LitVarStr var_94, ".Tilde {"
  loc_BE4312: PopAdLdVar
  loc_BE4313: FLdPr Me
  loc_BE4316: MemLdRfVar from_stack_1.global_60
  loc_BE4319: LdPrVar
  loc_BE431B: LateMemCall
  loc_BE4321: LitVarStr var_94, " font-family: Wingdings;"
  loc_BE4326: PopAdLdVar
  loc_BE4327: FLdPr Me
  loc_BE432A: MemLdRfVar from_stack_1.global_60
  loc_BE432D: LdPrVar
  loc_BE432F: LateMemCall
  loc_BE4335: LitVarStr var_94, " font-size: 12px;"
  loc_BE433A: PopAdLdVar
  loc_BE433B: FLdPr Me
  loc_BE433E: MemLdRfVar from_stack_1.global_60
  loc_BE4341: LdPrVar
  loc_BE4343: LateMemCall
  loc_BE4349: LitVarStr var_94, "}"
  loc_BE434E: PopAdLdVar
  loc_BE434F: FLdPr Me
  loc_BE4352: MemLdRfVar from_stack_1.global_60
  loc_BE4355: LdPrVar
  loc_BE4357: LateMemCall
  loc_BE435D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BE4362: PopAdLdVar
  loc_BE4363: FLdPr Me
  loc_BE4366: MemLdRfVar from_stack_1.global_60
  loc_BE4369: LdPrVar
  loc_BE436B: LateMemCall
  loc_BE4371: LitVarStr var_94, "</style>"
  loc_BE4376: PopAdLdVar
  loc_BE4377: FLdPr Me
  loc_BE437A: MemLdRfVar from_stack_1.global_60
  loc_BE437D: LdPrVar
  loc_BE437F: LateMemCall
  loc_BE4385: LitI4 0
  loc_BE438A: FStStrCopy var_AC
  loc_BE438D: FLdRfVar var_AC
  loc_BE4390: LitI4 0
  loc_BE4395: FStStrCopy var_A8
  loc_BE4398: FLdRfVar var_A8
  loc_BE439B: LitI2_Byte &HFF
  loc_BE439D: PopTmpLdAd2 var_BE
  loc_BE43A0: FLdPr Me
  loc_BE43A3: MemLdRfVar from_stack_1.global_60
  loc_BE43A6: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BE43AB: FFreeStr var_A8 = ""
  loc_BE43B2: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BE43B7: PopAdLdVar
  loc_BE43B8: FLdPr Me
  loc_BE43BB: MemLdRfVar from_stack_1.global_60
  loc_BE43BE: LdPrVar
  loc_BE43C0: LateMemCall
  loc_BE43C6: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BE43CB: PopAdLdVar
  loc_BE43CC: FLdPr Me
  loc_BE43CF: MemLdRfVar from_stack_1.global_60
  loc_BE43D2: LdPrVar
  loc_BE43D4: LateMemCall
  loc_BE43DA: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_BE43DF: PopAdLdVar
  loc_BE43E0: FLdPr Me
  loc_BE43E3: MemLdRfVar from_stack_1.global_60
  loc_BE43E6: LdPrVar
  loc_BE43E8: LateMemCall
  loc_BE43EE: FLdPr Me
  loc_BE43F1: MemLdI2 bLogos
  loc_BE43F4: BranchF loc_BE443D
  loc_BE43F7: LitStr "    <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BE43FA: LitI2_Byte &H5F
  loc_BE43FC: CStrUI1
  loc_BE43FE: FStStrNoPop var_A8
  loc_BE4401: ConcatStr
  loc_BE4402: FStStrNoPop var_AC
  loc_BE4405: LitStr """ height="""
  loc_BE4408: ConcatStr
  loc_BE4409: FStStrNoPop var_C4
  loc_BE440C: LitI2_Byte &H3C
  loc_BE440E: CStrUI1
  loc_BE4410: FStStrNoPop var_C8
  loc_BE4413: ConcatStr
  loc_BE4414: FStStrNoPop var_CC
  loc_BE4417: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BE441A: ConcatStr
  loc_BE441B: CVarStr var_BC
  loc_BE441E: PopAdLdVar
  loc_BE441F: FLdPr Me
  loc_BE4422: MemLdRfVar from_stack_1.global_60
  loc_BE4425: LdPrVar
  loc_BE4427: LateMemCall
  loc_BE442D: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BE443A: FFree1Var var_BC = ""
  loc_BE443D: LitStr "    <br>"
  loc_BE4440: LitStr "Municipalidad de Guaymallén"
  loc_BE4443: ConcatStr
  loc_BE4444: FStStrNoPop var_A8
  loc_BE4447: LitStr "</p>"
  loc_BE444A: ConcatStr
  loc_BE444B: CVarStr var_BC
  loc_BE444E: PopAdLdVar
  loc_BE444F: FLdPr Me
  loc_BE4452: MemLdRfVar from_stack_1.global_60
  loc_BE4455: LdPrVar
  loc_BE4457: LateMemCall
  loc_BE445D: FFree1Str var_A8
  loc_BE4460: FFree1Var var_BC = ""
  loc_BE4463: LitStr "    <p>"
  loc_BE4466: FLdRfVar var_A8
  loc_BE4469: FLdPr Me
  loc_BE446C:  = Me.Caption
  loc_BE4471: ILdRf var_A8
  loc_BE4474: ConcatStr
  loc_BE4475: FStStrNoPop var_AC
  loc_BE4478: LitStr "</p></th>"
  loc_BE447B: ConcatStr
  loc_BE447C: CVarStr var_BC
  loc_BE447F: PopAdLdVar
  loc_BE4480: FLdPr Me
  loc_BE4483: MemLdRfVar from_stack_1.global_60
  loc_BE4486: LdPrVar
  loc_BE4488: LateMemCall
  loc_BE448E: FFreeStr var_A8 = ""
  loc_BE4495: FFree1Var var_BC = ""
  loc_BE4498: LitVarStr var_94, "  </tr>"
  loc_BE449D: PopAdLdVar
  loc_BE449E: FLdPr Me
  loc_BE44A1: MemLdRfVar from_stack_1.global_60
  loc_BE44A4: LdPrVar
  loc_BE44A6: LateMemCall
  loc_BE44AC: LitVarStr var_94, "  <tr>"
  loc_BE44B1: PopAdLdVar
  loc_BE44B2: FLdPr Me
  loc_BE44B5: MemLdRfVar from_stack_1.global_60
  loc_BE44B8: LdPrVar
  loc_BE44BA: LateMemCall
  loc_BE44C0: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""middle""><hr></th>"
  loc_BE44C5: PopAdLdVar
  loc_BE44C6: FLdPr Me
  loc_BE44C9: MemLdRfVar from_stack_1.global_60
  loc_BE44CC: LdPrVar
  loc_BE44CE: LateMemCall
  loc_BE44D4: LitVarStr var_94, "  </tr>"
  loc_BE44D9: PopAdLdVar
  loc_BE44DA: FLdPr Me
  loc_BE44DD: MemLdRfVar from_stack_1.global_60
  loc_BE44E0: LdPrVar
  loc_BE44E2: LateMemCall
  loc_BE44E8: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BE44ED: PopAdLdVar
  loc_BE44EE: FLdPr Me
  loc_BE44F1: MemLdRfVar from_stack_1.global_60
  loc_BE44F4: LdPrVar
  loc_BE44F6: LateMemCall
  loc_BE44FC: LitStr "    <td align=""left"" valign=""top""><strong>Desde: </strong>"
  loc_BE44FF: FLdPr Me
  loc_BE4502: VCallAd Control_ID_FealBoapDesdeMsk
  loc_BE4505: FStAdFunc var_D0
  loc_BE4508: FLdPr var_D0
  loc_BE450B: LateIdLdVar var_BC DispID_15 0
  loc_BE4512: CStrVarTmp
  loc_BE4513: FStStrNoPop var_A8
  loc_BE4516: ConcatStr
  loc_BE4517: FStStrNoPop var_AC
  loc_BE451A: LitStr "<br>"
  loc_BE451D: ConcatStr
  loc_BE451E: CVarStr var_E0
  loc_BE4521: PopAdLdVar
  loc_BE4522: FLdPr Me
  loc_BE4525: MemLdRfVar from_stack_1.global_60
  loc_BE4528: LdPrVar
  loc_BE452A: LateMemCall
  loc_BE4530: FFreeStr var_A8 = ""
  loc_BE4537: FFree1Ad var_D0
  loc_BE453A: FFreeVar var_BC = ""
  loc_BE4541: LitStr "                                      <strong>Hasta: </strong>"
  loc_BE4544: FLdPr Me
  loc_BE4547: VCallAd Control_ID_FealBoapHastaMsk
  loc_BE454A: FStAdFunc var_D0
  loc_BE454D: FLdPr var_D0
  loc_BE4550: LateIdLdVar var_BC DispID_15 0
  loc_BE4557: CStrVarTmp
  loc_BE4558: FStStrNoPop var_A8
  loc_BE455B: ConcatStr
  loc_BE455C: FStStrNoPop var_AC
  loc_BE455F: LitStr "</td>"
  loc_BE4562: ConcatStr
  loc_BE4563: CVarStr var_E0
  loc_BE4566: PopAdLdVar
  loc_BE4567: FLdPr Me
  loc_BE456A: MemLdRfVar from_stack_1.global_60
  loc_BE456D: LdPrVar
  loc_BE456F: LateMemCall
  loc_BE4575: FFreeStr var_A8 = ""
  loc_BE457C: FFree1Ad var_D0
  loc_BE457F: FFreeVar var_BC = ""
  loc_BE4586: LitVarStr var_94, "    <td align=""right"" valign=""top"">"
  loc_BE458B: PopAdLdVar
  loc_BE458C: FLdPr Me
  loc_BE458F: MemLdRfVar from_stack_1.global_60
  loc_BE4592: LdPrVar
  loc_BE4594: LateMemCall
  loc_BE459A: LitVarStr var_94, "  </td></tr>"
  loc_BE459F: PopAdLdVar
  loc_BE45A0: FLdPr Me
  loc_BE45A3: MemLdRfVar from_stack_1.global_60
  loc_BE45A6: LdPrVar
  loc_BE45A8: LateMemCall
  loc_BE45AE: LitVarStr var_94, "</table>"
  loc_BE45B3: PopAdLdVar
  loc_BE45B4: FLdPr Me
  loc_BE45B7: MemLdRfVar from_stack_1.global_60
  loc_BE45BA: LdPrVar
  loc_BE45BC: LateMemCall
  loc_BE45C2: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BE45C7: PopAdLdVar
  loc_BE45C8: FLdPr Me
  loc_BE45CB: MemLdRfVar from_stack_1.global_60
  loc_BE45CE: LdPrVar
  loc_BE45D0: LateMemCall
  loc_BE45D6: LitVarStr var_94, "  <thead>"
  loc_BE45DB: PopAdLdVar
  loc_BE45DC: FLdPr Me
  loc_BE45DF: MemLdRfVar from_stack_1.global_60
  loc_BE45E2: LdPrVar
  loc_BE45E4: LateMemCall
  loc_BE45EA: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BE45EF: PopAdLdVar
  loc_BE45F0: FLdPr Me
  loc_BE45F3: MemLdRfVar from_stack_1.global_60
  loc_BE45F6: LdPrVar
  loc_BE45F8: LateMemCall
  loc_BE45FE: LitVarStr var_94, "    <th rowspan=""2"">Fecha </th>"
  loc_BE4603: PopAdLdVar
  loc_BE4604: FLdPr Me
  loc_BE4607: MemLdRfVar from_stack_1.global_60
  loc_BE460A: LdPrVar
  loc_BE460C: LateMemCall
  loc_BE4612: LitVarStr var_94, "    <th rowspan=""2"">Ofic.</th>"
  loc_BE4617: PopAdLdVar
  loc_BE4618: FLdPr Me
  loc_BE461B: MemLdRfVar from_stack_1.global_60
  loc_BE461E: LdPrVar
  loc_BE4620: LateMemCall
  loc_BE4626: LitVarStr var_94, "    <th rowspan=""2"">Cuenta</th>"
  loc_BE462B: PopAdLdVar
  loc_BE462C: FLdPr Me
  loc_BE462F: MemLdRfVar from_stack_1.global_60
  loc_BE4632: LdPrVar
  loc_BE4634: LateMemCall
  loc_BE463A: LitVarStr var_94, "    <th rowspan=""2"">Boleta Apre.</th>"
  loc_BE463F: PopAdLdVar
  loc_BE4640: FLdPr Me
  loc_BE4643: MemLdRfVar from_stack_1.global_60
  loc_BE4646: LdPrVar
  loc_BE4648: LateMemCall
  loc_BE464E: LitVarStr var_94, "    <th rowspan=""2"">Juicio</th>"
  loc_BE4653: PopAdLdVar
  loc_BE4654: FLdPr Me
  loc_BE4657: MemLdRfVar from_stack_1.global_60
  loc_BE465A: LdPrVar
  loc_BE465C: LateMemCall
  loc_BE4662: LitVarStr var_94, "    <th rowspan=""2"">Apellido y Nombre</th>"
  loc_BE4667: PopAdLdVar
  loc_BE4668: FLdPr Me
  loc_BE466B: MemLdRfVar from_stack_1.global_60
  loc_BE466E: LdPrVar
  loc_BE4670: LateMemCall
  loc_BE4676: LitVarStr var_94, "    <th rowspan=""2"">Secr.</th>"
  loc_BE467B: PopAdLdVar
  loc_BE467C: FLdPr Me
  loc_BE467F: MemLdRfVar from_stack_1.global_60
  loc_BE4682: LdPrVar
  loc_BE4684: LateMemCall
  loc_BE468A: LitVarStr var_94, "    <th rowspan=""2"">Ju.</th>"
  loc_BE468F: PopAdLdVar
  loc_BE4690: FLdPr Me
  loc_BE4693: MemLdRfVar from_stack_1.global_60
  loc_BE4696: LdPrVar
  loc_BE4698: LateMemCall
  loc_BE469E: LitVarStr var_94, "    <th rowspan=""2"">Tot. Apremio</th>"
  loc_BE46A3: PopAdLdVar
  loc_BE46A4: FLdPr Me
  loc_BE46A7: MemLdRfVar from_stack_1.global_60
  loc_BE46AA: LdPrVar
  loc_BE46AC: LateMemCall
  loc_BE46B2: LitVarStr var_94, "    <th rowspan=""2"">Inst.</th>"
  loc_BE46B7: PopAdLdVar
  loc_BE46B8: FLdPr Me
  loc_BE46BB: MemLdRfVar from_stack_1.global_60
  loc_BE46BE: LdPrVar
  loc_BE46C0: LateMemCall
  loc_BE46C6: LitVarStr var_94, "    <th rowspan=""2"">Honorarios<br>Of. de Justicia</th>"
  loc_BE46CB: PopAdLdVar
  loc_BE46CC: FLdPr Me
  loc_BE46CF: MemLdRfVar from_stack_1.global_60
  loc_BE46D2: LdPrVar
  loc_BE46D4: LateMemCall
  loc_BE46DA: LitVarStr var_94, "    <th rowspan=""2"">I.V.A<br>Of. Jus.</th>"
  loc_BE46DF: PopAdLdVar
  loc_BE46E0: FLdPr Me
  loc_BE46E3: MemLdRfVar from_stack_1.global_60
  loc_BE46E6: LdPrVar
  loc_BE46E8: LateMemCall
  loc_BE46EE: LitVarStr var_94, "    <th rowspan=""2"">Mov. Ofic.</th>"
  loc_BE46F3: PopAdLdVar
  loc_BE46F4: FLdPr Me
  loc_BE46F7: MemLdRfVar from_stack_1.global_60
  loc_BE46FA: LdPrVar
  loc_BE46FC: LateMemCall
  loc_BE4702: LitVarStr var_94, "    <th rowspan=""2"">Total</th>"
  loc_BE4707: PopAdLdVar
  loc_BE4708: FLdPr Me
  loc_BE470B: MemLdRfVar from_stack_1.global_60
  loc_BE470E: LdPrVar
  loc_BE4710: LateMemCall
  loc_BE4716: LitVarStr var_94, "  </tr>"
  loc_BE471B: PopAdLdVar
  loc_BE471C: FLdPr Me
  loc_BE471F: MemLdRfVar from_stack_1.global_60
  loc_BE4722: LdPrVar
  loc_BE4724: LateMemCall
  loc_BE472A: LitVarStr var_94, "  </thead>"
  loc_BE472F: PopAdLdVar
  loc_BE4730: FLdPr Me
  loc_BE4733: MemLdRfVar from_stack_1.global_60
  loc_BE4736: LdPrVar
  loc_BE4738: LateMemCall
  loc_BE473E: ExitProcHresult
End Function

Private Function Proc_256_26_A0C2F8() 'A0C2F8
  'Data Table: 48CC64
  loc_A0C2B8: LitVarStr var_94, "</table>"
  loc_A0C2BD: PopAdLdVar
  loc_A0C2BE: FLdPr Me
  loc_A0C2C1: MemLdRfVar from_stack_1.global_60
  loc_A0C2C4: LdPrVar
  loc_A0C2C6: LateMemCall
  loc_A0C2CC: LitVarStr var_94, "</body>"
  loc_A0C2D1: PopAdLdVar
  loc_A0C2D2: FLdPr Me
  loc_A0C2D5: MemLdRfVar from_stack_1.global_60
  loc_A0C2D8: LdPrVar
  loc_A0C2DA: LateMemCall
  loc_A0C2E0: LitVarStr var_94, "</html>"
  loc_A0C2E5: PopAdLdVar
  loc_A0C2E6: FLdPr Me
  loc_A0C2E9: MemLdRfVar from_stack_1.global_60
  loc_A0C2EC: LdPrVar
  loc_A0C2EE: LateMemCall
  loc_A0C2F4: ExitProcHresult
  loc_A0C2F5: CI2Var
End Function
