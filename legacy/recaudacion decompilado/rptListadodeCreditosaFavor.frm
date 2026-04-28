VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeCreditosaFavor
  Caption = "Listado de Creditos a Favor"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeCreditosaFavor.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8760
  ClientHeight = 2880
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2625
    Width = 8760
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptListadodeCreditosaFavor.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7680
    Top = 1560
    Width = 855
    Height = 735
    TabIndex = 11
    Cancel = -1  'True
    Picture = "rptListadodeCreditosaFavor.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeCreditosaFavor.frx":0B9C
    Left = 8280
    Top = 1320
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1320
    Width = 3255
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
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
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
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
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
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1320
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
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 1215
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 360
      Width = 1575
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
    Begin MSMask.MaskEdBox FealCtctDesdeMsk
      Left = 1320
      Top = 480
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptListadodeCreditosaFavor.frx":0C00
    End
    Begin MSMask.MaskEdBox FealCtctHastaMsk
      Left = 4320
      Top = 480
      Width = 1335
      Height = 360
      TabIndex = 4
      OleObjectBlob = "rptListadodeCreditosaFavor.frx":0CB0
    End
    Begin VB.Label Label6
      Caption = "Desde:"
      Left = 480
      Top = 480
      Width = 765
      Height = 300
      TabIndex = 1
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 3540
      Top = 480
      Width = 705
      Height = 300
      TabIndex = 3
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7800
    Top = 1920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptListadodeCreditosaFavor.frx":0D60
  End
End

Attribute VB_Name = "rptListadodeCreditosaFavor"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_005608E8
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub cmdNueva_Click() 'A7D900
  'Data Table: 468660
  loc_A7D878: LitI2_Byte 0
  loc_A7D87A: FLdPr Me
  loc_A7D87D: MemStI2 bGenerado
  loc_A7D880: LitI2_Byte &HFF
  loc_A7D882: FLdPr Me
  loc_A7D885: MemStI2 bLogos
  loc_A7D888: LitI2_Byte 0
  loc_A7D88A: ILdRf Me
  loc_A7D88D: CastAd
  loc_A7D890: FStAdFunc var_88
  loc_A7D893: FLdRfVar var_88
  loc_A7D896: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A7D89B: FFree1Ad var_88
  loc_A7D89E: LitI2_Byte 0
  loc_A7D8A0: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A7D8A5: CStrDate
  loc_A7D8A7: CVarStr var_98
  loc_A7D8AA: PopAdLdVar
  loc_A7D8AB: FLdPr Me
  loc_A7D8AE: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A7D8B1: FStAdFunc var_88
  loc_A7D8B4: FLdPr var_88
  loc_A7D8B7: LateIdSt
  loc_A7D8BC: FFree1Ad var_88
  loc_A7D8BF: FFree1Var var_98 = ""
  loc_A7D8C2: LitI2_Byte 0
  loc_A7D8C4: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A7D8C9: CStrDate
  loc_A7D8CB: CVarStr var_98
  loc_A7D8CE: PopAdLdVar
  loc_A7D8CF: FLdPr Me
  loc_A7D8D2: VCallAd Control_ID_FealCtctHastaMsk
  loc_A7D8D5: FStAdFunc var_88
  loc_A7D8D8: FLdPr var_88
  loc_A7D8DB: LateIdSt
  loc_A7D8E0: FFree1Ad var_88
  loc_A7D8E3: FFree1Var var_98 = ""
  loc_A7D8E6: Call HabilitarCriterio()
  loc_A7D8EB: ILdRf Me
  loc_A7D8EE: CastAd
  loc_A7D8F1: FStAdFunc var_88
  loc_A7D8F4: FLdRfVar var_88
  loc_A7D8F7: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A7D8FC: FFree1Ad var_88
  loc_A7D8FF: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E00AC
  'Data Table: 468660
  loc_9E0090: LitI2_Byte &HFF
  loc_9E0092: LitI2_Byte 0
  loc_9E0094: ILdRf Me
  loc_9E0097: CastAd
  loc_9E009A: FStAdFunc var_88
  loc_9E009D: FLdRfVar var_88
  loc_9E00A0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E00A5: FFree1Ad var_88
  loc_9E00A8: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CD360
  'Data Table: 468660
  loc_9CD348: ILdRf Me
  loc_9CD34B: CastAd
  loc_9CD34E: FStAdFunc var_88
  loc_9CD351: FLdRfVar var_88
  loc_9CD354: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CD359: FFree1Ad var_88
  loc_9CD35C: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A020B8
  'Data Table: 468660
  loc_A02088: LitVarStr var_94, "Cerrando..."
  loc_A0208D: PopAdLdVar
  loc_A0208E: FLdPr Me
  loc_A02091: VCallAd Control_ID_statusBar
  loc_A02094: FStAdFunc var_A8
  loc_A02097: FLdPr var_A8
  loc_A0209A: LateIdSt
  loc_A0209F: FFree1Ad var_A8
  loc_A020A2: ILdRf Me
  loc_A020A5: FStAdNoPop
  loc_A020A9: ImpAdLdRf MemVar_D9C5D8
  loc_A020AC: NewIfNullPr Global
  loc_A020AF: Global.Unload from_stack_1
  loc_A020B4: FFree1Ad var_A8
  loc_A020B7: ExitProcHresult
End Sub

Private Sub Form_Load() '9E014C
  'Data Table: 468660
  loc_9E0130: ILdRf Me
  loc_9E0133: CastAd
  loc_9E0136: FStAdFunc var_88
  loc_9E0139: FLdRfVar var_88
  loc_9E013C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9E0141: FFree1Ad var_88
  loc_9E0144: Call cmdNueva_Click()
  loc_9E0149: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CF4A0
  'Data Table: 468660
  loc_9CF488: FLdPr Me
  loc_9CF48B: VCallAd Control_ID_wbbReporte
  loc_9CF48E: FStAdFunc var_88
  loc_9CF491: FLdRfVar var_88
  loc_9CF494: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CF499: FFree1Ad var_88
  loc_9CF49C: ExitProcHresult
  loc_9CF49D: PopTmpLdAd2 arg_32B
End Sub

Private Sub FealCtctDesdeMsk_UnknownEvent_0 '9C8090
  'Data Table: 468660
  loc_9C807C: FLdPr Me
  loc_9C807F: VCallAd Control_ID_FealCtctDesdeMsk
  loc_9C8082: CVarAd
  loc_9C8086: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C808B: FFree1Var var_94 = ""
  loc_9C808E: ExitProcHresult
End Sub

Private Sub FealCtctDesdeMsk_UnknownEvent_8 'A656E0
  'Data Table: 468660
  loc_A65684: FLdPr Me
  loc_A65687: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A6568A: FStAdFunc var_88
  loc_A6568D: FLdPr var_88
  loc_A65690: LateIdLdVar var_98 DispID_15 0
  loc_A65697: CStrVarTmp
  loc_A65698: FStStrNoPop var_9C
  loc_A6569B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A656A0: FStStrNoPop var_A0
  loc_A656A3: FLdPr Me
  loc_A656A6: MemStStrCopy
  loc_A656AA: FFreeStr var_9C = ""
  loc_A656B1: FFree1Ad var_88
  loc_A656B4: FFree1Var var_98 = ""
  loc_A656B7: FLdPr Me
  loc_A656BA: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A656BD: FStAdFuncNoPop
  loc_A656C0: CastAd
  loc_A656C3: FStAdFunc var_A4
  loc_A656C6: FLdRfVar var_A4
  loc_A656C9: FLdPr Me
  loc_A656CC: MemLdStr global_88
  loc_A656CF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A656D4: IStI2 Cancel
  loc_A656D7: FFreeAd var_88 = ""
  loc_A656DE: ExitProcHresult
End Sub

Private Sub FealCtctDesdeMsk_KeyPress(KeyAscii As Integer) 'A259D4
  'Data Table: 468660
  loc_A2598C: ILdI2 KeyAscii
  loc_A2598F: CI4UI1
  loc_A25990: LitI4 &H20
  loc_A25995: EqI4
  loc_A25996: BranchF loc_A259D3
  loc_A25999: LitVar_Missing var_A4
  loc_A2599C: PopAdLdVar
  loc_A2599D: LitVarI4
  loc_A259A5: PopAdLdVar
  loc_A259A6: ImpAdLdRf MemVar_D930A4
  loc_A259A9: NewIfNullPr frmCalendario
  loc_A259AC: frmCalendario.Show from_stack_1, from_stack_2
  loc_A259B1: ImpAdLdRf MemVar_D93028
  loc_A259B4: CDargRef
  loc_A259B8: FLdPr Me
  loc_A259BB: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A259BE: FStAdFunc var_A8
  loc_A259C1: FLdPr var_A8
  loc_A259C4: LateIdSt
  loc_A259C9: FFree1Ad var_A8
  loc_A259CC: LitStr vbNullString
  loc_A259CF: ImpAdStStrCopy MemVar_D93028
  loc_A259D3: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DFFBC
  'Data Table: 468660
  loc_9DFFA0: LitI2_Byte 0
  loc_9DFFA2: PopTmpLdAd2 var_8A
  loc_9DFFA5: ILdRf Me
  loc_9DFFA8: CastAd
  loc_9DFFAB: FStAdFunc var_88
  loc_9DFFAE: FLdRfVar var_88
  loc_9DFFB1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DFFB6: FFree1Ad var_88
  loc_9DFFB9: ExitProcHresult
End Sub

Private Sub FealCtctHastaMsk_UnknownEvent_0 '9C7F70
  'Data Table: 468660
  loc_9C7F5C: FLdPr Me
  loc_9C7F5F: VCallAd Control_ID_FealCtctHastaMsk
  loc_9C7F62: CVarAd
  loc_9C7F66: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7F6B: FFree1Var var_94 = ""
  loc_9C7F6E: ExitProcHresult
End Sub

Private Function FealCtctHastaMsk_UnknownEvent_8(arg_C) 'A62F80
  'Data Table: 468660
  loc_A62F24: FLdPr Me
  loc_A62F27: VCallAd Control_ID_FealCtctHastaMsk
  loc_A62F2A: FStAdFunc var_88
  loc_A62F2D: FLdPr var_88
  loc_A62F30: LateIdLdVar var_98 DispID_15 0
  loc_A62F37: CStrVarTmp
  loc_A62F38: FStStrNoPop var_9C
  loc_A62F3B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A62F40: FStStrNoPop var_A0
  loc_A62F43: FLdPr Me
  loc_A62F46: MemStStrCopy
  loc_A62F4A: FFreeStr var_9C = ""
  loc_A62F51: FFree1Ad var_88
  loc_A62F54: FFree1Var var_98 = ""
  loc_A62F57: FLdPr Me
  loc_A62F5A: VCallAd Control_ID_FealCtctHastaMsk
  loc_A62F5D: FStAdFuncNoPop
  loc_A62F60: CastAd
  loc_A62F63: FStAdFunc var_A4
  loc_A62F66: FLdRfVar var_A4
  loc_A62F69: FLdPr Me
  loc_A62F6C: MemLdStr global_88
  loc_A62F6F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A62F74: IStI2 arg_C
  loc_A62F77: FFreeAd var_88 = ""
  loc_A62F7E: ExitProcHresult
End Function

Private Sub FealCtctHastaMsk_KeyPress(KeyAscii As Integer) 'A258DC
  'Data Table: 468660
  loc_A25894: ILdI2 KeyAscii
  loc_A25897: CI4UI1
  loc_A25898: LitI4 &H20
  loc_A2589D: EqI4
  loc_A2589E: BranchF loc_A258DB
  loc_A258A1: LitVar_Missing var_A4
  loc_A258A4: PopAdLdVar
  loc_A258A5: LitVarI4
  loc_A258AD: PopAdLdVar
  loc_A258AE: ImpAdLdRf MemVar_D930A4
  loc_A258B1: NewIfNullPr frmCalendario
  loc_A258B4: frmCalendario.Show from_stack_1, from_stack_2
  loc_A258B9: ImpAdLdRf MemVar_D93028
  loc_A258BC: CDargRef
  loc_A258C0: FLdPr Me
  loc_A258C3: VCallAd Control_ID_FealCtctHastaMsk
  loc_A258C6: FStAdFunc var_A8
  loc_A258C9: FLdPr var_A8
  loc_A258CC: LateIdSt
  loc_A258D1: FFree1Ad var_A8
  loc_A258D4: LitStr vbNullString
  loc_A258D7: ImpAdStStrCopy MemVar_D93028
  loc_A258DB: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9C91C4
  'Data Table: 468660
  loc_9C91AC: LitI2_Byte 0
  loc_9C91AE: ILdRf Me
  loc_9C91B1: CastAd
  loc_9C91B4: FStAdFunc var_88
  loc_9C91B7: FLdRfVar var_88
  loc_9C91BA: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C91BF: FFree1Ad var_88
  loc_9C91C2: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1AAD0
  'Data Table: 468660
  loc_A1AA98: FLdPr Me
  loc_A1AA9B: VCallAd Control_ID_statusBar
  loc_A1AA9E: FStAdFunc var_88
  loc_A1AAA1: FLdPr var_88
  loc_A1AAA4: LateIdLdVar var_98 DispID_1 0
  loc_A1AAAB: CStrVarTmp
  loc_A1AAAC: CVarStr var_A8
  loc_A1AAAF: PopAdLdVar
  loc_A1AAB0: FLdPr Me
  loc_A1AAB3: VCallAd Control_ID_statusBar
  loc_A1AAB6: FStAdFunc var_BC
  loc_A1AAB9: FLdPr var_BC
  loc_A1AABC: LateIdSt
  loc_A1AAC1: FFreeAd var_88 = ""
  loc_A1AAC8: FFreeVar var_98 = ""
  loc_A1AACF: ExitProcHresult
End Sub

Public Function bLogosGet() '4691E4
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4691F3
  bLogos = Value
End Sub

Public Function bGeneradoGet() '469202
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '469211
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A429A0
  'Data Table: 468660
  loc_A4295C: LitI4 0
  loc_A42961: LitI4 1
  loc_A42966: FLdRfVar var_88
  loc_A42969: Redim
  loc_A42973: FLdPr Me
  loc_A42976: VCallAd Control_ID_FealCtctDesdeMsk
  loc_A42979: CVarAd
  loc_A4297D: ParmAry1St
  loc_A42983: FLdPr Me
  loc_A42986: VCallAd Control_ID_FealCtctHastaMsk
  loc_A42989: CVarAd
  loc_A4298D: ParmAry1St
  loc_A42993: FLdRfVar var_88
  loc_A42996: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A4299B: FLdRfVar var_88
  loc_A4299E: Erase
  loc_A4299F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B583F0
  'Data Table: 468660
  loc_B58040: FLdPr Me
  loc_B58043: MemLdI2 bGenerado
  loc_B58046: BranchF loc_B5804A
  loc_B58049: ExitProcHresult
  loc_B5804A: LitVarStr var_94, "Generando reporte..."
  loc_B5804F: PopAdLdVar
  loc_B58050: FLdPr Me
  loc_B58053: VCallAd Control_ID_statusBar
  loc_B58056: FStAdFunc var_A8
  loc_B58059: FLdPr var_A8
  loc_B5805C: LateIdSt
  loc_B58061: FFree1Ad var_A8
  loc_B58064: LitI4 &HB
  loc_B58069: CI2I4
  loc_B5806A: FLdPr Me
  loc_B5806D: Me.MousePointer = from_stack_1
  loc_B58072: LitI2_Byte 0
  loc_B58074: PopTmpLdAd2 var_AA
  loc_B58077: Call FealCtctDesdeMsk_UnknownEvent_8()
  loc_B5807C: FLdPr Me
  loc_B5807F: MemLdStr global_88
  loc_B58082: LitStr vbNullString
  loc_B58085: NeStr
  loc_B58087: BranchF loc_B5808D
  loc_B5808A: Branch loc_B583C6
  loc_B5808D: LitI2_Byte 0
  loc_B5808F: PopTmpLdAd2 var_AA
  loc_B58092: from_stack_2v = FealCtctHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_B58097: FLdPr Me
  loc_B5809A: MemLdStr global_88
  loc_B5809D: LitStr vbNullString
  loc_B580A0: NeStr
  loc_B580A2: BranchF loc_B580A8
  loc_B580A5: Branch loc_B583C6
  loc_B580A8: FLdPr Me
  loc_B580AB: MemLdRfVar from_stack_1.global_76
  loc_B580AE: NewIfNullAd
  loc_B580B1: FStAd var_B0 
  loc_B580B5: FLdPr Me
  loc_B580B8: VCallAd Control_ID_FealCtctDesdeMsk
  loc_B580BB: FStAdFunc var_A8
  loc_B580BE: FLdPr var_A8
  loc_B580C1: LateIdLdVar var_CC DispID_15 0
  loc_B580C8: PopAd
  loc_B580CA: FLdPr Me
  loc_B580CD: VCallAd Control_ID_FealCtctHastaMsk
  loc_B580D0: FStAdFunc var_130
  loc_B580D3: FLdPr var_130
  loc_B580D6: LateIdLdVar var_140 DispID_15 0
  loc_B580DD: PopAd
  loc_B580DF: LitStr " SELECT creditos.CodiOfic, creditos.CuenCtct, IFNULL(DetaPers,'') DetaPers, creditos.FealCtct, SUM(creditos.DebeCred) as DebeCred,"
  loc_B580E2: LitStr " SUM(creditos.CredCred) as CredCred, SUM(creditos.DebeCred)-SUM(creditos.CredCred) as SaldCred FROM creditos"
  loc_B580E5: ConcatStr
  loc_B580E6: FStStrNoPop var_B4
  loc_B580E9: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = creditos.CodiOfic AND relacion.CuenCtct = creditos.CuenCtct AND relacion.TipoRela = 'Titular'"
  loc_B580EC: ConcatStr
  loc_B580ED: FStStrNoPop var_B8
  loc_B580F0: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_B580F3: ConcatStr
  loc_B580F4: FStStrNoPop var_BC
  loc_B580F7: LitStr " WHERE creditos.FealCtct BETWEEN "
  loc_B580FA: ConcatStr
  loc_B580FB: CVarStr var_10C
  loc_B580FE: LitI4 1
  loc_B58103: LitI4 1
  loc_B58108: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_B5810D: FStVarCopyObj var_EC
  loc_B58110: FLdRfVar var_EC
  loc_B58113: FLdRfVar var_CC
  loc_B58116: CStrVarTmp
  loc_B58117: CVarStr var_DC
  loc_B5811A: FLdRfVar var_FC
  loc_B5811D: ImpAdCallFPR4  = Format(, )
  loc_B58122: FLdRfVar var_FC
  loc_B58125: ConcatVar var_11C
  loc_B58129: LitVarStr var_A4, " AND "
  loc_B5812E: ConcatVar var_12C
  loc_B58132: LitI4 1
  loc_B58137: LitI4 1
  loc_B5813C: LitVarStr var_160, "'yyyy-mm-dd'"
  loc_B58141: FStVarCopyObj var_170
  loc_B58144: FLdRfVar var_170
  loc_B58147: FLdRfVar var_140
  loc_B5814A: CStrVarTmp
  loc_B5814B: CVarStr var_150
  loc_B5814E: FLdRfVar var_180
  loc_B58151: ImpAdCallFPR4  = Format(, )
  loc_B58156: FLdRfVar var_180
  loc_B58159: ConcatVar var_190
  loc_B5815D: LitVarStr var_1A0, " GROUP BY creditos.CodiOfic, creditos.CuenCtct, creditos.NumeCred"
  loc_B58162: ConcatVar var_1B0
  loc_B58166: CStrVarVal var_1B4
  loc_B5816A: FLdPr var_B0
  loc_B5816D: Call clscreditos.RedefineRS(from_stack_1v)
  loc_B58172: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_B5817D: FFreeAd var_A8 = ""
  loc_B58184: FFreeVar var_CC = "": var_DC = "": var_EC = "": var_10C = "": var_FC = "": var_11C = "": var_140 = "": var_150 = "": var_170 = "": var_12C = "": var_180 = "": var_190 = ""
  loc_B581A1: FLdRfVar var_1B8
  loc_B581A4: FLdPr var_B0
  loc_B581A7: from_stack_1 = clscreditos.RecordCount
  loc_B581AC: ILdRf var_1B8
  loc_B581AF: LitI4 1
  loc_B581B4: LtI4
  loc_B581B5: BranchF loc_B581C3
  loc_B581B8: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B581BB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B581C0: Branch loc_B583C6
  loc_B581C3: LitI4 0
  loc_B581C8: FLdRfVar var_1B8
  loc_B581CB: FLdPr var_B0
  loc_B581CE: from_stack_1 = clscreditos.RecordCount
  loc_B581D3: ILdRf var_1B8
  loc_B581D6: FLdPr Me
  loc_B581D9: MemLdRfVar from_stack_1.global_80
  loc_B581DC: Redim
  loc_B581E6: FLdPr var_B0
  loc_B581E9: Call clscreditos.MoveFirst()
  loc_B581EE: LitI2_Byte 1
  loc_B581F0: FLdPr Me
  loc_B581F3: MemLdRfVar from_stack_1.global_84
  loc_B581F6: FLdPr Me
  loc_B581F9: MemLdStr global_80
  loc_B581FC: LitI2_Byte 1
  loc_B581FE: FnUBound
  loc_B58200: CI2I4
  loc_B58201: ForI2 var_1BC
  loc_B58207: FLdRfVar var_AA
  loc_B5820A: FLdPr var_B0
  loc_B5820D: from_stack_1 = clscreditos.CodiOfic
  loc_B58212: LitI2_Byte 0
  loc_B58214: LitVar_Missing var_CC
  loc_B58217: LitI2_Byte 0
  loc_B58219: FLdUI1
  loc_B5821D: CVarUI1
  loc_B58221: PopAdLdVar
  loc_B58222: FLdPr Me
  loc_B58225: MemLdI2 global_84
  loc_B58228: CI4UI1
  loc_B58229: FLdPr Me
  loc_B5822C: MemLdStr global_80
  loc_B5822F: AryLock
  loc_B58232: Ary1LdPr
  loc_B58233: MemLdRfVar from_stack_1.global_0
  loc_B58236: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B5823B: AryUnlock
  loc_B5823E: FFree1Var var_CC = ""
  loc_B58241: FLdRfVar var_B4
  loc_B58244: FLdPr var_B0
  loc_B58247: from_stack_1 = clscreditos.CuenCtct
  loc_B5824C: LitI2_Byte 0
  loc_B5824E: LitVar_Missing var_DC
  loc_B58251: LitI2_Byte 0
  loc_B58253: FLdZeroAd var_B4
  loc_B58256: CVarStr var_CC
  loc_B58259: PopAdLdVar
  loc_B5825A: FLdPr Me
  loc_B5825D: MemLdI2 global_84
  loc_B58260: CI4UI1
  loc_B58261: FLdPr Me
  loc_B58264: MemLdStr global_80
  loc_B58267: AryLock
  loc_B5826A: Ary1LdPr
  loc_B5826B: MemLdRfVar from_stack_1.global_4
  loc_B5826E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B58273: AryUnlock
  loc_B58276: FFreeVar var_CC = ""
  loc_B5827D: FLdRfVar var_B4
  loc_B58280: FLdPr var_B0
  loc_B58283: from_stack_1 = clscreditos.DetaPers
  loc_B58288: LitI2_Byte 0
  loc_B5828A: LitVar_Missing var_DC
  loc_B5828D: LitI2_Byte 0
  loc_B5828F: FLdZeroAd var_B4
  loc_B58292: CVarStr var_CC
  loc_B58295: PopAdLdVar
  loc_B58296: FLdPr Me
  loc_B58299: MemLdI2 global_84
  loc_B5829C: CI4UI1
  loc_B5829D: FLdPr Me
  loc_B582A0: MemLdStr global_80
  loc_B582A3: AryLock
  loc_B582A6: Ary1LdPr
  loc_B582A7: MemLdRfVar from_stack_1.global_8
  loc_B582AA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B582AF: AryUnlock
  loc_B582B2: FFreeVar var_CC = ""
  loc_B582B9: FLdRfVar var_B4
  loc_B582BC: FLdPr var_B0
  loc_B582BF: from_stack_1 = clscreditos.FealCtct
  loc_B582C4: LitI2_Byte 0
  loc_B582C6: LitVar_Missing var_DC
  loc_B582C9: LitI2_Byte 0
  loc_B582CB: FLdZeroAd var_B4
  loc_B582CE: CVarStr var_CC
  loc_B582D1: PopAdLdVar
  loc_B582D2: FLdPr Me
  loc_B582D5: MemLdI2 global_84
  loc_B582D8: CI4UI1
  loc_B582D9: FLdPr Me
  loc_B582DC: MemLdStr global_80
  loc_B582DF: AryLock
  loc_B582E2: Ary1LdPr
  loc_B582E3: MemLdRfVar from_stack_1.global_12
  loc_B582E6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B582EB: AryUnlock
  loc_B582EE: FFreeVar var_CC = ""
  loc_B582F5: FLdRfVar var_1C8
  loc_B582F8: FLdPr var_B0
  loc_B582FB: from_stack_1 = clscreditos.DebeCred
  loc_B58300: LitI2_Byte 0
  loc_B58302: LitVar_Missing var_CC
  loc_B58305: LitI2_Byte &HFF
  loc_B58307: FLdFPR8 var_1C8
  loc_B5830A: CVarR8
  loc_B5830E: PopAdLdVar
  loc_B5830F: FLdPr Me
  loc_B58312: MemLdI2 global_84
  loc_B58315: CI4UI1
  loc_B58316: FLdPr Me
  loc_B58319: MemLdStr global_80
  loc_B5831C: AryLock
  loc_B5831F: Ary1LdPr
  loc_B58320: MemLdRfVar from_stack_1.global_16
  loc_B58323: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B58328: AryUnlock
  loc_B5832B: FFree1Var var_CC = ""
  loc_B5832E: FLdRfVar var_1C8
  loc_B58331: FLdPr var_B0
  loc_B58334: from_stack_1 = clscreditos.CredCred
  loc_B58339: LitI2_Byte 0
  loc_B5833B: LitVar_Missing var_CC
  loc_B5833E: LitI2_Byte &HFF
  loc_B58340: FLdFPR8 var_1C8
  loc_B58343: CVarR8
  loc_B58347: PopAdLdVar
  loc_B58348: FLdPr Me
  loc_B5834B: MemLdI2 global_84
  loc_B5834E: CI4UI1
  loc_B5834F: FLdPr Me
  loc_B58352: MemLdStr global_80
  loc_B58355: AryLock
  loc_B58358: Ary1LdPr
  loc_B58359: MemLdRfVar from_stack_1.global_20
  loc_B5835C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B58361: AryUnlock
  loc_B58364: FFree1Var var_CC = ""
  loc_B58367: FLdRfVar var_1C8
  loc_B5836A: FLdPr var_B0
  loc_B5836D: from_stack_1 = clscreditos.SaldCred
  loc_B58372: LitI2_Byte 0
  loc_B58374: LitVar_Missing var_CC
  loc_B58377: LitI2_Byte &HFF
  loc_B58379: FLdFPR8 var_1C8
  loc_B5837C: CVarR8
  loc_B58380: PopAdLdVar
  loc_B58381: FLdPr Me
  loc_B58384: MemLdI2 global_84
  loc_B58387: CI4UI1
  loc_B58388: FLdPr Me
  loc_B5838B: MemLdStr global_80
  loc_B5838E: AryLock
  loc_B58391: Ary1LdPr
  loc_B58392: MemLdRfVar from_stack_1.global_24
  loc_B58395: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B5839A: AryUnlock
  loc_B5839D: FFree1Var var_CC = ""
  loc_B583A0: LitI2_Byte 1
  loc_B583A2: PopTmpLdAd2 var_AA
  loc_B583A5: FLdPr var_B0
  loc_B583A8: Call clscreditos.Move(from_stack_1v)
  loc_B583AD: FLdPr Me
  loc_B583B0: MemLdRfVar from_stack_1.global_84
  loc_B583B3: NextI2 var_1BC, loc_B58207
  loc_B583B8: LitNothing
  loc_B583BA: FStAd var_B0 
  loc_B583BE: LitI2_Byte &HFF
  loc_B583C0: FLdPr Me
  loc_B583C3: MemStI2 bGenerado
  loc_B583C6: LitI4 0
  loc_B583CB: CI2I4
  loc_B583CC: FLdPr Me
  loc_B583CF: Me.MousePointer = from_stack_1
  loc_B583D4: LitVarStr var_94, vbNullString
  loc_B583D9: PopAdLdVar
  loc_B583DA: FLdPr Me
  loc_B583DD: VCallAd Control_ID_statusBar
  loc_B583E0: FStAdFunc var_A8
  loc_B583E3: FLdPr var_A8
  loc_B583E6: LateIdSt
  loc_B583EB: FFree1Ad var_A8
  loc_B583EE: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'AFC454
  'Data Table: 468660
  loc_AFC270: FLdRfVar var_88
  loc_AFC273: LitI2_Byte 0
  loc_AFC275: LitI2_Byte &HFF
  loc_AFC277: ImpAdLdI4 MemVar_D93C84
  loc_AFC27A: FLdPr Me
  loc_AFC27D: MemLdRfVar from_stack_1.global_56
  loc_AFC280: NewIfNullPr IFileSystem3
  loc_AFC283: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AFC288: ILdRf var_88
  loc_AFC28B: FLdPr Me
  loc_AFC28E: MemStVarAd
  loc_AFC292: FFree1Ad var_88
  loc_AFC295: LitI2_Byte &HFF
  loc_AFC297: ImpAdStI2 MemVar_D93C8A
  loc_AFC29A: Call Proc_349_23_BCBE00()
  loc_AFC29F: LitI2_Byte 1
  loc_AFC2A1: FLdPr Me
  loc_AFC2A4: MemLdRfVar from_stack_1.global_84
  loc_AFC2A7: FLdPr Me
  loc_AFC2AA: MemLdStr global_80
  loc_AFC2AD: LitI2_Byte 1
  loc_AFC2AF: FnUBound
  loc_AFC2B1: CI2I4
  loc_AFC2B2: ForI2 var_8C
  loc_AFC2B8: FLdPr Me
  loc_AFC2BB: MemLdI2 global_84
  loc_AFC2BE: CI4UI1
  loc_AFC2BF: FLdPr Me
  loc_AFC2C2: MemLdStr global_80
  loc_AFC2C5: AryLock
  loc_AFC2C8: Ary1LdRf
  loc_AFC2C9: FStR4 var_94
  loc_AFC2CC: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_AFC2D1: PopAdLdVar
  loc_AFC2D2: FLdPr Me
  loc_AFC2D5: MemLdRfVar from_stack_1.global_60
  loc_AFC2D8: LdPrVar
  loc_AFC2DA: LateMemCall
  loc_AFC2E0: LitStr vbNullString
  loc_AFC2E3: LitI2_Byte 0
  loc_AFC2E5: LitI2_Byte 0
  loc_AFC2E7: LitI2_Byte 0
  loc_AFC2E9: LitStr "right"
  loc_AFC2EC: FMemLdR4 var_94(0)
  loc_AFC2F1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFC2F6: CVarStr var_C4
  loc_AFC2F9: PopAdLdVar
  loc_AFC2FA: FLdPr Me
  loc_AFC2FD: MemLdRfVar from_stack_1.global_60
  loc_AFC300: LdPrVar
  loc_AFC302: LateMemCall
  loc_AFC308: FFree1Var var_C4 = ""
  loc_AFC30B: LitStr vbNullString
  loc_AFC30E: LitI2_Byte 0
  loc_AFC310: LitI2_Byte 0
  loc_AFC312: LitI2_Byte 0
  loc_AFC314: LitStr "left"
  loc_AFC317: FMemLdR4 var_94(4)
  loc_AFC31C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFC321: CVarStr var_C4
  loc_AFC324: PopAdLdVar
  loc_AFC325: FLdPr Me
  loc_AFC328: MemLdRfVar from_stack_1.global_60
  loc_AFC32B: LdPrVar
  loc_AFC32D: LateMemCall
  loc_AFC333: FFree1Var var_C4 = ""
  loc_AFC336: LitStr vbNullString
  loc_AFC339: LitI2_Byte 0
  loc_AFC33B: LitI2_Byte 0
  loc_AFC33D: LitI2_Byte 0
  loc_AFC33F: LitStr "left"
  loc_AFC342: FMemLdR4 var_94(8)
  loc_AFC347: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFC34C: CVarStr var_C4
  loc_AFC34F: PopAdLdVar
  loc_AFC350: FLdPr Me
  loc_AFC353: MemLdRfVar from_stack_1.global_60
  loc_AFC356: LdPrVar
  loc_AFC358: LateMemCall
  loc_AFC35E: FFree1Var var_C4 = ""
  loc_AFC361: LitStr vbNullString
  loc_AFC364: LitI2_Byte 0
  loc_AFC366: LitI2_Byte 0
  loc_AFC368: LitI2_Byte 0
  loc_AFC36A: LitStr "center"
  loc_AFC36D: FMemLdR4 var_94(12)
  loc_AFC372: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFC377: CVarStr var_C4
  loc_AFC37A: PopAdLdVar
  loc_AFC37B: FLdPr Me
  loc_AFC37E: MemLdRfVar from_stack_1.global_60
  loc_AFC381: LdPrVar
  loc_AFC383: LateMemCall
  loc_AFC389: FFree1Var var_C4 = ""
  loc_AFC38C: LitStr vbNullString
  loc_AFC38F: LitI2_Byte 0
  loc_AFC391: LitI2_Byte 0
  loc_AFC393: LitI2_Byte 0
  loc_AFC395: LitStr "right"
  loc_AFC398: FMemLdR4 var_94(16)
  loc_AFC39D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFC3A2: CVarStr var_C4
  loc_AFC3A5: PopAdLdVar
  loc_AFC3A6: FLdPr Me
  loc_AFC3A9: MemLdRfVar from_stack_1.global_60
  loc_AFC3AC: LdPrVar
  loc_AFC3AE: LateMemCall
  loc_AFC3B4: FFree1Var var_C4 = ""
  loc_AFC3B7: LitStr vbNullString
  loc_AFC3BA: LitI2_Byte 0
  loc_AFC3BC: LitI2_Byte 0
  loc_AFC3BE: LitI2_Byte 0
  loc_AFC3C0: LitStr "right"
  loc_AFC3C3: FMemLdR4 var_94(20)
  loc_AFC3C8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFC3CD: CVarStr var_C4
  loc_AFC3D0: PopAdLdVar
  loc_AFC3D1: FLdPr Me
  loc_AFC3D4: MemLdRfVar from_stack_1.global_60
  loc_AFC3D7: LdPrVar
  loc_AFC3D9: LateMemCall
  loc_AFC3DF: FFree1Var var_C4 = ""
  loc_AFC3E2: LitStr vbNullString
  loc_AFC3E5: LitI2_Byte 0
  loc_AFC3E7: LitI2_Byte 0
  loc_AFC3E9: LitI2_Byte 0
  loc_AFC3EB: LitStr "right"
  loc_AFC3EE: FMemLdR4 var_94(24)
  loc_AFC3F3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_AFC3F8: CVarStr var_C4
  loc_AFC3FB: PopAdLdVar
  loc_AFC3FC: FLdPr Me
  loc_AFC3FF: MemLdRfVar from_stack_1.global_60
  loc_AFC402: LdPrVar
  loc_AFC404: LateMemCall
  loc_AFC40A: FFree1Var var_C4 = ""
  loc_AFC40D: LitVarStr var_A4, "     </tr>"
  loc_AFC412: PopAdLdVar
  loc_AFC413: FLdPr Me
  loc_AFC416: MemLdRfVar from_stack_1.global_60
  loc_AFC419: LdPrVar
  loc_AFC41B: LateMemCall
  loc_AFC421: LitI4 0
  loc_AFC426: FStR4 var_94
  loc_AFC429: AryUnlock
  loc_AFC42C: FLdPr Me
  loc_AFC42F: MemLdRfVar from_stack_1.global_84
  loc_AFC432: NextI2 var_8C, loc_AFC2B8
  loc_AFC437: Call Proc_349_24_A0B1E8()
  loc_AFC43C: FLdPr Me
  loc_AFC43F: MemLdRfVar from_stack_1.global_60
  loc_AFC442: LdPrVar
  loc_AFC444: LateMemCall
  loc_AFC44A: LitStr vbNullString
  loc_AFC44D: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_AFC452: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C3654
  'Data Table: 468660
  loc_9C363C: LitI2_Byte 0
  loc_9C363E: FLdPr Me
  loc_9C3641: MemStI2 bLogos
  loc_9C3644: Call GeneraHTML()
  loc_9C3649: LitI2_Byte &HFF
  loc_9C364B: FLdPr Me
  loc_9C364E: MemStI2 bLogos
  loc_9C3651: ExitProcHresult
End Sub

Private Function Proc_349_23_BCBE00() 'BCBE00
  'Data Table: 468660
  loc_BCB700: LitVarStr var_94, "<html>"
  loc_BCB705: PopAdLdVar
  loc_BCB706: FLdPr Me
  loc_BCB709: MemLdRfVar from_stack_1.global_60
  loc_BCB70C: LdPrVar
  loc_BCB70E: LateMemCall
  loc_BCB714: LitVarStr var_94, "<head>"
  loc_BCB719: PopAdLdVar
  loc_BCB71A: FLdPr Me
  loc_BCB71D: MemLdRfVar from_stack_1.global_60
  loc_BCB720: LdPrVar
  loc_BCB722: LateMemCall
  loc_BCB728: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BCB72D: PopAdLdVar
  loc_BCB72E: FLdPr Me
  loc_BCB731: MemLdRfVar from_stack_1.global_60
  loc_BCB734: LdPrVar
  loc_BCB736: LateMemCall
  loc_BCB73C: LitStr "<title>"
  loc_BCB73F: FLdRfVar var_A8
  loc_BCB742: FLdPr Me
  loc_BCB745:  = Me.Caption
  loc_BCB74A: ILdRf var_A8
  loc_BCB74D: ConcatStr
  loc_BCB74E: FStStrNoPop var_AC
  loc_BCB751: LitStr "</title>"
  loc_BCB754: ConcatStr
  loc_BCB755: CVarStr var_BC
  loc_BCB758: PopAdLdVar
  loc_BCB759: FLdPr Me
  loc_BCB75C: MemLdRfVar from_stack_1.global_60
  loc_BCB75F: LdPrVar
  loc_BCB761: LateMemCall
  loc_BCB767: FFreeStr var_A8 = ""
  loc_BCB76E: FFree1Var var_BC = ""
  loc_BCB771: LitVarStr var_94, "<style type=""text/css"">"
  loc_BCB776: PopAdLdVar
  loc_BCB777: FLdPr Me
  loc_BCB77A: MemLdRfVar from_stack_1.global_60
  loc_BCB77D: LdPrVar
  loc_BCB77F: LateMemCall
  loc_BCB785: LitVarStr var_94, ".Titulo1 {"
  loc_BCB78A: PopAdLdVar
  loc_BCB78B: FLdPr Me
  loc_BCB78E: MemLdRfVar from_stack_1.global_60
  loc_BCB791: LdPrVar
  loc_BCB793: LateMemCall
  loc_BCB799: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCB79E: PopAdLdVar
  loc_BCB79F: FLdPr Me
  loc_BCB7A2: MemLdRfVar from_stack_1.global_60
  loc_BCB7A5: LdPrVar
  loc_BCB7A7: LateMemCall
  loc_BCB7AD: LitVarStr var_94, " font-size: 18px;"
  loc_BCB7B2: PopAdLdVar
  loc_BCB7B3: FLdPr Me
  loc_BCB7B6: MemLdRfVar from_stack_1.global_60
  loc_BCB7B9: LdPrVar
  loc_BCB7BB: LateMemCall
  loc_BCB7C1: LitVarStr var_94, " font-weight: bold;"
  loc_BCB7C6: PopAdLdVar
  loc_BCB7C7: FLdPr Me
  loc_BCB7CA: MemLdRfVar from_stack_1.global_60
  loc_BCB7CD: LdPrVar
  loc_BCB7CF: LateMemCall
  loc_BCB7D5: LitVarStr var_94, "}"
  loc_BCB7DA: PopAdLdVar
  loc_BCB7DB: FLdPr Me
  loc_BCB7DE: MemLdRfVar from_stack_1.global_60
  loc_BCB7E1: LdPrVar
  loc_BCB7E3: LateMemCall
  loc_BCB7E9: LitVarStr var_94, ".Titulo2 {"
  loc_BCB7EE: PopAdLdVar
  loc_BCB7EF: FLdPr Me
  loc_BCB7F2: MemLdRfVar from_stack_1.global_60
  loc_BCB7F5: LdPrVar
  loc_BCB7F7: LateMemCall
  loc_BCB7FD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCB802: PopAdLdVar
  loc_BCB803: FLdPr Me
  loc_BCB806: MemLdRfVar from_stack_1.global_60
  loc_BCB809: LdPrVar
  loc_BCB80B: LateMemCall
  loc_BCB811: LitVarStr var_94, " font-size: 14px;"
  loc_BCB816: PopAdLdVar
  loc_BCB817: FLdPr Me
  loc_BCB81A: MemLdRfVar from_stack_1.global_60
  loc_BCB81D: LdPrVar
  loc_BCB81F: LateMemCall
  loc_BCB825: LitVarStr var_94, " font-weight: bold;"
  loc_BCB82A: PopAdLdVar
  loc_BCB82B: FLdPr Me
  loc_BCB82E: MemLdRfVar from_stack_1.global_60
  loc_BCB831: LdPrVar
  loc_BCB833: LateMemCall
  loc_BCB839: LitVarStr var_94, "}"
  loc_BCB83E: PopAdLdVar
  loc_BCB83F: FLdPr Me
  loc_BCB842: MemLdRfVar from_stack_1.global_60
  loc_BCB845: LdPrVar
  loc_BCB847: LateMemCall
  loc_BCB84D: LitVarStr var_94, ".Normal {"
  loc_BCB852: PopAdLdVar
  loc_BCB853: FLdPr Me
  loc_BCB856: MemLdRfVar from_stack_1.global_60
  loc_BCB859: LdPrVar
  loc_BCB85B: LateMemCall
  loc_BCB861: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCB866: PopAdLdVar
  loc_BCB867: FLdPr Me
  loc_BCB86A: MemLdRfVar from_stack_1.global_60
  loc_BCB86D: LdPrVar
  loc_BCB86F: LateMemCall
  loc_BCB875: LitVarStr var_94, " font-size: 12px;"
  loc_BCB87A: PopAdLdVar
  loc_BCB87B: FLdPr Me
  loc_BCB87E: MemLdRfVar from_stack_1.global_60
  loc_BCB881: LdPrVar
  loc_BCB883: LateMemCall
  loc_BCB889: LitVarStr var_94, " font-style: normal;"
  loc_BCB88E: PopAdLdVar
  loc_BCB88F: FLdPr Me
  loc_BCB892: MemLdRfVar from_stack_1.global_60
  loc_BCB895: LdPrVar
  loc_BCB897: LateMemCall
  loc_BCB89D: LitVarStr var_94, " font-weight: normal;"
  loc_BCB8A2: PopAdLdVar
  loc_BCB8A3: FLdPr Me
  loc_BCB8A6: MemLdRfVar from_stack_1.global_60
  loc_BCB8A9: LdPrVar
  loc_BCB8AB: LateMemCall
  loc_BCB8B1: LitVarStr var_94, " font-variant: normal;"
  loc_BCB8B6: PopAdLdVar
  loc_BCB8B7: FLdPr Me
  loc_BCB8BA: MemLdRfVar from_stack_1.global_60
  loc_BCB8BD: LdPrVar
  loc_BCB8BF: LateMemCall
  loc_BCB8C5: LitVarStr var_94, "}"
  loc_BCB8CA: PopAdLdVar
  loc_BCB8CB: FLdPr Me
  loc_BCB8CE: MemLdRfVar from_stack_1.global_60
  loc_BCB8D1: LdPrVar
  loc_BCB8D3: LateMemCall
  loc_BCB8D9: LitVarStr var_94, ".Encabezado {"
  loc_BCB8DE: PopAdLdVar
  loc_BCB8DF: FLdPr Me
  loc_BCB8E2: MemLdRfVar from_stack_1.global_60
  loc_BCB8E5: LdPrVar
  loc_BCB8E7: LateMemCall
  loc_BCB8ED: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BCB8F2: PopAdLdVar
  loc_BCB8F3: FLdPr Me
  loc_BCB8F6: MemLdRfVar from_stack_1.global_60
  loc_BCB8F9: LdPrVar
  loc_BCB8FB: LateMemCall
  loc_BCB901: LitVarStr var_94, " font-size: 11px;"
  loc_BCB906: PopAdLdVar
  loc_BCB907: FLdPr Me
  loc_BCB90A: MemLdRfVar from_stack_1.global_60
  loc_BCB90D: LdPrVar
  loc_BCB90F: LateMemCall
  loc_BCB915: LitVarStr var_94, " font-weight: bold;"
  loc_BCB91A: PopAdLdVar
  loc_BCB91B: FLdPr Me
  loc_BCB91E: MemLdRfVar from_stack_1.global_60
  loc_BCB921: LdPrVar
  loc_BCB923: LateMemCall
  loc_BCB929: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BCB92E: PopAdLdVar
  loc_BCB92F: FLdPr Me
  loc_BCB932: MemLdRfVar from_stack_1.global_60
  loc_BCB935: LdPrVar
  loc_BCB937: LateMemCall
  loc_BCB93D: LitVarStr var_94, "}"
  loc_BCB942: PopAdLdVar
  loc_BCB943: FLdPr Me
  loc_BCB946: MemLdRfVar from_stack_1.global_60
  loc_BCB949: LdPrVar
  loc_BCB94B: LateMemCall
  loc_BCB951: LitVarStr var_94, ".LineaDato {"
  loc_BCB956: PopAdLdVar
  loc_BCB957: FLdPr Me
  loc_BCB95A: MemLdRfVar from_stack_1.global_60
  loc_BCB95D: LdPrVar
  loc_BCB95F: LateMemCall
  loc_BCB965: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCB96A: PopAdLdVar
  loc_BCB96B: FLdPr Me
  loc_BCB96E: MemLdRfVar from_stack_1.global_60
  loc_BCB971: LdPrVar
  loc_BCB973: LateMemCall
  loc_BCB979: LitVarStr var_94, " font-size: 10px;"
  loc_BCB97E: PopAdLdVar
  loc_BCB97F: FLdPr Me
  loc_BCB982: MemLdRfVar from_stack_1.global_60
  loc_BCB985: LdPrVar
  loc_BCB987: LateMemCall
  loc_BCB98D: LitVarStr var_94, "}"
  loc_BCB992: PopAdLdVar
  loc_BCB993: FLdPr Me
  loc_BCB996: MemLdRfVar from_stack_1.global_60
  loc_BCB999: LdPrVar
  loc_BCB99B: LateMemCall
  loc_BCB9A1: LitVarStr var_94, ".Totales {"
  loc_BCB9A6: PopAdLdVar
  loc_BCB9A7: FLdPr Me
  loc_BCB9AA: MemLdRfVar from_stack_1.global_60
  loc_BCB9AD: LdPrVar
  loc_BCB9AF: LateMemCall
  loc_BCB9B5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCB9BA: PopAdLdVar
  loc_BCB9BB: FLdPr Me
  loc_BCB9BE: MemLdRfVar from_stack_1.global_60
  loc_BCB9C1: LdPrVar
  loc_BCB9C3: LateMemCall
  loc_BCB9C9: LitVarStr var_94, " font-size: 12px;"
  loc_BCB9CE: PopAdLdVar
  loc_BCB9CF: FLdPr Me
  loc_BCB9D2: MemLdRfVar from_stack_1.global_60
  loc_BCB9D5: LdPrVar
  loc_BCB9D7: LateMemCall
  loc_BCB9DD: LitVarStr var_94, " font-weight: bold;"
  loc_BCB9E2: PopAdLdVar
  loc_BCB9E3: FLdPr Me
  loc_BCB9E6: MemLdRfVar from_stack_1.global_60
  loc_BCB9E9: LdPrVar
  loc_BCB9EB: LateMemCall
  loc_BCB9F1: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BCB9F6: PopAdLdVar
  loc_BCB9F7: FLdPr Me
  loc_BCB9FA: MemLdRfVar from_stack_1.global_60
  loc_BCB9FD: LdPrVar
  loc_BCB9FF: LateMemCall
  loc_BCBA05: LitVarStr var_94, "}"
  loc_BCBA0A: PopAdLdVar
  loc_BCBA0B: FLdPr Me
  loc_BCBA0E: MemLdRfVar from_stack_1.global_60
  loc_BCBA11: LdPrVar
  loc_BCBA13: LateMemCall
  loc_BCBA19: LitVarStr var_94, ".SubTotales {"
  loc_BCBA1E: PopAdLdVar
  loc_BCBA1F: FLdPr Me
  loc_BCBA22: MemLdRfVar from_stack_1.global_60
  loc_BCBA25: LdPrVar
  loc_BCBA27: LateMemCall
  loc_BCBA2D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCBA32: PopAdLdVar
  loc_BCBA33: FLdPr Me
  loc_BCBA36: MemLdRfVar from_stack_1.global_60
  loc_BCBA39: LdPrVar
  loc_BCBA3B: LateMemCall
  loc_BCBA41: LitVarStr var_94, " font-size: 10px;"
  loc_BCBA46: PopAdLdVar
  loc_BCBA47: FLdPr Me
  loc_BCBA4A: MemLdRfVar from_stack_1.global_60
  loc_BCBA4D: LdPrVar
  loc_BCBA4F: LateMemCall
  loc_BCBA55: LitVarStr var_94, " font-weight: bold;"
  loc_BCBA5A: PopAdLdVar
  loc_BCBA5B: FLdPr Me
  loc_BCBA5E: MemLdRfVar from_stack_1.global_60
  loc_BCBA61: LdPrVar
  loc_BCBA63: LateMemCall
  loc_BCBA69: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BCBA6E: PopAdLdVar
  loc_BCBA6F: FLdPr Me
  loc_BCBA72: MemLdRfVar from_stack_1.global_60
  loc_BCBA75: LdPrVar
  loc_BCBA77: LateMemCall
  loc_BCBA7D: LitVarStr var_94, "}"
  loc_BCBA82: PopAdLdVar
  loc_BCBA83: FLdPr Me
  loc_BCBA86: MemLdRfVar from_stack_1.global_60
  loc_BCBA89: LdPrVar
  loc_BCBA8B: LateMemCall
  loc_BCBA91: LitVarStr var_94, ".Tilde {"
  loc_BCBA96: PopAdLdVar
  loc_BCBA97: FLdPr Me
  loc_BCBA9A: MemLdRfVar from_stack_1.global_60
  loc_BCBA9D: LdPrVar
  loc_BCBA9F: LateMemCall
  loc_BCBAA5: LitVarStr var_94, " font-family: Wingdings;"
  loc_BCBAAA: PopAdLdVar
  loc_BCBAAB: FLdPr Me
  loc_BCBAAE: MemLdRfVar from_stack_1.global_60
  loc_BCBAB1: LdPrVar
  loc_BCBAB3: LateMemCall
  loc_BCBAB9: LitVarStr var_94, " font-size: 16px;"
  loc_BCBABE: PopAdLdVar
  loc_BCBABF: FLdPr Me
  loc_BCBAC2: MemLdRfVar from_stack_1.global_60
  loc_BCBAC5: LdPrVar
  loc_BCBAC7: LateMemCall
  loc_BCBACD: LitVarStr var_94, "}"
  loc_BCBAD2: PopAdLdVar
  loc_BCBAD3: FLdPr Me
  loc_BCBAD6: MemLdRfVar from_stack_1.global_60
  loc_BCBAD9: LdPrVar
  loc_BCBADB: LateMemCall
  loc_BCBAE1: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BCBAE6: PopAdLdVar
  loc_BCBAE7: FLdPr Me
  loc_BCBAEA: MemLdRfVar from_stack_1.global_60
  loc_BCBAED: LdPrVar
  loc_BCBAEF: LateMemCall
  loc_BCBAF5: LitVarStr var_94, "</style>"
  loc_BCBAFA: PopAdLdVar
  loc_BCBAFB: FLdPr Me
  loc_BCBAFE: MemLdRfVar from_stack_1.global_60
  loc_BCBB01: LdPrVar
  loc_BCBB03: LateMemCall
  loc_BCBB09: LitI4 0
  loc_BCBB0E: FStStrCopy var_AC
  loc_BCBB11: FLdRfVar var_AC
  loc_BCBB14: LitI4 0
  loc_BCBB19: FStStrCopy var_A8
  loc_BCBB1C: FLdRfVar var_A8
  loc_BCBB1F: LitI2_Byte 0
  loc_BCBB21: PopTmpLdAd2 var_BE
  loc_BCBB24: FLdPr Me
  loc_BCBB27: MemLdRfVar from_stack_1.global_60
  loc_BCBB2A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BCBB2F: FFreeStr var_A8 = ""
  loc_BCBB36: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BCBB3B: PopAdLdVar
  loc_BCBB3C: FLdPr Me
  loc_BCBB3F: MemLdRfVar from_stack_1.global_60
  loc_BCBB42: LdPrVar
  loc_BCBB44: LateMemCall
  loc_BCBB4A: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BCBB4F: PopAdLdVar
  loc_BCBB50: FLdPr Me
  loc_BCBB53: MemLdRfVar from_stack_1.global_60
  loc_BCBB56: LdPrVar
  loc_BCBB58: LateMemCall
  loc_BCBB5E: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p>"
  loc_BCBB63: PopAdLdVar
  loc_BCBB64: FLdPr Me
  loc_BCBB67: MemLdRfVar from_stack_1.global_60
  loc_BCBB6A: LdPrVar
  loc_BCBB6C: LateMemCall
  loc_BCBB72: FLdPr Me
  loc_BCBB75: MemLdI2 bLogos
  loc_BCBB78: BranchF loc_BCBBD3
  loc_BCBB7B: LitStr "  <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BCBB7E: LitI2_Byte &H5F
  loc_BCBB80: CStrUI1
  loc_BCBB82: FStStrNoPop var_A8
  loc_BCBB85: ConcatStr
  loc_BCBB86: FStStrNoPop var_AC
  loc_BCBB89: LitStr """ height="""
  loc_BCBB8C: ConcatStr
  loc_BCBB8D: FStStrNoPop var_C4
  loc_BCBB90: LitI2_Byte &H3C
  loc_BCBB92: CStrUI1
  loc_BCBB94: FStStrNoPop var_C8
  loc_BCBB97: ConcatStr
  loc_BCBB98: FStStrNoPop var_CC
  loc_BCBB9B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BCBB9E: ConcatStr
  loc_BCBB9F: FStStrNoPop var_D0
  loc_BCBBA2: LitStr "Municipalidad de Guaymallén"
  loc_BCBBA5: ConcatStr
  loc_BCBBA6: FStStrNoPop var_D4
  loc_BCBBA9: LitStr "</p>"
  loc_BCBBAC: ConcatStr
  loc_BCBBAD: CVarStr var_BC
  loc_BCBBB0: PopAdLdVar
  loc_BCBBB1: FLdPr Me
  loc_BCBBB4: MemLdRfVar from_stack_1.global_60
  loc_BCBBB7: LdPrVar
  loc_BCBBB9: LateMemCall
  loc_BCBBBF: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BCBBD0: FFree1Var var_BC = ""
  loc_BCBBD3: LitStr "    <p>"
  loc_BCBBD6: FLdRfVar var_A8
  loc_BCBBD9: FLdPr Me
  loc_BCBBDC:  = Me.Caption
  loc_BCBBE1: ILdRf var_A8
  loc_BCBBE4: ConcatStr
  loc_BCBBE5: FStStrNoPop var_AC
  loc_BCBBE8: LitStr "</p></th>"
  loc_BCBBEB: ConcatStr
  loc_BCBBEC: CVarStr var_BC
  loc_BCBBEF: PopAdLdVar
  loc_BCBBF0: FLdPr Me
  loc_BCBBF3: MemLdRfVar from_stack_1.global_60
  loc_BCBBF6: LdPrVar
  loc_BCBBF8: LateMemCall
  loc_BCBBFE: FFreeStr var_A8 = ""
  loc_BCBC05: FFree1Var var_BC = ""
  loc_BCBC08: LitVarStr var_94, "  </tr>"
  loc_BCBC0D: PopAdLdVar
  loc_BCBC0E: FLdPr Me
  loc_BCBC11: MemLdRfVar from_stack_1.global_60
  loc_BCBC14: LdPrVar
  loc_BCBC16: LateMemCall
  loc_BCBC1C: LitVarStr var_94, "  <tr>"
  loc_BCBC21: PopAdLdVar
  loc_BCBC22: FLdPr Me
  loc_BCBC25: MemLdRfVar from_stack_1.global_60
  loc_BCBC28: LdPrVar
  loc_BCBC2A: LateMemCall
  loc_BCBC30: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_BCBC35: PopAdLdVar
  loc_BCBC36: FLdPr Me
  loc_BCBC39: MemLdRfVar from_stack_1.global_60
  loc_BCBC3C: LdPrVar
  loc_BCBC3E: LateMemCall
  loc_BCBC44: LitVarStr var_94, "  </tr>"
  loc_BCBC49: PopAdLdVar
  loc_BCBC4A: FLdPr Me
  loc_BCBC4D: MemLdRfVar from_stack_1.global_60
  loc_BCBC50: LdPrVar
  loc_BCBC52: LateMemCall
  loc_BCBC58: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BCBC5D: PopAdLdVar
  loc_BCBC5E: FLdPr Me
  loc_BCBC61: MemLdRfVar from_stack_1.global_60
  loc_BCBC64: LdPrVar
  loc_BCBC66: LateMemCall
  loc_BCBC6C: LitStr "    <td align=""left""><strong>Desde: </strong>"
  loc_BCBC6F: FLdPr Me
  loc_BCBC72: VCallAd Control_ID_FealCtctDesdeMsk
  loc_BCBC75: FStAdFunc var_D8
  loc_BCBC78: FLdPr var_D8
  loc_BCBC7B: LateIdLdVar var_BC DispID_15 0
  loc_BCBC82: CStrVarTmp
  loc_BCBC83: FStStrNoPop var_A8
  loc_BCBC86: ConcatStr
  loc_BCBC87: FStStrNoPop var_AC
  loc_BCBC8A: LitStr "</td>"
  loc_BCBC8D: ConcatStr
  loc_BCBC8E: CVarStr var_E8
  loc_BCBC91: PopAdLdVar
  loc_BCBC92: FLdPr Me
  loc_BCBC95: MemLdRfVar from_stack_1.global_60
  loc_BCBC98: LdPrVar
  loc_BCBC9A: LateMemCall
  loc_BCBCA0: FFreeStr var_A8 = ""
  loc_BCBCA7: FFree1Ad var_D8
  loc_BCBCAA: FFreeVar var_BC = ""
  loc_BCBCB1: LitStr "    <td align=""right""><strong>Hasta: </strong>"
  loc_BCBCB4: FLdPr Me
  loc_BCBCB7: VCallAd Control_ID_FealCtctHastaMsk
  loc_BCBCBA: FStAdFunc var_D8
  loc_BCBCBD: FLdPr var_D8
  loc_BCBCC0: LateIdLdVar var_BC DispID_15 0
  loc_BCBCC7: CStrVarTmp
  loc_BCBCC8: FStStrNoPop var_A8
  loc_BCBCCB: ConcatStr
  loc_BCBCCC: FStStrNoPop var_AC
  loc_BCBCCF: LitStr "</td>"
  loc_BCBCD2: ConcatStr
  loc_BCBCD3: CVarStr var_E8
  loc_BCBCD6: PopAdLdVar
  loc_BCBCD7: FLdPr Me
  loc_BCBCDA: MemLdRfVar from_stack_1.global_60
  loc_BCBCDD: LdPrVar
  loc_BCBCDF: LateMemCall
  loc_BCBCE5: FFreeStr var_A8 = ""
  loc_BCBCEC: FFree1Ad var_D8
  loc_BCBCEF: FFreeVar var_BC = ""
  loc_BCBCF6: LitVarStr var_94, "</table>"
  loc_BCBCFB: PopAdLdVar
  loc_BCBCFC: FLdPr Me
  loc_BCBCFF: MemLdRfVar from_stack_1.global_60
  loc_BCBD02: LdPrVar
  loc_BCBD04: LateMemCall
  loc_BCBD0A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BCBD0F: PopAdLdVar
  loc_BCBD10: FLdPr Me
  loc_BCBD13: MemLdRfVar from_stack_1.global_60
  loc_BCBD16: LdPrVar
  loc_BCBD18: LateMemCall
  loc_BCBD1E: LitVarStr var_94, "  <thead>"
  loc_BCBD23: PopAdLdVar
  loc_BCBD24: FLdPr Me
  loc_BCBD27: MemLdRfVar from_stack_1.global_60
  loc_BCBD2A: LdPrVar
  loc_BCBD2C: LateMemCall
  loc_BCBD32: LitI2_Byte &HFF
  loc_BCBD34: ImpAdStI2 MemVar_D93C88
  loc_BCBD37: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BCBD3C: PopAdLdVar
  loc_BCBD3D: FLdPr Me
  loc_BCBD40: MemLdRfVar from_stack_1.global_60
  loc_BCBD43: LdPrVar
  loc_BCBD45: LateMemCall
  loc_BCBD4B: LitVarStr var_94, "    <th>Oficina</th>"
  loc_BCBD50: PopAdLdVar
  loc_BCBD51: FLdPr Me
  loc_BCBD54: MemLdRfVar from_stack_1.global_60
  loc_BCBD57: LdPrVar
  loc_BCBD59: LateMemCall
  loc_BCBD5F: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BCBD64: PopAdLdVar
  loc_BCBD65: FLdPr Me
  loc_BCBD68: MemLdRfVar from_stack_1.global_60
  loc_BCBD6B: LdPrVar
  loc_BCBD6D: LateMemCall
  loc_BCBD73: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_BCBD78: PopAdLdVar
  loc_BCBD79: FLdPr Me
  loc_BCBD7C: MemLdRfVar from_stack_1.global_60
  loc_BCBD7F: LdPrVar
  loc_BCBD81: LateMemCall
  loc_BCBD87: LitVarStr var_94, "    <th>Fecha de Alta</th>"
  loc_BCBD8C: PopAdLdVar
  loc_BCBD8D: FLdPr Me
  loc_BCBD90: MemLdRfVar from_stack_1.global_60
  loc_BCBD93: LdPrVar
  loc_BCBD95: LateMemCall
  loc_BCBD9B: LitVarStr var_94, "    <th>Débitos</th>"
  loc_BCBDA0: PopAdLdVar
  loc_BCBDA1: FLdPr Me
  loc_BCBDA4: MemLdRfVar from_stack_1.global_60
  loc_BCBDA7: LdPrVar
  loc_BCBDA9: LateMemCall
  loc_BCBDAF: LitVarStr var_94, "    <th>Créditos</th>"
  loc_BCBDB4: PopAdLdVar
  loc_BCBDB5: FLdPr Me
  loc_BCBDB8: MemLdRfVar from_stack_1.global_60
  loc_BCBDBB: LdPrVar
  loc_BCBDBD: LateMemCall
  loc_BCBDC3: LitVarStr var_94, "    <th>Saldo</th>"
  loc_BCBDC8: PopAdLdVar
  loc_BCBDC9: FLdPr Me
  loc_BCBDCC: MemLdRfVar from_stack_1.global_60
  loc_BCBDCF: LdPrVar
  loc_BCBDD1: LateMemCall
  loc_BCBDD7: LitVarStr var_94, "  </tr>"
  loc_BCBDDC: PopAdLdVar
  loc_BCBDDD: FLdPr Me
  loc_BCBDE0: MemLdRfVar from_stack_1.global_60
  loc_BCBDE3: LdPrVar
  loc_BCBDE5: LateMemCall
  loc_BCBDEB: LitVarStr var_94, "  </thead>"
  loc_BCBDF0: PopAdLdVar
  loc_BCBDF1: FLdPr Me
  loc_BCBDF4: MemLdRfVar from_stack_1.global_60
  loc_BCBDF7: LdPrVar
  loc_BCBDF9: LateMemCall
  loc_BCBDFF: ExitProcHresult
End Function

Private Function Proc_349_24_A0B1E8() 'A0B1E8
  'Data Table: 468660
  loc_A0B1A8: LitVarStr var_94, "</table>"
  loc_A0B1AD: PopAdLdVar
  loc_A0B1AE: FLdPr Me
  loc_A0B1B1: MemLdRfVar from_stack_1.global_60
  loc_A0B1B4: LdPrVar
  loc_A0B1B6: LateMemCall
  loc_A0B1BC: LitVarStr var_94, "</body>"
  loc_A0B1C1: PopAdLdVar
  loc_A0B1C2: FLdPr Me
  loc_A0B1C5: MemLdRfVar from_stack_1.global_60
  loc_A0B1C8: LdPrVar
  loc_A0B1CA: LateMemCall
  loc_A0B1D0: LitVarStr var_94, "</html>"
  loc_A0B1D5: PopAdLdVar
  loc_A0B1D6: FLdPr Me
  loc_A0B1D9: MemLdRfVar from_stack_1.global_60
  loc_A0B1DC: LdPrVar
  loc_A0B1DE: LateMemCall
  loc_A0B1E4: ExitProcHresult
End Function
