VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949AnexoVI
  Caption = "Acuerdo 3949 - Anexo VI"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949AnexoVI.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7725
  ClientHeight = 4215
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6255
    Height = 2655
    TabIndex = 0
    Begin VB.Frame Frame4
      Left = 960
      Top = 1320
      Width = 1455
      Height = 1095
      TabIndex = 9
      Begin VB.OptionButton optSintetico
        Caption = "Sintético"
        Left = 240
        Top = 240
        Width = 1095
        Height = 255
        TabIndex = 10
      End
      Begin VB.OptionButton optAnalitico
        Caption = "Analítico"
        Left = 240
        Top = 600
        Width = 1095
        Height = 255
        TabIndex = 11
      End
    End
    Begin VB.Frame Frame5
      Left = 2280
      Top = 1320
      Width = 1815
      Height = 1095
      TabIndex = 6
      Begin VB.OptionButton optJurisdiccion
        Caption = "Por Jurisdicción"
        Left = 240
        Top = 600
        Width = 1455
        Height = 255
        TabIndex = 8
      End
      Begin VB.OptionButton optConsolidado
        Caption = "Consolidado"
        Left = 240
        Top = 240
        Width = 1215
        Height = 255
        TabIndex = 7
      End
    End
    Begin VB.ComboBox cboTrimestre
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 840
      Width = 1455
      Height = 315
      TabIndex = 5
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.Label Label2
      Caption = "Trimestre:"
      Left = 990
      Top = 840
      Width = 690
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1095
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3960
    Width = 7725
    Height = 255
    TabIndex = 21
    OleObjectBlob = "rptA3949AnexoVI.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 12
    Cancel = -1  'True
    Picture = "rptA3949AnexoVI.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949AnexoVI.frx":0B9C
    Left = 6360
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2760
    Width = 4455
    Height = 1095
    TabIndex = 17
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 20
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 19
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2760
    Width = 3015
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6600
    Top = 480
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptA3949AnexoVI.frx":0C00
  End
End

Attribute VB_Name = "rptA3949AnexoVI"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_0059A1E0
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_005C8AFC
  bStruc(24) As Byte ' String fields: 2
End Type

Private Type UDT_3_005C8920
  bStruc(24) As Byte ' String fields: 2
End Type

Private Type UDT_4_005C8EFC
  bStruc(24) As Byte ' String fields: 2
End Type

Private Type UDT_5_005C8F44
  bStruc(32) As Byte ' String fields: 4
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98665C
  'Data Table: 483860
  loc_986624: FLdPr Me
  loc_986627: VCallAd Control_ID_statusBar
  loc_98662A: FStAdFunc var_88
  loc_98662D: FLdPr var_88
  loc_986630: LateIdLdVar var_98 DispID_1 0
  loc_986637: CStrVarTmp
  loc_986638: CVarStr var_A8
  loc_98663B: PopAdLdVar
  loc_98663C: FLdPr Me
  loc_98663F: VCallAd Control_ID_statusBar
  loc_986642: FStAdFunc var_BC
  loc_986645: FLdPr var_BC
  loc_986648: LateIdSt
  loc_98664D: FFreeAd var_88 = ""
  loc_986654: FFreeVar var_98 = ""
  loc_98665B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95DE08
  'Data Table: 483860
  loc_95DDF0: ILdRf Me
  loc_95DDF3: CastAd
  loc_95DDF6: FStAdFunc var_88
  loc_95DDF9: FLdRfVar var_88
  loc_95DDFC: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95DE01: FFree1Ad var_88
  loc_95DE04: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9574F0
  'Data Table: 483860
  loc_9574D8: LitI2_Byte 0
  loc_9574DA: ILdRf Me
  loc_9574DD: CastAd
  loc_9574E0: FStAdFunc var_88
  loc_9574E3: FLdRfVar var_88
  loc_9574E6: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9574EB: FFree1Ad var_88
  loc_9574EE: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '996110
  'Data Table: 483860
  loc_9960AC: FLdRfVar var_92
  loc_9960AF: FLdPr Me
  loc_9960B2: VCallAd Control_ID_optConsolidado
  loc_9960B5: FStAdFunc var_90
  loc_9960B8: FLdPr var_90
  loc_9960BB:  = Me.Value
  loc_9960C0: FLdI2 var_92
  loc_9960C3: FLdRfVar var_8A
  loc_9960C6: FLdPr Me
  loc_9960C9: VCallAd Control_ID_optSintetico
  loc_9960CC: FStAdFunc var_88
  loc_9960CF: FLdPr var_88
  loc_9960D2:  = Me.Value
  loc_9960D7: FLdI2 var_8A
  loc_9960DA: AndI4
  loc_9960DB: NotI4
  loc_9960DC: FFreeAd var_88 = ""
  loc_9960E3: BranchF loc_9960F6
  loc_9960E6: LitI4 0
  loc_9960EB: LitStr "Para generar el archivo de texto debe seleccionar: 'Sintético' y 'Consolidado'"
  loc_9960EE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9960F3: Branch loc_99610C
  loc_9960F6: LitI2_Byte &HFF
  loc_9960F8: ILdRf Me
  loc_9960FB: CastAd
  loc_9960FE: FStAdFunc var_88
  loc_996101: FLdRfVar var_88
  loc_996104: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_996109: FFree1Ad var_88
  loc_99610C: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95AF6C
  'Data Table: 483860
  loc_95AF54: ILdRf Me
  loc_95AF57: CastAd
  loc_95AF5A: FStAdFunc var_88
  loc_95AF5D: FLdRfVar var_88
  loc_95AF60: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95AF65: FFree1Ad var_88
  loc_95AF68: ExitProcHresult
End Sub

Private Sub Form_Load() 'A1BF3C
  'Data Table: 483860
  loc_A1BDAC: LitI2_Byte &HFF
  loc_A1BDAE: ImpAdStI2 MemVar_C3D840
  loc_A1BDB1: ILdRf Me
  loc_A1BDB4: CastAd
  loc_A1BDB7: FStAdFunc var_8C
  loc_A1BDBA: FLdRfVar var_8C
  loc_A1BDBD: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A1BDC2: FFree1Ad var_8C
  loc_A1BDC5: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A1BDC8: FLdRfVar var_88
  loc_A1BDCB: NewIfNullPr clsperiodo
  loc_A1BDCE: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A1BDD3: FLdRfVar var_90
  loc_A1BDD6: FLdRfVar var_88
  loc_A1BDD9: NewIfNullPr clsperiodo
  loc_A1BDDC: from_stack_1 = clsperiodo.RecordCount
  loc_A1BDE1: ILdRf var_90
  loc_A1BDE4: LitI4 0
  loc_A1BDE9: GtI4
  loc_A1BDEA: BranchF loc_A1BE7D
  loc_A1BDED: FLdRfVar var_88
  loc_A1BDF0: NewIfNullPr clsperiodo
  loc_A1BDF3: Call clsperiodo.MoveFirst()
  loc_A1BDF8: FLdRfVar var_92
  loc_A1BDFB: FLdRfVar var_88
  loc_A1BDFE: NewIfNullPr clsperiodo
  loc_A1BE01: from_stack_1 = clsperiodo.EOF
  loc_A1BE06: FLdI2 var_92
  loc_A1BE09: NotI4
  loc_A1BE0A: BranchF loc_A1BE7D
  loc_A1BE0D: LitVar_Missing var_D0
  loc_A1BE10: PopAdLdVar
  loc_A1BE11: FLdRfVar var_BC
  loc_A1BE14: FLdRfVar var_AC
  loc_A1BE17: LitVarStr var_A8, "PeriInfo"
  loc_A1BE1C: PopAdLdVar
  loc_A1BE1D: FLdRfVar var_98
  loc_A1BE20: FLdRfVar var_8C
  loc_A1BE23: FLdRfVar var_88
  loc_A1BE26: NewIfNullPr clsperiodo
  loc_A1BE29: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A1BE2E: FLdPr var_8C
  loc_A1BE31:  = Me.Fields
  loc_A1BE36: FLdPr var_98
  loc_A1BE39: from_stack_2 = Me.Item(from_stack_1)
  loc_A1BE3E: FLdPr var_AC
  loc_A1BE41:  = Me.Value
  loc_A1BE46: FLdRfVar var_BC
  loc_A1BE49: CStrVarTmp
  loc_A1BE4A: FStStrNoPop var_C0
  loc_A1BE4D: FLdPr Me
  loc_A1BE50: VCallAd Control_ID_cboPeriodo
  loc_A1BE53: FStAdFunc var_D4
  loc_A1BE56: FLdPr var_D4
  loc_A1BE59: Me.AddItem from_stack_1, from_stack_2
  loc_A1BE5E: FFree1Str var_C0
  loc_A1BE61: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_A1BE6C: FFree1Var var_BC = ""
  loc_A1BE6F: FLdRfVar var_88
  loc_A1BE72: NewIfNullPr clsperiodo
  loc_A1BE75: Call clsperiodo.MoveSiguiente()
  loc_A1BE7A: Branch loc_A1BDF8
  loc_A1BE7D: FLdPr Me
  loc_A1BE80: VCallAd Control_ID_cboTrimestre
  loc_A1BE83: FStAdFunc var_D8
  loc_A1BE86: LitVar_Missing var_A8
  loc_A1BE89: PopAdLdVar
  loc_A1BE8A: LitStr "Primero"
  loc_A1BE8D: FLdPr var_D8
  loc_A1BE90: Me.AddItem from_stack_1, from_stack_2
  loc_A1BE95: LitI4 1
  loc_A1BE9A: FLdRfVar var_92
  loc_A1BE9D: FLdPr var_D8
  loc_A1BEA0:  = Me.NewIndex
  loc_A1BEA5: FLdI2 var_92
  loc_A1BEA8: FLdPr var_D8
  loc_A1BEAB: Me.ItemData = from_stack_1
  loc_A1BEB0: LitVar_Missing var_A8
  loc_A1BEB3: PopAdLdVar
  loc_A1BEB4: LitStr "Segundo"
  loc_A1BEB7: FLdPr var_D8
  loc_A1BEBA: Me.AddItem from_stack_1, from_stack_2
  loc_A1BEBF: LitI4 2
  loc_A1BEC4: FLdRfVar var_92
  loc_A1BEC7: FLdPr var_D8
  loc_A1BECA:  = Me.NewIndex
  loc_A1BECF: FLdI2 var_92
  loc_A1BED2: FLdPr var_D8
  loc_A1BED5: Me.ItemData = from_stack_1
  loc_A1BEDA: LitVar_Missing var_A8
  loc_A1BEDD: PopAdLdVar
  loc_A1BEDE: LitStr "Tercero"
  loc_A1BEE1: FLdPr var_D8
  loc_A1BEE4: Me.AddItem from_stack_1, from_stack_2
  loc_A1BEE9: LitI4 3
  loc_A1BEEE: FLdRfVar var_92
  loc_A1BEF1: FLdPr var_D8
  loc_A1BEF4:  = Me.NewIndex
  loc_A1BEF9: FLdI2 var_92
  loc_A1BEFC: FLdPr var_D8
  loc_A1BEFF: Me.ItemData = from_stack_1
  loc_A1BF04: LitVar_Missing var_A8
  loc_A1BF07: PopAdLdVar
  loc_A1BF08: LitStr "Cuarto"
  loc_A1BF0B: FLdPr var_D8
  loc_A1BF0E: Me.AddItem from_stack_1, from_stack_2
  loc_A1BF13: LitI4 4
  loc_A1BF18: FLdRfVar var_92
  loc_A1BF1B: FLdPr var_D8
  loc_A1BF1E:  = Me.NewIndex
  loc_A1BF23: FLdI2 var_92
  loc_A1BF26: FLdPr var_D8
  loc_A1BF29: Me.ItemData = from_stack_1
  loc_A1BF2E: LitNothing
  loc_A1BF30: FStAd var_D8 
  loc_A1BF34: Call cmdNueva_Click()
  loc_A1BF39: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '960324
  'Data Table: 483860
  loc_96030C: FLdPr Me
  loc_96030F: VCallAd Control_ID_wbbReporte
  loc_960312: FStAdFunc var_88
  loc_960315: FLdRfVar var_88
  loc_960318: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_96031D: FFree1Ad var_88
  loc_960320: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '976734
  'Data Table: 483860
  loc_976704: LitVarStr var_94, "Cerrando..."
  loc_976709: PopAdLdVar
  loc_97670A: FLdPr Me
  loc_97670D: VCallAd Control_ID_statusBar
  loc_976710: FStAdFunc var_A8
  loc_976713: FLdPr var_A8
  loc_976716: LateIdSt
  loc_97671B: FFree1Ad var_A8
  loc_97671E: ILdRf Me
  loc_976721: FStAdNoPop
  loc_976725: ImpAdLdRf MemVar_C44F9C
  loc_976728: NewIfNullPr Me
  loc_97672B: Me.Global.Unload from_stack_1
  loc_976730: FFree1Ad var_A8
  loc_976733: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A1C4E8
  'Data Table: 483860
  loc_A1C34C: LitI2_Byte 0
  loc_A1C34E: FLdPr Me
  loc_A1C351: MemStI2 bGenerado
  loc_A1C354: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A1C359: ImpAdLdI2 MemVar_C3D064
  loc_A1C35C: CStrUI1
  loc_A1C35E: FStStrNoPop var_88
  loc_A1C361: FLdPr Me
  loc_A1C364: VCallAd Control_ID_cboPeriodo
  loc_A1C367: FStAdFunc var_8C
  loc_A1C36A: FLdPr var_8C
  loc_A1C36D: Me.Text = from_stack_1
  loc_A1C372: FFree1Str var_88
  loc_A1C375: FFree1Ad var_8C
  loc_A1C378: FLdRfVar var_9C
  loc_A1C37B: ImpAdCallFPR4  = Date
  loc_A1C380: FLdRfVar var_9C
  loc_A1C383: FLdRfVar var_AC
  loc_A1C386: ImpAdCallFPR4  = Month()
  loc_A1C38B: FLdRfVar var_AC
  loc_A1C38E: FStVar var_BC
  loc_A1C392: FFree1Var var_9C = ""
  loc_A1C395: FLdRfVar var_BC
  loc_A1C398: LitVarI2 var_CC, 1
  loc_A1C39D: HardType
  loc_A1C39E: EqVarBool
  loc_A1C3A0: BranchT loc_A1C3BF
  loc_A1C3A3: FLdRfVar var_BC
  loc_A1C3A6: LitVarI2 var_DC, 2
  loc_A1C3AB: HardType
  loc_A1C3AC: EqVarBool
  loc_A1C3AE: BranchT loc_A1C3BF
  loc_A1C3B1: FLdRfVar var_BC
  loc_A1C3B4: LitVarI2 var_EC, 3
  loc_A1C3B9: HardType
  loc_A1C3BA: EqVarBool
  loc_A1C3BC: BranchF loc_A1C3D9
  loc_A1C3BF: LitStr "Primero"
  loc_A1C3C2: FLdPr Me
  loc_A1C3C5: VCallAd Control_ID_cboTrimestre
  loc_A1C3C8: FStAdFunc var_8C
  loc_A1C3CB: FLdPr var_8C
  loc_A1C3CE: Me.Text = from_stack_1
  loc_A1C3D3: FFree1Ad var_8C
  loc_A1C3D6: Branch loc_A1C4A2
  loc_A1C3D9: FLdRfVar var_BC
  loc_A1C3DC: LitVarI2 var_CC, 4
  loc_A1C3E1: HardType
  loc_A1C3E2: EqVarBool
  loc_A1C3E4: BranchT loc_A1C403
  loc_A1C3E7: FLdRfVar var_BC
  loc_A1C3EA: LitVarI2 var_DC, 5
  loc_A1C3EF: HardType
  loc_A1C3F0: EqVarBool
  loc_A1C3F2: BranchT loc_A1C403
  loc_A1C3F5: FLdRfVar var_BC
  loc_A1C3F8: LitVarI2 var_EC, 6
  loc_A1C3FD: HardType
  loc_A1C3FE: EqVarBool
  loc_A1C400: BranchF loc_A1C41D
  loc_A1C403: LitStr "Segundo"
  loc_A1C406: FLdPr Me
  loc_A1C409: VCallAd Control_ID_cboTrimestre
  loc_A1C40C: FStAdFunc var_8C
  loc_A1C40F: FLdPr var_8C
  loc_A1C412: Me.Text = from_stack_1
  loc_A1C417: FFree1Ad var_8C
  loc_A1C41A: Branch loc_A1C4A2
  loc_A1C41D: FLdRfVar var_BC
  loc_A1C420: LitVarI2 var_CC, 7
  loc_A1C425: HardType
  loc_A1C426: EqVarBool
  loc_A1C428: BranchT loc_A1C447
  loc_A1C42B: FLdRfVar var_BC
  loc_A1C42E: LitVarI2 var_DC, 8
  loc_A1C433: HardType
  loc_A1C434: EqVarBool
  loc_A1C436: BranchT loc_A1C447
  loc_A1C439: FLdRfVar var_BC
  loc_A1C43C: LitVarI2 var_EC, 9
  loc_A1C441: HardType
  loc_A1C442: EqVarBool
  loc_A1C444: BranchF loc_A1C461
  loc_A1C447: LitStr "Tercero"
  loc_A1C44A: FLdPr Me
  loc_A1C44D: VCallAd Control_ID_cboTrimestre
  loc_A1C450: FStAdFunc var_8C
  loc_A1C453: FLdPr var_8C
  loc_A1C456: Me.Text = from_stack_1
  loc_A1C45B: FFree1Ad var_8C
  loc_A1C45E: Branch loc_A1C4A2
  loc_A1C461: FLdRfVar var_BC
  loc_A1C464: LitVarI2 var_CC, 10
  loc_A1C469: HardType
  loc_A1C46A: EqVarBool
  loc_A1C46C: BranchT loc_A1C48B
  loc_A1C46F: FLdRfVar var_BC
  loc_A1C472: LitVarI2 var_DC, 11
  loc_A1C477: HardType
  loc_A1C478: EqVarBool
  loc_A1C47A: BranchT loc_A1C48B
  loc_A1C47D: FLdRfVar var_BC
  loc_A1C480: LitVarI2 var_EC, 12
  loc_A1C485: HardType
  loc_A1C486: EqVarBool
  loc_A1C488: BranchF loc_A1C4A2
  loc_A1C48B: LitStr "Cuarto"
  loc_A1C48E: FLdPr Me
  loc_A1C491: VCallAd Control_ID_cboTrimestre
  loc_A1C494: FStAdFunc var_8C
  loc_A1C497: FLdPr var_8C
  loc_A1C49A: Me.Text = from_stack_1
  loc_A1C49F: FFree1Ad var_8C
  loc_A1C4A2: LitI2_Byte &HFF
  loc_A1C4A4: FLdPr Me
  loc_A1C4A7: VCallAd Control_ID_optSintetico
  loc_A1C4AA: FStAdFunc var_8C
  loc_A1C4AD: FLdPr var_8C
  loc_A1C4B0: Me.Value = from_stack_1b
  loc_A1C4B5: FFree1Ad var_8C
  loc_A1C4B8: LitI2_Byte &HFF
  loc_A1C4BA: FLdPr Me
  loc_A1C4BD: VCallAd Control_ID_optConsolidado
  loc_A1C4C0: FStAdFunc var_8C
  loc_A1C4C3: FLdPr var_8C
  loc_A1C4C6: Me.Value = from_stack_1b
  loc_A1C4CB: FFree1Ad var_8C
  loc_A1C4CE: Call HabilitarCriterio()
  loc_A1C4D3: ILdRf Me
  loc_A1C4D6: CastAd
  loc_A1C4D9: FStAdFunc var_8C
  loc_A1C4DC: FLdRfVar var_8C
  loc_A1C4DF: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A1C4E4: FFree1Ad var_8C
  loc_A1C4E7: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '9572DC
  'Data Table: 483860
  loc_9572C4: ILdRf Me
  loc_9572C7: CastAd
  loc_9572CA: FStAdFunc var_88
  loc_9572CD: FLdRfVar var_88
  loc_9572D0: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_9572D5: FFree1Ad var_88
  loc_9572D8: ExitProcHresult
End Sub

Public Function htmFileGet() '484884
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '484893
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4848A2
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4848B1
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4848C0
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AB194
  'Data Table: 483860
  loc_9AB110: LitI4 0
  loc_9AB115: LitI4 5
  loc_9AB11A: FLdRfVar var_88
  loc_9AB11D: Redim
  loc_9AB127: FLdPr Me
  loc_9AB12A: VCallAd Control_ID_cboPeriodo
  loc_9AB12D: CVarAd
  loc_9AB131: ParmAry1St
  loc_9AB137: FLdPr Me
  loc_9AB13A: VCallAd Control_ID_cboTrimestre
  loc_9AB13D: CVarAd
  loc_9AB141: ParmAry1St
  loc_9AB147: FLdPr Me
  loc_9AB14A: VCallAd Control_ID_optAnalitico
  loc_9AB14D: CVarAd
  loc_9AB151: ParmAry1St
  loc_9AB157: FLdPr Me
  loc_9AB15A: VCallAd Control_ID_optSintetico
  loc_9AB15D: CVarAd
  loc_9AB161: ParmAry1St
  loc_9AB167: FLdPr Me
  loc_9AB16A: VCallAd Control_ID_optConsolidado
  loc_9AB16D: CVarAd
  loc_9AB171: ParmAry1St
  loc_9AB177: FLdPr Me
  loc_9AB17A: VCallAd Control_ID_optJurisdiccion
  loc_9AB17D: CVarAd
  loc_9AB181: ParmAry1St
  loc_9AB187: FLdRfVar var_88
  loc_9AB18A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AB18F: FLdRfVar var_88
  loc_9AB192: Erase
  loc_9AB193: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B21D78
  'Data Table: 483860
  loc_B214A8: FLdPr Me
  loc_B214AB: MemLdI2 bGenerado
  loc_B214AE: BranchF loc_B214B2
  loc_B214B1: ExitProcHresult
  loc_B214B2: LitVarStr var_98, "Generando reporte..."
  loc_B214B7: PopAdLdVar
  loc_B214B8: FLdPr Me
  loc_B214BB: VCallAd Control_ID_statusBar
  loc_B214BE: FStAdFunc var_AC
  loc_B214C1: FLdPr var_AC
  loc_B214C4: LateIdSt
  loc_B214C9: FFree1Ad var_AC
  loc_B214CC: LitI4 &HB
  loc_B214D1: CI2I4
  loc_B214D2: FLdPr Me
  loc_B214D5: Me.MousePointer = from_stack_1
  loc_B214DA: FLdPr Me
  loc_B214DD: MemLdRfVar from_stack_1.global_72
  loc_B214E0: NewIfNullAd
  loc_B214E3: FStAd var_B0 
  loc_B214E7: FLdRfVar var_C4
  loc_B214EA: FLdPr Me
  loc_B214ED: VCallAd Control_ID_cboPeriodo
  loc_B214F0: FStAdFunc var_C0
  loc_B214F3: FLdPr var_C0
  loc_B214F6:  = Me.Text
  loc_B214FB: FLdRfVar var_B2
  loc_B214FE: FLdPr Me
  loc_B21501: VCallAd Control_ID_cboTrimestre
  loc_B21504: FStAdFunc var_AC
  loc_B21507: FLdPr var_AC
  loc_B2150A:  = Me.ListIndex
  loc_B2150F: FLdRfVar var_BC
  loc_B21512: FLdI2 var_B2
  loc_B21515: FLdPr Me
  loc_B21518: VCallAd Control_ID_cboTrimestre
  loc_B2151B: FStAdFunc var_B8
  loc_B2151E: FLdPr var_B8
  loc_B21521:  = Me.ItemData
  loc_B21526: FLdRfVar var_CA
  loc_B21529: FLdPr Me
  loc_B2152C: VCallAd Control_ID_optSintetico
  loc_B2152F: FStAdFunc var_C8
  loc_B21532: FLdPr var_C8
  loc_B21535:  = Me.Value
  loc_B2153A: FLdRfVar var_D2
  loc_B2153D: FLdPr Me
  loc_B21540: VCallAd Control_ID_optConsolidado
  loc_B21543: FStAdFunc var_D0
  loc_B21546: FLdPr var_D0
  loc_B21549:  = Me.Value
  loc_B2154E: FLdRfVar var_D4
  loc_B21551: FLdI2 var_D2
  loc_B21554: FLdI2 var_CA
  loc_B21557: ILdRf var_BC
  loc_B2155A: CUI1I4
  loc_B2155C: ILdRf var_C4
  loc_B2155F: FLdPr var_B0
  loc_B21562: from_stack_5v = clsimputacion.GenerarA3949anexoVI(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B21567: FLdI2 var_D4
  loc_B2156A: NotI4
  loc_B2156B: FFree1Str var_C4
  loc_B2156E: FFreeAd var_AC = "": var_B8 = "": var_C0 = "": var_C8 = ""
  loc_B2157B: BranchF loc_B2158E
  loc_B2157E: LitI4 0
  loc_B21583: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B21586: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B2158B: Branch loc_B21D52
  loc_B2158E: LitI4 1
  loc_B21593: LitI4 1
  loc_B21598: FLdPr Me
  loc_B2159B: MemLdRfVar from_stack_1.global_100
  loc_B2159E: Redim
  loc_B215A8: LitI2_Byte 0
  loc_B215AA: FLdPr Me
  loc_B215AD: MemStI2 global_104
  loc_B215B0: LitI4 1
  loc_B215B5: LitI4 1
  loc_B215BA: FLdPr Me
  loc_B215BD: MemLdRfVar from_stack_1.global_116
  loc_B215C0: Redim
  loc_B215CA: FLdPr var_B0
  loc_B215CD: Call clsimputacion.MoveFirst()
  loc_B215D2: Call Proc_166_19_9E1FF4()
  loc_B215D7: FLdPr Me
  loc_B215DA: VCallAd Control_ID_optJurisdiccion
  loc_B215DD: CVarAd
  loc_B215E1: CBoolVarNull
  loc_B215E3: FFree1Var var_E4 = ""
  loc_B215E6: BranchF loc_B2184F
  loc_B215E9: FLdRfVar var_B2
  loc_B215EC: FLdPr var_B0
  loc_B215EF: from_stack_1 = clsimputacion.EOF
  loc_B215F4: FLdI2 var_B2
  loc_B215F7: NotI4
  loc_B215F8: BranchF loc_B2184C
  loc_B215FB: FLdRfVar var_E4
  loc_B215FE: FLdRfVar var_C0
  loc_B21601: LitVarStr var_98, "CodiOrga"
  loc_B21606: PopAdLdVar
  loc_B21607: FLdRfVar var_B8
  loc_B2160A: FLdRfVar var_AC
  loc_B2160D: FLdPr var_B0
  loc_B21610: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B21615: FLdPr var_AC
  loc_B21618:  = Me.Fields
  loc_B2161D: FLdPr var_B8
  loc_B21620: from_stack_2 = Me.Item(from_stack_1)
  loc_B21625: FLdPr var_C0
  loc_B21628:  = Me.Value
  loc_B2162D: FLdRfVar var_E4
  loc_B21630: FLdPr Me
  loc_B21633: MemLdI2 global_104
  loc_B21636: CI4UI1
  loc_B21637: FLdPr Me
  loc_B2163A: MemLdStr global_100
  loc_B2163D: Ary1LdPr
  loc_B2163E: MemLdStr global_0
  loc_B21641: CVarStr var_A8
  loc_B21644: HardType
  loc_B21645: NeVarBool
  loc_B21647: FFreeAd var_AC = "": var_B8 = ""
  loc_B21650: FFree1Var var_E4 = ""
  loc_B21653: BranchF loc_B2165E
  loc_B21656: Call Proc_166_19_9E1FF4()
  loc_B2165B: Branch loc_B21849
  loc_B2165E: FLdRfVar var_E4
  loc_B21661: FLdRfVar var_C0
  loc_B21664: LitVarStr var_98, "CodiPart"
  loc_B21669: PopAdLdVar
  loc_B2166A: FLdRfVar var_B8
  loc_B2166D: FLdRfVar var_AC
  loc_B21670: FLdPr var_B0
  loc_B21673: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B21678: FLdPr var_AC
  loc_B2167B:  = Me.Fields
  loc_B21680: FLdPr var_B8
  loc_B21683: from_stack_2 = Me.Item(from_stack_1)
  loc_B21688: FLdPr var_C0
  loc_B2168B:  = Me.Value
  loc_B21690: LitI4 1
  loc_B21695: FLdRfVar var_E4
  loc_B21698: CStrVarTmp
  loc_B21699: FStStrNoPop var_C4
  loc_B2169C: ImpAdCallI2 Left$(, )
  loc_B216A1: FStStrNoPop var_F8
  loc_B216A4: LitI4 1
  loc_B216A9: FLdPr Me
  loc_B216AC: MemLdI2 global_106
  loc_B216AF: CI4UI1
  loc_B216B0: FLdPr Me
  loc_B216B3: MemLdI2 global_104
  loc_B216B6: CI4UI1
  loc_B216B7: FLdPr Me
  loc_B216BA: MemLdStr global_100
  loc_B216BD: Ary1LdPr
  loc_B216BE: MemLdStr global_8
  loc_B216C1: Ary1LdPr
  loc_B216C2: MemLdStr global_0
  loc_B216C5: ImpAdCallI2 Left$(, )
  loc_B216CA: FStStrNoPop var_FC
  loc_B216CD: NeStr
  loc_B216CF: FFreeStr var_C4 = "": var_F8 = ""
  loc_B216D8: FFreeAd var_AC = "": var_B8 = ""
  loc_B216E1: FFree1Var var_E4 = ""
  loc_B216E4: BranchF loc_B216EF
  loc_B216E7: Call Proc_166_20_A27D54()
  loc_B216EC: Branch loc_B21849
  loc_B216EF: FLdRfVar var_E4
  loc_B216F2: FLdRfVar var_C0
  loc_B216F5: LitVarStr var_98, "CodiPart"
  loc_B216FA: PopAdLdVar
  loc_B216FB: FLdRfVar var_B8
  loc_B216FE: FLdRfVar var_AC
  loc_B21701: FLdPr var_B0
  loc_B21704: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B21709: FLdPr var_AC
  loc_B2170C:  = Me.Fields
  loc_B21711: FLdPr var_B8
  loc_B21714: from_stack_2 = Me.Item(from_stack_1)
  loc_B21719: FLdPr var_C0
  loc_B2171C:  = Me.Value
  loc_B21721: LitI4 2
  loc_B21726: FLdRfVar var_E4
  loc_B21729: CStrVarTmp
  loc_B2172A: FStStrNoPop var_C4
  loc_B2172D: ImpAdCallI2 Left$(, )
  loc_B21732: FStStrNoPop var_F8
  loc_B21735: LitI4 2
  loc_B2173A: FLdPr Me
  loc_B2173D: MemLdI2 global_108
  loc_B21740: CI4UI1
  loc_B21741: FLdPr Me
  loc_B21744: MemLdI2 global_106
  loc_B21747: CI4UI1
  loc_B21748: FLdPr Me
  loc_B2174B: MemLdI2 global_104
  loc_B2174E: CI4UI1
  loc_B2174F: FLdPr Me
  loc_B21752: MemLdStr global_100
  loc_B21755: Ary1LdPr
  loc_B21756: MemLdStr global_8
  loc_B21759: Ary1LdPr
  loc_B2175A: MemLdStr global_20
  loc_B2175D: Ary1LdPr
  loc_B2175E: MemLdStr global_0
  loc_B21761: ImpAdCallI2 Left$(, )
  loc_B21766: FStStrNoPop var_FC
  loc_B21769: NeStr
  loc_B2176B: FFreeStr var_C4 = "": var_F8 = ""
  loc_B21774: FFreeAd var_AC = "": var_B8 = ""
  loc_B2177D: FFree1Var var_E4 = ""
  loc_B21780: BranchF loc_B2178B
  loc_B21783: Call Proc_166_21_A33014()
  loc_B21788: Branch loc_B21849
  loc_B2178B: FLdRfVar var_E4
  loc_B2178E: FLdRfVar var_C0
  loc_B21791: LitVarStr var_98, "CodiPart"
  loc_B21796: PopAdLdVar
  loc_B21797: FLdRfVar var_B8
  loc_B2179A: FLdRfVar var_AC
  loc_B2179D: FLdPr var_B0
  loc_B217A0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B217A5: FLdPr var_AC
  loc_B217A8:  = Me.Fields
  loc_B217AD: FLdPr var_B8
  loc_B217B0: from_stack_2 = Me.Item(from_stack_1)
  loc_B217B5: FLdPr var_C0
  loc_B217B8:  = Me.Value
  loc_B217BD: LitI4 3
  loc_B217C2: FLdRfVar var_E4
  loc_B217C5: CStrVarTmp
  loc_B217C6: FStStrNoPop var_C4
  loc_B217C9: ImpAdCallI2 Left$(, )
  loc_B217CE: FStStrNoPop var_F8
  loc_B217D1: LitI4 3
  loc_B217D6: FLdPr Me
  loc_B217D9: MemLdI2 global_110
  loc_B217DC: CI4UI1
  loc_B217DD: FLdPr Me
  loc_B217E0: MemLdI2 global_108
  loc_B217E3: CI4UI1
  loc_B217E4: FLdPr Me
  loc_B217E7: MemLdI2 global_106
  loc_B217EA: CI4UI1
  loc_B217EB: FLdPr Me
  loc_B217EE: MemLdI2 global_104
  loc_B217F1: CI4UI1
  loc_B217F2: FLdPr Me
  loc_B217F5: MemLdStr global_100
  loc_B217F8: Ary1LdPr
  loc_B217F9: MemLdStr global_8
  loc_B217FC: Ary1LdPr
  loc_B217FD: MemLdStr global_20
  loc_B21800: Ary1LdPr
  loc_B21801: MemLdStr global_20
  loc_B21804: Ary1LdPr
  loc_B21805: MemLdStr global_0
  loc_B21808: ImpAdCallI2 Left$(, )
  loc_B2180D: FStStrNoPop var_FC
  loc_B21810: NeStr
  loc_B21812: FFreeStr var_C4 = "": var_F8 = ""
  loc_B2181B: FFreeAd var_AC = "": var_B8 = ""
  loc_B21824: FFree1Var var_E4 = ""
  loc_B21827: BranchF loc_B21832
  loc_B2182A: Call Proc_166_22_A5B658()
  loc_B2182F: Branch loc_B21849
  loc_B21832: FLdPr Me
  loc_B21835: VCallAd Control_ID_optAnalitico
  loc_B21838: CVarAd
  loc_B2183C: CBoolVarNull
  loc_B2183E: FFree1Var var_E4 = ""
  loc_B21841: BranchF loc_B21849
  loc_B21844: Call Proc_166_23_A49B40()
  loc_B21849: Branch loc_B215E9
  loc_B2184C: Branch loc_B21A5A
  loc_B2184F: FLdRfVar var_B2
  loc_B21852: FLdPr var_B0
  loc_B21855: from_stack_1 = clsimputacion.EOF
  loc_B2185A: FLdI2 var_B2
  loc_B2185D: NotI4
  loc_B2185E: BranchF loc_B21A5A
  loc_B21861: FLdRfVar var_E4
  loc_B21864: FLdRfVar var_C0
  loc_B21867: LitVarStr var_98, "CodiPart"
  loc_B2186C: PopAdLdVar
  loc_B2186D: FLdRfVar var_B8
  loc_B21870: FLdRfVar var_AC
  loc_B21873: FLdPr var_B0
  loc_B21876: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B2187B: FLdPr var_AC
  loc_B2187E:  = Me.Fields
  loc_B21883: FLdPr var_B8
  loc_B21886: from_stack_2 = Me.Item(from_stack_1)
  loc_B2188B: FLdPr var_C0
  loc_B2188E:  = Me.Value
  loc_B21893: LitI4 1
  loc_B21898: FLdRfVar var_E4
  loc_B2189B: CStrVarTmp
  loc_B2189C: FStStrNoPop var_C4
  loc_B2189F: ImpAdCallI2 Left$(, )
  loc_B218A4: FStStrNoPop var_F8
  loc_B218A7: LitI4 1
  loc_B218AC: FLdPr Me
  loc_B218AF: MemLdI2 global_106
  loc_B218B2: CI4UI1
  loc_B218B3: FLdPr Me
  loc_B218B6: MemLdI2 global_104
  loc_B218B9: CI4UI1
  loc_B218BA: FLdPr Me
  loc_B218BD: MemLdStr global_100
  loc_B218C0: Ary1LdPr
  loc_B218C1: MemLdStr global_8
  loc_B218C4: Ary1LdPr
  loc_B218C5: MemLdStr global_0
  loc_B218C8: ImpAdCallI2 Left$(, )
  loc_B218CD: FStStrNoPop var_FC
  loc_B218D0: NeStr
  loc_B218D2: FFreeStr var_C4 = "": var_F8 = ""
  loc_B218DB: FFreeAd var_AC = "": var_B8 = ""
  loc_B218E4: FFree1Var var_E4 = ""
  loc_B218E7: BranchF loc_B218F2
  loc_B218EA: Call Proc_166_20_A27D54()
  loc_B218EF: Branch loc_B21A57
  loc_B218F2: FLdRfVar var_E4
  loc_B218F5: FLdRfVar var_C0
  loc_B218F8: LitVarStr var_98, "CodiPart"
  loc_B218FD: PopAdLdVar
  loc_B218FE: FLdRfVar var_B8
  loc_B21901: FLdRfVar var_AC
  loc_B21904: FLdPr var_B0
  loc_B21907: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B2190C: FLdPr var_AC
  loc_B2190F:  = Me.Fields
  loc_B21914: FLdPr var_B8
  loc_B21917: from_stack_2 = Me.Item(from_stack_1)
  loc_B2191C: FLdPr var_C0
  loc_B2191F:  = Me.Value
  loc_B21924: LitI4 2
  loc_B21929: FLdRfVar var_E4
  loc_B2192C: CStrVarTmp
  loc_B2192D: FStStrNoPop var_C4
  loc_B21930: ImpAdCallI2 Left$(, )
  loc_B21935: FStStrNoPop var_F8
  loc_B21938: LitI4 2
  loc_B2193D: FLdPr Me
  loc_B21940: MemLdI2 global_108
  loc_B21943: CI4UI1
  loc_B21944: FLdPr Me
  loc_B21947: MemLdI2 global_106
  loc_B2194A: CI4UI1
  loc_B2194B: FLdPr Me
  loc_B2194E: MemLdI2 global_104
  loc_B21951: CI4UI1
  loc_B21952: FLdPr Me
  loc_B21955: MemLdStr global_100
  loc_B21958: Ary1LdPr
  loc_B21959: MemLdStr global_8
  loc_B2195C: Ary1LdPr
  loc_B2195D: MemLdStr global_20
  loc_B21960: Ary1LdPr
  loc_B21961: MemLdStr global_0
  loc_B21964: ImpAdCallI2 Left$(, )
  loc_B21969: FStStrNoPop var_FC
  loc_B2196C: NeStr
  loc_B2196E: FFreeStr var_C4 = "": var_F8 = ""
  loc_B21977: FFreeAd var_AC = "": var_B8 = ""
  loc_B21980: FFree1Var var_E4 = ""
  loc_B21983: BranchF loc_B2198E
  loc_B21986: Call Proc_166_21_A33014()
  loc_B2198B: Branch loc_B21A57
  loc_B2198E: FLdRfVar var_E4
  loc_B21991: FLdRfVar var_C0
  loc_B21994: LitVarStr var_98, "CodiPart"
  loc_B21999: PopAdLdVar
  loc_B2199A: FLdRfVar var_B8
  loc_B2199D: FLdRfVar var_AC
  loc_B219A0: FLdPr var_B0
  loc_B219A3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B219A8: FLdPr var_AC
  loc_B219AB:  = Me.Fields
  loc_B219B0: FLdPr var_B8
  loc_B219B3: from_stack_2 = Me.Item(from_stack_1)
  loc_B219B8: FLdPr var_C0
  loc_B219BB:  = Me.Value
  loc_B219C0: LitI4 3
  loc_B219C5: FLdRfVar var_E4
  loc_B219C8: CStrVarTmp
  loc_B219C9: FStStrNoPop var_C4
  loc_B219CC: ImpAdCallI2 Left$(, )
  loc_B219D1: FStStrNoPop var_F8
  loc_B219D4: LitI4 3
  loc_B219D9: FLdPr Me
  loc_B219DC: MemLdI2 global_110
  loc_B219DF: CI4UI1
  loc_B219E0: FLdPr Me
  loc_B219E3: MemLdI2 global_108
  loc_B219E6: CI4UI1
  loc_B219E7: FLdPr Me
  loc_B219EA: MemLdI2 global_106
  loc_B219ED: CI4UI1
  loc_B219EE: FLdPr Me
  loc_B219F1: MemLdI2 global_104
  loc_B219F4: CI4UI1
  loc_B219F5: FLdPr Me
  loc_B219F8: MemLdStr global_100
  loc_B219FB: Ary1LdPr
  loc_B219FC: MemLdStr global_8
  loc_B219FF: Ary1LdPr
  loc_B21A00: MemLdStr global_20
  loc_B21A03: Ary1LdPr
  loc_B21A04: MemLdStr global_20
  loc_B21A07: Ary1LdPr
  loc_B21A08: MemLdStr global_0
  loc_B21A0B: ImpAdCallI2 Left$(, )
  loc_B21A10: FStStrNoPop var_FC
  loc_B21A13: NeStr
  loc_B21A15: FFreeStr var_C4 = "": var_F8 = ""
  loc_B21A1E: FFreeAd var_AC = "": var_B8 = ""
  loc_B21A27: FFree1Var var_E4 = ""
  loc_B21A2A: BranchF loc_B21A35
  loc_B21A2D: Call Proc_166_22_A5B658()
  loc_B21A32: Branch loc_B21A57
  loc_B21A35: FLdPr Me
  loc_B21A38: VCallAd Control_ID_optAnalitico
  loc_B21A3B: CVarAd
  loc_B21A3F: CBoolVarNull
  loc_B21A41: FFree1Var var_E4 = ""
  loc_B21A44: BranchF loc_B21A4F
  loc_B21A47: Call Proc_166_23_A49B40()
  loc_B21A4C: Branch loc_B21A57
  loc_B21A4F: FLdPr var_B0
  loc_B21A52: Call clsimputacion.MoveSiguiente()
  loc_B21A57: Branch loc_B2184F
  loc_B21A5A: LitNothing
  loc_B21A5C: FStAd var_B0 
  loc_B21A60: LitI2_Byte 1
  loc_B21A62: FLdPr Me
  loc_B21A65: MemLdRfVar from_stack_1.global_104
  loc_B21A68: FLdPr Me
  loc_B21A6B: MemLdStr global_100
  loc_B21A6E: LitI2_Byte 1
  loc_B21A70: FnUBound
  loc_B21A72: CI2I4
  loc_B21A73: ForI2 var_100
  loc_B21A79: LitI2_Byte 1
  loc_B21A7B: FLdPr Me
  loc_B21A7E: MemLdRfVar from_stack_1.global_106
  loc_B21A81: FLdPr Me
  loc_B21A84: MemLdI2 global_104
  loc_B21A87: CI4UI1
  loc_B21A88: FLdPr Me
  loc_B21A8B: MemLdStr global_100
  loc_B21A8E: Ary1LdPr
  loc_B21A8F: MemLdStr global_8
  loc_B21A92: LitI2_Byte 1
  loc_B21A94: FnUBound
  loc_B21A96: CI2I4
  loc_B21A97: ForI2 var_104
  loc_B21A9D: LitI2_Byte 1
  loc_B21A9F: FLdPr Me
  loc_B21AA2: MemLdRfVar from_stack_1.global_108
  loc_B21AA5: FLdPr Me
  loc_B21AA8: MemLdI2 global_106
  loc_B21AAB: CI4UI1
  loc_B21AAC: FLdPr Me
  loc_B21AAF: MemLdI2 global_104
  loc_B21AB2: CI4UI1
  loc_B21AB3: FLdPr Me
  loc_B21AB6: MemLdStr global_100
  loc_B21AB9: Ary1LdPr
  loc_B21ABA: MemLdStr global_8
  loc_B21ABD: Ary1LdPr
  loc_B21ABE: MemLdStr global_20
  loc_B21AC1: LitI2_Byte 1
  loc_B21AC3: FnUBound
  loc_B21AC5: CI2I4
  loc_B21AC6: ForI2 var_108
  loc_B21ACC: FLdPr Me
  loc_B21ACF: VCallAd Control_ID_optAnalitico
  loc_B21AD2: CVarAd
  loc_B21AD6: CBoolVarNull
  loc_B21AD8: FFree1Var var_E4 = ""
  loc_B21ADB: BranchF loc_B21BAB
  loc_B21ADE: LitI2_Byte 1
  loc_B21AE0: FLdPr Me
  loc_B21AE3: MemLdRfVar from_stack_1.global_110
  loc_B21AE6: FLdPr Me
  loc_B21AE9: MemLdI2 global_108
  loc_B21AEC: CI4UI1
  loc_B21AED: FLdPr Me
  loc_B21AF0: MemLdI2 global_106
  loc_B21AF3: CI4UI1
  loc_B21AF4: FLdPr Me
  loc_B21AF7: MemLdI2 global_104
  loc_B21AFA: CI4UI1
  loc_B21AFB: FLdPr Me
  loc_B21AFE: MemLdStr global_100
  loc_B21B01: Ary1LdPr
  loc_B21B02: MemLdStr global_8
  loc_B21B05: Ary1LdPr
  loc_B21B06: MemLdStr global_20
  loc_B21B09: Ary1LdPr
  loc_B21B0A: MemLdStr global_20
  loc_B21B0D: LitI2_Byte 1
  loc_B21B0F: FnUBound
  loc_B21B11: CI2I4
  loc_B21B12: ForI2 var_10C
  loc_B21B18: FLdPr Me
  loc_B21B1B: MemLdI2 global_108
  loc_B21B1E: CI4UI1
  loc_B21B1F: FLdPr Me
  loc_B21B22: MemLdI2 global_106
  loc_B21B25: CI4UI1
  loc_B21B26: FLdPr Me
  loc_B21B29: MemLdI2 global_104
  loc_B21B2C: CI4UI1
  loc_B21B2D: FLdPr Me
  loc_B21B30: MemLdStr global_100
  loc_B21B33: AryLock
  loc_B21B36: Ary1LdPr
  loc_B21B37: MemLdStr global_8
  loc_B21B3A: AryLock
  loc_B21B3D: Ary1LdPr
  loc_B21B3E: MemLdStr global_20
  loc_B21B41: AryLock
  loc_B21B44: Ary1LdPr
  loc_B21B45: MemLdRfVar from_stack_1.global_0
  loc_B21B48: FLdPr Me
  loc_B21B4B: MemLdI2 global_110
  loc_B21B4E: CI4UI1
  loc_B21B4F: FLdPr Me
  loc_B21B52: MemLdI2 global_108
  loc_B21B55: CI4UI1
  loc_B21B56: FLdPr Me
  loc_B21B59: MemLdI2 global_106
  loc_B21B5C: CI4UI1
  loc_B21B5D: FLdPr Me
  loc_B21B60: MemLdI2 global_104
  loc_B21B63: CI4UI1
  loc_B21B64: FLdPr Me
  loc_B21B67: MemLdStr global_100
  loc_B21B6A: AryLock
  loc_B21B6D: Ary1LdPr
  loc_B21B6E: MemLdStr global_8
  loc_B21B71: AryLock
  loc_B21B74: Ary1LdPr
  loc_B21B75: MemLdStr global_20
  loc_B21B78: AryLock
  loc_B21B7B: Ary1LdPr
  loc_B21B7C: MemLdStr global_20
  loc_B21B7F: AryLock
  loc_B21B82: Ary1LdPr
  loc_B21B83: MemLdRfVar from_stack_1.global_0
  loc_B21B86: Call Proc_166_25_99510C()
  loc_B21B8B: AryUnlock
  loc_B21B8E: AryUnlock
  loc_B21B91: AryUnlock
  loc_B21B94: AryUnlock
  loc_B21B97: AryUnlock
  loc_B21B9A: AryUnlock
  loc_B21B9D: AryUnlock
  loc_B21BA0: FLdPr Me
  loc_B21BA3: MemLdRfVar from_stack_1.global_110
  loc_B21BA6: NextI2 var_10C, loc_B21B18
  loc_B21BAB: FLdPr Me
  loc_B21BAE: MemLdI2 global_106
  loc_B21BB1: CI4UI1
  loc_B21BB2: FLdPr Me
  loc_B21BB5: MemLdI2 global_104
  loc_B21BB8: CI4UI1
  loc_B21BB9: FLdPr Me
  loc_B21BBC: MemLdStr global_100
  loc_B21BBF: AryLock
  loc_B21BC2: Ary1LdPr
  loc_B21BC3: MemLdStr global_8
  loc_B21BC6: AryLock
  loc_B21BC9: Ary1LdPr
  loc_B21BCA: MemLdRfVar from_stack_1.global_0
  loc_B21BCD: FLdPr Me
  loc_B21BD0: MemLdI2 global_108
  loc_B21BD3: CI4UI1
  loc_B21BD4: FLdPr Me
  loc_B21BD7: MemLdI2 global_106
  loc_B21BDA: CI4UI1
  loc_B21BDB: FLdPr Me
  loc_B21BDE: MemLdI2 global_104
  loc_B21BE1: CI4UI1
  loc_B21BE2: FLdPr Me
  loc_B21BE5: MemLdStr global_100
  loc_B21BE8: AryLock
  loc_B21BEB: Ary1LdPr
  loc_B21BEC: MemLdStr global_8
  loc_B21BEF: AryLock
  loc_B21BF2: Ary1LdPr
  loc_B21BF3: MemLdStr global_20
  loc_B21BF6: AryLock
  loc_B21BF9: Ary1LdPr
  loc_B21BFA: MemLdRfVar from_stack_1.global_0
  loc_B21BFD: Call Proc_166_25_99510C()
  loc_B21C02: AryUnlock
  loc_B21C05: AryUnlock
  loc_B21C08: AryUnlock
  loc_B21C0B: AryUnlock
  loc_B21C0E: AryUnlock
  loc_B21C11: FLdPr Me
  loc_B21C14: MemLdRfVar from_stack_1.global_108
  loc_B21C17: NextI2 var_108, loc_B21ACC
  loc_B21C1C: FLdPr Me
  loc_B21C1F: MemLdI2 global_104
  loc_B21C22: CI4UI1
  loc_B21C23: FLdPr Me
  loc_B21C26: MemLdStr global_100
  loc_B21C29: AryLock
  loc_B21C2C: Ary1LdPr
  loc_B21C2D: MemLdRfVar from_stack_1.global_12
  loc_B21C30: FLdPr Me
  loc_B21C33: MemLdI2 global_106
  loc_B21C36: CI4UI1
  loc_B21C37: FLdPr Me
  loc_B21C3A: MemLdI2 global_104
  loc_B21C3D: CI4UI1
  loc_B21C3E: FLdPr Me
  loc_B21C41: MemLdStr global_100
  loc_B21C44: AryLock
  loc_B21C47: Ary1LdPr
  loc_B21C48: MemLdStr global_8
  loc_B21C4B: AryLock
  loc_B21C4E: Ary1LdPr
  loc_B21C4F: MemLdRfVar from_stack_1.global_0
  loc_B21C52: Call Proc_166_25_99510C()
  loc_B21C57: AryUnlock
  loc_B21C5A: AryUnlock
  loc_B21C5D: AryUnlock
  loc_B21C60: FLdPr Me
  loc_B21C63: MemLdRfVar from_stack_1.global_106
  loc_B21C66: NextI2 var_104, loc_B21A9D
  loc_B21C6B: LitI4 1
  loc_B21C70: FLdPr Me
  loc_B21C73: MemLdStr global_116
  loc_B21C76: AryLock
  loc_B21C79: Ary1LdRf
  loc_B21C7A: FLdPr Me
  loc_B21C7D: MemLdI2 global_104
  loc_B21C80: CI4UI1
  loc_B21C81: FLdPr Me
  loc_B21C84: MemLdStr global_100
  loc_B21C87: AryLock
  loc_B21C8A: Ary1LdPr
  loc_B21C8B: MemLdRfVar from_stack_1.global_12
  loc_B21C8E: Call Proc_166_25_99510C()
  loc_B21C93: AryUnlock
  loc_B21C96: AryUnlock
  loc_B21C99: FLdPr Me
  loc_B21C9C: MemLdRfVar from_stack_1.global_104
  loc_B21C9F: NextI2 var_100, loc_B21A79
  loc_B21CA4: LitI2_Byte &HFF
  loc_B21CA6: FLdPr Me
  loc_B21CA9: MemStI2 bGenerado
  loc_B21CAC: FLdRfVar var_B2
  loc_B21CAF: FLdPr Me
  loc_B21CB2: VCallAd Control_ID_optSintetico
  loc_B21CB5: FStAdFunc var_AC
  loc_B21CB8: FLdPr var_AC
  loc_B21CBB:  = Me.Value
  loc_B21CC0: FLdI2 var_B2
  loc_B21CC3: FFree1Ad var_AC
  loc_B21CC6: BranchF loc_B21D0F
  loc_B21CC9: LitI4 0
  loc_B21CCE: LitI4 1
  loc_B21CD3: FLdRfVar var_12C
  loc_B21CD6: Redim
  loc_B21CE0: FLdPr Me
  loc_B21CE3: VCallAd Control_ID_optAnalitico
  loc_B21CE6: CVarAd
  loc_B21CEA: ParmAry1St
  loc_B21CF0: FLdPr Me
  loc_B21CF3: VCallAd Control_ID_optSintetico
  loc_B21CF6: CVarAd
  loc_B21CFA: ParmAry1St
  loc_B21D00: FLdRfVar var_12C
  loc_B21D03: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B21D08: FLdRfVar var_12C
  loc_B21D0B: Erase
  loc_B21D0C: Branch loc_B21D52
  loc_B21D0F: LitI4 0
  loc_B21D14: LitI4 1
  loc_B21D19: FLdRfVar var_12C
  loc_B21D1C: Redim
  loc_B21D26: FLdPr Me
  loc_B21D29: VCallAd Control_ID_optSintetico
  loc_B21D2C: CVarAd
  loc_B21D30: ParmAry1St
  loc_B21D36: FLdPr Me
  loc_B21D39: VCallAd Control_ID_optAnalitico
  loc_B21D3C: CVarAd
  loc_B21D40: ParmAry1St
  loc_B21D46: FLdRfVar var_12C
  loc_B21D49: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B21D4E: FLdRfVar var_12C
  loc_B21D51: Erase
  loc_B21D52: LitI2_Byte 0
  loc_B21D54: FLdPr Me
  loc_B21D57: Me.MousePointer = from_stack_1
  loc_B21D5C: LitVarStr var_98, vbNullString
  loc_B21D61: PopAdLdVar
  loc_B21D62: FLdPr Me
  loc_B21D65: VCallAd Control_ID_statusBar
  loc_B21D68: FStAdFunc var_AC
  loc_B21D6B: FLdPr var_AC
  loc_B21D6E: LateIdSt
  loc_B21D73: FFree1Ad var_AC
  loc_B21D76: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B31830
  'Data Table: 483860
  loc_B30EDC: FLdRfVar var_88
  loc_B30EDF: LitI2_Byte 0
  loc_B30EE1: LitI2_Byte &HFF
  loc_B30EE3: ImpAdLdI4 MemVar_C3D83C
  loc_B30EE6: FLdPr Me
  loc_B30EE9: MemLdRfVar from_stack_1.global_80
  loc_B30EEC: NewIfNullPr IFileSystem3
  loc_B30EEF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B30EF4: ILdRf var_88
  loc_B30EF7: FLdPr Me
  loc_B30EFA: MemStVarAd
  loc_B30EFE: FFree1Ad var_88
  loc_B30F01: Call Proc_166_26_A80F20()
  loc_B30F06: LitI2_Byte 1
  loc_B30F08: FLdPr Me
  loc_B30F0B: MemLdRfVar from_stack_1.global_104
  loc_B30F0E: FLdPr Me
  loc_B30F11: MemLdStr global_100
  loc_B30F14: LitI2_Byte 1
  loc_B30F16: FnUBound
  loc_B30F18: CI2I4
  loc_B30F19: ForI2 var_8C
  loc_B30F1F: FLdPr Me
  loc_B30F22: VCallAd Control_ID_optJurisdiccion
  loc_B30F25: CVarAd
  loc_B30F29: CBoolVarNull
  loc_B30F2B: FFree1Var var_9C = ""
  loc_B30F2E: BranchF loc_B30FAF
  loc_B30F31: LitVarStr var_AC, "  <tr align=""left"" class=""Encabezado"">"
  loc_B30F36: PopAdLdVar
  loc_B30F37: FLdPr Me
  loc_B30F3A: MemLdRfVar from_stack_1.htmFile
  loc_B30F3D: LdPrVar
  loc_B30F3F: LateMemCall
  loc_B30F45: LitStr "    <td colspan=""4"">Jurisdicción: "
  loc_B30F48: FLdPr Me
  loc_B30F4B: MemLdI2 global_104
  loc_B30F4E: CI4UI1
  loc_B30F4F: FLdPr Me
  loc_B30F52: MemLdStr global_100
  loc_B30F55: Ary1LdPr
  loc_B30F56: MemLdStr global_0
  loc_B30F59: ConcatStr
  loc_B30F5A: FStStrNoPop var_C0
  loc_B30F5D: LitStr " - "
  loc_B30F60: ConcatStr
  loc_B30F61: FStStrNoPop var_C4
  loc_B30F64: FLdPr Me
  loc_B30F67: MemLdI2 global_104
  loc_B30F6A: CI4UI1
  loc_B30F6B: FLdPr Me
  loc_B30F6E: MemLdStr global_100
  loc_B30F71: Ary1LdPr
  loc_B30F72: MemLdStr global_4
  loc_B30F75: ConcatStr
  loc_B30F76: FStStrNoPop var_C8
  loc_B30F79: LitStr "</td>"
  loc_B30F7C: ConcatStr
  loc_B30F7D: CVarStr var_9C
  loc_B30F80: PopAdLdVar
  loc_B30F81: FLdPr Me
  loc_B30F84: MemLdRfVar from_stack_1.htmFile
  loc_B30F87: LdPrVar
  loc_B30F89: LateMemCall
  loc_B30F8F: FFreeStr var_C0 = "": var_C4 = ""
  loc_B30F98: FFree1Var var_9C = ""
  loc_B30F9B: LitVarStr var_AC, "     </tr>"
  loc_B30FA0: PopAdLdVar
  loc_B30FA1: FLdPr Me
  loc_B30FA4: MemLdRfVar from_stack_1.htmFile
  loc_B30FA7: LdPrVar
  loc_B30FA9: LateMemCall
  loc_B30FAF: LitI2_Byte 1
  loc_B30FB1: FLdPr Me
  loc_B30FB4: MemLdRfVar from_stack_1.global_106
  loc_B30FB7: FLdPr Me
  loc_B30FBA: MemLdI2 global_104
  loc_B30FBD: CI4UI1
  loc_B30FBE: FLdPr Me
  loc_B30FC1: MemLdStr global_100
  loc_B30FC4: Ary1LdPr
  loc_B30FC5: MemLdStr global_8
  loc_B30FC8: LitI2_Byte 1
  loc_B30FCA: FnUBound
  loc_B30FCC: CI2I4
  loc_B30FCD: ForI2 var_CC
  loc_B30FD3: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_B30FD8: PopAdLdVar
  loc_B30FD9: FLdPr Me
  loc_B30FDC: MemLdRfVar from_stack_1.htmFile
  loc_B30FDF: LdPrVar
  loc_B30FE1: LateMemCall
  loc_B30FE7: FLdPr Me
  loc_B30FEA: MemLdI2 global_106
  loc_B30FED: CI4UI1
  loc_B30FEE: FLdPr Me
  loc_B30FF1: MemLdI2 global_104
  loc_B30FF4: CI4UI1
  loc_B30FF5: FLdPr Me
  loc_B30FF8: MemLdStr global_100
  loc_B30FFB: AryLock
  loc_B30FFE: Ary1LdPr
  loc_B30FFF: MemLdStr global_8
  loc_B31002: AryLock
  loc_B31005: Ary1LdPr
  loc_B31006: MemLdRfVar from_stack_1.global_0
  loc_B31009: FStR4 var_D8
  loc_B3100C: LitI4 0
  loc_B31011: LitI4 0
  loc_B31016: LitI2_Byte 0
  loc_B31018: LitStr "left"
  loc_B3101B: FMemLdR4 var_D8(0)
  loc_B31020: LitStr "&nbsp;(Subtotal)<br>"
  loc_B31023: ConcatStr
  loc_B31024: FStStrNoPop var_C0
  loc_B31027: FMemLdR4 var_D8(4)
  loc_B3102C: ConcatStr
  loc_B3102D: FStStrNoPop var_C4
  loc_B31030: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B31035: CVarStr var_9C
  loc_B31038: PopAdLdVar
  loc_B31039: FLdPr Me
  loc_B3103C: MemLdRfVar from_stack_1.htmFile
  loc_B3103F: LdPrVar
  loc_B31041: LateMemCall
  loc_B31047: FFreeStr var_C0 = ""
  loc_B3104E: FFree1Var var_9C = ""
  loc_B31051: LitI4 0
  loc_B31056: LitI4 0
  loc_B3105B: LitI2_Byte 0
  loc_B3105D: LitStr "right"
  loc_B31060: FMemLdR4 var_D8(8)
  loc_B31065: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B3106A: CVarStr var_9C
  loc_B3106D: PopAdLdVar
  loc_B3106E: FLdPr Me
  loc_B31071: MemLdRfVar from_stack_1.htmFile
  loc_B31074: LdPrVar
  loc_B31076: LateMemCall
  loc_B3107C: FFree1Var var_9C = ""
  loc_B3107F: LitI4 0
  loc_B31084: LitI4 0
  loc_B31089: LitI2_Byte 0
  loc_B3108B: LitStr "right"
  loc_B3108E: FMemLdR4 var_D8(12)
  loc_B31093: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B31098: CVarStr var_9C
  loc_B3109B: PopAdLdVar
  loc_B3109C: FLdPr Me
  loc_B3109F: MemLdRfVar from_stack_1.htmFile
  loc_B310A2: LdPrVar
  loc_B310A4: LateMemCall
  loc_B310AA: FFree1Var var_9C = ""
  loc_B310AD: LitI4 0
  loc_B310B2: LitI4 0
  loc_B310B7: LitI2_Byte 0
  loc_B310B9: LitStr "right"
  loc_B310BC: FMemLdR4 var_D8(16)
  loc_B310C1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B310C6: CVarStr var_9C
  loc_B310C9: PopAdLdVar
  loc_B310CA: FLdPr Me
  loc_B310CD: MemLdRfVar from_stack_1.htmFile
  loc_B310D0: LdPrVar
  loc_B310D2: LateMemCall
  loc_B310D8: FFree1Var var_9C = ""
  loc_B310DB: LitI4 0
  loc_B310E0: FStR4 var_D8
  loc_B310E3: AryUnlock
  loc_B310E6: AryUnlock
  loc_B310E9: LitVarStr var_AC, "     </tr>"
  loc_B310EE: PopAdLdVar
  loc_B310EF: FLdPr Me
  loc_B310F2: MemLdRfVar from_stack_1.htmFile
  loc_B310F5: LdPrVar
  loc_B310F7: LateMemCall
  loc_B310FD: LitI2_Byte 1
  loc_B310FF: FLdPr Me
  loc_B31102: MemLdRfVar from_stack_1.global_108
  loc_B31105: FLdPr Me
  loc_B31108: MemLdI2 global_106
  loc_B3110B: CI4UI1
  loc_B3110C: FLdPr Me
  loc_B3110F: MemLdI2 global_104
  loc_B31112: CI4UI1
  loc_B31113: FLdPr Me
  loc_B31116: MemLdStr global_100
  loc_B31119: Ary1LdPr
  loc_B3111A: MemLdStr global_8
  loc_B3111D: Ary1LdPr
  loc_B3111E: MemLdStr global_20
  loc_B31121: LitI2_Byte 1
  loc_B31123: FnUBound
  loc_B31125: CI2I4
  loc_B31126: ForI2 var_DC
  loc_B3112C: LitVarStr var_AC, "  <tr align=""left"" class=""Totales2"">"
  loc_B31131: PopAdLdVar
  loc_B31132: FLdPr Me
  loc_B31135: MemLdRfVar from_stack_1.htmFile
  loc_B31138: LdPrVar
  loc_B3113A: LateMemCall
  loc_B31140: FLdPr Me
  loc_B31143: MemLdI2 global_108
  loc_B31146: CI4UI1
  loc_B31147: FLdPr Me
  loc_B3114A: MemLdI2 global_106
  loc_B3114D: CI4UI1
  loc_B3114E: FLdPr Me
  loc_B31151: MemLdI2 global_104
  loc_B31154: CI4UI1
  loc_B31155: FLdPr Me
  loc_B31158: MemLdStr global_100
  loc_B3115B: AryLock
  loc_B3115E: Ary1LdPr
  loc_B3115F: MemLdStr global_8
  loc_B31162: AryLock
  loc_B31165: Ary1LdPr
  loc_B31166: MemLdStr global_20
  loc_B31169: AryLock
  loc_B3116C: Ary1LdPr
  loc_B3116D: MemLdRfVar from_stack_1.global_0
  loc_B31170: FStR4 var_EC
  loc_B31173: LitI4 0
  loc_B31178: LitI4 0
  loc_B3117D: LitI2_Byte 0
  loc_B3117F: LitStr "left"
  loc_B31182: LitStr "&nbsp;&nbsp;"
  loc_B31185: FMemLdR4 var_EC(0)
  loc_B3118A: ConcatStr
  loc_B3118B: FStStrNoPop var_C0
  loc_B3118E: LitStr "&nbsp;(Subtotal)<br>&nbsp;&nbsp;"
  loc_B31191: ConcatStr
  loc_B31192: FStStrNoPop var_C4
  loc_B31195: FMemLdR4 var_EC(4)
  loc_B3119A: ConcatStr
  loc_B3119B: FStStrNoPop var_C8
  loc_B3119E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B311A3: CVarStr var_9C
  loc_B311A6: PopAdLdVar
  loc_B311A7: FLdPr Me
  loc_B311AA: MemLdRfVar from_stack_1.htmFile
  loc_B311AD: LdPrVar
  loc_B311AF: LateMemCall
  loc_B311B5: FFreeStr var_C0 = "": var_C4 = ""
  loc_B311BE: FFree1Var var_9C = ""
  loc_B311C1: LitI4 0
  loc_B311C6: LitI4 0
  loc_B311CB: LitI2_Byte 0
  loc_B311CD: LitStr "right"
  loc_B311D0: FMemLdR4 var_EC(8)
  loc_B311D5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B311DA: CVarStr var_9C
  loc_B311DD: PopAdLdVar
  loc_B311DE: FLdPr Me
  loc_B311E1: MemLdRfVar from_stack_1.htmFile
  loc_B311E4: LdPrVar
  loc_B311E6: LateMemCall
  loc_B311EC: FFree1Var var_9C = ""
  loc_B311EF: LitI4 0
  loc_B311F4: LitI4 0
  loc_B311F9: LitI2_Byte 0
  loc_B311FB: LitStr "right"
  loc_B311FE: FMemLdR4 var_EC(12)
  loc_B31203: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B31208: CVarStr var_9C
  loc_B3120B: PopAdLdVar
  loc_B3120C: FLdPr Me
  loc_B3120F: MemLdRfVar from_stack_1.htmFile
  loc_B31212: LdPrVar
  loc_B31214: LateMemCall
  loc_B3121A: FFree1Var var_9C = ""
  loc_B3121D: LitI4 0
  loc_B31222: LitI4 0
  loc_B31227: LitI2_Byte 0
  loc_B31229: LitStr "right"
  loc_B3122C: FMemLdR4 var_EC(16)
  loc_B31231: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B31236: CVarStr var_9C
  loc_B31239: PopAdLdVar
  loc_B3123A: FLdPr Me
  loc_B3123D: MemLdRfVar from_stack_1.htmFile
  loc_B31240: LdPrVar
  loc_B31242: LateMemCall
  loc_B31248: FFree1Var var_9C = ""
  loc_B3124B: LitI4 0
  loc_B31250: FStR4 var_EC
  loc_B31253: AryUnlock
  loc_B31256: AryUnlock
  loc_B31259: AryUnlock
  loc_B3125C: LitVarStr var_AC, "     </tr>"
  loc_B31261: PopAdLdVar
  loc_B31262: FLdPr Me
  loc_B31265: MemLdRfVar from_stack_1.htmFile
  loc_B31268: LdPrVar
  loc_B3126A: LateMemCall
  loc_B31270: LitI2_Byte 1
  loc_B31272: FLdPr Me
  loc_B31275: MemLdRfVar from_stack_1.global_110
  loc_B31278: FLdPr Me
  loc_B3127B: MemLdI2 global_108
  loc_B3127E: CI4UI1
  loc_B3127F: FLdPr Me
  loc_B31282: MemLdI2 global_106
  loc_B31285: CI4UI1
  loc_B31286: FLdPr Me
  loc_B31289: MemLdI2 global_104
  loc_B3128C: CI4UI1
  loc_B3128D: FLdPr Me
  loc_B31290: MemLdStr global_100
  loc_B31293: Ary1LdPr
  loc_B31294: MemLdStr global_8
  loc_B31297: Ary1LdPr
  loc_B31298: MemLdStr global_20
  loc_B3129B: Ary1LdPr
  loc_B3129C: MemLdStr global_20
  loc_B3129F: LitI2_Byte 1
  loc_B312A1: FnUBound
  loc_B312A3: CI2I4
  loc_B312A4: ForI2 var_F0
  loc_B312AA: LitVarStr var_AC, "  <tr align=""left"" class=""Totales3"">"
  loc_B312AF: PopAdLdVar
  loc_B312B0: FLdPr Me
  loc_B312B3: MemLdRfVar from_stack_1.htmFile
  loc_B312B6: LdPrVar
  loc_B312B8: LateMemCall
  loc_B312BE: FLdPr Me
  loc_B312C1: MemLdI2 global_110
  loc_B312C4: CI4UI1
  loc_B312C5: FLdPr Me
  loc_B312C8: MemLdI2 global_108
  loc_B312CB: CI4UI1
  loc_B312CC: FLdPr Me
  loc_B312CF: MemLdI2 global_106
  loc_B312D2: CI4UI1
  loc_B312D3: FLdPr Me
  loc_B312D6: MemLdI2 global_104
  loc_B312D9: CI4UI1
  loc_B312DA: FLdPr Me
  loc_B312DD: MemLdStr global_100
  loc_B312E0: AryLock
  loc_B312E3: Ary1LdPr
  loc_B312E4: MemLdStr global_8
  loc_B312E7: AryLock
  loc_B312EA: Ary1LdPr
  loc_B312EB: MemLdStr global_20
  loc_B312EE: AryLock
  loc_B312F1: Ary1LdPr
  loc_B312F2: MemLdStr global_20
  loc_B312F5: AryLock
  loc_B312F8: Ary1LdPr
  loc_B312F9: MemLdRfVar from_stack_1.global_0
  loc_B312FC: FStR4 var_104
  loc_B312FF: LitI4 0
  loc_B31304: LitI4 0
  loc_B31309: LitI2_Byte 0
  loc_B3130B: LitStr "left"
  loc_B3130E: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_B31311: FMemLdR4 var_104(0)
  loc_B31316: ConcatStr
  loc_B31317: FStStrNoPop var_C0
  loc_B3131A: LitStr "&nbsp;(Subtotal)<br>&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_B3131D: ConcatStr
  loc_B3131E: FStStrNoPop var_C4
  loc_B31321: FMemLdR4 var_104(4)
  loc_B31326: ConcatStr
  loc_B31327: FStStrNoPop var_C8
  loc_B3132A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B3132F: CVarStr var_9C
  loc_B31332: PopAdLdVar
  loc_B31333: FLdPr Me
  loc_B31336: MemLdRfVar from_stack_1.htmFile
  loc_B31339: LdPrVar
  loc_B3133B: LateMemCall
  loc_B31341: FFreeStr var_C0 = "": var_C4 = ""
  loc_B3134A: FFree1Var var_9C = ""
  loc_B3134D: LitI4 0
  loc_B31352: LitI4 0
  loc_B31357: LitI2_Byte 0
  loc_B31359: LitStr "right"
  loc_B3135C: FMemLdR4 var_104(8)
  loc_B31361: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B31366: CVarStr var_9C
  loc_B31369: PopAdLdVar
  loc_B3136A: FLdPr Me
  loc_B3136D: MemLdRfVar from_stack_1.htmFile
  loc_B31370: LdPrVar
  loc_B31372: LateMemCall
  loc_B31378: FFree1Var var_9C = ""
  loc_B3137B: LitI4 0
  loc_B31380: LitI4 0
  loc_B31385: LitI2_Byte 0
  loc_B31387: LitStr "right"
  loc_B3138A: FMemLdR4 var_104(12)
  loc_B3138F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B31394: CVarStr var_9C
  loc_B31397: PopAdLdVar
  loc_B31398: FLdPr Me
  loc_B3139B: MemLdRfVar from_stack_1.htmFile
  loc_B3139E: LdPrVar
  loc_B313A0: LateMemCall
  loc_B313A6: FFree1Var var_9C = ""
  loc_B313A9: LitI4 0
  loc_B313AE: LitI4 0
  loc_B313B3: LitI2_Byte 0
  loc_B313B5: LitStr "right"
  loc_B313B8: FMemLdR4 var_104(16)
  loc_B313BD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B313C2: CVarStr var_9C
  loc_B313C5: PopAdLdVar
  loc_B313C6: FLdPr Me
  loc_B313C9: MemLdRfVar from_stack_1.htmFile
  loc_B313CC: LdPrVar
  loc_B313CE: LateMemCall
  loc_B313D4: FFree1Var var_9C = ""
  loc_B313D7: LitI4 0
  loc_B313DC: FStR4 var_104
  loc_B313DF: AryUnlock
  loc_B313E2: AryUnlock
  loc_B313E5: AryUnlock
  loc_B313E8: AryUnlock
  loc_B313EB: LitVarStr var_AC, "     </tr>"
  loc_B313F0: PopAdLdVar
  loc_B313F1: FLdPr Me
  loc_B313F4: MemLdRfVar from_stack_1.htmFile
  loc_B313F7: LdPrVar
  loc_B313F9: LateMemCall
  loc_B313FF: FLdPr Me
  loc_B31402: VCallAd Control_ID_optAnalitico
  loc_B31405: CVarAd
  loc_B31409: CBoolVarNull
  loc_B3140B: FFree1Var var_9C = ""
  loc_B3140E: BranchF loc_B315C4
  loc_B31411: LitI2_Byte 1
  loc_B31413: FLdPr Me
  loc_B31416: MemLdRfVar from_stack_1.global_112
  loc_B31419: FLdPr Me
  loc_B3141C: MemLdI2 global_110
  loc_B3141F: CI4UI1
  loc_B31420: FLdPr Me
  loc_B31423: MemLdI2 global_108
  loc_B31426: CI4UI1
  loc_B31427: FLdPr Me
  loc_B3142A: MemLdI2 global_106
  loc_B3142D: CI4UI1
  loc_B3142E: FLdPr Me
  loc_B31431: MemLdI2 global_104
  loc_B31434: CI4UI1
  loc_B31435: FLdPr Me
  loc_B31438: MemLdStr global_100
  loc_B3143B: Ary1LdPr
  loc_B3143C: MemLdStr global_8
  loc_B3143F: Ary1LdPr
  loc_B31440: MemLdStr global_20
  loc_B31443: Ary1LdPr
  loc_B31444: MemLdStr global_20
  loc_B31447: Ary1LdPr
  loc_B31448: MemLdStr global_20
  loc_B3144B: LitI2_Byte 1
  loc_B3144D: FnUBound
  loc_B3144F: CI2I4
  loc_B31450: ForI2 var_108
  loc_B31456: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B3145B: PopAdLdVar
  loc_B3145C: FLdPr Me
  loc_B3145F: MemLdRfVar from_stack_1.htmFile
  loc_B31462: LdPrVar
  loc_B31464: LateMemCall
  loc_B3146A: FLdPr Me
  loc_B3146D: MemLdI2 global_112
  loc_B31470: CI4UI1
  loc_B31471: FLdPr Me
  loc_B31474: MemLdI2 global_110
  loc_B31477: CI4UI1
  loc_B31478: FLdPr Me
  loc_B3147B: MemLdI2 global_108
  loc_B3147E: CI4UI1
  loc_B3147F: FLdPr Me
  loc_B31482: MemLdI2 global_106
  loc_B31485: CI4UI1
  loc_B31486: FLdPr Me
  loc_B31489: MemLdI2 global_104
  loc_B3148C: CI4UI1
  loc_B3148D: FLdPr Me
  loc_B31490: MemLdStr global_100
  loc_B31493: AryLock
  loc_B31496: Ary1LdPr
  loc_B31497: MemLdStr global_8
  loc_B3149A: AryLock
  loc_B3149D: Ary1LdPr
  loc_B3149E: MemLdStr global_20
  loc_B314A1: AryLock
  loc_B314A4: Ary1LdPr
  loc_B314A5: MemLdStr global_20
  loc_B314A8: AryLock
  loc_B314AB: Ary1LdPr
  loc_B314AC: MemLdStr global_20
  loc_B314AF: AryLock
  loc_B314B2: Ary1LdRf
  loc_B314B3: FStR4 var_120
  loc_B314B6: LitI4 0
  loc_B314BB: LitI4 0
  loc_B314C0: LitI2_Byte 0
  loc_B314C2: LitStr "left"
  loc_B314C5: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_B314C8: FMemLdR4 var_120(0)
  loc_B314CD: ConcatStr
  loc_B314CE: FStStrNoPop var_C0
  loc_B314D1: LitStr "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_B314D4: ConcatStr
  loc_B314D5: FStStrNoPop var_C4
  loc_B314D8: FMemLdR4 var_120(4)
  loc_B314DD: ConcatStr
  loc_B314DE: FStStrNoPop var_C8
  loc_B314E1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B314E6: CVarStr var_9C
  loc_B314E9: PopAdLdVar
  loc_B314EA: FLdPr Me
  loc_B314ED: MemLdRfVar from_stack_1.htmFile
  loc_B314F0: LdPrVar
  loc_B314F2: LateMemCall
  loc_B314F8: FFreeStr var_C0 = "": var_C4 = ""
  loc_B31501: FFree1Var var_9C = ""
  loc_B31504: LitI4 0
  loc_B31509: LitI4 0
  loc_B3150E: LitI2_Byte 0
  loc_B31510: LitStr "right"
  loc_B31513: FMemLdR4 var_120(8)
  loc_B31518: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B3151D: CVarStr var_9C
  loc_B31520: PopAdLdVar
  loc_B31521: FLdPr Me
  loc_B31524: MemLdRfVar from_stack_1.htmFile
  loc_B31527: LdPrVar
  loc_B31529: LateMemCall
  loc_B3152F: FFree1Var var_9C = ""
  loc_B31532: LitI4 0
  loc_B31537: LitI4 0
  loc_B3153C: LitI2_Byte 0
  loc_B3153E: LitStr "right"
  loc_B31541: FMemLdR4 var_120(12)
  loc_B31546: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B3154B: CVarStr var_9C
  loc_B3154E: PopAdLdVar
  loc_B3154F: FLdPr Me
  loc_B31552: MemLdRfVar from_stack_1.htmFile
  loc_B31555: LdPrVar
  loc_B31557: LateMemCall
  loc_B3155D: FFree1Var var_9C = ""
  loc_B31560: LitI4 0
  loc_B31565: LitI4 0
  loc_B3156A: LitI2_Byte 0
  loc_B3156C: LitStr "right"
  loc_B3156F: FMemLdR4 var_120(16)
  loc_B31574: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B31579: CVarStr var_9C
  loc_B3157C: PopAdLdVar
  loc_B3157D: FLdPr Me
  loc_B31580: MemLdRfVar from_stack_1.htmFile
  loc_B31583: LdPrVar
  loc_B31585: LateMemCall
  loc_B3158B: FFree1Var var_9C = ""
  loc_B3158E: LitI4 0
  loc_B31593: FStR4 var_120
  loc_B31596: AryUnlock
  loc_B31599: AryUnlock
  loc_B3159C: AryUnlock
  loc_B3159F: AryUnlock
  loc_B315A2: AryUnlock
  loc_B315A5: LitVarStr var_AC, "     </tr>"
  loc_B315AA: PopAdLdVar
  loc_B315AB: FLdPr Me
  loc_B315AE: MemLdRfVar from_stack_1.htmFile
  loc_B315B1: LdPrVar
  loc_B315B3: LateMemCall
  loc_B315B9: FLdPr Me
  loc_B315BC: MemLdRfVar from_stack_1.global_112
  loc_B315BF: NextI2 var_108, loc_B31456
  loc_B315C4: FLdPr Me
  loc_B315C7: MemLdRfVar from_stack_1.global_110
  loc_B315CA: NextI2 var_F0, loc_B312AA
  loc_B315CF: FLdPr Me
  loc_B315D2: MemLdRfVar from_stack_1.global_108
  loc_B315D5: NextI2 var_DC, loc_B3112C
  loc_B315DA: FLdPr Me
  loc_B315DD: MemLdRfVar from_stack_1.global_106
  loc_B315E0: NextI2 var_CC, loc_B30FD3
  loc_B315E5: FLdPr Me
  loc_B315E8: VCallAd Control_ID_optJurisdiccion
  loc_B315EB: CVarAd
  loc_B315EF: CBoolVarNull
  loc_B315F1: FFree1Var var_9C = ""
  loc_B315F4: BranchF loc_B3170F
  loc_B315F7: FLdPr Me
  loc_B315FA: MemLdI2 global_104
  loc_B315FD: CI4UI1
  loc_B315FE: FLdPr Me
  loc_B31601: MemLdStr global_100
  loc_B31604: AryLock
  loc_B31607: Ary1LdPr
  loc_B31608: MemLdRfVar from_stack_1.global_12
  loc_B3160B: FStR4 var_128
  loc_B3160E: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_B31613: PopAdLdVar
  loc_B31614: FLdPr Me
  loc_B31617: MemLdRfVar from_stack_1.htmFile
  loc_B3161A: LdPrVar
  loc_B3161C: LateMemCall
  loc_B31622: LitI4 0
  loc_B31627: LitI4 0
  loc_B3162C: LitI2_Byte 0
  loc_B3162E: LitStr "right"
  loc_B31631: LitStr "Subtotal Juris."
  loc_B31634: FLdPr Me
  loc_B31637: MemLdI2 global_104
  loc_B3163A: CI4UI1
  loc_B3163B: FLdPr Me
  loc_B3163E: MemLdStr global_100
  loc_B31641: Ary1LdPr
  loc_B31642: MemLdStr global_0
  loc_B31645: ConcatStr
  loc_B31646: FStStrNoPop var_C0
  loc_B31649: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B3164E: CVarStr var_9C
  loc_B31651: PopAdLdVar
  loc_B31652: FLdPr Me
  loc_B31655: MemLdRfVar from_stack_1.htmFile
  loc_B31658: LdPrVar
  loc_B3165A: LateMemCall
  loc_B31660: FFree1Str var_C0
  loc_B31663: FFree1Var var_9C = ""
  loc_B31666: LitI4 0
  loc_B3166B: LitI4 0
  loc_B31670: LitI2_Byte 0
  loc_B31672: LitStr "right"
  loc_B31675: FMemLdR4 var_128(8)
  loc_B3167A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B3167F: CVarStr var_9C
  loc_B31682: PopAdLdVar
  loc_B31683: FLdPr Me
  loc_B31686: MemLdRfVar from_stack_1.htmFile
  loc_B31689: LdPrVar
  loc_B3168B: LateMemCall
  loc_B31691: FFree1Var var_9C = ""
  loc_B31694: LitI4 0
  loc_B31699: LitI4 0
  loc_B3169E: LitI2_Byte 0
  loc_B316A0: LitStr "right"
  loc_B316A3: FMemLdR4 var_128(12)
  loc_B316A8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B316AD: CVarStr var_9C
  loc_B316B0: PopAdLdVar
  loc_B316B1: FLdPr Me
  loc_B316B4: MemLdRfVar from_stack_1.htmFile
  loc_B316B7: LdPrVar
  loc_B316B9: LateMemCall
  loc_B316BF: FFree1Var var_9C = ""
  loc_B316C2: LitI4 0
  loc_B316C7: LitI4 0
  loc_B316CC: LitI2_Byte 0
  loc_B316CE: LitStr "right"
  loc_B316D1: FMemLdR4 var_128(16)
  loc_B316D6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B316DB: CVarStr var_9C
  loc_B316DE: PopAdLdVar
  loc_B316DF: FLdPr Me
  loc_B316E2: MemLdRfVar from_stack_1.htmFile
  loc_B316E5: LdPrVar
  loc_B316E7: LateMemCall
  loc_B316ED: FFree1Var var_9C = ""
  loc_B316F0: LitVarStr var_AC, "     </tr>"
  loc_B316F5: PopAdLdVar
  loc_B316F6: FLdPr Me
  loc_B316F9: MemLdRfVar from_stack_1.htmFile
  loc_B316FC: LdPrVar
  loc_B316FE: LateMemCall
  loc_B31704: LitI4 0
  loc_B31709: FStR4 var_128
  loc_B3170C: AryUnlock
  loc_B3170F: FLdPr Me
  loc_B31712: MemLdRfVar from_stack_1.global_104
  loc_B31715: NextI2 var_8C, loc_B30F1F
  loc_B3171A: LitI4 1
  loc_B3171F: FLdPr Me
  loc_B31722: MemLdStr global_116
  loc_B31725: AryLock
  loc_B31728: Ary1LdRf
  loc_B31729: FStR4 var_130
  loc_B3172C: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_B31731: PopAdLdVar
  loc_B31732: FLdPr Me
  loc_B31735: MemLdRfVar from_stack_1.htmFile
  loc_B31738: LdPrVar
  loc_B3173A: LateMemCall
  loc_B31740: LitI4 0
  loc_B31745: LitI4 0
  loc_B3174A: LitI2_Byte 0
  loc_B3174C: LitStr "right"
  loc_B3174F: LitStr "TOTAL GENERAL"
  loc_B31752: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B31757: CVarStr var_9C
  loc_B3175A: PopAdLdVar
  loc_B3175B: FLdPr Me
  loc_B3175E: MemLdRfVar from_stack_1.htmFile
  loc_B31761: LdPrVar
  loc_B31763: LateMemCall
  loc_B31769: FFree1Var var_9C = ""
  loc_B3176C: LitI4 0
  loc_B31771: LitI4 0
  loc_B31776: LitI2_Byte 0
  loc_B31778: LitStr "right"
  loc_B3177B: FMemLdR4 var_130(8)
  loc_B31780: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B31785: CVarStr var_9C
  loc_B31788: PopAdLdVar
  loc_B31789: FLdPr Me
  loc_B3178C: MemLdRfVar from_stack_1.htmFile
  loc_B3178F: LdPrVar
  loc_B31791: LateMemCall
  loc_B31797: FFree1Var var_9C = ""
  loc_B3179A: LitI4 0
  loc_B3179F: LitI4 0
  loc_B317A4: LitI2_Byte 0
  loc_B317A6: LitStr "right"
  loc_B317A9: FMemLdR4 var_130(12)
  loc_B317AE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B317B3: CVarStr var_9C
  loc_B317B6: PopAdLdVar
  loc_B317B7: FLdPr Me
  loc_B317BA: MemLdRfVar from_stack_1.htmFile
  loc_B317BD: LdPrVar
  loc_B317BF: LateMemCall
  loc_B317C5: FFree1Var var_9C = ""
  loc_B317C8: LitI4 0
  loc_B317CD: LitI4 0
  loc_B317D2: LitI2_Byte 0
  loc_B317D4: LitStr "right"
  loc_B317D7: FMemLdR4 var_130(16)
  loc_B317DC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B317E1: CVarStr var_9C
  loc_B317E4: PopAdLdVar
  loc_B317E5: FLdPr Me
  loc_B317E8: MemLdRfVar from_stack_1.htmFile
  loc_B317EB: LdPrVar
  loc_B317ED: LateMemCall
  loc_B317F3: FFree1Var var_9C = ""
  loc_B317F6: LitVarStr var_AC, "     </tr>"
  loc_B317FB: PopAdLdVar
  loc_B317FC: FLdPr Me
  loc_B317FF: MemLdRfVar from_stack_1.htmFile
  loc_B31802: LdPrVar
  loc_B31804: LateMemCall
  loc_B3180A: LitI4 0
  loc_B3180F: FStR4 var_130
  loc_B31812: AryUnlock
  loc_B31815: Call Proc_166_27_9ED4B8()
  loc_B3181A: FLdPr Me
  loc_B3181D: MemLdRfVar from_stack_1.htmFile
  loc_B31820: LdPrVar
  loc_B31822: LateMemCall
  loc_B31828: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B3182D: ExitProcHresult
  loc_B3182E: LitStr "StrFormMemory_0"
End Sub

Public Sub GeneraTXT() 'AC43F8
  'Data Table: 483860
  loc_AC3E20: ImpAdCallI2 Proc_261_16_9B9214()
  loc_AC3E25: FStStrNoPop var_88
  loc_AC3E28: LitStr "\Acuerdo 3949\"
  loc_AC3E2B: ConcatStr
  loc_AC3E2C: FStStrNoPop var_94
  loc_AC3E2F: FLdRfVar var_90
  loc_AC3E32: FLdPr Me
  loc_AC3E35: VCallAd Control_ID_cboPeriodo
  loc_AC3E38: FStAdFunc var_8C
  loc_AC3E3B: FLdPr var_8C
  loc_AC3E3E:  = Me.Text
  loc_AC3E43: ILdRf var_90
  loc_AC3E46: ConcatStr
  loc_AC3E47: FStStrNoPop var_98
  loc_AC3E4A: LitStr "\Trimestre "
  loc_AC3E4D: ConcatStr
  loc_AC3E4E: FStStrNoPop var_AC
  loc_AC3E51: FLdRfVar var_A8
  loc_AC3E54: FLdRfVar var_9E
  loc_AC3E57: FLdPr Me
  loc_AC3E5A: VCallAd Control_ID_cboTrimestre
  loc_AC3E5D: FStAdFunc var_9C
  loc_AC3E60: FLdPr var_9C
  loc_AC3E63:  = Me.ListIndex
  loc_AC3E68: FLdI2 var_9E
  loc_AC3E6B: FLdPr Me
  loc_AC3E6E: VCallAd Control_ID_cboTrimestre
  loc_AC3E71: FStAdFunc var_A4
  loc_AC3E74: FLdPr var_A4
  loc_AC3E77:  = Me.ItemData
  loc_AC3E7C: ILdRf var_A8
  loc_AC3E7F: CStrI4
  loc_AC3E81: FStStrNoPop var_B0
  loc_AC3E84: ConcatStr
  loc_AC3E85: FStStrNoPop var_B4
  loc_AC3E88: LitStr "\evodeufloacu.txt"
  loc_AC3E8B: ConcatStr
  loc_AC3E8C: ImpAdStStr MemVar_C3D05C
  loc_AC3E90: FFreeStr var_88 = "": var_94 = "": var_90 = "": var_98 = "": var_AC = "": var_B0 = ""
  loc_AC3EA1: FFreeAd var_8C = "": var_9C = ""
  loc_AC3EAA: ImpAdLdI4 MemVar_C3D05C
  loc_AC3EAD: ImpAdCallFPR4 Proc_261_17_9A1230()
  loc_AC3EB2: FLdRfVar var_8C
  loc_AC3EB5: LitI2_Byte 0
  loc_AC3EB7: LitI2_Byte &HFF
  loc_AC3EB9: ImpAdLdI4 MemVar_C3D05C
  loc_AC3EBC: FLdPr Me
  loc_AC3EBF: MemLdRfVar from_stack_1.global_80
  loc_AC3EC2: NewIfNullPr IFileSystem3
  loc_AC3EC5: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AC3ECA: ILdRf var_8C
  loc_AC3ECD: FLdPr Me
  loc_AC3ED0: MemStVarAd
  loc_AC3ED4: FFree1Ad var_8C
  loc_AC3ED7: LitVarStr var_CC, "Ejercicio|Trimestre|Nomenclador|Concepto|StoDeuFloIni|VarDeuFloCon|StoDeuFloFin"
  loc_AC3EDC: PopAdLdVar
  loc_AC3EDD: FLdPr Me
  loc_AC3EE0: MemLdRfVar from_stack_1.global_84
  loc_AC3EE3: LdPrVar
  loc_AC3EE5: LateMemCall
  loc_AC3EEB: LitI2_Byte 1
  loc_AC3EED: FLdPr Me
  loc_AC3EF0: MemLdRfVar from_stack_1.global_104
  loc_AC3EF3: FLdPr Me
  loc_AC3EF6: MemLdStr global_100
  loc_AC3EF9: LitI2_Byte 1
  loc_AC3EFB: FnUBound
  loc_AC3EFD: CI2I4
  loc_AC3EFE: ForI2 var_E0
  loc_AC3F04: LitI2_Byte 1
  loc_AC3F06: FLdPr Me
  loc_AC3F09: MemLdRfVar from_stack_1.global_106
  loc_AC3F0C: FLdPr Me
  loc_AC3F0F: MemLdI2 global_104
  loc_AC3F12: CI4UI1
  loc_AC3F13: FLdPr Me
  loc_AC3F16: MemLdStr global_100
  loc_AC3F19: Ary1LdPr
  loc_AC3F1A: MemLdStr global_8
  loc_AC3F1D: LitI2_Byte 1
  loc_AC3F1F: FnUBound
  loc_AC3F21: CI2I4
  loc_AC3F22: ForI2 var_E4
  loc_AC3F28: LitI2_Byte 1
  loc_AC3F2A: FLdPr Me
  loc_AC3F2D: MemLdRfVar from_stack_1.global_108
  loc_AC3F30: FLdPr Me
  loc_AC3F33: MemLdI2 global_106
  loc_AC3F36: CI4UI1
  loc_AC3F37: FLdPr Me
  loc_AC3F3A: MemLdI2 global_104
  loc_AC3F3D: CI4UI1
  loc_AC3F3E: FLdPr Me
  loc_AC3F41: MemLdStr global_100
  loc_AC3F44: Ary1LdPr
  loc_AC3F45: MemLdStr global_8
  loc_AC3F48: Ary1LdPr
  loc_AC3F49: MemLdStr global_20
  loc_AC3F4C: LitI2_Byte 1
  loc_AC3F4E: FnUBound
  loc_AC3F50: CI2I4
  loc_AC3F51: ForI2 var_E8
  loc_AC3F57: LitI2_Byte 1
  loc_AC3F59: FLdPr Me
  loc_AC3F5C: MemLdRfVar from_stack_1.global_110
  loc_AC3F5F: FLdPr Me
  loc_AC3F62: MemLdI2 global_108
  loc_AC3F65: CI4UI1
  loc_AC3F66: FLdPr Me
  loc_AC3F69: MemLdI2 global_106
  loc_AC3F6C: CI4UI1
  loc_AC3F6D: FLdPr Me
  loc_AC3F70: MemLdI2 global_104
  loc_AC3F73: CI4UI1
  loc_AC3F74: FLdPr Me
  loc_AC3F77: MemLdStr global_100
  loc_AC3F7A: Ary1LdPr
  loc_AC3F7B: MemLdStr global_8
  loc_AC3F7E: Ary1LdPr
  loc_AC3F7F: MemLdStr global_20
  loc_AC3F82: Ary1LdPr
  loc_AC3F83: MemLdStr global_20
  loc_AC3F86: LitI2_Byte 1
  loc_AC3F88: FnUBound
  loc_AC3F8A: CI2I4
  loc_AC3F8B: ForI2 var_EC
  loc_AC3F91: FLdRfVar var_88
  loc_AC3F94: FLdPr Me
  loc_AC3F97: VCallAd Control_ID_cboPeriodo
  loc_AC3F9A: FStAdFunc var_8C
  loc_AC3F9D: FLdPr var_8C
  loc_AC3FA0:  = Me.Text
  loc_AC3FA5: ILdRf var_88
  loc_AC3FA8: LitStr "|"
  loc_AC3FAB: ConcatStr
  loc_AC3FAC: FStStrNoPop var_90
  loc_AC3FAF: FLdRfVar var_A8
  loc_AC3FB2: FLdRfVar var_9E
  loc_AC3FB5: FLdPr Me
  loc_AC3FB8: VCallAd Control_ID_cboTrimestre
  loc_AC3FBB: FStAdFunc var_9C
  loc_AC3FBE: FLdPr var_9C
  loc_AC3FC1:  = Me.ListIndex
  loc_AC3FC6: FLdI2 var_9E
  loc_AC3FC9: FLdPr Me
  loc_AC3FCC: VCallAd Control_ID_cboTrimestre
  loc_AC3FCF: FStAdFunc var_A4
  loc_AC3FD2: FLdPr var_A4
  loc_AC3FD5:  = Me.ItemData
  loc_AC3FDA: ILdRf var_A8
  loc_AC3FDD: CStrI4
  loc_AC3FDF: FStStrNoPop var_94
  loc_AC3FE2: ConcatStr
  loc_AC3FE3: FStStrNoPop var_98
  loc_AC3FE6: LitStr "|"
  loc_AC3FE9: ConcatStr
  loc_AC3FEA: FStStrNoPop var_AC
  loc_AC3FED: LitStr "060204"
  loc_AC3FF0: ConcatStr
  loc_AC3FF1: FStStr var_B8
  loc_AC3FF4: FFreeStr var_88 = "": var_90 = "": var_94 = "": var_98 = ""
  loc_AC4001: FFreeAd var_8C = "": var_9C = ""
  loc_AC400A: FLdPr Me
  loc_AC400D: MemLdI2 global_110
  loc_AC4010: CI4UI1
  loc_AC4011: FLdPr Me
  loc_AC4014: MemLdI2 global_108
  loc_AC4017: CI4UI1
  loc_AC4018: FLdPr Me
  loc_AC401B: MemLdI2 global_106
  loc_AC401E: CI4UI1
  loc_AC401F: FLdPr Me
  loc_AC4022: MemLdI2 global_104
  loc_AC4025: CI4UI1
  loc_AC4026: FLdPr Me
  loc_AC4029: MemLdStr global_100
  loc_AC402C: AryLock
  loc_AC402F: Ary1LdPr
  loc_AC4030: MemLdStr global_8
  loc_AC4033: AryLock
  loc_AC4036: Ary1LdPr
  loc_AC4037: MemLdStr global_20
  loc_AC403A: AryLock
  loc_AC403D: Ary1LdPr
  loc_AC403E: MemLdStr global_20
  loc_AC4041: AryLock
  loc_AC4044: Ary1LdPr
  loc_AC4045: MemLdRfVar from_stack_1.global_0
  loc_AC4048: FStR4 var_100
  loc_AC404B: FMemLdR4 var_100(0)
  loc_AC4050: FStStrCopy var_104
  loc_AC4053: ILdRf var_104
  loc_AC4056: LitStr "41100000"
  loc_AC4059: EqStr
  loc_AC405B: BranchF loc_AC4067
  loc_AC405E: LitStr "2"
  loc_AC4061: FStStrCopy var_BC
  loc_AC4064: Branch loc_AC4319
  loc_AC4067: ILdRf var_104
  loc_AC406A: LitStr "41400000"
  loc_AC406D: CI4Str
  loc_AC406E: LitStr "Municipalidad de Guaymallén"
  loc_AC4071: LitStr "Municipalidad de Lavalle"
  loc_AC4074: EqStr
  loc_AC4076: CI4UI1
  loc_AC4077: AndI4
  loc_AC4078: CStrI4
  loc_AC407A: FStStrNoPop var_88
  loc_AC407D: EqStr
  loc_AC407F: FFree1Str var_88
  loc_AC4082: BranchF loc_AC408E
  loc_AC4085: LitStr "2"
  loc_AC4088: FStStrCopy var_BC
  loc_AC408B: Branch loc_AC4319
  loc_AC408E: ILdRf var_104
  loc_AC4091: LitStr "41200000"
  loc_AC4094: EqStr
  loc_AC4096: BranchF loc_AC40A2
  loc_AC4099: LitStr "4"
  loc_AC409C: FStStrCopy var_BC
  loc_AC409F: Branch loc_AC4319
  loc_AC40A2: ILdRf var_104
  loc_AC40A5: LitStr "41500000"
  loc_AC40A8: CI4Str
  loc_AC40A9: LitStr "Municipalidad de Guaymallén"
  loc_AC40AC: LitStr "Municipalidad de Lavalle"
  loc_AC40AF: EqStr
  loc_AC40B1: CI4UI1
  loc_AC40B2: AndI4
  loc_AC40B3: CStrI4
  loc_AC40B5: FStStrNoPop var_88
  loc_AC40B8: EqStr
  loc_AC40BA: FFree1Str var_88
  loc_AC40BD: BranchF loc_AC40C9
  loc_AC40C0: LitStr "4"
  loc_AC40C3: FStStrCopy var_BC
  loc_AC40C6: Branch loc_AC4319
  loc_AC40C9: ILdRf var_104
  loc_AC40CC: LitStr "41300000"
  loc_AC40CF: EqStr
  loc_AC40D1: BranchF loc_AC40DD
  loc_AC40D4: LitStr "5"
  loc_AC40D7: FStStrCopy var_BC
  loc_AC40DA: Branch loc_AC4319
  loc_AC40DD: ILdRf var_104
  loc_AC40E0: LitStr "41600000"
  loc_AC40E3: CI4Str
  loc_AC40E4: LitStr "Municipalidad de Guaymallén"
  loc_AC40E7: LitStr "Municipalidad de Lavalle"
  loc_AC40EA: EqStr
  loc_AC40EC: CI4UI1
  loc_AC40ED: AndI4
  loc_AC40EE: CStrI4
  loc_AC40F0: FStStrNoPop var_88
  loc_AC40F3: EqStr
  loc_AC40F5: FFree1Str var_88
  loc_AC40F8: BranchF loc_AC4104
  loc_AC40FB: LitStr "5"
  loc_AC40FE: FStStrCopy var_BC
  loc_AC4101: Branch loc_AC4319
  loc_AC4104: ILdRf var_104
  loc_AC4107: LitStr "42100000"
  loc_AC410A: EqStr
  loc_AC410C: BranchF loc_AC4118
  loc_AC410F: LitStr "20"
  loc_AC4112: FStStrCopy var_BC
  loc_AC4115: Branch loc_AC4319
  loc_AC4118: ILdRf var_104
  loc_AC411B: LitStr "62100000"
  loc_AC411E: EqStr
  loc_AC4120: BranchF loc_AC412C
  loc_AC4123: LitStr "18"
  loc_AC4126: FStStrCopy var_BC
  loc_AC4129: Branch loc_AC4319
  loc_AC412C: ILdRf var_104
  loc_AC412F: LitStr "43100000"
  loc_AC4132: EqStr
  loc_AC4134: BranchF loc_AC4140
  loc_AC4137: LitStr "6"
  loc_AC413A: FStStrCopy var_BC
  loc_AC413D: Branch loc_AC4319
  loc_AC4140: ILdRf var_104
  loc_AC4143: LitStr "43200000"
  loc_AC4146: EqStr
  loc_AC4148: BranchF loc_AC4154
  loc_AC414B: LitStr "19"
  loc_AC414E: FStStrCopy var_BC
  loc_AC4151: Branch loc_AC4319
  loc_AC4154: ILdRf var_104
  loc_AC4157: LitStr "43400000"
  loc_AC415A: CI4Str
  loc_AC415B: LitStr "Municipalidad de Guaymallén"
  loc_AC415E: LitStr "Municipalidad de Lavalle"
  loc_AC4161: EqStr
  loc_AC4163: CI4UI1
  loc_AC4164: AndI4
  loc_AC4165: CStrI4
  loc_AC4167: FStStrNoPop var_88
  loc_AC416A: EqStr
  loc_AC416C: FFree1Str var_88
  loc_AC416F: BranchF loc_AC417B
  loc_AC4172: LitStr "6"
  loc_AC4175: FStStrCopy var_BC
  loc_AC4178: Branch loc_AC4319
  loc_AC417B: ILdRf var_104
  loc_AC417E: LitStr "43500000"
  loc_AC4181: CI4Str
  loc_AC4182: LitStr "Municipalidad de Guaymallén"
  loc_AC4185: LitStr "Municipalidad de Lavalle"
  loc_AC4188: EqStr
  loc_AC418A: CI4UI1
  loc_AC418B: AndI4
  loc_AC418C: CStrI4
  loc_AC418E: FStStrNoPop var_88
  loc_AC4191: EqStr
  loc_AC4193: FFree1Str var_88
  loc_AC4196: BranchF loc_AC41A2
  loc_AC4199: LitStr "19"
  loc_AC419C: FStStrCopy var_BC
  loc_AC419F: Branch loc_AC4319
  loc_AC41A2: ILdRf var_104
  loc_AC41A5: LitStr "51100000"
  loc_AC41A8: EqStr
  loc_AC41AA: BranchF loc_AC41B6
  loc_AC41AD: LitStr "11"
  loc_AC41B0: FStStrCopy var_BC
  loc_AC41B3: Branch loc_AC4319
  loc_AC41B6: ILdRf var_104
  loc_AC41B9: LitStr "51200000"
  loc_AC41BC: EqStr
  loc_AC41BE: BranchF loc_AC41CA
  loc_AC41C1: LitStr "12"
  loc_AC41C4: FStStrCopy var_BC
  loc_AC41C7: Branch loc_AC4319
  loc_AC41CA: ILdRf var_104
  loc_AC41CD: LitStr "51300000"
  loc_AC41D0: CI4Str
  loc_AC41D1: LitStr "Municipalidad de Guaymallén"
  loc_AC41D4: LitStr "Municipalidad de Lavalle"
  loc_AC41D7: EqStr
  loc_AC41D9: CI4UI1
  loc_AC41DA: AndI4
  loc_AC41DB: CStrI4
  loc_AC41DD: FStStrNoPop var_88
  loc_AC41E0: EqStr
  loc_AC41E2: FFree1Str var_88
  loc_AC41E5: BranchF loc_AC41F1
  loc_AC41E8: LitStr "11"
  loc_AC41EB: FStStrCopy var_BC
  loc_AC41EE: Branch loc_AC4319
  loc_AC41F1: ILdRf var_104
  loc_AC41F4: LitStr "51400000"
  loc_AC41F7: CI4Str
  loc_AC41F8: LitStr "Municipalidad de Guaymallén"
  loc_AC41FB: LitStr "Municipalidad de Lavalle"
  loc_AC41FE: EqStr
  loc_AC4200: CI4UI1
  loc_AC4201: AndI4
  loc_AC4202: CStrI4
  loc_AC4204: FStStrNoPop var_88
  loc_AC4207: EqStr
  loc_AC4209: FFree1Str var_88
  loc_AC420C: BranchF loc_AC4218
  loc_AC420F: LitStr "12"
  loc_AC4212: FStStrCopy var_BC
  loc_AC4215: Branch loc_AC4319
  loc_AC4218: ILdRf var_104
  loc_AC421B: LitStr "51800000"
  loc_AC421E: CI4Str
  loc_AC421F: LitStr "Municipalidad de Guaymallén"
  loc_AC4222: LitStr "Municipalidad de Lavalle"
  loc_AC4225: EqStr
  loc_AC4227: CI4UI1
  loc_AC4228: AndI4
  loc_AC4229: CStrI4
  loc_AC422B: FStStrNoPop var_88
  loc_AC422E: EqStr
  loc_AC4230: FFree1Str var_88
  loc_AC4233: BranchF loc_AC423F
  loc_AC4236: LitStr "12"
  loc_AC4239: FStStrCopy var_BC
  loc_AC423C: Branch loc_AC4319
  loc_AC423F: ILdRf var_104
  loc_AC4242: LitStr "51900000"
  loc_AC4245: CI4Str
  loc_AC4246: LitStr "Municipalidad de Guaymallén"
  loc_AC4249: LitStr "Municipalidad de Lavalle"
  loc_AC424C: EqStr
  loc_AC424E: CI4UI1
  loc_AC424F: AndI4
  loc_AC4250: CStrI4
  loc_AC4252: FStStrNoPop var_88
  loc_AC4255: EqStr
  loc_AC4257: FFree1Str var_88
  loc_AC425A: BranchF loc_AC4266
  loc_AC425D: LitStr "11"
  loc_AC4260: FStStrCopy var_BC
  loc_AC4263: Branch loc_AC4319
  loc_AC4266: ILdRf var_104
  loc_AC4269: LitStr "52200000"
  loc_AC426C: EqStr
  loc_AC426E: BranchF loc_AC427A
  loc_AC4271: LitStr "14"
  loc_AC4274: FStStrCopy var_BC
  loc_AC4277: Branch loc_AC4319
  loc_AC427A: ILdRf var_104
  loc_AC427D: LitStr "52300000"
  loc_AC4280: CI4Str
  loc_AC4281: LitStr "Municipalidad de Guaymallén"
  loc_AC4284: LitStr "Municipalidad de Lavalle"
  loc_AC4287: EqStr
  loc_AC4289: CI4UI1
  loc_AC428A: AndI4
  loc_AC428B: CStrI4
  loc_AC428D: FStStrNoPop var_88
  loc_AC4290: EqStr
  loc_AC4292: FFree1Str var_88
  loc_AC4295: BranchF loc_AC42A1
  loc_AC4298: LitStr "14"
  loc_AC429B: FStStrCopy var_BC
  loc_AC429E: Branch loc_AC4319
  loc_AC42A1: ILdRf var_104
  loc_AC42A4: LitStr "53000000"
  loc_AC42A7: EqStr
  loc_AC42A9: BranchF loc_AC42B5
  loc_AC42AC: LitStr "16"
  loc_AC42AF: FStStrCopy var_BC
  loc_AC42B2: Branch loc_AC4319
  loc_AC42B5: ILdRf var_104
  loc_AC42B8: LitStr "53100000"
  loc_AC42BB: EqStr
  loc_AC42BD: BranchF loc_AC42C9
  loc_AC42C0: LitStr "16"
  loc_AC42C3: FStStrCopy var_BC
  loc_AC42C6: Branch loc_AC4319
  loc_AC42C9: ILdRf var_104
  loc_AC42CC: LitStr "61100000"
  loc_AC42CF: CI4Str
  loc_AC42D0: LitStr "Municipalidad de Guaymallén"
  loc_AC42D3: LitStr "Municipalidad de Lavalle"
  loc_AC42D6: EqStr
  loc_AC42D8: CI4UI1
  loc_AC42D9: AndI4
  loc_AC42DA: CStrI4
  loc_AC42DC: FStStrNoPop var_88
  loc_AC42DF: EqStr
  loc_AC42E1: FFree1Str var_88
  loc_AC42E4: BranchF loc_AC42F0
  loc_AC42E7: LitStr "20"
  loc_AC42EA: FStStrCopy var_BC
  loc_AC42ED: Branch loc_AC4319
  loc_AC42F0: ILdRf var_104
  loc_AC42F3: LitStr "64100000"
  loc_AC42F6: EqStr
  loc_AC42F8: BranchF loc_AC4304
  loc_AC42FB: LitStr "15"
  loc_AC42FE: FStStrCopy var_BC
  loc_AC4301: Branch loc_AC4319
  loc_AC4304: FMemLdR4 var_100(0)
  loc_AC4309: FStStrCopy var_BC
  loc_AC430C: LitI4 0
  loc_AC4311: LitStr "Informe el TXT al Administrador..."
  loc_AC4314: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AC4319: ILdRf var_B8
  loc_AC431C: LitStr "|"
  loc_AC431F: ConcatStr
  loc_AC4320: FStStrNoPop var_88
  loc_AC4323: ILdRf var_BC
  loc_AC4326: ConcatStr
  loc_AC4327: FStStr var_B8
  loc_AC432A: FFree1Str var_88
  loc_AC432D: ILdRf var_B8
  loc_AC4330: LitStr "|"
  loc_AC4333: ConcatStr
  loc_AC4334: FStStrNoPop var_88
  loc_AC4337: FMemLdR4 var_100(8)
  loc_AC433C: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_AC4341: FStStrNoPop var_90
  loc_AC4344: ConcatStr
  loc_AC4345: FStStr var_B8
  loc_AC4348: FFreeStr var_88 = ""
  loc_AC434F: ILdRf var_B8
  loc_AC4352: LitStr "|"
  loc_AC4355: ConcatStr
  loc_AC4356: FStStrNoPop var_88
  loc_AC4359: FMemLdR4 var_100(12)
  loc_AC435E: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_AC4363: FStStrNoPop var_90
  loc_AC4366: ConcatStr
  loc_AC4367: FStStr var_B8
  loc_AC436A: FFreeStr var_88 = ""
  loc_AC4371: ILdRf var_B8
  loc_AC4374: LitStr "|"
  loc_AC4377: ConcatStr
  loc_AC4378: FStStrNoPop var_88
  loc_AC437B: FMemLdR4 var_100(16)
  loc_AC4380: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_AC4385: FStStrNoPop var_90
  loc_AC4388: ConcatStr
  loc_AC4389: FStStr var_B8
  loc_AC438C: FFreeStr var_88 = ""
  loc_AC4393: LitI4 0
  loc_AC4398: FStR4 var_100
  loc_AC439B: AryUnlock
  loc_AC439E: AryUnlock
  loc_AC43A1: AryUnlock
  loc_AC43A4: AryUnlock
  loc_AC43A7: FLdRfVar var_B8
  loc_AC43AA: CDargRef
  loc_AC43AE: FLdPr Me
  loc_AC43B1: MemLdRfVar from_stack_1.global_84
  loc_AC43B4: LdPrVar
  loc_AC43B6: LateMemCall
  loc_AC43BC: FLdPr Me
  loc_AC43BF: MemLdRfVar from_stack_1.global_110
  loc_AC43C2: NextI2 var_EC, loc_AC3F91
  loc_AC43C7: FLdPr Me
  loc_AC43CA: MemLdRfVar from_stack_1.global_108
  loc_AC43CD: NextI2 var_E8, loc_AC3F57
  loc_AC43D2: FLdPr Me
  loc_AC43D5: MemLdRfVar from_stack_1.global_106
  loc_AC43D8: NextI2 var_E4, loc_AC3F28
  loc_AC43DD: FLdPr Me
  loc_AC43E0: MemLdRfVar from_stack_1.global_104
  loc_AC43E3: NextI2 var_E0, loc_AC3F04
  loc_AC43E8: FLdPr Me
  loc_AC43EB: MemLdRfVar from_stack_1.global_84
  loc_AC43EE: LdPrVar
  loc_AC43F0: LateMemCall
  loc_AC43F6: ExitProcHresult
End Sub

Private Function Proc_166_19_9E1FF4() '9E1FF4
  'Data Table: 483860
  loc_9E1EEC: FLdPr Me
  loc_9E1EEF: MemLdI2 global_104
  loc_9E1EF2: LitI2_Byte 1
  loc_9E1EF4: AddI2
  loc_9E1EF5: FLdPr Me
  loc_9E1EF8: MemStI2 global_104
  loc_9E1EFB: LitI2_Byte 0
  loc_9E1EFD: FLdPr Me
  loc_9E1F00: MemStI2 global_106
  loc_9E1F03: LitI4 1
  loc_9E1F08: FLdPr Me
  loc_9E1F0B: MemLdI2 global_104
  loc_9E1F0E: CI4UI1
  loc_9E1F0F: FLdPr Me
  loc_9E1F12: MemLdRfVar from_stack_1.global_100
  loc_9E1F15: RedimPreserve
  loc_9E1F1F: FLdRfVar var_A0
  loc_9E1F22: LitVarStr var_9C, "CodiOrga"
  loc_9E1F27: PopAdLdVar
  loc_9E1F28: FLdRfVar var_8C
  loc_9E1F2B: FLdRfVar var_88
  loc_9E1F2E: FLdPr Me
  loc_9E1F31: MemLdRfVar from_stack_1.global_72
  loc_9E1F34: NewIfNullPr clsimputacion
  loc_9E1F37: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E1F3C: FLdPr var_88
  loc_9E1F3F:  = Me.Fields
  loc_9E1F44: FLdPr var_8C
  loc_9E1F47: from_stack_2 = Me.Item(from_stack_1)
  loc_9E1F4C: LitI2_Byte 0
  loc_9E1F4E: LitVar_Missing var_D4
  loc_9E1F51: LitI2_Byte 0
  loc_9E1F53: FLdZeroAd var_A0
  loc_9E1F56: CVarAd
  loc_9E1F5A: PopAdLdVar
  loc_9E1F5B: FLdPr Me
  loc_9E1F5E: MemLdI2 global_104
  loc_9E1F61: CI4UI1
  loc_9E1F62: FLdPr Me
  loc_9E1F65: MemLdStr global_100
  loc_9E1F68: AryLock
  loc_9E1F6B: Ary1LdPr
  loc_9E1F6C: MemLdRfVar from_stack_1.global_0
  loc_9E1F6F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E1F74: AryUnlock
  loc_9E1F77: FFreeAd var_88 = ""
  loc_9E1F7E: FFreeVar var_B4 = ""
  loc_9E1F85: FLdRfVar var_A0
  loc_9E1F88: LitVarStr var_9C, "DetaOrga"
  loc_9E1F8D: PopAdLdVar
  loc_9E1F8E: FLdRfVar var_8C
  loc_9E1F91: FLdRfVar var_88
  loc_9E1F94: FLdPr Me
  loc_9E1F97: MemLdRfVar from_stack_1.global_72
  loc_9E1F9A: NewIfNullPr clsimputacion
  loc_9E1F9D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E1FA2: FLdPr var_88
  loc_9E1FA5:  = Me.Fields
  loc_9E1FAA: FLdPr var_8C
  loc_9E1FAD: from_stack_2 = Me.Item(from_stack_1)
  loc_9E1FB2: LitI2_Byte 0
  loc_9E1FB4: LitVar_Missing var_D4
  loc_9E1FB7: LitI2_Byte 0
  loc_9E1FB9: FLdZeroAd var_A0
  loc_9E1FBC: CVarAd
  loc_9E1FC0: PopAdLdVar
  loc_9E1FC1: FLdPr Me
  loc_9E1FC4: MemLdI2 global_104
  loc_9E1FC7: CI4UI1
  loc_9E1FC8: FLdPr Me
  loc_9E1FCB: MemLdStr global_100
  loc_9E1FCE: AryLock
  loc_9E1FD1: Ary1LdPr
  loc_9E1FD2: MemLdRfVar from_stack_1.global_4
  loc_9E1FD5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E1FDA: AryUnlock
  loc_9E1FDD: FFreeAd var_88 = ""
  loc_9E1FE4: FFreeVar var_B4 = ""
  loc_9E1FEB: Call Proc_166_20_A27D54()
  loc_9E1FF0: ExitProcHresult
  loc_9E1FF1: MemStI2 global_104
End Function

Private Function Proc_166_20_A27D54() 'A27D54
  'Data Table: 483860
  loc_A27BA0: FLdPr Me
  loc_A27BA3: MemLdI2 global_106
  loc_A27BA6: LitI2_Byte 1
  loc_A27BA8: AddI2
  loc_A27BA9: FLdPr Me
  loc_A27BAC: MemStI2 global_106
  loc_A27BAF: LitI2_Byte 0
  loc_A27BB1: FLdPr Me
  loc_A27BB4: MemStI2 global_108
  loc_A27BB7: LitI4 1
  loc_A27BBC: FLdPr Me
  loc_A27BBF: MemLdI2 global_106
  loc_A27BC2: CI4UI1
  loc_A27BC3: FLdPr Me
  loc_A27BC6: MemLdI2 global_104
  loc_A27BC9: CI4UI1
  loc_A27BCA: FLdPr Me
  loc_A27BCD: MemLdStr global_100
  loc_A27BD0: Ary1LdPr
  loc_A27BD1: MemLdRfVar from_stack_1.global_8
  loc_A27BD4: RedimPreserve
  loc_A27BDE: FLdRfVar var_B0
  loc_A27BE1: FLdRfVar var_A0
  loc_A27BE4: LitVarStr var_9C, "CodiPart"
  loc_A27BE9: PopAdLdVar
  loc_A27BEA: FLdRfVar var_8C
  loc_A27BED: FLdRfVar var_88
  loc_A27BF0: FLdPr Me
  loc_A27BF3: MemLdRfVar from_stack_1.global_72
  loc_A27BF6: NewIfNullPr clsimputacion
  loc_A27BF9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A27BFE: FLdPr var_88
  loc_A27C01:  = Me.Fields
  loc_A27C06: FLdPr var_8C
  loc_A27C09: from_stack_2 = Me.Item(from_stack_1)
  loc_A27C0E: FLdPr var_A0
  loc_A27C11:  = Me.Value
  loc_A27C16: LitI4 1
  loc_A27C1B: FLdRfVar var_B0
  loc_A27C1E: CStrVarTmp
  loc_A27C1F: FStStrNoPop var_B4
  loc_A27C22: ImpAdCallI2 Left$(, )
  loc_A27C27: FStStr var_F4
  loc_A27C2A: LitI2_Byte 0
  loc_A27C2C: LitVar_Missing var_F0
  loc_A27C2F: LitI2_Byte 0
  loc_A27C31: FLdZeroAd var_F4
  loc_A27C34: FStStrNoPop var_B8
  loc_A27C37: LitStr "0000000"
  loc_A27C3A: ConcatStr
  loc_A27C3B: CVarStr var_D0
  loc_A27C3E: PopAdLdVar
  loc_A27C3F: FLdPr Me
  loc_A27C42: MemLdI2 global_106
  loc_A27C45: CI4UI1
  loc_A27C46: FLdPr Me
  loc_A27C49: MemLdI2 global_104
  loc_A27C4C: CI4UI1
  loc_A27C4D: FLdPr Me
  loc_A27C50: MemLdStr global_100
  loc_A27C53: AryLock
  loc_A27C56: Ary1LdPr
  loc_A27C57: MemLdStr global_8
  loc_A27C5A: AryLock
  loc_A27C5D: Ary1LdPr
  loc_A27C5E: MemLdRfVar from_stack_1.global_0
  loc_A27C61: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A27C66: AryUnlock
  loc_A27C69: AryUnlock
  loc_A27C6C: FFreeStr var_B4 = "": var_B8 = ""
  loc_A27C75: FFreeAd var_88 = "": var_8C = ""
  loc_A27C7E: FFreeVar var_B0 = "": var_D0 = ""
  loc_A27C87: FLdRfVar var_B0
  loc_A27C8A: FLdRfVar var_A0
  loc_A27C8D: LitVarStr var_9C, "PeriInfo"
  loc_A27C92: PopAdLdVar
  loc_A27C93: FLdRfVar var_8C
  loc_A27C96: FLdRfVar var_88
  loc_A27C99: FLdPr Me
  loc_A27C9C: MemLdRfVar from_stack_1.global_72
  loc_A27C9F: NewIfNullPr clsimputacion
  loc_A27CA2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A27CA7: FLdPr var_88
  loc_A27CAA:  = Me.Fields
  loc_A27CAF: FLdPr var_8C
  loc_A27CB2: from_stack_2 = Me.Item(from_stack_1)
  loc_A27CB7: FLdPr var_A0
  loc_A27CBA:  = Me.Value
  loc_A27CBF: FLdPr Me
  loc_A27CC2: MemLdRfVar from_stack_1.global_76
  loc_A27CC5: NewIfNullRf
  loc_A27CC9: FLdPr Me
  loc_A27CCC: MemLdI2 global_106
  loc_A27CCF: CI4UI1
  loc_A27CD0: FLdPr Me
  loc_A27CD3: MemLdI2 global_104
  loc_A27CD6: CI4UI1
  loc_A27CD7: FLdPr Me
  loc_A27CDA: MemLdStr global_100
  loc_A27CDD: Ary1LdPr
  loc_A27CDE: MemLdStr global_8
  loc_A27CE1: Ary1LdPr
  loc_A27CE2: MemLdStr global_0
  loc_A27CE5: FLdRfVar var_B0
  loc_A27CE8: CI2Var
  loc_A27CE9: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A27CEE: FFreeAd var_88 = "": var_8C = ""
  loc_A27CF7: FFree1Var var_B0 = ""
  loc_A27CFA: FLdRfVar var_B4
  loc_A27CFD: FLdPr Me
  loc_A27D00: MemLdRfVar from_stack_1.global_76
  loc_A27D03: NewIfNullPr tblpartida
  loc_A27D06: from_stack_1v = tblpartida.DetaPartGet()
  loc_A27D0B: LitI2_Byte 0
  loc_A27D0D: LitVar_Missing var_D0
  loc_A27D10: LitI2_Byte 0
  loc_A27D12: FLdZeroAd var_B4
  loc_A27D15: CVarStr var_B0
  loc_A27D18: PopAdLdVar
  loc_A27D19: FLdPr Me
  loc_A27D1C: MemLdI2 global_106
  loc_A27D1F: CI4UI1
  loc_A27D20: FLdPr Me
  loc_A27D23: MemLdI2 global_104
  loc_A27D26: CI4UI1
  loc_A27D27: FLdPr Me
  loc_A27D2A: MemLdStr global_100
  loc_A27D2D: AryLock
  loc_A27D30: Ary1LdPr
  loc_A27D31: MemLdStr global_8
  loc_A27D34: AryLock
  loc_A27D37: Ary1LdPr
  loc_A27D38: MemLdRfVar from_stack_1.global_4
  loc_A27D3B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A27D40: AryUnlock
  loc_A27D43: AryUnlock
  loc_A27D46: FFreeVar var_B0 = ""
  loc_A27D4D: Call Proc_166_21_A33014()
  loc_A27D52: ExitProcHresult
End Function

Private Function Proc_166_21_A33014() 'A33014
  'Data Table: 483860
  loc_A32E28: FLdPr Me
  loc_A32E2B: MemLdI2 global_108
  loc_A32E2E: LitI2_Byte 1
  loc_A32E30: AddI2
  loc_A32E31: FLdPr Me
  loc_A32E34: MemStI2 global_108
  loc_A32E37: LitI2_Byte 0
  loc_A32E39: FLdPr Me
  loc_A32E3C: MemStI2 global_110
  loc_A32E3F: LitI4 1
  loc_A32E44: FLdPr Me
  loc_A32E47: MemLdI2 global_108
  loc_A32E4A: CI4UI1
  loc_A32E4B: FLdPr Me
  loc_A32E4E: MemLdI2 global_106
  loc_A32E51: CI4UI1
  loc_A32E52: FLdPr Me
  loc_A32E55: MemLdI2 global_104
  loc_A32E58: CI4UI1
  loc_A32E59: FLdPr Me
  loc_A32E5C: MemLdStr global_100
  loc_A32E5F: Ary1LdPr
  loc_A32E60: MemLdStr global_8
  loc_A32E63: Ary1LdPr
  loc_A32E64: MemLdRfVar from_stack_1.global_20
  loc_A32E67: RedimPreserve
  loc_A32E71: FLdRfVar var_B0
  loc_A32E74: FLdRfVar var_A0
  loc_A32E77: LitVarStr var_9C, "CodiPart"
  loc_A32E7C: PopAdLdVar
  loc_A32E7D: FLdRfVar var_8C
  loc_A32E80: FLdRfVar var_88
  loc_A32E83: FLdPr Me
  loc_A32E86: MemLdRfVar from_stack_1.global_72
  loc_A32E89: NewIfNullPr clsimputacion
  loc_A32E8C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A32E91: FLdPr var_88
  loc_A32E94:  = Me.Fields
  loc_A32E99: FLdPr var_8C
  loc_A32E9C: from_stack_2 = Me.Item(from_stack_1)
  loc_A32EA1: FLdPr var_A0
  loc_A32EA4:  = Me.Value
  loc_A32EA9: LitI4 2
  loc_A32EAE: FLdRfVar var_B0
  loc_A32EB1: CStrVarTmp
  loc_A32EB2: FStStrNoPop var_B4
  loc_A32EB5: ImpAdCallI2 Left$(, )
  loc_A32EBA: FStStr var_F8
  loc_A32EBD: LitI2_Byte 0
  loc_A32EBF: LitVar_Missing var_F4
  loc_A32EC2: LitI2_Byte 0
  loc_A32EC4: FLdZeroAd var_F8
  loc_A32EC7: FStStrNoPop var_B8
  loc_A32ECA: LitStr "000000"
  loc_A32ECD: ConcatStr
  loc_A32ECE: CVarStr var_D4
  loc_A32ED1: PopAdLdVar
  loc_A32ED2: FLdPr Me
  loc_A32ED5: MemLdI2 global_108
  loc_A32ED8: CI4UI1
  loc_A32ED9: FLdPr Me
  loc_A32EDC: MemLdI2 global_106
  loc_A32EDF: CI4UI1
  loc_A32EE0: FLdPr Me
  loc_A32EE3: MemLdI2 global_104
  loc_A32EE6: CI4UI1
  loc_A32EE7: FLdPr Me
  loc_A32EEA: MemLdStr global_100
  loc_A32EED: AryLock
  loc_A32EF0: Ary1LdPr
  loc_A32EF1: MemLdStr global_8
  loc_A32EF4: AryLock
  loc_A32EF7: Ary1LdPr
  loc_A32EF8: MemLdStr global_20
  loc_A32EFB: AryLock
  loc_A32EFE: Ary1LdPr
  loc_A32EFF: MemLdRfVar from_stack_1.global_0
  loc_A32F02: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A32F07: AryUnlock
  loc_A32F0A: AryUnlock
  loc_A32F0D: AryUnlock
  loc_A32F10: FFreeStr var_B4 = "": var_B8 = ""
  loc_A32F19: FFreeAd var_88 = "": var_8C = ""
  loc_A32F22: FFreeVar var_B0 = "": var_D4 = ""
  loc_A32F2B: FLdRfVar var_B0
  loc_A32F2E: FLdRfVar var_A0
  loc_A32F31: LitVarStr var_9C, "PeriInfo"
  loc_A32F36: PopAdLdVar
  loc_A32F37: FLdRfVar var_8C
  loc_A32F3A: FLdRfVar var_88
  loc_A32F3D: FLdPr Me
  loc_A32F40: MemLdRfVar from_stack_1.global_72
  loc_A32F43: NewIfNullPr clsimputacion
  loc_A32F46: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A32F4B: FLdPr var_88
  loc_A32F4E:  = Me.Fields
  loc_A32F53: FLdPr var_8C
  loc_A32F56: from_stack_2 = Me.Item(from_stack_1)
  loc_A32F5B: FLdPr var_A0
  loc_A32F5E:  = Me.Value
  loc_A32F63: FLdPr Me
  loc_A32F66: MemLdRfVar from_stack_1.global_76
  loc_A32F69: NewIfNullRf
  loc_A32F6D: FLdPr Me
  loc_A32F70: MemLdI2 global_108
  loc_A32F73: CI4UI1
  loc_A32F74: FLdPr Me
  loc_A32F77: MemLdI2 global_106
  loc_A32F7A: CI4UI1
  loc_A32F7B: FLdPr Me
  loc_A32F7E: MemLdI2 global_104
  loc_A32F81: CI4UI1
  loc_A32F82: FLdPr Me
  loc_A32F85: MemLdStr global_100
  loc_A32F88: Ary1LdPr
  loc_A32F89: MemLdStr global_8
  loc_A32F8C: Ary1LdPr
  loc_A32F8D: MemLdStr global_20
  loc_A32F90: Ary1LdPr
  loc_A32F91: MemLdStr global_0
  loc_A32F94: FLdRfVar var_B0
  loc_A32F97: CI2Var
  loc_A32F98: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A32F9D: FFreeAd var_88 = "": var_8C = ""
  loc_A32FA6: FFree1Var var_B0 = ""
  loc_A32FA9: FLdRfVar var_B4
  loc_A32FAC: FLdPr Me
  loc_A32FAF: MemLdRfVar from_stack_1.global_76
  loc_A32FB2: NewIfNullPr tblpartida
  loc_A32FB5: from_stack_1v = tblpartida.DetaPartGet()
  loc_A32FBA: LitI2_Byte 0
  loc_A32FBC: LitVar_Missing var_D4
  loc_A32FBF: LitI2_Byte 0
  loc_A32FC1: FLdZeroAd var_B4
  loc_A32FC4: CVarStr var_B0
  loc_A32FC7: PopAdLdVar
  loc_A32FC8: FLdPr Me
  loc_A32FCB: MemLdI2 global_108
  loc_A32FCE: CI4UI1
  loc_A32FCF: FLdPr Me
  loc_A32FD2: MemLdI2 global_106
  loc_A32FD5: CI4UI1
  loc_A32FD6: FLdPr Me
  loc_A32FD9: MemLdI2 global_104
  loc_A32FDC: CI4UI1
  loc_A32FDD: FLdPr Me
  loc_A32FE0: MemLdStr global_100
  loc_A32FE3: AryLock
  loc_A32FE6: Ary1LdPr
  loc_A32FE7: MemLdStr global_8
  loc_A32FEA: AryLock
  loc_A32FED: Ary1LdPr
  loc_A32FEE: MemLdStr global_20
  loc_A32FF1: AryLock
  loc_A32FF4: Ary1LdPr
  loc_A32FF5: MemLdRfVar from_stack_1.global_4
  loc_A32FF8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A32FFD: AryUnlock
  loc_A33000: AryUnlock
  loc_A33003: AryUnlock
  loc_A33006: FFreeVar var_B0 = ""
  loc_A3300D: Call Proc_166_22_A5B658()
  loc_A33012: ExitProcHresult
End Function

Private Function Proc_166_22_A5B658() 'A5B658
  'Data Table: 483860
  loc_A5B380: FLdPr Me
  loc_A5B383: MemLdI2 global_110
  loc_A5B386: LitI2_Byte 1
  loc_A5B388: AddI2
  loc_A5B389: FLdPr Me
  loc_A5B38C: MemStI2 global_110
  loc_A5B38F: LitI2_Byte 0
  loc_A5B391: FLdPr Me
  loc_A5B394: MemStI2 global_112
  loc_A5B397: LitI4 1
  loc_A5B39C: FLdPr Me
  loc_A5B39F: MemLdI2 global_110
  loc_A5B3A2: CI4UI1
  loc_A5B3A3: FLdPr Me
  loc_A5B3A6: MemLdI2 global_108
  loc_A5B3A9: CI4UI1
  loc_A5B3AA: FLdPr Me
  loc_A5B3AD: MemLdI2 global_106
  loc_A5B3B0: CI4UI1
  loc_A5B3B1: FLdPr Me
  loc_A5B3B4: MemLdI2 global_104
  loc_A5B3B7: CI4UI1
  loc_A5B3B8: FLdPr Me
  loc_A5B3BB: MemLdStr global_100
  loc_A5B3BE: Ary1LdPr
  loc_A5B3BF: MemLdStr global_8
  loc_A5B3C2: Ary1LdPr
  loc_A5B3C3: MemLdStr global_20
  loc_A5B3C6: Ary1LdPr
  loc_A5B3C7: MemLdRfVar from_stack_1.global_20
  loc_A5B3CA: RedimPreserve
  loc_A5B3D4: FLdRfVar var_B0
  loc_A5B3D7: FLdRfVar var_A0
  loc_A5B3DA: LitVarStr var_9C, "CodiPart"
  loc_A5B3DF: PopAdLdVar
  loc_A5B3E0: FLdRfVar var_8C
  loc_A5B3E3: FLdRfVar var_88
  loc_A5B3E6: FLdPr Me
  loc_A5B3E9: MemLdRfVar from_stack_1.global_72
  loc_A5B3EC: NewIfNullPr clsimputacion
  loc_A5B3EF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5B3F4: FLdPr var_88
  loc_A5B3F7:  = Me.Fields
  loc_A5B3FC: FLdPr var_8C
  loc_A5B3FF: from_stack_2 = Me.Item(from_stack_1)
  loc_A5B404: FLdPr var_A0
  loc_A5B407:  = Me.Value
  loc_A5B40C: LitI4 3
  loc_A5B411: FLdRfVar var_B0
  loc_A5B414: CStrVarTmp
  loc_A5B415: FStStrNoPop var_B4
  loc_A5B418: ImpAdCallI2 Left$(, )
  loc_A5B41D: FStStr var_FC
  loc_A5B420: LitI2_Byte 0
  loc_A5B422: LitVar_Missing var_F8
  loc_A5B425: LitI2_Byte 0
  loc_A5B427: FLdZeroAd var_FC
  loc_A5B42A: FStStrNoPop var_B8
  loc_A5B42D: LitStr "00000"
  loc_A5B430: ConcatStr
  loc_A5B431: CVarStr var_D8
  loc_A5B434: PopAdLdVar
  loc_A5B435: FLdPr Me
  loc_A5B438: MemLdI2 global_110
  loc_A5B43B: CI4UI1
  loc_A5B43C: FLdPr Me
  loc_A5B43F: MemLdI2 global_108
  loc_A5B442: CI4UI1
  loc_A5B443: FLdPr Me
  loc_A5B446: MemLdI2 global_106
  loc_A5B449: CI4UI1
  loc_A5B44A: FLdPr Me
  loc_A5B44D: MemLdI2 global_104
  loc_A5B450: CI4UI1
  loc_A5B451: FLdPr Me
  loc_A5B454: MemLdStr global_100
  loc_A5B457: AryLock
  loc_A5B45A: Ary1LdPr
  loc_A5B45B: MemLdStr global_8
  loc_A5B45E: AryLock
  loc_A5B461: Ary1LdPr
  loc_A5B462: MemLdStr global_20
  loc_A5B465: AryLock
  loc_A5B468: Ary1LdPr
  loc_A5B469: MemLdStr global_20
  loc_A5B46C: AryLock
  loc_A5B46F: Ary1LdPr
  loc_A5B470: MemLdRfVar from_stack_1.global_0
  loc_A5B473: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5B478: AryUnlock
  loc_A5B47B: AryUnlock
  loc_A5B47E: AryUnlock
  loc_A5B481: AryUnlock
  loc_A5B484: FFreeStr var_B4 = "": var_B8 = ""
  loc_A5B48D: FFreeAd var_88 = "": var_8C = ""
  loc_A5B496: FFreeVar var_B0 = "": var_D8 = ""
  loc_A5B49F: FLdRfVar var_B0
  loc_A5B4A2: FLdRfVar var_A0
  loc_A5B4A5: LitVarStr var_9C, "PeriInfo"
  loc_A5B4AA: PopAdLdVar
  loc_A5B4AB: FLdRfVar var_8C
  loc_A5B4AE: FLdRfVar var_88
  loc_A5B4B1: FLdPr Me
  loc_A5B4B4: MemLdRfVar from_stack_1.global_72
  loc_A5B4B7: NewIfNullPr clsimputacion
  loc_A5B4BA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5B4BF: FLdPr var_88
  loc_A5B4C2:  = Me.Fields
  loc_A5B4C7: FLdPr var_8C
  loc_A5B4CA: from_stack_2 = Me.Item(from_stack_1)
  loc_A5B4CF: FLdPr var_A0
  loc_A5B4D2:  = Me.Value
  loc_A5B4D7: FLdPr Me
  loc_A5B4DA: MemLdRfVar from_stack_1.global_76
  loc_A5B4DD: NewIfNullRf
  loc_A5B4E1: FLdPr Me
  loc_A5B4E4: MemLdI2 global_110
  loc_A5B4E7: CI4UI1
  loc_A5B4E8: FLdPr Me
  loc_A5B4EB: MemLdI2 global_108
  loc_A5B4EE: CI4UI1
  loc_A5B4EF: FLdPr Me
  loc_A5B4F2: MemLdI2 global_106
  loc_A5B4F5: CI4UI1
  loc_A5B4F6: FLdPr Me
  loc_A5B4F9: MemLdI2 global_104
  loc_A5B4FC: CI4UI1
  loc_A5B4FD: FLdPr Me
  loc_A5B500: MemLdStr global_100
  loc_A5B503: Ary1LdPr
  loc_A5B504: MemLdStr global_8
  loc_A5B507: Ary1LdPr
  loc_A5B508: MemLdStr global_20
  loc_A5B50B: Ary1LdPr
  loc_A5B50C: MemLdStr global_20
  loc_A5B50F: Ary1LdPr
  loc_A5B510: MemLdStr global_0
  loc_A5B513: FLdRfVar var_B0
  loc_A5B516: CI2Var
  loc_A5B517: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A5B51C: FFreeAd var_88 = "": var_8C = ""
  loc_A5B525: FFree1Var var_B0 = ""
  loc_A5B528: FLdRfVar var_B4
  loc_A5B52B: FLdPr Me
  loc_A5B52E: MemLdRfVar from_stack_1.global_76
  loc_A5B531: NewIfNullPr tblpartida
  loc_A5B534: from_stack_1v = tblpartida.DetaPartGet()
  loc_A5B539: LitI2_Byte 0
  loc_A5B53B: LitVar_Missing var_D8
  loc_A5B53E: LitI2_Byte 0
  loc_A5B540: FLdZeroAd var_B4
  loc_A5B543: CVarStr var_B0
  loc_A5B546: PopAdLdVar
  loc_A5B547: FLdPr Me
  loc_A5B54A: MemLdI2 global_110
  loc_A5B54D: CI4UI1
  loc_A5B54E: FLdPr Me
  loc_A5B551: MemLdI2 global_108
  loc_A5B554: CI4UI1
  loc_A5B555: FLdPr Me
  loc_A5B558: MemLdI2 global_106
  loc_A5B55B: CI4UI1
  loc_A5B55C: FLdPr Me
  loc_A5B55F: MemLdI2 global_104
  loc_A5B562: CI4UI1
  loc_A5B563: FLdPr Me
  loc_A5B566: MemLdStr global_100
  loc_A5B569: AryLock
  loc_A5B56C: Ary1LdPr
  loc_A5B56D: MemLdStr global_8
  loc_A5B570: AryLock
  loc_A5B573: Ary1LdPr
  loc_A5B574: MemLdStr global_20
  loc_A5B577: AryLock
  loc_A5B57A: Ary1LdPr
  loc_A5B57B: MemLdStr global_20
  loc_A5B57E: AryLock
  loc_A5B581: Ary1LdPr
  loc_A5B582: MemLdRfVar from_stack_1.global_4
  loc_A5B585: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5B58A: AryUnlock
  loc_A5B58D: AryUnlock
  loc_A5B590: AryUnlock
  loc_A5B593: AryUnlock
  loc_A5B596: FFreeVar var_B0 = ""
  loc_A5B59D: FLdPr Me
  loc_A5B5A0: VCallAd Control_ID_optSintetico
  loc_A5B5A3: CVarAd
  loc_A5B5A7: CBoolVarNull
  loc_A5B5A9: FFree1Var var_B0 = ""
  loc_A5B5AC: BranchF loc_A5B650
  loc_A5B5AF: FLdPr Me
  loc_A5B5B2: MemLdI2 global_108
  loc_A5B5B5: CI4UI1
  loc_A5B5B6: FLdPr Me
  loc_A5B5B9: MemLdI2 global_106
  loc_A5B5BC: CI4UI1
  loc_A5B5BD: FLdPr Me
  loc_A5B5C0: MemLdI2 global_104
  loc_A5B5C3: CI4UI1
  loc_A5B5C4: FLdPr Me
  loc_A5B5C7: MemLdStr global_100
  loc_A5B5CA: AryLock
  loc_A5B5CD: Ary1LdPr
  loc_A5B5CE: MemLdStr global_8
  loc_A5B5D1: AryLock
  loc_A5B5D4: Ary1LdPr
  loc_A5B5D5: MemLdStr global_20
  loc_A5B5D8: AryLock
  loc_A5B5DB: Ary1LdPr
  loc_A5B5DC: MemLdRfVar from_stack_1.global_0
  loc_A5B5DF: FLdPr Me
  loc_A5B5E2: MemLdI2 global_110
  loc_A5B5E5: CI4UI1
  loc_A5B5E6: FLdPr Me
  loc_A5B5E9: MemLdI2 global_108
  loc_A5B5EC: CI4UI1
  loc_A5B5ED: FLdPr Me
  loc_A5B5F0: MemLdI2 global_106
  loc_A5B5F3: CI4UI1
  loc_A5B5F4: FLdPr Me
  loc_A5B5F7: MemLdI2 global_104
  loc_A5B5FA: CI4UI1
  loc_A5B5FB: FLdPr Me
  loc_A5B5FE: MemLdStr global_100
  loc_A5B601: AryLock
  loc_A5B604: Ary1LdPr
  loc_A5B605: MemLdStr global_8
  loc_A5B608: AryLock
  loc_A5B60B: Ary1LdPr
  loc_A5B60C: MemLdStr global_20
  loc_A5B60F: AryLock
  loc_A5B612: Ary1LdPr
  loc_A5B613: MemLdStr global_20
  loc_A5B616: AryLock
  loc_A5B619: Ary1LdPr
  loc_A5B61A: MemLdRfVar from_stack_1.global_0
  loc_A5B61D: Call Proc_166_24_9DF8A4()
  loc_A5B622: AryUnlock
  loc_A5B625: AryUnlock
  loc_A5B628: AryUnlock
  loc_A5B62B: AryUnlock
  loc_A5B62E: AryUnlock
  loc_A5B631: AryUnlock
  loc_A5B634: AryUnlock
  loc_A5B637: LitI4 1
  loc_A5B63C: PopTmpLdAdStr var_10C
  loc_A5B63F: FLdPr Me
  loc_A5B642: MemLdRfVar from_stack_1.global_72
  loc_A5B645: NewIfNullPr clsimputacion
  loc_A5B648: Call clsimputacion.Mover(from_stack_1v)
  loc_A5B64D: Branch loc_A5B655
  loc_A5B650: Call Proc_166_23_A49B40()
  loc_A5B655: ExitProcHresult
  loc_A5B656: PopAdLdVar
End Function

Private Function Proc_166_23_A49B40() 'A49B40
  'Data Table: 483860
  loc_A498D4: FLdPr Me
  loc_A498D7: MemLdI2 global_112
  loc_A498DA: LitI2_Byte 1
  loc_A498DC: AddI2
  loc_A498DD: FLdPr Me
  loc_A498E0: MemStI2 global_112
  loc_A498E3: LitI4 1
  loc_A498E8: FLdPr Me
  loc_A498EB: MemLdI2 global_112
  loc_A498EE: CI4UI1
  loc_A498EF: FLdPr Me
  loc_A498F2: MemLdI2 global_110
  loc_A498F5: CI4UI1
  loc_A498F6: FLdPr Me
  loc_A498F9: MemLdI2 global_108
  loc_A498FC: CI4UI1
  loc_A498FD: FLdPr Me
  loc_A49900: MemLdI2 global_106
  loc_A49903: CI4UI1
  loc_A49904: FLdPr Me
  loc_A49907: MemLdI2 global_104
  loc_A4990A: CI4UI1
  loc_A4990B: FLdPr Me
  loc_A4990E: MemLdStr global_100
  loc_A49911: Ary1LdPr
  loc_A49912: MemLdStr global_8
  loc_A49915: Ary1LdPr
  loc_A49916: MemLdStr global_20
  loc_A49919: Ary1LdPr
  loc_A4991A: MemLdStr global_20
  loc_A4991D: Ary1LdPr
  loc_A4991E: MemLdRfVar from_stack_1.global_20
  loc_A49921: RedimPreserve
  loc_A4992B: FLdRfVar var_A0
  loc_A4992E: LitVarStr var_9C, "CodiPart"
  loc_A49933: PopAdLdVar
  loc_A49934: FLdRfVar var_8C
  loc_A49937: FLdRfVar var_88
  loc_A4993A: FLdPr Me
  loc_A4993D: MemLdRfVar from_stack_1.global_72
  loc_A49940: NewIfNullPr clsimputacion
  loc_A49943: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A49948: FLdPr var_88
  loc_A4994B:  = Me.Fields
  loc_A49950: FLdPr var_8C
  loc_A49953: from_stack_2 = Me.Item(from_stack_1)
  loc_A49958: LitI2_Byte 0
  loc_A4995A: LitVar_Missing var_E4
  loc_A4995D: LitI2_Byte 0
  loc_A4995F: FLdZeroAd var_A0
  loc_A49962: CVarAd
  loc_A49966: PopAdLdVar
  loc_A49967: FLdPr Me
  loc_A4996A: MemLdI2 global_112
  loc_A4996D: CI4UI1
  loc_A4996E: FLdPr Me
  loc_A49971: MemLdI2 global_110
  loc_A49974: CI4UI1
  loc_A49975: FLdPr Me
  loc_A49978: MemLdI2 global_108
  loc_A4997B: CI4UI1
  loc_A4997C: FLdPr Me
  loc_A4997F: MemLdI2 global_106
  loc_A49982: CI4UI1
  loc_A49983: FLdPr Me
  loc_A49986: MemLdI2 global_104
  loc_A49989: CI4UI1
  loc_A4998A: FLdPr Me
  loc_A4998D: MemLdStr global_100
  loc_A49990: AryLock
  loc_A49993: Ary1LdPr
  loc_A49994: MemLdStr global_8
  loc_A49997: AryLock
  loc_A4999A: Ary1LdPr
  loc_A4999B: MemLdStr global_20
  loc_A4999E: AryLock
  loc_A499A1: Ary1LdPr
  loc_A499A2: MemLdStr global_20
  loc_A499A5: AryLock
  loc_A499A8: Ary1LdPr
  loc_A499A9: MemLdStr global_20
  loc_A499AC: AryLock
  loc_A499AF: Ary1LdPr
  loc_A499B0: MemLdRfVar from_stack_1.global_0
  loc_A499B3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A499B8: AryUnlock
  loc_A499BB: AryUnlock
  loc_A499BE: AryUnlock
  loc_A499C1: AryUnlock
  loc_A499C4: AryUnlock
  loc_A499C7: FFreeAd var_88 = ""
  loc_A499CE: FFreeVar var_C4 = ""
  loc_A499D5: FLdRfVar var_A0
  loc_A499D8: LitVarStr var_9C, "DetaPart"
  loc_A499DD: PopAdLdVar
  loc_A499DE: FLdRfVar var_8C
  loc_A499E1: FLdRfVar var_88
  loc_A499E4: FLdPr Me
  loc_A499E7: MemLdRfVar from_stack_1.global_72
  loc_A499EA: NewIfNullPr clsimputacion
  loc_A499ED: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A499F2: FLdPr var_88
  loc_A499F5:  = Me.Fields
  loc_A499FA: FLdPr var_8C
  loc_A499FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A49A02: LitI2_Byte 0
  loc_A49A04: LitVar_Missing var_E4
  loc_A49A07: LitI2_Byte 0
  loc_A49A09: FLdZeroAd var_A0
  loc_A49A0C: CVarAd
  loc_A49A10: PopAdLdVar
  loc_A49A11: FLdPr Me
  loc_A49A14: MemLdI2 global_112
  loc_A49A17: CI4UI1
  loc_A49A18: FLdPr Me
  loc_A49A1B: MemLdI2 global_110
  loc_A49A1E: CI4UI1
  loc_A49A1F: FLdPr Me
  loc_A49A22: MemLdI2 global_108
  loc_A49A25: CI4UI1
  loc_A49A26: FLdPr Me
  loc_A49A29: MemLdI2 global_106
  loc_A49A2C: CI4UI1
  loc_A49A2D: FLdPr Me
  loc_A49A30: MemLdI2 global_104
  loc_A49A33: CI4UI1
  loc_A49A34: FLdPr Me
  loc_A49A37: MemLdStr global_100
  loc_A49A3A: AryLock
  loc_A49A3D: Ary1LdPr
  loc_A49A3E: MemLdStr global_8
  loc_A49A41: AryLock
  loc_A49A44: Ary1LdPr
  loc_A49A45: MemLdStr global_20
  loc_A49A48: AryLock
  loc_A49A4B: Ary1LdPr
  loc_A49A4C: MemLdStr global_20
  loc_A49A4F: AryLock
  loc_A49A52: Ary1LdPr
  loc_A49A53: MemLdStr global_20
  loc_A49A56: AryLock
  loc_A49A59: Ary1LdPr
  loc_A49A5A: MemLdRfVar from_stack_1.global_4
  loc_A49A5D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A49A62: AryUnlock
  loc_A49A65: AryUnlock
  loc_A49A68: AryUnlock
  loc_A49A6B: AryUnlock
  loc_A49A6E: AryUnlock
  loc_A49A71: FFreeAd var_88 = ""
  loc_A49A78: FFreeVar var_C4 = ""
  loc_A49A7F: FLdPr Me
  loc_A49A82: MemLdI2 global_110
  loc_A49A85: CI4UI1
  loc_A49A86: FLdPr Me
  loc_A49A89: MemLdI2 global_108
  loc_A49A8C: CI4UI1
  loc_A49A8D: FLdPr Me
  loc_A49A90: MemLdI2 global_106
  loc_A49A93: CI4UI1
  loc_A49A94: FLdPr Me
  loc_A49A97: MemLdI2 global_104
  loc_A49A9A: CI4UI1
  loc_A49A9B: FLdPr Me
  loc_A49A9E: MemLdStr global_100
  loc_A49AA1: AryLock
  loc_A49AA4: Ary1LdPr
  loc_A49AA5: MemLdStr global_8
  loc_A49AA8: AryLock
  loc_A49AAB: Ary1LdPr
  loc_A49AAC: MemLdStr global_20
  loc_A49AAF: AryLock
  loc_A49AB2: Ary1LdPr
  loc_A49AB3: MemLdStr global_20
  loc_A49AB6: AryLock
  loc_A49AB9: Ary1LdPr
  loc_A49ABA: MemLdRfVar from_stack_1.global_0
  loc_A49ABD: FLdPr Me
  loc_A49AC0: MemLdI2 global_112
  loc_A49AC3: CI4UI1
  loc_A49AC4: FLdPr Me
  loc_A49AC7: MemLdI2 global_110
  loc_A49ACA: CI4UI1
  loc_A49ACB: FLdPr Me
  loc_A49ACE: MemLdI2 global_108
  loc_A49AD1: CI4UI1
  loc_A49AD2: FLdPr Me
  loc_A49AD5: MemLdI2 global_106
  loc_A49AD8: CI4UI1
  loc_A49AD9: FLdPr Me
  loc_A49ADC: MemLdI2 global_104
  loc_A49ADF: CI4UI1
  loc_A49AE0: FLdPr Me
  loc_A49AE3: MemLdStr global_100
  loc_A49AE6: AryLock
  loc_A49AE9: Ary1LdPr
  loc_A49AEA: MemLdStr global_8
  loc_A49AED: AryLock
  loc_A49AF0: Ary1LdPr
  loc_A49AF1: MemLdStr global_20
  loc_A49AF4: AryLock
  loc_A49AF7: Ary1LdPr
  loc_A49AF8: MemLdStr global_20
  loc_A49AFB: AryLock
  loc_A49AFE: Ary1LdPr
  loc_A49AFF: MemLdStr global_20
  loc_A49B02: AryLock
  loc_A49B05: Ary1LdRf
  loc_A49B06: Call Proc_166_24_9DF8A4()
  loc_A49B0B: AryUnlock
  loc_A49B0E: AryUnlock
  loc_A49B11: AryUnlock
  loc_A49B14: AryUnlock
  loc_A49B17: AryUnlock
  loc_A49B1A: AryUnlock
  loc_A49B1D: AryUnlock
  loc_A49B20: AryUnlock
  loc_A49B23: AryUnlock
  loc_A49B26: LitI4 1
  loc_A49B2B: PopTmpLdAdStr var_F8
  loc_A49B2E: FLdPr Me
  loc_A49B31: MemLdRfVar from_stack_1.global_72
  loc_A49B34: NewIfNullPr clsimputacion
  loc_A49B37: Call clsimputacion.Mover(from_stack_1v)
  loc_A49B3C: ExitProcHresult
  loc_A49B3D: ImpAdLdCy MemVar_4AFC88
End Function

Private Function Proc_166_24_9DF8A4() '9DF8A4
  'Data Table: 483860
  loc_9DF79C: FLdPr Me
  loc_9DF79F: MemLdRfVar from_stack_1.global_72
  loc_9DF7A2: NewIfNullAd
  loc_9DF7A5: FStAd var_88 
  loc_9DF7A9: FLdRfVar var_A4
  loc_9DF7AC: LitVarStr var_A0, "DFini"
  loc_9DF7B1: PopAdLdVar
  loc_9DF7B2: FLdRfVar var_90
  loc_9DF7B5: FLdRfVar var_8C
  loc_9DF7B8: FLdPr var_88
  loc_9DF7BB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9DF7C0: FLdPr var_8C
  loc_9DF7C3:  = Me.Fields
  loc_9DF7C8: FLdPr var_90
  loc_9DF7CB: from_stack_2 = Me.Item(from_stack_1)
  loc_9DF7D0: LitI2_Byte 0
  loc_9DF7D2: FMemLdRf Proc_263_0_9C6454(, )
  loc_9DF7D7: CVarRef
  loc_9DF7DC: LitI2_Byte &HFF
  loc_9DF7DE: FLdZeroAd var_A4
  loc_9DF7E1: CVarAd
  loc_9DF7E5: PopAdLdVar
  loc_9DF7E6: FMemLdRf unk_48386D
  loc_9DF7EB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9DF7F0: FFreeAd var_8C = ""
  loc_9DF7F7: FFree1Var var_B4 = ""
  loc_9DF7FA: FLdRfVar var_A4
  loc_9DF7FD: LitVarStr var_A0, "DFTrim"
  loc_9DF802: PopAdLdVar
  loc_9DF803: FLdRfVar var_90
  loc_9DF806: FLdRfVar var_8C
  loc_9DF809: FLdPr var_88
  loc_9DF80C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9DF811: FLdPr var_8C
  loc_9DF814:  = Me.Fields
  loc_9DF819: FLdPr var_90
  loc_9DF81C: from_stack_2 = Me.Item(from_stack_1)
  loc_9DF821: LitI2_Byte 0
  loc_9DF823: FMemLdRf Proc_263_0_9C6454(, , )
  loc_9DF828: CVarRef
  loc_9DF82D: LitI2_Byte &HFF
  loc_9DF82F: FLdZeroAd var_A4
  loc_9DF832: CVarAd
  loc_9DF836: PopAdLdVar
  loc_9DF837: FMemLdRf unk_48386D
  loc_9DF83C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9DF841: FFreeAd var_8C = ""
  loc_9DF848: FFree1Var var_B4 = ""
  loc_9DF84B: FLdRfVar var_A4
  loc_9DF84E: LitVarStr var_A0, "DFfin"
  loc_9DF853: PopAdLdVar
  loc_9DF854: FLdRfVar var_90
  loc_9DF857: FLdRfVar var_8C
  loc_9DF85A: FLdPr var_88
  loc_9DF85D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9DF862: FLdPr var_8C
  loc_9DF865:  = Me.Fields
  loc_9DF86A: FLdPr var_90
  loc_9DF86D: from_stack_2 = Me.Item(from_stack_1)
  loc_9DF872: LitI2_Byte 0
  loc_9DF874: FMemLdRf Proc_263_0_9C6454(, , , )
  loc_9DF879: CVarRef
  loc_9DF87E: LitI2_Byte &HFF
  loc_9DF880: FLdZeroAd var_A4
  loc_9DF883: CVarAd
  loc_9DF887: PopAdLdVar
  loc_9DF888: FMemLdRf unk_48386D
  loc_9DF88D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9DF892: FFreeAd var_8C = ""
  loc_9DF899: FFree1Var var_B4 = ""
  loc_9DF89C: LitNothing
  loc_9DF89E: FStAd var_88 
  loc_9DF8A2: ExitProcHresult
End Function

Private Function Proc_166_25_99510C(arg_C) '99510C
  'Data Table: 483860
  loc_9950AC: LitI2_Byte 0
  loc_9950AE: FMemLdRf Proc_263_0_9C6454(, )
  loc_9950B3: CVarRef
  loc_9950B8: LitI2_Byte &HFF
  loc_9950BA: FMemLdR4 arg_C(8)
  loc_9950BF: CVarStr var_98
  loc_9950C2: PopAdLdVar
  loc_9950C3: FLdRfVar var_88
  loc_9950C6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9950CB: LitI2_Byte 0
  loc_9950CD: FMemLdRf Proc_263_0_9C6454(, , )
  loc_9950D2: CVarRef
  loc_9950D7: LitI2_Byte &HFF
  loc_9950D9: FMemLdR4 arg_C(12)
  loc_9950DE: CVarStr var_98
  loc_9950E1: PopAdLdVar
  loc_9950E2: FLdRfVar var_88
  loc_9950E5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9950EA: LitI2_Byte 0
  loc_9950EC: FMemLdRf Proc_263_0_9C6454(, , , )
  loc_9950F1: CVarRef
  loc_9950F6: LitI2_Byte &HFF
  loc_9950F8: FMemLdR4 arg_C(16)
  loc_9950FD: CVarStr var_98
  loc_995100: PopAdLdVar
  loc_995101: FLdRfVar var_88
  loc_995104: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_995109: ExitProcHresult
  loc_99510A: HardType
End Function

Private Function Proc_166_26_A80F20() 'A80F20
  'Data Table: 483860
  loc_A80B40: LitVarStr var_94, "<html>"
  loc_A80B45: PopAdLdVar
  loc_A80B46: FLdPr Me
  loc_A80B49: MemLdRfVar from_stack_1.htmFile
  loc_A80B4C: LdPrVar
  loc_A80B4E: LateMemCall
  loc_A80B54: LitVarStr var_94, "<head>"
  loc_A80B59: PopAdLdVar
  loc_A80B5A: FLdPr Me
  loc_A80B5D: MemLdRfVar from_stack_1.htmFile
  loc_A80B60: LdPrVar
  loc_A80B62: LateMemCall
  loc_A80B68: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A80B6D: PopAdLdVar
  loc_A80B6E: FLdPr Me
  loc_A80B71: MemLdRfVar from_stack_1.htmFile
  loc_A80B74: LdPrVar
  loc_A80B76: LateMemCall
  loc_A80B7C: LitStr "<title>"
  loc_A80B7F: FLdRfVar var_A8
  loc_A80B82: FLdPr Me
  loc_A80B85:  = Me.Caption
  loc_A80B8A: ILdRf var_A8
  loc_A80B8D: ConcatStr
  loc_A80B8E: FStStrNoPop var_AC
  loc_A80B91: LitStr " - "
  loc_A80B94: ConcatStr
  loc_A80B95: FStStrNoPop var_B0
  loc_A80B98: LitStr "Municipalidad de Guaymallén"
  loc_A80B9B: ConcatStr
  loc_A80B9C: FStStrNoPop var_B4
  loc_A80B9F: LitStr "</title>"
  loc_A80BA2: ConcatStr
  loc_A80BA3: CVarStr var_C4
  loc_A80BA6: PopAdLdVar
  loc_A80BA7: FLdPr Me
  loc_A80BAA: MemLdRfVar from_stack_1.htmFile
  loc_A80BAD: LdPrVar
  loc_A80BAF: LateMemCall
  loc_A80BB5: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A80BC0: FFree1Var var_C4 = ""
  loc_A80BC3: LitStr vbNullString
  loc_A80BC6: ILdRf Me
  loc_A80BC9: CastAd
  loc_A80BCC: FStAdFunc var_C8
  loc_A80BCF: FLdRfVar var_C8
  loc_A80BD2: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A80BD7: FFree1Ad var_C8
  loc_A80BDA: LitI4 0
  loc_A80BDF: FStStrCopy var_AC
  loc_A80BE2: FLdRfVar var_AC
  loc_A80BE5: LitI4 0
  loc_A80BEA: FStStrCopy var_A8
  loc_A80BED: FLdRfVar var_A8
  loc_A80BF0: LitI2_Byte &HFF
  loc_A80BF2: PopTmpLdAd2 var_CA
  loc_A80BF5: FLdPr Me
  loc_A80BF8: MemLdRfVar from_stack_1.htmFile
  loc_A80BFB: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A80C00: FFreeStr var_A8 = ""
  loc_A80C07: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A80C0C: PopAdLdVar
  loc_A80C0D: FLdPr Me
  loc_A80C10: MemLdRfVar from_stack_1.htmFile
  loc_A80C13: LdPrVar
  loc_A80C15: LateMemCall
  loc_A80C1B: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A80C20: PopAdLdVar
  loc_A80C21: FLdPr Me
  loc_A80C24: MemLdRfVar from_stack_1.htmFile
  loc_A80C27: LdPrVar
  loc_A80C29: LateMemCall
  loc_A80C2F: LitVarStr var_94, "    <th align=""center"" valign=""center""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>ACUERDO N&ordm; 3949 <br>"
  loc_A80C34: PopAdLdVar
  loc_A80C35: FLdPr Me
  loc_A80C38: MemLdRfVar from_stack_1.htmFile
  loc_A80C3B: LdPrVar
  loc_A80C3D: LateMemCall
  loc_A80C43: LitVarStr var_94, "      <span class=""Titulo2"">ANEXO VI: evoluci&oacute;n de la deuda flotante acumulada al fin del trimestre</span></p>"
  loc_A80C48: PopAdLdVar
  loc_A80C49: FLdPr Me
  loc_A80C4C: MemLdRfVar from_stack_1.htmFile
  loc_A80C4F: LdPrVar
  loc_A80C51: LateMemCall
  loc_A80C57: LitVarStr var_94, "    </th>"
  loc_A80C5C: PopAdLdVar
  loc_A80C5D: FLdPr Me
  loc_A80C60: MemLdRfVar from_stack_1.htmFile
  loc_A80C63: LdPrVar
  loc_A80C65: LateMemCall
  loc_A80C6B: LitVarStr var_94, "  </tr>"
  loc_A80C70: PopAdLdVar
  loc_A80C71: FLdPr Me
  loc_A80C74: MemLdRfVar from_stack_1.htmFile
  loc_A80C77: LdPrVar
  loc_A80C79: LateMemCall
  loc_A80C7F: LitVarStr var_94, "  <tr>"
  loc_A80C84: PopAdLdVar
  loc_A80C85: FLdPr Me
  loc_A80C88: MemLdRfVar from_stack_1.htmFile
  loc_A80C8B: LdPrVar
  loc_A80C8D: LateMemCall
  loc_A80C93: LitVarStr var_94, "    <th>"
  loc_A80C98: PopAdLdVar
  loc_A80C99: FLdPr Me
  loc_A80C9C: MemLdRfVar from_stack_1.htmFile
  loc_A80C9F: LdPrVar
  loc_A80CA1: LateMemCall
  loc_A80CA7: LitVarStr var_94, "      <p align=""left"" class=""Titulo2"">"
  loc_A80CAC: PopAdLdVar
  loc_A80CAD: FLdPr Me
  loc_A80CB0: MemLdRfVar from_stack_1.htmFile
  loc_A80CB3: LdPrVar
  loc_A80CB5: LateMemCall
  loc_A80CBB: LitStr "    Repartici&oacute;n/Organismo: "
  loc_A80CBE: LitStr "Municipalidad de Guaymallén"
  loc_A80CC1: ConcatStr
  loc_A80CC2: FStStrNoPop var_A8
  loc_A80CC5: LitStr "<br>"
  loc_A80CC8: ConcatStr
  loc_A80CC9: CVarStr var_C4
  loc_A80CCC: PopAdLdVar
  loc_A80CCD: FLdPr Me
  loc_A80CD0: MemLdRfVar from_stack_1.htmFile
  loc_A80CD3: LdPrVar
  loc_A80CD5: LateMemCall
  loc_A80CDB: FFree1Str var_A8
  loc_A80CDE: FFree1Var var_C4 = ""
  loc_A80CE1: LitStr "    Nomenclador: "
  loc_A80CE4: LitStr "060204"
  loc_A80CE7: ConcatStr
  loc_A80CE8: FStStrNoPop var_A8
  loc_A80CEB: LitStr "<br>"
  loc_A80CEE: ConcatStr
  loc_A80CEF: CVarStr var_C4
  loc_A80CF2: PopAdLdVar
  loc_A80CF3: FLdPr Me
  loc_A80CF6: MemLdRfVar from_stack_1.htmFile
  loc_A80CF9: LdPrVar
  loc_A80CFB: LateMemCall
  loc_A80D01: FFree1Str var_A8
  loc_A80D04: FFree1Var var_C4 = ""
  loc_A80D07: LitStr "    Ejercicio: "
  loc_A80D0A: FLdRfVar var_A8
  loc_A80D0D: FLdPr Me
  loc_A80D10: VCallAd Control_ID_cboPeriodo
  loc_A80D13: FStAdFunc var_C8
  loc_A80D16: FLdPr var_C8
  loc_A80D19:  = Me.Text
  loc_A80D1E: ILdRf var_A8
  loc_A80D21: ConcatStr
  loc_A80D22: FStStrNoPop var_AC
  loc_A80D25: LitStr " <br>"
  loc_A80D28: ConcatStr
  loc_A80D29: CVarStr var_C4
  loc_A80D2C: PopAdLdVar
  loc_A80D2D: FLdPr Me
  loc_A80D30: MemLdRfVar from_stack_1.htmFile
  loc_A80D33: LdPrVar
  loc_A80D35: LateMemCall
  loc_A80D3B: FFreeStr var_A8 = ""
  loc_A80D42: FFree1Ad var_C8
  loc_A80D45: FFree1Var var_C4 = ""
  loc_A80D48: FLdRfVar var_CA
  loc_A80D4B: FLdPr Me
  loc_A80D4E: VCallAd Control_ID_cboTrimestre
  loc_A80D51: FStAdFunc var_D0
  loc_A80D54: FLdPr var_D0
  loc_A80D57:  = Me.ListIndex
  loc_A80D5C: FLdRfVar var_D8
  loc_A80D5F: FLdI2 var_CA
  loc_A80D62: FLdPr Me
  loc_A80D65: VCallAd Control_ID_cboTrimestre
  loc_A80D68: FStAdFunc var_D4
  loc_A80D6B: FLdPr var_D4
  loc_A80D6E:  = Me.ItemData
  loc_A80D73: FLdRfVar var_AC
  loc_A80D76: FLdPr Me
  loc_A80D79: VCallAd Control_ID_cboPeriodo
  loc_A80D7C: FStAdFunc var_DC
  loc_A80D7F: FLdPr var_DC
  loc_A80D82:  = Me.Text
  loc_A80D87: ILdRf var_AC
  loc_A80D8A: CI2Str
  loc_A80D8C: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A80D91: CVarStr var_C4
  loc_A80D94: FLdRfVar var_EC
  loc_A80D97: ImpAdCallFPR4  = Month()
  loc_A80D9C: LitStr "    Trimestre: "
  loc_A80D9F: FLdRfVar var_A8
  loc_A80DA2: FLdPr Me
  loc_A80DA5: VCallAd Control_ID_cboTrimestre
  loc_A80DA8: FStAdFunc var_C8
  loc_A80DAB: FLdPr var_C8
  loc_A80DAE:  = Me.Text
  loc_A80DB3: ILdRf var_A8
  loc_A80DB6: ConcatStr
  loc_A80DB7: CVarStr var_15C
  loc_A80DBA: LitVarStr var_12C, vbNullString
  loc_A80DBF: FStVarCopyObj var_13C
  loc_A80DC2: FLdRfVar var_13C
  loc_A80DC5: LitVarStr var_A4, " (PROVISORIO)"
  loc_A80DCA: FStVarCopyObj var_11C
  loc_A80DCD: FLdRfVar var_11C
  loc_A80DD0: ILdRf var_D8
  loc_A80DD3: LitI4 3
  loc_A80DD8: MulI4
  loc_A80DD9: CVarI4
  loc_A80DDD: HardType
  loc_A80DDE: FLdRfVar var_EC
  loc_A80DE1: GtVar var_FC
  loc_A80DE5: FStVar var_10C
  loc_A80DE9: FLdRfVar var_10C
  loc_A80DEC: FLdRfVar var_14C
  loc_A80DEF: ImpAdCallFPR4  = IIf(, , )
  loc_A80DF4: FLdRfVar var_14C
  loc_A80DF7: ConcatVar var_16C
  loc_A80DFB: PopAdLdVar
  loc_A80DFC: FLdPr Me
  loc_A80DFF: MemLdRfVar from_stack_1.htmFile
  loc_A80E02: LdPrVar
  loc_A80E04: LateMemCall
  loc_A80E0A: FFreeStr var_A8 = ""
  loc_A80E11: FFreeAd var_C8 = "": var_D0 = "": var_D4 = ""
  loc_A80E1C: FFreeVar var_C4 = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_14C = ""
  loc_A80E2F: LitVarStr var_94, "    </p></th>"
  loc_A80E34: PopAdLdVar
  loc_A80E35: FLdPr Me
  loc_A80E38: MemLdRfVar from_stack_1.htmFile
  loc_A80E3B: LdPrVar
  loc_A80E3D: LateMemCall
  loc_A80E43: LitVarStr var_94, "  </tr>"
  loc_A80E48: PopAdLdVar
  loc_A80E49: FLdPr Me
  loc_A80E4C: MemLdRfVar from_stack_1.htmFile
  loc_A80E4F: LdPrVar
  loc_A80E51: LateMemCall
  loc_A80E57: LitVarStr var_94, "</table>"
  loc_A80E5C: PopAdLdVar
  loc_A80E5D: FLdPr Me
  loc_A80E60: MemLdRfVar from_stack_1.htmFile
  loc_A80E63: LdPrVar
  loc_A80E65: LateMemCall
  loc_A80E6B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A80E70: PopAdLdVar
  loc_A80E71: FLdPr Me
  loc_A80E74: MemLdRfVar from_stack_1.htmFile
  loc_A80E77: LdPrVar
  loc_A80E79: LateMemCall
  loc_A80E7F: LitVarStr var_94, " <THEAD>"
  loc_A80E84: PopAdLdVar
  loc_A80E85: FLdPr Me
  loc_A80E88: MemLdRfVar from_stack_1.htmFile
  loc_A80E8B: LdPrVar
  loc_A80E8D: LateMemCall
  loc_A80E93: LitVarStr var_94, " <tr class=""Encabezado"" align=""center"">"
  loc_A80E98: PopAdLdVar
  loc_A80E99: FLdPr Me
  loc_A80E9C: MemLdRfVar from_stack_1.htmFile
  loc_A80E9F: LdPrVar
  loc_A80EA1: LateMemCall
  loc_A80EA7: LitVarStr var_94, "     <th>Partida</th>"
  loc_A80EAC: PopAdLdVar
  loc_A80EAD: FLdPr Me
  loc_A80EB0: MemLdRfVar from_stack_1.htmFile
  loc_A80EB3: LdPrVar
  loc_A80EB5: LateMemCall
  loc_A80EBB: LitVarStr var_94, "     <th>Stock de Deuda Flotante al Inicio del Trimestre</th>"
  loc_A80EC0: PopAdLdVar
  loc_A80EC1: FLdPr Me
  loc_A80EC4: MemLdRfVar from_stack_1.htmFile
  loc_A80EC7: LdPrVar
  loc_A80EC9: LateMemCall
  loc_A80ECF: LitVarStr var_94, "     <th>Variación Deuda Flotante contraida en el Trimestre</th>"
  loc_A80ED4: PopAdLdVar
  loc_A80ED5: FLdPr Me
  loc_A80ED8: MemLdRfVar from_stack_1.htmFile
  loc_A80EDB: LdPrVar
  loc_A80EDD: LateMemCall
  loc_A80EE3: LitVarStr var_94, "     <th>Stock de Deuda Flotante al Final del Trimestre</th>"
  loc_A80EE8: PopAdLdVar
  loc_A80EE9: FLdPr Me
  loc_A80EEC: MemLdRfVar from_stack_1.htmFile
  loc_A80EEF: LdPrVar
  loc_A80EF1: LateMemCall
  loc_A80EF7: LitVarStr var_94, "  </tr>"
  loc_A80EFC: PopAdLdVar
  loc_A80EFD: FLdPr Me
  loc_A80F00: MemLdRfVar from_stack_1.htmFile
  loc_A80F03: LdPrVar
  loc_A80F05: LateMemCall
  loc_A80F0B: LitVarStr var_94, "  </THEAD>"
  loc_A80F10: PopAdLdVar
  loc_A80F11: FLdPr Me
  loc_A80F14: MemLdRfVar from_stack_1.htmFile
  loc_A80F17: LdPrVar
  loc_A80F19: LateMemCall
  loc_A80F1F: ExitProcHresult
End Function

Private Function Proc_166_27_9ED4B8() '9ED4B8
  'Data Table: 483860
  loc_9ED374: LitVarStr var_94, "</table>"
  loc_9ED379: PopAdLdVar
  loc_9ED37A: FLdPr Me
  loc_9ED37D: MemLdRfVar from_stack_1.htmFile
  loc_9ED380: LdPrVar
  loc_9ED382: LateMemCall
  loc_9ED388: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9ED38D: PopAdLdVar
  loc_9ED38E: FLdPr Me
  loc_9ED391: MemLdRfVar from_stack_1.htmFile
  loc_9ED394: LdPrVar
  loc_9ED396: LateMemCall
  loc_9ED39C: LitVarStr var_94, "  <tr>"
  loc_9ED3A1: PopAdLdVar
  loc_9ED3A2: FLdPr Me
  loc_9ED3A5: MemLdRfVar from_stack_1.htmFile
  loc_9ED3A8: LdPrVar
  loc_9ED3AA: LateMemCall
  loc_9ED3B0: LitVarStr var_94, "    <th scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9ED3B5: PopAdLdVar
  loc_9ED3B6: FLdPr Me
  loc_9ED3B9: MemLdRfVar from_stack_1.htmFile
  loc_9ED3BC: LdPrVar
  loc_9ED3BE: LateMemCall
  loc_9ED3C4: LitVarStr var_94, "          <map name=""Map"">"
  loc_9ED3C9: PopAdLdVar
  loc_9ED3CA: FLdPr Me
  loc_9ED3CD: MemLdRfVar from_stack_1.htmFile
  loc_9ED3D0: LdPrVar
  loc_9ED3D2: LateMemCall
  loc_9ED3D8: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9ED3DD: PopAdLdVar
  loc_9ED3DE: FLdPr Me
  loc_9ED3E1: MemLdRfVar from_stack_1.htmFile
  loc_9ED3E4: LdPrVar
  loc_9ED3E6: LateMemCall
  loc_9ED3EC: LitVarStr var_94, "          </map>"
  loc_9ED3F1: PopAdLdVar
  loc_9ED3F2: FLdPr Me
  loc_9ED3F5: MemLdRfVar from_stack_1.htmFile
  loc_9ED3F8: LdPrVar
  loc_9ED3FA: LateMemCall
  loc_9ED400: LitVarStr var_94, "    </div></th>"
  loc_9ED405: PopAdLdVar
  loc_9ED406: FLdPr Me
  loc_9ED409: MemLdRfVar from_stack_1.htmFile
  loc_9ED40C: LdPrVar
  loc_9ED40E: LateMemCall
  loc_9ED414: LitVarStr var_94, "  </tr>"
  loc_9ED419: PopAdLdVar
  loc_9ED41A: FLdPr Me
  loc_9ED41D: MemLdRfVar from_stack_1.htmFile
  loc_9ED420: LdPrVar
  loc_9ED422: LateMemCall
  loc_9ED428: LitVarStr var_94, "  <tr>"
  loc_9ED42D: PopAdLdVar
  loc_9ED42E: FLdPr Me
  loc_9ED431: MemLdRfVar from_stack_1.htmFile
  loc_9ED434: LdPrVar
  loc_9ED436: LateMemCall
  loc_9ED43C: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9ED441: PopAdLdVar
  loc_9ED442: FLdPr Me
  loc_9ED445: MemLdRfVar from_stack_1.htmFile
  loc_9ED448: LdPrVar
  loc_9ED44A: LateMemCall
  loc_9ED450: LitVarStr var_94, "  </tr>"
  loc_9ED455: PopAdLdVar
  loc_9ED456: FLdPr Me
  loc_9ED459: MemLdRfVar from_stack_1.htmFile
  loc_9ED45C: LdPrVar
  loc_9ED45E: LateMemCall
  loc_9ED464: LitVarStr var_94, "</table>"
  loc_9ED469: PopAdLdVar
  loc_9ED46A: FLdPr Me
  loc_9ED46D: MemLdRfVar from_stack_1.htmFile
  loc_9ED470: LdPrVar
  loc_9ED472: LateMemCall
  loc_9ED478: LitVarStr var_94, "<p class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</p>"
  loc_9ED47D: PopAdLdVar
  loc_9ED47E: FLdPr Me
  loc_9ED481: MemLdRfVar from_stack_1.htmFile
  loc_9ED484: LdPrVar
  loc_9ED486: LateMemCall
  loc_9ED48C: LitVarStr var_94, "</body>"
  loc_9ED491: PopAdLdVar
  loc_9ED492: FLdPr Me
  loc_9ED495: MemLdRfVar from_stack_1.htmFile
  loc_9ED498: LdPrVar
  loc_9ED49A: LateMemCall
  loc_9ED4A0: LitVarStr var_94, "</html>"
  loc_9ED4A5: PopAdLdVar
  loc_9ED4A6: FLdPr Me
  loc_9ED4A9: MemLdRfVar from_stack_1.htmFile
  loc_9ED4AC: LdPrVar
  loc_9ED4AE: LateMemCall
  loc_9ED4B4: ExitProcHresult
End Function
