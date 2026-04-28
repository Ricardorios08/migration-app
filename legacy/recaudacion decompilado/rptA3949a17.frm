VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949a17
  Caption = "Acuerdo 3949 Anexo 17"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949a17.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10428
  ClientHeight = 4152
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
  Begin MSComctlLib.ProgressBar Pbar
    Left = 120
    Top = 2400
    Width = 9015
    Height = 150
    Visible = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptA3949a17.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3900
    Width = 10425
    Height = 255
    TabIndex = 11
    OleObjectBlob = "rptA3949a17.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9480
    Top = 2760
    Width = 855
    Height = 735
    TabIndex = 6
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
    Picture = "rptA3949a17.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949a17.frx":0C04
    Left = 9720
    Top = 2880
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2520
    Width = 4815
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3360
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 19
    End
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 13
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2520
    Width = 4095
    Height = 1215
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 3
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 2
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9015
    Height = 2295
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame6
      Caption = "Ordenar por"
      Left = 360
      Top = 1320
      Width = 8175
      Height = 855
      TabIndex = 16
      Begin VB.OptionButton OptFecha
        Caption = "Fecha"
        Left = 1800
        Top = 360
        Width = 1095
        Height = 330
        TabIndex = 18
      End
      Begin VB.OptionButton OptJuicio
        Caption = "Nro de juicio"
        Left = 3960
        Top = 360
        Width = 1695
        Height = 330
        TabIndex = 17
      End
    End
    Begin MSMask.MaskEdBox PeriInfoMsk
      Left = 3000
      Top = 360
      Width = 735
      Height = 420
      TabIndex = 0
      OleObjectBlob = "rptA3949a17.frx":0C68
    End
    Begin VB.ComboBox TrimestreCbo
      Style = 2
      Left = 3000
      Top = 840
      Width = 1815
      Height = 420
      TabIndex = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7200
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 5
    End
    Begin VB.Label Label2
      Caption = "Trimestre:"
      Left = 1860
      Top = 840
      Width = 1050
      Height = 300
      TabIndex = 15
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 2040
      Top = 360
      Width = 870
      Height = 300
      TabIndex = 14
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9600
    Top = 3000
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptA3949a17.frx":0CD0
  End
End

Attribute VB_Name = "rptA3949a17"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00560540
  bStruc(32) As Byte ' String fields: 8
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13C30
  'Data Table: 492FA8
  loc_A13BF8: FLdPr Me
  loc_A13BFB: VCallAd Control_ID_statusBar
  loc_A13BFE: FStAdFunc var_88
  loc_A13C01: FLdPr var_88
  loc_A13C04: LateIdLdVar var_98 DispID_1 0
  loc_A13C0B: CStrVarTmp
  loc_A13C0C: CVarStr var_A8
  loc_A13C0F: PopAdLdVar
  loc_A13C10: FLdPr Me
  loc_A13C13: VCallAd Control_ID_statusBar
  loc_A13C16: FStAdFunc var_BC
  loc_A13C19: FLdPr var_BC
  loc_A13C1C: LateIdSt
  loc_A13C21: FFreeAd var_88 = ""
  loc_A13C28: FFreeVar var_98 = ""
  loc_A13C2F: ExitProcHresult
End Sub

Private Sub cmdXLS_Click(arg_30) '9E3D4C
  'Data Table: 492FA8
  loc_9E3D30: LitI2_Byte &HFF
  loc_9E3D32: LitI2_Byte 0
  loc_9E3D34: ILdRf Me
  loc_9E3D37: CastAd
  loc_9E3D3A: FStAdFunc var_88
  loc_9E3D3D: FLdRfVar var_88
  loc_9E3D40: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E3D45: FFree1Ad var_88
  loc_9E3D48: ExitProcHresult
  loc_9E3D49: PopAdLdVar
  loc_9E3D4A: FStVarCopyObj arg_3003
End Sub

Private Sub PeriInfoMsk_UnknownEvent_0 '9BFAF8
  'Data Table: 492FA8
  loc_9BFAE4: FLdPr Me
  loc_9BFAE7: VCallAd Control_ID_PeriInfoMsk
  loc_9BFAEA: CVarAd
  loc_9BFAEE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFAF3: FFree1Var var_94 = ""
  loc_9BFAF6: ExitProcHresult
End Sub

Private Function PeriInfoMsk_UnknownEvent_8(arg_C) 'A71774
  'Data Table: 492FA8
  loc_A7170C: FLdPr Me
  loc_A7170F: VCallAd Control_ID_PeriInfoMsk
  loc_A71712: FStAdFunc var_88
  loc_A71715: FLdPr var_88
  loc_A71718: LateIdLdVar var_98 DispID_22 0
  loc_A7171F: PopAd
  loc_A71721: LitI2_Byte 0
  loc_A71723: FLdRfVar var_98
  loc_A71726: CStrVarTmp
  loc_A71727: FStStrNoPop var_9C
  loc_A7172A: LitStr "Periodo"
  loc_A7172D: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A71732: FStStrNoPop var_A0
  loc_A71735: FLdPr Me
  loc_A71738: MemStStrCopy
  loc_A7173C: FFreeStr var_9C = ""
  loc_A71743: FFree1Ad var_88
  loc_A71746: FFree1Var var_98 = ""
  loc_A71749: FLdPr Me
  loc_A7174C: VCallAd Control_ID_PeriInfoMsk
  loc_A7174F: FStAdFuncNoPop
  loc_A71752: CastAd
  loc_A71755: FStAdFunc var_A4
  loc_A71758: FLdRfVar var_A4
  loc_A7175B: FLdPr Me
  loc_A7175E: MemLdStr global_104
  loc_A71761: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A71766: IStI2 arg_C
  loc_A71769: FFreeAd var_88 = ""
  loc_A71770: ExitProcHresult
End Function

Private Sub cmdPredeterminada_Click() '9CE874
  'Data Table: 492FA8
  loc_9CE85C: LitI2_Byte 0
  loc_9CE85E: ILdRf Me
  loc_9CE861: CastAd
  loc_9CE864: FStAdFunc var_88
  loc_9CE867: FLdRfVar var_88
  loc_9CE86A: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CE86F: FFree1Ad var_88
  loc_9CE872: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '9CE828
  'Data Table: 492FA8
  loc_9CE810: LitI2_Byte &HFF
  loc_9CE812: ILdRf Me
  loc_9CE815: CastAd
  loc_9CE818: FStAdFunc var_88
  loc_9CE81B: FLdRfVar var_88
  loc_9CE81E: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CE823: FFree1Ad var_88
  loc_9CE826: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A047C8
  'Data Table: 492FA8
  loc_A04798: LitVarStr var_94, "Cerrando..."
  loc_A0479D: PopAdLdVar
  loc_A0479E: FLdPr Me
  loc_A047A1: VCallAd Control_ID_statusBar
  loc_A047A4: FStAdFunc var_A8
  loc_A047A7: FLdPr var_A8
  loc_A047AA: LateIdSt
  loc_A047AF: FFree1Ad var_A8
  loc_A047B2: ILdRf Me
  loc_A047B5: FStAdNoPop
  loc_A047B9: ImpAdLdRf MemVar_D9C5D8
  loc_A047BC: NewIfNullPr Global
  loc_A047BF: Global.Unload from_stack_1
  loc_A047C4: FFree1Ad var_A8
  loc_A047C7: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E3CFC
  'Data Table: 492FA8
  loc_9E3CE0: LitI2_Byte 0
  loc_9E3CE2: PopTmpLdAd2 var_8A
  loc_9E3CE5: ILdRf Me
  loc_9E3CE8: CastAd
  loc_9E3CEB: FStAdFunc var_88
  loc_9E3CEE: FLdRfVar var_88
  loc_9E3CF1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E3CF6: FFree1Ad var_88
  loc_9E3CF9: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CE8C0
  'Data Table: 492FA8
  loc_9CE8A8: ILdRf Me
  loc_9CE8AB: CastAd
  loc_9CE8AE: FStAdFunc var_88
  loc_9CE8B1: FLdRfVar var_88
  loc_9CE8B4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CE8B9: FFree1Ad var_88
  loc_9CE8BC: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'AD9380
  'Data Table: 492FA8
  loc_AD923C: LitI2_Byte &HFF
  loc_AD923E: FLdPr Me
  loc_AD9241: MemStI2 bLogos
  loc_AD9244: LitI2_Byte 0
  loc_AD9246: FLdPr Me
  loc_AD9249: MemStI2 bGenerado
  loc_AD924C: LitI2_Byte 0
  loc_AD924E: ILdRf Me
  loc_AD9251: CastAd
  loc_AD9254: FStAdFunc var_88
  loc_AD9257: FLdRfVar var_88
  loc_AD925A: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_AD925F: FFree1Ad var_88
  loc_AD9262: ImpAdLdI2 MemVar_D93034
  loc_AD9265: CStrUI1
  loc_AD9267: CVarStr var_98
  loc_AD926A: PopAdLdVar
  loc_AD926B: FLdPr Me
  loc_AD926E: VCallAd Control_ID_PeriInfoMsk
  loc_AD9271: FStAdFunc var_88
  loc_AD9274: FLdPr var_88
  loc_AD9277: LateIdSt
  loc_AD927C: FFree1Ad var_88
  loc_AD927F: FFree1Var var_98 = ""
  loc_AD9282: LitI2_Byte 0
  loc_AD9284: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AD9289: CVarDate var_98
  loc_AD928D: FLdRfVar var_B8
  loc_AD9290: ImpAdCallFPR4  = Month()
  loc_AD9295: FLdRfVar var_B8
  loc_AD9298: FStVar var_C8
  loc_AD929C: FFree1Var var_98 = ""
  loc_AD929F: FLdRfVar var_C8
  loc_AD92A2: LitVarI2 var_D8, 1
  loc_AD92A7: HardType
  loc_AD92A8: LitVarI2 var_A8, 3
  loc_AD92AD: HardType
  loc_AD92AE: BetweenVar
  loc_AD92B0: BranchF loc_AD92CC
  loc_AD92B3: LitI2_Byte 0
  loc_AD92B5: FLdPr Me
  loc_AD92B8: VCallAd Control_ID_TrimestreCbo
  loc_AD92BB: FStAdFunc var_88
  loc_AD92BE: FLdPr var_88
  loc_AD92C1: Me.ListIndex = from_stack_1
  loc_AD92C6: FFree1Ad var_88
  loc_AD92C9: Branch loc_AD9350
  loc_AD92CC: FLdRfVar var_C8
  loc_AD92CF: LitVarI2 var_D8, 4
  loc_AD92D4: HardType
  loc_AD92D5: LitVarI2 var_A8, 6
  loc_AD92DA: HardType
  loc_AD92DB: BetweenVar
  loc_AD92DD: BranchF loc_AD92F9
  loc_AD92E0: LitI2_Byte 1
  loc_AD92E2: FLdPr Me
  loc_AD92E5: VCallAd Control_ID_TrimestreCbo
  loc_AD92E8: FStAdFunc var_88
  loc_AD92EB: FLdPr var_88
  loc_AD92EE: Me.ListIndex = from_stack_1
  loc_AD92F3: FFree1Ad var_88
  loc_AD92F6: Branch loc_AD9350
  loc_AD92F9: FLdRfVar var_C8
  loc_AD92FC: LitVarI2 var_D8, 7
  loc_AD9301: HardType
  loc_AD9302: LitVarI2 var_A8, 9
  loc_AD9307: HardType
  loc_AD9308: BetweenVar
  loc_AD930A: BranchF loc_AD9326
  loc_AD930D: LitI2_Byte 2
  loc_AD930F: FLdPr Me
  loc_AD9312: VCallAd Control_ID_TrimestreCbo
  loc_AD9315: FStAdFunc var_88
  loc_AD9318: FLdPr var_88
  loc_AD931B: Me.ListIndex = from_stack_1
  loc_AD9320: FFree1Ad var_88
  loc_AD9323: Branch loc_AD9350
  loc_AD9326: FLdRfVar var_C8
  loc_AD9329: LitVarI2 var_D8, 10
  loc_AD932E: HardType
  loc_AD932F: LitVarI2 var_A8, 12
  loc_AD9334: HardType
  loc_AD9335: BetweenVar
  loc_AD9337: BranchF loc_AD9350
  loc_AD933A: LitI2_Byte 3
  loc_AD933C: FLdPr Me
  loc_AD933F: VCallAd Control_ID_TrimestreCbo
  loc_AD9342: FStAdFunc var_88
  loc_AD9345: FLdPr var_88
  loc_AD9348: Me.ListIndex = from_stack_1
  loc_AD934D: FFree1Ad var_88
  loc_AD9350: LitI2_Byte &HFF
  loc_AD9352: FLdPr Me
  loc_AD9355: VCallAd Control_ID_OptFecha
  loc_AD9358: FStAdFunc var_88
  loc_AD935B: FLdPr var_88
  loc_AD935E: Me.Value = from_stack_1b
  loc_AD9363: FFree1Ad var_88
  loc_AD9366: Call HabilitarCriterio()
  loc_AD936B: ILdRf Me
  loc_AD936E: CastAd
  loc_AD9371: FStAdFunc var_88
  loc_AD9374: FLdRfVar var_88
  loc_AD9377: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AD937C: FFree1Ad var_88
  loc_AD937F: ExitProcHresult
End Sub

Private Sub Form_Load() 'AAAC28
  'Data Table: 492FA8
  loc_AAAB54: ILdRf Me
  loc_AAAB57: CastAd
  loc_AAAB5A: FStAdFunc var_88
  loc_AAAB5D: FLdRfVar var_88
  loc_AAAB60: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_AAAB65: FFree1Ad var_88
  loc_AAAB68: FLdPr Me
  loc_AAAB6B: VCallAd Control_ID_TrimestreCbo
  loc_AAAB6E: FStAdFunc var_8C
  loc_AAAB71: LitVar_Missing var_9C
  loc_AAAB74: PopAdLdVar
  loc_AAAB75: LitStr "Primero"
  loc_AAAB78: FLdPr var_8C
  loc_AAAB7B: Me.AddItem from_stack_1, from_stack_2
  loc_AAAB80: LitI4 3
  loc_AAAB85: FLdRfVar var_9E
  loc_AAAB88: FLdPr var_8C
  loc_AAAB8B:  = Me.NewIndex
  loc_AAAB90: FLdI2 var_9E
  loc_AAAB93: FLdPr var_8C
  loc_AAAB96: Me.ItemData = from_stack_1
  loc_AAAB9B: LitVar_Missing var_9C
  loc_AAAB9E: PopAdLdVar
  loc_AAAB9F: LitStr "Segundo"
  loc_AAABA2: FLdPr var_8C
  loc_AAABA5: Me.AddItem from_stack_1, from_stack_2
  loc_AAABAA: LitI4 6
  loc_AAABAF: FLdRfVar var_9E
  loc_AAABB2: FLdPr var_8C
  loc_AAABB5:  = Me.NewIndex
  loc_AAABBA: FLdI2 var_9E
  loc_AAABBD: FLdPr var_8C
  loc_AAABC0: Me.ItemData = from_stack_1
  loc_AAABC5: LitVar_Missing var_9C
  loc_AAABC8: PopAdLdVar
  loc_AAABC9: LitStr "Tercero"
  loc_AAABCC: FLdPr var_8C
  loc_AAABCF: Me.AddItem from_stack_1, from_stack_2
  loc_AAABD4: LitI4 9
  loc_AAABD9: FLdRfVar var_9E
  loc_AAABDC: FLdPr var_8C
  loc_AAABDF:  = Me.NewIndex
  loc_AAABE4: FLdI2 var_9E
  loc_AAABE7: FLdPr var_8C
  loc_AAABEA: Me.ItemData = from_stack_1
  loc_AAABEF: LitVar_Missing var_9C
  loc_AAABF2: PopAdLdVar
  loc_AAABF3: LitStr "Cuarto"
  loc_AAABF6: FLdPr var_8C
  loc_AAABF9: Me.AddItem from_stack_1, from_stack_2
  loc_AAABFE: LitI4 &HC
  loc_AAAC03: FLdRfVar var_9E
  loc_AAAC06: FLdPr var_8C
  loc_AAAC09:  = Me.NewIndex
  loc_AAAC0E: FLdI2 var_9E
  loc_AAAC11: FLdPr var_8C
  loc_AAAC14: Me.ItemData = from_stack_1
  loc_AAAC19: LitNothing
  loc_AAAC1B: FStAd var_8C 
  loc_AAAC1F: Call cmdNueva_Click()
  loc_AAAC24: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CE790
  'Data Table: 492FA8
  loc_9CE778: FLdPr Me
  loc_9CE77B: VCallAd Control_ID_wbbReporte
  loc_9CE77E: FStAdFunc var_88
  loc_9CE781: FLdRfVar var_88
  loc_9CE784: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CE789: FFree1Ad var_88
  loc_9CE78C: ExitProcHresult
End Sub

Public Function bGeneradoGet() '493E54
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '493E63
  bGenerado = Value
End Sub

Public Function bLogosGet() '493E72
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '493E81
  bLogos = Value
End Sub

Public Sub GeneraXLS() '9BFBD4
  'Data Table: 492FA8
  loc_9BFBBC: LitI2_Byte 0
  loc_9BFBBE: FLdPr Me
  loc_9BFBC1: MemStI2 bLogos
  loc_9BFBC4: Call GeneraHTML()
  loc_9BFBC9: LitI2_Byte &HFF
  loc_9BFBCB: FLdPr Me
  loc_9BFBCE: MemStI2 bLogos
  loc_9BFBD1: ExitProcHresult
  loc_9BFBD2: BranchF loc_9C2BC3
End Sub

Public Sub HabilitarCriterio() 'A746D8
  'Data Table: 492FA8
  loc_A74674: LitI4 0
  loc_A74679: LitI4 3
  loc_A7467E: FLdRfVar var_88
  loc_A74681: Redim
  loc_A7468B: FLdPr Me
  loc_A7468E: VCallAd Control_ID_PeriInfoMsk
  loc_A74691: CVarAd
  loc_A74695: ParmAry1St
  loc_A7469B: FLdPr Me
  loc_A7469E: VCallAd Control_ID_TrimestreCbo
  loc_A746A1: CVarAd
  loc_A746A5: ParmAry1St
  loc_A746AB: FLdPr Me
  loc_A746AE: VCallAd Control_ID_OptFecha
  loc_A746B1: CVarAd
  loc_A746B5: ParmAry1St
  loc_A746BB: FLdPr Me
  loc_A746BE: VCallAd Control_ID_OptJuicio
  loc_A746C1: CVarAd
  loc_A746C5: ParmAry1St
  loc_A746CB: FLdRfVar var_88
  loc_A746CE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A746D3: FLdRfVar var_88
  loc_A746D6: Erase
  loc_A746D7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B9E6C0
  'Data Table: 492FA8
  loc_B9E15C: FLdPr Me
  loc_B9E15F: MemLdI2 bGenerado
  loc_B9E162: BranchF loc_B9E166
  loc_B9E165: ExitProcHresult
  loc_B9E166: LitVarStr var_A4, "Generando reporte..."
  loc_B9E16B: PopAdLdVar
  loc_B9E16C: FLdPr Me
  loc_B9E16F: VCallAd Control_ID_statusBar
  loc_B9E172: FStAdFunc var_B8
  loc_B9E175: FLdPr var_B8
  loc_B9E178: LateIdSt
  loc_B9E17D: FFree1Ad var_B8
  loc_B9E180: LitI4 &HB
  loc_B9E185: CI2I4
  loc_B9E186: FLdPr Me
  loc_B9E189: Me.MousePointer = from_stack_1
  loc_B9E18E: FLdPr Me
  loc_B9E191: VCallAd Control_ID_PeriInfoMsk
  loc_B9E194: FStAdFunc var_B8
  loc_B9E197: FLdPr var_B8
  loc_B9E19A: LateIdLdVar var_C8 DispID_22 0
  loc_B9E1A1: PopAd
  loc_B9E1A3: FLdRfVar var_CE
  loc_B9E1A6: FLdPr Me
  loc_B9E1A9: VCallAd Control_ID_TrimestreCbo
  loc_B9E1AC: FStAdFunc var_CC
  loc_B9E1AF: FLdPr var_CC
  loc_B9E1B2:  = Me.ListIndex
  loc_B9E1B7: LitI2_Byte 1
  loc_B9E1B9: FLdI2 var_CE
  loc_B9E1BC: LitI2_Byte 1
  loc_B9E1BE: AddI2
  loc_B9E1BF: LitI2_Byte 3
  loc_B9E1C1: MulI2
  loc_B9E1C2: LitI2_Byte 2
  loc_B9E1C4: SubI2
  loc_B9E1C5: FLdRfVar var_C8
  loc_B9E1C8: CStrVarTmp
  loc_B9E1C9: FStStrNoPop var_D4
  loc_B9E1CC: CI2Str
  loc_B9E1CE: FLdRfVar var_E4
  loc_B9E1D1: ImpAdCallFPR4  = DateSerial(, , )
  loc_B9E1D6: LitI4 1
  loc_B9E1DB: LitI4 1
  loc_B9E1E0: LitVarStr var_A4, "yyyy-mm-dd"
  loc_B9E1E5: FStVarCopyObj var_F4
  loc_B9E1E8: FLdRfVar var_F4
  loc_B9E1EB: FLdRfVar var_E4
  loc_B9E1EE: ImpAdCallI2 Format$(, )
  loc_B9E1F3: FStStr var_88
  loc_B9E1F6: FFree1Str var_D4
  loc_B9E1F9: FFreeAd var_B8 = ""
  loc_B9E200: FFreeVar var_C8 = "": var_E4 = ""
  loc_B9E209: FLdPr Me
  loc_B9E20C: VCallAd Control_ID_PeriInfoMsk
  loc_B9E20F: FStAdFunc var_B8
  loc_B9E212: FLdPr var_B8
  loc_B9E215: LateIdLdVar var_C8 DispID_22 0
  loc_B9E21C: PopAd
  loc_B9E21E: FLdRfVar var_CE
  loc_B9E221: FLdPr Me
  loc_B9E224: VCallAd Control_ID_TrimestreCbo
  loc_B9E227: FStAdFunc var_CC
  loc_B9E22A: FLdPr var_CC
  loc_B9E22D:  = Me.ListIndex
  loc_B9E232: LitI2_Byte 1
  loc_B9E234: FLdI2 var_CE
  loc_B9E237: LitI2_Byte 1
  loc_B9E239: AddI2
  loc_B9E23A: LitI2_Byte 3
  loc_B9E23C: MulI2
  loc_B9E23D: LitI2_Byte 1
  loc_B9E23F: AddI2
  loc_B9E240: FLdRfVar var_C8
  loc_B9E243: CStrVarTmp
  loc_B9E244: FStStrNoPop var_D4
  loc_B9E247: CI2Str
  loc_B9E249: FLdRfVar var_E4
  loc_B9E24C: ImpAdCallFPR4  = DateSerial(, , )
  loc_B9E251: LitI4 1
  loc_B9E256: LitI4 1
  loc_B9E25B: LitVarStr var_B4, "yyyy-mm-dd"
  loc_B9E260: FStVarCopyObj var_114
  loc_B9E263: FLdRfVar var_114
  loc_B9E266: FLdRfVar var_E4
  loc_B9E269: LitVarI2 var_A4, 1
  loc_B9E26E: SubVar var_F4
  loc_B9E272: FStVar var_104
  loc_B9E276: FLdRfVar var_104
  loc_B9E279: ImpAdCallI2 Format$(, )
  loc_B9E27E: FStStr var_8C
  loc_B9E281: FFree1Str var_D4
  loc_B9E284: FFreeAd var_B8 = ""
  loc_B9E28B: FFreeVar var_C8 = "": var_E4 = "": var_104 = ""
  loc_B9E296: FLdRfVar var_CE
  loc_B9E299: FLdPr Me
  loc_B9E29C: VCallAd Control_ID_OptFecha
  loc_B9E29F: FStAdFunc var_B8
  loc_B9E2A2: FLdPr var_B8
  loc_B9E2A5:  = Me.Value
  loc_B9E2AA: FLdI2 var_CE
  loc_B9E2AD: LitI2_Byte &HFF
  loc_B9E2AF: EqI2
  loc_B9E2B0: FFree1Ad var_B8
  loc_B9E2B3: BranchF loc_B9E2C2
  loc_B9E2B6: LitStr "ORDER BY FealInap"
  loc_B9E2B9: FStStrCopy var_90
  loc_B9E2BC: LitStr "ORDER BY FechJuic"
  loc_B9E2BF: FStStrCopy var_94
  loc_B9E2C2: FLdRfVar var_CE
  loc_B9E2C5: FLdPr Me
  loc_B9E2C8: VCallAd Control_ID_OptJuicio
  loc_B9E2CB: FStAdFunc var_B8
  loc_B9E2CE: FLdPr var_B8
  loc_B9E2D1:  = Me.Value
  loc_B9E2D6: FLdI2 var_CE
  loc_B9E2D9: LitI2_Byte &HFF
  loc_B9E2DB: EqI2
  loc_B9E2DC: FFree1Ad var_B8
  loc_B9E2DF: BranchF loc_B9E2EE
  loc_B9E2E2: LitStr "ORDER BY apremio.AutoApre"
  loc_B9E2E5: FStStrCopy var_90
  loc_B9E2E8: LitStr "ORDER BY AutoApre"
  loc_B9E2EB: FStStrCopy var_94
  loc_B9E2EE: FLdPr Me
  loc_B9E2F1: MemLdRfVar from_stack_1.global_92
  loc_B9E2F4: NewIfNullAd
  loc_B9E2F7: FStAd var_118 
  loc_B9E2FB: LitStr "(SELECT 1 as Litigante, cast(apremio.AutoApre as char) AutoApre, concat('"
  loc_B9E2FE: LitStr "Municipalidad de Guaymallén"
  loc_B9E301: ConcatStr
  loc_B9E302: FStStrNoPop var_D4
  loc_B9E305: LitStr " C/',TituApre,' /P Apremio') as expcar, concat(apremio.JuzgInap,'  ',apremio.SecrInap) as Tribunal, '"
  loc_B9E308: ConcatStr
  loc_B9E309: FStStrNoPop var_11C
  loc_B9E30C: LitStr "Primera"
  loc_B9E30F: ConcatStr
  loc_B9E310: FStStrNoPop var_120
  loc_B9E313: LitStr "' as Circuns "
  loc_B9E316: ConcatStr
  loc_B9E317: FStStrNoPop var_124
  loc_B9E31A: LitStr ",  FealInap, round(((apremio.CapiApre + apremio.RecaApre) * instjudi.CoadInju / 100) + (apremio.CapiApre + apremio.RecaApre),2) as mondem, instapre.NumeApre"
  loc_B9E31D: ConcatStr
  loc_B9E31E: FStStrNoPop var_128
  loc_B9E321: LitStr " FROM instapre "
  loc_B9E324: ConcatStr
  loc_B9E325: FStStrNoPop var_12C
  loc_B9E328: LitStr " INNER JOIN instjudi ON instjudi.CodiInju = instapre.CodiInju"
  loc_B9E32B: ConcatStr
  loc_B9E32C: FStStrNoPop var_130
  loc_B9E32F: LitStr " INNER JOIN apremio ON apremio.NumeApre = instapre.NumeApre"
  loc_B9E332: ConcatStr
  loc_B9E333: FStStrNoPop var_134
  loc_B9E336: LitStr " WHERE FealInap <= '"
  loc_B9E339: ConcatStr
  loc_B9E33A: FStStrNoPop var_138
  loc_B9E33D: ILdRf var_8C
  loc_B9E340: ConcatStr
  loc_B9E341: FStStrNoPop var_13C
  loc_B9E344: LitStr "' AND instapre.CodiInju = 2 AND apremio.CancApre = 0 AND apremio.EstaApre IN (0,1,2,4,5,6,8,10,11) "
  loc_B9E347: ConcatStr
  loc_B9E348: FStStrNoPop var_140
  loc_B9E34B: ILdRf var_90
  loc_B9E34E: ConcatStr
  loc_B9E34F: FStStrNoPop var_144
  loc_B9E352: LitStr ") UNION ALL "
  loc_B9E355: ConcatStr
  loc_B9E356: FStStrNoPop var_148
  loc_B9E359: LitStr " (SELECT 2 as Litigante, cast(ExpeJuic as char) AutoApre, CaraJuic expcar, TribJuic Tribunal, CircJuic as Circuns, FechJuic FealInap, ImpoJuic mondem, 0 NumeApre "
  loc_B9E35C: ConcatStr
  loc_B9E35D: FStStrNoPop var_14C
  loc_B9E360: LitStr " FROM juicio WHERE FechJuic <= '"
  loc_B9E363: ConcatStr
  loc_B9E364: FStStrNoPop var_150
  loc_B9E367: ILdRf var_8C
  loc_B9E36A: ConcatStr
  loc_B9E36B: FStStrNoPop var_154
  loc_B9E36E: LitStr "' AND BajaFeho IS NULL "
  loc_B9E371: ConcatStr
  loc_B9E372: FStStrNoPop var_158
  loc_B9E375: ILdRf var_94
  loc_B9E378: ConcatStr
  loc_B9E379: FStStrNoPop var_15C
  loc_B9E37C: LitStr ")"
  loc_B9E37F: ConcatStr
  loc_B9E380: FStStrNoPop var_160
  loc_B9E383: FLdPr var_118
  loc_B9E386: Call clsinstapre.RedefineRS(from_stack_1v)
  loc_B9E38B: FFreeStr var_D4 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_B9E3B4: FLdRfVar var_164
  loc_B9E3B7: FLdPr var_118
  loc_B9E3BA: from_stack_1 = clsinstapre.RecordCount
  loc_B9E3BF: ILdRf var_164
  loc_B9E3C2: LitI4 0
  loc_B9E3C7: EqI4
  loc_B9E3C8: BranchF loc_B9E3E8
  loc_B9E3CB: LitI4 0
  loc_B9E3D0: LitI4 0
  loc_B9E3D5: FLdPr Me
  loc_B9E3D8: MemLdRfVar from_stack_1.global_96
  loc_B9E3DB: Redim
  loc_B9E3E5: Branch loc_B9E687
  loc_B9E3E8: LitI4 0
  loc_B9E3ED: FLdRfVar var_164
  loc_B9E3F0: FLdPr var_118
  loc_B9E3F3: from_stack_1 = clsinstapre.RecordCount
  loc_B9E3F8: ILdRf var_164
  loc_B9E3FB: FLdPr Me
  loc_B9E3FE: MemLdRfVar from_stack_1.global_96
  loc_B9E401: Redim
  loc_B9E40B: FLdPr var_118
  loc_B9E40E: Call clsinstapre.MoveFirst()
  loc_B9E413: FLdRfVar var_164
  loc_B9E416: FLdPr var_118
  loc_B9E419: from_stack_1 = clsinstapre.RecordCount
  loc_B9E41E: ILdRf var_164
  loc_B9E421: CR8I4
  loc_B9E422: CVarR4
  loc_B9E426: PopAdLdVar
  loc_B9E427: FLdPrThis
  loc_B9E428: VCallAd Control_ID_Pbar
  loc_B9E42B: FStAdFunc var_B8
  loc_B9E42E: FLdPr var_B8
  loc_B9E431: LateIdSt
  loc_B9E436: FFree1Ad var_B8
  loc_B9E439: LitVar_TRUE var_A4
  loc_B9E43C: PopAdLdVar
  loc_B9E43D: FLdPrThis
  loc_B9E43E: VCallAd Control_ID_Pbar
  loc_B9E441: FStAdFunc var_B8
  loc_B9E444: FLdPr var_B8
  loc_B9E447: LateIdSt
  loc_B9E44C: FFree1Ad var_B8
  loc_B9E44F: LitI4 1
  loc_B9E454: FLdPr Me
  loc_B9E457: MemLdRfVar from_stack_1.global_100
  loc_B9E45A: FLdPr Me
  loc_B9E45D: MemLdStr global_96
  loc_B9E460: LitI2_Byte 1
  loc_B9E462: FnUBound
  loc_B9E464: ForI4 var_16C
  loc_B9E46A: FLdPr Me
  loc_B9E46D: MemLdStr global_100
  loc_B9E470: CR8I4
  loc_B9E471: CVarR4
  loc_B9E475: PopAdLdVar
  loc_B9E476: FLdPrThis
  loc_B9E477: VCallAd Control_ID_Pbar
  loc_B9E47A: FStAdFunc var_B8
  loc_B9E47D: FLdPr var_B8
  loc_B9E480: LateIdSt
  loc_B9E485: FFree1Ad var_B8
  loc_B9E488: FLdRfVar var_CE
  loc_B9E48B: FLdPr var_118
  loc_B9E48E: from_stack_1 = clsinstapre.Litigante
  loc_B9E493: LitI2_Byte 0
  loc_B9E495: LitVar_Missing var_C8
  loc_B9E498: LitI2_Byte 0
  loc_B9E49A: FLdUI1
  loc_B9E49E: CVarUI1
  loc_B9E4A2: PopAdLdVar
  loc_B9E4A3: FLdPr Me
  loc_B9E4A6: MemLdStr global_100
  loc_B9E4A9: FLdPr Me
  loc_B9E4AC: MemLdStr global_96
  loc_B9E4AF: AryLock
  loc_B9E4B2: Ary1LdPr
  loc_B9E4B3: MemLdRfVar from_stack_1.global_0
  loc_B9E4B6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9E4BB: AryUnlock
  loc_B9E4BE: FFree1Var var_C8 = ""
  loc_B9E4C1: FLdRfVar var_D4
  loc_B9E4C4: FLdPr var_118
  loc_B9E4C7: from_stack_1 = clsinstapre.AutoApre
  loc_B9E4CC: LitI2_Byte 0
  loc_B9E4CE: LitVar_Missing var_E4
  loc_B9E4D1: LitI2_Byte 0
  loc_B9E4D3: FLdZeroAd var_D4
  loc_B9E4D6: CVarStr var_C8
  loc_B9E4D9: PopAdLdVar
  loc_B9E4DA: FLdPr Me
  loc_B9E4DD: MemLdStr global_100
  loc_B9E4E0: FLdPr Me
  loc_B9E4E3: MemLdStr global_96
  loc_B9E4E6: AryLock
  loc_B9E4E9: Ary1LdPr
  loc_B9E4EA: MemLdRfVar from_stack_1.global_4
  loc_B9E4ED: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9E4F2: AryUnlock
  loc_B9E4F5: FFreeVar var_C8 = ""
  loc_B9E4FC: FLdRfVar var_D4
  loc_B9E4FF: FLdPr var_118
  loc_B9E502: from_stack_1 = clsinstapre.expcar
  loc_B9E507: LitI2_Byte 0
  loc_B9E509: LitVar_Missing var_E4
  loc_B9E50C: LitI2_Byte 0
  loc_B9E50E: FLdZeroAd var_D4
  loc_B9E511: CVarStr var_C8
  loc_B9E514: PopAdLdVar
  loc_B9E515: FLdPr Me
  loc_B9E518: MemLdStr global_100
  loc_B9E51B: FLdPr Me
  loc_B9E51E: MemLdStr global_96
  loc_B9E521: AryLock
  loc_B9E524: Ary1LdPr
  loc_B9E525: MemLdRfVar from_stack_1.global_8
  loc_B9E528: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9E52D: AryUnlock
  loc_B9E530: FFreeVar var_C8 = ""
  loc_B9E537: FLdRfVar var_D4
  loc_B9E53A: FLdPr var_118
  loc_B9E53D: from_stack_1 = clsinstapre.Tribunal
  loc_B9E542: LitI2_Byte 0
  loc_B9E544: LitVar_Missing var_E4
  loc_B9E547: LitI2_Byte 0
  loc_B9E549: FLdZeroAd var_D4
  loc_B9E54C: CVarStr var_C8
  loc_B9E54F: PopAdLdVar
  loc_B9E550: FLdPr Me
  loc_B9E553: MemLdStr global_100
  loc_B9E556: FLdPr Me
  loc_B9E559: MemLdStr global_96
  loc_B9E55C: AryLock
  loc_B9E55F: Ary1LdPr
  loc_B9E560: MemLdRfVar from_stack_1.global_12
  loc_B9E563: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9E568: AryUnlock
  loc_B9E56B: FFreeVar var_C8 = ""
  loc_B9E572: FLdRfVar var_D4
  loc_B9E575: FLdPr var_118
  loc_B9E578: from_stack_1 = clsinstapre.Circuns
  loc_B9E57D: LitI2_Byte 0
  loc_B9E57F: LitVar_Missing var_E4
  loc_B9E582: LitI2_Byte 0
  loc_B9E584: FLdZeroAd var_D4
  loc_B9E587: CVarStr var_C8
  loc_B9E58A: PopAdLdVar
  loc_B9E58B: FLdPr Me
  loc_B9E58E: MemLdStr global_100
  loc_B9E591: FLdPr Me
  loc_B9E594: MemLdStr global_96
  loc_B9E597: AryLock
  loc_B9E59A: Ary1LdPr
  loc_B9E59B: MemLdRfVar from_stack_1.global_16
  loc_B9E59E: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9E5A3: AryUnlock
  loc_B9E5A6: FFreeVar var_C8 = ""
  loc_B9E5AD: FLdRfVar var_D4
  loc_B9E5B0: FLdPr var_118
  loc_B9E5B3: from_stack_1 = clsinstapre.FealInap
  loc_B9E5B8: LitI2_Byte 0
  loc_B9E5BA: LitVar_Missing var_E4
  loc_B9E5BD: LitI2_Byte 0
  loc_B9E5BF: FLdZeroAd var_D4
  loc_B9E5C2: CVarStr var_C8
  loc_B9E5C5: PopAdLdVar
  loc_B9E5C6: FLdPr Me
  loc_B9E5C9: MemLdStr global_100
  loc_B9E5CC: FLdPr Me
  loc_B9E5CF: MemLdStr global_96
  loc_B9E5D2: AryLock
  loc_B9E5D5: Ary1LdPr
  loc_B9E5D6: MemLdRfVar from_stack_1.global_20
  loc_B9E5D9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9E5DE: AryUnlock
  loc_B9E5E1: FFreeVar var_C8 = ""
  loc_B9E5E8: FLdRfVar var_178
  loc_B9E5EB: FLdPr var_118
  loc_B9E5EE: from_stack_1 = clsinstapre.mondem
  loc_B9E5F3: LitI2_Byte 0
  loc_B9E5F5: LitVar_Missing var_C8
  loc_B9E5F8: LitI2_Byte &HFF
  loc_B9E5FA: FLdFPR8 var_178
  loc_B9E5FD: CVarR8
  loc_B9E601: PopAdLdVar
  loc_B9E602: FLdPr Me
  loc_B9E605: MemLdStr global_100
  loc_B9E608: FLdPr Me
  loc_B9E60B: MemLdStr global_96
  loc_B9E60E: AryLock
  loc_B9E611: Ary1LdPr
  loc_B9E612: MemLdRfVar from_stack_1.global_24
  loc_B9E615: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9E61A: AryUnlock
  loc_B9E61D: FFree1Var var_C8 = ""
  loc_B9E620: FLdRfVar var_164
  loc_B9E623: FLdPr var_118
  loc_B9E626: from_stack_1 = clsinstapre.NumeApre
  loc_B9E62B: LitI2_Byte 0
  loc_B9E62D: LitVar_Missing var_C8
  loc_B9E630: LitI2_Byte 0
  loc_B9E632: ILdRf var_164
  loc_B9E635: CVarI4
  loc_B9E639: PopAdLdVar
  loc_B9E63A: FLdPr Me
  loc_B9E63D: MemLdStr global_100
  loc_B9E640: FLdPr Me
  loc_B9E643: MemLdStr global_96
  loc_B9E646: AryLock
  loc_B9E649: Ary1LdPr
  loc_B9E64A: MemLdRfVar from_stack_1.global_28
  loc_B9E64D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B9E652: AryUnlock
  loc_B9E655: FFree1Var var_C8 = ""
  loc_B9E658: LitI2_Byte 1
  loc_B9E65A: PopTmpLdAd2 var_CE
  loc_B9E65D: FLdPr var_118
  loc_B9E660: Call clsinstapre.Move(from_stack_1v)
  loc_B9E665: FLdPr Me
  loc_B9E668: MemLdRfVar from_stack_1.global_100
  loc_B9E66B: NextI4 var_16C, loc_B9E46A
  loc_B9E670: LitVar_FALSE
  loc_B9E674: PopAdLdVar
  loc_B9E675: FLdPrThis
  loc_B9E676: VCallAd Control_ID_Pbar
  loc_B9E679: FStAdFunc var_B8
  loc_B9E67C: FLdPr var_B8
  loc_B9E67F: LateIdSt
  loc_B9E684: FFree1Ad var_B8
  loc_B9E687: LitNothing
  loc_B9E689: FStAd var_118 
  loc_B9E68D: LitI2_Byte &HFF
  loc_B9E68F: FLdPr Me
  loc_B9E692: MemStI2 bGenerado
  loc_B9E695: LitI4 0
  loc_B9E69A: CI2I4
  loc_B9E69B: FLdPr Me
  loc_B9E69E: Me.MousePointer = from_stack_1
  loc_B9E6A3: LitVarStr var_A4, vbNullString
  loc_B9E6A8: PopAdLdVar
  loc_B9E6A9: FLdPr Me
  loc_B9E6AC: VCallAd Control_ID_statusBar
  loc_B9E6AF: FStAdFunc var_B8
  loc_B9E6B2: FLdPr var_B8
  loc_B9E6B5: LateIdSt
  loc_B9E6BA: FFree1Ad var_B8
  loc_B9E6BD: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B56F14
  'Data Table: 492FA8
  loc_B56B6C: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B56B71: FStStrNoPop var_88
  loc_B56B74: LitStr "\Acuerdo 3949\"
  loc_B56B77: ConcatStr
  loc_B56B78: FStStrNoPop var_A0
  loc_B56B7B: FLdPr Me
  loc_B56B7E: VCallAd Control_ID_PeriInfoMsk
  loc_B56B81: FStAdFunc var_8C
  loc_B56B84: FLdPr var_8C
  loc_B56B87: LateIdLdVar var_9C DispID_22 0
  loc_B56B8E: CStrVarTmp
  loc_B56B8F: FStStrNoPop var_A4
  loc_B56B92: ConcatStr
  loc_B56B93: FStStrNoPop var_A8
  loc_B56B96: LitStr "\Trimestre "
  loc_B56B99: ConcatStr
  loc_B56B9A: FStStrNoPop var_B4
  loc_B56B9D: FLdRfVar var_AE
  loc_B56BA0: FLdPr Me
  loc_B56BA3: VCallAd Control_ID_TrimestreCbo
  loc_B56BA6: FStAdFunc var_AC
  loc_B56BA9: FLdPr var_AC
  loc_B56BAC:  = Me.ListIndex
  loc_B56BB1: FLdI2 var_AE
  loc_B56BB4: LitI2_Byte 1
  loc_B56BB6: AddI2
  loc_B56BB7: CStrUI1
  loc_B56BB9: FStStrNoPop var_B8
  loc_B56BBC: ConcatStr
  loc_B56BBD: FStStrNoPop var_BC
  loc_B56BC0: LitStr "\detjuiejec.txt"
  loc_B56BC3: ConcatStr
  loc_B56BC4: ImpAdStStr MemVar_D93030
  loc_B56BC8: FFreeStr var_88 = "": var_A0 = "": var_A4 = "": var_A8 = "": var_B4 = "": var_B8 = ""
  loc_B56BD9: FFreeAd var_8C = ""
  loc_B56BE0: FFree1Var var_9C = ""
  loc_B56BE3: ImpAdLdI4 MemVar_D93030
  loc_B56BE6: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B56BEB: LitStr "|"
  loc_B56BEE: FStStrCopy var_C4
  loc_B56BF1: FLdRfVar var_8C
  loc_B56BF4: LitI2_Byte 0
  loc_B56BF6: LitI2_Byte &HFF
  loc_B56BF8: ImpAdLdI4 MemVar_D93030
  loc_B56BFB: FLdPr Me
  loc_B56BFE: MemLdRfVar from_stack_1.global_56
  loc_B56C01: NewIfNullPr IFileSystem3
  loc_B56C04: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B56C09: ILdRf var_8C
  loc_B56C0C: FLdPr Me
  loc_B56C0F: MemStVarAd
  loc_B56C13: FFree1Ad var_8C
  loc_B56C16: FLdPr Me
  loc_B56C19: MemLdStr global_96
  loc_B56C1C: LitI2_Byte 1
  loc_B56C1E: FnUBound
  loc_B56C20: LitI4 0
  loc_B56C25: EqI4
  loc_B56C26: BranchF loc_B56C88
  loc_B56C29: LitI4 0
  loc_B56C2E: LitI4 1
  loc_B56C33: FLdRfVar var_C8
  loc_B56C36: Redim
  loc_B56C40: LitVarStr var_D8, "|"
  loc_B56C45: LitI4 0
  loc_B56C4A: ILdRf var_C8
  loc_B56C4D: Ary1StVarCopy
  loc_B56C4F: LitVarStr var_E8, "SIN MOVIMIENTO"
  loc_B56C54: LitI4 1
  loc_B56C59: ILdRf var_C8
  loc_B56C5C: Ary1StVarCopy
  loc_B56C5E: FLdRfVar var_C8
  loc_B56C61: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B56C66: FStStr var_88
  loc_B56C69: FLdRfVar var_C8
  loc_B56C6C: Erase
  loc_B56C6D: FLdZeroAd var_88
  loc_B56C70: CVarStr var_9C
  loc_B56C73: PopAdLdVar
  loc_B56C74: FLdPr Me
  loc_B56C77: MemLdRfVar from_stack_1.global_76
  loc_B56C7A: LdPrVar
  loc_B56C7C: LateMemCall
  loc_B56C82: FFree1Var var_9C = ""
  loc_B56C85: Branch loc_B56F02
  loc_B56C88: LitI4 0
  loc_B56C8D: LitI4 &HC
  loc_B56C92: FLdRfVar var_C8
  loc_B56C95: Redim
  loc_B56C9F: LitVarStr var_D8, "|"
  loc_B56CA4: LitI4 0
  loc_B56CA9: ILdRf var_C8
  loc_B56CAC: Ary1StVarCopy
  loc_B56CAE: LitVarStr var_E8, "ejercicio"
  loc_B56CB3: LitI4 1
  loc_B56CB8: ILdRf var_C8
  loc_B56CBB: Ary1StVarCopy
  loc_B56CBD: LitVarStr var_F8, "trimestre"
  loc_B56CC2: LitI4 2
  loc_B56CC7: ILdRf var_C8
  loc_B56CCA: Ary1StVarCopy
  loc_B56CCC: LitVarStr var_108, "nomenclador"
  loc_B56CD1: LitI4 3
  loc_B56CD6: ILdRf var_C8
  loc_B56CD9: Ary1StVarCopy
  loc_B56CDB: LitVarStr var_118, "tipolit"
  loc_B56CE0: LitI4 4
  loc_B56CE5: ILdRf var_C8
  loc_B56CE8: Ary1StVarCopy
  loc_B56CEA: LitVarStr var_128, "nomencladorlit"
  loc_B56CEF: LitI4 5
  loc_B56CF4: ILdRf var_C8
  loc_B56CF7: Ary1StVarCopy
  loc_B56CF9: LitVarStr var_138, "expnro"
  loc_B56CFE: LitI4 6
  loc_B56D03: ILdRf var_C8
  loc_B56D06: Ary1StVarCopy
  loc_B56D08: LitVarStr var_148, "expcar"
  loc_B56D0D: LitI4 7
  loc_B56D12: ILdRf var_C8
  loc_B56D15: Ary1StVarCopy
  loc_B56D17: LitVarStr var_158, "trirad"
  loc_B56D1C: LitI4 8
  loc_B56D21: ILdRf var_C8
  loc_B56D24: Ary1StVarCopy
  loc_B56D26: LitVarStr var_168, "circun"
  loc_B56D2B: LitI4 9
  loc_B56D30: ILdRf var_C8
  loc_B56D33: Ary1StVarCopy
  loc_B56D35: LitVarStr var_178, "fecdem"
  loc_B56D3A: LitI4 &HA
  loc_B56D3F: ILdRf var_C8
  loc_B56D42: Ary1StVarCopy
  loc_B56D44: LitVarStr var_188, "mondem"
  loc_B56D49: LitI4 &HB
  loc_B56D4E: ILdRf var_C8
  loc_B56D51: Ary1StVarCopy
  loc_B56D53: LitVarStr var_198, "Apremio"
  loc_B56D58: LitI4 &HC
  loc_B56D5D: ILdRf var_C8
  loc_B56D60: Ary1StVarCopy
  loc_B56D62: FLdRfVar var_C8
  loc_B56D65: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B56D6A: FStStr var_88
  loc_B56D6D: FLdRfVar var_C8
  loc_B56D70: Erase
  loc_B56D71: FLdZeroAd var_88
  loc_B56D74: CVarStr var_9C
  loc_B56D77: PopAdLdVar
  loc_B56D78: FLdPr Me
  loc_B56D7B: MemLdRfVar from_stack_1.global_76
  loc_B56D7E: LdPrVar
  loc_B56D80: LateMemCall
  loc_B56D86: FFree1Var var_9C = ""
  loc_B56D89: LitI4 1
  loc_B56D8E: FLdPr Me
  loc_B56D91: MemLdRfVar from_stack_1.global_100
  loc_B56D94: FLdPr Me
  loc_B56D97: MemLdStr global_96
  loc_B56D9A: LitI2_Byte 1
  loc_B56D9C: FnUBound
  loc_B56D9E: ForI4 var_1B0
  loc_B56DA4: FLdPr Me
  loc_B56DA7: MemLdStr global_100
  loc_B56DAA: FLdPr Me
  loc_B56DAD: MemLdStr global_96
  loc_B56DB0: AryLock
  loc_B56DB3: Ary1LdRf
  loc_B56DB4: FStR4 var_1B8
  loc_B56DB7: LitI4 0
  loc_B56DBC: LitI4 &HB
  loc_B56DC1: FLdRfVar var_C8
  loc_B56DC4: Redim
  loc_B56DCE: LitVarStr var_D8, "|"
  loc_B56DD3: LitI4 0
  loc_B56DD8: ILdRf var_C8
  loc_B56DDB: Ary1StVarCopy
  loc_B56DDD: FLdPr Me
  loc_B56DE0: VCallAd Control_ID_PeriInfoMsk
  loc_B56DE3: FStAdFunc var_8C
  loc_B56DE6: FLdPr var_8C
  loc_B56DE9: LateIdLdVar var_9C DispID_22 0
  loc_B56DF0: CStrVarTmp
  loc_B56DF1: CVarStr var_1C8
  loc_B56DF4: ParmAry1St
  loc_B56DFA: FLdRfVar var_AE
  loc_B56DFD: FLdPr Me
  loc_B56E00: VCallAd Control_ID_TrimestreCbo
  loc_B56E03: FStAdFunc var_AC
  loc_B56E06: FLdPr var_AC
  loc_B56E09:  = Me.ListIndex
  loc_B56E0E: FLdI2 var_AE
  loc_B56E11: LitI2_Byte 1
  loc_B56E13: AddI2
  loc_B56E14: CVarI2 var_E8
  loc_B56E17: LitI4 2
  loc_B56E1C: ILdRf var_C8
  loc_B56E1F: Ary1StVar
  loc_B56E20: LitVarStr var_F8, "060204"
  loc_B56E25: LitI4 3
  loc_B56E2A: ILdRf var_C8
  loc_B56E2D: Ary1StVarCopy
  loc_B56E2F: FMemLdRf 0
  loc_B56E34: CVarRef
  loc_B56E39: ParmAry1St
  loc_B56E3F: LitVarStr var_118, "060204"
  loc_B56E44: LitI4 5
  loc_B56E49: ILdRf var_C8
  loc_B56E4C: Ary1StVarCopy
  loc_B56E4E: FMemLdRf 0
  loc_B56E53: CVarRef
  loc_B56E58: ParmAry1St
  loc_B56E5E: FMemLdRf 0
  loc_B56E63: CVarRef
  loc_B56E68: ParmAry1St
  loc_B56E6E: FMemLdRf 0
  loc_B56E73: CVarRef
  loc_B56E78: ParmAry1St
  loc_B56E7E: FMemLdRf 0
  loc_B56E83: CVarRef
  loc_B56E88: ParmAry1St
  loc_B56E8E: FMemLdRf 0
  loc_B56E93: CVarRef
  loc_B56E98: ParmAry1St
  loc_B56E9E: FMemLdR4 var_1B8(24)
  loc_B56EA3: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B56EA8: CVarStr var_1D8
  loc_B56EAB: ParmAry1St
  loc_B56EB1: FLdRfVar var_C8
  loc_B56EB4: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B56EB9: FStStr var_88
  loc_B56EBC: FLdRfVar var_C8
  loc_B56EBF: Erase
  loc_B56EC0: FLdZeroAd var_88
  loc_B56EC3: CVarStr var_1E8
  loc_B56EC6: PopAdLdVar
  loc_B56EC7: FMemLdRf 0
  loc_B56ECC: CDargRef
  loc_B56ED0: FLdPr Me
  loc_B56ED3: MemLdRfVar from_stack_1.global_76
  loc_B56ED6: LdPrVar
  loc_B56ED8: LateMemCall
  loc_B56EDE: FFreeAd var_8C = ""
  loc_B56EE5: FFreeVar var_9C = ""
  loc_B56EEC: LitI4 0
  loc_B56EF1: FStR4 var_1B8
  loc_B56EF4: AryUnlock
  loc_B56EF7: FLdPr Me
  loc_B56EFA: MemLdRfVar from_stack_1.global_100
  loc_B56EFD: NextI4 var_1B0, loc_B56DA4
  loc_B56F02: FLdPr Me
  loc_B56F05: MemLdRfVar from_stack_1.global_76
  loc_B56F08: LdPrVar
  loc_B56F0A: LateMemCall
  loc_B56F10: ExitProcHresult
  loc_B56F11: AryUnlock
End Sub

Public Sub GeneraHTML() 'B12FC0
  'Data Table: 492FA8
  loc_B12D5C: FLdRfVar var_88
  loc_B12D5F: LitI2_Byte 0
  loc_B12D61: LitI2_Byte &HFF
  loc_B12D63: ImpAdLdI4 MemVar_D93C84
  loc_B12D66: FLdPr Me
  loc_B12D69: MemLdRfVar from_stack_1.global_56
  loc_B12D6C: NewIfNullPr IFileSystem3
  loc_B12D6F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B12D74: ILdRf var_88
  loc_B12D77: FLdPr Me
  loc_B12D7A: MemStVarAd
  loc_B12D7E: FFree1Ad var_88
  loc_B12D81: LitI2_Byte &HFF
  loc_B12D83: ImpAdStI2 MemVar_D93C8A
  loc_B12D86: Call Proc_339_21_BCC564()
  loc_B12D8B: FLdPr Me
  loc_B12D8E: MemLdStr global_96
  loc_B12D91: LitI2_Byte 1
  loc_B12D93: FnUBound
  loc_B12D95: LitI4 0
  loc_B12D9A: EqI4
  loc_B12D9B: BranchF loc_B12DDD
  loc_B12D9E: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B12DA3: PopAdLdVar
  loc_B12DA4: FLdPr Me
  loc_B12DA7: MemLdRfVar from_stack_1.global_60
  loc_B12DAA: LdPrVar
  loc_B12DAC: LateMemCall
  loc_B12DB2: LitVarStr var_98, "   <td colspan=""4"" align=""center""><strong>SIN MOVIMIENTO</strong></td>"
  loc_B12DB7: PopAdLdVar
  loc_B12DB8: FLdPr Me
  loc_B12DBB: MemLdRfVar from_stack_1.global_60
  loc_B12DBE: LdPrVar
  loc_B12DC0: LateMemCall
  loc_B12DC6: LitVarStr var_98, "     </tr>"
  loc_B12DCB: PopAdLdVar
  loc_B12DCC: FLdPr Me
  loc_B12DCF: MemLdRfVar from_stack_1.global_60
  loc_B12DD2: LdPrVar
  loc_B12DD4: LateMemCall
  loc_B12DDA: Branch loc_B12FA1
  loc_B12DDD: LitI4 1
  loc_B12DE2: FLdPr Me
  loc_B12DE5: MemLdRfVar from_stack_1.global_100
  loc_B12DE8: FLdPr Me
  loc_B12DEB: MemLdStr global_96
  loc_B12DEE: LitI2_Byte 1
  loc_B12DF0: FnUBound
  loc_B12DF2: ForI4 var_B0
  loc_B12DF8: FLdPr Me
  loc_B12DFB: MemLdStr global_100
  loc_B12DFE: FLdPr Me
  loc_B12E01: MemLdStr global_96
  loc_B12E04: AryLock
  loc_B12E07: Ary1LdRf
  loc_B12E08: FStR4 var_B8
  loc_B12E0B: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B12E10: PopAdLdVar
  loc_B12E11: FLdPr Me
  loc_B12E14: MemLdRfVar from_stack_1.global_60
  loc_B12E17: LdPrVar
  loc_B12E19: LateMemCall
  loc_B12E1F: LitStr vbNullString
  loc_B12E22: LitI2_Byte 0
  loc_B12E24: LitI2_Byte 0
  loc_B12E26: LitI2_Byte 0
  loc_B12E28: LitStr "center"
  loc_B12E2B: FMemLdR4 var_B8(0)
  loc_B12E30: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B12E35: CVarStr var_C8
  loc_B12E38: PopAdLdVar
  loc_B12E39: FLdPr Me
  loc_B12E3C: MemLdRfVar from_stack_1.global_60
  loc_B12E3F: LdPrVar
  loc_B12E41: LateMemCall
  loc_B12E47: FFree1Var var_C8 = ""
  loc_B12E4A: LitStr vbNullString
  loc_B12E4D: LitI2_Byte 0
  loc_B12E4F: LitI2_Byte 0
  loc_B12E51: LitI2_Byte 0
  loc_B12E53: LitStr "right"
  loc_B12E56: FMemLdR4 var_B8(4)
  loc_B12E5B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B12E60: CVarStr var_C8
  loc_B12E63: PopAdLdVar
  loc_B12E64: FLdPr Me
  loc_B12E67: MemLdRfVar from_stack_1.global_60
  loc_B12E6A: LdPrVar
  loc_B12E6C: LateMemCall
  loc_B12E72: FFree1Var var_C8 = ""
  loc_B12E75: LitStr vbNullString
  loc_B12E78: LitI2_Byte 0
  loc_B12E7A: LitI2_Byte 0
  loc_B12E7C: LitI2_Byte 0
  loc_B12E7E: LitStr "left"
  loc_B12E81: FMemLdR4 var_B8(8)
  loc_B12E86: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B12E8B: CVarStr var_C8
  loc_B12E8E: PopAdLdVar
  loc_B12E8F: FLdPr Me
  loc_B12E92: MemLdRfVar from_stack_1.global_60
  loc_B12E95: LdPrVar
  loc_B12E97: LateMemCall
  loc_B12E9D: FFree1Var var_C8 = ""
  loc_B12EA0: LitStr vbNullString
  loc_B12EA3: LitI2_Byte 0
  loc_B12EA5: LitI2_Byte 0
  loc_B12EA7: LitI2_Byte 0
  loc_B12EA9: LitStr "left"
  loc_B12EAC: FMemLdR4 var_B8(12)
  loc_B12EB1: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B12EB6: CVarStr var_C8
  loc_B12EB9: PopAdLdVar
  loc_B12EBA: FLdPr Me
  loc_B12EBD: MemLdRfVar from_stack_1.global_60
  loc_B12EC0: LdPrVar
  loc_B12EC2: LateMemCall
  loc_B12EC8: FFree1Var var_C8 = ""
  loc_B12ECB: LitStr vbNullString
  loc_B12ECE: LitI2_Byte 0
  loc_B12ED0: LitI2_Byte 0
  loc_B12ED2: LitI2_Byte 0
  loc_B12ED4: LitStr "left"
  loc_B12ED7: FMemLdR4 var_B8(16)
  loc_B12EDC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B12EE1: CVarStr var_C8
  loc_B12EE4: PopAdLdVar
  loc_B12EE5: FLdPr Me
  loc_B12EE8: MemLdRfVar from_stack_1.global_60
  loc_B12EEB: LdPrVar
  loc_B12EED: LateMemCall
  loc_B12EF3: FFree1Var var_C8 = ""
  loc_B12EF6: LitStr vbNullString
  loc_B12EF9: LitI2_Byte 0
  loc_B12EFB: LitI2_Byte 0
  loc_B12EFD: LitI2_Byte 0
  loc_B12EFF: LitStr "center"
  loc_B12F02: FMemLdR4 var_B8(20)
  loc_B12F07: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B12F0C: CVarStr var_C8
  loc_B12F0F: PopAdLdVar
  loc_B12F10: FLdPr Me
  loc_B12F13: MemLdRfVar from_stack_1.global_60
  loc_B12F16: LdPrVar
  loc_B12F18: LateMemCall
  loc_B12F1E: FFree1Var var_C8 = ""
  loc_B12F21: LitStr vbNullString
  loc_B12F24: LitI2_Byte 0
  loc_B12F26: LitI2_Byte 0
  loc_B12F28: LitI2_Byte 0
  loc_B12F2A: LitStr "right"
  loc_B12F2D: FMemLdR4 var_B8(24)
  loc_B12F32: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B12F37: CVarStr var_C8
  loc_B12F3A: PopAdLdVar
  loc_B12F3B: FLdPr Me
  loc_B12F3E: MemLdRfVar from_stack_1.global_60
  loc_B12F41: LdPrVar
  loc_B12F43: LateMemCall
  loc_B12F49: FFree1Var var_C8 = ""
  loc_B12F4C: LitStr vbNullString
  loc_B12F4F: LitI2_Byte 0
  loc_B12F51: LitI2_Byte 0
  loc_B12F53: LitI2_Byte 0
  loc_B12F55: LitStr "right"
  loc_B12F58: FMemLdR4 var_B8(28)
  loc_B12F5D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B12F62: CVarStr var_C8
  loc_B12F65: PopAdLdVar
  loc_B12F66: FLdPr Me
  loc_B12F69: MemLdRfVar from_stack_1.global_60
  loc_B12F6C: LdPrVar
  loc_B12F6E: LateMemCall
  loc_B12F74: FFree1Var var_C8 = ""
  loc_B12F77: LitVarStr var_98, "     </tr>"
  loc_B12F7C: PopAdLdVar
  loc_B12F7D: FLdPr Me
  loc_B12F80: MemLdRfVar from_stack_1.global_60
  loc_B12F83: LdPrVar
  loc_B12F85: LateMemCall
  loc_B12F8B: LitI4 0
  loc_B12F90: FStR4 var_B8
  loc_B12F93: AryUnlock
  loc_B12F96: FLdPr Me
  loc_B12F99: MemLdRfVar from_stack_1.global_100
  loc_B12F9C: NextI4 var_B0, loc_B12DF8
  loc_B12FA1: Call Proc_339_22_A0EC18()
  loc_B12FA6: FLdPr Me
  loc_B12FA9: MemLdRfVar from_stack_1.global_60
  loc_B12FAC: LdPrVar
  loc_B12FAE: LateMemCall
  loc_B12FB4: LitStr vbNullString
  loc_B12FB7: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B12FBC: ExitProcHresult
End Sub

Private Function Proc_339_21_BCC564() 'BCC564
  'Data Table: 492FA8
  loc_BCBE58: LitVarStr var_98, "<html>"
  loc_BCBE5D: PopAdLdVar
  loc_BCBE5E: FLdPr Me
  loc_BCBE61: MemLdRfVar from_stack_1.global_60
  loc_BCBE64: LdPrVar
  loc_BCBE66: LateMemCall
  loc_BCBE6C: LitVarStr var_98, "<head>"
  loc_BCBE71: PopAdLdVar
  loc_BCBE72: FLdPr Me
  loc_BCBE75: MemLdRfVar from_stack_1.global_60
  loc_BCBE78: LdPrVar
  loc_BCBE7A: LateMemCall
  loc_BCBE80: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BCBE85: PopAdLdVar
  loc_BCBE86: FLdPr Me
  loc_BCBE89: MemLdRfVar from_stack_1.global_60
  loc_BCBE8C: LdPrVar
  loc_BCBE8E: LateMemCall
  loc_BCBE94: LitStr "<title>"
  loc_BCBE97: FLdRfVar var_AC
  loc_BCBE9A: FLdPr Me
  loc_BCBE9D:  = Me.Caption
  loc_BCBEA2: ILdRf var_AC
  loc_BCBEA5: ConcatStr
  loc_BCBEA6: FStStrNoPop var_B0
  loc_BCBEA9: LitStr "</title>"
  loc_BCBEAC: ConcatStr
  loc_BCBEAD: CVarStr var_C0
  loc_BCBEB0: PopAdLdVar
  loc_BCBEB1: FLdPr Me
  loc_BCBEB4: MemLdRfVar from_stack_1.global_60
  loc_BCBEB7: LdPrVar
  loc_BCBEB9: LateMemCall
  loc_BCBEBF: FFreeStr var_AC = ""
  loc_BCBEC6: FFree1Var var_C0 = ""
  loc_BCBEC9: LitVarStr var_98, "<style type=""text/css"">"
  loc_BCBECE: PopAdLdVar
  loc_BCBECF: FLdPr Me
  loc_BCBED2: MemLdRfVar from_stack_1.global_60
  loc_BCBED5: LdPrVar
  loc_BCBED7: LateMemCall
  loc_BCBEDD: LitVarStr var_98, ".Titulo1 {"
  loc_BCBEE2: PopAdLdVar
  loc_BCBEE3: FLdPr Me
  loc_BCBEE6: MemLdRfVar from_stack_1.global_60
  loc_BCBEE9: LdPrVar
  loc_BCBEEB: LateMemCall
  loc_BCBEF1: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCBEF6: PopAdLdVar
  loc_BCBEF7: FLdPr Me
  loc_BCBEFA: MemLdRfVar from_stack_1.global_60
  loc_BCBEFD: LdPrVar
  loc_BCBEFF: LateMemCall
  loc_BCBF05: LitVarStr var_98, " font-size: 18px;"
  loc_BCBF0A: PopAdLdVar
  loc_BCBF0B: FLdPr Me
  loc_BCBF0E: MemLdRfVar from_stack_1.global_60
  loc_BCBF11: LdPrVar
  loc_BCBF13: LateMemCall
  loc_BCBF19: LitVarStr var_98, " font-weight: bold;"
  loc_BCBF1E: PopAdLdVar
  loc_BCBF1F: FLdPr Me
  loc_BCBF22: MemLdRfVar from_stack_1.global_60
  loc_BCBF25: LdPrVar
  loc_BCBF27: LateMemCall
  loc_BCBF2D: LitVarStr var_98, "}"
  loc_BCBF32: PopAdLdVar
  loc_BCBF33: FLdPr Me
  loc_BCBF36: MemLdRfVar from_stack_1.global_60
  loc_BCBF39: LdPrVar
  loc_BCBF3B: LateMemCall
  loc_BCBF41: LitVarStr var_98, ".Titulo2 {"
  loc_BCBF46: PopAdLdVar
  loc_BCBF47: FLdPr Me
  loc_BCBF4A: MemLdRfVar from_stack_1.global_60
  loc_BCBF4D: LdPrVar
  loc_BCBF4F: LateMemCall
  loc_BCBF55: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCBF5A: PopAdLdVar
  loc_BCBF5B: FLdPr Me
  loc_BCBF5E: MemLdRfVar from_stack_1.global_60
  loc_BCBF61: LdPrVar
  loc_BCBF63: LateMemCall
  loc_BCBF69: LitVarStr var_98, " font-size: 14px;"
  loc_BCBF6E: PopAdLdVar
  loc_BCBF6F: FLdPr Me
  loc_BCBF72: MemLdRfVar from_stack_1.global_60
  loc_BCBF75: LdPrVar
  loc_BCBF77: LateMemCall
  loc_BCBF7D: LitVarStr var_98, " font-weight: bold;"
  loc_BCBF82: PopAdLdVar
  loc_BCBF83: FLdPr Me
  loc_BCBF86: MemLdRfVar from_stack_1.global_60
  loc_BCBF89: LdPrVar
  loc_BCBF8B: LateMemCall
  loc_BCBF91: LitVarStr var_98, "}"
  loc_BCBF96: PopAdLdVar
  loc_BCBF97: FLdPr Me
  loc_BCBF9A: MemLdRfVar from_stack_1.global_60
  loc_BCBF9D: LdPrVar
  loc_BCBF9F: LateMemCall
  loc_BCBFA5: LitVarStr var_98, ".Normal {"
  loc_BCBFAA: PopAdLdVar
  loc_BCBFAB: FLdPr Me
  loc_BCBFAE: MemLdRfVar from_stack_1.global_60
  loc_BCBFB1: LdPrVar
  loc_BCBFB3: LateMemCall
  loc_BCBFB9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCBFBE: PopAdLdVar
  loc_BCBFBF: FLdPr Me
  loc_BCBFC2: MemLdRfVar from_stack_1.global_60
  loc_BCBFC5: LdPrVar
  loc_BCBFC7: LateMemCall
  loc_BCBFCD: LitVarStr var_98, " font-size: 12px;"
  loc_BCBFD2: PopAdLdVar
  loc_BCBFD3: FLdPr Me
  loc_BCBFD6: MemLdRfVar from_stack_1.global_60
  loc_BCBFD9: LdPrVar
  loc_BCBFDB: LateMemCall
  loc_BCBFE1: LitVarStr var_98, " font-style: normal;"
  loc_BCBFE6: PopAdLdVar
  loc_BCBFE7: FLdPr Me
  loc_BCBFEA: MemLdRfVar from_stack_1.global_60
  loc_BCBFED: LdPrVar
  loc_BCBFEF: LateMemCall
  loc_BCBFF5: LitVarStr var_98, " font-weight: normal;"
  loc_BCBFFA: PopAdLdVar
  loc_BCBFFB: FLdPr Me
  loc_BCBFFE: MemLdRfVar from_stack_1.global_60
  loc_BCC001: LdPrVar
  loc_BCC003: LateMemCall
  loc_BCC009: LitVarStr var_98, " font-variant: normal;"
  loc_BCC00E: PopAdLdVar
  loc_BCC00F: FLdPr Me
  loc_BCC012: MemLdRfVar from_stack_1.global_60
  loc_BCC015: LdPrVar
  loc_BCC017: LateMemCall
  loc_BCC01D: LitVarStr var_98, "}"
  loc_BCC022: PopAdLdVar
  loc_BCC023: FLdPr Me
  loc_BCC026: MemLdRfVar from_stack_1.global_60
  loc_BCC029: LdPrVar
  loc_BCC02B: LateMemCall
  loc_BCC031: LitVarStr var_98, ".Encabezado {"
  loc_BCC036: PopAdLdVar
  loc_BCC037: FLdPr Me
  loc_BCC03A: MemLdRfVar from_stack_1.global_60
  loc_BCC03D: LdPrVar
  loc_BCC03F: LateMemCall
  loc_BCC045: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BCC04A: PopAdLdVar
  loc_BCC04B: FLdPr Me
  loc_BCC04E: MemLdRfVar from_stack_1.global_60
  loc_BCC051: LdPrVar
  loc_BCC053: LateMemCall
  loc_BCC059: LitVarStr var_98, " font-size: 11px;"
  loc_BCC05E: PopAdLdVar
  loc_BCC05F: FLdPr Me
  loc_BCC062: MemLdRfVar from_stack_1.global_60
  loc_BCC065: LdPrVar
  loc_BCC067: LateMemCall
  loc_BCC06D: LitVarStr var_98, " font-weight: bold;"
  loc_BCC072: PopAdLdVar
  loc_BCC073: FLdPr Me
  loc_BCC076: MemLdRfVar from_stack_1.global_60
  loc_BCC079: LdPrVar
  loc_BCC07B: LateMemCall
  loc_BCC081: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BCC086: PopAdLdVar
  loc_BCC087: FLdPr Me
  loc_BCC08A: MemLdRfVar from_stack_1.global_60
  loc_BCC08D: LdPrVar
  loc_BCC08F: LateMemCall
  loc_BCC095: LitVarStr var_98, "}"
  loc_BCC09A: PopAdLdVar
  loc_BCC09B: FLdPr Me
  loc_BCC09E: MemLdRfVar from_stack_1.global_60
  loc_BCC0A1: LdPrVar
  loc_BCC0A3: LateMemCall
  loc_BCC0A9: LitVarStr var_98, ".LineaDato {"
  loc_BCC0AE: PopAdLdVar
  loc_BCC0AF: FLdPr Me
  loc_BCC0B2: MemLdRfVar from_stack_1.global_60
  loc_BCC0B5: LdPrVar
  loc_BCC0B7: LateMemCall
  loc_BCC0BD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCC0C2: PopAdLdVar
  loc_BCC0C3: FLdPr Me
  loc_BCC0C6: MemLdRfVar from_stack_1.global_60
  loc_BCC0C9: LdPrVar
  loc_BCC0CB: LateMemCall
  loc_BCC0D1: LitVarStr var_98, " font-size: 10px;"
  loc_BCC0D6: PopAdLdVar
  loc_BCC0D7: FLdPr Me
  loc_BCC0DA: MemLdRfVar from_stack_1.global_60
  loc_BCC0DD: LdPrVar
  loc_BCC0DF: LateMemCall
  loc_BCC0E5: LitVarStr var_98, "}"
  loc_BCC0EA: PopAdLdVar
  loc_BCC0EB: FLdPr Me
  loc_BCC0EE: MemLdRfVar from_stack_1.global_60
  loc_BCC0F1: LdPrVar
  loc_BCC0F3: LateMemCall
  loc_BCC0F9: LitVarStr var_98, ".Totales {"
  loc_BCC0FE: PopAdLdVar
  loc_BCC0FF: FLdPr Me
  loc_BCC102: MemLdRfVar from_stack_1.global_60
  loc_BCC105: LdPrVar
  loc_BCC107: LateMemCall
  loc_BCC10D: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCC112: PopAdLdVar
  loc_BCC113: FLdPr Me
  loc_BCC116: MemLdRfVar from_stack_1.global_60
  loc_BCC119: LdPrVar
  loc_BCC11B: LateMemCall
  loc_BCC121: LitVarStr var_98, " font-size: 12px;"
  loc_BCC126: PopAdLdVar
  loc_BCC127: FLdPr Me
  loc_BCC12A: MemLdRfVar from_stack_1.global_60
  loc_BCC12D: LdPrVar
  loc_BCC12F: LateMemCall
  loc_BCC135: LitVarStr var_98, " font-weight: bold;"
  loc_BCC13A: PopAdLdVar
  loc_BCC13B: FLdPr Me
  loc_BCC13E: MemLdRfVar from_stack_1.global_60
  loc_BCC141: LdPrVar
  loc_BCC143: LateMemCall
  loc_BCC149: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BCC14E: PopAdLdVar
  loc_BCC14F: FLdPr Me
  loc_BCC152: MemLdRfVar from_stack_1.global_60
  loc_BCC155: LdPrVar
  loc_BCC157: LateMemCall
  loc_BCC15D: LitVarStr var_98, "}"
  loc_BCC162: PopAdLdVar
  loc_BCC163: FLdPr Me
  loc_BCC166: MemLdRfVar from_stack_1.global_60
  loc_BCC169: LdPrVar
  loc_BCC16B: LateMemCall
  loc_BCC171: LitVarStr var_98, ".SubTotales {"
  loc_BCC176: PopAdLdVar
  loc_BCC177: FLdPr Me
  loc_BCC17A: MemLdRfVar from_stack_1.global_60
  loc_BCC17D: LdPrVar
  loc_BCC17F: LateMemCall
  loc_BCC185: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCC18A: PopAdLdVar
  loc_BCC18B: FLdPr Me
  loc_BCC18E: MemLdRfVar from_stack_1.global_60
  loc_BCC191: LdPrVar
  loc_BCC193: LateMemCall
  loc_BCC199: LitVarStr var_98, " font-size: 10px;"
  loc_BCC19E: PopAdLdVar
  loc_BCC19F: FLdPr Me
  loc_BCC1A2: MemLdRfVar from_stack_1.global_60
  loc_BCC1A5: LdPrVar
  loc_BCC1A7: LateMemCall
  loc_BCC1AD: LitVarStr var_98, " font-weight: bold;"
  loc_BCC1B2: PopAdLdVar
  loc_BCC1B3: FLdPr Me
  loc_BCC1B6: MemLdRfVar from_stack_1.global_60
  loc_BCC1B9: LdPrVar
  loc_BCC1BB: LateMemCall
  loc_BCC1C1: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BCC1C6: PopAdLdVar
  loc_BCC1C7: FLdPr Me
  loc_BCC1CA: MemLdRfVar from_stack_1.global_60
  loc_BCC1CD: LdPrVar
  loc_BCC1CF: LateMemCall
  loc_BCC1D5: LitVarStr var_98, "}"
  loc_BCC1DA: PopAdLdVar
  loc_BCC1DB: FLdPr Me
  loc_BCC1DE: MemLdRfVar from_stack_1.global_60
  loc_BCC1E1: LdPrVar
  loc_BCC1E3: LateMemCall
  loc_BCC1E9: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BCC1EE: PopAdLdVar
  loc_BCC1EF: FLdPr Me
  loc_BCC1F2: MemLdRfVar from_stack_1.global_60
  loc_BCC1F5: LdPrVar
  loc_BCC1F7: LateMemCall
  loc_BCC1FD: LitVarStr var_98, "</style>"
  loc_BCC202: PopAdLdVar
  loc_BCC203: FLdPr Me
  loc_BCC206: MemLdRfVar from_stack_1.global_60
  loc_BCC209: LdPrVar
  loc_BCC20B: LateMemCall
  loc_BCC211: LitI4 0
  loc_BCC216: FStStrCopy var_B0
  loc_BCC219: FLdRfVar var_B0
  loc_BCC21C: LitI4 0
  loc_BCC221: FStStrCopy var_AC
  loc_BCC224: FLdRfVar var_AC
  loc_BCC227: LitI2_Byte &HFF
  loc_BCC229: PopTmpLdAd2 var_C2
  loc_BCC22C: FLdPr Me
  loc_BCC22F: MemLdRfVar from_stack_1.global_60
  loc_BCC232: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BCC237: FFreeStr var_AC = ""
  loc_BCC23E: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BCC243: PopAdLdVar
  loc_BCC244: FLdPr Me
  loc_BCC247: MemLdRfVar from_stack_1.global_60
  loc_BCC24A: LdPrVar
  loc_BCC24C: LateMemCall
  loc_BCC252: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BCC257: PopAdLdVar
  loc_BCC258: FLdPr Me
  loc_BCC25B: MemLdRfVar from_stack_1.global_60
  loc_BCC25E: LdPrVar
  loc_BCC260: LateMemCall
  loc_BCC266: LitVarStr var_98, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p>"
  loc_BCC26B: PopAdLdVar
  loc_BCC26C: FLdPr Me
  loc_BCC26F: MemLdRfVar from_stack_1.global_60
  loc_BCC272: LdPrVar
  loc_BCC274: LateMemCall
  loc_BCC27A: FLdPr Me
  loc_BCC27D: MemLdI2 bLogos
  loc_BCC280: BranchF loc_BCC2C9
  loc_BCC283: LitStr "  <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BCC286: LitI2_Byte &H5F
  loc_BCC288: CStrUI1
  loc_BCC28A: FStStrNoPop var_AC
  loc_BCC28D: ConcatStr
  loc_BCC28E: FStStrNoPop var_B0
  loc_BCC291: LitStr """ height="""
  loc_BCC294: ConcatStr
  loc_BCC295: FStStrNoPop var_C8
  loc_BCC298: LitI2_Byte &H3C
  loc_BCC29A: CStrUI1
  loc_BCC29C: FStStrNoPop var_CC
  loc_BCC29F: ConcatStr
  loc_BCC2A0: FStStrNoPop var_D0
  loc_BCC2A3: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BCC2A6: ConcatStr
  loc_BCC2A7: CVarStr var_C0
  loc_BCC2AA: PopAdLdVar
  loc_BCC2AB: FLdPr Me
  loc_BCC2AE: MemLdRfVar from_stack_1.global_60
  loc_BCC2B1: LdPrVar
  loc_BCC2B3: LateMemCall
  loc_BCC2B9: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = ""
  loc_BCC2C6: FFree1Var var_C0 = ""
  loc_BCC2C9: LitStr "     <br>"
  loc_BCC2CC: LitStr "Municipalidad de Guaymallén"
  loc_BCC2CF: ConcatStr
  loc_BCC2D0: FStStrNoPop var_AC
  loc_BCC2D3: LitStr "</p>"
  loc_BCC2D6: ConcatStr
  loc_BCC2D7: CVarStr var_C0
  loc_BCC2DA: PopAdLdVar
  loc_BCC2DB: FLdPr Me
  loc_BCC2DE: MemLdRfVar from_stack_1.global_60
  loc_BCC2E1: LdPrVar
  loc_BCC2E3: LateMemCall
  loc_BCC2E9: FFree1Str var_AC
  loc_BCC2EC: FFree1Var var_C0 = ""
  loc_BCC2EF: LitStr "    <p>"
  loc_BCC2F2: FLdRfVar var_AC
  loc_BCC2F5: FLdPr Me
  loc_BCC2F8:  = Me.Caption
  loc_BCC2FD: ILdRf var_AC
  loc_BCC300: ConcatStr
  loc_BCC301: FStStrNoPop var_B0
  loc_BCC304: LitStr "</p></th>"
  loc_BCC307: ConcatStr
  loc_BCC308: CVarStr var_C0
  loc_BCC30B: PopAdLdVar
  loc_BCC30C: FLdPr Me
  loc_BCC30F: MemLdRfVar from_stack_1.global_60
  loc_BCC312: LdPrVar
  loc_BCC314: LateMemCall
  loc_BCC31A: FFreeStr var_AC = ""
  loc_BCC321: FFree1Var var_C0 = ""
  loc_BCC324: LitVarStr var_98, "  </tr>"
  loc_BCC329: PopAdLdVar
  loc_BCC32A: FLdPr Me
  loc_BCC32D: MemLdRfVar from_stack_1.global_60
  loc_BCC330: LdPrVar
  loc_BCC332: LateMemCall
  loc_BCC338: LitVarStr var_98, "  <tr>"
  loc_BCC33D: PopAdLdVar
  loc_BCC33E: FLdPr Me
  loc_BCC341: MemLdRfVar from_stack_1.global_60
  loc_BCC344: LdPrVar
  loc_BCC346: LateMemCall
  loc_BCC34C: LitVarStr var_98, "    <th colspan=""3""><hr></th>"
  loc_BCC351: PopAdLdVar
  loc_BCC352: FLdPr Me
  loc_BCC355: MemLdRfVar from_stack_1.global_60
  loc_BCC358: LdPrVar
  loc_BCC35A: LateMemCall
  loc_BCC360: LitVarStr var_98, "  </tr>"
  loc_BCC365: PopAdLdVar
  loc_BCC366: FLdPr Me
  loc_BCC369: MemLdRfVar from_stack_1.global_60
  loc_BCC36C: LdPrVar
  loc_BCC36E: LateMemCall
  loc_BCC374: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BCC379: PopAdLdVar
  loc_BCC37A: FLdPr Me
  loc_BCC37D: MemLdRfVar from_stack_1.global_60
  loc_BCC380: LdPrVar
  loc_BCC382: LateMemCall
  loc_BCC388: LitStr "    <td align=""left"" valign=""top""><strong>Periodo: </strong>"
  loc_BCC38B: FLdPr Me
  loc_BCC38E: VCallAd Control_ID_PeriInfoMsk
  loc_BCC391: FStAdFunc var_D4
  loc_BCC394: FLdPr var_D4
  loc_BCC397: LateIdLdVar var_C0 DispID_22 0
  loc_BCC39E: CStrVarTmp
  loc_BCC39F: FStStrNoPop var_AC
  loc_BCC3A2: ConcatStr
  loc_BCC3A3: FStStrNoPop var_B0
  loc_BCC3A6: LitStr "</td>"
  loc_BCC3A9: ConcatStr
  loc_BCC3AA: CVarStr var_E4
  loc_BCC3AD: PopAdLdVar
  loc_BCC3AE: FLdPr Me
  loc_BCC3B1: MemLdRfVar from_stack_1.global_60
  loc_BCC3B4: LdPrVar
  loc_BCC3B6: LateMemCall
  loc_BCC3BC: FFreeStr var_AC = ""
  loc_BCC3C3: FFree1Ad var_D4
  loc_BCC3C6: FFreeVar var_C0 = ""
  loc_BCC3CD: LitStr "    <td align=""center"" valign=""top""><strong>Trimestre: </strong>"
  loc_BCC3D0: FLdRfVar var_AC
  loc_BCC3D3: FLdPr Me
  loc_BCC3D6: VCallAd Control_ID_TrimestreCbo
  loc_BCC3D9: FStAdFunc var_D4
  loc_BCC3DC: FLdPr var_D4
  loc_BCC3DF:  = Me.Text
  loc_BCC3E4: ILdRf var_AC
  loc_BCC3E7: ConcatStr
  loc_BCC3E8: FStStrNoPop var_B0
  loc_BCC3EB: LitStr "</td>"
  loc_BCC3EE: ConcatStr
  loc_BCC3EF: CVarStr var_C0
  loc_BCC3F2: PopAdLdVar
  loc_BCC3F3: FLdPr Me
  loc_BCC3F6: MemLdRfVar from_stack_1.global_60
  loc_BCC3F9: LdPrVar
  loc_BCC3FB: LateMemCall
  loc_BCC401: FFreeStr var_AC = ""
  loc_BCC408: FFree1Ad var_D4
  loc_BCC40B: FFree1Var var_C0 = ""
  loc_BCC40E: LitStr "    <td align=""right"" valign=""top""><strong>Nomenclador: </strong>"
  loc_BCC411: LitStr "060204"
  loc_BCC414: ConcatStr
  loc_BCC415: FStStrNoPop var_AC
  loc_BCC418: LitStr "</td>"
  loc_BCC41B: ConcatStr
  loc_BCC41C: CVarStr var_C0
  loc_BCC41F: PopAdLdVar
  loc_BCC420: FLdPr Me
  loc_BCC423: MemLdRfVar from_stack_1.global_60
  loc_BCC426: LdPrVar
  loc_BCC428: LateMemCall
  loc_BCC42E: FFree1Str var_AC
  loc_BCC431: FFree1Var var_C0 = ""
  loc_BCC434: LitVarStr var_98, "  </tr>"
  loc_BCC439: PopAdLdVar
  loc_BCC43A: FLdPr Me
  loc_BCC43D: MemLdRfVar from_stack_1.global_60
  loc_BCC440: LdPrVar
  loc_BCC442: LateMemCall
  loc_BCC448: LitVarStr var_98, "</table>"
  loc_BCC44D: PopAdLdVar
  loc_BCC44E: FLdPr Me
  loc_BCC451: MemLdRfVar from_stack_1.global_60
  loc_BCC454: LdPrVar
  loc_BCC456: LateMemCall
  loc_BCC45C: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BCC461: PopAdLdVar
  loc_BCC462: FLdPr Me
  loc_BCC465: MemLdRfVar from_stack_1.global_60
  loc_BCC468: LdPrVar
  loc_BCC46A: LateMemCall
  loc_BCC470: LitVarStr var_98, "  <thead>"
  loc_BCC475: PopAdLdVar
  loc_BCC476: FLdPr Me
  loc_BCC479: MemLdRfVar from_stack_1.global_60
  loc_BCC47C: LdPrVar
  loc_BCC47E: LateMemCall
  loc_BCC484: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BCC489: PopAdLdVar
  loc_BCC48A: FLdPr Me
  loc_BCC48D: MemLdRfVar from_stack_1.global_60
  loc_BCC490: LdPrVar
  loc_BCC492: LateMemCall
  loc_BCC498: LitVarStr var_98, "    <th>Lit.</th>"
  loc_BCC49D: PopAdLdVar
  loc_BCC49E: FLdPr Me
  loc_BCC4A1: MemLdRfVar from_stack_1.global_60
  loc_BCC4A4: LdPrVar
  loc_BCC4A6: LateMemCall
  loc_BCC4AC: LitVarStr var_98, "    <th>Expediente</th>"
  loc_BCC4B1: PopAdLdVar
  loc_BCC4B2: FLdPr Me
  loc_BCC4B5: MemLdRfVar from_stack_1.global_60
  loc_BCC4B8: LdPrVar
  loc_BCC4BA: LateMemCall
  loc_BCC4C0: LitVarStr var_98, "    <th>Carátula</th>"
  loc_BCC4C5: PopAdLdVar
  loc_BCC4C6: FLdPr Me
  loc_BCC4C9: MemLdRfVar from_stack_1.global_60
  loc_BCC4CC: LdPrVar
  loc_BCC4CE: LateMemCall
  loc_BCC4D4: LitVarStr var_98, "    <th>Tribunal</th>"
  loc_BCC4D9: PopAdLdVar
  loc_BCC4DA: FLdPr Me
  loc_BCC4DD: MemLdRfVar from_stack_1.global_60
  loc_BCC4E0: LdPrVar
  loc_BCC4E2: LateMemCall
  loc_BCC4E8: LitVarStr var_98, "    <th>Circunscripción</th>"
  loc_BCC4ED: PopAdLdVar
  loc_BCC4EE: FLdPr Me
  loc_BCC4F1: MemLdRfVar from_stack_1.global_60
  loc_BCC4F4: LdPrVar
  loc_BCC4F6: LateMemCall
  loc_BCC4FC: LitVarStr var_98, "    <th>Fecha</th>"
  loc_BCC501: PopAdLdVar
  loc_BCC502: FLdPr Me
  loc_BCC505: MemLdRfVar from_stack_1.global_60
  loc_BCC508: LdPrVar
  loc_BCC50A: LateMemCall
  loc_BCC510: LitVarStr var_98, "    <th>Monto</th>"
  loc_BCC515: PopAdLdVar
  loc_BCC516: FLdPr Me
  loc_BCC519: MemLdRfVar from_stack_1.global_60
  loc_BCC51C: LdPrVar
  loc_BCC51E: LateMemCall
  loc_BCC524: LitVarStr var_98, "    <th>Apremio</th>"
  loc_BCC529: PopAdLdVar
  loc_BCC52A: FLdPr Me
  loc_BCC52D: MemLdRfVar from_stack_1.global_60
  loc_BCC530: LdPrVar
  loc_BCC532: LateMemCall
  loc_BCC538: LitVarStr var_98, "  </tr>"
  loc_BCC53D: PopAdLdVar
  loc_BCC53E: FLdPr Me
  loc_BCC541: MemLdRfVar from_stack_1.global_60
  loc_BCC544: LdPrVar
  loc_BCC546: LateMemCall
  loc_BCC54C: LitVarStr var_98, "  </thead>"
  loc_BCC551: PopAdLdVar
  loc_BCC552: FLdPr Me
  loc_BCC555: MemLdRfVar from_stack_1.global_60
  loc_BCC558: LdPrVar
  loc_BCC55A: LateMemCall
  loc_BCC560: ExitProcHresult
End Function

Private Function Proc_339_22_A0EC18() 'A0EC18
  'Data Table: 492FA8
  loc_A0EBD8: LitVarStr var_94, "</table>"
  loc_A0EBDD: PopAdLdVar
  loc_A0EBDE: FLdPr Me
  loc_A0EBE1: MemLdRfVar from_stack_1.global_60
  loc_A0EBE4: LdPrVar
  loc_A0EBE6: LateMemCall
  loc_A0EBEC: LitVarStr var_94, "</body>"
  loc_A0EBF1: PopAdLdVar
  loc_A0EBF2: FLdPr Me
  loc_A0EBF5: MemLdRfVar from_stack_1.global_60
  loc_A0EBF8: LdPrVar
  loc_A0EBFA: LateMemCall
  loc_A0EC00: LitVarStr var_94, "</html>"
  loc_A0EC05: PopAdLdVar
  loc_A0EC06: FLdPr Me
  loc_A0EC09: MemLdRfVar from_stack_1.global_60
  loc_A0EC0C: LdPrVar
  loc_A0EC0E: LateMemCall
  loc_A0EC14: ExitProcHresult
End Function
