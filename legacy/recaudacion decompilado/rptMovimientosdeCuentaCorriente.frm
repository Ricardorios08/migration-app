VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptMovimientosdeCuentaCorriente
  Caption = "Movimientos de Cuenta Corriente"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptMovimientosdeCuentaCorriente.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8280
  ClientHeight = 5760
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5505
    Width = 8280
    Height = 255
    TabIndex = 20
    OleObjectBlob = "rptMovimientosdeCuentaCorriente.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 4440
    Width = 855
    Height = 735
    TabIndex = 14
    Cancel = -1  'True
    Picture = "rptMovimientosdeCuentaCorriente.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptMovimientosdeCuentaCorriente.frx":0B9C
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 4200
    Width = 1815
    Height = 1215
    TabIndex = 18
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
      TabIndex = 12
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
    Top = 4200
    Width = 4095
    Height = 1215
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
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
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
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
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
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8055
    Height = 4095
    TabIndex = 16
    Begin VB.CheckBox SoloDeudaChk
      Caption = "Sólo Deuda"
      Left = 1440
      Top = 1560
      Width = 1575
      Height = 345
      TabIndex = 28
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
    Begin VB.OptionButton FechaEmisionOpt
      Caption = "Fecha de Emisión:"
      Left = 3120
      Top = 2160
      Width = 2415
      Height = 375
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
      CausesValidation = 0   'False
    End
    Begin VB.Frame FechaEmisionFra
      Left = 3120
      Top = 2520
      Width = 3015
      Height = 1335
      TabIndex = 25
      Begin VB.CommandButton cmdDesde
        Left = 2400
        Top = 240
        Width = 375
        Height = 375
        TabIndex = 7
        Picture = "rptMovimientosdeCuentaCorriente.frx":0C00
        Style = 1
      End
      Begin VB.CommandButton cmdHasta
        Left = 2400
        Top = 765
        Width = 375
        Height = 375
        TabIndex = 9
        Picture = "rptMovimientosdeCuentaCorriente.frx":1142
        Style = 1
      End
      Begin MSMask.MaskEdBox mskDesde
        Left = 960
        Top = 240
        Width = 1335
        Height = 360
        TabIndex = 6
        OleObjectBlob = "rptMovimientosdeCuentaCorriente.frx":1684
      End
      Begin MSMask.MaskEdBox mskHasta
        Left = 960
        Top = 765
        Width = 1335
        Height = 360
        TabIndex = 8
        OleObjectBlob = "rptMovimientosdeCuentaCorriente.frx":1734
      End
      Begin VB.Label Label6
        Caption = "Desde:"
        Left = 120
        Top = 240
        Width = 765
        Height = 300
        TabIndex = 27
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
        Top = 765
        Width = 705
        Height = 300
        TabIndex = 26
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
    Begin VB.OptionButton PeriodoOpt
      Caption = "Periodo:"
      Left = 480
      Top = 2160
      Width = 1455
      Height = 375
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
      CausesValidation = 0   'False
    End
    Begin VB.Frame PeriodoFra
      Left = 480
      Top = 2520
      Width = 1935
      Height = 1335
      TabIndex = 23
      Begin MSMask.MaskEdBox PeriDesdeMsk
        Left = 960
        Top = 240
        Width = 735
        Height = 360
        TabIndex = 4
        OleObjectBlob = "rptMovimientosdeCuentaCorriente.frx":17E4
      End
      Begin MSMask.MaskEdBox PeriHastaMsk
        Left = 960
        Top = 720
        Width = 735
        Height = 360
        TabIndex = 5
        OleObjectBlob = "rptMovimientosdeCuentaCorriente.frx":1874
      End
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 180
        Top = 720
        Width = 705
        Height = 300
        TabIndex = 24
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
      Begin VB.Label Label3
        Caption = "Desde:"
        Left = 120
        Top = 240
        Width = 765
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
    Begin VB.TextBox CuenCtCtTxt
      Left = 1440
      Top = 960
      Width = 1815
      Height = 360
      Text = "Text1"
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
    Begin VB.ComboBox CodiOficCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1440
      Top = 360
      Width = 3495
      Height = 420
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
      Left = 6240
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 13
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
      Caption = "Oficina:"
      Left = 555
      Top = 360
      Width = 795
      Height = 300
      TabIndex = 22
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
      Caption = "Cuenta:"
      Left = 510
      Top = 960
      Width = 840
      Height = 300
      TabIndex = 21
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
    Left = 6720
    Top = 4800
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 19
    OleObjectBlob = "rptMovimientosdeCuentaCorriente.frx":1904
  End
End

Attribute VB_Name = "rptMovimientosdeCuentaCorriente"

Public bGenerado As Boolean

Private Type UDT_1_00560A88
  bStruc(60) As Byte ' String fields: 15
End Type

Private Type UDT_2_00580EBC
  bStruc(24) As Byte ' String fields: 6
End Type

Private Type UDT_3_00580F0C
  bStruc(140) As Byte ' String fields: 35
End Type


Private Sub PeriDesdeMsk_UnknownEvent_0 '9C03B0
  'Data Table: 4F3BDC
  loc_9C039C: FLdPr Me
  loc_9C039F: VCallAd Control_ID_PeriDesdeMsk
  loc_9C03A2: CVarAd
  loc_9C03A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C03AB: FFree1Var var_94 = ""
  loc_9C03AE: ExitProcHresult
End Sub

Private Function PeriDesdeMsk_UnknownEvent_8(arg_C) 'A6F128
  'Data Table: 4F3BDC
  loc_A6F0C0: FLdPr Me
  loc_A6F0C3: VCallAd Control_ID_PeriDesdeMsk
  loc_A6F0C6: FStAdFunc var_88
  loc_A6F0C9: FLdPr var_88
  loc_A6F0CC: LateIdLdVar var_98 DispID_0 0
  loc_A6F0D3: PopAd
  loc_A6F0D5: LitI2_Byte 0
  loc_A6F0D7: FLdRfVar var_98
  loc_A6F0DA: CStrVarTmp
  loc_A6F0DB: FStStrNoPop var_9C
  loc_A6F0DE: LitStr "Periodo"
  loc_A6F0E1: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6F0E6: FStStrNoPop var_A0
  loc_A6F0E9: FLdPr Me
  loc_A6F0EC: MemStStrCopy
  loc_A6F0F0: FFreeStr var_9C = ""
  loc_A6F0F7: FFree1Ad var_88
  loc_A6F0FA: FFree1Var var_98 = ""
  loc_A6F0FD: FLdPr Me
  loc_A6F100: VCallAd Control_ID_PeriDesdeMsk
  loc_A6F103: FStAdFuncNoPop
  loc_A6F106: CastAd
  loc_A6F109: FStAdFunc var_A4
  loc_A6F10C: FLdRfVar var_A4
  loc_A6F10F: FLdPr Me
  loc_A6F112: MemLdStr global_152
  loc_A6F115: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6F11A: IStI2 arg_C
  loc_A6F11D: FFreeAd var_88 = ""
  loc_A6F124: ExitProcHresult
  loc_A6F125: PrintObj
End Function

Private Sub PeriHastaMsk_UnknownEvent_0 '9C0518
  'Data Table: 4F3BDC
  loc_9C0504: FLdPr Me
  loc_9C0507: VCallAd Control_ID_PeriHastaMsk
  loc_9C050A: CVarAd
  loc_9C050E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0513: FFree1Var var_94 = ""
  loc_9C0516: ExitProcHresult
End Sub

Private Function PeriHastaMsk_UnknownEvent_8(arg_C) 'A730FC
  'Data Table: 4F3BDC
  loc_A73094: FLdPr Me
  loc_A73097: VCallAd Control_ID_PeriHastaMsk
  loc_A7309A: FStAdFunc var_88
  loc_A7309D: FLdPr var_88
  loc_A730A0: LateIdLdVar var_98 DispID_0 0
  loc_A730A7: PopAd
  loc_A730A9: LitI2_Byte 0
  loc_A730AB: FLdRfVar var_98
  loc_A730AE: CStrVarTmp
  loc_A730AF: FStStrNoPop var_9C
  loc_A730B2: LitStr "Periodo"
  loc_A730B5: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A730BA: FStStrNoPop var_A0
  loc_A730BD: FLdPr Me
  loc_A730C0: MemStStrCopy
  loc_A730C4: FFreeStr var_9C = ""
  loc_A730CB: FFree1Ad var_88
  loc_A730CE: FFree1Var var_98 = ""
  loc_A730D1: FLdPr Me
  loc_A730D4: VCallAd Control_ID_PeriHastaMsk
  loc_A730D7: FStAdFuncNoPop
  loc_A730DA: CastAd
  loc_A730DD: FStAdFunc var_A4
  loc_A730E0: FLdRfVar var_A4
  loc_A730E3: FLdPr Me
  loc_A730E6: MemLdStr global_152
  loc_A730E9: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A730EE: IStI2 arg_C
  loc_A730F1: FFreeAd var_88 = ""
  loc_A730F8: ExitProcHresult
  loc_A730F9: MemLdPr global_10748
End Function

Private Sub mskDesde_UnknownEvent_0 '9C05A8
  'Data Table: 4F3BDC
  loc_9C0594: FLdPr Me
  loc_9C0597: VCallAd Control_ID_mskDesde
  loc_9C059A: CVarAd
  loc_9C059E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C05A3: FFree1Var var_94 = ""
  loc_9C05A6: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) 'A646A0
  'Data Table: 4F3BDC
  loc_A64644: FLdPr Me
  loc_A64647: VCallAd Control_ID_mskDesde
  loc_A6464A: FStAdFunc var_88
  loc_A6464D: FLdPr var_88
  loc_A64650: LateIdLdVar var_98 DispID_15 0
  loc_A64657: CStrVarTmp
  loc_A64658: FStStrNoPop var_9C
  loc_A6465B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A64660: FStStrNoPop var_A0
  loc_A64663: FLdPr Me
  loc_A64666: MemStStrCopy
  loc_A6466A: FFreeStr var_9C = ""
  loc_A64671: FFree1Ad var_88
  loc_A64674: FFree1Var var_98 = ""
  loc_A64677: FLdPr Me
  loc_A6467A: VCallAd Control_ID_mskDesde
  loc_A6467D: FStAdFuncNoPop
  loc_A64680: CastAd
  loc_A64683: FStAdFunc var_A4
  loc_A64686: FLdRfVar var_A4
  loc_A64689: FLdPr Me
  loc_A6468C: MemLdStr global_152
  loc_A6468F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A64694: IStI2 arg_C
  loc_A64697: FFreeAd var_88 = ""
  loc_A6469E: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '9C0638
  'Data Table: 4F3BDC
  loc_9C0624: FLdPr Me
  loc_9C0627: VCallAd Control_ID_mskHasta
  loc_9C062A: CVarAd
  loc_9C062E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C0633: FFree1Var var_94 = ""
  loc_9C0636: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) 'A62580
  'Data Table: 4F3BDC
  loc_A62524: FLdPr Me
  loc_A62527: VCallAd Control_ID_mskHasta
  loc_A6252A: FStAdFunc var_88
  loc_A6252D: FLdPr var_88
  loc_A62530: LateIdLdVar var_98 DispID_15 0
  loc_A62537: CStrVarTmp
  loc_A62538: FStStrNoPop var_9C
  loc_A6253B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A62540: FStStrNoPop var_A0
  loc_A62543: FLdPr Me
  loc_A62546: MemStStrCopy
  loc_A6254A: FFreeStr var_9C = ""
  loc_A62551: FFree1Ad var_88
  loc_A62554: FFree1Var var_98 = ""
  loc_A62557: FLdPr Me
  loc_A6255A: VCallAd Control_ID_mskHasta
  loc_A6255D: FStAdFuncNoPop
  loc_A62560: CastAd
  loc_A62563: FStAdFunc var_A4
  loc_A62566: FLdRfVar var_A4
  loc_A62569: FLdPr Me
  loc_A6256C: MemLdStr global_152
  loc_A6256F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A62574: IStI2 arg_C
  loc_A62577: FFreeAd var_88 = ""
  loc_A6257E: ExitProcHresult
End Function

Private Sub cmdDesde_Click() 'A0B4F4
  'Data Table: 4F3BDC
  loc_A0B4B8: LitVar_Missing var_A4
  loc_A0B4BB: PopAdLdVar
  loc_A0B4BC: LitVarI4
  loc_A0B4C4: PopAdLdVar
  loc_A0B4C5: ImpAdLdRf MemVar_D930A4
  loc_A0B4C8: NewIfNullPr frmCalendario
  loc_A0B4CB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0B4D0: ImpAdLdRf MemVar_D93028
  loc_A0B4D3: CDargRef
  loc_A0B4D7: FLdPr Me
  loc_A0B4DA: VCallAd Control_ID_mskDesde
  loc_A0B4DD: FStAdFunc var_A8
  loc_A0B4E0: FLdPr var_A8
  loc_A0B4E3: LateIdSt
  loc_A0B4E8: FFree1Ad var_A8
  loc_A0B4EB: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0B4F0: ExitProcHresult
  loc_A0B4F1: FStI2 var_A01
End Sub

Private Sub cmdHasta_Click() 'A0B564
  'Data Table: 4F3BDC
  loc_A0B528: LitVar_Missing var_A4
  loc_A0B52B: PopAdLdVar
  loc_A0B52C: LitVarI4
  loc_A0B534: PopAdLdVar
  loc_A0B535: ImpAdLdRf MemVar_D930A4
  loc_A0B538: NewIfNullPr frmCalendario
  loc_A0B53B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0B540: ImpAdLdRf MemVar_D93028
  loc_A0B543: CDargRef
  loc_A0B547: FLdPr Me
  loc_A0B54A: VCallAd Control_ID_mskHasta
  loc_A0B54D: FStAdFunc var_A8
  loc_A0B550: FLdPr var_A8
  loc_A0B553: LateIdSt
  loc_A0B558: FFree1Ad var_A8
  loc_A0B55B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0B560: ExitProcHresult
  loc_A0B561: CCyI4
End Sub

Private Sub FechaEmisionOpt_Click() 'A9C5C4
  'Data Table: 4F3BDC
  loc_A9C51C: LitI4 0
  loc_A9C521: LitI4 1
  loc_A9C526: FLdRfVar var_88
  loc_A9C529: Redim
  loc_A9C533: FLdPr Me
  loc_A9C536: VCallAd Control_ID_PeriDesdeMsk
  loc_A9C539: CVarAd
  loc_A9C53D: ParmAry1St
  loc_A9C543: FLdPr Me
  loc_A9C546: VCallAd Control_ID_PeriHastaMsk
  loc_A9C549: CVarAd
  loc_A9C54D: ParmAry1St
  loc_A9C553: FLdRfVar var_88
  loc_A9C556: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A9C55B: FLdRfVar var_88
  loc_A9C55E: Erase
  loc_A9C55F: LitI4 0
  loc_A9C564: LitI4 3
  loc_A9C569: FLdRfVar var_88
  loc_A9C56C: Redim
  loc_A9C576: FLdPr Me
  loc_A9C579: VCallAd Control_ID_mskDesde
  loc_A9C57C: CVarAd
  loc_A9C580: ParmAry1St
  loc_A9C586: FLdPr Me
  loc_A9C589: VCallAd Control_ID_cmdDesde
  loc_A9C58C: CVarAd
  loc_A9C590: ParmAry1St
  loc_A9C596: FLdPr Me
  loc_A9C599: VCallAd Control_ID_mskHasta
  loc_A9C59C: CVarAd
  loc_A9C5A0: ParmAry1St
  loc_A9C5A6: FLdPr Me
  loc_A9C5A9: VCallAd Control_ID_cmdHasta
  loc_A9C5AC: CVarAd
  loc_A9C5B0: ParmAry1St
  loc_A9C5B6: FLdRfVar var_88
  loc_A9C5B9: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A9C5BE: FLdRfVar var_88
  loc_A9C5C1: Erase
  loc_A9C5C2: ExitProcHresult
  loc_A9C5C3: IDvI4
End Sub

Private Sub cmdPredeterminada_Click() 'A432B8
  'Data Table: 4F3BDC
  loc_A43264: LitI2_Byte 0
  loc_A43266: ILdRf Me
  loc_A43269: CastAd
  loc_A4326C: FStAdFunc var_88
  loc_A4326F: FLdRfVar var_88
  loc_A43272: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A43277: FFree1Ad var_88
  loc_A4327A: FLdRfVar var_8A
  loc_A4327D: FLdPr Me
  loc_A43280: VCallAd Control_ID_cmdPredeterminada
  loc_A43283: FStAdFunc var_88
  loc_A43286: FLdPr var_88
  loc_A43289:  = Me.Enabled
  loc_A4328E: FLdI2 var_8A
  loc_A43291: NotI4
  loc_A43292: FFree1Ad var_88
  loc_A43295: BranchF loc_A432A0
  loc_A43298: ImpAdCallFPR4 DoEvents()
  loc_A4329D: Branch loc_A4327A
  loc_A432A0: ILdRf Me
  loc_A432A3: FStAdNoPop
  loc_A432A7: ImpAdLdRf MemVar_D9C5D8
  loc_A432AA: NewIfNullPr Global
  loc_A432AD: Global.Unload from_stack_1
  loc_A432B2: FFree1Ad var_88
  loc_A432B5: ExitProcHresult
  loc_A432B6: LtI4
End Sub

Private Sub cmdPrevia_Click() '9DB124
  'Data Table: 4F3BDC
  loc_9DB10C: ILdRf Me
  loc_9DB10F: CastAd
  loc_9DB112: FStAdFunc var_88
  loc_9DB115: FLdRfVar var_88
  loc_9DB118: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9DB11D: FFree1Ad var_88
  loc_9DB120: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A199F0
  'Data Table: 4F3BDC
  loc_A199B8: FLdPr Me
  loc_A199BB: VCallAd Control_ID_statusBar
  loc_A199BE: FStAdFunc var_88
  loc_A199C1: FLdPr var_88
  loc_A199C4: LateIdLdVar var_98 DispID_1 0
  loc_A199CB: CStrVarTmp
  loc_A199CC: CVarStr var_A8
  loc_A199CF: PopAdLdVar
  loc_A199D0: FLdPr Me
  loc_A199D3: VCallAd Control_ID_statusBar
  loc_A199D6: FStAdFunc var_BC
  loc_A199D9: FLdPr var_BC
  loc_A199DC: LateIdSt
  loc_A199E1: FFreeAd var_88 = ""
  loc_A199E8: FFreeVar var_98 = ""
  loc_A199EF: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E41AC
  'Data Table: 4F3BDC
  loc_9E4190: LitI2_Byte 0
  loc_9E4192: PopTmpLdAd2 var_8A
  loc_9E4195: ILdRf Me
  loc_9E4198: CastAd
  loc_9E419B: FStAdFunc var_88
  loc_9E419E: FLdRfVar var_88
  loc_9E41A1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E41A6: FFree1Ad var_88
  loc_9E41A9: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AB31DC
  'Data Table: 4F3BDC
  loc_AB30FC: LitI2_Byte 0
  loc_AB30FE: FLdPr Me
  loc_AB3101: MemStI2 bGenerado
  loc_AB3104: LitI2_Byte 0
  loc_AB3106: ILdRf Me
  loc_AB3109: CastAd
  loc_AB310C: FStAdFunc var_88
  loc_AB310F: FLdRfVar var_88
  loc_AB3112: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_AB3117: FFree1Ad var_88
  loc_AB311A: FLdPr Me
  loc_AB311D: MemLdI2 global_144
  loc_AB3120: CStrUI1
  loc_AB3122: CVarStr var_98
  loc_AB3125: PopAdLdVar
  loc_AB3126: FLdPr Me
  loc_AB3129: VCallAd Control_ID_PeriDesdeMsk
  loc_AB312C: FStAdFunc var_88
  loc_AB312F: FLdPr var_88
  loc_AB3132: LateIdSt
  loc_AB3137: FFree1Ad var_88
  loc_AB313A: FFree1Var var_98 = ""
  loc_AB313D: LitI2_Byte 0
  loc_AB313F: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB3144: CVarDate var_98
  loc_AB3148: FLdRfVar var_B8
  loc_AB314B: ImpAdCallFPR4  = Year()
  loc_AB3150: FLdRfVar var_B8
  loc_AB3153: CStrVarTmp
  loc_AB3154: CVarStr var_C8
  loc_AB3157: PopAdLdVar
  loc_AB3158: FLdPr Me
  loc_AB315B: VCallAd Control_ID_PeriHastaMsk
  loc_AB315E: FStAdFunc var_88
  loc_AB3161: FLdPr var_88
  loc_AB3164: LateIdSt
  loc_AB3169: FFree1Ad var_88
  loc_AB316C: FFreeVar var_98 = "": var_B8 = ""
  loc_AB3175: FLdPr Me
  loc_AB3178: MemLdFPR8 global_136
  loc_AB317B: CStrDate
  loc_AB317D: CVarStr var_98
  loc_AB3180: PopAdLdVar
  loc_AB3181: FLdPr Me
  loc_AB3184: VCallAd Control_ID_mskDesde
  loc_AB3187: FStAdFunc var_88
  loc_AB318A: FLdPr var_88
  loc_AB318D: LateIdSt
  loc_AB3192: FFree1Ad var_88
  loc_AB3195: FFree1Var var_98 = ""
  loc_AB3198: LitI2_Byte 0
  loc_AB319A: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AB319F: CStrDate
  loc_AB31A1: CVarStr var_98
  loc_AB31A4: PopAdLdVar
  loc_AB31A5: FLdPr Me
  loc_AB31A8: VCallAd Control_ID_mskHasta
  loc_AB31AB: FStAdFunc var_88
  loc_AB31AE: FLdPr var_88
  loc_AB31B1: LateIdSt
  loc_AB31B6: FFree1Ad var_88
  loc_AB31B9: FFree1Var var_98 = ""
  loc_AB31BC: Call HabilitarCriterio()
  loc_AB31C1: Call PeriodoOpt_Click()
  loc_AB31C6: ILdRf Me
  loc_AB31C9: CastAd
  loc_AB31CC: FStAdFunc var_88
  loc_AB31CF: FLdRfVar var_88
  loc_AB31D2: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AB31D7: FFree1Ad var_88
  loc_AB31DA: ExitProcHresult
End Sub

Private Sub PeriodoOpt_Click() 'A9FFE8
  'Data Table: 4F3BDC
  loc_A9FF40: LitI4 0
  loc_A9FF45: LitI4 3
  loc_A9FF4A: FLdRfVar var_88
  loc_A9FF4D: Redim
  loc_A9FF57: FLdPr Me
  loc_A9FF5A: VCallAd Control_ID_mskDesde
  loc_A9FF5D: CVarAd
  loc_A9FF61: ParmAry1St
  loc_A9FF67: FLdPr Me
  loc_A9FF6A: VCallAd Control_ID_cmdDesde
  loc_A9FF6D: CVarAd
  loc_A9FF71: ParmAry1St
  loc_A9FF77: FLdPr Me
  loc_A9FF7A: VCallAd Control_ID_mskHasta
  loc_A9FF7D: CVarAd
  loc_A9FF81: ParmAry1St
  loc_A9FF87: FLdPr Me
  loc_A9FF8A: VCallAd Control_ID_cmdHasta
  loc_A9FF8D: CVarAd
  loc_A9FF91: ParmAry1St
  loc_A9FF97: FLdRfVar var_88
  loc_A9FF9A: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A9FF9F: FLdRfVar var_88
  loc_A9FFA2: Erase
  loc_A9FFA3: LitI4 0
  loc_A9FFA8: LitI4 1
  loc_A9FFAD: FLdRfVar var_88
  loc_A9FFB0: Redim
  loc_A9FFBA: FLdPr Me
  loc_A9FFBD: VCallAd Control_ID_PeriDesdeMsk
  loc_A9FFC0: CVarAd
  loc_A9FFC4: ParmAry1St
  loc_A9FFCA: FLdPr Me
  loc_A9FFCD: VCallAd Control_ID_PeriHastaMsk
  loc_A9FFD0: CVarAd
  loc_A9FFD4: ParmAry1St
  loc_A9FFDA: FLdRfVar var_88
  loc_A9FFDD: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A9FFE2: FLdRfVar var_88
  loc_A9FFE5: Erase
  loc_A9FFE6: ExitProcHresult
  loc_A9FFE7: Ary1LdRf
End Sub

Private Sub Form_Load() 'AF8940
  'Data Table: 4F3BDC
  loc_AF8770: ILdRf Me
  loc_AF8773: CastAd
  loc_AF8776: FStAdFunc var_88
  loc_AF8779: FLdRfVar var_88
  loc_AF877C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_AF8781: FFree1Ad var_88
  loc_AF8784: LitVar_Missing var_98
  loc_AF8787: PopAdLdVar
  loc_AF8788: LitStr "Inmueble"
  loc_AF878B: FLdPr Me
  loc_AF878E: VCallAd Control_ID_CodiOficCbo
  loc_AF8791: FStAdFunc var_88
  loc_AF8794: FLdPr var_88
  loc_AF8797: Me.AddItem from_stack_1, from_stack_2
  loc_AF879C: FFree1Ad var_88
  loc_AF879F: LitVar_Missing var_98
  loc_AF87A2: PopAdLdVar
  loc_AF87A3: LitStr "Comercio"
  loc_AF87A6: FLdPr Me
  loc_AF87A9: VCallAd Control_ID_CodiOficCbo
  loc_AF87AC: FStAdFunc var_88
  loc_AF87AF: FLdPr var_88
  loc_AF87B2: Me.AddItem from_stack_1, from_stack_2
  loc_AF87B7: FFree1Ad var_88
  loc_AF87BA: LitVar_Missing var_98
  loc_AF87BD: PopAdLdVar
  loc_AF87BE: LitStr "Deudores Varios"
  loc_AF87C1: FLdPr Me
  loc_AF87C4: VCallAd Control_ID_CodiOficCbo
  loc_AF87C7: FStAdFunc var_88
  loc_AF87CA: FLdPr var_88
  loc_AF87CD: Me.AddItem from_stack_1, from_stack_2
  loc_AF87D2: FFree1Ad var_88
  loc_AF87D5: LitVar_Missing var_98
  loc_AF87D8: PopAdLdVar
  loc_AF87D9: LitStr "Cementerio"
  loc_AF87DC: FLdPr Me
  loc_AF87DF: VCallAd Control_ID_CodiOficCbo
  loc_AF87E2: FStAdFunc var_88
  loc_AF87E5: FLdPr var_88
  loc_AF87E8: Me.AddItem from_stack_1, from_stack_2
  loc_AF87ED: FFree1Ad var_88
  loc_AF87F0: LitVar_Missing var_98
  loc_AF87F3: PopAdLdVar
  loc_AF87F4: LitStr "Transito"
  loc_AF87F7: FLdPr Me
  loc_AF87FA: VCallAd Control_ID_CodiOficCbo
  loc_AF87FD: FStAdFunc var_88
  loc_AF8800: FLdPr var_88
  loc_AF8803: Me.AddItem from_stack_1, from_stack_2
  loc_AF8808: FFree1Ad var_88
  loc_AF880B: LitVar_Missing var_98
  loc_AF880E: PopAdLdVar
  loc_AF880F: LitStr "Publicidad"
  loc_AF8812: FLdPr Me
  loc_AF8815: VCallAd Control_ID_CodiOficCbo
  loc_AF8818: FStAdFunc var_88
  loc_AF881B: FLdPr var_88
  loc_AF881E: Me.AddItem from_stack_1, from_stack_2
  loc_AF8823: FFree1Ad var_88
  loc_AF8826: LitVar_Missing var_98
  loc_AF8829: PopAdLdVar
  loc_AF882A: LitStr "Antena"
  loc_AF882D: FLdPr Me
  loc_AF8830: VCallAd Control_ID_CodiOficCbo
  loc_AF8833: FStAdFunc var_88
  loc_AF8836: FLdPr var_88
  loc_AF8839: Me.AddItem from_stack_1, from_stack_2
  loc_AF883E: FFree1Ad var_88
  loc_AF8841: LitI2_Byte 0
  loc_AF8843: FLdPr Me
  loc_AF8846: VCallAd Control_ID_CodiOficCbo
  loc_AF8849: FStAdFunc var_88
  loc_AF884C: FLdPr var_88
  loc_AF884F: Me.ListIndex = from_stack_1
  loc_AF8854: FFree1Ad var_88
  loc_AF8857: LitStr "SELECT min(FealCtct) as FealCtct, min(PeriCtct) as PeriCtct FROM tmp_ctacte GROUP BY CuenCtct"
  loc_AF885A: FLdPr Me
  loc_AF885D: MemLdRfVar from_stack_1.global_76
  loc_AF8860: NewIfNullPr clsctacte
  loc_AF8863: Call clsctacte.RedefineRS(from_stack_1v)
  loc_AF8868: FLdRfVar var_9C
  loc_AF886B: FLdPr Me
  loc_AF886E: MemLdRfVar from_stack_1.global_76
  loc_AF8871: NewIfNullPr clsctacte
  loc_AF8874: from_stack_1 = clsctacte.RecordCount
  loc_AF8879: ILdRf var_9C
  loc_AF887C: LitI4 0
  loc_AF8881: GtI4
  loc_AF8882: BranchF loc_AF8907
  loc_AF8885: FLdRfVar var_9E
  loc_AF8888: FLdPr Me
  loc_AF888B: MemLdRfVar from_stack_1.global_76
  loc_AF888E: NewIfNullPr clsctacte
  loc_AF8891: from_stack_1 = clsctacte.PeriCtct
  loc_AF8896: FLdI2 var_9E
  loc_AF8899: LitI2 2099
  loc_AF889C: EqI2
  loc_AF889D: BranchF loc_AF88CB
  loc_AF88A0: FLdRfVar var_A4
  loc_AF88A3: FLdPr Me
  loc_AF88A6: MemLdRfVar from_stack_1.global_76
  loc_AF88A9: NewIfNullPr clsctacte
  loc_AF88AC: from_stack_1 = clsctacte.FealCtct
  loc_AF88B1: ILdRf var_A4
  loc_AF88B4: CDateStr
  loc_AF88B6: FLdPr Me
  loc_AF88B9: MemStFPR8 global_136
  loc_AF88BC: FFree1Str var_A4
  loc_AF88BF: ImpAdLdI2 MemVar_D93034
  loc_AF88C2: FLdPr Me
  loc_AF88C5: MemStI2 global_144
  loc_AF88C8: Branch loc_AF8904
  loc_AF88CB: FLdRfVar var_A4
  loc_AF88CE: FLdPr Me
  loc_AF88D1: MemLdRfVar from_stack_1.global_76
  loc_AF88D4: NewIfNullPr clsctacte
  loc_AF88D7: from_stack_1 = clsctacte.FealCtct
  loc_AF88DC: ILdRf var_A4
  loc_AF88DF: CDateStr
  loc_AF88E1: FLdPr Me
  loc_AF88E4: MemStFPR8 global_136
  loc_AF88E7: FFree1Str var_A4
  loc_AF88EA: FLdRfVar var_9E
  loc_AF88ED: FLdPr Me
  loc_AF88F0: MemLdRfVar from_stack_1.global_76
  loc_AF88F3: NewIfNullPr clsctacte
  loc_AF88F6: from_stack_1 = clsctacte.PeriCtct
  loc_AF88FB: FLdI2 var_9E
  loc_AF88FE: FLdPr Me
  loc_AF8901: MemStI2 global_144
  loc_AF8904: Branch loc_AF8938
  loc_AF8907: LitI2_Byte 0
  loc_AF8909: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF890E: FLdPr Me
  loc_AF8911: MemStFPR8 global_136
  loc_AF8914: LitI2_Byte 0
  loc_AF8916: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF891B: CVarDate var_B4
  loc_AF891F: FLdRfVar var_C4
  loc_AF8922: ImpAdCallFPR4  = Year()
  loc_AF8927: FLdRfVar var_C4
  loc_AF892A: CI2Var
  loc_AF892B: FLdPr Me
  loc_AF892E: MemStI2 global_144
  loc_AF8931: FFreeVar var_B4 = ""
  loc_AF8938: Call cmdNueva_Click()
  loc_AF893D: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D9F54
  'Data Table: 4F3BDC
  loc_9D9F3C: FLdPr Me
  loc_9D9F3F: VCallAd Control_ID_wbbReporte
  loc_9D9F42: FStAdFunc var_88
  loc_9D9F45: FLdRfVar var_88
  loc_9D9F48: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D9F4D: FFree1Ad var_88
  loc_9D9F50: ExitProcHresult
  loc_9D9F51: CR8I2
  loc_9D9F52: LeI2
End Sub

Private Sub cmdSalir_Click() 'A02C70
  'Data Table: 4F3BDC
  loc_A02C40: LitVarStr var_94, "Cerrando..."
  loc_A02C45: PopAdLdVar
  loc_A02C46: FLdPr Me
  loc_A02C49: VCallAd Control_ID_statusBar
  loc_A02C4C: FStAdFunc var_A8
  loc_A02C4F: FLdPr var_A8
  loc_A02C52: LateIdSt
  loc_A02C57: FFree1Ad var_A8
  loc_A02C5A: ILdRf Me
  loc_A02C5D: FStAdNoPop
  loc_A02C61: ImpAdLdRf MemVar_D9C5D8
  loc_A02C64: NewIfNullPr Global
  loc_A02C67: Global.Unload from_stack_1
  loc_A02C6C: FFree1Ad var_A8
  loc_A02C6F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4F52C4
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4F52D3
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'AC9D2C
  'Data Table: 4F3BDC
  loc_AC9C34: LitI4 0
  loc_AC9C39: LitI4 8
  loc_AC9C3E: FLdRfVar var_88
  loc_AC9C41: Redim
  loc_AC9C4B: FLdPr Me
  loc_AC9C4E: VCallAd Control_ID_CodiOficCbo
  loc_AC9C51: CVarAd
  loc_AC9C55: ParmAry1St
  loc_AC9C5B: FLdPr Me
  loc_AC9C5E: VCallAd Control_ID_CuenCtCtTxt
  loc_AC9C61: CVarAd
  loc_AC9C65: ParmAry1St
  loc_AC9C6B: FLdPr Me
  loc_AC9C6E: VCallAd Control_ID_SoloDeudaChk
  loc_AC9C71: CVarAd
  loc_AC9C75: ParmAry1St
  loc_AC9C7B: FLdPr Me
  loc_AC9C7E: VCallAd Control_ID_PeriDesdeMsk
  loc_AC9C81: CVarAd
  loc_AC9C85: ParmAry1St
  loc_AC9C8B: FLdPr Me
  loc_AC9C8E: VCallAd Control_ID_PeriHastaMsk
  loc_AC9C91: CVarAd
  loc_AC9C95: ParmAry1St
  loc_AC9C9B: FLdPr Me
  loc_AC9C9E: VCallAd Control_ID_mskDesde
  loc_AC9CA1: CVarAd
  loc_AC9CA5: ParmAry1St
  loc_AC9CAB: FLdPr Me
  loc_AC9CAE: VCallAd Control_ID_cmdDesde
  loc_AC9CB1: CVarAd
  loc_AC9CB5: ParmAry1St
  loc_AC9CBB: FLdPr Me
  loc_AC9CBE: VCallAd Control_ID_mskHasta
  loc_AC9CC1: CVarAd
  loc_AC9CC5: ParmAry1St
  loc_AC9CCB: FLdPr Me
  loc_AC9CCE: VCallAd Control_ID_cmdHasta
  loc_AC9CD1: CVarAd
  loc_AC9CD5: ParmAry1St
  loc_AC9CDB: FLdRfVar var_88
  loc_AC9CDE: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AC9CE3: FLdRfVar var_88
  loc_AC9CE6: Erase
  loc_AC9CE7: LitI4 0
  loc_AC9CEC: LitI4 1
  loc_AC9CF1: FLdRfVar var_88
  loc_AC9CF4: Redim
  loc_AC9CFE: FLdPr Me
  loc_AC9D01: VCallAd Control_ID_PeriodoOpt
  loc_AC9D04: CVarAd
  loc_AC9D08: ParmAry1St
  loc_AC9D0E: FLdPr Me
  loc_AC9D11: VCallAd Control_ID_FechaEmisionOpt
  loc_AC9D14: CVarAd
  loc_AC9D18: ParmAry1St
  loc_AC9D1E: FLdRfVar var_88
  loc_AC9D21: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AC9D26: FLdRfVar var_88
  loc_AC9D29: Erase
  loc_AC9D2A: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'CD9000
  'Data Table: 4F3BDC
  loc_CD67B4: FLdPr Me
  loc_CD67B7: MemLdI2 bGenerado
  loc_CD67BA: BranchF loc_CD67BE
  loc_CD67BD: ExitProcHresult
  loc_CD67BE: LitVarStr var_A0, "Generando reporte..."
  loc_CD67C3: PopAdLdVar
  loc_CD67C4: FLdPr Me
  loc_CD67C7: VCallAd Control_ID_statusBar
  loc_CD67CA: FStAdFunc var_B4
  loc_CD67CD: FLdPr var_B4
  loc_CD67D0: LateIdSt
  loc_CD67D5: FFree1Ad var_B4
  loc_CD67D8: LitI4 &HB
  loc_CD67DD: CI2I4
  loc_CD67DE: FLdPr Me
  loc_CD67E1: Me.MousePointer = from_stack_1
  loc_CD67E6: FLdPr Me
  loc_CD67E9: MemLdRfVar from_stack_1.global_76
  loc_CD67EC: NewIfNullAd
  loc_CD67EF: FStAd var_B8 
  loc_CD67F3: FLdRfVar var_BA
  loc_CD67F6: FLdPr Me
  loc_CD67F9: VCallAd Control_ID_SoloDeudaChk
  loc_CD67FC: FStAdFunc var_B4
  loc_CD67FF: FLdPr var_B4
  loc_CD6802:  = Me.Value
  loc_CD6807: FLdI2 var_BA
  loc_CD680A: CI4UI1
  loc_CD680B: LitI4 1
  loc_CD6810: EqI4
  loc_CD6811: FFree1Ad var_B4
  loc_CD6814: BranchF loc_CD681D
  loc_CD6817: LitStr " AND SaldCtct <> 0"
  loc_CD681A: FStStrCopy var_8C
  loc_CD681D: FLdRfVar var_BA
  loc_CD6820: FLdPrThis
  loc_CD6821: VCallAd Control_ID_PeriodoOpt
  loc_CD6824: FStAdFunc var_B4
  loc_CD6827: FLdPr var_B4
  loc_CD682A:  = Me.Value
  loc_CD682F: FLdI2 var_BA
  loc_CD6832: FFree1Ad var_B4
  loc_CD6835: BranchF loc_CD6920
  loc_CD6838: FLdPr Me
  loc_CD683B: VCallAd Control_ID_PeriHastaMsk
  loc_CD683E: FStAdFunc var_B4
  loc_CD6841: FLdPr var_B4
  loc_CD6844: LateIdLdVar var_CC DispID_22 0
  loc_CD684B: CStrVarTmp
  loc_CD684C: FStStrNoPop var_D0
  loc_CD684F: CI2Str
  loc_CD6851: ImpAdLdI2 MemVar_D93034
  loc_CD6854: EqI2
  loc_CD6855: FFree1Str var_D0
  loc_CD6858: FFree1Ad var_B4
  loc_CD685B: FFree1Var var_CC = ""
  loc_CD685E: BranchF loc_CD6884
  loc_CD6861: LitI2 2099
  loc_CD6864: CStrUI1
  loc_CD6866: CVarStr var_CC
  loc_CD6869: PopAdLdVar
  loc_CD686A: FLdPr Me
  loc_CD686D: VCallAd Control_ID_PeriHastaMsk
  loc_CD6870: FStAdFunc var_B4
  loc_CD6873: FLdPr var_B4
  loc_CD6876: LateIdSt
  loc_CD687B: FFree1Ad var_B4
  loc_CD687E: FFree1Var var_CC = ""
  loc_CD6881: Branch loc_CD68BB
  loc_CD6884: FLdPr Me
  loc_CD6887: VCallAd Control_ID_PeriHastaMsk
  loc_CD688A: FStAdFunc var_B4
  loc_CD688D: FLdPr var_B4
  loc_CD6890: LateIdLdVar var_CC DispID_22 0
  loc_CD6897: CStrVarTmp
  loc_CD6898: CVarStr var_E0
  loc_CD689B: PopAdLdVar
  loc_CD689C: FLdPr Me
  loc_CD689F: VCallAd Control_ID_PeriHastaMsk
  loc_CD68A2: FStAdFunc var_E4
  loc_CD68A5: FLdPr var_E4
  loc_CD68A8: LateIdSt
  loc_CD68AD: FFreeAd var_B4 = ""
  loc_CD68B4: FFreeVar var_CC = ""
  loc_CD68BB: LitStr "PeriCtct BETWEEN '"
  loc_CD68BE: FLdPr Me
  loc_CD68C1: VCallAd Control_ID_PeriDesdeMsk
  loc_CD68C4: FStAdFunc var_B4
  loc_CD68C7: FLdPr var_B4
  loc_CD68CA: LateIdLdVar var_CC DispID_22 0
  loc_CD68D1: CStrVarTmp
  loc_CD68D2: FStStrNoPop var_D0
  loc_CD68D5: ConcatStr
  loc_CD68D6: FStStrNoPop var_E8
  loc_CD68D9: LitStr "' AND '"
  loc_CD68DC: ConcatStr
  loc_CD68DD: FStStrNoPop var_EC
  loc_CD68E0: FLdPr Me
  loc_CD68E3: VCallAd Control_ID_PeriHastaMsk
  loc_CD68E6: FStAdFunc var_E4
  loc_CD68E9: FLdPr var_E4
  loc_CD68EC: LateIdLdVar var_E0 DispID_22 0
  loc_CD68F3: CStrVarTmp
  loc_CD68F4: FStStrNoPop var_F0
  loc_CD68F7: ConcatStr
  loc_CD68F8: FStStrNoPop var_F4
  loc_CD68FB: LitStr "'"
  loc_CD68FE: ConcatStr
  loc_CD68FF: FStStr var_88
  loc_CD6902: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_CD690F: FFreeAd var_B4 = ""
  loc_CD6916: FFreeVar var_CC = ""
  loc_CD691D: Branch loc_CD69CE
  loc_CD6920: FLdPr Me
  loc_CD6923: VCallAd Control_ID_mskDesde
  loc_CD6926: FStAdFunc var_B4
  loc_CD6929: FLdPr var_B4
  loc_CD692C: LateIdLdVar var_CC DispID_15 0
  loc_CD6933: PopAd
  loc_CD6935: FLdPr Me
  loc_CD6938: VCallAd Control_ID_mskHasta
  loc_CD693B: FStAdFunc var_E4
  loc_CD693E: FLdPr var_E4
  loc_CD6941: LateIdLdVar var_114 DispID_15 0
  loc_CD6948: PopAd
  loc_CD694A: LitStr "FealCtct BETWEEN '"
  loc_CD694D: LitI4 1
  loc_CD6952: LitI4 1
  loc_CD6957: LitVarStr var_A0, "yyyy-mm-dd"
  loc_CD695C: FStVarCopyObj var_104
  loc_CD695F: FLdRfVar var_104
  loc_CD6962: FLdRfVar var_CC
  loc_CD6965: CStrVarTmp
  loc_CD6966: CVarStr var_E0
  loc_CD6969: ImpAdCallI2 Format$(, )
  loc_CD696E: FStStrNoPop var_D0
  loc_CD6971: ConcatStr
  loc_CD6972: FStStrNoPop var_E8
  loc_CD6975: LitStr "' AND '"
  loc_CD6978: ConcatStr
  loc_CD6979: FStStrNoPop var_EC
  loc_CD697C: LitI4 1
  loc_CD6981: LitI4 1
  loc_CD6986: LitVarStr var_B0, "yyyy-mm-dd"
  loc_CD698B: FStVarCopyObj var_134
  loc_CD698E: FLdRfVar var_134
  loc_CD6991: FLdRfVar var_114
  loc_CD6994: CStrVarTmp
  loc_CD6995: CVarStr var_124
  loc_CD6998: ImpAdCallI2 Format$(, )
  loc_CD699D: FStStrNoPop var_F0
  loc_CD69A0: ConcatStr
  loc_CD69A1: FStStrNoPop var_F4
  loc_CD69A4: LitStr "'"
  loc_CD69A7: ConcatStr
  loc_CD69A8: FStStr var_88
  loc_CD69AB: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_CD69B8: FFreeAd var_B4 = ""
  loc_CD69BF: FFreeVar var_CC = "": var_E0 = "": var_104 = "": var_114 = "": var_124 = ""
  loc_CD69CE: LitStr "SELECT tmp_ctacte.BimeCtct, tmp_ctacte.PeriCtct, tmp_ctacte.NumeBole, tmp_ctacte.PeriBole, tmp_ctacte.FealCtct, tmp_ctacte.FeveCtct, IF(ConcViej<>'',ConcViej,tmp_ctacte.CodiConc) CodiConc, tmp_ctacte.CodiFapa, tmp_ctacte.NumeApre, apremio.CodiInju,"
  loc_CD69D1: LitStr " concat(IF(tmp_ctacte.ExpeCtct<>'',concat(tmp_ctacte.ExpeCtct,'<br>'),''),IF(tmp_ctacte.DetaCtct<>'',concat(tmp_ctacte.DetaCtct,'<br>'),''),tmp_ctacte.CompCtct) ExpeCtct, DetaTimo, DetaEnre, DebeCtct, SaldCtct, CredCtct, RecaCtct, SaldCtct+RecaCtct as TotaCtct"
  loc_CD69D4: ConcatStr
  loc_CD69D5: FStStrNoPop var_D0
  loc_CD69D8: LitStr " FROM tmp_ctacte"
  loc_CD69DB: ConcatStr
  loc_CD69DC: FStStrNoPop var_E8
  loc_CD69DF: LitStr " INNER JOIN concepto ON concepto.PeriInfo = tmp_ctacte.PeriInfo"
  loc_CD69E2: ConcatStr
  loc_CD69E3: FStStrNoPop var_EC
  loc_CD69E6: LitStr " AND concepto.CodiConc = tmp_ctacte.CodiConc"
  loc_CD69E9: ConcatStr
  loc_CD69EA: FStStrNoPop var_F0
  loc_CD69ED: LitStr " LEFT JOIN tipomovi ON tipomovi.CodiTimo = tmp_ctacte.CodiTimo"
  loc_CD69F0: ConcatStr
  loc_CD69F1: FStStrNoPop var_F4
  loc_CD69F4: LitStr " LEFT JOIN apremio ON apremio.NumeApre = tmp_ctacte.NumeApre"
  loc_CD69F7: ConcatStr
  loc_CD69F8: FStStrNoPop var_138
  loc_CD69FB: LitStr " LEFT JOIN pago ON pago.FeenAcpa = tmp_ctacte.FeenAcpa "
  loc_CD69FE: ConcatStr
  loc_CD69FF: FStStrNoPop var_13C
  loc_CD6A02: LitStr " AND pago.NumeAcpa = tmp_ctacte.NumeAcpa "
  loc_CD6A05: ConcatStr
  loc_CD6A06: FStStrNoPop var_140
  loc_CD6A09: LitStr " AND pago.PeriBole = tmp_ctacte.PeriBole "
  loc_CD6A0C: ConcatStr
  loc_CD6A0D: FStStrNoPop var_144
  loc_CD6A10: LitStr " AND pago.NumeBole = tmp_ctacte.NumeBole "
  loc_CD6A13: ConcatStr
  loc_CD6A14: FStStrNoPop var_148
  loc_CD6A17: LitStr " LEFT JOIN acrepago ON acrepago.Feenacpa = pago.FeenAcpa "
  loc_CD6A1A: ConcatStr
  loc_CD6A1B: FStStrNoPop var_14C
  loc_CD6A1E: LitStr " AND acrepago.NumeAcpa = pago.NumeAcpa "
  loc_CD6A21: ConcatStr
  loc_CD6A22: FStStrNoPop var_150
  loc_CD6A25: LitStr " LEFT JOIN infogov.entereca ON infogov.entereca.CodiEnre = acrepago.CodiEnre"
  loc_CD6A28: ConcatStr
  loc_CD6A29: FStStrNoPop var_154
  loc_CD6A2C: LitStr " WHERE "
  loc_CD6A2F: ConcatStr
  loc_CD6A30: FStStrNoPop var_158
  loc_CD6A33: ILdRf var_88
  loc_CD6A36: ConcatStr
  loc_CD6A37: FStStrNoPop var_15C
  loc_CD6A3A: ILdRf var_8C
  loc_CD6A3D: ConcatStr
  loc_CD6A3E: FStStrNoPop var_160
  loc_CD6A41: LitStr " ORDER BY PeriCtct, BimeCtct, NumeCtct, MoviCtct"
  loc_CD6A44: ConcatStr
  loc_CD6A45: FStStrNoPop var_164
  loc_CD6A48: FLdPr var_B8
  loc_CD6A4B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD6A50: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_CD6A75: FLdRfVar var_168
  loc_CD6A78: FLdPr var_B8
  loc_CD6A7B: from_stack_1 = clsctacte.RecordCount
  loc_CD6A80: ILdRf var_168
  loc_CD6A83: LitI4 0
  loc_CD6A88: GtI4
  loc_CD6A89: BranchF loc_CD6B96
  loc_CD6A8C: LitI4 0
  loc_CD6A91: LitI4 1
  loc_CD6A96: FLdPr Me
  loc_CD6A99: MemLdRfVar from_stack_1.global_104
  loc_CD6A9C: Redim
  loc_CD6AA6: LitI2_Byte 0
  loc_CD6AA8: LitVar_Missing var_CC
  loc_CD6AAB: LitI2_Byte &HFF
  loc_CD6AAD: LitVarI2 var_A0, 0
  loc_CD6AB2: PopAdLdVar
  loc_CD6AB3: FLdPr Me
  loc_CD6AB6: MemLdRfVar from_stack_1.global_116
  loc_CD6AB9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6ABE: FFree1Var var_CC = ""
  loc_CD6AC1: LitI2_Byte 0
  loc_CD6AC3: LitVar_Missing var_CC
  loc_CD6AC6: LitI2_Byte &HFF
  loc_CD6AC8: LitVarI2 var_A0, 0
  loc_CD6ACD: PopAdLdVar
  loc_CD6ACE: FLdPr Me
  loc_CD6AD1: MemLdRfVar from_stack_1.global_120
  loc_CD6AD4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6AD9: FFree1Var var_CC = ""
  loc_CD6ADC: LitI2_Byte 0
  loc_CD6ADE: LitVar_Missing var_CC
  loc_CD6AE1: LitI2_Byte &HFF
  loc_CD6AE3: LitVarI2 var_A0, 0
  loc_CD6AE8: PopAdLdVar
  loc_CD6AE9: FLdPr Me
  loc_CD6AEC: MemLdRfVar from_stack_1.global_124
  loc_CD6AEF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6AF4: FFree1Var var_CC = ""
  loc_CD6AF7: LitI2_Byte 0
  loc_CD6AF9: LitVar_Missing var_CC
  loc_CD6AFC: LitI2_Byte &HFF
  loc_CD6AFE: LitVarI2 var_A0, 0
  loc_CD6B03: PopAdLdVar
  loc_CD6B04: FLdPr Me
  loc_CD6B07: MemLdRfVar from_stack_1.global_128
  loc_CD6B0A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6B0F: FFree1Var var_CC = ""
  loc_CD6B12: LitI2_Byte 0
  loc_CD6B14: LitVar_Missing var_CC
  loc_CD6B17: LitI2_Byte &HFF
  loc_CD6B19: LitVarI2 var_A0, 0
  loc_CD6B1E: PopAdLdVar
  loc_CD6B1F: FLdPr Me
  loc_CD6B22: MemLdRfVar from_stack_1.global_132
  loc_CD6B25: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6B2A: FFree1Var var_CC = ""
  loc_CD6B2D: LitI2_Byte 0
  loc_CD6B2F: FLdPr Me
  loc_CD6B32: MemStI2 global_110
  loc_CD6B35: FLdPr var_B8
  loc_CD6B38: Call clsctacte.MoveFirst()
  loc_CD6B3D: Call Proc_278_25_A84E84()
  loc_CD6B42: FLdRfVar var_BA
  loc_CD6B45: FLdPr var_B8
  loc_CD6B48: from_stack_1 = clsctacte.EOF
  loc_CD6B4D: FLdI2 var_BA
  loc_CD6B50: NotI4
  loc_CD6B51: BranchF loc_CD6B93
  loc_CD6B54: FLdRfVar var_BA
  loc_CD6B57: FLdPr var_B8
  loc_CD6B5A: from_stack_1 = clsctacte.PeriCtct
  loc_CD6B5F: FLdI2 var_BA
  loc_CD6B62: CR8I2
  loc_CD6B63: FLdPr Me
  loc_CD6B66: MemLdI2 global_110
  loc_CD6B69: CI4UI1
  loc_CD6B6A: LitI4 1
  loc_CD6B6F: FLdPr Me
  loc_CD6B72: MemLdStr global_104
  loc_CD6B75: Ary1LdPr
  loc_CD6B76: MemLdStr global_136
  loc_CD6B79: Ary1LdPr
  loc_CD6B7A: MemLdStr global_0
  loc_CD6B7D: CR8Str
  loc_CD6B7F: NeR8
  loc_CD6B80: BranchF loc_CD6B8B
  loc_CD6B83: Call Proc_278_25_A84E84()
  loc_CD6B88: Branch loc_CD6B90
  loc_CD6B8B: Call Proc_278_26_B8B69C()
  loc_CD6B90: Branch loc_CD6B42
  loc_CD6B93: Branch loc_CD6BA1
  loc_CD6B96: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_CD6B99: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CD6B9E: Branch loc_CD8FD5
  loc_CD6BA1: ImpAdLdUI1
  loc_CD6BA5: FStUI1 var_16A
  loc_CD6BA9: FLdUI1
  loc_CD6BAD: LitI2_Byte 1
  loc_CD6BAF: CUI1I2
  loc_CD6BB1: EqI2
  loc_CD6BB2: BranchF loc_CD7891
  loc_CD6BB5: FLdRfVar var_D0
  loc_CD6BB8: FLdPr Me
  loc_CD6BBB: VCallAd Control_ID_CuenCtCtTxt
  loc_CD6BBE: FStAdFunc var_B4
  loc_CD6BC1: FLdPr var_B4
  loc_CD6BC4:  = Me.Text
  loc_CD6BC9: FLdPr Me
  loc_CD6BCC: MemLdRfVar from_stack_1.global_148
  loc_CD6BCF: NewIfNullRf
  loc_CD6BD3: ILdRf var_D0
  loc_CD6BD6: ImpAdCallI2  = Proc_270_13_C86920()
  loc_CD6BDB: FFree1Str var_D0
  loc_CD6BDE: FFree1Ad var_B4
  loc_CD6BE1: BranchF loc_CD7592
  loc_CD6BE4: FLdPr var_B8
  loc_CD6BE7: Call clsctacte.MoveFirst()
  loc_CD6BEC: FLdRfVar var_D0
  loc_CD6BEF: FLdPr Me
  loc_CD6BF2: MemLdRfVar from_stack_1.global_148
  loc_CD6BF5: NewIfNullPr tblPersonaGIS
  loc_CD6BF8: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_CD6BFD: LitI2_Byte 0
  loc_CD6BFF: LitVar_Missing var_E0
  loc_CD6C02: LitI2_Byte 0
  loc_CD6C04: FLdZeroAd var_D0
  loc_CD6C07: CVarStr var_CC
  loc_CD6C0A: PopAdLdVar
  loc_CD6C0B: LitI4 1
  loc_CD6C10: FLdPr Me
  loc_CD6C13: MemLdStr global_104
  loc_CD6C16: AryLock
  loc_CD6C19: Ary1LdPr
  loc_CD6C1A: MemLdRfVar from_stack_1.global_0
  loc_CD6C1D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6C22: AryUnlock
  loc_CD6C25: FFreeVar var_CC = ""
  loc_CD6C2C: FLdRfVar var_CC
  loc_CD6C2F: Call Proc_278_27_ACE8D0()
  loc_CD6C34: LitI2_Byte 0
  loc_CD6C36: LitVar_Missing var_E0
  loc_CD6C39: LitI2_Byte 0
  loc_CD6C3B: FLdVar var_CC
  loc_CD6C3F: LitI4 1
  loc_CD6C44: FLdPr Me
  loc_CD6C47: MemLdStr global_104
  loc_CD6C4A: AryLock
  loc_CD6C4D: Ary1LdPr
  loc_CD6C4E: MemLdRfVar from_stack_1.global_4
  loc_CD6C51: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6C56: AryUnlock
  loc_CD6C59: FFreeVar var_CC = ""
  loc_CD6C60: FLdPr Me
  loc_CD6C63: VCallAd Control_ID_CodiOficCbo
  loc_CD6C66: FStAdFunc var_B4
  loc_CD6C69: LitI2_Byte 0
  loc_CD6C6B: LitVar_Missing var_E0
  loc_CD6C6E: LitI2_Byte 0
  loc_CD6C70: FLdZeroAd var_B4
  loc_CD6C73: CVarAd
  loc_CD6C77: PopAdLdVar
  loc_CD6C78: LitI4 1
  loc_CD6C7D: FLdPr Me
  loc_CD6C80: MemLdStr global_104
  loc_CD6C83: AryLock
  loc_CD6C86: Ary1LdPr
  loc_CD6C87: MemLdRfVar from_stack_1.global_100
  loc_CD6C8A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6C8F: AryUnlock
  loc_CD6C92: FFree1Ad var_B4
  loc_CD6C95: FFreeVar var_CC = ""
  loc_CD6C9C: FLdRfVar var_D0
  loc_CD6C9F: FLdPr Me
  loc_CD6CA2: MemLdRfVar from_stack_1.global_148
  loc_CD6CA5: NewIfNullPr tblPersonaGIS
  loc_CD6CA8: from_stack_1v = tblPersonaGIS.DetaCallGet()
  loc_CD6CAD: LitI2_Byte 0
  loc_CD6CAF: LitVar_Missing var_E0
  loc_CD6CB2: LitI2_Byte 0
  loc_CD6CB4: FLdZeroAd var_D0
  loc_CD6CB7: CVarStr var_CC
  loc_CD6CBA: PopAdLdVar
  loc_CD6CBB: LitI4 1
  loc_CD6CC0: FLdPr Me
  loc_CD6CC3: MemLdStr global_104
  loc_CD6CC6: AryLock
  loc_CD6CC9: Ary1LdPr
  loc_CD6CCA: MemLdRfVar from_stack_1.global_104
  loc_CD6CCD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6CD2: AryUnlock
  loc_CD6CD5: FFreeVar var_CC = ""
  loc_CD6CDC: FLdRfVar var_D0
  loc_CD6CDF: FLdPr Me
  loc_CD6CE2: MemLdRfVar from_stack_1.global_148
  loc_CD6CE5: NewIfNullPr tblPersonaGIS
  loc_CD6CE8: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_CD6CED: LitI2_Byte 0
  loc_CD6CEF: LitVar_Missing var_E0
  loc_CD6CF2: LitI2_Byte 0
  loc_CD6CF4: FLdZeroAd var_D0
  loc_CD6CF7: CVarStr var_CC
  loc_CD6CFA: PopAdLdVar
  loc_CD6CFB: LitI4 1
  loc_CD6D00: FLdPr Me
  loc_CD6D03: MemLdStr global_104
  loc_CD6D06: AryLock
  loc_CD6D09: Ary1LdPr
  loc_CD6D0A: MemLdRfVar from_stack_1.global_108
  loc_CD6D0D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6D12: AryUnlock
  loc_CD6D15: FFreeVar var_CC = ""
  loc_CD6D1C: FLdRfVar var_D0
  loc_CD6D1F: FLdPr Me
  loc_CD6D22: MemLdRfVar from_stack_1.global_148
  loc_CD6D25: NewIfNullPr tblPersonaGIS
  loc_CD6D28: from_stack_1v = tblPersonaGIS.DetaBarrGet()
  loc_CD6D2D: LitI2_Byte 0
  loc_CD6D2F: LitVar_Missing var_E0
  loc_CD6D32: LitI2_Byte 0
  loc_CD6D34: FLdZeroAd var_D0
  loc_CD6D37: CVarStr var_CC
  loc_CD6D3A: PopAdLdVar
  loc_CD6D3B: LitI4 1
  loc_CD6D40: FLdPr Me
  loc_CD6D43: MemLdStr global_104
  loc_CD6D46: AryLock
  loc_CD6D49: Ary1LdPr
  loc_CD6D4A: MemLdRfVar from_stack_1.global_112
  loc_CD6D4D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6D52: AryUnlock
  loc_CD6D55: FFreeVar var_CC = ""
  loc_CD6D5C: LitI2_Byte 0
  loc_CD6D5E: LitVar_Missing var_CC
  loc_CD6D61: LitI2_Byte 0
  loc_CD6D63: LitVarStr var_A0, vbNullString
  loc_CD6D68: PopAdLdVar
  loc_CD6D69: LitI4 1
  loc_CD6D6E: FLdPr Me
  loc_CD6D71: MemLdStr global_104
  loc_CD6D74: AryLock
  loc_CD6D77: Ary1LdPr
  loc_CD6D78: MemLdRfVar from_stack_1.global_116
  loc_CD6D7B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6D80: AryUnlock
  loc_CD6D83: FFree1Var var_CC = ""
  loc_CD6D86: FLdRfVar var_D0
  loc_CD6D89: FLdPr Me
  loc_CD6D8C: MemLdRfVar from_stack_1.global_148
  loc_CD6D8F: NewIfNullPr tblPersonaGIS
  loc_CD6D92: from_stack_1v = tblPersonaGIS.ManzInmuGet()
  loc_CD6D97: LitI2_Byte 0
  loc_CD6D99: LitVar_Missing var_E0
  loc_CD6D9C: LitI2_Byte 0
  loc_CD6D9E: FLdZeroAd var_D0
  loc_CD6DA1: CVarStr var_CC
  loc_CD6DA4: PopAdLdVar
  loc_CD6DA5: LitI4 1
  loc_CD6DAA: FLdPr Me
  loc_CD6DAD: MemLdStr global_104
  loc_CD6DB0: AryLock
  loc_CD6DB3: Ary1LdPr
  loc_CD6DB4: MemLdRfVar from_stack_1.global_120
  loc_CD6DB7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6DBC: AryUnlock
  loc_CD6DBF: FFreeVar var_CC = ""
  loc_CD6DC6: FLdRfVar var_D0
  loc_CD6DC9: FLdPr Me
  loc_CD6DCC: MemLdRfVar from_stack_1.global_148
  loc_CD6DCF: NewIfNullPr tblPersonaGIS
  loc_CD6DD2: from_stack_1v = tblPersonaGIS.CasaInmuGet()
  loc_CD6DD7: LitI2_Byte 0
  loc_CD6DD9: LitVar_Missing var_E0
  loc_CD6DDC: LitI2_Byte 0
  loc_CD6DDE: FLdZeroAd var_D0
  loc_CD6DE1: CVarStr var_CC
  loc_CD6DE4: PopAdLdVar
  loc_CD6DE5: LitI4 1
  loc_CD6DEA: FLdPr Me
  loc_CD6DED: MemLdStr global_104
  loc_CD6DF0: AryLock
  loc_CD6DF3: Ary1LdPr
  loc_CD6DF4: MemLdRfVar from_stack_1.global_124
  loc_CD6DF7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6DFC: AryUnlock
  loc_CD6DFF: FFreeVar var_CC = ""
  loc_CD6E06: FLdRfVar var_D0
  loc_CD6E09: FLdPr Me
  loc_CD6E0C: MemLdRfVar from_stack_1.global_148
  loc_CD6E0F: NewIfNullPr tblPersonaGIS
  loc_CD6E12: from_stack_1v = tblPersonaGIS.DetaLocaGet()
  loc_CD6E17: LitI2_Byte 0
  loc_CD6E19: LitVar_Missing var_E0
  loc_CD6E1C: LitI2_Byte 0
  loc_CD6E1E: FLdZeroAd var_D0
  loc_CD6E21: CVarStr var_CC
  loc_CD6E24: PopAdLdVar
  loc_CD6E25: LitI4 1
  loc_CD6E2A: FLdPr Me
  loc_CD6E2D: MemLdStr global_104
  loc_CD6E30: AryLock
  loc_CD6E33: Ary1LdPr
  loc_CD6E34: MemLdRfVar from_stack_1.global_128
  loc_CD6E37: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6E3C: AryUnlock
  loc_CD6E3F: FFreeVar var_CC = ""
  loc_CD6E46: LitI2_Byte 0
  loc_CD6E48: LitVar_Missing var_CC
  loc_CD6E4B: LitI2_Byte 0
  loc_CD6E4D: LitVarStr var_A0, vbNullString
  loc_CD6E52: PopAdLdVar
  loc_CD6E53: LitI4 1
  loc_CD6E58: FLdPr Me
  loc_CD6E5B: MemLdStr global_104
  loc_CD6E5E: AryLock
  loc_CD6E61: Ary1LdPr
  loc_CD6E62: MemLdRfVar from_stack_1.global_132
  loc_CD6E65: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6E6A: AryUnlock
  loc_CD6E6D: FFree1Var var_CC = ""
  loc_CD6E70: FLdRfVar var_D0
  loc_CD6E73: FLdPr Me
  loc_CD6E76: MemLdRfVar from_stack_1.global_148
  loc_CD6E79: NewIfNullPr tblPersonaGIS
  loc_CD6E7C: from_stack_1v = tblPersonaGIS.DetaCallGet()
  loc_CD6E81: LitI2_Byte 0
  loc_CD6E83: LitVar_Missing var_E0
  loc_CD6E86: LitI2_Byte 0
  loc_CD6E88: FLdZeroAd var_D0
  loc_CD6E8B: CVarStr var_CC
  loc_CD6E8E: PopAdLdVar
  loc_CD6E8F: LitI4 1
  loc_CD6E94: FLdPr Me
  loc_CD6E97: MemLdStr global_104
  loc_CD6E9A: AryLock
  loc_CD6E9D: Ary1LdPr
  loc_CD6E9E: MemLdRfVar from_stack_1.global_44
  loc_CD6EA1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6EA6: AryUnlock
  loc_CD6EA9: FFreeVar var_CC = ""
  loc_CD6EB0: FLdRfVar var_D0
  loc_CD6EB3: FLdPr Me
  loc_CD6EB6: MemLdRfVar from_stack_1.global_148
  loc_CD6EB9: NewIfNullPr tblPersonaGIS
  loc_CD6EBC: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_CD6EC1: FLdRfVar var_E8
  loc_CD6EC4: FLdPr Me
  loc_CD6EC7: MemLdRfVar from_stack_1.global_148
  loc_CD6ECA: NewIfNullPr tblPersonaGIS
  loc_CD6ECD: from_stack_1v = tblPersonaGIS.NucaInmuGet()
  loc_CD6ED2: FLdZeroAd var_E8
  loc_CD6ED5: CVarStr var_E0
  loc_CD6ED8: LitVarStr var_B0, vbNullString
  loc_CD6EDD: FStVarCopyObj var_CC
  loc_CD6EE0: FLdRfVar var_CC
  loc_CD6EE3: ILdRf var_D0
  loc_CD6EE6: LitStr "0"
  loc_CD6EE9: EqStr
  loc_CD6EEB: CVarBoolI2 var_A0
  loc_CD6EEF: FLdRfVar var_104
  loc_CD6EF2: ImpAdCallFPR4  = IIf(, , )
  loc_CD6EF7: LitI2_Byte 0
  loc_CD6EF9: LitVar_Missing var_114
  loc_CD6EFC: LitI2_Byte 0
  loc_CD6EFE: FLdVar var_104
  loc_CD6F02: LitI4 1
  loc_CD6F07: FLdPr Me
  loc_CD6F0A: MemLdStr global_104
  loc_CD6F0D: AryLock
  loc_CD6F10: Ary1LdPr
  loc_CD6F11: MemLdRfVar from_stack_1.global_48
  loc_CD6F14: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6F19: AryUnlock
  loc_CD6F1C: FFree1Str var_D0
  loc_CD6F1F: FFreeVar var_A0 = "": var_CC = "": var_E0 = "": var_104 = ""
  loc_CD6F2C: FLdRfVar var_D0
  loc_CD6F2F: FLdPr Me
  loc_CD6F32: MemLdRfVar from_stack_1.global_148
  loc_CD6F35: NewIfNullPr tblPersonaGIS
  loc_CD6F38: from_stack_1v = tblPersonaGIS.DetaBarrGet()
  loc_CD6F3D: LitI2_Byte 0
  loc_CD6F3F: LitVar_Missing var_E0
  loc_CD6F42: LitI2_Byte 0
  loc_CD6F44: FLdZeroAd var_D0
  loc_CD6F47: CVarStr var_CC
  loc_CD6F4A: PopAdLdVar
  loc_CD6F4B: LitI4 1
  loc_CD6F50: FLdPr Me
  loc_CD6F53: MemLdStr global_104
  loc_CD6F56: AryLock
  loc_CD6F59: Ary1LdPr
  loc_CD6F5A: MemLdRfVar from_stack_1.bGenerado
  loc_CD6F5D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6F62: AryUnlock
  loc_CD6F65: FFreeVar var_CC = ""
  loc_CD6F6C: FLdRfVar var_D0
  loc_CD6F6F: FLdPr Me
  loc_CD6F72: MemLdRfVar from_stack_1.global_148
  loc_CD6F75: NewIfNullPr tblPersonaGIS
  loc_CD6F78: from_stack_1v = tblPersonaGIS.ManzInmuGet()
  loc_CD6F7D: LitI2_Byte 0
  loc_CD6F7F: LitVar_Missing var_E0
  loc_CD6F82: LitI2_Byte 0
  loc_CD6F84: FLdZeroAd var_D0
  loc_CD6F87: CVarStr var_CC
  loc_CD6F8A: PopAdLdVar
  loc_CD6F8B: LitI4 1
  loc_CD6F90: FLdPr Me
  loc_CD6F93: MemLdStr global_104
  loc_CD6F96: AryLock
  loc_CD6F99: Ary1LdPr
  loc_CD6F9A: MemLdRfVar from_stack_1.global_56
  loc_CD6F9D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6FA2: AryUnlock
  loc_CD6FA5: FFreeVar var_CC = ""
  loc_CD6FAC: FLdRfVar var_D0
  loc_CD6FAF: FLdPr Me
  loc_CD6FB2: MemLdRfVar from_stack_1.global_148
  loc_CD6FB5: NewIfNullPr tblPersonaGIS
  loc_CD6FB8: from_stack_1v = tblPersonaGIS.CasaInmuGet()
  loc_CD6FBD: LitI2_Byte 0
  loc_CD6FBF: LitVar_Missing var_E0
  loc_CD6FC2: LitI2_Byte 0
  loc_CD6FC4: FLdZeroAd var_D0
  loc_CD6FC7: CVarStr var_CC
  loc_CD6FCA: PopAdLdVar
  loc_CD6FCB: LitI4 1
  loc_CD6FD0: FLdPr Me
  loc_CD6FD3: MemLdStr global_104
  loc_CD6FD6: AryLock
  loc_CD6FD9: Ary1LdPr
  loc_CD6FDA: MemLdRfVar from_stack_1.global_60
  loc_CD6FDD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD6FE2: AryUnlock
  loc_CD6FE5: FFreeVar var_CC = ""
  loc_CD6FEC: LitI2_Byte 0
  loc_CD6FEE: LitVar_Missing var_CC
  loc_CD6FF1: LitI2_Byte 0
  loc_CD6FF3: LitVarStr var_A0, vbNullString
  loc_CD6FF8: PopAdLdVar
  loc_CD6FF9: LitI4 1
  loc_CD6FFE: FLdPr Me
  loc_CD7001: MemLdStr global_104
  loc_CD7004: AryLock
  loc_CD7007: Ary1LdPr
  loc_CD7008: MemLdRfVar from_stack_1.global_64
  loc_CD700B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7010: AryUnlock
  loc_CD7013: FFree1Var var_CC = ""
  loc_CD7016: FLdRfVar var_D0
  loc_CD7019: FLdPr Me
  loc_CD701C: MemLdRfVar from_stack_1.global_148
  loc_CD701F: NewIfNullPr tblPersonaGIS
  loc_CD7022: from_stack_1v = tblPersonaGIS.DetaLocaGet()
  loc_CD7027: LitI2_Byte 0
  loc_CD7029: LitVar_Missing var_E0
  loc_CD702C: LitI2_Byte 0
  loc_CD702E: FLdZeroAd var_D0
  loc_CD7031: CVarStr var_CC
  loc_CD7034: PopAdLdVar
  loc_CD7035: LitI4 1
  loc_CD703A: FLdPr Me
  loc_CD703D: MemLdStr global_104
  loc_CD7040: AryLock
  loc_CD7043: Ary1LdPr
  loc_CD7044: MemLdRfVar from_stack_1.global_68
  loc_CD7047: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD704C: AryUnlock
  loc_CD704F: FFreeVar var_CC = ""
  loc_CD7056: LitI2_Byte 0
  loc_CD7058: LitVar_Missing var_CC
  loc_CD705B: LitI2_Byte 0
  loc_CD705D: LitVarStr var_A0, vbNullString
  loc_CD7062: PopAdLdVar
  loc_CD7063: LitI4 1
  loc_CD7068: FLdPr Me
  loc_CD706B: MemLdStr global_104
  loc_CD706E: AryLock
  loc_CD7071: Ary1LdPr
  loc_CD7072: MemLdRfVar from_stack_1.global_72
  loc_CD7075: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD707A: AryUnlock
  loc_CD707D: FFree1Var var_CC = ""
  loc_CD7080: LitStr " SELECT domicilio.calle as DecaPost, domicilio.NumeCalle as NumePost, domicilio.barrio as DebaPost, domicilio.Manzana as ManzPost, domicilio.Casa as CasaPost, "
  loc_CD7083: LitStr " concat(domicilio.Monoblock,IF(domicilio.Dpto<>'',' - ',''),domicilio.Dpto,IF(domicilio.Planta<>'',' - ',''),domicilio.Planta,IF(domicilio.NroLocal<>'',' - ',''), domicilio.NroLocal)  as UbicPost, domicilio.Localidad as DeloPost, domicilio.CodPostal as CopoPost"
  loc_CD7086: ConcatStr
  loc_CD7087: FStStrNoPop var_D0
  loc_CD708A: LitStr " FROM domicilio"
  loc_CD708D: ConcatStr
  loc_CD708E: FStStrNoPop var_E8
  loc_CD7091: LitStr " WHERE CodiOfic = 1"
  loc_CD7094: ConcatStr
  loc_CD7095: FStStrNoPop var_EC
  loc_CD7098: LitStr " AND CodiCome = "
  loc_CD709B: ConcatStr
  loc_CD709C: FStStrNoPop var_F4
  loc_CD709F: FLdRfVar var_F0
  loc_CD70A2: FLdPr Me
  loc_CD70A5: VCallAd Control_ID_CuenCtCtTxt
  loc_CD70A8: FStAdFunc var_B4
  loc_CD70AB: FLdPr var_B4
  loc_CD70AE:  = Me.Text
  loc_CD70B3: ILdRf var_F0
  loc_CD70B6: ConcatStr
  loc_CD70B7: FStStrNoPop var_138
  loc_CD70BA: LitStr " AND Tipo = 'RENTAS'"
  loc_CD70BD: ConcatStr
  loc_CD70BE: FStStrNoPop var_13C
  loc_CD70C1: FLdPr Me
  loc_CD70C4: MemLdRfVar from_stack_1.global_100
  loc_CD70C7: NewIfNullPr clsctacte
  loc_CD70CA: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD70CF: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F0 = "": var_138 = ""
  loc_CD70E0: FFree1Ad var_B4
  loc_CD70E3: FLdRfVar var_168
  loc_CD70E6: FLdPr Me
  loc_CD70E9: MemLdRfVar from_stack_1.global_100
  loc_CD70EC: NewIfNullPr clsctacte
  loc_CD70EF: from_stack_1 = clsctacte.RecordCount
  loc_CD70F4: ILdRf var_168
  loc_CD70F7: LitI4 1
  loc_CD70FC: GeI4
  loc_CD70FD: BranchF loc_CD743F
  loc_CD7100: FLdRfVar var_B4
  loc_CD7103: FLdPr Me
  loc_CD7106: MemLdRfVar from_stack_1.global_100
  loc_CD7109: NewIfNullPr clsctacte
  loc_CD710C: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7111: FLdPr var_B4
  loc_CD7114: Me.MoveFirst
  loc_CD7119: FFree1Ad var_B4
  loc_CD711C: FLdRfVar var_184
  loc_CD711F: LitVarStr var_A0, "DecaPost"
  loc_CD7124: PopAdLdVar
  loc_CD7125: FLdRfVar var_E4
  loc_CD7128: FLdRfVar var_B4
  loc_CD712B: FLdPr Me
  loc_CD712E: MemLdRfVar from_stack_1.global_100
  loc_CD7131: NewIfNullPr clsctacte
  loc_CD7134: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7139: FLdPr var_B4
  loc_CD713C:  = Me.Fields
  loc_CD7141: FLdPr var_E4
  loc_CD7144: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7149: LitI2_Byte 0
  loc_CD714B: LitVar_Missing var_E0
  loc_CD714E: LitI2_Byte 0
  loc_CD7150: FLdZeroAd var_184
  loc_CD7153: CVarAd
  loc_CD7157: PopAdLdVar
  loc_CD7158: LitI4 1
  loc_CD715D: FLdPr Me
  loc_CD7160: MemLdStr global_104
  loc_CD7163: AryLock
  loc_CD7166: Ary1LdPr
  loc_CD7167: MemLdRfVar from_stack_1.global_8
  loc_CD716A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD716F: AryUnlock
  loc_CD7172: FFreeAd var_B4 = ""
  loc_CD7179: FFreeVar var_CC = ""
  loc_CD7180: FLdRfVar var_184
  loc_CD7183: LitVarStr var_A0, "NumePost"
  loc_CD7188: PopAdLdVar
  loc_CD7189: FLdRfVar var_E4
  loc_CD718C: FLdRfVar var_B4
  loc_CD718F: FLdPr Me
  loc_CD7192: MemLdRfVar from_stack_1.global_100
  loc_CD7195: NewIfNullPr clsctacte
  loc_CD7198: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD719D: FLdPr var_B4
  loc_CD71A0:  = Me.Fields
  loc_CD71A5: FLdPr var_E4
  loc_CD71A8: from_stack_2 = Me.Item(from_stack_1)
  loc_CD71AD: LitI2_Byte 0
  loc_CD71AF: LitVar_Missing var_E0
  loc_CD71B2: LitI2_Byte 0
  loc_CD71B4: FLdZeroAd var_184
  loc_CD71B7: CVarAd
  loc_CD71BB: PopAdLdVar
  loc_CD71BC: LitI4 1
  loc_CD71C1: FLdPr Me
  loc_CD71C4: MemLdStr global_104
  loc_CD71C7: AryLock
  loc_CD71CA: Ary1LdPr
  loc_CD71CB: MemLdRfVar from_stack_1.global_12
  loc_CD71CE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD71D3: AryUnlock
  loc_CD71D6: FFreeAd var_B4 = ""
  loc_CD71DD: FFreeVar var_CC = ""
  loc_CD71E4: FLdRfVar var_184
  loc_CD71E7: LitVarStr var_A0, "DebaPost"
  loc_CD71EC: PopAdLdVar
  loc_CD71ED: FLdRfVar var_E4
  loc_CD71F0: FLdRfVar var_B4
  loc_CD71F3: FLdPr Me
  loc_CD71F6: MemLdRfVar from_stack_1.global_100
  loc_CD71F9: NewIfNullPr clsctacte
  loc_CD71FC: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7201: FLdPr var_B4
  loc_CD7204:  = Me.Fields
  loc_CD7209: FLdPr var_E4
  loc_CD720C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7211: LitI2_Byte 0
  loc_CD7213: LitVar_Missing var_E0
  loc_CD7216: LitI2_Byte 0
  loc_CD7218: FLdZeroAd var_184
  loc_CD721B: CVarAd
  loc_CD721F: PopAdLdVar
  loc_CD7220: LitI4 1
  loc_CD7225: FLdPr Me
  loc_CD7228: MemLdStr global_104
  loc_CD722B: AryLock
  loc_CD722E: Ary1LdPr
  loc_CD722F: MemLdRfVar from_stack_1.global_16
  loc_CD7232: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7237: AryUnlock
  loc_CD723A: FFreeAd var_B4 = ""
  loc_CD7241: FFreeVar var_CC = ""
  loc_CD7248: FLdRfVar var_184
  loc_CD724B: LitVarStr var_A0, "ManzPost"
  loc_CD7250: PopAdLdVar
  loc_CD7251: FLdRfVar var_E4
  loc_CD7254: FLdRfVar var_B4
  loc_CD7257: FLdPr Me
  loc_CD725A: MemLdRfVar from_stack_1.global_100
  loc_CD725D: NewIfNullPr clsctacte
  loc_CD7260: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7265: FLdPr var_B4
  loc_CD7268:  = Me.Fields
  loc_CD726D: FLdPr var_E4
  loc_CD7270: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7275: LitI2_Byte 0
  loc_CD7277: LitVar_Missing var_E0
  loc_CD727A: LitI2_Byte 0
  loc_CD727C: FLdZeroAd var_184
  loc_CD727F: CVarAd
  loc_CD7283: PopAdLdVar
  loc_CD7284: LitI4 1
  loc_CD7289: FLdPr Me
  loc_CD728C: MemLdStr global_104
  loc_CD728F: AryLock
  loc_CD7292: Ary1LdPr
  loc_CD7293: MemLdRfVar from_stack_1.global_20
  loc_CD7296: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD729B: AryUnlock
  loc_CD729E: FFreeAd var_B4 = ""
  loc_CD72A5: FFreeVar var_CC = ""
  loc_CD72AC: FLdRfVar var_184
  loc_CD72AF: LitVarStr var_A0, "CasaPost"
  loc_CD72B4: PopAdLdVar
  loc_CD72B5: FLdRfVar var_E4
  loc_CD72B8: FLdRfVar var_B4
  loc_CD72BB: FLdPr Me
  loc_CD72BE: MemLdRfVar from_stack_1.global_100
  loc_CD72C1: NewIfNullPr clsctacte
  loc_CD72C4: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD72C9: FLdPr var_B4
  loc_CD72CC:  = Me.Fields
  loc_CD72D1: FLdPr var_E4
  loc_CD72D4: from_stack_2 = Me.Item(from_stack_1)
  loc_CD72D9: LitI2_Byte 0
  loc_CD72DB: LitVar_Missing var_E0
  loc_CD72DE: LitI2_Byte 0
  loc_CD72E0: FLdZeroAd var_184
  loc_CD72E3: CVarAd
  loc_CD72E7: PopAdLdVar
  loc_CD72E8: LitI4 1
  loc_CD72ED: FLdPr Me
  loc_CD72F0: MemLdStr global_104
  loc_CD72F3: AryLock
  loc_CD72F6: Ary1LdPr
  loc_CD72F7: MemLdRfVar from_stack_1.global_24
  loc_CD72FA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD72FF: AryUnlock
  loc_CD7302: FFreeAd var_B4 = ""
  loc_CD7309: FFreeVar var_CC = ""
  loc_CD7310: FLdRfVar var_184
  loc_CD7313: LitVarStr var_A0, "UbicPost"
  loc_CD7318: PopAdLdVar
  loc_CD7319: FLdRfVar var_E4
  loc_CD731C: FLdRfVar var_B4
  loc_CD731F: FLdPr Me
  loc_CD7322: MemLdRfVar from_stack_1.global_100
  loc_CD7325: NewIfNullPr clsctacte
  loc_CD7328: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD732D: FLdPr var_B4
  loc_CD7330:  = Me.Fields
  loc_CD7335: FLdPr var_E4
  loc_CD7338: from_stack_2 = Me.Item(from_stack_1)
  loc_CD733D: LitI2_Byte 0
  loc_CD733F: LitVar_Missing var_E0
  loc_CD7342: LitI2_Byte 0
  loc_CD7344: FLdZeroAd var_184
  loc_CD7347: CVarAd
  loc_CD734B: PopAdLdVar
  loc_CD734C: LitI4 1
  loc_CD7351: FLdPr Me
  loc_CD7354: MemLdStr global_104
  loc_CD7357: AryLock
  loc_CD735A: Ary1LdPr
  loc_CD735B: MemLdRfVar from_stack_1.global_28
  loc_CD735E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7363: AryUnlock
  loc_CD7366: FFreeAd var_B4 = ""
  loc_CD736D: FFreeVar var_CC = ""
  loc_CD7374: FLdRfVar var_184
  loc_CD7377: LitVarStr var_A0, "DeloPost"
  loc_CD737C: PopAdLdVar
  loc_CD737D: FLdRfVar var_E4
  loc_CD7380: FLdRfVar var_B4
  loc_CD7383: FLdPr Me
  loc_CD7386: MemLdRfVar from_stack_1.global_100
  loc_CD7389: NewIfNullPr clsctacte
  loc_CD738C: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7391: FLdPr var_B4
  loc_CD7394:  = Me.Fields
  loc_CD7399: FLdPr var_E4
  loc_CD739C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD73A1: LitI2_Byte 0
  loc_CD73A3: LitVar_Missing var_E0
  loc_CD73A6: LitI2_Byte 0
  loc_CD73A8: FLdZeroAd var_184
  loc_CD73AB: CVarAd
  loc_CD73AF: PopAdLdVar
  loc_CD73B0: LitI4 1
  loc_CD73B5: FLdPr Me
  loc_CD73B8: MemLdStr global_104
  loc_CD73BB: AryLock
  loc_CD73BE: Ary1LdPr
  loc_CD73BF: MemLdRfVar from_stack_1.global_32
  loc_CD73C2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD73C7: AryUnlock
  loc_CD73CA: FFreeAd var_B4 = ""
  loc_CD73D1: FFreeVar var_CC = ""
  loc_CD73D8: FLdRfVar var_184
  loc_CD73DB: LitVarStr var_A0, "CopoPost"
  loc_CD73E0: PopAdLdVar
  loc_CD73E1: FLdRfVar var_E4
  loc_CD73E4: FLdRfVar var_B4
  loc_CD73E7: FLdPr Me
  loc_CD73EA: MemLdRfVar from_stack_1.global_100
  loc_CD73ED: NewIfNullPr clsctacte
  loc_CD73F0: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD73F5: FLdPr var_B4
  loc_CD73F8:  = Me.Fields
  loc_CD73FD: FLdPr var_E4
  loc_CD7400: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7405: LitI2_Byte 0
  loc_CD7407: LitVar_Missing var_E0
  loc_CD740A: LitI2_Byte 0
  loc_CD740C: FLdZeroAd var_184
  loc_CD740F: CVarAd
  loc_CD7413: PopAdLdVar
  loc_CD7414: LitI4 1
  loc_CD7419: FLdPr Me
  loc_CD741C: MemLdStr global_104
  loc_CD741F: AryLock
  loc_CD7422: Ary1LdPr
  loc_CD7423: MemLdRfVar from_stack_1.global_36
  loc_CD7426: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD742B: AryUnlock
  loc_CD742E: FFreeAd var_B4 = ""
  loc_CD7435: FFreeVar var_CC = ""
  loc_CD743C: Branch loc_CD758F
  loc_CD743F: LitI2_Byte 0
  loc_CD7441: LitVar_Missing var_CC
  loc_CD7444: LitI2_Byte 0
  loc_CD7446: LitVarStr var_A0, vbNullString
  loc_CD744B: PopAdLdVar
  loc_CD744C: LitI4 1
  loc_CD7451: FLdPr Me
  loc_CD7454: MemLdStr global_104
  loc_CD7457: AryLock
  loc_CD745A: Ary1LdPr
  loc_CD745B: MemLdRfVar from_stack_1.global_8
  loc_CD745E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7463: AryUnlock
  loc_CD7466: FFree1Var var_CC = ""
  loc_CD7469: LitI2_Byte 0
  loc_CD746B: LitVar_Missing var_CC
  loc_CD746E: LitI2_Byte 0
  loc_CD7470: LitVarStr var_A0, vbNullString
  loc_CD7475: PopAdLdVar
  loc_CD7476: LitI4 1
  loc_CD747B: FLdPr Me
  loc_CD747E: MemLdStr global_104
  loc_CD7481: AryLock
  loc_CD7484: Ary1LdPr
  loc_CD7485: MemLdRfVar from_stack_1.global_12
  loc_CD7488: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD748D: AryUnlock
  loc_CD7490: FFree1Var var_CC = ""
  loc_CD7493: LitI2_Byte 0
  loc_CD7495: LitVar_Missing var_CC
  loc_CD7498: LitI2_Byte 0
  loc_CD749A: LitVarStr var_A0, vbNullString
  loc_CD749F: PopAdLdVar
  loc_CD74A0: LitI4 1
  loc_CD74A5: FLdPr Me
  loc_CD74A8: MemLdStr global_104
  loc_CD74AB: AryLock
  loc_CD74AE: Ary1LdPr
  loc_CD74AF: MemLdRfVar from_stack_1.global_16
  loc_CD74B2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD74B7: AryUnlock
  loc_CD74BA: FFree1Var var_CC = ""
  loc_CD74BD: LitI2_Byte 0
  loc_CD74BF: LitVar_Missing var_CC
  loc_CD74C2: LitI2_Byte 0
  loc_CD74C4: LitVarStr var_A0, vbNullString
  loc_CD74C9: PopAdLdVar
  loc_CD74CA: LitI4 1
  loc_CD74CF: FLdPr Me
  loc_CD74D2: MemLdStr global_104
  loc_CD74D5: AryLock
  loc_CD74D8: Ary1LdPr
  loc_CD74D9: MemLdRfVar from_stack_1.global_20
  loc_CD74DC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD74E1: AryUnlock
  loc_CD74E4: FFree1Var var_CC = ""
  loc_CD74E7: LitI2_Byte 0
  loc_CD74E9: LitVar_Missing var_CC
  loc_CD74EC: LitI2_Byte 0
  loc_CD74EE: LitVarStr var_A0, vbNullString
  loc_CD74F3: PopAdLdVar
  loc_CD74F4: LitI4 1
  loc_CD74F9: FLdPr Me
  loc_CD74FC: MemLdStr global_104
  loc_CD74FF: AryLock
  loc_CD7502: Ary1LdPr
  loc_CD7503: MemLdRfVar from_stack_1.global_24
  loc_CD7506: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD750B: AryUnlock
  loc_CD750E: FFree1Var var_CC = ""
  loc_CD7511: LitI2_Byte 0
  loc_CD7513: LitVar_Missing var_CC
  loc_CD7516: LitI2_Byte 0
  loc_CD7518: LitVarStr var_A0, vbNullString
  loc_CD751D: PopAdLdVar
  loc_CD751E: LitI4 1
  loc_CD7523: FLdPr Me
  loc_CD7526: MemLdStr global_104
  loc_CD7529: AryLock
  loc_CD752C: Ary1LdPr
  loc_CD752D: MemLdRfVar from_stack_1.global_28
  loc_CD7530: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7535: AryUnlock
  loc_CD7538: FFree1Var var_CC = ""
  loc_CD753B: LitI2_Byte 0
  loc_CD753D: LitVar_Missing var_CC
  loc_CD7540: LitI2_Byte 0
  loc_CD7542: LitVarStr var_A0, vbNullString
  loc_CD7547: PopAdLdVar
  loc_CD7548: LitI4 1
  loc_CD754D: FLdPr Me
  loc_CD7550: MemLdStr global_104
  loc_CD7553: AryLock
  loc_CD7556: Ary1LdPr
  loc_CD7557: MemLdRfVar from_stack_1.global_32
  loc_CD755A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD755F: AryUnlock
  loc_CD7562: FFree1Var var_CC = ""
  loc_CD7565: LitI2_Byte 0
  loc_CD7567: LitVar_Missing var_CC
  loc_CD756A: LitI2_Byte 0
  loc_CD756C: LitVarStr var_A0, vbNullString
  loc_CD7571: PopAdLdVar
  loc_CD7572: LitI4 1
  loc_CD7577: FLdPr Me
  loc_CD757A: MemLdStr global_104
  loc_CD757D: AryLock
  loc_CD7580: Ary1LdPr
  loc_CD7581: MemLdRfVar from_stack_1.global_36
  loc_CD7584: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7589: AryUnlock
  loc_CD758C: FFree1Var var_CC = ""
  loc_CD758F: Branch loc_CD788E
  loc_CD7592: FLdPr var_B8
  loc_CD7595: Call clsctacte.MoveFirst()
  loc_CD759A: LitI2_Byte 0
  loc_CD759C: LitVar_Missing var_CC
  loc_CD759F: LitI2_Byte 0
  loc_CD75A1: LitVarStr var_A0, vbNullString
  loc_CD75A6: PopAdLdVar
  loc_CD75A7: LitI4 1
  loc_CD75AC: FLdPr Me
  loc_CD75AF: MemLdStr global_104
  loc_CD75B2: AryLock
  loc_CD75B5: Ary1LdPr
  loc_CD75B6: MemLdRfVar from_stack_1.global_0
  loc_CD75B9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD75BE: AryUnlock
  loc_CD75C1: FFree1Var var_CC = ""
  loc_CD75C4: LitI2_Byte 0
  loc_CD75C6: LitVar_Missing var_CC
  loc_CD75C9: LitI2_Byte 0
  loc_CD75CB: LitVarStr var_A0, vbNullString
  loc_CD75D0: PopAdLdVar
  loc_CD75D1: LitI4 1
  loc_CD75D6: FLdPr Me
  loc_CD75D9: MemLdStr global_104
  loc_CD75DC: AryLock
  loc_CD75DF: Ary1LdPr
  loc_CD75E0: MemLdRfVar from_stack_1.global_8
  loc_CD75E3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD75E8: AryUnlock
  loc_CD75EB: FFree1Var var_CC = ""
  loc_CD75EE: LitI2_Byte 0
  loc_CD75F0: LitVar_Missing var_CC
  loc_CD75F3: LitI2_Byte 0
  loc_CD75F5: LitVarStr var_A0, vbNullString
  loc_CD75FA: PopAdLdVar
  loc_CD75FB: LitI4 1
  loc_CD7600: FLdPr Me
  loc_CD7603: MemLdStr global_104
  loc_CD7606: AryLock
  loc_CD7609: Ary1LdPr
  loc_CD760A: MemLdRfVar from_stack_1.global_12
  loc_CD760D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7612: AryUnlock
  loc_CD7615: FFree1Var var_CC = ""
  loc_CD7618: LitI2_Byte 0
  loc_CD761A: LitVar_Missing var_CC
  loc_CD761D: LitI2_Byte 0
  loc_CD761F: LitVarStr var_A0, vbNullString
  loc_CD7624: PopAdLdVar
  loc_CD7625: LitI4 1
  loc_CD762A: FLdPr Me
  loc_CD762D: MemLdStr global_104
  loc_CD7630: AryLock
  loc_CD7633: Ary1LdPr
  loc_CD7634: MemLdRfVar from_stack_1.global_16
  loc_CD7637: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD763C: AryUnlock
  loc_CD763F: FFree1Var var_CC = ""
  loc_CD7642: LitI2_Byte 0
  loc_CD7644: LitVar_Missing var_CC
  loc_CD7647: LitI2_Byte 0
  loc_CD7649: LitVarStr var_A0, vbNullString
  loc_CD764E: PopAdLdVar
  loc_CD764F: LitI4 1
  loc_CD7654: FLdPr Me
  loc_CD7657: MemLdStr global_104
  loc_CD765A: AryLock
  loc_CD765D: Ary1LdPr
  loc_CD765E: MemLdRfVar from_stack_1.global_20
  loc_CD7661: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7666: AryUnlock
  loc_CD7669: FFree1Var var_CC = ""
  loc_CD766C: LitI2_Byte 0
  loc_CD766E: LitVar_Missing var_CC
  loc_CD7671: LitI2_Byte 0
  loc_CD7673: LitVarStr var_A0, vbNullString
  loc_CD7678: PopAdLdVar
  loc_CD7679: LitI4 1
  loc_CD767E: FLdPr Me
  loc_CD7681: MemLdStr global_104
  loc_CD7684: AryLock
  loc_CD7687: Ary1LdPr
  loc_CD7688: MemLdRfVar from_stack_1.global_24
  loc_CD768B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7690: AryUnlock
  loc_CD7693: FFree1Var var_CC = ""
  loc_CD7696: LitI2_Byte 0
  loc_CD7698: LitVar_Missing var_CC
  loc_CD769B: LitI2_Byte 0
  loc_CD769D: LitVarStr var_A0, vbNullString
  loc_CD76A2: PopAdLdVar
  loc_CD76A3: LitI4 1
  loc_CD76A8: FLdPr Me
  loc_CD76AB: MemLdStr global_104
  loc_CD76AE: AryLock
  loc_CD76B1: Ary1LdPr
  loc_CD76B2: MemLdRfVar from_stack_1.global_28
  loc_CD76B5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD76BA: AryUnlock
  loc_CD76BD: FFree1Var var_CC = ""
  loc_CD76C0: LitI2_Byte 0
  loc_CD76C2: LitVar_Missing var_CC
  loc_CD76C5: LitI2_Byte 0
  loc_CD76C7: LitVarStr var_A0, vbNullString
  loc_CD76CC: PopAdLdVar
  loc_CD76CD: LitI4 1
  loc_CD76D2: FLdPr Me
  loc_CD76D5: MemLdStr global_104
  loc_CD76D8: AryLock
  loc_CD76DB: Ary1LdPr
  loc_CD76DC: MemLdRfVar from_stack_1.global_32
  loc_CD76DF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD76E4: AryUnlock
  loc_CD76E7: FFree1Var var_CC = ""
  loc_CD76EA: LitI2_Byte 0
  loc_CD76EC: LitVar_Missing var_CC
  loc_CD76EF: LitI2_Byte 0
  loc_CD76F1: LitVarStr var_A0, vbNullString
  loc_CD76F6: PopAdLdVar
  loc_CD76F7: LitI4 1
  loc_CD76FC: FLdPr Me
  loc_CD76FF: MemLdStr global_104
  loc_CD7702: AryLock
  loc_CD7705: Ary1LdPr
  loc_CD7706: MemLdRfVar from_stack_1.global_36
  loc_CD7709: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD770E: AryUnlock
  loc_CD7711: FFree1Var var_CC = ""
  loc_CD7714: LitI2_Byte 0
  loc_CD7716: LitVar_Missing var_CC
  loc_CD7719: LitI2_Byte 0
  loc_CD771B: LitVarStr var_A0, vbNullString
  loc_CD7720: PopAdLdVar
  loc_CD7721: LitI4 1
  loc_CD7726: FLdPr Me
  loc_CD7729: MemLdStr global_104
  loc_CD772C: AryLock
  loc_CD772F: Ary1LdPr
  loc_CD7730: MemLdRfVar from_stack_1.global_100
  loc_CD7733: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7738: AryUnlock
  loc_CD773B: FFree1Var var_CC = ""
  loc_CD773E: LitI2_Byte 0
  loc_CD7740: LitVar_Missing var_CC
  loc_CD7743: LitI2_Byte 0
  loc_CD7745: LitVarStr var_A0, vbNullString
  loc_CD774A: PopAdLdVar
  loc_CD774B: LitI4 1
  loc_CD7750: FLdPr Me
  loc_CD7753: MemLdStr global_104
  loc_CD7756: AryLock
  loc_CD7759: Ary1LdPr
  loc_CD775A: MemLdRfVar from_stack_1.global_104
  loc_CD775D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7762: AryUnlock
  loc_CD7765: FFree1Var var_CC = ""
  loc_CD7768: LitI2_Byte 0
  loc_CD776A: LitVar_Missing var_CC
  loc_CD776D: LitI2_Byte 0
  loc_CD776F: LitVarStr var_A0, vbNullString
  loc_CD7774: PopAdLdVar
  loc_CD7775: LitI4 1
  loc_CD777A: FLdPr Me
  loc_CD777D: MemLdStr global_104
  loc_CD7780: AryLock
  loc_CD7783: Ary1LdPr
  loc_CD7784: MemLdRfVar from_stack_1.global_108
  loc_CD7787: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD778C: AryUnlock
  loc_CD778F: FFree1Var var_CC = ""
  loc_CD7792: LitI2_Byte 0
  loc_CD7794: LitVar_Missing var_CC
  loc_CD7797: LitI2_Byte 0
  loc_CD7799: LitVarStr var_A0, vbNullString
  loc_CD779E: PopAdLdVar
  loc_CD779F: LitI4 1
  loc_CD77A4: FLdPr Me
  loc_CD77A7: MemLdStr global_104
  loc_CD77AA: AryLock
  loc_CD77AD: Ary1LdPr
  loc_CD77AE: MemLdRfVar from_stack_1.global_112
  loc_CD77B1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD77B6: AryUnlock
  loc_CD77B9: FFree1Var var_CC = ""
  loc_CD77BC: LitI2_Byte 0
  loc_CD77BE: LitVar_Missing var_CC
  loc_CD77C1: LitI2_Byte 0
  loc_CD77C3: LitVarStr var_A0, vbNullString
  loc_CD77C8: PopAdLdVar
  loc_CD77C9: LitI4 1
  loc_CD77CE: FLdPr Me
  loc_CD77D1: MemLdStr global_104
  loc_CD77D4: AryLock
  loc_CD77D7: Ary1LdPr
  loc_CD77D8: MemLdRfVar from_stack_1.global_116
  loc_CD77DB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD77E0: AryUnlock
  loc_CD77E3: FFree1Var var_CC = ""
  loc_CD77E6: LitI2_Byte 0
  loc_CD77E8: LitVar_Missing var_CC
  loc_CD77EB: LitI2_Byte 0
  loc_CD77ED: LitVarStr var_A0, vbNullString
  loc_CD77F2: PopAdLdVar
  loc_CD77F3: LitI4 1
  loc_CD77F8: FLdPr Me
  loc_CD77FB: MemLdStr global_104
  loc_CD77FE: AryLock
  loc_CD7801: Ary1LdPr
  loc_CD7802: MemLdRfVar from_stack_1.global_120
  loc_CD7805: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD780A: AryUnlock
  loc_CD780D: FFree1Var var_CC = ""
  loc_CD7810: LitI2_Byte 0
  loc_CD7812: LitVar_Missing var_CC
  loc_CD7815: LitI2_Byte 0
  loc_CD7817: LitVarStr var_A0, vbNullString
  loc_CD781C: PopAdLdVar
  loc_CD781D: LitI4 1
  loc_CD7822: FLdPr Me
  loc_CD7825: MemLdStr global_104
  loc_CD7828: AryLock
  loc_CD782B: Ary1LdPr
  loc_CD782C: MemLdRfVar from_stack_1.global_124
  loc_CD782F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7834: AryUnlock
  loc_CD7837: FFree1Var var_CC = ""
  loc_CD783A: LitI2_Byte 0
  loc_CD783C: LitVar_Missing var_CC
  loc_CD783F: LitI2_Byte 0
  loc_CD7841: LitVarStr var_A0, vbNullString
  loc_CD7846: PopAdLdVar
  loc_CD7847: LitI4 1
  loc_CD784C: FLdPr Me
  loc_CD784F: MemLdStr global_104
  loc_CD7852: AryLock
  loc_CD7855: Ary1LdPr
  loc_CD7856: MemLdRfVar from_stack_1.global_128
  loc_CD7859: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD785E: AryUnlock
  loc_CD7861: FFree1Var var_CC = ""
  loc_CD7864: LitI2_Byte 0
  loc_CD7866: LitVar_Missing var_CC
  loc_CD7869: LitI2_Byte 0
  loc_CD786B: LitVarStr var_A0, vbNullString
  loc_CD7870: PopAdLdVar
  loc_CD7871: LitI4 1
  loc_CD7876: FLdPr Me
  loc_CD7879: MemLdStr global_104
  loc_CD787C: AryLock
  loc_CD787F: Ary1LdPr
  loc_CD7880: MemLdRfVar from_stack_1.global_132
  loc_CD7883: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7888: AryUnlock
  loc_CD788B: FFree1Var var_CC = ""
  loc_CD788E: Branch loc_CD7BEE
  loc_CD7891: FLdUI1
  loc_CD7895: LitI2_Byte 2
  loc_CD7897: CUI1I2
  loc_CD7899: EqI2
  loc_CD789A: BranchF loc_CD7933
  loc_CD789D: LitStr "SELECT DetaPers, domipostal.Calle as DecaPost, domipostal.NumeCalle as NumePost, domipostal.Barrio as DebaPost, domipostal.Manzana as ManzPost, domipostal.Casa as CasaPost, concat(domipostal.Dpto,' ',domipostal.Planta,' ',domipostal.MonoBlock) UbicPost, domipostal.Localidad as DeloPost, domipostal.CodPostal as CopoPost,"
  loc_CD78A0: LitStr " domireal.Calle DetaCall, domireal.NumeCalle NucaCome, concat(domireal.Dpto,' ',domireal.Planta,' ',domireal.MonoBlock) UbicCome, domireal.Localidad DetaLoca, domireal.CodPostal CodiPost, "
  loc_CD78A3: ConcatStr
  loc_CD78A4: FStStrNoPop var_D0
  loc_CD78A7: LitStr " persona.DecrPers, persona.NurePers, persona.DebrPers, persona.MarePers, persona.CarePers, persona.UbrePers, persona.DelrPers, persona.CoprPers"
  loc_CD78AA: ConcatStr
  loc_CD78AB: FStStrNoPop var_E8
  loc_CD78AE: LitStr " FROM comercio"
  loc_CD78B1: ConcatStr
  loc_CD78B2: FStStrNoPop var_EC
  loc_CD78B5: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = comercio.CucuPers"
  loc_CD78B8: ConcatStr
  loc_CD78B9: FStStrNoPop var_F0
  loc_CD78BC: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 2"
  loc_CD78BF: ConcatStr
  loc_CD78C0: FStStrNoPop var_F4
  loc_CD78C3: LitStr " AND  domireal.CodiCome = comercio.CodiCome"
  loc_CD78C6: ConcatStr
  loc_CD78C7: FStStrNoPop var_138
  loc_CD78CA: LitStr " AND domireal.Tipo = 'Comercial'"
  loc_CD78CD: ConcatStr
  loc_CD78CE: FStStrNoPop var_13C
  loc_CD78D1: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 2"
  loc_CD78D4: ConcatStr
  loc_CD78D5: FStStrNoPop var_140
  loc_CD78D8: LitStr " AND  domipostal.CodiCome = comercio.CodiCome"
  loc_CD78DB: ConcatStr
  loc_CD78DC: FStStrNoPop var_144
  loc_CD78DF: LitStr " AND domipostal.Tipo = 'Postal'"
  loc_CD78E2: ConcatStr
  loc_CD78E3: FStStrNoPop var_148
  loc_CD78E6: LitStr " WHERE comercio.CodiCome = "
  loc_CD78E9: ConcatStr
  loc_CD78EA: FStStrNoPop var_150
  loc_CD78ED: FLdRfVar var_14C
  loc_CD78F0: FLdPr Me
  loc_CD78F3: VCallAd Control_ID_CuenCtCtTxt
  loc_CD78F6: FStAdFunc var_B4
  loc_CD78F9: FLdPr var_B4
  loc_CD78FC:  = Me.Text
  loc_CD7901: ILdRf var_14C
  loc_CD7904: ConcatStr
  loc_CD7905: FStStrNoPop var_154
  loc_CD7908: FLdPr var_B8
  loc_CD790B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD7910: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_150 = "": var_14C = ""
  loc_CD792D: FFree1Ad var_B4
  loc_CD7930: Branch loc_CD7BEE
  loc_CD7933: FLdUI1
  loc_CD7937: LitI2_Byte 3
  loc_CD7939: CUI1I2
  loc_CD793B: EqI2
  loc_CD793C: BranchF loc_CD7996
  loc_CD793F: LitStr "SELECT DetaPers, DecrPers as DecaPost, NurePers as NumePost, DebrPers as DebaPost, MarePers as ManzPost, CarePers as CasaPost, UbrePers as UbicPost, DelrPers as DeloPost, CoprPers as CopoPost,"
  loc_CD7942: LitStr " persona.DecrPers, persona.NurePers, persona.DebrPers, persona.MarePers, persona.CarePers, persona.UbrePers, persona.DelrPers, persona.CoprPers"
  loc_CD7945: ConcatStr
  loc_CD7946: FStStrNoPop var_D0
  loc_CD7949: LitStr " FROM relacion LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_CD794C: ConcatStr
  loc_CD794D: FStStrNoPop var_E8
  loc_CD7950: LitStr " WHERE relacion.CodiOfic = 3 AND relacion.CuenCtct = '"
  loc_CD7953: ConcatStr
  loc_CD7954: FStStrNoPop var_F0
  loc_CD7957: FLdRfVar var_EC
  loc_CD795A: FLdPr Me
  loc_CD795D: VCallAd Control_ID_CuenCtCtTxt
  loc_CD7960: FStAdFunc var_B4
  loc_CD7963: FLdPr var_B4
  loc_CD7966:  = Me.Text
  loc_CD796B: ILdRf var_EC
  loc_CD796E: ConcatStr
  loc_CD796F: FStStrNoPop var_F4
  loc_CD7972: LitStr "' AND relacion.TipoRela = 'Titular'"
  loc_CD7975: ConcatStr
  loc_CD7976: FStStrNoPop var_138
  loc_CD7979: FLdPr var_B8
  loc_CD797C: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD7981: FFreeStr var_D0 = "": var_E8 = "": var_F0 = "": var_EC = "": var_F4 = ""
  loc_CD7990: FFree1Ad var_B4
  loc_CD7993: Branch loc_CD7BEE
  loc_CD7996: FLdUI1
  loc_CD799A: LitI2_Byte 4
  loc_CD799C: CUI1I2
  loc_CD799E: EqI2
  loc_CD799F: BranchF loc_CD7A4A
  loc_CD79A2: LitStr "SELECT DetaPers, domipostal.Calle as DecaPost, domipostal.NumeCalle as NumePost, domipostal.Barrio as DebaPost, domipostal.Manzana as ManzPost, domipostal.Casa as CasaPost, concat(domipostal.Dpto,' ',domipostal.Planta,' ',domipostal.MonoBlock) UbicPost, domipostal.Localidad as DeloPost, domipostal.CodPostal as CopoPost,"
  loc_CD79A5: LitStr " domireal.Calle DetaCall, domireal.NumeCalle NucaCome, concat(domireal.Dpto,' ',domireal.Planta,' ',domireal.MonoBlock) UbicCome, domireal.Localidad DetaLoca, domireal.CodPostal CodiPost, "
  loc_CD79A8: ConcatStr
  loc_CD79A9: FStStrNoPop var_D0
  loc_CD79AC: LitStr " persona.DecrPers, persona.NurePers, persona.DebrPers, persona.MarePers, persona.CarePers, persona.UbrePers, persona.DelrPers, persona.CoprPers,"
  loc_CD79AF: ConcatStr
  loc_CD79B0: FStStrNoPop var_E8
  loc_CD79B3: LitStr " DetaTise, Nom1Difu NumeDifu, Nom2Difu FilaDifu, Nom3Difu NoseDifu, Nom4Difu SeccDifu, Nom5Difu"
  loc_CD79B6: ConcatStr
  loc_CD79B7: FStStrNoPop var_EC
  loc_CD79BA: LitStr " FROM difunto"
  loc_CD79BD: ConcatStr
  loc_CD79BE: FStStrNoPop var_F0
  loc_CD79C1: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = difunto.CucuPers"
  loc_CD79C4: ConcatStr
  loc_CD79C5: FStStrNoPop var_F4
  loc_CD79C8: LitStr " LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise"
  loc_CD79CB: ConcatStr
  loc_CD79CC: FStStrNoPop var_138
  loc_CD79CF: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 4"
  loc_CD79D2: ConcatStr
  loc_CD79D3: FStStrNoPop var_13C
  loc_CD79D6: LitStr " AND  domireal.CodiCome = difunto.CodiDifu"
  loc_CD79D9: ConcatStr
  loc_CD79DA: FStStrNoPop var_140
  loc_CD79DD: LitStr " AND domireal.Tipo = 'Comercial'"
  loc_CD79E0: ConcatStr
  loc_CD79E1: FStStrNoPop var_144
  loc_CD79E4: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 3"
  loc_CD79E7: ConcatStr
  loc_CD79E8: FStStrNoPop var_148
  loc_CD79EB: LitStr " AND  domipostal.CodiCome = difunto.CodiDifu"
  loc_CD79EE: ConcatStr
  loc_CD79EF: FStStrNoPop var_14C
  loc_CD79F2: LitStr " AND domipostal.Tipo = 'Postal'"
  loc_CD79F5: ConcatStr
  loc_CD79F6: FStStrNoPop var_150
  loc_CD79F9: LitStr " WHERE CodiDifu = "
  loc_CD79FC: ConcatStr
  loc_CD79FD: FStStrNoPop var_158
  loc_CD7A00: FLdRfVar var_154
  loc_CD7A03: FLdPr Me
  loc_CD7A06: VCallAd Control_ID_CuenCtCtTxt
  loc_CD7A09: FStAdFunc var_B4
  loc_CD7A0C: FLdPr var_B4
  loc_CD7A0F:  = Me.Text
  loc_CD7A14: ILdRf var_154
  loc_CD7A17: ConcatStr
  loc_CD7A18: FStStrNoPop var_15C
  loc_CD7A1B: FLdPr var_B8
  loc_CD7A1E: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD7A23: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_158 = "": var_154 = ""
  loc_CD7A44: FFree1Ad var_B4
  loc_CD7A47: Branch loc_CD7BEE
  loc_CD7A4A: FLdUI1
  loc_CD7A4E: LitI2_Byte 5
  loc_CD7A50: CUI1I2
  loc_CD7A52: EqI2
  loc_CD7A53: BranchF loc_CD7AAD
  loc_CD7A56: LitStr "SELECT DetaPers, DecrPers as DecaPost, NurePers as NumePost, DebrPers as DebaPost, MarePers as ManzPost, CarePers as CasaPost, UbrePers as UbicPost, DelrPers as DeloPost, CoprPers as CopoPost,"
  loc_CD7A59: LitStr " persona.DecrPers, persona.NurePers, persona.DebrPers, persona.MarePers, persona.CarePers, persona.UbrePers, persona.DelrPers, persona.CoprPers"
  loc_CD7A5C: ConcatStr
  loc_CD7A5D: FStStrNoPop var_D0
  loc_CD7A60: LitStr " FROM relacion LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_CD7A63: ConcatStr
  loc_CD7A64: FStStrNoPop var_E8
  loc_CD7A67: LitStr " WHERE relacion.CodiOfic = 5 AND relacion.CuenCtct = '"
  loc_CD7A6A: ConcatStr
  loc_CD7A6B: FStStrNoPop var_F0
  loc_CD7A6E: FLdRfVar var_EC
  loc_CD7A71: FLdPr Me
  loc_CD7A74: VCallAd Control_ID_CuenCtCtTxt
  loc_CD7A77: FStAdFunc var_B4
  loc_CD7A7A: FLdPr var_B4
  loc_CD7A7D:  = Me.Text
  loc_CD7A82: ILdRf var_EC
  loc_CD7A85: ConcatStr
  loc_CD7A86: FStStrNoPop var_F4
  loc_CD7A89: LitStr "' AND relacion.TipoRela = 'Titular'"
  loc_CD7A8C: ConcatStr
  loc_CD7A8D: FStStrNoPop var_138
  loc_CD7A90: FLdPr var_B8
  loc_CD7A93: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD7A98: FFreeStr var_D0 = "": var_E8 = "": var_F0 = "": var_EC = "": var_F4 = ""
  loc_CD7AA7: FFree1Ad var_B4
  loc_CD7AAA: Branch loc_CD7BEE
  loc_CD7AAD: FLdUI1
  loc_CD7AB1: LitI2_Byte 6
  loc_CD7AB3: CUI1I2
  loc_CD7AB5: EqI2
  loc_CD7AB6: BranchF loc_CD7B4F
  loc_CD7AB9: LitStr "SELECT DetaPers, domipostal.Calle as DecaPost, domipostal.NumeCalle as NumePost, domipostal.Barrio as DebaPost, domipostal.Manzana as ManzPost, domipostal.Casa as CasaPost, concat(domipostal.Dpto,' ',domipostal.Planta,' ',domipostal.MonoBlock) UbicPost, domipostal.Localidad as DeloPost, domipostal.CodPostal as CopoPost,"
  loc_CD7ABC: LitStr " domireal.Calle DetaCall, domireal.NumeCalle NucaCome, concat(domireal.Dpto,' ',domireal.Planta,' ',domireal.MonoBlock) UbicCome, domireal.Localidad DetaLoca, domireal.CodPostal CodiPost, "
  loc_CD7ABF: ConcatStr
  loc_CD7AC0: FStStrNoPop var_D0
  loc_CD7AC3: LitStr " persona.DecrPers, persona.NurePers, persona.DebrPers, persona.MarePers, persona.CarePers, persona.UbrePers, persona.DelrPers, persona.CoprPers"
  loc_CD7AC6: ConcatStr
  loc_CD7AC7: FStStrNoPop var_E8
  loc_CD7ACA: LitStr " FROM publicidad"
  loc_CD7ACD: ConcatStr
  loc_CD7ACE: FStStrNoPop var_EC
  loc_CD7AD1: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = publicidad.CucuPers"
  loc_CD7AD4: ConcatStr
  loc_CD7AD5: FStStrNoPop var_F0
  loc_CD7AD8: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 6"
  loc_CD7ADB: ConcatStr
  loc_CD7ADC: FStStrNoPop var_F4
  loc_CD7ADF: LitStr " AND  domireal.CodiCome = publicidad.CodiCome"
  loc_CD7AE2: ConcatStr
  loc_CD7AE3: FStStrNoPop var_138
  loc_CD7AE6: LitStr " AND domireal.Tipo = 'Comercial'"
  loc_CD7AE9: ConcatStr
  loc_CD7AEA: FStStrNoPop var_13C
  loc_CD7AED: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 6"
  loc_CD7AF0: ConcatStr
  loc_CD7AF1: FStStrNoPop var_140
  loc_CD7AF4: LitStr " AND  domipostal.CodiCome = publicidad.CodiCome"
  loc_CD7AF7: ConcatStr
  loc_CD7AF8: FStStrNoPop var_144
  loc_CD7AFB: LitStr " AND domipostal.Tipo = 'Postal'"
  loc_CD7AFE: ConcatStr
  loc_CD7AFF: FStStrNoPop var_148
  loc_CD7B02: LitStr " WHERE publicidad.CodiCome = "
  loc_CD7B05: ConcatStr
  loc_CD7B06: FStStrNoPop var_150
  loc_CD7B09: FLdRfVar var_14C
  loc_CD7B0C: FLdPr Me
  loc_CD7B0F: VCallAd Control_ID_CuenCtCtTxt
  loc_CD7B12: FStAdFunc var_B4
  loc_CD7B15: FLdPr var_B4
  loc_CD7B18:  = Me.Text
  loc_CD7B1D: ILdRf var_14C
  loc_CD7B20: ConcatStr
  loc_CD7B21: FStStrNoPop var_154
  loc_CD7B24: FLdPr var_B8
  loc_CD7B27: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD7B2C: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_150 = "": var_14C = ""
  loc_CD7B49: FFree1Ad var_B4
  loc_CD7B4C: Branch loc_CD7BEE
  loc_CD7B4F: FLdUI1
  loc_CD7B53: LitI2_Byte 7
  loc_CD7B55: CUI1I2
  loc_CD7B57: EqI2
  loc_CD7B58: BranchF loc_CD7BEE
  loc_CD7B5B: LitStr "SELECT DetaPers, domipostal.Calle as DecaPost, domipostal.NumeCalle as NumePost, domipostal.Barrio as DebaPost, domipostal.Manzana as ManzPost, domipostal.Casa as CasaPost, concat(domipostal.Dpto,' ',domipostal.Planta,' ',domipostal.MonoBlock) UbicPost, domipostal.Localidad as DeloPost, domipostal.CodPostal as CopoPost,"
  loc_CD7B5E: LitStr " domireal.Calle DetaCall, domireal.NumeCalle NucaCome, concat(domireal.Dpto,' ',domireal.Planta,' ',domireal.MonoBlock) UbicCome, domireal.Localidad DetaLoca, domireal.CodPostal CodiPost, "
  loc_CD7B61: ConcatStr
  loc_CD7B62: FStStrNoPop var_D0
  loc_CD7B65: LitStr " persona.DecrPers, persona.NurePers, persona.DebrPers, persona.MarePers, persona.CarePers, persona.UbrePers, persona.DelrPers, persona.CoprPers"
  loc_CD7B68: ConcatStr
  loc_CD7B69: FStStrNoPop var_E8
  loc_CD7B6C: LitStr " FROM antena"
  loc_CD7B6F: ConcatStr
  loc_CD7B70: FStStrNoPop var_EC
  loc_CD7B73: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = antena.CucuPers"
  loc_CD7B76: ConcatStr
  loc_CD7B77: FStStrNoPop var_F0
  loc_CD7B7A: LitStr " LEFT JOIN domicilio domireal ON domireal.CodiOfic = 7"
  loc_CD7B7D: ConcatStr
  loc_CD7B7E: FStStrNoPop var_F4
  loc_CD7B81: LitStr " AND  domireal.CodiCome = antena.CodiCome"
  loc_CD7B84: ConcatStr
  loc_CD7B85: FStStrNoPop var_138
  loc_CD7B88: LitStr " AND domireal.Tipo = 'Comercial'"
  loc_CD7B8B: ConcatStr
  loc_CD7B8C: FStStrNoPop var_13C
  loc_CD7B8F: LitStr " LEFT JOIN domicilio domipostal ON domipostal.CodiOfic = 7"
  loc_CD7B92: ConcatStr
  loc_CD7B93: FStStrNoPop var_140
  loc_CD7B96: LitStr " AND  domipostal.CodiCome = antena.CodiCome"
  loc_CD7B99: ConcatStr
  loc_CD7B9A: FStStrNoPop var_144
  loc_CD7B9D: LitStr " AND domipostal.Tipo = 'Postal'"
  loc_CD7BA0: ConcatStr
  loc_CD7BA1: FStStrNoPop var_148
  loc_CD7BA4: LitStr " WHERE antena.CodiCome = "
  loc_CD7BA7: ConcatStr
  loc_CD7BA8: FStStrNoPop var_150
  loc_CD7BAB: FLdRfVar var_14C
  loc_CD7BAE: FLdPr Me
  loc_CD7BB1: VCallAd Control_ID_CuenCtCtTxt
  loc_CD7BB4: FStAdFunc var_B4
  loc_CD7BB7: FLdPr var_B4
  loc_CD7BBA:  = Me.Text
  loc_CD7BBF: ILdRf var_14C
  loc_CD7BC2: ConcatStr
  loc_CD7BC3: FStStrNoPop var_154
  loc_CD7BC6: FLdPr var_B8
  loc_CD7BC9: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD7BCE: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_150 = "": var_14C = ""
  loc_CD7BEB: FFree1Ad var_B4
  loc_CD7BEE: ImpAdLdUI1
  loc_CD7BF2: CI2UI1
  loc_CD7BF4: LitI2_Byte 1
  loc_CD7BF6: NeI2
  loc_CD7BF7: BranchF loc_CD827C
  loc_CD7BFA: FLdPr var_B8
  loc_CD7BFD: Call clsctacte.MoveFirst()
  loc_CD7C02: FLdRfVar var_184
  loc_CD7C05: LitVarStr var_A0, "DetaPers"
  loc_CD7C0A: PopAdLdVar
  loc_CD7C0B: FLdRfVar var_E4
  loc_CD7C0E: FLdRfVar var_B4
  loc_CD7C11: FLdPr var_B8
  loc_CD7C14: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7C19: FLdPr var_B4
  loc_CD7C1C:  = Me.Fields
  loc_CD7C21: FLdPr var_E4
  loc_CD7C24: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7C29: LitI2_Byte 0
  loc_CD7C2B: LitVar_Missing var_E0
  loc_CD7C2E: LitI2_Byte 0
  loc_CD7C30: FLdZeroAd var_184
  loc_CD7C33: CVarAd
  loc_CD7C37: PopAdLdVar
  loc_CD7C38: LitI4 1
  loc_CD7C3D: FLdPr Me
  loc_CD7C40: MemLdStr global_104
  loc_CD7C43: AryLock
  loc_CD7C46: Ary1LdPr
  loc_CD7C47: MemLdRfVar from_stack_1.global_0
  loc_CD7C4A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7C4F: AryUnlock
  loc_CD7C52: FFreeAd var_B4 = ""
  loc_CD7C59: FFreeVar var_CC = ""
  loc_CD7C60: FLdRfVar var_184
  loc_CD7C63: LitVarStr var_A0, "DecaPost"
  loc_CD7C68: PopAdLdVar
  loc_CD7C69: FLdRfVar var_E4
  loc_CD7C6C: FLdRfVar var_B4
  loc_CD7C6F: FLdPr var_B8
  loc_CD7C72: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7C77: FLdPr var_B4
  loc_CD7C7A:  = Me.Fields
  loc_CD7C7F: FLdPr var_E4
  loc_CD7C82: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7C87: LitI2_Byte 0
  loc_CD7C89: LitVar_Missing var_E0
  loc_CD7C8C: LitI2_Byte 0
  loc_CD7C8E: FLdZeroAd var_184
  loc_CD7C91: CVarAd
  loc_CD7C95: PopAdLdVar
  loc_CD7C96: LitI4 1
  loc_CD7C9B: FLdPr Me
  loc_CD7C9E: MemLdStr global_104
  loc_CD7CA1: AryLock
  loc_CD7CA4: Ary1LdPr
  loc_CD7CA5: MemLdRfVar from_stack_1.global_8
  loc_CD7CA8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7CAD: AryUnlock
  loc_CD7CB0: FFreeAd var_B4 = ""
  loc_CD7CB7: FFreeVar var_CC = ""
  loc_CD7CBE: FLdRfVar var_184
  loc_CD7CC1: LitVarStr var_A0, "NumePost"
  loc_CD7CC6: PopAdLdVar
  loc_CD7CC7: FLdRfVar var_E4
  loc_CD7CCA: FLdRfVar var_B4
  loc_CD7CCD: FLdPr var_B8
  loc_CD7CD0: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7CD5: FLdPr var_B4
  loc_CD7CD8:  = Me.Fields
  loc_CD7CDD: FLdPr var_E4
  loc_CD7CE0: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7CE5: LitI2_Byte 0
  loc_CD7CE7: LitVar_Missing var_E0
  loc_CD7CEA: LitI2_Byte 0
  loc_CD7CEC: FLdZeroAd var_184
  loc_CD7CEF: CVarAd
  loc_CD7CF3: PopAdLdVar
  loc_CD7CF4: LitI4 1
  loc_CD7CF9: FLdPr Me
  loc_CD7CFC: MemLdStr global_104
  loc_CD7CFF: AryLock
  loc_CD7D02: Ary1LdPr
  loc_CD7D03: MemLdRfVar from_stack_1.global_12
  loc_CD7D06: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7D0B: AryUnlock
  loc_CD7D0E: FFreeAd var_B4 = ""
  loc_CD7D15: FFreeVar var_CC = ""
  loc_CD7D1C: FLdRfVar var_184
  loc_CD7D1F: LitVarStr var_A0, "DebaPost"
  loc_CD7D24: PopAdLdVar
  loc_CD7D25: FLdRfVar var_E4
  loc_CD7D28: FLdRfVar var_B4
  loc_CD7D2B: FLdPr var_B8
  loc_CD7D2E: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7D33: FLdPr var_B4
  loc_CD7D36:  = Me.Fields
  loc_CD7D3B: FLdPr var_E4
  loc_CD7D3E: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7D43: LitI2_Byte 0
  loc_CD7D45: LitVar_Missing var_E0
  loc_CD7D48: LitI2_Byte 0
  loc_CD7D4A: FLdZeroAd var_184
  loc_CD7D4D: CVarAd
  loc_CD7D51: PopAdLdVar
  loc_CD7D52: LitI4 1
  loc_CD7D57: FLdPr Me
  loc_CD7D5A: MemLdStr global_104
  loc_CD7D5D: AryLock
  loc_CD7D60: Ary1LdPr
  loc_CD7D61: MemLdRfVar from_stack_1.global_16
  loc_CD7D64: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7D69: AryUnlock
  loc_CD7D6C: FFreeAd var_B4 = ""
  loc_CD7D73: FFreeVar var_CC = ""
  loc_CD7D7A: FLdRfVar var_184
  loc_CD7D7D: LitVarStr var_A0, "ManzPost"
  loc_CD7D82: PopAdLdVar
  loc_CD7D83: FLdRfVar var_E4
  loc_CD7D86: FLdRfVar var_B4
  loc_CD7D89: FLdPr var_B8
  loc_CD7D8C: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7D91: FLdPr var_B4
  loc_CD7D94:  = Me.Fields
  loc_CD7D99: FLdPr var_E4
  loc_CD7D9C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7DA1: LitI2_Byte 0
  loc_CD7DA3: LitVar_Missing var_E0
  loc_CD7DA6: LitI2_Byte 0
  loc_CD7DA8: FLdZeroAd var_184
  loc_CD7DAB: CVarAd
  loc_CD7DAF: PopAdLdVar
  loc_CD7DB0: LitI4 1
  loc_CD7DB5: FLdPr Me
  loc_CD7DB8: MemLdStr global_104
  loc_CD7DBB: AryLock
  loc_CD7DBE: Ary1LdPr
  loc_CD7DBF: MemLdRfVar from_stack_1.global_20
  loc_CD7DC2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7DC7: AryUnlock
  loc_CD7DCA: FFreeAd var_B4 = ""
  loc_CD7DD1: FFreeVar var_CC = ""
  loc_CD7DD8: FLdRfVar var_184
  loc_CD7DDB: LitVarStr var_A0, "CasaPost"
  loc_CD7DE0: PopAdLdVar
  loc_CD7DE1: FLdRfVar var_E4
  loc_CD7DE4: FLdRfVar var_B4
  loc_CD7DE7: FLdPr var_B8
  loc_CD7DEA: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7DEF: FLdPr var_B4
  loc_CD7DF2:  = Me.Fields
  loc_CD7DF7: FLdPr var_E4
  loc_CD7DFA: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7DFF: LitI2_Byte 0
  loc_CD7E01: LitVar_Missing var_E0
  loc_CD7E04: LitI2_Byte 0
  loc_CD7E06: FLdZeroAd var_184
  loc_CD7E09: CVarAd
  loc_CD7E0D: PopAdLdVar
  loc_CD7E0E: LitI4 1
  loc_CD7E13: FLdPr Me
  loc_CD7E16: MemLdStr global_104
  loc_CD7E19: AryLock
  loc_CD7E1C: Ary1LdPr
  loc_CD7E1D: MemLdRfVar from_stack_1.global_24
  loc_CD7E20: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7E25: AryUnlock
  loc_CD7E28: FFreeAd var_B4 = ""
  loc_CD7E2F: FFreeVar var_CC = ""
  loc_CD7E36: FLdRfVar var_184
  loc_CD7E39: LitVarStr var_A0, "UbicPost"
  loc_CD7E3E: PopAdLdVar
  loc_CD7E3F: FLdRfVar var_E4
  loc_CD7E42: FLdRfVar var_B4
  loc_CD7E45: FLdPr var_B8
  loc_CD7E48: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7E4D: FLdPr var_B4
  loc_CD7E50:  = Me.Fields
  loc_CD7E55: FLdPr var_E4
  loc_CD7E58: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7E5D: LitI2_Byte 0
  loc_CD7E5F: LitVar_Missing var_E0
  loc_CD7E62: LitI2_Byte 0
  loc_CD7E64: FLdZeroAd var_184
  loc_CD7E67: CVarAd
  loc_CD7E6B: PopAdLdVar
  loc_CD7E6C: LitI4 1
  loc_CD7E71: FLdPr Me
  loc_CD7E74: MemLdStr global_104
  loc_CD7E77: AryLock
  loc_CD7E7A: Ary1LdPr
  loc_CD7E7B: MemLdRfVar from_stack_1.global_28
  loc_CD7E7E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7E83: AryUnlock
  loc_CD7E86: FFreeAd var_B4 = ""
  loc_CD7E8D: FFreeVar var_CC = ""
  loc_CD7E94: FLdRfVar var_184
  loc_CD7E97: LitVarStr var_A0, "DeloPost"
  loc_CD7E9C: PopAdLdVar
  loc_CD7E9D: FLdRfVar var_E4
  loc_CD7EA0: FLdRfVar var_B4
  loc_CD7EA3: FLdPr var_B8
  loc_CD7EA6: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7EAB: FLdPr var_B4
  loc_CD7EAE:  = Me.Fields
  loc_CD7EB3: FLdPr var_E4
  loc_CD7EB6: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7EBB: LitI2_Byte 0
  loc_CD7EBD: LitVar_Missing var_E0
  loc_CD7EC0: LitI2_Byte 0
  loc_CD7EC2: FLdZeroAd var_184
  loc_CD7EC5: CVarAd
  loc_CD7EC9: PopAdLdVar
  loc_CD7ECA: LitI4 1
  loc_CD7ECF: FLdPr Me
  loc_CD7ED2: MemLdStr global_104
  loc_CD7ED5: AryLock
  loc_CD7ED8: Ary1LdPr
  loc_CD7ED9: MemLdRfVar from_stack_1.global_32
  loc_CD7EDC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7EE1: AryUnlock
  loc_CD7EE4: FFreeAd var_B4 = ""
  loc_CD7EEB: FFreeVar var_CC = ""
  loc_CD7EF2: FLdRfVar var_184
  loc_CD7EF5: LitVarStr var_A0, "CopoPost"
  loc_CD7EFA: PopAdLdVar
  loc_CD7EFB: FLdRfVar var_E4
  loc_CD7EFE: FLdRfVar var_B4
  loc_CD7F01: FLdPr var_B8
  loc_CD7F04: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7F09: FLdPr var_B4
  loc_CD7F0C:  = Me.Fields
  loc_CD7F11: FLdPr var_E4
  loc_CD7F14: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7F19: LitI2_Byte 0
  loc_CD7F1B: LitVar_Missing var_E0
  loc_CD7F1E: LitI2_Byte 0
  loc_CD7F20: FLdZeroAd var_184
  loc_CD7F23: CVarAd
  loc_CD7F27: PopAdLdVar
  loc_CD7F28: LitI4 1
  loc_CD7F2D: FLdPr Me
  loc_CD7F30: MemLdStr global_104
  loc_CD7F33: AryLock
  loc_CD7F36: Ary1LdPr
  loc_CD7F37: MemLdRfVar from_stack_1.global_36
  loc_CD7F3A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7F3F: AryUnlock
  loc_CD7F42: FFreeAd var_B4 = ""
  loc_CD7F49: FFreeVar var_CC = ""
  loc_CD7F50: FLdPr Me
  loc_CD7F53: VCallAd Control_ID_CodiOficCbo
  loc_CD7F56: FStAdFunc var_B4
  loc_CD7F59: LitI2_Byte 0
  loc_CD7F5B: LitVar_Missing var_E0
  loc_CD7F5E: LitI2_Byte 0
  loc_CD7F60: FLdZeroAd var_B4
  loc_CD7F63: CVarAd
  loc_CD7F67: PopAdLdVar
  loc_CD7F68: LitI4 1
  loc_CD7F6D: FLdPr Me
  loc_CD7F70: MemLdStr global_104
  loc_CD7F73: AryLock
  loc_CD7F76: Ary1LdPr
  loc_CD7F77: MemLdRfVar from_stack_1.global_100
  loc_CD7F7A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7F7F: AryUnlock
  loc_CD7F82: FFree1Ad var_B4
  loc_CD7F85: FFreeVar var_CC = ""
  loc_CD7F8C: FLdRfVar var_184
  loc_CD7F8F: LitVarStr var_A0, "DecrPers"
  loc_CD7F94: PopAdLdVar
  loc_CD7F95: FLdRfVar var_E4
  loc_CD7F98: FLdRfVar var_B4
  loc_CD7F9B: FLdPr var_B8
  loc_CD7F9E: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD7FA3: FLdPr var_B4
  loc_CD7FA6:  = Me.Fields
  loc_CD7FAB: FLdPr var_E4
  loc_CD7FAE: from_stack_2 = Me.Item(from_stack_1)
  loc_CD7FB3: LitI2_Byte 0
  loc_CD7FB5: LitVar_Missing var_E0
  loc_CD7FB8: LitI2_Byte 0
  loc_CD7FBA: FLdZeroAd var_184
  loc_CD7FBD: CVarAd
  loc_CD7FC1: PopAdLdVar
  loc_CD7FC2: LitI4 1
  loc_CD7FC7: FLdPr Me
  loc_CD7FCA: MemLdStr global_104
  loc_CD7FCD: AryLock
  loc_CD7FD0: Ary1LdPr
  loc_CD7FD1: MemLdRfVar from_stack_1.global_104
  loc_CD7FD4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD7FD9: AryUnlock
  loc_CD7FDC: FFreeAd var_B4 = ""
  loc_CD7FE3: FFreeVar var_CC = ""
  loc_CD7FEA: FLdRfVar var_184
  loc_CD7FED: LitVarStr var_A0, "NurePers"
  loc_CD7FF2: PopAdLdVar
  loc_CD7FF3: FLdRfVar var_E4
  loc_CD7FF6: FLdRfVar var_B4
  loc_CD7FF9: FLdPr var_B8
  loc_CD7FFC: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8001: FLdPr var_B4
  loc_CD8004:  = Me.Fields
  loc_CD8009: FLdPr var_E4
  loc_CD800C: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8011: LitI2_Byte 0
  loc_CD8013: LitVar_Missing var_E0
  loc_CD8016: LitI2_Byte 0
  loc_CD8018: FLdZeroAd var_184
  loc_CD801B: CVarAd
  loc_CD801F: PopAdLdVar
  loc_CD8020: LitI4 1
  loc_CD8025: FLdPr Me
  loc_CD8028: MemLdStr global_104
  loc_CD802B: AryLock
  loc_CD802E: Ary1LdPr
  loc_CD802F: MemLdRfVar from_stack_1.global_108
  loc_CD8032: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8037: AryUnlock
  loc_CD803A: FFreeAd var_B4 = ""
  loc_CD8041: FFreeVar var_CC = ""
  loc_CD8048: FLdRfVar var_184
  loc_CD804B: LitVarStr var_A0, "DebrPers"
  loc_CD8050: PopAdLdVar
  loc_CD8051: FLdRfVar var_E4
  loc_CD8054: FLdRfVar var_B4
  loc_CD8057: FLdPr var_B8
  loc_CD805A: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD805F: FLdPr var_B4
  loc_CD8062:  = Me.Fields
  loc_CD8067: FLdPr var_E4
  loc_CD806A: from_stack_2 = Me.Item(from_stack_1)
  loc_CD806F: LitI2_Byte 0
  loc_CD8071: LitVar_Missing var_E0
  loc_CD8074: LitI2_Byte 0
  loc_CD8076: FLdZeroAd var_184
  loc_CD8079: CVarAd
  loc_CD807D: PopAdLdVar
  loc_CD807E: LitI4 1
  loc_CD8083: FLdPr Me
  loc_CD8086: MemLdStr global_104
  loc_CD8089: AryLock
  loc_CD808C: Ary1LdPr
  loc_CD808D: MemLdRfVar from_stack_1.global_112
  loc_CD8090: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8095: AryUnlock
  loc_CD8098: FFreeAd var_B4 = ""
  loc_CD809F: FFreeVar var_CC = ""
  loc_CD80A6: FLdRfVar var_184
  loc_CD80A9: LitVarStr var_A0, "UbrePers"
  loc_CD80AE: PopAdLdVar
  loc_CD80AF: FLdRfVar var_E4
  loc_CD80B2: FLdRfVar var_B4
  loc_CD80B5: FLdPr var_B8
  loc_CD80B8: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD80BD: FLdPr var_B4
  loc_CD80C0:  = Me.Fields
  loc_CD80C5: FLdPr var_E4
  loc_CD80C8: from_stack_2 = Me.Item(from_stack_1)
  loc_CD80CD: LitI2_Byte 0
  loc_CD80CF: LitVar_Missing var_E0
  loc_CD80D2: LitI2_Byte 0
  loc_CD80D4: FLdZeroAd var_184
  loc_CD80D7: CVarAd
  loc_CD80DB: PopAdLdVar
  loc_CD80DC: LitI4 1
  loc_CD80E1: FLdPr Me
  loc_CD80E4: MemLdStr global_104
  loc_CD80E7: AryLock
  loc_CD80EA: Ary1LdPr
  loc_CD80EB: MemLdRfVar from_stack_1.global_116
  loc_CD80EE: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD80F3: AryUnlock
  loc_CD80F6: FFreeAd var_B4 = ""
  loc_CD80FD: FFreeVar var_CC = ""
  loc_CD8104: FLdRfVar var_184
  loc_CD8107: LitVarStr var_A0, "MarePers"
  loc_CD810C: PopAdLdVar
  loc_CD810D: FLdRfVar var_E4
  loc_CD8110: FLdRfVar var_B4
  loc_CD8113: FLdPr var_B8
  loc_CD8116: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD811B: FLdPr var_B4
  loc_CD811E:  = Me.Fields
  loc_CD8123: FLdPr var_E4
  loc_CD8126: from_stack_2 = Me.Item(from_stack_1)
  loc_CD812B: LitI2_Byte 0
  loc_CD812D: LitVar_Missing var_E0
  loc_CD8130: LitI2_Byte 0
  loc_CD8132: FLdZeroAd var_184
  loc_CD8135: CVarAd
  loc_CD8139: PopAdLdVar
  loc_CD813A: LitI4 1
  loc_CD813F: FLdPr Me
  loc_CD8142: MemLdStr global_104
  loc_CD8145: AryLock
  loc_CD8148: Ary1LdPr
  loc_CD8149: MemLdRfVar from_stack_1.global_120
  loc_CD814C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8151: AryUnlock
  loc_CD8154: FFreeAd var_B4 = ""
  loc_CD815B: FFreeVar var_CC = ""
  loc_CD8162: FLdRfVar var_184
  loc_CD8165: LitVarStr var_A0, "CarePers"
  loc_CD816A: PopAdLdVar
  loc_CD816B: FLdRfVar var_E4
  loc_CD816E: FLdRfVar var_B4
  loc_CD8171: FLdPr var_B8
  loc_CD8174: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8179: FLdPr var_B4
  loc_CD817C:  = Me.Fields
  loc_CD8181: FLdPr var_E4
  loc_CD8184: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8189: LitI2_Byte 0
  loc_CD818B: LitVar_Missing var_E0
  loc_CD818E: LitI2_Byte 0
  loc_CD8190: FLdZeroAd var_184
  loc_CD8193: CVarAd
  loc_CD8197: PopAdLdVar
  loc_CD8198: LitI4 1
  loc_CD819D: FLdPr Me
  loc_CD81A0: MemLdStr global_104
  loc_CD81A3: AryLock
  loc_CD81A6: Ary1LdPr
  loc_CD81A7: MemLdRfVar from_stack_1.global_124
  loc_CD81AA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD81AF: AryUnlock
  loc_CD81B2: FFreeAd var_B4 = ""
  loc_CD81B9: FFreeVar var_CC = ""
  loc_CD81C0: FLdRfVar var_184
  loc_CD81C3: LitVarStr var_A0, "DelrPers"
  loc_CD81C8: PopAdLdVar
  loc_CD81C9: FLdRfVar var_E4
  loc_CD81CC: FLdRfVar var_B4
  loc_CD81CF: FLdPr var_B8
  loc_CD81D2: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD81D7: FLdPr var_B4
  loc_CD81DA:  = Me.Fields
  loc_CD81DF: FLdPr var_E4
  loc_CD81E2: from_stack_2 = Me.Item(from_stack_1)
  loc_CD81E7: LitI2_Byte 0
  loc_CD81E9: LitVar_Missing var_E0
  loc_CD81EC: LitI2_Byte 0
  loc_CD81EE: FLdZeroAd var_184
  loc_CD81F1: CVarAd
  loc_CD81F5: PopAdLdVar
  loc_CD81F6: LitI4 1
  loc_CD81FB: FLdPr Me
  loc_CD81FE: MemLdStr global_104
  loc_CD8201: AryLock
  loc_CD8204: Ary1LdPr
  loc_CD8205: MemLdRfVar from_stack_1.global_128
  loc_CD8208: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD820D: AryUnlock
  loc_CD8210: FFreeAd var_B4 = ""
  loc_CD8217: FFreeVar var_CC = ""
  loc_CD821E: FLdRfVar var_184
  loc_CD8221: LitVarStr var_A0, "CoprPers"
  loc_CD8226: PopAdLdVar
  loc_CD8227: FLdRfVar var_E4
  loc_CD822A: FLdRfVar var_B4
  loc_CD822D: FLdPr var_B8
  loc_CD8230: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8235: FLdPr var_B4
  loc_CD8238:  = Me.Fields
  loc_CD823D: FLdPr var_E4
  loc_CD8240: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8245: LitI2_Byte 0
  loc_CD8247: LitVar_Missing var_E0
  loc_CD824A: LitI2_Byte 0
  loc_CD824C: FLdZeroAd var_184
  loc_CD824F: CVarAd
  loc_CD8253: PopAdLdVar
  loc_CD8254: LitI4 1
  loc_CD8259: FLdPr Me
  loc_CD825C: MemLdStr global_104
  loc_CD825F: AryLock
  loc_CD8262: Ary1LdPr
  loc_CD8263: MemLdRfVar from_stack_1.global_132
  loc_CD8266: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD826B: AryUnlock
  loc_CD826E: FFreeAd var_B4 = ""
  loc_CD8275: FFreeVar var_CC = ""
  loc_CD827C: ImpAdLdUI1
  loc_CD8280: FStUI1 var_186
  loc_CD8284: FLdUI1
  loc_CD8288: LitI2_Byte 1
  loc_CD828A: CUI1I2
  loc_CD828C: EqI2
  loc_CD828D: BranchF loc_CD8293
  loc_CD8290: Branch loc_CD8C5A
  loc_CD8293: FLdUI1
  loc_CD8297: LitI2_Byte 2
  loc_CD8299: CUI1I2
  loc_CD829B: EqI2
  loc_CD829C: BranchF loc_CD8516
  loc_CD829F: FLdRfVar var_184
  loc_CD82A2: LitVarStr var_A0, "DetaCall"
  loc_CD82A7: PopAdLdVar
  loc_CD82A8: FLdRfVar var_E4
  loc_CD82AB: FLdRfVar var_B4
  loc_CD82AE: FLdPr var_B8
  loc_CD82B1: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD82B6: FLdPr var_B4
  loc_CD82B9:  = Me.Fields
  loc_CD82BE: FLdPr var_E4
  loc_CD82C1: from_stack_2 = Me.Item(from_stack_1)
  loc_CD82C6: LitI2_Byte 0
  loc_CD82C8: LitVar_Missing var_E0
  loc_CD82CB: LitI2_Byte 0
  loc_CD82CD: FLdZeroAd var_184
  loc_CD82D0: CVarAd
  loc_CD82D4: PopAdLdVar
  loc_CD82D5: LitI4 1
  loc_CD82DA: FLdPr Me
  loc_CD82DD: MemLdStr global_104
  loc_CD82E0: AryLock
  loc_CD82E3: Ary1LdPr
  loc_CD82E4: MemLdRfVar from_stack_1.global_44
  loc_CD82E7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD82EC: AryUnlock
  loc_CD82EF: FFreeAd var_B4 = ""
  loc_CD82F6: FFreeVar var_CC = ""
  loc_CD82FD: FLdRfVar var_184
  loc_CD8300: LitVarStr var_A0, "DetaLoca"
  loc_CD8305: PopAdLdVar
  loc_CD8306: FLdRfVar var_E4
  loc_CD8309: FLdRfVar var_B4
  loc_CD830C: FLdPr var_B8
  loc_CD830F: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8314: FLdPr var_B4
  loc_CD8317:  = Me.Fields
  loc_CD831C: FLdPr var_E4
  loc_CD831F: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8324: LitI2_Byte 0
  loc_CD8326: LitVar_Missing var_E0
  loc_CD8329: LitI2_Byte 0
  loc_CD832B: FLdZeroAd var_184
  loc_CD832E: CVarAd
  loc_CD8332: PopAdLdVar
  loc_CD8333: LitI4 1
  loc_CD8338: FLdPr Me
  loc_CD833B: MemLdStr global_104
  loc_CD833E: AryLock
  loc_CD8341: Ary1LdPr
  loc_CD8342: MemLdRfVar from_stack_1.global_68
  loc_CD8345: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD834A: AryUnlock
  loc_CD834D: FFreeAd var_B4 = ""
  loc_CD8354: FFreeVar var_CC = ""
  loc_CD835B: FLdRfVar var_184
  loc_CD835E: LitVarStr var_A0, "CodiPost"
  loc_CD8363: PopAdLdVar
  loc_CD8364: FLdRfVar var_E4
  loc_CD8367: FLdRfVar var_B4
  loc_CD836A: FLdPr var_B8
  loc_CD836D: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8372: FLdPr var_B4
  loc_CD8375:  = Me.Fields
  loc_CD837A: FLdPr var_E4
  loc_CD837D: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8382: LitI2_Byte 0
  loc_CD8384: LitVar_Missing var_E0
  loc_CD8387: LitI2_Byte 0
  loc_CD8389: FLdZeroAd var_184
  loc_CD838C: CVarAd
  loc_CD8390: PopAdLdVar
  loc_CD8391: LitI4 1
  loc_CD8396: FLdPr Me
  loc_CD8399: MemLdStr global_104
  loc_CD839C: AryLock
  loc_CD839F: Ary1LdPr
  loc_CD83A0: MemLdRfVar from_stack_1.global_72
  loc_CD83A3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD83A8: AryUnlock
  loc_CD83AB: FFreeAd var_B4 = ""
  loc_CD83B2: FFreeVar var_CC = ""
  loc_CD83B9: FLdRfVar var_CC
  loc_CD83BC: FLdRfVar var_184
  loc_CD83BF: LitVarStr var_A0, "NucaCome"
  loc_CD83C4: PopAdLdVar
  loc_CD83C5: FLdRfVar var_E4
  loc_CD83C8: FLdRfVar var_B4
  loc_CD83CB: FLdPr var_B8
  loc_CD83CE: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD83D3: FLdPr var_B4
  loc_CD83D6:  = Me.Fields
  loc_CD83DB: FLdPr var_E4
  loc_CD83DE: from_stack_2 = Me.Item(from_stack_1)
  loc_CD83E3: FLdPr var_184
  loc_CD83E6:  = Me.Value
  loc_CD83EB: FLdRfVar var_194
  loc_CD83EE: LitVarStr var_180, "NucaCome"
  loc_CD83F3: PopAdLdVar
  loc_CD83F4: FLdRfVar var_190
  loc_CD83F7: FLdRfVar var_18C
  loc_CD83FA: FLdPr var_B8
  loc_CD83FD: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8402: FLdPr var_18C
  loc_CD8405:  = Me.Fields
  loc_CD840A: FLdPr var_190
  loc_CD840D: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8412: FLdZeroAd var_194
  loc_CD8415: CVarAd
  loc_CD8419: LitVarStr var_1A4, vbNullString
  loc_CD841E: FStVarCopyObj var_114
  loc_CD8421: FLdRfVar var_114
  loc_CD8424: FLdRfVar var_CC
  loc_CD8427: LitVarStr var_B0, vbNullString
  loc_CD842C: HardType
  loc_CD842D: EqVar var_E0
  loc_CD8431: FStVar var_104
  loc_CD8435: FLdRfVar var_104
  loc_CD8438: FLdRfVar var_134
  loc_CD843B: ImpAdCallFPR4  = IIf(, , )
  loc_CD8440: LitI2_Byte 0
  loc_CD8442: LitVar_Missing var_1C4
  loc_CD8445: LitI2_Byte 0
  loc_CD8447: FLdVar var_134
  loc_CD844B: LitI4 1
  loc_CD8450: FLdPr Me
  loc_CD8453: MemLdStr global_104
  loc_CD8456: AryLock
  loc_CD8459: Ary1LdPr
  loc_CD845A: MemLdRfVar from_stack_1.global_76
  loc_CD845D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8462: AryUnlock
  loc_CD8465: FFreeAd var_B4 = "": var_E4 = "": var_184 = "": var_18C = ""
  loc_CD8472: FFreeVar var_CC = "": var_104 = "": var_114 = "": var_124 = "": var_134 = ""
  loc_CD8481: FLdRfVar var_184
  loc_CD8484: LitVarStr var_A0, "UbicCome"
  loc_CD8489: PopAdLdVar
  loc_CD848A: FLdRfVar var_E4
  loc_CD848D: FLdRfVar var_B4
  loc_CD8490: FLdPr var_B8
  loc_CD8493: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8498: FLdPr var_B4
  loc_CD849B:  = Me.Fields
  loc_CD84A0: FLdPr var_E4
  loc_CD84A3: from_stack_2 = Me.Item(from_stack_1)
  loc_CD84A8: LitI2_Byte 0
  loc_CD84AA: LitVar_Missing var_E0
  loc_CD84AD: LitI2_Byte 0
  loc_CD84AF: FLdZeroAd var_184
  loc_CD84B2: CVarAd
  loc_CD84B6: PopAdLdVar
  loc_CD84B7: LitI4 1
  loc_CD84BC: FLdPr Me
  loc_CD84BF: MemLdStr global_104
  loc_CD84C2: AryLock
  loc_CD84C5: Ary1LdPr
  loc_CD84C6: MemLdRfVar from_stack_1.global_80
  loc_CD84C9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD84CE: AryUnlock
  loc_CD84D1: FFreeAd var_B4 = ""
  loc_CD84D8: FFreeVar var_CC = ""
  loc_CD84DF: FLdRfVar var_CC
  loc_CD84E2: Call Proc_278_27_ACE8D0()
  loc_CD84E7: LitI2_Byte 0
  loc_CD84E9: LitVar_Missing var_E0
  loc_CD84EC: LitI2_Byte 0
  loc_CD84EE: FLdVar var_CC
  loc_CD84F2: LitI4 1
  loc_CD84F7: FLdPr Me
  loc_CD84FA: MemLdStr global_104
  loc_CD84FD: AryLock
  loc_CD8500: Ary1LdPr
  loc_CD8501: MemLdRfVar from_stack_1.global_4
  loc_CD8504: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8509: AryUnlock
  loc_CD850C: FFreeVar var_CC = ""
  loc_CD8513: Branch loc_CD8C5A
  loc_CD8516: FLdUI1
  loc_CD851A: LitI2_Byte 3
  loc_CD851C: CUI1I2
  loc_CD851E: EqI2
  loc_CD851F: BranchF loc_CD8559
  loc_CD8522: FLdRfVar var_CC
  loc_CD8525: Call Proc_278_27_ACE8D0()
  loc_CD852A: LitI2_Byte 0
  loc_CD852C: LitVar_Missing var_E0
  loc_CD852F: LitI2_Byte 0
  loc_CD8531: FLdVar var_CC
  loc_CD8535: LitI4 1
  loc_CD853A: FLdPr Me
  loc_CD853D: MemLdStr global_104
  loc_CD8540: AryLock
  loc_CD8543: Ary1LdPr
  loc_CD8544: MemLdRfVar from_stack_1.global_4
  loc_CD8547: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD854C: AryUnlock
  loc_CD854F: FFreeVar var_CC = ""
  loc_CD8556: Branch loc_CD8C5A
  loc_CD8559: FLdUI1
  loc_CD855D: LitI2_Byte 4
  loc_CD855F: CUI1I2
  loc_CD8561: EqI2
  loc_CD8562: BranchF loc_CD8714
  loc_CD8565: FLdRfVar var_184
  loc_CD8568: LitVarStr var_A0, "DetaTise"
  loc_CD856D: PopAdLdVar
  loc_CD856E: FLdRfVar var_E4
  loc_CD8571: FLdRfVar var_B4
  loc_CD8574: FLdPr var_B8
  loc_CD8577: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD857C: FLdPr var_B4
  loc_CD857F:  = Me.Fields
  loc_CD8584: FLdPr var_E4
  loc_CD8587: from_stack_2 = Me.Item(from_stack_1)
  loc_CD858C: LitI2_Byte 0
  loc_CD858E: LitVar_Missing var_E0
  loc_CD8591: LitI2_Byte 0
  loc_CD8593: FLdZeroAd var_184
  loc_CD8596: CVarAd
  loc_CD859A: PopAdLdVar
  loc_CD859B: LitI4 1
  loc_CD85A0: FLdPr Me
  loc_CD85A3: MemLdStr global_104
  loc_CD85A6: AryLock
  loc_CD85A9: Ary1LdPr
  loc_CD85AA: MemLdRfVar from_stack_1.global_84
  loc_CD85AD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD85B2: AryUnlock
  loc_CD85B5: FFreeAd var_B4 = ""
  loc_CD85BC: FFreeVar var_CC = ""
  loc_CD85C3: FLdRfVar var_184
  loc_CD85C6: LitVarStr var_A0, "NumeDifu"
  loc_CD85CB: PopAdLdVar
  loc_CD85CC: FLdRfVar var_E4
  loc_CD85CF: FLdRfVar var_B4
  loc_CD85D2: FLdPr var_B8
  loc_CD85D5: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD85DA: FLdPr var_B4
  loc_CD85DD:  = Me.Fields
  loc_CD85E2: FLdPr var_E4
  loc_CD85E5: from_stack_2 = Me.Item(from_stack_1)
  loc_CD85EA: LitI2_Byte 0
  loc_CD85EC: LitVar_Missing var_E0
  loc_CD85EF: LitI2_Byte 0
  loc_CD85F1: FLdZeroAd var_184
  loc_CD85F4: CVarAd
  loc_CD85F8: PopAdLdVar
  loc_CD85F9: LitI4 1
  loc_CD85FE: FLdPr Me
  loc_CD8601: MemLdStr global_104
  loc_CD8604: AryLock
  loc_CD8607: Ary1LdPr
  loc_CD8608: MemLdRfVar from_stack_1.global_88
  loc_CD860B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8610: AryUnlock
  loc_CD8613: FFreeAd var_B4 = ""
  loc_CD861A: FFreeVar var_CC = ""
  loc_CD8621: FLdRfVar var_184
  loc_CD8624: LitVarStr var_A0, "FilaDifu"
  loc_CD8629: PopAdLdVar
  loc_CD862A: FLdRfVar var_E4
  loc_CD862D: FLdRfVar var_B4
  loc_CD8630: FLdPr var_B8
  loc_CD8633: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8638: FLdPr var_B4
  loc_CD863B:  = Me.Fields
  loc_CD8640: FLdPr var_E4
  loc_CD8643: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8648: LitI2_Byte 0
  loc_CD864A: LitVar_Missing var_E0
  loc_CD864D: LitI2_Byte 0
  loc_CD864F: FLdZeroAd var_184
  loc_CD8652: CVarAd
  loc_CD8656: PopAdLdVar
  loc_CD8657: LitI4 1
  loc_CD865C: FLdPr Me
  loc_CD865F: MemLdStr global_104
  loc_CD8662: AryLock
  loc_CD8665: Ary1LdPr
  loc_CD8666: MemLdRfVar from_stack_1.global_92
  loc_CD8669: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD866E: AryUnlock
  loc_CD8671: FFreeAd var_B4 = ""
  loc_CD8678: FFreeVar var_CC = ""
  loc_CD867F: FLdRfVar var_184
  loc_CD8682: LitVarStr var_A0, "SeccDifu"
  loc_CD8687: PopAdLdVar
  loc_CD8688: FLdRfVar var_E4
  loc_CD868B: FLdRfVar var_B4
  loc_CD868E: FLdPr var_B8
  loc_CD8691: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8696: FLdPr var_B4
  loc_CD8699:  = Me.Fields
  loc_CD869E: FLdPr var_E4
  loc_CD86A1: from_stack_2 = Me.Item(from_stack_1)
  loc_CD86A6: LitI2_Byte 0
  loc_CD86A8: LitVar_Missing var_E0
  loc_CD86AB: LitI2_Byte 0
  loc_CD86AD: FLdZeroAd var_184
  loc_CD86B0: CVarAd
  loc_CD86B4: PopAdLdVar
  loc_CD86B5: LitI4 1
  loc_CD86BA: FLdPr Me
  loc_CD86BD: MemLdStr global_104
  loc_CD86C0: AryLock
  loc_CD86C3: Ary1LdPr
  loc_CD86C4: MemLdRfVar from_stack_1.global_96
  loc_CD86C7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD86CC: AryUnlock
  loc_CD86CF: FFreeAd var_B4 = ""
  loc_CD86D6: FFreeVar var_CC = ""
  loc_CD86DD: FLdRfVar var_CC
  loc_CD86E0: Call Proc_278_27_ACE8D0()
  loc_CD86E5: LitI2_Byte 0
  loc_CD86E7: LitVar_Missing var_E0
  loc_CD86EA: LitI2_Byte 0
  loc_CD86EC: FLdVar var_CC
  loc_CD86F0: LitI4 1
  loc_CD86F5: FLdPr Me
  loc_CD86F8: MemLdStr global_104
  loc_CD86FB: AryLock
  loc_CD86FE: Ary1LdPr
  loc_CD86FF: MemLdRfVar from_stack_1.global_4
  loc_CD8702: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8707: AryUnlock
  loc_CD870A: FFreeVar var_CC = ""
  loc_CD8711: Branch loc_CD8C5A
  loc_CD8714: FLdUI1
  loc_CD8718: LitI2_Byte 5
  loc_CD871A: CUI1I2
  loc_CD871C: EqI2
  loc_CD871D: BranchF loc_CD8757
  loc_CD8720: FLdRfVar var_CC
  loc_CD8723: Call Proc_278_27_ACE8D0()
  loc_CD8728: LitI2_Byte 0
  loc_CD872A: LitVar_Missing var_E0
  loc_CD872D: LitI2_Byte 0
  loc_CD872F: FLdVar var_CC
  loc_CD8733: LitI4 1
  loc_CD8738: FLdPr Me
  loc_CD873B: MemLdStr global_104
  loc_CD873E: AryLock
  loc_CD8741: Ary1LdPr
  loc_CD8742: MemLdRfVar from_stack_1.global_4
  loc_CD8745: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD874A: AryUnlock
  loc_CD874D: FFreeVar var_CC = ""
  loc_CD8754: Branch loc_CD8C5A
  loc_CD8757: FLdUI1
  loc_CD875B: LitI2_Byte 6
  loc_CD875D: CUI1I2
  loc_CD875F: EqI2
  loc_CD8760: BranchF loc_CD89DA
  loc_CD8763: FLdRfVar var_184
  loc_CD8766: LitVarStr var_A0, "DetaCall"
  loc_CD876B: PopAdLdVar
  loc_CD876C: FLdRfVar var_E4
  loc_CD876F: FLdRfVar var_B4
  loc_CD8772: FLdPr var_B8
  loc_CD8775: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD877A: FLdPr var_B4
  loc_CD877D:  = Me.Fields
  loc_CD8782: FLdPr var_E4
  loc_CD8785: from_stack_2 = Me.Item(from_stack_1)
  loc_CD878A: LitI2_Byte 0
  loc_CD878C: LitVar_Missing var_E0
  loc_CD878F: LitI2_Byte 0
  loc_CD8791: FLdZeroAd var_184
  loc_CD8794: CVarAd
  loc_CD8798: PopAdLdVar
  loc_CD8799: LitI4 1
  loc_CD879E: FLdPr Me
  loc_CD87A1: MemLdStr global_104
  loc_CD87A4: AryLock
  loc_CD87A7: Ary1LdPr
  loc_CD87A8: MemLdRfVar from_stack_1.global_44
  loc_CD87AB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD87B0: AryUnlock
  loc_CD87B3: FFreeAd var_B4 = ""
  loc_CD87BA: FFreeVar var_CC = ""
  loc_CD87C1: FLdRfVar var_184
  loc_CD87C4: LitVarStr var_A0, "DetaLoca"
  loc_CD87C9: PopAdLdVar
  loc_CD87CA: FLdRfVar var_E4
  loc_CD87CD: FLdRfVar var_B4
  loc_CD87D0: FLdPr var_B8
  loc_CD87D3: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD87D8: FLdPr var_B4
  loc_CD87DB:  = Me.Fields
  loc_CD87E0: FLdPr var_E4
  loc_CD87E3: from_stack_2 = Me.Item(from_stack_1)
  loc_CD87E8: LitI2_Byte 0
  loc_CD87EA: LitVar_Missing var_E0
  loc_CD87ED: LitI2_Byte 0
  loc_CD87EF: FLdZeroAd var_184
  loc_CD87F2: CVarAd
  loc_CD87F6: PopAdLdVar
  loc_CD87F7: LitI4 1
  loc_CD87FC: FLdPr Me
  loc_CD87FF: MemLdStr global_104
  loc_CD8802: AryLock
  loc_CD8805: Ary1LdPr
  loc_CD8806: MemLdRfVar from_stack_1.global_68
  loc_CD8809: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD880E: AryUnlock
  loc_CD8811: FFreeAd var_B4 = ""
  loc_CD8818: FFreeVar var_CC = ""
  loc_CD881F: FLdRfVar var_184
  loc_CD8822: LitVarStr var_A0, "CodiPost"
  loc_CD8827: PopAdLdVar
  loc_CD8828: FLdRfVar var_E4
  loc_CD882B: FLdRfVar var_B4
  loc_CD882E: FLdPr var_B8
  loc_CD8831: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8836: FLdPr var_B4
  loc_CD8839:  = Me.Fields
  loc_CD883E: FLdPr var_E4
  loc_CD8841: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8846: LitI2_Byte 0
  loc_CD8848: LitVar_Missing var_E0
  loc_CD884B: LitI2_Byte 0
  loc_CD884D: FLdZeroAd var_184
  loc_CD8850: CVarAd
  loc_CD8854: PopAdLdVar
  loc_CD8855: LitI4 1
  loc_CD885A: FLdPr Me
  loc_CD885D: MemLdStr global_104
  loc_CD8860: AryLock
  loc_CD8863: Ary1LdPr
  loc_CD8864: MemLdRfVar from_stack_1.global_72
  loc_CD8867: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD886C: AryUnlock
  loc_CD886F: FFreeAd var_B4 = ""
  loc_CD8876: FFreeVar var_CC = ""
  loc_CD887D: FLdRfVar var_CC
  loc_CD8880: FLdRfVar var_184
  loc_CD8883: LitVarStr var_A0, "NucaCome"
  loc_CD8888: PopAdLdVar
  loc_CD8889: FLdRfVar var_E4
  loc_CD888C: FLdRfVar var_B4
  loc_CD888F: FLdPr var_B8
  loc_CD8892: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8897: FLdPr var_B4
  loc_CD889A:  = Me.Fields
  loc_CD889F: FLdPr var_E4
  loc_CD88A2: from_stack_2 = Me.Item(from_stack_1)
  loc_CD88A7: FLdPr var_184
  loc_CD88AA:  = Me.Value
  loc_CD88AF: FLdRfVar var_194
  loc_CD88B2: LitVarStr var_180, "NucaCome"
  loc_CD88B7: PopAdLdVar
  loc_CD88B8: FLdRfVar var_190
  loc_CD88BB: FLdRfVar var_18C
  loc_CD88BE: FLdPr var_B8
  loc_CD88C1: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD88C6: FLdPr var_18C
  loc_CD88C9:  = Me.Fields
  loc_CD88CE: FLdPr var_190
  loc_CD88D1: from_stack_2 = Me.Item(from_stack_1)
  loc_CD88D6: FLdZeroAd var_194
  loc_CD88D9: CVarAd
  loc_CD88DD: LitVarStr var_1A4, vbNullString
  loc_CD88E2: FStVarCopyObj var_114
  loc_CD88E5: FLdRfVar var_114
  loc_CD88E8: FLdRfVar var_CC
  loc_CD88EB: LitVarStr var_B0, vbNullString
  loc_CD88F0: HardType
  loc_CD88F1: EqVar var_E0
  loc_CD88F5: FStVar var_104
  loc_CD88F9: FLdRfVar var_104
  loc_CD88FC: FLdRfVar var_134
  loc_CD88FF: ImpAdCallFPR4  = IIf(, , )
  loc_CD8904: LitI2_Byte 0
  loc_CD8906: LitVar_Missing var_1C4
  loc_CD8909: LitI2_Byte 0
  loc_CD890B: FLdVar var_134
  loc_CD890F: LitI4 1
  loc_CD8914: FLdPr Me
  loc_CD8917: MemLdStr global_104
  loc_CD891A: AryLock
  loc_CD891D: Ary1LdPr
  loc_CD891E: MemLdRfVar from_stack_1.global_76
  loc_CD8921: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8926: AryUnlock
  loc_CD8929: FFreeAd var_B4 = "": var_E4 = "": var_184 = "": var_18C = ""
  loc_CD8936: FFreeVar var_CC = "": var_104 = "": var_114 = "": var_124 = "": var_134 = ""
  loc_CD8945: FLdRfVar var_184
  loc_CD8948: LitVarStr var_A0, "UbicCome"
  loc_CD894D: PopAdLdVar
  loc_CD894E: FLdRfVar var_E4
  loc_CD8951: FLdRfVar var_B4
  loc_CD8954: FLdPr var_B8
  loc_CD8957: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD895C: FLdPr var_B4
  loc_CD895F:  = Me.Fields
  loc_CD8964: FLdPr var_E4
  loc_CD8967: from_stack_2 = Me.Item(from_stack_1)
  loc_CD896C: LitI2_Byte 0
  loc_CD896E: LitVar_Missing var_E0
  loc_CD8971: LitI2_Byte 0
  loc_CD8973: FLdZeroAd var_184
  loc_CD8976: CVarAd
  loc_CD897A: PopAdLdVar
  loc_CD897B: LitI4 1
  loc_CD8980: FLdPr Me
  loc_CD8983: MemLdStr global_104
  loc_CD8986: AryLock
  loc_CD8989: Ary1LdPr
  loc_CD898A: MemLdRfVar from_stack_1.global_80
  loc_CD898D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8992: AryUnlock
  loc_CD8995: FFreeAd var_B4 = ""
  loc_CD899C: FFreeVar var_CC = ""
  loc_CD89A3: FLdRfVar var_CC
  loc_CD89A6: Call Proc_278_27_ACE8D0()
  loc_CD89AB: LitI2_Byte 0
  loc_CD89AD: LitVar_Missing var_E0
  loc_CD89B0: LitI2_Byte 0
  loc_CD89B2: FLdVar var_CC
  loc_CD89B6: LitI4 1
  loc_CD89BB: FLdPr Me
  loc_CD89BE: MemLdStr global_104
  loc_CD89C1: AryLock
  loc_CD89C4: Ary1LdPr
  loc_CD89C5: MemLdRfVar from_stack_1.global_4
  loc_CD89C8: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD89CD: AryUnlock
  loc_CD89D0: FFreeVar var_CC = ""
  loc_CD89D7: Branch loc_CD8C5A
  loc_CD89DA: FLdUI1
  loc_CD89DE: LitI2_Byte 7
  loc_CD89E0: CUI1I2
  loc_CD89E2: EqI2
  loc_CD89E3: BranchF loc_CD8C5A
  loc_CD89E6: FLdRfVar var_184
  loc_CD89E9: LitVarStr var_A0, "DetaCall"
  loc_CD89EE: PopAdLdVar
  loc_CD89EF: FLdRfVar var_E4
  loc_CD89F2: FLdRfVar var_B4
  loc_CD89F5: FLdPr var_B8
  loc_CD89F8: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD89FD: FLdPr var_B4
  loc_CD8A00:  = Me.Fields
  loc_CD8A05: FLdPr var_E4
  loc_CD8A08: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8A0D: LitI2_Byte 0
  loc_CD8A0F: LitVar_Missing var_E0
  loc_CD8A12: LitI2_Byte 0
  loc_CD8A14: FLdZeroAd var_184
  loc_CD8A17: CVarAd
  loc_CD8A1B: PopAdLdVar
  loc_CD8A1C: LitI4 1
  loc_CD8A21: FLdPr Me
  loc_CD8A24: MemLdStr global_104
  loc_CD8A27: AryLock
  loc_CD8A2A: Ary1LdPr
  loc_CD8A2B: MemLdRfVar from_stack_1.global_44
  loc_CD8A2E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8A33: AryUnlock
  loc_CD8A36: FFreeAd var_B4 = ""
  loc_CD8A3D: FFreeVar var_CC = ""
  loc_CD8A44: FLdRfVar var_184
  loc_CD8A47: LitVarStr var_A0, "DetaLoca"
  loc_CD8A4C: PopAdLdVar
  loc_CD8A4D: FLdRfVar var_E4
  loc_CD8A50: FLdRfVar var_B4
  loc_CD8A53: FLdPr var_B8
  loc_CD8A56: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8A5B: FLdPr var_B4
  loc_CD8A5E:  = Me.Fields
  loc_CD8A63: FLdPr var_E4
  loc_CD8A66: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8A6B: LitI2_Byte 0
  loc_CD8A6D: LitVar_Missing var_E0
  loc_CD8A70: LitI2_Byte 0
  loc_CD8A72: FLdZeroAd var_184
  loc_CD8A75: CVarAd
  loc_CD8A79: PopAdLdVar
  loc_CD8A7A: LitI4 1
  loc_CD8A7F: FLdPr Me
  loc_CD8A82: MemLdStr global_104
  loc_CD8A85: AryLock
  loc_CD8A88: Ary1LdPr
  loc_CD8A89: MemLdRfVar from_stack_1.global_68
  loc_CD8A8C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8A91: AryUnlock
  loc_CD8A94: FFreeAd var_B4 = ""
  loc_CD8A9B: FFreeVar var_CC = ""
  loc_CD8AA2: FLdRfVar var_184
  loc_CD8AA5: LitVarStr var_A0, "CodiPost"
  loc_CD8AAA: PopAdLdVar
  loc_CD8AAB: FLdRfVar var_E4
  loc_CD8AAE: FLdRfVar var_B4
  loc_CD8AB1: FLdPr var_B8
  loc_CD8AB4: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8AB9: FLdPr var_B4
  loc_CD8ABC:  = Me.Fields
  loc_CD8AC1: FLdPr var_E4
  loc_CD8AC4: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8AC9: LitI2_Byte 0
  loc_CD8ACB: LitVar_Missing var_E0
  loc_CD8ACE: LitI2_Byte 0
  loc_CD8AD0: FLdZeroAd var_184
  loc_CD8AD3: CVarAd
  loc_CD8AD7: PopAdLdVar
  loc_CD8AD8: LitI4 1
  loc_CD8ADD: FLdPr Me
  loc_CD8AE0: MemLdStr global_104
  loc_CD8AE3: AryLock
  loc_CD8AE6: Ary1LdPr
  loc_CD8AE7: MemLdRfVar from_stack_1.global_72
  loc_CD8AEA: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8AEF: AryUnlock
  loc_CD8AF2: FFreeAd var_B4 = ""
  loc_CD8AF9: FFreeVar var_CC = ""
  loc_CD8B00: FLdRfVar var_CC
  loc_CD8B03: FLdRfVar var_184
  loc_CD8B06: LitVarStr var_A0, "NucaCome"
  loc_CD8B0B: PopAdLdVar
  loc_CD8B0C: FLdRfVar var_E4
  loc_CD8B0F: FLdRfVar var_B4
  loc_CD8B12: FLdPr var_B8
  loc_CD8B15: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8B1A: FLdPr var_B4
  loc_CD8B1D:  = Me.Fields
  loc_CD8B22: FLdPr var_E4
  loc_CD8B25: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8B2A: FLdPr var_184
  loc_CD8B2D:  = Me.Value
  loc_CD8B32: FLdRfVar var_194
  loc_CD8B35: LitVarStr var_180, "NucaCome"
  loc_CD8B3A: PopAdLdVar
  loc_CD8B3B: FLdRfVar var_190
  loc_CD8B3E: FLdRfVar var_18C
  loc_CD8B41: FLdPr var_B8
  loc_CD8B44: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8B49: FLdPr var_18C
  loc_CD8B4C:  = Me.Fields
  loc_CD8B51: FLdPr var_190
  loc_CD8B54: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8B59: FLdZeroAd var_194
  loc_CD8B5C: CVarAd
  loc_CD8B60: LitVarStr var_1A4, vbNullString
  loc_CD8B65: FStVarCopyObj var_114
  loc_CD8B68: FLdRfVar var_114
  loc_CD8B6B: FLdRfVar var_CC
  loc_CD8B6E: LitVarStr var_B0, vbNullString
  loc_CD8B73: HardType
  loc_CD8B74: EqVar var_E0
  loc_CD8B78: FStVar var_104
  loc_CD8B7C: FLdRfVar var_104
  loc_CD8B7F: FLdRfVar var_134
  loc_CD8B82: ImpAdCallFPR4  = IIf(, , )
  loc_CD8B87: LitI2_Byte 0
  loc_CD8B89: LitVar_Missing var_1C4
  loc_CD8B8C: LitI2_Byte 0
  loc_CD8B8E: FLdVar var_134
  loc_CD8B92: LitI4 1
  loc_CD8B97: FLdPr Me
  loc_CD8B9A: MemLdStr global_104
  loc_CD8B9D: AryLock
  loc_CD8BA0: Ary1LdPr
  loc_CD8BA1: MemLdRfVar from_stack_1.global_76
  loc_CD8BA4: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8BA9: AryUnlock
  loc_CD8BAC: FFreeAd var_B4 = "": var_E4 = "": var_184 = "": var_18C = ""
  loc_CD8BB9: FFreeVar var_CC = "": var_104 = "": var_114 = "": var_124 = "": var_134 = ""
  loc_CD8BC8: FLdRfVar var_184
  loc_CD8BCB: LitVarStr var_A0, "UbicCome"
  loc_CD8BD0: PopAdLdVar
  loc_CD8BD1: FLdRfVar var_E4
  loc_CD8BD4: FLdRfVar var_B4
  loc_CD8BD7: FLdPr var_B8
  loc_CD8BDA: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8BDF: FLdPr var_B4
  loc_CD8BE2:  = Me.Fields
  loc_CD8BE7: FLdPr var_E4
  loc_CD8BEA: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8BEF: LitI2_Byte 0
  loc_CD8BF1: LitVar_Missing var_E0
  loc_CD8BF4: LitI2_Byte 0
  loc_CD8BF6: FLdZeroAd var_184
  loc_CD8BF9: CVarAd
  loc_CD8BFD: PopAdLdVar
  loc_CD8BFE: LitI4 1
  loc_CD8C03: FLdPr Me
  loc_CD8C06: MemLdStr global_104
  loc_CD8C09: AryLock
  loc_CD8C0C: Ary1LdPr
  loc_CD8C0D: MemLdRfVar from_stack_1.global_80
  loc_CD8C10: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8C15: AryUnlock
  loc_CD8C18: FFreeAd var_B4 = ""
  loc_CD8C1F: FFreeVar var_CC = ""
  loc_CD8C26: FLdRfVar var_CC
  loc_CD8C29: Call Proc_278_27_ACE8D0()
  loc_CD8C2E: LitI2_Byte 0
  loc_CD8C30: LitVar_Missing var_E0
  loc_CD8C33: LitI2_Byte 0
  loc_CD8C35: FLdVar var_CC
  loc_CD8C39: LitI4 1
  loc_CD8C3E: FLdPr Me
  loc_CD8C41: MemLdStr global_104
  loc_CD8C44: AryLock
  loc_CD8C47: Ary1LdPr
  loc_CD8C48: MemLdRfVar from_stack_1.global_4
  loc_CD8C4B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8C50: AryUnlock
  loc_CD8C53: FFreeVar var_CC = ""
  loc_CD8C5A: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_ctacteapre; CREATE TEMPORARY TABLE tmp_ctacteapre"
  loc_CD8C5D: LitStr " SELECT CodiOfic, CuenCtct, NumeApre, SUM(SaldCtct) as SaldCtct, SUM(RecaCtct) as RecaCtct "
  loc_CD8C60: ConcatStr
  loc_CD8C61: FStStrNoPop var_D0
  loc_CD8C64: LitStr " FROM tmp_ctacte WHERE SaldCtct > 0 AND NumeApre <> 0 "
  loc_CD8C67: ConcatStr
  loc_CD8C68: FStStrNoPop var_E8
  loc_CD8C6B: LitStr " GROUP BY tmp_ctacte.CodiOfic, tmp_ctacte.CuenCtct, tmp_ctacte.NumeApre"
  loc_CD8C6E: ConcatStr
  loc_CD8C6F: FStStrNoPop var_EC
  loc_CD8C72: FLdPr var_B8
  loc_CD8C75: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD8C7A: FFreeStr var_D0 = "": var_E8 = ""
  loc_CD8C83: LitStr " SELECT a.NumeApre,a.AutoApre,a.SecrInap,a.JuzgInap,a.CodiReca,a.CodiOfju,a.CodiOfic,a.FealApre,a.EstaApre, IFNULL(tmp_ctacteapre.SaldCtct,0) CapiApre, IFNULL(tmp_ctacteapre.RecaCtct,0) RecaApre, IFNULL(tmp_ctacteapre.SaldCtct,0) + IFNULL(tmp_ctacteapre.RecaCtct,0) TotaApre  "
  loc_CD8C86: LitStr " ,IF(a.EstaApre IN (1,8,10,11,12), (SELECT fnGastos(a.NumeApre,a.CodiInju,i.FealInap,IFNULL(tmp_ctacteapre.SaldCtct,0),IFNULL(tmp_ctacteapre.RecaCtct,0),a.CodiReca,a.CodiOfju) ),0 ) AS Gastos "
  loc_CD8C89: ConcatStr
  loc_CD8C8A: FStStrNoPop var_D0
  loc_CD8C8D: LitStr " FROM recaudacion.apremio a "
  loc_CD8C90: ConcatStr
  loc_CD8C91: FStStrNoPop var_E8
  loc_CD8C94: LitStr " INNER JOIN recaudacion.instapre i  ON i.NumeApre = a.NumeApre AND i.CodiInju = a.CodiInju "
  loc_CD8C97: ConcatStr
  loc_CD8C98: FStStrNoPop var_EC
  loc_CD8C9B: LitStr " LEFT JOIN tmp_ctacteapre ON tmp_ctacteapre.CodiOfic = a.CodiOfic "
  loc_CD8C9E: ConcatStr
  loc_CD8C9F: FStStrNoPop var_F0
  loc_CD8CA2: LitStr " AND tmp_ctacteapre.CuenCtct = a.CuenCtct "
  loc_CD8CA5: ConcatStr
  loc_CD8CA6: FStStrNoPop var_F4
  loc_CD8CA9: LitStr " AND tmp_ctacteapre.NumeApre = a.NumeApre "
  loc_CD8CAC: ConcatStr
  loc_CD8CAD: FStStrNoPop var_138
  loc_CD8CB0: LitStr " WHERE a.CodiOfic = "
  loc_CD8CB3: ConcatStr
  loc_CD8CB4: FStStrNoPop var_13C
  loc_CD8CB7: ImpAdLdUI1
  loc_CD8CBB: CStrI2
  loc_CD8CBD: FStStrNoPop var_140
  loc_CD8CC0: ConcatStr
  loc_CD8CC1: FStStrNoPop var_144
  loc_CD8CC4: LitStr " AND a.CuenCtct = '"
  loc_CD8CC7: ConcatStr
  loc_CD8CC8: FStStrNoPop var_14C
  loc_CD8CCB: FLdRfVar var_148
  loc_CD8CCE: FLdPr Me
  loc_CD8CD1: VCallAd Control_ID_CuenCtCtTxt
  loc_CD8CD4: FStAdFunc var_B4
  loc_CD8CD7: FLdPr var_B4
  loc_CD8CDA:  = Me.Text
  loc_CD8CDF: ILdRf var_148
  loc_CD8CE2: ConcatStr
  loc_CD8CE3: FStStrNoPop var_150
  loc_CD8CE6: LitStr "' AND EstaApre IN (1,8,11,12)"
  loc_CD8CE9: ConcatStr
  loc_CD8CEA: FStStrNoPop var_154
  loc_CD8CED: FLdPr var_B8
  loc_CD8CF0: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD8CF5: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_14C = "": var_148 = "": var_150 = ""
  loc_CD8D12: FFree1Ad var_B4
  loc_CD8D15: FLdRfVar var_168
  loc_CD8D18: FLdPr var_B8
  loc_CD8D1B: from_stack_1 = clsctacte.RecordCount
  loc_CD8D20: ILdRf var_168
  loc_CD8D23: LitI4 0
  loc_CD8D28: GtI4
  loc_CD8D29: BranchF loc_CD8DA6
  loc_CD8D2C: FLdPr var_B8
  loc_CD8D2F: Call clsctacte.MoveFirst()
  loc_CD8D34: FLdRfVar var_BA
  loc_CD8D37: FLdPr var_B8
  loc_CD8D3A: from_stack_1 = clsctacte.EOF
  loc_CD8D3F: FLdI2 var_BA
  loc_CD8D42: NotI4
  loc_CD8D43: BranchF loc_CD8DA6
  loc_CD8D46: FLdRfVar var_184
  loc_CD8D49: LitVarStr var_A0, "Gastos"
  loc_CD8D4E: PopAdLdVar
  loc_CD8D4F: FLdRfVar var_E4
  loc_CD8D52: FLdRfVar var_B4
  loc_CD8D55: FLdPr var_B8
  loc_CD8D58: from_stack_1v = clsctacte.RsFrmGet()
  loc_CD8D5D: FLdPr var_B4
  loc_CD8D60:  = Me.Fields
  loc_CD8D65: FLdPr var_E4
  loc_CD8D68: from_stack_2 = Me.Item(from_stack_1)
  loc_CD8D6D: LitI2_Byte 0
  loc_CD8D6F: FLdPr Me
  loc_CD8D72: MemLdRfVar from_stack_1.global_128
  loc_CD8D75: CVarRef
  loc_CD8D7A: LitI2_Byte &HFF
  loc_CD8D7C: FLdZeroAd var_184
  loc_CD8D7F: CVarAd
  loc_CD8D83: PopAdLdVar
  loc_CD8D84: FLdRfVar var_90
  loc_CD8D87: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8D8C: FFreeAd var_B4 = ""
  loc_CD8D93: FFree1Var var_CC = ""
  loc_CD8D96: LitI2_Byte 1
  loc_CD8D98: PopTmpLdAd2 var_BA
  loc_CD8D9B: FLdPr var_B8
  loc_CD8D9E: Call clsctacte.Move(from_stack_1v)
  loc_CD8DA3: Branch loc_CD8D34
  loc_CD8DA6: LitI2_Byte 0
  loc_CD8DA8: LitVar_Missing var_CC
  loc_CD8DAB: LitI2_Byte &HFF
  loc_CD8DAD: FLdPr Me
  loc_CD8DB0: MemLdStr global_116
  loc_CD8DB3: CR8Str
  loc_CD8DB5: FLdPr Me
  loc_CD8DB8: MemLdStr global_120
  loc_CD8DBB: CR8Str
  loc_CD8DBD: SubR4
  loc_CD8DBE: CVarR8
  loc_CD8DC2: PopAdLdVar
  loc_CD8DC3: FLdPr Me
  loc_CD8DC6: MemLdRfVar from_stack_1.global_116
  loc_CD8DC9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8DCE: FFree1Var var_CC = ""
  loc_CD8DD1: LitI2_Byte 0
  loc_CD8DD3: LitVar_Missing var_CC
  loc_CD8DD6: LitI2_Byte &HFF
  loc_CD8DD8: FLdPr Me
  loc_CD8DDB: MemLdStr global_116
  loc_CD8DDE: CR8Str
  loc_CD8DE0: FLdPr Me
  loc_CD8DE3: MemLdStr global_124
  loc_CD8DE6: CR8Str
  loc_CD8DE8: AddR8
  loc_CD8DE9: FLdPr Me
  loc_CD8DEC: MemLdStr global_128
  loc_CD8DEF: CR8Str
  loc_CD8DF1: AddR8
  loc_CD8DF2: CVarR8
  loc_CD8DF6: PopAdLdVar
  loc_CD8DF7: FLdPr Me
  loc_CD8DFA: MemLdRfVar from_stack_1.global_132
  loc_CD8DFD: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_CD8E02: FFree1Var var_CC = ""
  loc_CD8E05: LitNothing
  loc_CD8E07: FStAd var_B8 
  loc_CD8E0B: FLdPr Me
  loc_CD8E0E: MemLdRfVar from_stack_1.global_84
  loc_CD8E11: NewIfNullAd
  loc_CD8E14: FStAd var_1C8 
  loc_CD8E18: LitStr " SELECT CONCAT('LA PERSONA POSEE EXPEDIENTE: ',' ', replace(Expediente,'-','/'),' ', 'CON CAUSA: ', Causa) Detalle"
  loc_CD8E1B: LitStr " FROM expeinmu WHERE CodiOfic = "
  loc_CD8E1E: ConcatStr
  loc_CD8E1F: FStStrNoPop var_D0
  loc_CD8E22: ImpAdLdUI1
  loc_CD8E26: CStrI2
  loc_CD8E28: FStStrNoPop var_E8
  loc_CD8E2B: ConcatStr
  loc_CD8E2C: FStStrNoPop var_EC
  loc_CD8E2F: LitStr " AND CodiInmu = "
  loc_CD8E32: ConcatStr
  loc_CD8E33: FStStrNoPop var_F4
  loc_CD8E36: FLdRfVar var_F0
  loc_CD8E39: FLdPr Me
  loc_CD8E3C: VCallAd Control_ID_CuenCtCtTxt
  loc_CD8E3F: FStAdFunc var_B4
  loc_CD8E42: FLdPr var_B4
  loc_CD8E45:  = Me.Text
  loc_CD8E4A: ILdRf var_F0
  loc_CD8E4D: ConcatStr
  loc_CD8E4E: FStStrNoPop var_138
  loc_CD8E51: LitStr " AND Afectadeuda = 1 AND BajaFeho IS NULL"
  loc_CD8E54: ConcatStr
  loc_CD8E55: FStStrNoPop var_13C
  loc_CD8E58: FLdPr var_1C8
  loc_CD8E5B: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD8E60: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F0 = "": var_138 = ""
  loc_CD8E71: FFree1Ad var_B4
  loc_CD8E74: LitNothing
  loc_CD8E76: FStAd var_1C8 
  loc_CD8E7A: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_CD8E7D: LitStr " LEFT JOIN  tmp_ctacte ON tmp_ctacte.NumeApre = apremio.NumeApre "
  loc_CD8E80: ConcatStr
  loc_CD8E81: FStStrNoPop var_D0
  loc_CD8E84: LitStr " WHERE apremio.CodiOfic = "
  loc_CD8E87: ConcatStr
  loc_CD8E88: FStStrNoPop var_E8
  loc_CD8E8B: ImpAdLdUI1
  loc_CD8E8F: CStrI2
  loc_CD8E91: FStStrNoPop var_EC
  loc_CD8E94: ConcatStr
  loc_CD8E95: FStStrNoPop var_F0
  loc_CD8E98: LitStr " AND apremio.CuenCtct = '"
  loc_CD8E9B: ConcatStr
  loc_CD8E9C: FStStrNoPop var_138
  loc_CD8E9F: FLdRfVar var_F4
  loc_CD8EA2: FLdPr Me
  loc_CD8EA5: VCallAd Control_ID_CuenCtCtTxt
  loc_CD8EA8: FStAdFunc var_B4
  loc_CD8EAB: FLdPr var_B4
  loc_CD8EAE:  = Me.Text
  loc_CD8EB3: ILdRf var_F4
  loc_CD8EB6: ConcatStr
  loc_CD8EB7: FStStrNoPop var_13C
  loc_CD8EBA: LitStr "' AND EstaApre = 10"
  loc_CD8EBD: ConcatStr
  loc_CD8EBE: FStStrNoPop var_140
  loc_CD8EC1: LitStr " AND tmp_ctacte.CodiOfic IS NULL"
  loc_CD8EC4: ConcatStr
  loc_CD8EC5: FStStrNoPop var_144
  loc_CD8EC8: LitStr " GROUP BY apremio.NumeApre"
  loc_CD8ECB: ConcatStr
  loc_CD8ECC: FStStrNoPop var_148
  loc_CD8ECF: FLdPr Me
  loc_CD8ED2: MemLdRfVar from_stack_1.global_88
  loc_CD8ED5: NewIfNullPr clsctacte
  loc_CD8ED8: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD8EDD: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_138 = "": var_F4 = "": var_13C = "": var_140 = "": var_144 = ""
  loc_CD8EF4: FFree1Ad var_B4
  loc_CD8EF7: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_CD8EFA: LitStr " WHERE apremio.CodiOfic = "
  loc_CD8EFD: ConcatStr
  loc_CD8EFE: FStStrNoPop var_D0
  loc_CD8F01: ImpAdLdUI1
  loc_CD8F05: CStrI2
  loc_CD8F07: FStStrNoPop var_E8
  loc_CD8F0A: ConcatStr
  loc_CD8F0B: FStStrNoPop var_EC
  loc_CD8F0E: LitStr " AND apremio.CuenCtct = '"
  loc_CD8F11: ConcatStr
  loc_CD8F12: FStStrNoPop var_F4
  loc_CD8F15: FLdRfVar var_F0
  loc_CD8F18: FLdPr Me
  loc_CD8F1B: VCallAd Control_ID_CuenCtCtTxt
  loc_CD8F1E: FStAdFunc var_B4
  loc_CD8F21: FLdPr var_B4
  loc_CD8F24:  = Me.Text
  loc_CD8F29: ILdRf var_F0
  loc_CD8F2C: ConcatStr
  loc_CD8F2D: FStStrNoPop var_138
  loc_CD8F30: LitStr "' AND EstaApre = 11"
  loc_CD8F33: ConcatStr
  loc_CD8F34: FStStrNoPop var_13C
  loc_CD8F37: LitStr " GROUP BY apremio.NumeApre"
  loc_CD8F3A: ConcatStr
  loc_CD8F3B: FStStrNoPop var_140
  loc_CD8F3E: FLdPr Me
  loc_CD8F41: MemLdRfVar from_stack_1.global_92
  loc_CD8F44: NewIfNullPr clsctacte
  loc_CD8F47: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD8F4C: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F0 = "": var_138 = "": var_13C = ""
  loc_CD8F5F: FFree1Ad var_B4
  loc_CD8F62: LitStr " SELECT apremio.NumeApre FROM apremio "
  loc_CD8F65: LitStr " WHERE apremio.CodiOfic = "
  loc_CD8F68: ConcatStr
  loc_CD8F69: FStStrNoPop var_D0
  loc_CD8F6C: ImpAdLdUI1
  loc_CD8F70: CStrI2
  loc_CD8F72: FStStrNoPop var_E8
  loc_CD8F75: ConcatStr
  loc_CD8F76: FStStrNoPop var_EC
  loc_CD8F79: LitStr " AND apremio.CuenCtct = '"
  loc_CD8F7C: ConcatStr
  loc_CD8F7D: FStStrNoPop var_F4
  loc_CD8F80: FLdRfVar var_F0
  loc_CD8F83: FLdPr Me
  loc_CD8F86: VCallAd Control_ID_CuenCtCtTxt
  loc_CD8F89: FStAdFunc var_B4
  loc_CD8F8C: FLdPr var_B4
  loc_CD8F8F:  = Me.Text
  loc_CD8F94: ILdRf var_F0
  loc_CD8F97: ConcatStr
  loc_CD8F98: FStStrNoPop var_138
  loc_CD8F9B: LitStr "' AND EstaApre = 12"
  loc_CD8F9E: ConcatStr
  loc_CD8F9F: FStStrNoPop var_13C
  loc_CD8FA2: LitStr " GROUP BY apremio.NumeApre"
  loc_CD8FA5: ConcatStr
  loc_CD8FA6: FStStrNoPop var_140
  loc_CD8FA9: FLdPr Me
  loc_CD8FAC: MemLdRfVar from_stack_1.global_96
  loc_CD8FAF: NewIfNullPr clsctacte
  loc_CD8FB2: Call clsctacte.RedefineRS(from_stack_1v)
  loc_CD8FB7: FFreeStr var_D0 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F0 = "": var_138 = "": var_13C = ""
  loc_CD8FCA: FFree1Ad var_B4
  loc_CD8FCD: LitI2_Byte &HFF
  loc_CD8FCF: FLdPr Me
  loc_CD8FD2: MemStI2 bGenerado
  loc_CD8FD5: LitI4 0
  loc_CD8FDA: CI2I4
  loc_CD8FDB: FLdPr Me
  loc_CD8FDE: Me.MousePointer = from_stack_1
  loc_CD8FE3: LitVarStr var_A0, vbNullString
  loc_CD8FE8: PopAdLdVar
  loc_CD8FE9: FLdPr Me
  loc_CD8FEC: VCallAd Control_ID_statusBar
  loc_CD8FEF: FStAdFunc var_B4
  loc_CD8FF2: FLdPr var_B4
  loc_CD8FF5: LateIdSt
  loc_CD8FFA: FFree1Ad var_B4
  loc_CD8FFD: ExitProcHresult
  loc_CD8FFE: FStStr arg_6458
End Sub

Public Sub GeneraHTML() 'B779A0
  'Data Table: 4F3BDC
  loc_B774CC: FLdRfVar var_8C
  loc_B774CF: LitI2_Byte 0
  loc_B774D1: LitI2_Byte &HFF
  loc_B774D3: ImpAdLdI4 MemVar_D93C84
  loc_B774D6: FLdPr Me
  loc_B774D9: MemLdRfVar from_stack_1.global_56
  loc_B774DC: NewIfNullPr IFileSystem3
  loc_B774DF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B774E4: ILdRf var_8C
  loc_B774E7: FLdPr Me
  loc_B774EA: MemStVarAd
  loc_B774EE: FFree1Ad var_8C
  loc_B774F1: LitI2_Byte &HFF
  loc_B774F3: ImpAdStI2 MemVar_D93C8A
  loc_B774F6: Call Proc_278_28_B6DDB0()
  loc_B774FB: Call Proc_278_29_C6C8FC()
  loc_B77500: LitI2_Byte 1
  loc_B77502: FLdPr Me
  loc_B77505: MemLdRfVar from_stack_1.global_110
  loc_B77508: LitI4 1
  loc_B7750D: FLdPr Me
  loc_B77510: MemLdStr global_104
  loc_B77513: Ary1LdPr
  loc_B77514: MemLdStr global_136
  loc_B77517: LitI2_Byte 1
  loc_B77519: FnUBound
  loc_B7751B: CI2I4
  loc_B7751C: ForI2 var_90
  loc_B77522: LitI2_Byte 1
  loc_B77524: FLdPr Me
  loc_B77527: MemLdRfVar from_stack_1.global_112
  loc_B7752A: FLdPr Me
  loc_B7752D: MemLdI2 global_110
  loc_B77530: CI4UI1
  loc_B77531: LitI4 1
  loc_B77536: FLdPr Me
  loc_B77539: MemLdStr global_104
  loc_B7753C: Ary1LdPr
  loc_B7753D: MemLdStr global_136
  loc_B77540: Ary1LdPr
  loc_B77541: MemLdStr global_4
  loc_B77544: LitI2_Byte 1
  loc_B77546: FnUBound
  loc_B77548: CI2I4
  loc_B77549: ForI2 var_94
  loc_B7754F: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B77554: PopAdLdVar
  loc_B77555: FLdPr Me
  loc_B77558: MemLdRfVar from_stack_1.global_60
  loc_B7755B: LdPrVar
  loc_B7755D: LateMemCall
  loc_B77563: FLdPr Me
  loc_B77566: MemLdI2 global_112
  loc_B77569: CI4UI1
  loc_B7756A: FLdPr Me
  loc_B7756D: MemLdI2 global_110
  loc_B77570: CI4UI1
  loc_B77571: LitI4 1
  loc_B77576: FLdPr Me
  loc_B77579: MemLdStr global_104
  loc_B7757C: AryLock
  loc_B7757F: Ary1LdPr
  loc_B77580: MemLdStr global_136
  loc_B77583: AryLock
  loc_B77586: Ary1LdPr
  loc_B77587: MemLdStr global_4
  loc_B7758A: AryLock
  loc_B7758D: Ary1LdRf
  loc_B7758E: FStR4 var_C4
  loc_B77591: FMemLdR4 var_C4(4)
  loc_B77596: CI2Str
  loc_B77598: LitI2 2099
  loc_B7759B: EqI2
  loc_B7759C: BranchF loc_B775CD
  loc_B7759F: LitStr vbNullString
  loc_B775A2: LitI2_Byte 0
  loc_B775A4: LitI2_Byte 0
  loc_B775A6: LitI2_Byte 0
  loc_B775A8: LitStr "center"
  loc_B775AB: FMemLdR4 var_C4(0)
  loc_B775B0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B775B5: CVarStr var_D4
  loc_B775B8: PopAdLdVar
  loc_B775B9: FLdPr Me
  loc_B775BC: MemLdRfVar from_stack_1.global_60
  loc_B775BF: LdPrVar
  loc_B775C1: LateMemCall
  loc_B775C7: FFree1Var var_D4 = ""
  loc_B775CA: Branch loc_B7760F
  loc_B775CD: LitStr vbNullString
  loc_B775D0: LitI2_Byte 0
  loc_B775D2: LitI2_Byte 0
  loc_B775D4: LitI2_Byte 0
  loc_B775D6: LitStr "center"
  loc_B775D9: FMemLdR4 var_C4(0)
  loc_B775DE: LitStr "/"
  loc_B775E1: ConcatStr
  loc_B775E2: FStStrNoPop var_D8
  loc_B775E5: FMemLdR4 var_C4(4)
  loc_B775EA: ConcatStr
  loc_B775EB: FStStrNoPop var_DC
  loc_B775EE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B775F3: CVarStr var_D4
  loc_B775F6: PopAdLdVar
  loc_B775F7: FLdPr Me
  loc_B775FA: MemLdRfVar from_stack_1.global_60
  loc_B775FD: LdPrVar
  loc_B775FF: LateMemCall
  loc_B77605: FFreeStr var_D8 = ""
  loc_B7760C: FFree1Var var_D4 = ""
  loc_B7760F: LitStr vbNullString
  loc_B77612: LitI2_Byte 0
  loc_B77614: LitI2_Byte 0
  loc_B77616: LitI2_Byte 0
  loc_B77618: LitStr "right"
  loc_B7761B: FMemLdR4 var_C4(12)
  loc_B77620: LitStr "-"
  loc_B77623: ConcatStr
  loc_B77624: FStStrNoPop var_D8
  loc_B77627: FMemLdR4 var_C4(8)
  loc_B7762C: ConcatStr
  loc_B7762D: FStStrNoPop var_DC
  loc_B77630: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B77635: CVarStr var_D4
  loc_B77638: PopAdLdVar
  loc_B77639: FLdPr Me
  loc_B7763C: MemLdRfVar from_stack_1.global_60
  loc_B7763F: LdPrVar
  loc_B77641: LateMemCall
  loc_B77647: FFreeStr var_D8 = ""
  loc_B7764E: FFree1Var var_D4 = ""
  loc_B77651: LitStr vbNullString
  loc_B77654: LitI2_Byte 0
  loc_B77656: LitI2_Byte 0
  loc_B77658: LitI2_Byte 0
  loc_B7765A: LitStr "center"
  loc_B7765D: FMemLdR4 var_C4(16)
  loc_B77662: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B77667: CVarStr var_D4
  loc_B7766A: PopAdLdVar
  loc_B7766B: FLdPr Me
  loc_B7766E: MemLdRfVar from_stack_1.global_60
  loc_B77671: LdPrVar
  loc_B77673: LateMemCall
  loc_B77679: FFree1Var var_D4 = ""
  loc_B7767C: LitStr vbNullString
  loc_B7767F: LitI2_Byte 0
  loc_B77681: LitI2_Byte 0
  loc_B77683: LitI2_Byte 0
  loc_B77685: LitStr "right"
  loc_B77688: FMemLdR4 var_C4(20)
  loc_B7768D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B77692: CVarStr var_D4
  loc_B77695: PopAdLdVar
  loc_B77696: FLdPr Me
  loc_B77699: MemLdRfVar from_stack_1.global_60
  loc_B7769C: LdPrVar
  loc_B7769E: LateMemCall
  loc_B776A4: FFree1Var var_D4 = ""
  loc_B776A7: LitStr vbNullString
  loc_B776AA: LitI2_Byte 0
  loc_B776AC: LitI2_Byte 0
  loc_B776AE: LitI2_Byte 0
  loc_B776B0: LitStr "right"
  loc_B776B3: FMemLdR4 var_C4(24)
  loc_B776B8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B776BD: CVarStr var_D4
  loc_B776C0: PopAdLdVar
  loc_B776C1: FLdPr Me
  loc_B776C4: MemLdRfVar from_stack_1.global_60
  loc_B776C7: LdPrVar
  loc_B776C9: LateMemCall
  loc_B776CF: FFree1Var var_D4 = ""
  loc_B776D2: LitStr vbNullString
  loc_B776D5: LitI2_Byte 0
  loc_B776D7: LitI2_Byte 0
  loc_B776D9: LitI2_Byte 0
  loc_B776DB: LitStr "right"
  loc_B776DE: FMemLdR4 var_C4(28)
  loc_B776E3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B776E8: CVarStr var_D4
  loc_B776EB: PopAdLdVar
  loc_B776EC: FLdPr Me
  loc_B776EF: MemLdRfVar from_stack_1.global_60
  loc_B776F2: LdPrVar
  loc_B776F4: LateMemCall
  loc_B776FA: FFree1Var var_D4 = ""
  loc_B776FD: LitStr vbNullString
  loc_B77700: LitI2_Byte 0
  loc_B77702: LitI2_Byte 0
  loc_B77704: LitI2_Byte 0
  loc_B77706: LitStr "left"
  loc_B77709: FMemLdR4 var_C4(32)
  loc_B7770E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B77713: CVarStr var_D4
  loc_B77716: PopAdLdVar
  loc_B77717: FLdPr Me
  loc_B7771A: MemLdRfVar from_stack_1.global_60
  loc_B7771D: LdPrVar
  loc_B7771F: LateMemCall
  loc_B77725: FFree1Var var_D4 = ""
  loc_B77728: LitStr vbNullString
  loc_B7772B: LitI2_Byte 0
  loc_B7772D: LitI2_Byte 0
  loc_B7772F: LitI2_Byte 0
  loc_B77731: LitStr "left"
  loc_B77734: FMemLdR4 var_C4(36)
  loc_B77739: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B7773E: CVarStr var_D4
  loc_B77741: PopAdLdVar
  loc_B77742: FLdPr Me
  loc_B77745: MemLdRfVar from_stack_1.global_60
  loc_B77748: LdPrVar
  loc_B7774A: LateMemCall
  loc_B77750: FFree1Var var_D4 = ""
  loc_B77753: LitStr vbNullString
  loc_B77756: LitI2_Byte 0
  loc_B77758: LitI2_Byte 0
  loc_B7775A: LitI2_Byte 0
  loc_B7775C: LitStr "left"
  loc_B7775F: FMemLdR4 var_C4(40)
  loc_B77764: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B77769: CVarStr var_D4
  loc_B7776C: PopAdLdVar
  loc_B7776D: FLdPr Me
  loc_B77770: MemLdRfVar from_stack_1.global_60
  loc_B77773: LdPrVar
  loc_B77775: LateMemCall
  loc_B7777B: FFree1Var var_D4 = ""
  loc_B7777E: LitStr vbNullString
  loc_B77781: LitI2_Byte 0
  loc_B77783: LitI2_Byte 0
  loc_B77785: LitI2_Byte 0
  loc_B77787: LitStr "right"
  loc_B7778A: FMemLdR4 var_C4(44)
  loc_B7778F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B77794: CVarStr var_D4
  loc_B77797: PopAdLdVar
  loc_B77798: FLdPr Me
  loc_B7779B: MemLdRfVar from_stack_1.global_60
  loc_B7779E: LdPrVar
  loc_B777A0: LateMemCall
  loc_B777A6: FFree1Var var_D4 = ""
  loc_B777A9: LitStr vbNullString
  loc_B777AC: LitI2_Byte 0
  loc_B777AE: LitI2_Byte 0
  loc_B777B0: LitI2_Byte 0
  loc_B777B2: LitStr "right"
  loc_B777B5: FMemLdR4 var_C4(48)
  loc_B777BA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B777BF: CVarStr var_D4
  loc_B777C2: PopAdLdVar
  loc_B777C3: FLdPr Me
  loc_B777C6: MemLdRfVar from_stack_1.global_60
  loc_B777C9: LdPrVar
  loc_B777CB: LateMemCall
  loc_B777D1: FFree1Var var_D4 = ""
  loc_B777D4: LitStr vbNullString
  loc_B777D7: LitI2_Byte 0
  loc_B777D9: LitI2_Byte 0
  loc_B777DB: LitI2_Byte 0
  loc_B777DD: LitStr "right"
  loc_B777E0: FMemLdR4 var_C4(52)
  loc_B777E5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B777EA: CVarStr var_D4
  loc_B777ED: PopAdLdVar
  loc_B777EE: FLdPr Me
  loc_B777F1: MemLdRfVar from_stack_1.global_60
  loc_B777F4: LdPrVar
  loc_B777F6: LateMemCall
  loc_B777FC: FFree1Var var_D4 = ""
  loc_B777FF: LitStr vbNullString
  loc_B77802: LitI2_Byte 0
  loc_B77804: LitI2_Byte 0
  loc_B77806: LitI2_Byte 0
  loc_B77808: LitStr "right"
  loc_B7780B: FMemLdR4 var_C4(56)
  loc_B77810: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B77815: CVarStr var_D4
  loc_B77818: PopAdLdVar
  loc_B77819: FLdPr Me
  loc_B7781C: MemLdRfVar from_stack_1.global_60
  loc_B7781F: LdPrVar
  loc_B77821: LateMemCall
  loc_B77827: FFree1Var var_D4 = ""
  loc_B7782A: LitI4 0
  loc_B7782F: FStR4 var_C4
  loc_B77832: AryUnlock
  loc_B77835: AryUnlock
  loc_B77838: AryUnlock
  loc_B7783B: LitVarStr var_A4, "     </tr>"
  loc_B77840: PopAdLdVar
  loc_B77841: FLdPr Me
  loc_B77844: MemLdRfVar from_stack_1.global_60
  loc_B77847: LdPrVar
  loc_B77849: LateMemCall
  loc_B7784F: FLdPr Me
  loc_B77852: MemLdRfVar from_stack_1.global_112
  loc_B77855: NextI2 var_94, loc_B7754F
  loc_B7785A: FLdPr Me
  loc_B7785D: MemLdI2 global_110
  loc_B77860: CI4UI1
  loc_B77861: LitI4 1
  loc_B77866: FLdPr Me
  loc_B77869: MemLdStr global_104
  loc_B7786C: AryLock
  loc_B7786F: Ary1LdPr
  loc_B77870: MemLdStr global_136
  loc_B77873: AryLock
  loc_B77876: Ary1LdRf
  loc_B77877: FStR4 var_E8
  loc_B7787A: LitVarStr var_A4, " <tr align=""right"">"
  loc_B7787F: PopAdLdVar
  loc_B77880: FLdPr Me
  loc_B77883: MemLdRfVar from_stack_1.global_60
  loc_B77886: LdPrVar
  loc_B77888: LateMemCall
  loc_B7788E: LitStr "     <td colspan=""9"" align=""right"" class=""Encabezado"">Subtotal "
  loc_B77891: FMemLdR4 var_E8(0)
  loc_B77896: ConcatStr
  loc_B77897: FStStrNoPop var_D8
  loc_B7789A: LitStr "</td>"
  loc_B7789D: ConcatStr
  loc_B7789E: CVarStr var_D4
  loc_B778A1: PopAdLdVar
  loc_B778A2: FLdPr Me
  loc_B778A5: MemLdRfVar from_stack_1.global_60
  loc_B778A8: LdPrVar
  loc_B778AA: LateMemCall
  loc_B778B0: FFree1Str var_D8
  loc_B778B3: FFree1Var var_D4 = ""
  loc_B778B6: LitStr "     <td class=""SubTotal"">"
  loc_B778B9: FMemLdR4 var_E8(8)
  loc_B778BE: ConcatStr
  loc_B778BF: FStStrNoPop var_D8
  loc_B778C2: LitStr "</td>"
  loc_B778C5: ConcatStr
  loc_B778C6: CVarStr var_D4
  loc_B778C9: PopAdLdVar
  loc_B778CA: FLdPr Me
  loc_B778CD: MemLdRfVar from_stack_1.global_60
  loc_B778D0: LdPrVar
  loc_B778D2: LateMemCall
  loc_B778D8: FFree1Str var_D8
  loc_B778DB: FFree1Var var_D4 = ""
  loc_B778DE: LitStr "     <td class=""SubTotal"">"
  loc_B778E1: FMemLdR4 var_E8(12)
  loc_B778E6: ConcatStr
  loc_B778E7: FStStrNoPop var_D8
  loc_B778EA: LitStr "</td>"
  loc_B778ED: ConcatStr
  loc_B778EE: CVarStr var_D4
  loc_B778F1: PopAdLdVar
  loc_B778F2: FLdPr Me
  loc_B778F5: MemLdRfVar from_stack_1.global_60
  loc_B778F8: LdPrVar
  loc_B778FA: LateMemCall
  loc_B77900: FFree1Str var_D8
  loc_B77903: FFree1Var var_D4 = ""
  loc_B77906: LitStr "     <td class=""SubTotal"">"
  loc_B77909: FMemLdR4 var_E8(16)
  loc_B7790E: ConcatStr
  loc_B7790F: FStStrNoPop var_D8
  loc_B77912: LitStr "</td>"
  loc_B77915: ConcatStr
  loc_B77916: CVarStr var_D4
  loc_B77919: PopAdLdVar
  loc_B7791A: FLdPr Me
  loc_B7791D: MemLdRfVar from_stack_1.global_60
  loc_B77920: LdPrVar
  loc_B77922: LateMemCall
  loc_B77928: FFree1Str var_D8
  loc_B7792B: FFree1Var var_D4 = ""
  loc_B7792E: LitStr "     <td class=""SubTotal"">"
  loc_B77931: FMemLdR4 var_E8(20)
  loc_B77936: ConcatStr
  loc_B77937: FStStrNoPop var_D8
  loc_B7793A: LitStr "</td>"
  loc_B7793D: ConcatStr
  loc_B7793E: CVarStr var_D4
  loc_B77941: PopAdLdVar
  loc_B77942: FLdPr Me
  loc_B77945: MemLdRfVar from_stack_1.global_60
  loc_B77948: LdPrVar
  loc_B7794A: LateMemCall
  loc_B77950: FFree1Str var_D8
  loc_B77953: FFree1Var var_D4 = ""
  loc_B77956: LitVarStr var_A4, "  </tr>"
  loc_B7795B: PopAdLdVar
  loc_B7795C: FLdPr Me
  loc_B7795F: MemLdRfVar from_stack_1.global_60
  loc_B77962: LdPrVar
  loc_B77964: LateMemCall
  loc_B7796A: LitI4 0
  loc_B7796F: FStR4 var_E8
  loc_B77972: AryUnlock
  loc_B77975: AryUnlock
  loc_B77978: FLdPr Me
  loc_B7797B: MemLdRfVar from_stack_1.global_110
  loc_B7797E: NextI2 var_90, loc_B77522
  loc_B77983: Call Proc_278_30_B9B0A8()
  loc_B77988: FLdPr Me
  loc_B7798B: MemLdRfVar from_stack_1.global_60
  loc_B7798E: LdPrVar
  loc_B77990: LateMemCall
  loc_B77996: LitStr vbNullString
  loc_B77999: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B7799E: ExitProcHresult
End Sub

Private Function Proc_278_25_A84E84() 'A84E84
  'Data Table: 4F3BDC
  loc_A84DF4: FLdPr Me
  loc_A84DF7: MemLdI2 global_110
  loc_A84DFA: LitI2_Byte 1
  loc_A84DFC: AddI2
  loc_A84DFD: FLdPr Me
  loc_A84E00: MemStI2 global_110
  loc_A84E03: LitI2_Byte 0
  loc_A84E05: FLdPr Me
  loc_A84E08: MemStI2 global_112
  loc_A84E0B: LitI4 0
  loc_A84E10: FLdPr Me
  loc_A84E13: MemLdI2 global_110
  loc_A84E16: CI4UI1
  loc_A84E17: LitI4 1
  loc_A84E1C: FLdPr Me
  loc_A84E1F: MemLdStr global_104
  loc_A84E22: Ary1LdPr
  loc_A84E23: MemLdRfVar from_stack_1.global_136
  loc_A84E26: RedimPreserve
  loc_A84E30: FLdRfVar var_86
  loc_A84E33: FLdPr Me
  loc_A84E36: MemLdRfVar from_stack_1.global_76
  loc_A84E39: NewIfNullPr clsctacte
  loc_A84E3C: from_stack_1 = clsctacte.PeriCtct
  loc_A84E41: LitI2_Byte 0
  loc_A84E43: LitVar_Missing var_C0
  loc_A84E46: LitI2_Byte 0
  loc_A84E48: FLdI2 var_86
  loc_A84E4B: CVarI2 var_A0
  loc_A84E4E: PopAdLdVar
  loc_A84E4F: FLdPr Me
  loc_A84E52: MemLdI2 global_110
  loc_A84E55: CI4UI1
  loc_A84E56: LitI4 1
  loc_A84E5B: FLdPr Me
  loc_A84E5E: MemLdStr global_104
  loc_A84E61: AryLock
  loc_A84E64: Ary1LdPr
  loc_A84E65: MemLdStr global_136
  loc_A84E68: AryLock
  loc_A84E6B: Ary1LdPr
  loc_A84E6C: MemLdRfVar from_stack_1.global_0
  loc_A84E6F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_A84E74: AryUnlock
  loc_A84E77: AryUnlock
  loc_A84E7A: FFree1Var var_C0 = ""
  loc_A84E7D: Call Proc_278_26_B8B69C()
  loc_A84E82: ExitProcHresult
End Function

Private Function Proc_278_26_B8B69C() 'B8B69C
  'Data Table: 4F3BDC
  loc_B8B174: FLdPr Me
  loc_B8B177: MemLdI2 global_112
  loc_B8B17A: LitI2_Byte 1
  loc_B8B17C: AddI2
  loc_B8B17D: FLdPr Me
  loc_B8B180: MemStI2 global_112
  loc_B8B183: LitI4 0
  loc_B8B188: FLdPr Me
  loc_B8B18B: MemLdI2 global_112
  loc_B8B18E: CI4UI1
  loc_B8B18F: FLdPr Me
  loc_B8B192: MemLdI2 global_110
  loc_B8B195: CI4UI1
  loc_B8B196: LitI4 1
  loc_B8B19B: FLdPr Me
  loc_B8B19E: MemLdStr global_104
  loc_B8B1A1: Ary1LdPr
  loc_B8B1A2: MemLdStr global_136
  loc_B8B1A5: Ary1LdPr
  loc_B8B1A6: MemLdRfVar from_stack_1.global_4
  loc_B8B1A9: RedimPreserve
  loc_B8B1B3: FLdPr Me
  loc_B8B1B6: MemLdI2 global_112
  loc_B8B1B9: CI4UI1
  loc_B8B1BA: FLdPr Me
  loc_B8B1BD: MemLdI2 global_110
  loc_B8B1C0: CI4UI1
  loc_B8B1C1: LitI4 1
  loc_B8B1C6: FLdPr Me
  loc_B8B1C9: MemLdStr global_104
  loc_B8B1CC: AryLock
  loc_B8B1CF: Ary1LdPr
  loc_B8B1D0: MemLdStr global_136
  loc_B8B1D3: AryLock
  loc_B8B1D6: Ary1LdPr
  loc_B8B1D7: MemLdStr global_4
  loc_B8B1DA: AryLock
  loc_B8B1DD: Ary1LdRf
  loc_B8B1DE: FStR4 var_98
  loc_B8B1E1: FLdRfVar var_9A
  loc_B8B1E4: FLdPr Me
  loc_B8B1E7: MemLdRfVar from_stack_1.global_76
  loc_B8B1EA: NewIfNullPr clsctacte
  loc_B8B1ED: from_stack_1 = clsctacte.BimeCtct
  loc_B8B1F2: LitI2_Byte 0
  loc_B8B1F4: LitVar_Missing var_CC
  loc_B8B1F7: LitI2_Byte 0
  loc_B8B1F9: FLdI2 var_9A
  loc_B8B1FC: CVarI2 var_AC
  loc_B8B1FF: PopAdLdVar
  loc_B8B200: FMemLdRf unk_4F3B45
  loc_B8B205: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B20A: FFree1Var var_CC = ""
  loc_B8B20D: FLdRfVar var_9A
  loc_B8B210: FLdPr Me
  loc_B8B213: MemLdRfVar from_stack_1.global_76
  loc_B8B216: NewIfNullPr clsctacte
  loc_B8B219: from_stack_1 = clsctacte.PeriCtct
  loc_B8B21E: LitI2_Byte 0
  loc_B8B220: LitVar_Missing var_CC
  loc_B8B223: LitI2_Byte 0
  loc_B8B225: FLdI2 var_9A
  loc_B8B228: CVarI2 var_AC
  loc_B8B22B: PopAdLdVar
  loc_B8B22C: FMemLdRf unk_4F3B45
  loc_B8B231: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B236: FFree1Var var_CC = ""
  loc_B8B239: FLdRfVar var_9A
  loc_B8B23C: FLdPr Me
  loc_B8B23F: MemLdRfVar from_stack_1.global_76
  loc_B8B242: NewIfNullPr clsctacte
  loc_B8B245: from_stack_1 = clsctacte.PeriBole
  loc_B8B24A: LitI2_Byte 0
  loc_B8B24C: LitVar_Missing var_CC
  loc_B8B24F: LitI2_Byte 0
  loc_B8B251: FLdI2 var_9A
  loc_B8B254: CVarI2 var_AC
  loc_B8B257: PopAdLdVar
  loc_B8B258: FMemLdRf unk_4F3B45
  loc_B8B25D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B262: FFree1Var var_CC = ""
  loc_B8B265: FLdRfVar var_D0
  loc_B8B268: FLdPr Me
  loc_B8B26B: MemLdRfVar from_stack_1.global_76
  loc_B8B26E: NewIfNullPr clsctacte
  loc_B8B271: from_stack_1 = clsctacte.NumeBole
  loc_B8B276: LitI2_Byte 0
  loc_B8B278: LitVar_Missing var_CC
  loc_B8B27B: LitI2_Byte 0
  loc_B8B27D: ILdRf var_D0
  loc_B8B280: CVarI4
  loc_B8B284: PopAdLdVar
  loc_B8B285: FMemLdRf unk_4F3B45
  loc_B8B28A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B28F: FFree1Var var_CC = ""
  loc_B8B292: FLdRfVar var_CC
  loc_B8B295: FLdPr Me
  loc_B8B298: MemLdRfVar from_stack_1.global_76
  loc_B8B29B: NewIfNullPr clsctacte
  loc_B8B29E: from_stack_1 = clsctacte.FeveCtct
  loc_B8B2A3: LitI2_Byte 0
  loc_B8B2A5: LitVar_Missing var_E0
  loc_B8B2A8: LitI2_Byte 0
  loc_B8B2AA: FLdVar var_CC
  loc_B8B2AE: FMemLdRf unk_4F3B45
  loc_B8B2B3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B2B8: FFreeVar var_CC = ""
  loc_B8B2BF: FLdRfVar var_E4
  loc_B8B2C2: FLdPr Me
  loc_B8B2C5: MemLdRfVar from_stack_1.global_76
  loc_B8B2C8: NewIfNullPr clsctacte
  loc_B8B2CB: from_stack_1 = clsctacte.CodiConc
  loc_B8B2D0: LitI2_Byte 0
  loc_B8B2D2: LitVar_Missing var_E0
  loc_B8B2D5: LitI2_Byte 0
  loc_B8B2D7: FLdZeroAd var_E4
  loc_B8B2DA: CVarStr var_CC
  loc_B8B2DD: PopAdLdVar
  loc_B8B2DE: FMemLdRf unk_4F3B45
  loc_B8B2E3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B2E8: FFreeVar var_CC = ""
  loc_B8B2EF: FLdRfVar var_D0
  loc_B8B2F2: FLdPr Me
  loc_B8B2F5: MemLdRfVar from_stack_1.global_76
  loc_B8B2F8: NewIfNullPr clsctacte
  loc_B8B2FB: from_stack_1 = clsctacte.CodiFapa
  loc_B8B300: LitI2_Byte 0
  loc_B8B302: LitVar_Missing var_CC
  loc_B8B305: LitI2_Byte 0
  loc_B8B307: ILdRf var_D0
  loc_B8B30A: CVarI4
  loc_B8B30E: PopAdLdVar
  loc_B8B30F: FMemLdRf unk_4F3B45
  loc_B8B314: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B319: FFree1Var var_CC = ""
  loc_B8B31C: FLdRfVar var_D0
  loc_B8B31F: FLdPr Me
  loc_B8B322: MemLdRfVar from_stack_1.global_76
  loc_B8B325: NewIfNullPr clsctacte
  loc_B8B328: from_stack_1 = clsctacte.NumeApre
  loc_B8B32D: FLdRfVar var_CC
  loc_B8B330: FLdPr Me
  loc_B8B333: MemLdRfVar from_stack_1.global_76
  loc_B8B336: NewIfNullPr clsctacte
  loc_B8B339: from_stack_1 = clsctacte.CodiInju
  loc_B8B33E: LitVarStr var_114, vbNullString
  loc_B8B343: FStVarCopyObj var_124
  loc_B8B346: FLdRfVar var_124
  loc_B8B349: LitVarStr var_BC, "-Juicio"
  loc_B8B34E: FStVarCopyObj var_104
  loc_B8B351: FLdRfVar var_104
  loc_B8B354: FLdRfVar var_CC
  loc_B8B357: LitVarI2 var_AC, 2
  loc_B8B35C: HardType
  loc_B8B35D: GeVar var_E0
  loc_B8B361: FStVar var_F4
  loc_B8B365: FLdRfVar var_F4
  loc_B8B368: FLdRfVar var_134
  loc_B8B36B: ImpAdCallFPR4  = IIf(, , )
  loc_B8B370: LitI2_Byte 0
  loc_B8B372: LitVar_Missing var_174
  loc_B8B375: LitI2_Byte 0
  loc_B8B377: ILdRf var_D0
  loc_B8B37A: CVarI4
  loc_B8B37E: FLdRfVar var_134
  loc_B8B381: ConcatVar var_154
  loc_B8B385: PopAdLdVar
  loc_B8B386: FMemLdRf unk_4F3B45
  loc_B8B38B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B390: FFreeVar var_CC = "": var_F4 = "": var_104 = "": var_124 = "": var_134 = "": var_154 = ""
  loc_B8B3A1: FLdRfVar var_E4
  loc_B8B3A4: FLdPr Me
  loc_B8B3A7: MemLdRfVar from_stack_1.global_76
  loc_B8B3AA: NewIfNullPr clsctacte
  loc_B8B3AD: from_stack_1 = clsctacte.ExpeCtct
  loc_B8B3B2: LitI2_Byte 0
  loc_B8B3B4: LitVar_Missing var_E0
  loc_B8B3B7: LitI2_Byte 0
  loc_B8B3B9: FLdZeroAd var_E4
  loc_B8B3BC: CVarStr var_CC
  loc_B8B3BF: PopAdLdVar
  loc_B8B3C0: FMemLdRf unk_4F3B45
  loc_B8B3C5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B3CA: FFreeVar var_CC = ""
  loc_B8B3D1: FLdRfVar var_E4
  loc_B8B3D4: FLdPr Me
  loc_B8B3D7: MemLdRfVar from_stack_1.global_76
  loc_B8B3DA: NewIfNullPr clsctacte
  loc_B8B3DD: from_stack_1 = clsctacte.DetaTimo
  loc_B8B3E2: LitI2_Byte 0
  loc_B8B3E4: LitVar_Missing var_E0
  loc_B8B3E7: LitI2_Byte 0
  loc_B8B3E9: FLdZeroAd var_E4
  loc_B8B3EC: CVarStr var_CC
  loc_B8B3EF: PopAdLdVar
  loc_B8B3F0: FMemLdRf unk_4F3B45
  loc_B8B3F5: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B3FA: FFreeVar var_CC = ""
  loc_B8B401: FLdRfVar var_180
  loc_B8B404: LitVarStr var_AC, "DetaEnre"
  loc_B8B409: PopAdLdVar
  loc_B8B40A: FLdRfVar var_17C
  loc_B8B40D: FLdRfVar var_178
  loc_B8B410: FLdPr Me
  loc_B8B413: MemLdRfVar from_stack_1.global_76
  loc_B8B416: NewIfNullPr clsctacte
  loc_B8B419: from_stack_1v = clsctacte.RsFrmGet()
  loc_B8B41E: FLdPr var_178
  loc_B8B421:  = Me.Fields
  loc_B8B426: FLdPr var_17C
  loc_B8B429: from_stack_2 = Me.Item(from_stack_1)
  loc_B8B42E: LitI2_Byte 0
  loc_B8B430: LitVar_Missing var_E0
  loc_B8B433: LitI2_Byte 0
  loc_B8B435: FLdZeroAd var_180
  loc_B8B438: CVarAd
  loc_B8B43C: PopAdLdVar
  loc_B8B43D: FMemLdRf unk_4F3B45
  loc_B8B442: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B447: FFreeAd var_178 = ""
  loc_B8B44E: FFreeVar var_CC = ""
  loc_B8B455: FLdRfVar var_9A
  loc_B8B458: FLdPr Me
  loc_B8B45B: VCallAd Control_ID_SoloDeudaChk
  loc_B8B45E: FStAdFunc var_178
  loc_B8B461: FLdPr var_178
  loc_B8B464:  = Me.Value
  loc_B8B469: FLdRfVar var_188
  loc_B8B46C: FLdPr Me
  loc_B8B46F: MemLdRfVar from_stack_1.global_76
  loc_B8B472: NewIfNullPr clsctacte
  loc_B8B475: from_stack_1 = clsctacte.SaldCtct
  loc_B8B47A: FLdRfVar var_190
  loc_B8B47D: FLdPr Me
  loc_B8B480: MemLdRfVar from_stack_1.global_76
  loc_B8B483: NewIfNullPr clsctacte
  loc_B8B486: from_stack_1 = clsctacte.DebeCtct
  loc_B8B48B: FLdFPR8 var_190
  loc_B8B48E: CVarR8
  loc_B8B492: FLdFPR8 var_188
  loc_B8B495: CVarR8
  loc_B8B499: FLdI2 var_9A
  loc_B8B49C: CI4UI1
  loc_B8B49D: LitI4 1
  loc_B8B4A2: EqI4
  loc_B8B4A3: CVarBoolI2 var_AC
  loc_B8B4A7: FLdRfVar var_F4
  loc_B8B4AA: ImpAdCallFPR4  = IIf(, , )
  loc_B8B4AF: LitI2_Byte 0
  loc_B8B4B1: FLdPr Me
  loc_B8B4B4: MemLdRfVar from_stack_1.global_116
  loc_B8B4B7: CVarRef
  loc_B8B4BC: LitI2_Byte &HFF
  loc_B8B4BE: FLdVar var_F4
  loc_B8B4C2: FMemLdRf unk_4F3B45
  loc_B8B4C7: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B4CC: FFree1Ad var_178
  loc_B8B4CF: FFreeVar var_AC = "": var_CC = "": var_E0 = ""
  loc_B8B4DA: FLdRfVar var_9A
  loc_B8B4DD: FLdPr Me
  loc_B8B4E0: VCallAd Control_ID_SoloDeudaChk
  loc_B8B4E3: FStAdFunc var_178
  loc_B8B4E6: FLdPr var_178
  loc_B8B4E9:  = Me.Value
  loc_B8B4EE: FLdI2 var_9A
  loc_B8B4F1: CI4UI1
  loc_B8B4F2: LitI4 1
  loc_B8B4F7: NeI4
  loc_B8B4F8: FFree1Ad var_178
  loc_B8B4FB: BranchF loc_B8B530
  loc_B8B4FE: FLdRfVar var_188
  loc_B8B501: FLdPr Me
  loc_B8B504: MemLdRfVar from_stack_1.global_76
  loc_B8B507: NewIfNullPr clsctacte
  loc_B8B50A: from_stack_1 = clsctacte.CredCtct
  loc_B8B50F: LitI2_Byte 0
  loc_B8B511: FLdPr Me
  loc_B8B514: MemLdRfVar from_stack_1.global_120
  loc_B8B517: CVarRef
  loc_B8B51C: LitI2_Byte &HFF
  loc_B8B51E: FLdFPR8 var_188
  loc_B8B521: CVarR8
  loc_B8B525: PopAdLdVar
  loc_B8B526: FMemLdRf unk_4F3B45
  loc_B8B52B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B530: FLdRfVar var_188
  loc_B8B533: FLdPr Me
  loc_B8B536: MemLdRfVar from_stack_1.global_76
  loc_B8B539: NewIfNullPr clsctacte
  loc_B8B53C: from_stack_1 = clsctacte.RecaCtct
  loc_B8B541: LitI2_Byte 0
  loc_B8B543: FLdPr Me
  loc_B8B546: MemLdRfVar from_stack_1.global_124
  loc_B8B549: CVarRef
  loc_B8B54E: LitI2_Byte &HFF
  loc_B8B550: FLdFPR8 var_188
  loc_B8B553: CVarR8
  loc_B8B557: PopAdLdVar
  loc_B8B558: FMemLdRf unk_4F3B45
  loc_B8B55D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B562: FLdRfVar var_188
  loc_B8B565: FLdPr Me
  loc_B8B568: MemLdRfVar from_stack_1.global_76
  loc_B8B56B: NewIfNullPr clsctacte
  loc_B8B56E: from_stack_1 = clsctacte.TotaCtct
  loc_B8B573: LitI2_Byte 0
  loc_B8B575: FLdPr Me
  loc_B8B578: MemLdI2 global_110
  loc_B8B57B: CI4UI1
  loc_B8B57C: LitI4 1
  loc_B8B581: FLdPr Me
  loc_B8B584: MemLdStr global_104
  loc_B8B587: AryLock
  loc_B8B58A: Ary1LdPr
  loc_B8B58B: MemLdStr global_136
  loc_B8B58E: AryLock
  loc_B8B591: Ary1LdPr
  loc_B8B592: MemLdRfVar from_stack_1.global_20
  loc_B8B595: CVarRef
  loc_B8B59A: LitI2_Byte &HFF
  loc_B8B59C: FLdFPR8 var_188
  loc_B8B59F: CVarR8
  loc_B8B5A3: PopAdLdVar
  loc_B8B5A4: FMemLdRf unk_4F3B45
  loc_B8B5A9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B5AE: AryUnlock
  loc_B8B5B1: AryUnlock
  loc_B8B5B4: LitI2_Byte 0
  loc_B8B5B6: FLdPr Me
  loc_B8B5B9: MemLdI2 global_110
  loc_B8B5BC: CI4UI1
  loc_B8B5BD: LitI4 1
  loc_B8B5C2: FLdPr Me
  loc_B8B5C5: MemLdStr global_104
  loc_B8B5C8: AryLock
  loc_B8B5CB: Ary1LdPr
  loc_B8B5CC: MemLdStr global_136
  loc_B8B5CF: AryLock
  loc_B8B5D2: Ary1LdPr
  loc_B8B5D3: MemLdRfVar from_stack_1.global_16
  loc_B8B5D6: CVarRef
  loc_B8B5DB: LitI2_Byte &HFF
  loc_B8B5DD: FMemLdR4 var_98(52)
  loc_B8B5E2: CVarStr var_AC
  loc_B8B5E5: PopAdLdVar
  loc_B8B5E6: FLdRfVar var_88
  loc_B8B5E9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B5EE: AryUnlock
  loc_B8B5F1: AryUnlock
  loc_B8B5F4: LitI2_Byte 0
  loc_B8B5F6: FLdPr Me
  loc_B8B5F9: MemLdI2 global_110
  loc_B8B5FC: CI4UI1
  loc_B8B5FD: LitI4 1
  loc_B8B602: FLdPr Me
  loc_B8B605: MemLdStr global_104
  loc_B8B608: AryLock
  loc_B8B60B: Ary1LdPr
  loc_B8B60C: MemLdStr global_136
  loc_B8B60F: AryLock
  loc_B8B612: Ary1LdPr
  loc_B8B613: MemLdRfVar from_stack_1.global_12
  loc_B8B616: CVarRef
  loc_B8B61B: LitI2_Byte &HFF
  loc_B8B61D: FMemLdR4 var_98(48)
  loc_B8B622: CVarStr var_AC
  loc_B8B625: PopAdLdVar
  loc_B8B626: FLdRfVar var_88
  loc_B8B629: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B62E: AryUnlock
  loc_B8B631: AryUnlock
  loc_B8B634: LitI2_Byte 0
  loc_B8B636: FLdPr Me
  loc_B8B639: MemLdI2 global_110
  loc_B8B63C: CI4UI1
  loc_B8B63D: LitI4 1
  loc_B8B642: FLdPr Me
  loc_B8B645: MemLdStr global_104
  loc_B8B648: AryLock
  loc_B8B64B: Ary1LdPr
  loc_B8B64C: MemLdStr global_136
  loc_B8B64F: AryLock
  loc_B8B652: Ary1LdPr
  loc_B8B653: MemLdRfVar from_stack_1.global_8
  loc_B8B656: CVarRef
  loc_B8B65B: LitI2_Byte &HFF
  loc_B8B65D: FMemLdR4 var_98(44)
  loc_B8B662: CVarStr var_AC
  loc_B8B665: PopAdLdVar
  loc_B8B666: FLdRfVar var_88
  loc_B8B669: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B8B66E: AryUnlock
  loc_B8B671: AryUnlock
  loc_B8B674: LitI4 0
  loc_B8B679: FStR4 var_98
  loc_B8B67C: AryUnlock
  loc_B8B67F: AryUnlock
  loc_B8B682: AryUnlock
  loc_B8B685: LitI2_Byte 1
  loc_B8B687: PopTmpLdAd2 var_9A
  loc_B8B68A: FLdPr Me
  loc_B8B68D: MemLdRfVar from_stack_1.global_76
  loc_B8B690: NewIfNullPr clsctacte
  loc_B8B693: Call clsctacte.Move(from_stack_1v)
  loc_B8B698: ExitProcHresult
  loc_B8B699: CCyI2
  loc_B8B69A: FStFPR8 arg_64FC
End Function

Private Function Proc_278_27_ACE8D0() 'ACE8D0
  'Data Table: 4F3BDC
  loc_ACE7D0: ZeroRetValVar
  loc_ACE7D2: FLdRfVar var_98
  loc_ACE7D5: NewIfNullAd
  loc_ACE7D8: FStAd var_A0 
  loc_ACE7DC: LitStr "SELECT concat(trim(DetaPers),if(TipoRela='Poseedor',' (Poseedor)','')) as DetaPers"
  loc_ACE7DF: LitStr " FROM relacion LEFT JOIN infogov.persona as p ON p.CucuPers = relacion.CucuPers"
  loc_ACE7E2: ConcatStr
  loc_ACE7E3: FStStrNoPop var_A4
  loc_ACE7E6: LitStr " WHERE relacion.CodiOfic = "
  loc_ACE7E9: ConcatStr
  loc_ACE7EA: FStStrNoPop var_A8
  loc_ACE7ED: ImpAdLdUI1
  loc_ACE7F1: CStrI2
  loc_ACE7F3: FStStrNoPop var_AC
  loc_ACE7F6: ConcatStr
  loc_ACE7F7: FStStrNoPop var_B0
  loc_ACE7FA: LitStr " AND relacion.CuenCtct = '"
  loc_ACE7FD: ConcatStr
  loc_ACE7FE: FStStrNoPop var_BC
  loc_ACE801: FLdRfVar var_B8
  loc_ACE804: FLdPr Me
  loc_ACE807: VCallAd Control_ID_CuenCtCtTxt
  loc_ACE80A: FStAdFunc var_B4
  loc_ACE80D: FLdPr var_B4
  loc_ACE810:  = Me.Text
  loc_ACE815: ILdRf var_B8
  loc_ACE818: ConcatStr
  loc_ACE819: FStStrNoPop var_C0
  loc_ACE81C: LitStr "' AND relacion.FebaRela is null "
  loc_ACE81F: ConcatStr
  loc_ACE820: FStStrNoPop var_C4
  loc_ACE823: FLdPr var_A0
  loc_ACE826: Call clspersonas.RedefineRS(from_stack_1v)
  loc_ACE82B: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_BC = "": var_B8 = "": var_C0 = ""
  loc_ACE83E: FFree1Ad var_B4
  loc_ACE841: FLdRfVar var_C6
  loc_ACE844: FLdPr var_A0
  loc_ACE847: from_stack_1 = clspersonas.EOF
  loc_ACE84C: FLdI2 var_C6
  loc_ACE84F: NotI4
  loc_ACE850: BranchF loc_ACE886
  loc_ACE853: ILdRf var_9C
  loc_ACE856: FLdRfVar var_A4
  loc_ACE859: FLdPr var_A0
  loc_ACE85C: from_stack_1 = clspersonas.DetaPers
  loc_ACE861: ILdRf var_A4
  loc_ACE864: ConcatStr
  loc_ACE865: FStStrNoPop var_A8
  loc_ACE868: LitStr "<br>"
  loc_ACE86B: ConcatStr
  loc_ACE86C: FStStr var_9C
  loc_ACE86F: FFreeStr var_A4 = ""
  loc_ACE876: LitI2_Byte 1
  loc_ACE878: PopTmpLdAd2 var_C6
  loc_ACE87B: FLdPr var_A0
  loc_ACE87E: Call clspersonas.Move(from_stack_1v)
  loc_ACE883: Branch loc_ACE841
  loc_ACE886: ILdRf var_9C
  loc_ACE889: FnLenStr
  loc_ACE88A: LitI4 4
  loc_ACE88F: GeI4
  loc_ACE890: BranchF loc_ACE8B7
  loc_ACE893: ILdRf var_9C
  loc_ACE896: FnLenStr
  loc_ACE897: LitI4 4
  loc_ACE89C: SubI4
  loc_ACE89D: FLdRfVar var_9C
  loc_ACE8A0: CVarRef
  loc_ACE8A5: FLdRfVar var_E8
  loc_ACE8A8: ImpAdCallFPR4  = Left(, )
  loc_ACE8AD: FLdRfVar var_E8
  loc_ACE8B0: CStrVarTmp
  loc_ACE8B1: FStStr var_9C
  loc_ACE8B4: FFree1Var var_E8 = ""
  loc_ACE8B7: ILdRf var_9C
  loc_ACE8BA: CVarStr var_D8
  loc_ACE8BD: FStVarCopy
  loc_ACE8C1: LitNothing
  loc_ACE8C3: FStAd var_A0 
  loc_ACE8C7: ExitProcCbHresult
End Function

Private Function Proc_278_28_B6DDB0() 'B6DDB0
  'Data Table: 4F3BDC
  loc_B6D900: LitVarStr var_94, "<html>"
  loc_B6D905: PopAdLdVar
  loc_B6D906: FLdPr Me
  loc_B6D909: MemLdRfVar from_stack_1.global_60
  loc_B6D90C: LdPrVar
  loc_B6D90E: LateMemCall
  loc_B6D914: LitVarStr var_94, "<head>"
  loc_B6D919: PopAdLdVar
  loc_B6D91A: FLdPr Me
  loc_B6D91D: MemLdRfVar from_stack_1.global_60
  loc_B6D920: LdPrVar
  loc_B6D922: LateMemCall
  loc_B6D928: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B6D92D: PopAdLdVar
  loc_B6D92E: FLdPr Me
  loc_B6D931: MemLdRfVar from_stack_1.global_60
  loc_B6D934: LdPrVar
  loc_B6D936: LateMemCall
  loc_B6D93C: LitStr "<title>"
  loc_B6D93F: FLdRfVar var_A8
  loc_B6D942: FLdPr Me
  loc_B6D945:  = Me.Caption
  loc_B6D94A: ILdRf var_A8
  loc_B6D94D: ConcatStr
  loc_B6D94E: FStStrNoPop var_AC
  loc_B6D951: LitStr "</title>"
  loc_B6D954: ConcatStr
  loc_B6D955: CVarStr var_BC
  loc_B6D958: PopAdLdVar
  loc_B6D959: FLdPr Me
  loc_B6D95C: MemLdRfVar from_stack_1.global_60
  loc_B6D95F: LdPrVar
  loc_B6D961: LateMemCall
  loc_B6D967: FFreeStr var_A8 = ""
  loc_B6D96E: FFree1Var var_BC = ""
  loc_B6D971: LitVarStr var_94, "<style type=""text/css"">"
  loc_B6D976: PopAdLdVar
  loc_B6D977: FLdPr Me
  loc_B6D97A: MemLdRfVar from_stack_1.global_60
  loc_B6D97D: LdPrVar
  loc_B6D97F: LateMemCall
  loc_B6D985: LitVarStr var_94, ".Titulo1 {"
  loc_B6D98A: PopAdLdVar
  loc_B6D98B: FLdPr Me
  loc_B6D98E: MemLdRfVar from_stack_1.global_60
  loc_B6D991: LdPrVar
  loc_B6D993: LateMemCall
  loc_B6D999: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B6D99E: PopAdLdVar
  loc_B6D99F: FLdPr Me
  loc_B6D9A2: MemLdRfVar from_stack_1.global_60
  loc_B6D9A5: LdPrVar
  loc_B6D9A7: LateMemCall
  loc_B6D9AD: LitVarStr var_94, " font-size: 14px;"
  loc_B6D9B2: PopAdLdVar
  loc_B6D9B3: FLdPr Me
  loc_B6D9B6: MemLdRfVar from_stack_1.global_60
  loc_B6D9B9: LdPrVar
  loc_B6D9BB: LateMemCall
  loc_B6D9C1: LitVarStr var_94, " font-weight: bold;"
  loc_B6D9C6: PopAdLdVar
  loc_B6D9C7: FLdPr Me
  loc_B6D9CA: MemLdRfVar from_stack_1.global_60
  loc_B6D9CD: LdPrVar
  loc_B6D9CF: LateMemCall
  loc_B6D9D5: LitVarStr var_94, "}"
  loc_B6D9DA: PopAdLdVar
  loc_B6D9DB: FLdPr Me
  loc_B6D9DE: MemLdRfVar from_stack_1.global_60
  loc_B6D9E1: LdPrVar
  loc_B6D9E3: LateMemCall
  loc_B6D9E9: LitVarStr var_94, ".Titulo2 {"
  loc_B6D9EE: PopAdLdVar
  loc_B6D9EF: FLdPr Me
  loc_B6D9F2: MemLdRfVar from_stack_1.global_60
  loc_B6D9F5: LdPrVar
  loc_B6D9F7: LateMemCall
  loc_B6D9FD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B6DA02: PopAdLdVar
  loc_B6DA03: FLdPr Me
  loc_B6DA06: MemLdRfVar from_stack_1.global_60
  loc_B6DA09: LdPrVar
  loc_B6DA0B: LateMemCall
  loc_B6DA11: LitVarStr var_94, " font-size: 12px;"
  loc_B6DA16: PopAdLdVar
  loc_B6DA17: FLdPr Me
  loc_B6DA1A: MemLdRfVar from_stack_1.global_60
  loc_B6DA1D: LdPrVar
  loc_B6DA1F: LateMemCall
  loc_B6DA25: LitVarStr var_94, " font-weight: bold;"
  loc_B6DA2A: PopAdLdVar
  loc_B6DA2B: FLdPr Me
  loc_B6DA2E: MemLdRfVar from_stack_1.global_60
  loc_B6DA31: LdPrVar
  loc_B6DA33: LateMemCall
  loc_B6DA39: LitVarStr var_94, "}"
  loc_B6DA3E: PopAdLdVar
  loc_B6DA3F: FLdPr Me
  loc_B6DA42: MemLdRfVar from_stack_1.global_60
  loc_B6DA45: LdPrVar
  loc_B6DA47: LateMemCall
  loc_B6DA4D: LitVarStr var_94, ".Encabezado {"
  loc_B6DA52: PopAdLdVar
  loc_B6DA53: FLdPr Me
  loc_B6DA56: MemLdRfVar from_stack_1.global_60
  loc_B6DA59: LdPrVar
  loc_B6DA5B: LateMemCall
  loc_B6DA61: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B6DA66: PopAdLdVar
  loc_B6DA67: FLdPr Me
  loc_B6DA6A: MemLdRfVar from_stack_1.global_60
  loc_B6DA6D: LdPrVar
  loc_B6DA6F: LateMemCall
  loc_B6DA75: LitVarStr var_94, " font-size: 10px;"
  loc_B6DA7A: PopAdLdVar
  loc_B6DA7B: FLdPr Me
  loc_B6DA7E: MemLdRfVar from_stack_1.global_60
  loc_B6DA81: LdPrVar
  loc_B6DA83: LateMemCall
  loc_B6DA89: LitVarStr var_94, " font-weight: bold;"
  loc_B6DA8E: PopAdLdVar
  loc_B6DA8F: FLdPr Me
  loc_B6DA92: MemLdRfVar from_stack_1.global_60
  loc_B6DA95: LdPrVar
  loc_B6DA97: LateMemCall
  loc_B6DA9D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B6DAA2: PopAdLdVar
  loc_B6DAA3: FLdPr Me
  loc_B6DAA6: MemLdRfVar from_stack_1.global_60
  loc_B6DAA9: LdPrVar
  loc_B6DAAB: LateMemCall
  loc_B6DAB1: LitVarStr var_94, "}"
  loc_B6DAB6: PopAdLdVar
  loc_B6DAB7: FLdPr Me
  loc_B6DABA: MemLdRfVar from_stack_1.global_60
  loc_B6DABD: LdPrVar
  loc_B6DABF: LateMemCall
  loc_B6DAC5: LitVarStr var_94, ".LineaDato {"
  loc_B6DACA: PopAdLdVar
  loc_B6DACB: FLdPr Me
  loc_B6DACE: MemLdRfVar from_stack_1.global_60
  loc_B6DAD1: LdPrVar
  loc_B6DAD3: LateMemCall
  loc_B6DAD9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B6DADE: PopAdLdVar
  loc_B6DADF: FLdPr Me
  loc_B6DAE2: MemLdRfVar from_stack_1.global_60
  loc_B6DAE5: LdPrVar
  loc_B6DAE7: LateMemCall
  loc_B6DAED: LitVarStr var_94, " font-size: 11px;"
  loc_B6DAF2: PopAdLdVar
  loc_B6DAF3: FLdPr Me
  loc_B6DAF6: MemLdRfVar from_stack_1.global_60
  loc_B6DAF9: LdPrVar
  loc_B6DAFB: LateMemCall
  loc_B6DB01: LitVarStr var_94, "}"
  loc_B6DB06: PopAdLdVar
  loc_B6DB07: FLdPr Me
  loc_B6DB0A: MemLdRfVar from_stack_1.global_60
  loc_B6DB0D: LdPrVar
  loc_B6DB0F: LateMemCall
  loc_B6DB15: LitVarStr var_94, ".Totales {"
  loc_B6DB1A: PopAdLdVar
  loc_B6DB1B: FLdPr Me
  loc_B6DB1E: MemLdRfVar from_stack_1.global_60
  loc_B6DB21: LdPrVar
  loc_B6DB23: LateMemCall
  loc_B6DB29: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B6DB2E: PopAdLdVar
  loc_B6DB2F: FLdPr Me
  loc_B6DB32: MemLdRfVar from_stack_1.global_60
  loc_B6DB35: LdPrVar
  loc_B6DB37: LateMemCall
  loc_B6DB3D: LitVarStr var_94, " font-size: 13px;"
  loc_B6DB42: PopAdLdVar
  loc_B6DB43: FLdPr Me
  loc_B6DB46: MemLdRfVar from_stack_1.global_60
  loc_B6DB49: LdPrVar
  loc_B6DB4B: LateMemCall
  loc_B6DB51: LitVarStr var_94, " font-weight: bold;"
  loc_B6DB56: PopAdLdVar
  loc_B6DB57: FLdPr Me
  loc_B6DB5A: MemLdRfVar from_stack_1.global_60
  loc_B6DB5D: LdPrVar
  loc_B6DB5F: LateMemCall
  loc_B6DB65: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B6DB6A: PopAdLdVar
  loc_B6DB6B: FLdPr Me
  loc_B6DB6E: MemLdRfVar from_stack_1.global_60
  loc_B6DB71: LdPrVar
  loc_B6DB73: LateMemCall
  loc_B6DB79: LitVarStr var_94, "}"
  loc_B6DB7E: PopAdLdVar
  loc_B6DB7F: FLdPr Me
  loc_B6DB82: MemLdRfVar from_stack_1.global_60
  loc_B6DB85: LdPrVar
  loc_B6DB87: LateMemCall
  loc_B6DB8D: LitVarStr var_94, ".DatosEncabezado {"
  loc_B6DB92: PopAdLdVar
  loc_B6DB93: FLdPr Me
  loc_B6DB96: MemLdRfVar from_stack_1.global_60
  loc_B6DB99: LdPrVar
  loc_B6DB9B: LateMemCall
  loc_B6DBA1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B6DBA6: PopAdLdVar
  loc_B6DBA7: FLdPr Me
  loc_B6DBAA: MemLdRfVar from_stack_1.global_60
  loc_B6DBAD: LdPrVar
  loc_B6DBAF: LateMemCall
  loc_B6DBB5: LitVarStr var_94, " font-size: 12px;"
  loc_B6DBBA: PopAdLdVar
  loc_B6DBBB: FLdPr Me
  loc_B6DBBE: MemLdRfVar from_stack_1.global_60
  loc_B6DBC1: LdPrVar
  loc_B6DBC3: LateMemCall
  loc_B6DBC9: LitVarStr var_94, "}"
  loc_B6DBCE: PopAdLdVar
  loc_B6DBCF: FLdPr Me
  loc_B6DBD2: MemLdRfVar from_stack_1.global_60
  loc_B6DBD5: LdPrVar
  loc_B6DBD7: LateMemCall
  loc_B6DBDD: LitVarStr var_94, ".EncabezadoTotales {"
  loc_B6DBE2: PopAdLdVar
  loc_B6DBE3: FLdPr Me
  loc_B6DBE6: MemLdRfVar from_stack_1.global_60
  loc_B6DBE9: LdPrVar
  loc_B6DBEB: LateMemCall
  loc_B6DBF1: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_B6DBF6: PopAdLdVar
  loc_B6DBF7: FLdPr Me
  loc_B6DBFA: MemLdRfVar from_stack_1.global_60
  loc_B6DBFD: LdPrVar
  loc_B6DBFF: LateMemCall
  loc_B6DC05: LitVarStr var_94, " font-size: 14px;"
  loc_B6DC0A: PopAdLdVar
  loc_B6DC0B: FLdPr Me
  loc_B6DC0E: MemLdRfVar from_stack_1.global_60
  loc_B6DC11: LdPrVar
  loc_B6DC13: LateMemCall
  loc_B6DC19: LitVarStr var_94, " font-weight: bold;"
  loc_B6DC1E: PopAdLdVar
  loc_B6DC1F: FLdPr Me
  loc_B6DC22: MemLdRfVar from_stack_1.global_60
  loc_B6DC25: LdPrVar
  loc_B6DC27: LateMemCall
  loc_B6DC2D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_B6DC32: PopAdLdVar
  loc_B6DC33: FLdPr Me
  loc_B6DC36: MemLdRfVar from_stack_1.global_60
  loc_B6DC39: LdPrVar
  loc_B6DC3B: LateMemCall
  loc_B6DC41: LitVarStr var_94, "}"
  loc_B6DC46: PopAdLdVar
  loc_B6DC47: FLdPr Me
  loc_B6DC4A: MemLdRfVar from_stack_1.global_60
  loc_B6DC4D: LdPrVar
  loc_B6DC4F: LateMemCall
  loc_B6DC55: LitVarStr var_94, ".Total {"
  loc_B6DC5A: PopAdLdVar
  loc_B6DC5B: FLdPr Me
  loc_B6DC5E: MemLdRfVar from_stack_1.global_60
  loc_B6DC61: LdPrVar
  loc_B6DC63: LateMemCall
  loc_B6DC69: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B6DC6E: PopAdLdVar
  loc_B6DC6F: FLdPr Me
  loc_B6DC72: MemLdRfVar from_stack_1.global_60
  loc_B6DC75: LdPrVar
  loc_B6DC77: LateMemCall
  loc_B6DC7D: LitVarStr var_94, " font-size: 13px;"
  loc_B6DC82: PopAdLdVar
  loc_B6DC83: FLdPr Me
  loc_B6DC86: MemLdRfVar from_stack_1.global_60
  loc_B6DC89: LdPrVar
  loc_B6DC8B: LateMemCall
  loc_B6DC91: LitVarStr var_94, " font-weight: bold;"
  loc_B6DC96: PopAdLdVar
  loc_B6DC97: FLdPr Me
  loc_B6DC9A: MemLdRfVar from_stack_1.global_60
  loc_B6DC9D: LdPrVar
  loc_B6DC9F: LateMemCall
  loc_B6DCA5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B6DCAA: PopAdLdVar
  loc_B6DCAB: FLdPr Me
  loc_B6DCAE: MemLdRfVar from_stack_1.global_60
  loc_B6DCB1: LdPrVar
  loc_B6DCB3: LateMemCall
  loc_B6DCB9: LitVarStr var_94, " border: thin solid #000000;"
  loc_B6DCBE: PopAdLdVar
  loc_B6DCBF: FLdPr Me
  loc_B6DCC2: MemLdRfVar from_stack_1.global_60
  loc_B6DCC5: LdPrVar
  loc_B6DCC7: LateMemCall
  loc_B6DCCD: LitVarStr var_94, "}"
  loc_B6DCD2: PopAdLdVar
  loc_B6DCD3: FLdPr Me
  loc_B6DCD6: MemLdRfVar from_stack_1.global_60
  loc_B6DCD9: LdPrVar
  loc_B6DCDB: LateMemCall
  loc_B6DCE1: LitVarStr var_94, ".SubTotal {"
  loc_B6DCE6: PopAdLdVar
  loc_B6DCE7: FLdPr Me
  loc_B6DCEA: MemLdRfVar from_stack_1.global_60
  loc_B6DCED: LdPrVar
  loc_B6DCEF: LateMemCall
  loc_B6DCF5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B6DCFA: PopAdLdVar
  loc_B6DCFB: FLdPr Me
  loc_B6DCFE: MemLdRfVar from_stack_1.global_60
  loc_B6DD01: LdPrVar
  loc_B6DD03: LateMemCall
  loc_B6DD09: LitVarStr var_94, " font-size: 11px;"
  loc_B6DD0E: PopAdLdVar
  loc_B6DD0F: FLdPr Me
  loc_B6DD12: MemLdRfVar from_stack_1.global_60
  loc_B6DD15: LdPrVar
  loc_B6DD17: LateMemCall
  loc_B6DD1D: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_B6DD22: PopAdLdVar
  loc_B6DD23: FLdPr Me
  loc_B6DD26: MemLdRfVar from_stack_1.global_60
  loc_B6DD29: LdPrVar
  loc_B6DD2B: LateMemCall
  loc_B6DD31: LitVarStr var_94, "}"
  loc_B6DD36: PopAdLdVar
  loc_B6DD37: FLdPr Me
  loc_B6DD3A: MemLdRfVar from_stack_1.global_60
  loc_B6DD3D: LdPrVar
  loc_B6DD3F: LateMemCall
  loc_B6DD45: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_B6DD4A: PopAdLdVar
  loc_B6DD4B: FLdPr Me
  loc_B6DD4E: MemLdRfVar from_stack_1.global_60
  loc_B6DD51: LdPrVar
  loc_B6DD53: LateMemCall
  loc_B6DD59: LitVarStr var_94, "TFOOT { display: table-footer-group; }"
  loc_B6DD5E: PopAdLdVar
  loc_B6DD5F: FLdPr Me
  loc_B6DD62: MemLdRfVar from_stack_1.global_60
  loc_B6DD65: LdPrVar
  loc_B6DD67: LateMemCall
  loc_B6DD6D: LitVarStr var_94, "</style>"
  loc_B6DD72: PopAdLdVar
  loc_B6DD73: FLdPr Me
  loc_B6DD76: MemLdRfVar from_stack_1.global_60
  loc_B6DD79: LdPrVar
  loc_B6DD7B: LateMemCall
  loc_B6DD81: LitI4 0
  loc_B6DD86: FStStrCopy var_AC
  loc_B6DD89: FLdRfVar var_AC
  loc_B6DD8C: LitI4 0
  loc_B6DD91: FStStrCopy var_A8
  loc_B6DD94: FLdRfVar var_A8
  loc_B6DD97: LitI2_Byte 0
  loc_B6DD99: PopTmpLdAd2 var_BE
  loc_B6DD9C: FLdPr Me
  loc_B6DD9F: MemLdRfVar from_stack_1.global_60
  loc_B6DDA2: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B6DDA7: FFreeStr var_A8 = ""
  loc_B6DDAE: ExitProcHresult
End Function

Private Function Proc_278_29_C6C8FC() 'C6C8FC
  'Data Table: 4F3BDC
  loc_C6B7F0: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_C6B7F5: PopAdLdVar
  loc_C6B7F6: FLdPr Me
  loc_C6B7F9: MemLdRfVar from_stack_1.global_60
  loc_C6B7FC: LdPrVar
  loc_C6B7FE: LateMemCall
  loc_C6B804: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C6B809: PopAdLdVar
  loc_C6B80A: FLdPr Me
  loc_C6B80D: MemLdRfVar from_stack_1.global_60
  loc_C6B810: LdPrVar
  loc_C6B812: LateMemCall
  loc_C6B818: LitStr "    <th colspan=""4"" align=""center"" valign=""middle"" class=""Titulo1""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C6B81B: LitI2_Byte &H5F
  loc_C6B81D: CStrUI1
  loc_C6B81F: FStStrNoPop var_A8
  loc_C6B822: ConcatStr
  loc_C6B823: FStStrNoPop var_AC
  loc_C6B826: LitStr """ height="""
  loc_C6B829: ConcatStr
  loc_C6B82A: FStStrNoPop var_B0
  loc_C6B82D: LitI2_Byte &H3C
  loc_C6B82F: CStrUI1
  loc_C6B831: FStStrNoPop var_B4
  loc_C6B834: ConcatStr
  loc_C6B835: FStStrNoPop var_B8
  loc_C6B838: LitStr """ align=""left"" valign=""middle""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_C6B83B: ConcatStr
  loc_C6B83C: FStStrNoPop var_BC
  loc_C6B83F: LitI2_Byte &H3C
  loc_C6B841: CStrUI1
  loc_C6B843: FStStrNoPop var_C0
  loc_C6B846: ConcatStr
  loc_C6B847: FStStrNoPop var_C4
  loc_C6B84A: LitStr """ height="""
  loc_C6B84D: ConcatStr
  loc_C6B84E: FStStrNoPop var_C8
  loc_C6B851: LitI2_Byte &H3C
  loc_C6B853: CStrUI1
  loc_C6B855: FStStrNoPop var_CC
  loc_C6B858: ConcatStr
  loc_C6B859: FStStrNoPop var_D0
  loc_C6B85C: LitStr """ align=""right"" valign=""middle"">"
  loc_C6B85F: ConcatStr
  loc_C6B860: CVarStr var_E0
  loc_C6B863: PopAdLdVar
  loc_C6B864: FLdPr Me
  loc_C6B867: MemLdRfVar from_stack_1.global_60
  loc_C6B86A: LdPrVar
  loc_C6B86C: LateMemCall
  loc_C6B872: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_C6B88B: FFree1Var var_E0 = ""
  loc_C6B88E: LitVarStr var_A4, "        "
  loc_C6B893: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_C6B898: FStVarCopyObj var_E0
  loc_C6B89B: FLdRfVar var_E0
  loc_C6B89E: FLdRfVar var_F0
  loc_C6B8A1: ImpAdCallFPR4  = Ucase()
  loc_C6B8A6: FLdRfVar var_F0
  loc_C6B8A9: ConcatVar var_100
  loc_C6B8AD: LitVarStr var_110, "<br>"
  loc_C6B8B2: ConcatVar var_120
  loc_C6B8B6: LitVarStr var_130, "Dirección de Rentas"
  loc_C6B8BB: ConcatVar var_140
  loc_C6B8BF: LitVarStr var_150, "<br>"
  loc_C6B8C4: ConcatVar var_160
  loc_C6B8C8: FLdRfVar var_A8
  loc_C6B8CB: FLdPr Me
  loc_C6B8CE:  = Me.Caption
  loc_C6B8D3: FLdZeroAd var_A8
  loc_C6B8D6: CVarStr var_170
  loc_C6B8D9: ConcatVar var_180
  loc_C6B8DD: LitVarStr var_190, "</th>"
  loc_C6B8E2: ConcatVar var_1A0
  loc_C6B8E6: PopAdLdVar
  loc_C6B8E7: FLdPr Me
  loc_C6B8EA: MemLdRfVar from_stack_1.global_60
  loc_C6B8ED: LdPrVar
  loc_C6B8EF: LateMemCall
  loc_C6B8F5: FFreeVar var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_170 = "": var_180 = ""
  loc_C6B90A: LitVarStr var_94, "  </tr>"
  loc_C6B90F: PopAdLdVar
  loc_C6B910: FLdPr Me
  loc_C6B913: MemLdRfVar from_stack_1.global_60
  loc_C6B916: LdPrVar
  loc_C6B918: LateMemCall
  loc_C6B91E: LitVarStr var_94, "  <tr>"
  loc_C6B923: PopAdLdVar
  loc_C6B924: FLdPr Me
  loc_C6B927: MemLdRfVar from_stack_1.global_60
  loc_C6B92A: LdPrVar
  loc_C6B92C: LateMemCall
  loc_C6B932: LitVarStr var_94, "    <th colspan=""4""><br><hr></th>"
  loc_C6B937: PopAdLdVar
  loc_C6B938: FLdPr Me
  loc_C6B93B: MemLdRfVar from_stack_1.global_60
  loc_C6B93E: LdPrVar
  loc_C6B940: LateMemCall
  loc_C6B946: LitVarStr var_94, "  </tr>"
  loc_C6B94B: PopAdLdVar
  loc_C6B94C: FLdPr Me
  loc_C6B94F: MemLdRfVar from_stack_1.global_60
  loc_C6B952: LdPrVar
  loc_C6B954: LateMemCall
  loc_C6B95A: LitI4 1
  loc_C6B95F: FLdPr Me
  loc_C6B962: MemLdStr global_104
  loc_C6B965: AryLock
  loc_C6B968: Ary1LdRf
  loc_C6B969: FStR4 var_1B8
  loc_C6B96C: LitVarStr var_94, "  <tr valign=""top"" class=""Titulo2"">"
  loc_C6B971: PopAdLdVar
  loc_C6B972: FLdPr Me
  loc_C6B975: MemLdRfVar from_stack_1.global_60
  loc_C6B978: LdPrVar
  loc_C6B97A: LateMemCall
  loc_C6B980: LitI2_Byte 0
  loc_C6B982: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C6B987: FStFPR8 var_1C0
  loc_C6B98A: LitStr "    <th colspan=""4"" align=""right"" valign=""top"">"
  loc_C6B98D: LitStr "Guaymallén"
  loc_C6B990: ConcatStr
  loc_C6B991: FStStrNoPop var_A8
  loc_C6B994: LitStr ", "
  loc_C6B997: ConcatStr
  loc_C6B998: FStStrNoPop var_AC
  loc_C6B99B: LitStr "Mendoza"
  loc_C6B99E: ConcatStr
  loc_C6B99F: FStStrNoPop var_B0
  loc_C6B9A2: LitStr ", "
  loc_C6B9A5: ConcatStr
  loc_C6B9A6: FStStrNoPop var_B4
  loc_C6B9A9: LitI4 1
  loc_C6B9AE: LitI4 1
  loc_C6B9B3: LitVarStr var_A4, "dddd d \de mmmm \de yyyy"
  loc_C6B9B8: FStVarCopyObj var_F0
  loc_C6B9BB: FLdRfVar var_F0
  loc_C6B9BE: FLdFPR8 var_1C0
  loc_C6B9C1: CVarDate var_E0
  loc_C6B9C5: ImpAdCallI2 Format$(, )
  loc_C6B9CA: FStStrNoPop var_B8
  loc_C6B9CD: ConcatStr
  loc_C6B9CE: FStStrNoPop var_BC
  loc_C6B9D1: LitStr "</th>"
  loc_C6B9D4: ConcatStr
  loc_C6B9D5: CVarStr var_100
  loc_C6B9D8: PopAdLdVar
  loc_C6B9D9: FLdPr Me
  loc_C6B9DC: MemLdRfVar from_stack_1.global_60
  loc_C6B9DF: LdPrVar
  loc_C6B9E1: LateMemCall
  loc_C6B9E7: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_C6B9F6: FFreeVar var_E0 = "": var_F0 = ""
  loc_C6B9FF: LitVarStr var_94, "  </tr>"
  loc_C6BA04: PopAdLdVar
  loc_C6BA05: FLdPr Me
  loc_C6BA08: MemLdRfVar from_stack_1.global_60
  loc_C6BA0B: LdPrVar
  loc_C6BA0D: LateMemCall
  loc_C6BA13: LitVarStr var_94, "  <tr valign=""top"" class=""Titulo2"">"
  loc_C6BA18: PopAdLdVar
  loc_C6BA19: FLdPr Me
  loc_C6BA1C: MemLdRfVar from_stack_1.global_60
  loc_C6BA1F: LdPrVar
  loc_C6BA21: LateMemCall
  loc_C6BA27: LitVarStr var_94, "    <th colspan=""4""><br></th>"
  loc_C6BA2C: PopAdLdVar
  loc_C6BA2D: FLdPr Me
  loc_C6BA30: MemLdRfVar from_stack_1.global_60
  loc_C6BA33: LdPrVar
  loc_C6BA35: LateMemCall
  loc_C6BA3B: LitVarStr var_94, "  </tr>"
  loc_C6BA40: PopAdLdVar
  loc_C6BA41: FLdPr Me
  loc_C6BA44: MemLdRfVar from_stack_1.global_60
  loc_C6BA47: LdPrVar
  loc_C6BA49: LateMemCall
  loc_C6BA4F: LitVarStr var_94, "  <tr valign=""top"" class=""Titulo2"">"
  loc_C6BA54: PopAdLdVar
  loc_C6BA55: FLdPr Me
  loc_C6BA58: MemLdRfVar from_stack_1.global_60
  loc_C6BA5B: LdPrVar
  loc_C6BA5D: LateMemCall
  loc_C6BA63: LitVarStr var_94, "    <th width=""4" & Chr(37) & """ align=""left"" valign=""top"">Sr/a.:</th>"
  loc_C6BA68: PopAdLdVar
  loc_C6BA69: FLdPr Me
  loc_C6BA6C: MemLdRfVar from_stack_1.global_60
  loc_C6BA6F: LdPrVar
  loc_C6BA71: LateMemCall
  loc_C6BA77: ImpAdLdUI1
  loc_C6BA7B: CI2UI1
  loc_C6BA7D: LitI2_Byte 1
  loc_C6BA7F: EqI2
  loc_C6BA80: BranchF loc_C6BAE3
  loc_C6BA83: LitStr "    <th width=""46" & Chr(37) & """ align=""left"" valign=""top"">"
  loc_C6BA86: FMemLdR4 var_1B8(0)
  loc_C6BA8B: ConcatStr
  loc_C6BA8C: FStStrNoPop var_A8
  loc_C6BA8F: LitStr "<br>"
  loc_C6BA92: ConcatStr
  loc_C6BA93: CVarStr var_E0
  loc_C6BA96: PopAdLdVar
  loc_C6BA97: FLdPr Me
  loc_C6BA9A: MemLdRfVar from_stack_1.global_60
  loc_C6BA9D: LdPrVar
  loc_C6BA9F: LateMemCall
  loc_C6BAA5: FFree1Str var_A8
  loc_C6BAA8: FFree1Var var_E0 = ""
  loc_C6BAAB: FMemLdR4 var_1B8(4)
  loc_C6BAB0: LitStr vbNullString
  loc_C6BAB3: NeStr
  loc_C6BAB5: BranchF loc_C6BAE0
  loc_C6BAB8: LitStr "                                       "
  loc_C6BABB: FMemLdR4 var_1B8(4)
  loc_C6BAC0: ConcatStr
  loc_C6BAC1: FStStrNoPop var_A8
  loc_C6BAC4: LitStr "<br>"
  loc_C6BAC7: ConcatStr
  loc_C6BAC8: CVarStr var_E0
  loc_C6BACB: PopAdLdVar
  loc_C6BACC: FLdPr Me
  loc_C6BACF: MemLdRfVar from_stack_1.global_60
  loc_C6BAD2: LdPrVar
  loc_C6BAD4: LateMemCall
  loc_C6BADA: FFree1Str var_A8
  loc_C6BADD: FFree1Var var_E0 = ""
  loc_C6BAE0: Branch loc_C6BB0B
  loc_C6BAE3: LitStr "    <th width=""46" & Chr(37) & """ align=""left"" valign=""top"">"
  loc_C6BAE6: FMemLdR4 var_1B8(4)
  loc_C6BAEB: ConcatStr
  loc_C6BAEC: FStStrNoPop var_A8
  loc_C6BAEF: LitStr "<br>"
  loc_C6BAF2: ConcatStr
  loc_C6BAF3: CVarStr var_E0
  loc_C6BAF6: PopAdLdVar
  loc_C6BAF7: FLdPr Me
  loc_C6BAFA: MemLdRfVar from_stack_1.global_60
  loc_C6BAFD: LdPrVar
  loc_C6BAFF: LateMemCall
  loc_C6BB05: FFree1Str var_A8
  loc_C6BB08: FFree1Var var_E0 = ""
  loc_C6BB0B: LitVarStr var_110, "                                           "
  loc_C6BB10: LitVarStr var_A4, vbNullString
  loc_C6BB15: FStVarCopyObj var_F0
  loc_C6BB18: FLdRfVar var_F0
  loc_C6BB1B: LitStr "Calle: "
  loc_C6BB1E: FMemLdR4 var_1B8(8)
  loc_C6BB23: ConcatStr
  loc_C6BB24: CVarStr var_E0
  loc_C6BB27: FMemLdR4 var_1B8(8)
  loc_C6BB2C: LitStr vbNullString
  loc_C6BB2F: NeStr
  loc_C6BB31: CVarBoolI2 var_94
  loc_C6BB35: FLdRfVar var_100
  loc_C6BB38: ImpAdCallFPR4  = IIf(, , )
  loc_C6BB3D: FLdRfVar var_100
  loc_C6BB40: ConcatVar var_120
  loc_C6BB44: LitVarStr var_130, " "
  loc_C6BB49: ConcatVar var_140
  loc_C6BB4D: LitVarStr var_190, vbNullString
  loc_C6BB52: FStVarCopyObj var_170
  loc_C6BB55: FLdRfVar var_170
  loc_C6BB58: LitStr "Nro:"
  loc_C6BB5B: FMemLdR4 var_1B8(12)
  loc_C6BB60: ConcatStr
  loc_C6BB61: CVarStr var_160
  loc_C6BB64: FMemLdR4 var_1B8(12)
  loc_C6BB69: LitStr vbNullString
  loc_C6BB6C: NeStr
  loc_C6BB6E: CVarBoolI2 var_150
  loc_C6BB72: FLdRfVar var_180
  loc_C6BB75: ImpAdCallFPR4  = IIf(, , )
  loc_C6BB7A: FLdRfVar var_180
  loc_C6BB7D: ConcatVar var_1A0
  loc_C6BB81: LitVarStr var_1B0, "<br>"
  loc_C6BB86: ConcatVar var_1D0
  loc_C6BB8A: PopAdLdVar
  loc_C6BB8B: FLdPr Me
  loc_C6BB8E: MemLdRfVar from_stack_1.global_60
  loc_C6BB91: LdPrVar
  loc_C6BB93: LateMemCall
  loc_C6BB99: FFreeVar var_94 = "": var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_150 = "": var_160 = "": var_170 = "": var_140 = "": var_180 = "": var_1A0 = ""
  loc_C6BBB4: FMemLdRf unk_4F3A25
  loc_C6BBB9: CVarRef
  loc_C6BBBE: FLdRfVar var_E0
  loc_C6BBC1: ImpAdCallFPR4  = Trim()
  loc_C6BBC6: FMemLdRf unk_4F3A25
  loc_C6BBCB: CVarRef
  loc_C6BBD0: FLdRfVar var_1A0
  loc_C6BBD3: ImpAdCallFPR4  = Trim()
  loc_C6BBD8: FMemLdRf unk_4F3A25
  loc_C6BBDD: CVarRef
  loc_C6BBE2: FLdRfVar var_270
  loc_C6BBE5: ImpAdCallFPR4  = Trim()
  loc_C6BBEA: LitVarStr var_130, "                                           "
  loc_C6BBEF: LitVarStr var_110, vbNullString
  loc_C6BBF4: FStVarCopyObj var_140
  loc_C6BBF7: FLdRfVar var_140
  loc_C6BBFA: LitStr "Barrio: "
  loc_C6BBFD: FMemLdR4 var_1B8(16)
  loc_C6BC02: ConcatStr
  loc_C6BC03: CVarStr var_120
  loc_C6BC06: FLdRfVar var_E0
  loc_C6BC09: LitVarStr var_A4, vbNullString
  loc_C6BC0E: HardType
  loc_C6BC0F: NeVar var_F0
  loc_C6BC13: FStVar var_100
  loc_C6BC17: FLdRfVar var_100
  loc_C6BC1A: FLdRfVar var_160
  loc_C6BC1D: ImpAdCallFPR4  = IIf(, , )
  loc_C6BC22: FLdRfVar var_160
  loc_C6BC25: ConcatVar var_170
  loc_C6BC29: LitVarStr var_150, " "
  loc_C6BC2E: ConcatVar var_180
  loc_C6BC32: LitVarStr var_1E0, vbNullString
  loc_C6BC37: FStVarCopyObj var_210
  loc_C6BC3A: FLdRfVar var_210
  loc_C6BC3D: LitStr "Manz: "
  loc_C6BC40: FMemLdR4 var_1B8(20)
  loc_C6BC45: ConcatStr
  loc_C6BC46: CVarStr var_200
  loc_C6BC49: FLdRfVar var_1A0
  loc_C6BC4C: LitVarStr var_1B0, vbNullString
  loc_C6BC51: HardType
  loc_C6BC52: NeVar var_1D0
  loc_C6BC56: FStVar var_1F0
  loc_C6BC5A: FLdRfVar var_1F0
  loc_C6BC5D: FLdRfVar var_220
  loc_C6BC60: ImpAdCallFPR4  = IIf(, , )
  loc_C6BC65: FLdRfVar var_220
  loc_C6BC68: ConcatVar var_230
  loc_C6BC6C: LitVarStr var_240, " "
  loc_C6BC71: ConcatVar var_250
  loc_C6BC75: LitVarStr var_300, vbNullString
  loc_C6BC7A: FStVarCopyObj var_310
  loc_C6BC7D: FLdRfVar var_310
  loc_C6BC80: LitStr "Casa: "
  loc_C6BC83: FMemLdR4 var_1B8(24)
  loc_C6BC88: ConcatStr
  loc_C6BC89: CVarStr var_2F0
  loc_C6BC8C: FLdRfVar var_270
  loc_C6BC8F: LitVarStr var_280, vbNullString
  loc_C6BC94: HardType
  loc_C6BC95: NeVar var_290
  loc_C6BC99: FMemLdR4 var_1B8(24)
  loc_C6BC9E: LitStr "0"
  loc_C6BCA1: NeStr
  loc_C6BCA3: CVarBoolI2 var_2A0
  loc_C6BCA7: AndVar var_2B0
  loc_C6BCAB: FMemLdR4 var_1B8(24)
  loc_C6BCB0: LitStr "0000"
  loc_C6BCB3: NeStr
  loc_C6BCB5: CVarBoolI2 var_2C0
  loc_C6BCB9: AndVar var_2D0
  loc_C6BCBD: FStVar var_2E0
  loc_C6BCC1: FLdRfVar var_2E0
  loc_C6BCC4: FLdRfVar var_320
  loc_C6BCC7: ImpAdCallFPR4  = IIf(, , )
  loc_C6BCCC: FLdRfVar var_320
  loc_C6BCCF: ConcatVar var_330
  loc_C6BCD3: LitVarStr var_340, "<br>"
  loc_C6BCD8: ConcatVar var_350
  loc_C6BCDC: PopAdLdVar
  loc_C6BCDD: FLdPr Me
  loc_C6BCE0: MemLdRfVar from_stack_1.global_60
  loc_C6BCE3: LdPrVar
  loc_C6BCE5: LateMemCall
  loc_C6BCEB: FFreeVar var_E0 = "": var_100 = "": var_120 = "": var_140 = "": var_160 = "": var_170 = "": var_1A0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_180 = "": var_220 = "": var_230 = "": var_270 = "": var_2A0 = "": var_2C0 = "": var_2E0 = "": var_2F0 = "": var_310 = "": var_250 = "": var_320 = "": var_330 = ""
  loc_C6BD1C: FMemLdRf unk_4F3A25
  loc_C6BD21: CVarRef
  loc_C6BD26: FLdRfVar var_E0
  loc_C6BD29: ImpAdCallFPR4  = Trim()
  loc_C6BD2E: FLdRfVar var_E0
  loc_C6BD31: LitVarStr var_A4, vbNullString
  loc_C6BD36: HardType
  loc_C6BD37: NeVarBool
  loc_C6BD39: FFree1Var var_E0 = ""
  loc_C6BD3C: BranchF loc_C6BD72
  loc_C6BD3F: LitStr "                                           "
  loc_C6BD42: LitStr "Ubicación: "
  loc_C6BD45: ConcatStr
  loc_C6BD46: FStStrNoPop var_A8
  loc_C6BD49: FMemLdR4 var_1B8(28)
  loc_C6BD4E: ConcatStr
  loc_C6BD4F: FStStrNoPop var_AC
  loc_C6BD52: LitStr "<br>"
  loc_C6BD55: ConcatStr
  loc_C6BD56: CVarStr var_E0
  loc_C6BD59: PopAdLdVar
  loc_C6BD5A: FLdPr Me
  loc_C6BD5D: MemLdRfVar from_stack_1.global_60
  loc_C6BD60: LdPrVar
  loc_C6BD62: LateMemCall
  loc_C6BD68: FFreeStr var_A8 = ""
  loc_C6BD6F: FFree1Var var_E0 = ""
  loc_C6BD72: LitVarStr var_110, "                                           "
  loc_C6BD77: LitVarStr var_A4, vbNullString
  loc_C6BD7C: FStVarCopyObj var_F0
  loc_C6BD7F: FLdRfVar var_F0
  loc_C6BD82: LitStr "Localidad: "
  loc_C6BD85: FMemLdR4 var_1B8(32)
  loc_C6BD8A: ConcatStr
  loc_C6BD8B: CVarStr var_E0
  loc_C6BD8E: FMemLdR4 var_1B8(32)
  loc_C6BD93: LitStr vbNullString
  loc_C6BD96: NeStr
  loc_C6BD98: CVarBoolI2 var_94
  loc_C6BD9C: FLdRfVar var_100
  loc_C6BD9F: ImpAdCallFPR4  = IIf(, , )
  loc_C6BDA4: FLdRfVar var_100
  loc_C6BDA7: ConcatVar var_120
  loc_C6BDAB: LitVarStr var_130, " "
  loc_C6BDB0: ConcatVar var_140
  loc_C6BDB4: LitVarStr var_190, vbNullString
  loc_C6BDB9: FStVarCopyObj var_170
  loc_C6BDBC: FLdRfVar var_170
  loc_C6BDBF: LitStr "C.P: "
  loc_C6BDC2: FMemLdR4 var_1B8(36)
  loc_C6BDC7: ConcatStr
  loc_C6BDC8: CVarStr var_160
  loc_C6BDCB: FMemLdR4 var_1B8(36)
  loc_C6BDD0: LitStr vbNullString
  loc_C6BDD3: NeStr
  loc_C6BDD5: CVarBoolI2 var_150
  loc_C6BDD9: FLdRfVar var_180
  loc_C6BDDC: ImpAdCallFPR4  = IIf(, , )
  loc_C6BDE1: FLdRfVar var_180
  loc_C6BDE4: ConcatVar var_1A0
  loc_C6BDE8: LitVarStr var_1B0, "<br></th>"
  loc_C6BDED: ConcatVar var_1D0
  loc_C6BDF1: PopAdLdVar
  loc_C6BDF2: FLdPr Me
  loc_C6BDF5: MemLdRfVar from_stack_1.global_60
  loc_C6BDF8: LdPrVar
  loc_C6BDFA: LateMemCall
  loc_C6BE00: FFreeVar var_94 = "": var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_150 = "": var_160 = "": var_170 = "": var_140 = "": var_180 = "": var_1A0 = ""
  loc_C6BE1B: LitVarStr var_94, "  </tr>"
  loc_C6BE20: PopAdLdVar
  loc_C6BE21: FLdPr Me
  loc_C6BE24: MemLdRfVar from_stack_1.global_60
  loc_C6BE27: LdPrVar
  loc_C6BE29: LateMemCall
  loc_C6BE2F: LitVarStr var_94, "  <tr valign=""top"" class=""Titulo2"">"
  loc_C6BE34: PopAdLdVar
  loc_C6BE35: FLdPr Me
  loc_C6BE38: MemLdRfVar from_stack_1.global_60
  loc_C6BE3B: LdPrVar
  loc_C6BE3D: LateMemCall
  loc_C6BE43: LitVarStr var_94, "    <th colspan=""4"" align=""left"" valign=""top""><table width=""562"" border=""1"" align=""right"" cellpadding=""1"" cellspacing=""0"">"
  loc_C6BE48: PopAdLdVar
  loc_C6BE49: FLdPr Me
  loc_C6BE4C: MemLdRfVar from_stack_1.global_60
  loc_C6BE4F: LdPrVar
  loc_C6BE51: LateMemCall
  loc_C6BE57: LitVarStr var_94, "      <tr valign=""top"">"
  loc_C6BE5C: PopAdLdVar
  loc_C6BE5D: FLdPr Me
  loc_C6BE60: MemLdRfVar from_stack_1.global_60
  loc_C6BE63: LdPrVar
  loc_C6BE65: LateMemCall
  loc_C6BE6B: LitVarStr var_94, "        <td width=""48"" align=""right"" valign=""top"" class=""Titulo2"">Referencia:</td>"
  loc_C6BE70: PopAdLdVar
  loc_C6BE71: FLdPr Me
  loc_C6BE74: MemLdRfVar from_stack_1.global_60
  loc_C6BE77: LdPrVar
  loc_C6BE79: LateMemCall
  loc_C6BE7F: LitStr "        <td width=""291"" class=""DatosEncabezado"">"
  loc_C6BE82: FLdRfVar var_A8
  loc_C6BE85: FLdPr Me
  loc_C6BE88: VCallAd Control_ID_CodiOficCbo
  loc_C6BE8B: FStAdFunc var_364
  loc_C6BE8E: FLdPr var_364
  loc_C6BE91:  = Me.Text
  loc_C6BE96: ILdRf var_A8
  loc_C6BE99: ConcatStr
  loc_C6BE9A: FStStrNoPop var_AC
  loc_C6BE9D: LitStr "</td>"
  loc_C6BEA0: ConcatStr
  loc_C6BEA1: CVarStr var_E0
  loc_C6BEA4: PopAdLdVar
  loc_C6BEA5: FLdPr Me
  loc_C6BEA8: MemLdRfVar from_stack_1.global_60
  loc_C6BEAB: LdPrVar
  loc_C6BEAD: LateMemCall
  loc_C6BEB3: FFreeStr var_A8 = ""
  loc_C6BEBA: FFree1Ad var_364
  loc_C6BEBD: FFree1Var var_E0 = ""
  loc_C6BEC0: LitVarStr var_94, "        <td width=""34"" align=""right"" valign=""top"" class=""Titulo2"">Cuenta:</td>"
  loc_C6BEC5: PopAdLdVar
  loc_C6BEC6: FLdPr Me
  loc_C6BEC9: MemLdRfVar from_stack_1.global_60
  loc_C6BECC: LdPrVar
  loc_C6BECE: LateMemCall
  loc_C6BED4: LitStr "        <td width=""171"" class=""DatosEncabezado"">"
  loc_C6BED7: FLdRfVar var_A8
  loc_C6BEDA: FLdPr Me
  loc_C6BEDD: VCallAd Control_ID_CuenCtCtTxt
  loc_C6BEE0: FStAdFunc var_364
  loc_C6BEE3: FLdPr var_364
  loc_C6BEE6:  = Me.Text
  loc_C6BEEB: ILdRf var_A8
  loc_C6BEEE: ConcatStr
  loc_C6BEEF: FStStrNoPop var_AC
  loc_C6BEF2: LitStr "</td>"
  loc_C6BEF5: ConcatStr
  loc_C6BEF6: CVarStr var_E0
  loc_C6BEF9: PopAdLdVar
  loc_C6BEFA: FLdPr Me
  loc_C6BEFD: MemLdRfVar from_stack_1.global_60
  loc_C6BF00: LdPrVar
  loc_C6BF02: LateMemCall
  loc_C6BF08: FFreeStr var_A8 = ""
  loc_C6BF0F: FFree1Ad var_364
  loc_C6BF12: FFree1Var var_E0 = ""
  loc_C6BF15: LitVarStr var_94, "      </tr>"
  loc_C6BF1A: PopAdLdVar
  loc_C6BF1B: FLdPr Me
  loc_C6BF1E: MemLdRfVar from_stack_1.global_60
  loc_C6BF21: LdPrVar
  loc_C6BF23: LateMemCall
  loc_C6BF29: ImpAdLdUI1
  loc_C6BF2D: FStUI1 var_366
  loc_C6BF31: FLdUI1
  loc_C6BF35: LitI2_Byte 1
  loc_C6BF37: CUI1I2
  loc_C6BF39: EqI2
  loc_C6BF3A: BranchF loc_C6C1D9
  loc_C6BF3D: LitVarStr var_94, "      <tr>"
  loc_C6BF42: PopAdLdVar
  loc_C6BF43: FLdPr Me
  loc_C6BF46: MemLdRfVar from_stack_1.global_60
  loc_C6BF49: LdPrVar
  loc_C6BF4B: LateMemCall
  loc_C6BF51: LitVarStr var_94, "        <td align=""right"" valign=""top"" class=""Titulo2"">Domicilio Real:</td>"
  loc_C6BF56: PopAdLdVar
  loc_C6BF57: FLdPr Me
  loc_C6BF5A: MemLdRfVar from_stack_1.global_60
  loc_C6BF5D: LdPrVar
  loc_C6BF5F: LateMemCall
  loc_C6BF65: LitVarStr var_110, "        <td colspan=""5"" class=""DatosEncabezado"">"
  loc_C6BF6A: LitVarStr var_A4, vbNullString
  loc_C6BF6F: FStVarCopyObj var_F0
  loc_C6BF72: FLdRfVar var_F0
  loc_C6BF75: LitStr "Calle: "
  loc_C6BF78: FMemLdR4 var_1B8(44)
  loc_C6BF7D: ConcatStr
  loc_C6BF7E: CVarStr var_E0
  loc_C6BF81: FMemLdR4 var_1B8(44)
  loc_C6BF86: LitStr vbNullString
  loc_C6BF89: NeStr
  loc_C6BF8B: CVarBoolI2 var_94
  loc_C6BF8F: FLdRfVar var_100
  loc_C6BF92: ImpAdCallFPR4  = IIf(, , )
  loc_C6BF97: FLdRfVar var_100
  loc_C6BF9A: ConcatVar var_120
  loc_C6BF9E: LitVarStr var_130, " "
  loc_C6BFA3: ConcatVar var_140
  loc_C6BFA7: LitVarStr var_190, vbNullString
  loc_C6BFAC: FStVarCopyObj var_170
  loc_C6BFAF: FLdRfVar var_170
  loc_C6BFB2: LitStr "Nro: "
  loc_C6BFB5: FMemLdR4 var_1B8(48)
  loc_C6BFBA: ConcatStr
  loc_C6BFBB: CVarStr var_160
  loc_C6BFBE: FMemLdR4 var_1B8(48)
  loc_C6BFC3: LitStr vbNullString
  loc_C6BFC6: NeStr
  loc_C6BFC8: CVarBoolI2 var_150
  loc_C6BFCC: FLdRfVar var_180
  loc_C6BFCF: ImpAdCallFPR4  = IIf(, , )
  loc_C6BFD4: FLdRfVar var_180
  loc_C6BFD7: ConcatVar var_1A0
  loc_C6BFDB: LitVarStr var_1B0, " "
  loc_C6BFE0: ConcatVar var_1D0
  loc_C6BFE4: FMemLdR4 var_1B8(64)
  loc_C6BFE9: CVarStr var_1E0
  loc_C6BFEC: ConcatVar var_1F0
  loc_C6BFF0: LitVarStr var_240, "<br>"
  loc_C6BFF5: ConcatVar var_200
  loc_C6BFF9: PopAdLdVar
  loc_C6BFFA: FLdPr Me
  loc_C6BFFD: MemLdRfVar from_stack_1.global_60
  loc_C6C000: LdPrVar
  loc_C6C002: LateMemCall
  loc_C6C008: FFreeVar var_94 = "": var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_150 = "": var_160 = "": var_170 = "": var_140 = "": var_180 = "": var_1A0 = "": var_1D0 = "": var_1F0 = ""
  loc_C6C027: LitVarStr var_110, "                                                 "
  loc_C6C02C: LitVarStr var_A4, vbNullString
  loc_C6C031: FStVarCopyObj var_F0
  loc_C6C034: FLdRfVar var_F0
  loc_C6C037: LitStr "Barrio: "
  loc_C6C03A: FMemLdR4 var_1B8(52)
  loc_C6C03F: ConcatStr
  loc_C6C040: CVarStr var_E0
  loc_C6C043: FMemLdR4 var_1B8(52)
  loc_C6C048: LitStr vbNullString
  loc_C6C04B: NeStr
  loc_C6C04D: CVarBoolI2 var_94
  loc_C6C051: FLdRfVar var_100
  loc_C6C054: ImpAdCallFPR4  = IIf(, , )
  loc_C6C059: FLdRfVar var_100
  loc_C6C05C: ConcatVar var_120
  loc_C6C060: LitVarStr var_130, " "
  loc_C6C065: ConcatVar var_140
  loc_C6C069: LitVarStr var_190, vbNullString
  loc_C6C06E: FStVarCopyObj var_170
  loc_C6C071: FLdRfVar var_170
  loc_C6C074: LitStr "Manz: "
  loc_C6C077: FMemLdR4 var_1B8(56)
  loc_C6C07C: ConcatStr
  loc_C6C07D: CVarStr var_160
  loc_C6C080: FMemLdR4 var_1B8(56)
  loc_C6C085: LitStr vbNullString
  loc_C6C088: NeStr
  loc_C6C08A: CVarBoolI2 var_150
  loc_C6C08E: FLdRfVar var_180
  loc_C6C091: ImpAdCallFPR4  = IIf(, , )
  loc_C6C096: FLdRfVar var_180
  loc_C6C099: ConcatVar var_1A0
  loc_C6C09D: LitVarStr var_1B0, " "
  loc_C6C0A2: ConcatVar var_1D0
  loc_C6C0A6: LitVarStr var_240, vbNullString
  loc_C6C0AB: FStVarCopyObj var_200
  loc_C6C0AE: FLdRfVar var_200
  loc_C6C0B1: LitStr "Casa: "
  loc_C6C0B4: FMemLdR4 var_1B8(60)
  loc_C6C0B9: ConcatStr
  loc_C6C0BA: CVarStr var_1F0
  loc_C6C0BD: FMemLdR4 var_1B8(60)
  loc_C6C0C2: LitStr vbNullString
  loc_C6C0C5: NeStr
  loc_C6C0C7: CVarBoolI2 var_1E0
  loc_C6C0CB: FLdRfVar var_210
  loc_C6C0CE: ImpAdCallFPR4  = IIf(, , )
  loc_C6C0D3: FLdRfVar var_210
  loc_C6C0D6: ConcatVar var_220
  loc_C6C0DA: LitVarStr var_260, "<br>"
  loc_C6C0DF: ConcatVar var_230
  loc_C6C0E3: PopAdLdVar
  loc_C6C0E4: FLdPr Me
  loc_C6C0E7: MemLdRfVar from_stack_1.global_60
  loc_C6C0EA: LdPrVar
  loc_C6C0EC: LateMemCall
  loc_C6C0F2: FFreeVar var_94 = "": var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_150 = "": var_160 = "": var_170 = "": var_140 = "": var_180 = "": var_1A0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_1D0 = "": var_210 = "": var_220 = ""
  loc_C6C119: LitVarStr var_110, "                                                 "
  loc_C6C11E: LitVarStr var_A4, vbNullString
  loc_C6C123: FStVarCopyObj var_F0
  loc_C6C126: FLdRfVar var_F0
  loc_C6C129: LitStr "Localidad: "
  loc_C6C12C: FMemLdR4 var_1B8(68)
  loc_C6C131: ConcatStr
  loc_C6C132: CVarStr var_E0
  loc_C6C135: FMemLdR4 var_1B8(68)
  loc_C6C13A: LitStr vbNullString
  loc_C6C13D: NeStr
  loc_C6C13F: CVarBoolI2 var_94
  loc_C6C143: FLdRfVar var_100
  loc_C6C146: ImpAdCallFPR4  = IIf(, , )
  loc_C6C14B: FLdRfVar var_100
  loc_C6C14E: ConcatVar var_120
  loc_C6C152: LitVarStr var_130, " "
  loc_C6C157: ConcatVar var_140
  loc_C6C15B: LitVarStr var_190, vbNullString
  loc_C6C160: FStVarCopyObj var_170
  loc_C6C163: FLdRfVar var_170
  loc_C6C166: LitStr "C.P:"
  loc_C6C169: FMemLdR4 var_1B8(72)
  loc_C6C16E: ConcatStr
  loc_C6C16F: CVarStr var_160
  loc_C6C172: FMemLdR4 var_1B8(72)
  loc_C6C177: LitStr vbNullString
  loc_C6C17A: NeStr
  loc_C6C17C: CVarBoolI2 var_150
  loc_C6C180: FLdRfVar var_180
  loc_C6C183: ImpAdCallFPR4  = IIf(, , )
  loc_C6C188: FLdRfVar var_180
  loc_C6C18B: ConcatVar var_1A0
  loc_C6C18F: LitVarStr var_1B0, "</td>"
  loc_C6C194: ConcatVar var_1D0
  loc_C6C198: PopAdLdVar
  loc_C6C199: FLdPr Me
  loc_C6C19C: MemLdRfVar from_stack_1.global_60
  loc_C6C19F: LdPrVar
  loc_C6C1A1: LateMemCall
  loc_C6C1A7: FFreeVar var_94 = "": var_E0 = "": var_F0 = "": var_100 = "": var_120 = "": var_150 = "": var_160 = "": var_170 = "": var_140 = "": var_180 = "": var_1A0 = ""
  loc_C6C1C2: LitVarStr var_94, "      </tr>"
  loc_C6C1C7: PopAdLdVar
  loc_C6C1C8: FLdPr Me
  loc_C6C1CB: MemLdRfVar from_stack_1.global_60
  loc_C6C1CE: LdPrVar
  loc_C6C1D0: LateMemCall
  loc_C6C1D6: Branch loc_C6C5F3
  loc_C6C1D9: FLdUI1
  loc_C6C1DD: LitI2_Byte 2
  loc_C6C1DF: CUI1I2
  loc_C6C1E1: EqI2
  loc_C6C1E2: BranchF loc_C6C2B4
  loc_C6C1E5: LitVarStr var_94, "      <tr>"
  loc_C6C1EA: PopAdLdVar
  loc_C6C1EB: FLdPr Me
  loc_C6C1EE: MemLdRfVar from_stack_1.global_60
  loc_C6C1F1: LdPrVar
  loc_C6C1F3: LateMemCall
  loc_C6C1F9: LitVarStr var_94, "        <td align=""right"" valign=""top"" class=""Titulo2"">Domicilio:</td>"
  loc_C6C1FE: PopAdLdVar
  loc_C6C1FF: FLdPr Me
  loc_C6C202: MemLdRfVar from_stack_1.global_60
  loc_C6C205: LdPrVar
  loc_C6C207: LateMemCall
  loc_C6C20D: LitStr "        <td colspan=""3"" class=""DatosEncabezado"">"
  loc_C6C210: FMemLdR4 var_1B8(44)
  loc_C6C215: ConcatStr
  loc_C6C216: FStStrNoPop var_A8
  loc_C6C219: LitStr " "
  loc_C6C21C: ConcatStr
  loc_C6C21D: FStStrNoPop var_AC
  loc_C6C220: FMemLdR4 var_1B8(76)
  loc_C6C225: ConcatStr
  loc_C6C226: FStStrNoPop var_B0
  loc_C6C229: LitStr " "
  loc_C6C22C: ConcatStr
  loc_C6C22D: FStStrNoPop var_B4
  loc_C6C230: FMemLdR4 var_1B8(80)
  loc_C6C235: ConcatStr
  loc_C6C236: FStStrNoPop var_B8
  loc_C6C239: LitStr "<br>"
  loc_C6C23C: ConcatStr
  loc_C6C23D: CVarStr var_E0
  loc_C6C240: PopAdLdVar
  loc_C6C241: FLdPr Me
  loc_C6C244: MemLdRfVar from_stack_1.global_60
  loc_C6C247: LdPrVar
  loc_C6C249: LateMemCall
  loc_C6C24F: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_C6C25C: FFree1Var var_E0 = ""
  loc_C6C25F: LitStr "                                                 "
  loc_C6C262: FMemLdR4 var_1B8(68)
  loc_C6C267: ConcatStr
  loc_C6C268: FStStrNoPop var_A8
  loc_C6C26B: LitStr " "
  loc_C6C26E: ConcatStr
  loc_C6C26F: FStStrNoPop var_AC
  loc_C6C272: FMemLdR4 var_1B8(72)
  loc_C6C277: ConcatStr
  loc_C6C278: FStStrNoPop var_B0
  loc_C6C27B: LitStr "</td>"
  loc_C6C27E: ConcatStr
  loc_C6C27F: CVarStr var_E0
  loc_C6C282: PopAdLdVar
  loc_C6C283: FLdPr Me
  loc_C6C286: MemLdRfVar from_stack_1.global_60
  loc_C6C289: LdPrVar
  loc_C6C28B: LateMemCall
  loc_C6C291: FFreeStr var_A8 = "": var_AC = ""
  loc_C6C29A: FFree1Var var_E0 = ""
  loc_C6C29D: LitVarStr var_94, "      </tr>"
  loc_C6C2A2: PopAdLdVar
  loc_C6C2A3: FLdPr Me
  loc_C6C2A6: MemLdRfVar from_stack_1.global_60
  loc_C6C2A9: LdPrVar
  loc_C6C2AB: LateMemCall
  loc_C6C2B1: Branch loc_C6C5F3
  loc_C6C2B4: FLdUI1
  loc_C6C2B8: LitI2_Byte 4
  loc_C6C2BA: CUI1I2
  loc_C6C2BC: EqI2
  loc_C6C2BD: BranchF loc_C6C365
  loc_C6C2C0: LitVarStr var_94, "      <tr>"
  loc_C6C2C5: PopAdLdVar
  loc_C6C2C6: FLdPr Me
  loc_C6C2C9: MemLdRfVar from_stack_1.global_60
  loc_C6C2CC: LdPrVar
  loc_C6C2CE: LateMemCall
  loc_C6C2D4: LitVarStr var_94, "        <td align=""right"" valign=""top"" class=""Titulo2"">Ubicaci&oacute;n:</td>"
  loc_C6C2D9: PopAdLdVar
  loc_C6C2DA: FLdPr Me
  loc_C6C2DD: MemLdRfVar from_stack_1.global_60
  loc_C6C2E0: LdPrVar
  loc_C6C2E2: LateMemCall
  loc_C6C2E8: LitStr "        <td colspan=""3"" class=""DatosEncabezado"">"
  loc_C6C2EB: FMemLdR4 var_1B8(84)
  loc_C6C2F0: ConcatStr
  loc_C6C2F1: FStStrNoPop var_A8
  loc_C6C2F4: LitStr " "
  loc_C6C2F7: ConcatStr
  loc_C6C2F8: FStStrNoPop var_AC
  loc_C6C2FB: FMemLdR4 var_1B8(88)
  loc_C6C300: ConcatStr
  loc_C6C301: FStStrNoPop var_B0
  loc_C6C304: LitStr " "
  loc_C6C307: ConcatStr
  loc_C6C308: FStStrNoPop var_B4
  loc_C6C30B: FMemLdR4 var_1B8(92)
  loc_C6C310: ConcatStr
  loc_C6C311: FStStrNoPop var_B8
  loc_C6C314: LitStr " "
  loc_C6C317: ConcatStr
  loc_C6C318: FStStrNoPop var_BC
  loc_C6C31B: FMemLdR4 var_1B8(96)
  loc_C6C320: ConcatStr
  loc_C6C321: FStStrNoPop var_C0
  loc_C6C324: LitStr "</td>"
  loc_C6C327: ConcatStr
  loc_C6C328: CVarStr var_E0
  loc_C6C32B: PopAdLdVar
  loc_C6C32C: FLdPr Me
  loc_C6C32F: MemLdRfVar from_stack_1.global_60
  loc_C6C332: LdPrVar
  loc_C6C334: LateMemCall
  loc_C6C33A: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_C6C34B: FFree1Var var_E0 = ""
  loc_C6C34E: LitVarStr var_94, "      </tr>"
  loc_C6C353: PopAdLdVar
  loc_C6C354: FLdPr Me
  loc_C6C357: MemLdRfVar from_stack_1.global_60
  loc_C6C35A: LdPrVar
  loc_C6C35C: LateMemCall
  loc_C6C362: Branch loc_C6C5F3
  loc_C6C365: FLdUI1
  loc_C6C369: LitI2_Byte 5
  loc_C6C36B: CUI1I2
  loc_C6C36D: EqI2
  loc_C6C36E: BranchF loc_C6C440
  loc_C6C371: LitVarStr var_94, "      <tr>"
  loc_C6C376: PopAdLdVar
  loc_C6C377: FLdPr Me
  loc_C6C37A: MemLdRfVar from_stack_1.global_60
  loc_C6C37D: LdPrVar
  loc_C6C37F: LateMemCall
  loc_C6C385: LitVarStr var_94, "        <td align=""right"" valign=""top"" class=""Titulo2"">Domicilio:</td>"
  loc_C6C38A: PopAdLdVar
  loc_C6C38B: FLdPr Me
  loc_C6C38E: MemLdRfVar from_stack_1.global_60
  loc_C6C391: LdPrVar
  loc_C6C393: LateMemCall
  loc_C6C399: LitStr "        <td colspan=""3"" class=""DatosEncabezado"">"
  loc_C6C39C: FMemLdR4 var_1B8(44)
  loc_C6C3A1: ConcatStr
  loc_C6C3A2: FStStrNoPop var_A8
  loc_C6C3A5: LitStr " "
  loc_C6C3A8: ConcatStr
  loc_C6C3A9: FStStrNoPop var_AC
  loc_C6C3AC: FMemLdR4 var_1B8(76)
  loc_C6C3B1: ConcatStr
  loc_C6C3B2: FStStrNoPop var_B0
  loc_C6C3B5: LitStr " "
  loc_C6C3B8: ConcatStr
  loc_C6C3B9: FStStrNoPop var_B4
  loc_C6C3BC: FMemLdR4 var_1B8(80)
  loc_C6C3C1: ConcatStr
  loc_C6C3C2: FStStrNoPop var_B8
  loc_C6C3C5: LitStr "<br>"
  loc_C6C3C8: ConcatStr
  loc_C6C3C9: CVarStr var_E0
  loc_C6C3CC: PopAdLdVar
  loc_C6C3CD: FLdPr Me
  loc_C6C3D0: MemLdRfVar from_stack_1.global_60
  loc_C6C3D3: LdPrVar
  loc_C6C3D5: LateMemCall
  loc_C6C3DB: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_C6C3E8: FFree1Var var_E0 = ""
  loc_C6C3EB: LitStr "                                                 "
  loc_C6C3EE: FMemLdR4 var_1B8(68)
  loc_C6C3F3: ConcatStr
  loc_C6C3F4: FStStrNoPop var_A8
  loc_C6C3F7: LitStr " "
  loc_C6C3FA: ConcatStr
  loc_C6C3FB: FStStrNoPop var_AC
  loc_C6C3FE: FMemLdR4 var_1B8(72)
  loc_C6C403: ConcatStr
  loc_C6C404: FStStrNoPop var_B0
  loc_C6C407: LitStr "</td>"
  loc_C6C40A: ConcatStr
  loc_C6C40B: CVarStr var_E0
  loc_C6C40E: PopAdLdVar
  loc_C6C40F: FLdPr Me
  loc_C6C412: MemLdRfVar from_stack_1.global_60
  loc_C6C415: LdPrVar
  loc_C6C417: LateMemCall
  loc_C6C41D: FFreeStr var_A8 = "": var_AC = ""
  loc_C6C426: FFree1Var var_E0 = ""
  loc_C6C429: LitVarStr var_94, "      </tr>"
  loc_C6C42E: PopAdLdVar
  loc_C6C42F: FLdPr Me
  loc_C6C432: MemLdRfVar from_stack_1.global_60
  loc_C6C435: LdPrVar
  loc_C6C437: LateMemCall
  loc_C6C43D: Branch loc_C6C5F3
  loc_C6C440: FLdUI1
  loc_C6C444: LitI2_Byte 6
  loc_C6C446: CUI1I2
  loc_C6C448: EqI2
  loc_C6C449: BranchF loc_C6C51B
  loc_C6C44C: LitVarStr var_94, "      <tr>"
  loc_C6C451: PopAdLdVar
  loc_C6C452: FLdPr Me
  loc_C6C455: MemLdRfVar from_stack_1.global_60
  loc_C6C458: LdPrVar
  loc_C6C45A: LateMemCall
  loc_C6C460: LitVarStr var_94, "        <td align=""right"" valign=""top"" class=""Titulo2"">Domicilio:</td>"
  loc_C6C465: PopAdLdVar
  loc_C6C466: FLdPr Me
  loc_C6C469: MemLdRfVar from_stack_1.global_60
  loc_C6C46C: LdPrVar
  loc_C6C46E: LateMemCall
  loc_C6C474: LitStr "        <td colspan=""3"" class=""DatosEncabezado"">"
  loc_C6C477: FMemLdR4 var_1B8(44)
  loc_C6C47C: ConcatStr
  loc_C6C47D: FStStrNoPop var_A8
  loc_C6C480: LitStr " "
  loc_C6C483: ConcatStr
  loc_C6C484: FStStrNoPop var_AC
  loc_C6C487: FMemLdR4 var_1B8(76)
  loc_C6C48C: ConcatStr
  loc_C6C48D: FStStrNoPop var_B0
  loc_C6C490: LitStr " "
  loc_C6C493: ConcatStr
  loc_C6C494: FStStrNoPop var_B4
  loc_C6C497: FMemLdR4 var_1B8(80)
  loc_C6C49C: ConcatStr
  loc_C6C49D: FStStrNoPop var_B8
  loc_C6C4A0: LitStr "<br>"
  loc_C6C4A3: ConcatStr
  loc_C6C4A4: CVarStr var_E0
  loc_C6C4A7: PopAdLdVar
  loc_C6C4A8: FLdPr Me
  loc_C6C4AB: MemLdRfVar from_stack_1.global_60
  loc_C6C4AE: LdPrVar
  loc_C6C4B0: LateMemCall
  loc_C6C4B6: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_C6C4C3: FFree1Var var_E0 = ""
  loc_C6C4C6: LitStr "                                                 "
  loc_C6C4C9: FMemLdR4 var_1B8(68)
  loc_C6C4CE: ConcatStr
  loc_C6C4CF: FStStrNoPop var_A8
  loc_C6C4D2: LitStr " "
  loc_C6C4D5: ConcatStr
  loc_C6C4D6: FStStrNoPop var_AC
  loc_C6C4D9: FMemLdR4 var_1B8(72)
  loc_C6C4DE: ConcatStr
  loc_C6C4DF: FStStrNoPop var_B0
  loc_C6C4E2: LitStr "</td>"
  loc_C6C4E5: ConcatStr
  loc_C6C4E6: CVarStr var_E0
  loc_C6C4E9: PopAdLdVar
  loc_C6C4EA: FLdPr Me
  loc_C6C4ED: MemLdRfVar from_stack_1.global_60
  loc_C6C4F0: LdPrVar
  loc_C6C4F2: LateMemCall
  loc_C6C4F8: FFreeStr var_A8 = "": var_AC = ""
  loc_C6C501: FFree1Var var_E0 = ""
  loc_C6C504: LitVarStr var_94, "      </tr>"
  loc_C6C509: PopAdLdVar
  loc_C6C50A: FLdPr Me
  loc_C6C50D: MemLdRfVar from_stack_1.global_60
  loc_C6C510: LdPrVar
  loc_C6C512: LateMemCall
  loc_C6C518: Branch loc_C6C5F3
  loc_C6C51B: FLdUI1
  loc_C6C51F: LitI2_Byte 7
  loc_C6C521: CUI1I2
  loc_C6C523: EqI2
  loc_C6C524: BranchF loc_C6C5F3
  loc_C6C527: LitVarStr var_94, "      <tr>"
  loc_C6C52C: PopAdLdVar
  loc_C6C52D: FLdPr Me
  loc_C6C530: MemLdRfVar from_stack_1.global_60
  loc_C6C533: LdPrVar
  loc_C6C535: LateMemCall
  loc_C6C53B: LitVarStr var_94, "        <td align=""right"" valign=""top"" class=""Titulo2"">Domicilio:</td>"
  loc_C6C540: PopAdLdVar
  loc_C6C541: FLdPr Me
  loc_C6C544: MemLdRfVar from_stack_1.global_60
  loc_C6C547: LdPrVar
  loc_C6C549: LateMemCall
  loc_C6C54F: LitStr "        <td colspan=""3"" class=""DatosEncabezado"">"
  loc_C6C552: FMemLdR4 var_1B8(44)
  loc_C6C557: ConcatStr
  loc_C6C558: FStStrNoPop var_A8
  loc_C6C55B: LitStr " "
  loc_C6C55E: ConcatStr
  loc_C6C55F: FStStrNoPop var_AC
  loc_C6C562: FMemLdR4 var_1B8(76)
  loc_C6C567: ConcatStr
  loc_C6C568: FStStrNoPop var_B0
  loc_C6C56B: LitStr " "
  loc_C6C56E: ConcatStr
  loc_C6C56F: FStStrNoPop var_B4
  loc_C6C572: FMemLdR4 var_1B8(80)
  loc_C6C577: ConcatStr
  loc_C6C578: FStStrNoPop var_B8
  loc_C6C57B: LitStr "<br>"
  loc_C6C57E: ConcatStr
  loc_C6C57F: CVarStr var_E0
  loc_C6C582: PopAdLdVar
  loc_C6C583: FLdPr Me
  loc_C6C586: MemLdRfVar from_stack_1.global_60
  loc_C6C589: LdPrVar
  loc_C6C58B: LateMemCall
  loc_C6C591: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_C6C59E: FFree1Var var_E0 = ""
  loc_C6C5A1: LitStr "                                                 "
  loc_C6C5A4: FMemLdR4 var_1B8(68)
  loc_C6C5A9: ConcatStr
  loc_C6C5AA: FStStrNoPop var_A8
  loc_C6C5AD: LitStr " "
  loc_C6C5B0: ConcatStr
  loc_C6C5B1: FStStrNoPop var_AC
  loc_C6C5B4: FMemLdR4 var_1B8(72)
  loc_C6C5B9: ConcatStr
  loc_C6C5BA: FStStrNoPop var_B0
  loc_C6C5BD: LitStr "</td>"
  loc_C6C5C0: ConcatStr
  loc_C6C5C1: CVarStr var_E0
  loc_C6C5C4: PopAdLdVar
  loc_C6C5C5: FLdPr Me
  loc_C6C5C8: MemLdRfVar from_stack_1.global_60
  loc_C6C5CB: LdPrVar
  loc_C6C5CD: LateMemCall
  loc_C6C5D3: FFreeStr var_A8 = "": var_AC = ""
  loc_C6C5DC: FFree1Var var_E0 = ""
  loc_C6C5DF: LitVarStr var_94, "      </tr>"
  loc_C6C5E4: PopAdLdVar
  loc_C6C5E5: FLdPr Me
  loc_C6C5E8: MemLdRfVar from_stack_1.global_60
  loc_C6C5EB: LdPrVar
  loc_C6C5ED: LateMemCall
  loc_C6C5F3: LitVarStr var_94, "    </table></th>"
  loc_C6C5F8: PopAdLdVar
  loc_C6C5F9: FLdPr Me
  loc_C6C5FC: MemLdRfVar from_stack_1.global_60
  loc_C6C5FF: LdPrVar
  loc_C6C601: LateMemCall
  loc_C6C607: LitVarStr var_94, "  </tr>"
  loc_C6C60C: PopAdLdVar
  loc_C6C60D: FLdPr Me
  loc_C6C610: MemLdRfVar from_stack_1.global_60
  loc_C6C613: LdPrVar
  loc_C6C615: LateMemCall
  loc_C6C61B: LitI4 0
  loc_C6C620: FStR4 var_1B8
  loc_C6C623: AryUnlock
  loc_C6C626: LitVarStr var_94, "  <tr valign=""baseline"" class=""Titulo2"">"
  loc_C6C62B: PopAdLdVar
  loc_C6C62C: FLdPr Me
  loc_C6C62F: MemLdRfVar from_stack_1.global_60
  loc_C6C632: LdPrVar
  loc_C6C634: LateMemCall
  loc_C6C63A: LitVarStr var_94, "    <th colspan=""4"" align=""left"" valign=""top"" class=""DatosEncabezado""><br>"
  loc_C6C63F: PopAdLdVar
  loc_C6C640: FLdPr Me
  loc_C6C643: MemLdRfVar from_stack_1.global_60
  loc_C6C646: LdPrVar
  loc_C6C648: LateMemCall
  loc_C6C64E: FLdRfVar var_368
  loc_C6C651: FLdPr Me
  loc_C6C654: VCallAd Control_ID_PeriodoOpt
  loc_C6C657: FStAdFunc var_364
  loc_C6C65A: FLdPr var_364
  loc_C6C65D:  = Me.Value
  loc_C6C662: FLdI2 var_368
  loc_C6C665: FFree1Ad var_364
  loc_C6C668: BranchF loc_C6C6E1
  loc_C6C66B: LitStr "    Desde: "
  loc_C6C66E: FLdPr Me
  loc_C6C671: VCallAd Control_ID_PeriDesdeMsk
  loc_C6C674: FStAdFunc var_364
  loc_C6C677: FLdPr var_364
  loc_C6C67A: LateIdLdVar var_E0 DispID_0 0
  loc_C6C681: CStrVarTmp
  loc_C6C682: FStStrNoPop var_A8
  loc_C6C685: ConcatStr
  loc_C6C686: FStStrNoPop var_AC
  loc_C6C689: LitStr "<br>Hasta: "
  loc_C6C68C: ConcatStr
  loc_C6C68D: FStStrNoPop var_B0
  loc_C6C690: FLdPr Me
  loc_C6C693: VCallAd Control_ID_PeriHastaMsk
  loc_C6C696: FStAdFunc var_36C
  loc_C6C699: FLdPr var_36C
  loc_C6C69C: LateIdLdVar var_F0 DispID_0 0
  loc_C6C6A3: CStrVarTmp
  loc_C6C6A4: FStStrNoPop var_B4
  loc_C6C6A7: ConcatStr
  loc_C6C6A8: FStStrNoPop var_B8
  loc_C6C6AB: LitStr "<br>"
  loc_C6C6AE: ConcatStr
  loc_C6C6AF: CVarStr var_100
  loc_C6C6B2: PopAdLdVar
  loc_C6C6B3: FLdPr Me
  loc_C6C6B6: MemLdRfVar from_stack_1.global_60
  loc_C6C6B9: LdPrVar
  loc_C6C6BB: LateMemCall
  loc_C6C6C1: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_C6C6CE: FFreeAd var_364 = ""
  loc_C6C6D5: FFreeVar var_E0 = "": var_F0 = ""
  loc_C6C6DE: Branch loc_C6C754
  loc_C6C6E1: LitStr "    Desde: "
  loc_C6C6E4: FLdPr Me
  loc_C6C6E7: VCallAd Control_ID_mskDesde
  loc_C6C6EA: FStAdFunc var_364
  loc_C6C6ED: FLdPr var_364
  loc_C6C6F0: LateIdLdVar var_E0 DispID_15 0
  loc_C6C6F7: CStrVarTmp
  loc_C6C6F8: FStStrNoPop var_A8
  loc_C6C6FB: ConcatStr
  loc_C6C6FC: FStStrNoPop var_AC
  loc_C6C6FF: LitStr "<br>Hasta: "
  loc_C6C702: ConcatStr
  loc_C6C703: FStStrNoPop var_B0
  loc_C6C706: FLdPr Me
  loc_C6C709: VCallAd Control_ID_mskHasta
  loc_C6C70C: FStAdFunc var_36C
  loc_C6C70F: FLdPr var_36C
  loc_C6C712: LateIdLdVar var_F0 DispID_15 0
  loc_C6C719: CStrVarTmp
  loc_C6C71A: FStStrNoPop var_B4
  loc_C6C71D: ConcatStr
  loc_C6C71E: FStStrNoPop var_B8
  loc_C6C721: LitStr "<br>"
  loc_C6C724: ConcatStr
  loc_C6C725: CVarStr var_100
  loc_C6C728: PopAdLdVar
  loc_C6C729: FLdPr Me
  loc_C6C72C: MemLdRfVar from_stack_1.global_60
  loc_C6C72F: LdPrVar
  loc_C6C731: LateMemCall
  loc_C6C737: FFreeStr var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_C6C744: FFreeAd var_364 = ""
  loc_C6C74B: FFreeVar var_E0 = "": var_F0 = ""
  loc_C6C754: LitVarStr var_94, "    Notificamos a Ud. que a la fecha, en nuestros registros figuran impagos los siguientes conceptos:</th>"
  loc_C6C759: PopAdLdVar
  loc_C6C75A: FLdPr Me
  loc_C6C75D: MemLdRfVar from_stack_1.global_60
  loc_C6C760: LdPrVar
  loc_C6C762: LateMemCall
  loc_C6C768: LitVarStr var_94, "  </tr>"
  loc_C6C76D: PopAdLdVar
  loc_C6C76E: FLdPr Me
  loc_C6C771: MemLdRfVar from_stack_1.global_60
  loc_C6C774: LdPrVar
  loc_C6C776: LateMemCall
  loc_C6C77C: LitVarStr var_94, "</table>"
  loc_C6C781: PopAdLdVar
  loc_C6C782: FLdPr Me
  loc_C6C785: MemLdRfVar from_stack_1.global_60
  loc_C6C788: LdPrVar
  loc_C6C78A: LateMemCall
  loc_C6C790: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C6C795: PopAdLdVar
  loc_C6C796: FLdPr Me
  loc_C6C799: MemLdRfVar from_stack_1.global_60
  loc_C6C79C: LdPrVar
  loc_C6C79E: LateMemCall
  loc_C6C7A4: LitVarStr var_94, " <THEAD>"
  loc_C6C7A9: PopAdLdVar
  loc_C6C7AA: FLdPr Me
  loc_C6C7AD: MemLdRfVar from_stack_1.global_60
  loc_C6C7B0: LdPrVar
  loc_C6C7B2: LateMemCall
  loc_C6C7B8: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_C6C7BD: PopAdLdVar
  loc_C6C7BE: FLdPr Me
  loc_C6C7C1: MemLdRfVar from_stack_1.global_60
  loc_C6C7C4: LdPrVar
  loc_C6C7C6: LateMemCall
  loc_C6C7CC: LitVarStr var_94, "     <th>Periodo</th>"
  loc_C6C7D1: PopAdLdVar
  loc_C6C7D2: FLdPr Me
  loc_C6C7D5: MemLdRfVar from_stack_1.global_60
  loc_C6C7D8: LdPrVar
  loc_C6C7DA: LateMemCall
  loc_C6C7E0: LitVarStr var_94, "     <th>Boleto</th>"
  loc_C6C7E5: PopAdLdVar
  loc_C6C7E6: FLdPr Me
  loc_C6C7E9: MemLdRfVar from_stack_1.global_60
  loc_C6C7EC: LdPrVar
  loc_C6C7EE: LateMemCall
  loc_C6C7F4: LitVarStr var_94, "     <th>Fecha<br>Vencimiento/Pago</th>"
  loc_C6C7F9: PopAdLdVar
  loc_C6C7FA: FLdPr Me
  loc_C6C7FD: MemLdRfVar from_stack_1.global_60
  loc_C6C800: LdPrVar
  loc_C6C802: LateMemCall
  loc_C6C808: LitVarStr var_94, "     <th>Concepto</th>"
  loc_C6C80D: PopAdLdVar
  loc_C6C80E: FLdPr Me
  loc_C6C811: MemLdRfVar from_stack_1.global_60
  loc_C6C814: LdPrVar
  loc_C6C816: LateMemCall
  loc_C6C81C: LitVarStr var_94, "     <th>Facilidad</th>"
  loc_C6C821: PopAdLdVar
  loc_C6C822: FLdPr Me
  loc_C6C825: MemLdRfVar from_stack_1.global_60
  loc_C6C828: LdPrVar
  loc_C6C82A: LateMemCall
  loc_C6C830: LitVarStr var_94, "     <th>Apremio</th>"
  loc_C6C835: PopAdLdVar
  loc_C6C836: FLdPr Me
  loc_C6C839: MemLdRfVar from_stack_1.global_60
  loc_C6C83C: LdPrVar
  loc_C6C83E: LateMemCall
  loc_C6C844: LitVarStr var_94, "     <th><p>Expediente/<br>Comprobante</p></th>"
  loc_C6C849: PopAdLdVar
  loc_C6C84A: FLdPr Me
  loc_C6C84D: MemLdRfVar from_stack_1.global_60
  loc_C6C850: LdPrVar
  loc_C6C852: LateMemCall
  loc_C6C858: LitVarStr var_94, "     <th>Tipo de<br>Movimiento</th>"
  loc_C6C85D: PopAdLdVar
  loc_C6C85E: FLdPr Me
  loc_C6C861: MemLdRfVar from_stack_1.global_60
  loc_C6C864: LdPrVar
  loc_C6C866: LateMemCall
  loc_C6C86C: LitVarStr var_94, "     <th>Ente<br>Recaudador</th>"
  loc_C6C871: PopAdLdVar
  loc_C6C872: FLdPr Me
  loc_C6C875: MemLdRfVar from_stack_1.global_60
  loc_C6C878: LdPrVar
  loc_C6C87A: LateMemCall
  loc_C6C880: LitVarStr var_94, "     <th>D&eacute;bito</th>"
  loc_C6C885: PopAdLdVar
  loc_C6C886: FLdPr Me
  loc_C6C889: MemLdRfVar from_stack_1.global_60
  loc_C6C88C: LdPrVar
  loc_C6C88E: LateMemCall
  loc_C6C894: LitVarStr var_94, "     <th>Cr&eacute;dito</th>"
  loc_C6C899: PopAdLdVar
  loc_C6C89A: FLdPr Me
  loc_C6C89D: MemLdRfVar from_stack_1.global_60
  loc_C6C8A0: LdPrVar
  loc_C6C8A2: LateMemCall
  loc_C6C8A8: LitVarStr var_94, "     <th>Recargo</th>"
  loc_C6C8AD: PopAdLdVar
  loc_C6C8AE: FLdPr Me
  loc_C6C8B1: MemLdRfVar from_stack_1.global_60
  loc_C6C8B4: LdPrVar
  loc_C6C8B6: LateMemCall
  loc_C6C8BC: LitVarStr var_94, "     <th>Saldo</th>"
  loc_C6C8C1: PopAdLdVar
  loc_C6C8C2: FLdPr Me
  loc_C6C8C5: MemLdRfVar from_stack_1.global_60
  loc_C6C8C8: LdPrVar
  loc_C6C8CA: LateMemCall
  loc_C6C8D0: LitVarStr var_94, "  </tr>"
  loc_C6C8D5: PopAdLdVar
  loc_C6C8D6: FLdPr Me
  loc_C6C8D9: MemLdRfVar from_stack_1.global_60
  loc_C6C8DC: LdPrVar
  loc_C6C8DE: LateMemCall
  loc_C6C8E4: LitVarStr var_94, " </THEAD>"
  loc_C6C8E9: PopAdLdVar
  loc_C6C8EA: FLdPr Me
  loc_C6C8ED: MemLdRfVar from_stack_1.global_60
  loc_C6C8F0: LdPrVar
  loc_C6C8F2: LateMemCall
  loc_C6C8F8: ExitProcHresult
End Function

Private Function Proc_278_30_B9B0A8() 'B9B0A8
  'Data Table: 4F3BDC
  loc_B9AB10: LitVarStr var_94, " <TFOOT>"
  loc_B9AB15: PopAdLdVar
  loc_B9AB16: FLdPr Me
  loc_B9AB19: MemLdRfVar from_stack_1.global_60
  loc_B9AB1C: LdPrVar
  loc_B9AB1E: LateMemCall
  loc_B9AB24: LitVarStr var_94, " <tr>"
  loc_B9AB29: PopAdLdVar
  loc_B9AB2A: FLdPr Me
  loc_B9AB2D: MemLdRfVar from_stack_1.global_60
  loc_B9AB30: LdPrVar
  loc_B9AB32: LateMemCall
  loc_B9AB38: LitStr "     <td colspan=""13"" align=""left"" class=""LineaDato""><br>Referencia: "
  loc_B9AB3B: FLdRfVar var_AC
  loc_B9AB3E: FLdPr Me
  loc_B9AB41: VCallAd Control_ID_CodiOficCbo
  loc_B9AB44: FStAdFunc var_A8
  loc_B9AB47: FLdPr var_A8
  loc_B9AB4A:  = Me.Text
  loc_B9AB4F: ILdRf var_AC
  loc_B9AB52: ConcatStr
  loc_B9AB53: FStStrNoPop var_B0
  loc_B9AB56: LitStr " - Cuenta: "
  loc_B9AB59: ConcatStr
  loc_B9AB5A: FStStrNoPop var_BC
  loc_B9AB5D: FLdRfVar var_B8
  loc_B9AB60: FLdPr Me
  loc_B9AB63: VCallAd Control_ID_CuenCtCtTxt
  loc_B9AB66: FStAdFunc var_B4
  loc_B9AB69: FLdPr var_B4
  loc_B9AB6C:  = Me.Text
  loc_B9AB71: ILdRf var_B8
  loc_B9AB74: ConcatStr
  loc_B9AB75: FStStrNoPop var_C0
  loc_B9AB78: LitStr "</td>"
  loc_B9AB7B: ConcatStr
  loc_B9AB7C: CVarStr var_D0
  loc_B9AB7F: PopAdLdVar
  loc_B9AB80: FLdPr Me
  loc_B9AB83: MemLdRfVar from_stack_1.global_60
  loc_B9AB86: LdPrVar
  loc_B9AB88: LateMemCall
  loc_B9AB8E: FFreeStr var_AC = "": var_B0 = "": var_BC = "": var_B8 = ""
  loc_B9AB9B: FFreeAd var_A8 = ""
  loc_B9ABA2: FFree1Var var_D0 = ""
  loc_B9ABA5: LitVarStr var_94, "  </tr>"
  loc_B9ABAA: PopAdLdVar
  loc_B9ABAB: FLdPr Me
  loc_B9ABAE: MemLdRfVar from_stack_1.global_60
  loc_B9ABB1: LdPrVar
  loc_B9ABB3: LateMemCall
  loc_B9ABB9: LitVarStr var_94, " </TFOOT>"
  loc_B9ABBE: PopAdLdVar
  loc_B9ABBF: FLdPr Me
  loc_B9ABC2: MemLdRfVar from_stack_1.global_60
  loc_B9ABC5: LdPrVar
  loc_B9ABC7: LateMemCall
  loc_B9ABCD: LitVarStr var_94, "</table>"
  loc_B9ABD2: PopAdLdVar
  loc_B9ABD3: FLdPr Me
  loc_B9ABD6: MemLdRfVar from_stack_1.global_60
  loc_B9ABD9: LdPrVar
  loc_B9ABDB: LateMemCall
  loc_B9ABE1: LitVarStr var_94, "<br>"
  loc_B9ABE6: PopAdLdVar
  loc_B9ABE7: FLdPr Me
  loc_B9ABEA: MemLdRfVar from_stack_1.global_60
  loc_B9ABED: LdPrVar
  loc_B9ABEF: LateMemCall
  loc_B9ABF5: LitVarStr var_94, "<table border=""0"" align=""center"">"
  loc_B9ABFA: PopAdLdVar
  loc_B9ABFB: FLdPr Me
  loc_B9ABFE: MemLdRfVar from_stack_1.global_60
  loc_B9AC01: LdPrVar
  loc_B9AC03: LateMemCall
  loc_B9AC09: LitVarStr var_94, "  <tr class=""EncabezadoTotales"">"
  loc_B9AC0E: PopAdLdVar
  loc_B9AC0F: FLdPr Me
  loc_B9AC12: MemLdRfVar from_stack_1.global_60
  loc_B9AC15: LdPrVar
  loc_B9AC17: LateMemCall
  loc_B9AC1D: LitVarStr var_94, "    <td colspan=""2"" align=""center"">Totales</td>"
  loc_B9AC22: PopAdLdVar
  loc_B9AC23: FLdPr Me
  loc_B9AC26: MemLdRfVar from_stack_1.global_60
  loc_B9AC29: LdPrVar
  loc_B9AC2B: LateMemCall
  loc_B9AC31: LitVarStr var_94, "  </tr>"
  loc_B9AC36: PopAdLdVar
  loc_B9AC37: FLdPr Me
  loc_B9AC3A: MemLdRfVar from_stack_1.global_60
  loc_B9AC3D: LdPrVar
  loc_B9AC3F: LateMemCall
  loc_B9AC45: LitVarStr var_94, "  <tr align=""right"">"
  loc_B9AC4A: PopAdLdVar
  loc_B9AC4B: FLdPr Me
  loc_B9AC4E: MemLdRfVar from_stack_1.global_60
  loc_B9AC51: LdPrVar
  loc_B9AC53: LateMemCall
  loc_B9AC59: LitVarStr var_94, "    <td width=""58"" class=""EncabezadoTotales"">Derecho:</td>"
  loc_B9AC5E: PopAdLdVar
  loc_B9AC5F: FLdPr Me
  loc_B9AC62: MemLdRfVar from_stack_1.global_60
  loc_B9AC65: LdPrVar
  loc_B9AC67: LateMemCall
  loc_B9AC6D: LitStr "    <td width=""111"" class=""Totales"">"
  loc_B9AC70: FLdPr Me
  loc_B9AC73: MemLdStr global_116
  loc_B9AC76: ConcatStr
  loc_B9AC77: FStStrNoPop var_AC
  loc_B9AC7A: LitStr "</td>"
  loc_B9AC7D: ConcatStr
  loc_B9AC7E: CVarStr var_D0
  loc_B9AC81: PopAdLdVar
  loc_B9AC82: FLdPr Me
  loc_B9AC85: MemLdRfVar from_stack_1.global_60
  loc_B9AC88: LdPrVar
  loc_B9AC8A: LateMemCall
  loc_B9AC90: FFree1Str var_AC
  loc_B9AC93: FFree1Var var_D0 = ""
  loc_B9AC96: LitVarStr var_94, "  </tr>"
  loc_B9AC9B: PopAdLdVar
  loc_B9AC9C: FLdPr Me
  loc_B9AC9F: MemLdRfVar from_stack_1.global_60
  loc_B9ACA2: LdPrVar
  loc_B9ACA4: LateMemCall
  loc_B9ACAA: LitVarStr var_94, "  <tr align=""right"">"
  loc_B9ACAF: PopAdLdVar
  loc_B9ACB0: FLdPr Me
  loc_B9ACB3: MemLdRfVar from_stack_1.global_60
  loc_B9ACB6: LdPrVar
  loc_B9ACB8: LateMemCall
  loc_B9ACBE: LitVarStr var_94, "    <td class=""EncabezadoTotales"">Recargo:</td>"
  loc_B9ACC3: PopAdLdVar
  loc_B9ACC4: FLdPr Me
  loc_B9ACC7: MemLdRfVar from_stack_1.global_60
  loc_B9ACCA: LdPrVar
  loc_B9ACCC: LateMemCall
  loc_B9ACD2: LitStr "    <td class=""Totales"">"
  loc_B9ACD5: FLdPr Me
  loc_B9ACD8: MemLdStr global_124
  loc_B9ACDB: ConcatStr
  loc_B9ACDC: FStStrNoPop var_AC
  loc_B9ACDF: LitStr "</td>"
  loc_B9ACE2: ConcatStr
  loc_B9ACE3: CVarStr var_D0
  loc_B9ACE6: PopAdLdVar
  loc_B9ACE7: FLdPr Me
  loc_B9ACEA: MemLdRfVar from_stack_1.global_60
  loc_B9ACED: LdPrVar
  loc_B9ACEF: LateMemCall
  loc_B9ACF5: FFree1Str var_AC
  loc_B9ACF8: FFree1Var var_D0 = ""
  loc_B9ACFB: LitVarStr var_94, "  </tr>"
  loc_B9AD00: PopAdLdVar
  loc_B9AD01: FLdPr Me
  loc_B9AD04: MemLdRfVar from_stack_1.global_60
  loc_B9AD07: LdPrVar
  loc_B9AD09: LateMemCall
  loc_B9AD0F: LitVarStr var_94, "  <tr align=""right"">"
  loc_B9AD14: PopAdLdVar
  loc_B9AD15: FLdPr Me
  loc_B9AD18: MemLdRfVar from_stack_1.global_60
  loc_B9AD1B: LdPrVar
  loc_B9AD1D: LateMemCall
  loc_B9AD23: LitVarStr var_94, "    <td class=""EncabezadoTotales"">Apremio:</td>"
  loc_B9AD28: PopAdLdVar
  loc_B9AD29: FLdPr Me
  loc_B9AD2C: MemLdRfVar from_stack_1.global_60
  loc_B9AD2F: LdPrVar
  loc_B9AD31: LateMemCall
  loc_B9AD37: LitStr "    <td class=""Totales"">"
  loc_B9AD3A: FLdPr Me
  loc_B9AD3D: MemLdStr global_128
  loc_B9AD40: ConcatStr
  loc_B9AD41: FStStrNoPop var_AC
  loc_B9AD44: LitStr "</td>"
  loc_B9AD47: ConcatStr
  loc_B9AD48: CVarStr var_D0
  loc_B9AD4B: PopAdLdVar
  loc_B9AD4C: FLdPr Me
  loc_B9AD4F: MemLdRfVar from_stack_1.global_60
  loc_B9AD52: LdPrVar
  loc_B9AD54: LateMemCall
  loc_B9AD5A: FFree1Str var_AC
  loc_B9AD5D: FFree1Var var_D0 = ""
  loc_B9AD60: LitVarStr var_94, "  </tr>"
  loc_B9AD65: PopAdLdVar
  loc_B9AD66: FLdPr Me
  loc_B9AD69: MemLdRfVar from_stack_1.global_60
  loc_B9AD6C: LdPrVar
  loc_B9AD6E: LateMemCall
  loc_B9AD74: LitVarStr var_94, "  <tr align=""right"">"
  loc_B9AD79: PopAdLdVar
  loc_B9AD7A: FLdPr Me
  loc_B9AD7D: MemLdRfVar from_stack_1.global_60
  loc_B9AD80: LdPrVar
  loc_B9AD82: LateMemCall
  loc_B9AD88: LitVarStr var_94, "    <td class=""EncabezadoTotales"">TOTAL:</td>"
  loc_B9AD8D: PopAdLdVar
  loc_B9AD8E: FLdPr Me
  loc_B9AD91: MemLdRfVar from_stack_1.global_60
  loc_B9AD94: LdPrVar
  loc_B9AD96: LateMemCall
  loc_B9AD9C: LitStr "    <td class=""Total"">"
  loc_B9AD9F: FLdPr Me
  loc_B9ADA2: MemLdStr global_132
  loc_B9ADA5: ConcatStr
  loc_B9ADA6: FStStrNoPop var_AC
  loc_B9ADA9: LitStr "</td>"
  loc_B9ADAC: ConcatStr
  loc_B9ADAD: CVarStr var_D0
  loc_B9ADB0: PopAdLdVar
  loc_B9ADB1: FLdPr Me
  loc_B9ADB4: MemLdRfVar from_stack_1.global_60
  loc_B9ADB7: LdPrVar
  loc_B9ADB9: LateMemCall
  loc_B9ADBF: FFree1Str var_AC
  loc_B9ADC2: FFree1Var var_D0 = ""
  loc_B9ADC5: LitVarStr var_94, "  </tr>"
  loc_B9ADCA: PopAdLdVar
  loc_B9ADCB: FLdPr Me
  loc_B9ADCE: MemLdRfVar from_stack_1.global_60
  loc_B9ADD1: LdPrVar
  loc_B9ADD3: LateMemCall
  loc_B9ADD9: LitVarStr var_94, "</table>"
  loc_B9ADDE: PopAdLdVar
  loc_B9ADDF: FLdPr Me
  loc_B9ADE2: MemLdRfVar from_stack_1.global_60
  loc_B9ADE5: LdPrVar
  loc_B9ADE7: LateMemCall
  loc_B9ADED: LitStr "<p class=""DatosEncabezado"">Por lo expuesto, el total adeudado asciende a la suma de <strong>$ "
  loc_B9ADF0: FLdPr Me
  loc_B9ADF3: MemLdStr global_132
  loc_B9ADF6: ConcatStr
  loc_B9ADF7: FStStrNoPop var_AC
  loc_B9ADFA: LitStr " (pesos "
  loc_B9ADFD: ConcatStr
  loc_B9ADFE: CVarStr var_F0
  loc_B9AE01: FLdPr Me
  loc_B9AE04: MemLdStr global_132
  loc_B9AE07: CR8Str
  loc_B9AE09: PopFPR8
  loc_B9AE0A: ImpAdCallI2  = Proc_272_28_AB2798()
  loc_B9AE0F: CVarStr var_D0
  loc_B9AE12: FLdRfVar var_E0
  loc_B9AE15: ImpAdCallFPR4  = LCase()
  loc_B9AE1A: FLdRfVar var_E0
  loc_B9AE1D: ConcatVar var_100
  loc_B9AE21: LitVarStr var_94, ")</strong>.<br>"
  loc_B9AE26: ConcatVar var_110
  loc_B9AE2A: PopAdLdVar
  loc_B9AE2B: FLdPr Me
  loc_B9AE2E: MemLdRfVar from_stack_1.global_60
  loc_B9AE31: LdPrVar
  loc_B9AE33: LateMemCall
  loc_B9AE39: FFree1Str var_AC
  loc_B9AE3C: FFreeVar var_D0 = "": var_F0 = "": var_E0 = "": var_100 = ""
  loc_B9AE49: LitVarStr var_94, "Se le hace saber adem&aacute;s que, si decidiera interponer reclamo alguno, deber&aacute; hacerlo munido de los comprobantes que acreditan el pago de los conceptos detallados.</p>"
  loc_B9AE4E: PopAdLdVar
  loc_B9AE4F: FLdPr Me
  loc_B9AE52: MemLdRfVar from_stack_1.global_60
  loc_B9AE55: LdPrVar
  loc_B9AE57: LateMemCall
  loc_B9AE5D: FLdRfVar var_114
  loc_B9AE60: FLdPr Me
  loc_B9AE63: MemLdRfVar from_stack_1.global_84
  loc_B9AE66: NewIfNullPr clsctacte
  loc_B9AE69: from_stack_1 = clsctacte.RecordCount
  loc_B9AE6E: ILdRf var_114
  loc_B9AE71: LitI4 0
  loc_B9AE76: GtI4
  loc_B9AE77: BranchF loc_B9AF47
  loc_B9AE7A: LitVarStr var_94, "<p class=""DatosEncabezado"">"
  loc_B9AE7F: PopAdLdVar
  loc_B9AE80: FLdPr Me
  loc_B9AE83: MemLdRfVar from_stack_1.global_60
  loc_B9AE86: LdPrVar
  loc_B9AE88: LateMemCall
  loc_B9AE8E: FLdPr Me
  loc_B9AE91: MemLdRfVar from_stack_1.global_84
  loc_B9AE94: NewIfNullPr clsctacte
  loc_B9AE97: Call clsctacte.MoveFirst()
  loc_B9AE9C: FLdRfVar var_116
  loc_B9AE9F: FLdPr Me
  loc_B9AEA2: MemLdRfVar from_stack_1.global_84
  loc_B9AEA5: NewIfNullPr clsctacte
  loc_B9AEA8: from_stack_1 = clsctacte.EOF
  loc_B9AEAD: FLdI2 var_116
  loc_B9AEB0: NotI4
  loc_B9AEB1: BranchF loc_B9AF33
  loc_B9AEB4: LitVarStr var_A4, "<strong>"
  loc_B9AEB9: FLdRfVar var_D0
  loc_B9AEBC: FLdRfVar var_11C
  loc_B9AEBF: LitVarStr var_94, "Detalle"
  loc_B9AEC4: PopAdLdVar
  loc_B9AEC5: FLdRfVar var_B4
  loc_B9AEC8: FLdRfVar var_A8
  loc_B9AECB: FLdPr Me
  loc_B9AECE: MemLdRfVar from_stack_1.global_84
  loc_B9AED1: NewIfNullPr clsctacte
  loc_B9AED4: from_stack_1v = clsctacte.RsFrmGet()
  loc_B9AED9: FLdPr var_A8
  loc_B9AEDC:  = Me.Fields
  loc_B9AEE1: FLdPr var_B4
  loc_B9AEE4: from_stack_2 = Me.Item(from_stack_1)
  loc_B9AEE9: FLdPr var_11C
  loc_B9AEEC:  = Me.Value
  loc_B9AEF1: FLdRfVar var_D0
  loc_B9AEF4: ConcatVar var_E0
  loc_B9AEF8: LitVarStr var_12C, "</strong>.<br>"
  loc_B9AEFD: ConcatVar var_F0
  loc_B9AF01: PopAdLdVar
  loc_B9AF02: FLdPr Me
  loc_B9AF05: MemLdRfVar from_stack_1.global_60
  loc_B9AF08: LdPrVar
  loc_B9AF0A: LateMemCall
  loc_B9AF10: FFreeAd var_A8 = "": var_B4 = ""
  loc_B9AF19: FFreeVar var_D0 = "": var_E0 = ""
  loc_B9AF22: FLdPr Me
  loc_B9AF25: MemLdRfVar from_stack_1.global_84
  loc_B9AF28: NewIfNullPr clsctacte
  loc_B9AF2B: Call clsctacte.MoveSiguiente()
  loc_B9AF30: Branch loc_B9AE9C
  loc_B9AF33: LitVarStr var_94, "</p>"
  loc_B9AF38: PopAdLdVar
  loc_B9AF39: FLdPr Me
  loc_B9AF3C: MemLdRfVar from_stack_1.global_60
  loc_B9AF3F: LdPrVar
  loc_B9AF41: LateMemCall
  loc_B9AF47: FLdRfVar var_114
  loc_B9AF4A: FLdPr Me
  loc_B9AF4D: MemLdRfVar from_stack_1.global_88
  loc_B9AF50: NewIfNullPr clsctacte
  loc_B9AF53: from_stack_1 = clsctacte.RecordCount
  loc_B9AF58: ILdRf var_114
  loc_B9AF5B: LitI4 0
  loc_B9AF60: GtI4
  loc_B9AF61: BranchF loc_B9AFAE
  loc_B9AF64: FLdPr Me
  loc_B9AF67: MemLdRfVar from_stack_1.global_88
  loc_B9AF6A: NewIfNullPr clsctacte
  loc_B9AF6D: Call clsctacte.MoveFirst()
  loc_B9AF72: LitVarStr var_94, "<p class=""DatosEncabezado"">"
  loc_B9AF77: PopAdLdVar
  loc_B9AF78: FLdPr Me
  loc_B9AF7B: MemLdRfVar from_stack_1.global_60
  loc_B9AF7E: LdPrVar
  loc_B9AF80: LateMemCall
  loc_B9AF86: LitVarStr var_94, "<strong>LA CUENTA TIENE APREMIO PENDIENTES, VERIFIQUE....</strong>.<br>"
  loc_B9AF8B: PopAdLdVar
  loc_B9AF8C: FLdPr Me
  loc_B9AF8F: MemLdRfVar from_stack_1.global_60
  loc_B9AF92: LdPrVar
  loc_B9AF94: LateMemCall
  loc_B9AF9A: LitVarStr var_94, "</p>"
  loc_B9AF9F: PopAdLdVar
  loc_B9AFA0: FLdPr Me
  loc_B9AFA3: MemLdRfVar from_stack_1.global_60
  loc_B9AFA6: LdPrVar
  loc_B9AFA8: LateMemCall
  loc_B9AFAE: FLdRfVar var_114
  loc_B9AFB1: FLdPr Me
  loc_B9AFB4: MemLdRfVar from_stack_1.global_92
  loc_B9AFB7: NewIfNullPr clsctacte
  loc_B9AFBA: from_stack_1 = clsctacte.RecordCount
  loc_B9AFBF: ILdRf var_114
  loc_B9AFC2: LitI4 0
  loc_B9AFC7: GtI4
  loc_B9AFC8: BranchF loc_B9B015
  loc_B9AFCB: FLdPr Me
  loc_B9AFCE: MemLdRfVar from_stack_1.global_92
  loc_B9AFD1: NewIfNullPr clsctacte
  loc_B9AFD4: Call clsctacte.MoveFirst()
  loc_B9AFD9: LitVarStr var_94, "<p class=""DatosEncabezado"">"
  loc_B9AFDE: PopAdLdVar
  loc_B9AFDF: FLdPr Me
  loc_B9AFE2: MemLdRfVar from_stack_1.global_60
  loc_B9AFE5: LdPrVar
  loc_B9AFE7: LateMemCall
  loc_B9AFED: LitVarStr var_94, "<strong>LA CUENTA TIENE APREMIO EN ESTADO: 11 - INHIBIDO, VERIFIQUE....</strong>.<br>"
  loc_B9AFF2: PopAdLdVar
  loc_B9AFF3: FLdPr Me
  loc_B9AFF6: MemLdRfVar from_stack_1.global_60
  loc_B9AFF9: LdPrVar
  loc_B9AFFB: LateMemCall
  loc_B9B001: LitVarStr var_94, "</p>"
  loc_B9B006: PopAdLdVar
  loc_B9B007: FLdPr Me
  loc_B9B00A: MemLdRfVar from_stack_1.global_60
  loc_B9B00D: LdPrVar
  loc_B9B00F: LateMemCall
  loc_B9B015: FLdRfVar var_114
  loc_B9B018: FLdPr Me
  loc_B9B01B: MemLdRfVar from_stack_1.global_96
  loc_B9B01E: NewIfNullPr clsctacte
  loc_B9B021: from_stack_1 = clsctacte.RecordCount
  loc_B9B026: ILdRf var_114
  loc_B9B029: LitI4 0
  loc_B9B02E: GtI4
  loc_B9B02F: BranchF loc_B9B07C
  loc_B9B032: FLdPr Me
  loc_B9B035: MemLdRfVar from_stack_1.global_96
  loc_B9B038: NewIfNullPr clsctacte
  loc_B9B03B: Call clsctacte.MoveFirst()
  loc_B9B040: LitVarStr var_94, "<p class=""DatosEncabezado"">"
  loc_B9B045: PopAdLdVar
  loc_B9B046: FLdPr Me
  loc_B9B049: MemLdRfVar from_stack_1.global_60
  loc_B9B04C: LdPrVar
  loc_B9B04E: LateMemCall
  loc_B9B054: LitVarStr var_94, "<strong>LA CUENTA TIENE APREMIO EN ESTADO: 12 - EMBARGO, VERIFIQUE....</strong>.<br>"
  loc_B9B059: PopAdLdVar
  loc_B9B05A: FLdPr Me
  loc_B9B05D: MemLdRfVar from_stack_1.global_60
  loc_B9B060: LdPrVar
  loc_B9B062: LateMemCall
  loc_B9B068: LitVarStr var_94, "</p>"
  loc_B9B06D: PopAdLdVar
  loc_B9B06E: FLdPr Me
  loc_B9B071: MemLdRfVar from_stack_1.global_60
  loc_B9B074: LdPrVar
  loc_B9B076: LateMemCall
  loc_B9B07C: LitVarStr var_94, "</body>"
  loc_B9B081: PopAdLdVar
  loc_B9B082: FLdPr Me
  loc_B9B085: MemLdRfVar from_stack_1.global_60
  loc_B9B088: LdPrVar
  loc_B9B08A: LateMemCall
  loc_B9B090: LitVarStr var_94, "</html>"
  loc_B9B095: PopAdLdVar
  loc_B9B096: FLdPr Me
  loc_B9B099: MemLdRfVar from_stack_1.global_60
  loc_B9B09C: LdPrVar
  loc_B9B09E: LateMemCall
  loc_B9B0A4: ExitProcHresult
  loc_B9B0A5: AryUnlock
End Function
