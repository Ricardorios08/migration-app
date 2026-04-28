VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeCheques
  Caption = "Listado de Cheques"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeCheques.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 8310
  ClientHeight = 7380
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7125
    Width = 8310
    Height = 255
    TabIndex = 40
    OleObjectBlob = "rptListadodeCheques.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7080
    Top = 6240
    Width = 735
    Height = 615
    TabIndex = 38
    Cancel = -1  'True
    Picture = "rptListadodeCheques.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeCheques.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 6000
    Width = 3375
    Height = 1095
    TabIndex = 34
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 36
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 35
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 6000
    Width = 3015
    Height = 1095
    TabIndex = 31
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 33
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 32
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8055
    Height = 5895
    TabIndex = 0
    Begin VB.Frame Frame6
      Caption = " Medio de pago "
      ForeColor = &HFF&
      Left = 3360
      Top = 2520
      Width = 3135
      Height = 1815
      TabIndex = 20
      Begin VB.OptionButton optMPtodos
        Caption = "Todos los medios de pago"
        Left = 240
        Top = 360
        Width = 2175
        Height = 255
        TabIndex = 21
      End
      Begin VB.OptionButton optMPtransferencia
        Caption = "transferencia"
        Left = 240
        Top = 1440
        Width = 1575
        Height = 255
        TabIndex = 24
      End
      Begin VB.OptionButton optMPchequeimpreso
        Caption = "cheque impreso"
        Left = 240
        Top = 1080
        Width = 1575
        Height = 255
        TabIndex = 23
      End
      Begin VB.OptionButton optMPchequemanual
        Caption = "cheque manual"
        Left = 240
        Top = 720
        Width = 1575
        Height = 255
        TabIndex = 22
      End
    End
    Begin VB.TextBox OrdeCheqTxt
      Left = 1485
      Top = 1440
      Width = 5655
      Height = 285
      TabIndex = 8
      MaxLength = 100
    End
    Begin VB.Frame Frame5
      Caption = " Ordenado por "
      Left = 240
      Top = 4560
      Width = 3975
      Height = 1215
      TabIndex = 25
      Begin VB.OptionButton BancoOpt
        Caption = "Banco"
        Left = 720
        Top = 360
        Width = 1455
        Height = 195
        TabIndex = 26
      End
      Begin VB.OptionButton NúmeroOpt
        Caption = "Número"
        Left = 720
        Top = 720
        Width = 1455
        Height = 195
        TabIndex = 28
      End
      Begin VB.OptionButton OrdenPagoOpt
        Caption = "Orden de Pago"
        Left = 2280
        Top = 360
        Width = 1455
        Height = 195
        TabIndex = 27
      End
      Begin VB.OptionButton FechaOpt
        Caption = "Anulación"
        Left = 2280
        Top = 720
        Width = 1455
        Height = 195
        TabIndex = 29
      End
    End
    Begin VB.Frame Frame4
      Caption = " Fecha de "
      Left = 1005
      Top = 2520
      Width = 2175
      Height = 1815
      TabIndex = 15
      Begin VB.OptionButton FeanCheqOpt
        Caption = "Anulación"
        Left = 720
        Top = 1440
        Width = 1095
        Height = 195
        TabIndex = 19
      End
      Begin VB.OptionButton FepaCheqOpt
        Caption = "Pago"
        Left = 720
        Top = 1080
        Width = 1095
        Height = 195
        TabIndex = 18
      End
      Begin VB.OptionButton FereCheqOpt
        Caption = "Remisión"
        Left = 720
        Top = 720
        Width = 1095
        Height = 195
        TabIndex = 17
      End
      Begin VB.OptionButton FechCheqOpt
        Caption = "Emisión"
        Left = 720
        Top = 360
        Width = 1095
        Height = 195
        TabIndex = 16
      End
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 5160
      Top = 1920
      Width = 375
      Height = 375
      TabIndex = 14
      Picture = "rptListadodeCheques.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2640
      Top = 1920
      Width = 375
      Height = 375
      TabIndex = 11
      Picture = "rptListadodeCheques.frx":1142
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton CodiBancCmd
      Left = 2640
      Top = 960
      Width = 375
      Height = 255
      TabIndex = 5
      Picture = "rptListadodeCheques.frx":1684
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CheckBox IncluyeAnuladosChk
      Caption = "Incluye cheques ANULADOS"
      Left = 4800
      Top = 4920
      Width = 2415
      Height = 255
      TabIndex = 30
    End
    Begin VB.ComboBox PeriodoCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1485
      Top = 480
      Width = 855
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6120
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 37
    End
    Begin MSMask.MaskEdBox FechaDesdeMsk
      Left = 1485
      Top = 1920
      Width = 1095
      Height = 285
      TabIndex = 10
      OleObjectBlob = "rptListadodeCheques.frx":177E
    End
    Begin MSMask.MaskEdBox FechaHastaMsk
      Left = 4005
      Top = 1920
      Width = 1095
      Height = 285
      TabIndex = 13
      OleObjectBlob = "rptListadodeCheques.frx":1806
    End
    Begin MSMask.MaskEdBox CodiBancMsk
      Left = 1485
      Top = 960
      Width = 855
      Height = 285
      TabIndex = 4
      OleObjectBlob = "rptListadodeCheques.frx":188E
    End
    Begin VB.Label Label5
      Caption = "A la Orden de:"
      Left = 360
      Top = 1440
      Width = 1020
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Banco:"
      Left = 870
      Top = 960
      Width = 510
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 795
      Top = 480
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 3405
      Top = 1920
      Width = 465
      Height = 195
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 840
      Top = 1920
      Width = 510
      Height = 195
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label DetaBancLbl
      Left = 3120
      Top = 960
      Width = 4695
      Height = 255
      TabIndex = 6
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7200
    Top = 6360
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 39
    OleObjectBlob = "rptListadodeCheques.frx":18F8
  End
End

Attribute VB_Name = "rptListadodeCheques"

Public htmFile As Variant
Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_005E335C
  bStruc(64) As Byte ' String fields: 16
End Type


Private Sub cmdCalDesde_Click() '97E988
  'Data Table: 4D6F6C
  loc_97E954: LitVar_Missing var_A4
  loc_97E957: PopAdLdVar
  loc_97E958: LitVarI4
  loc_97E960: PopAdLdVar
  loc_97E961: ImpAdLdRf MemVar_C3D9A8
  loc_97E964: NewIfNullPr frmCalendario
  loc_97E967: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E96C: ImpAdLdRf MemVar_C3D038
  loc_97E96F: CDargRef
  loc_97E973: FLdPr Me
  loc_97E976: VCallAd Control_ID_FechaDesdeMsk
  loc_97E979: FStAdFunc var_A8
  loc_97E97C: FLdPr var_A8
  loc_97E97F: LateIdSt
  loc_97E984: FFree1Ad var_A8
  loc_97E987: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97E8B8
  'Data Table: 4D6F6C
  loc_97E884: LitVar_Missing var_A4
  loc_97E887: PopAdLdVar
  loc_97E888: LitVarI4
  loc_97E890: PopAdLdVar
  loc_97E891: ImpAdLdRf MemVar_C3D9A8
  loc_97E894: NewIfNullPr frmCalendario
  loc_97E897: frmCalendario.Show from_stack_1, from_stack_2
  loc_97E89C: ImpAdLdRf MemVar_C3D038
  loc_97E89F: CDargRef
  loc_97E8A3: FLdPr Me
  loc_97E8A6: VCallAd Control_ID_FechaHastaMsk
  loc_97E8A9: FStAdFunc var_A8
  loc_97E8AC: FLdPr var_A8
  loc_97E8AF: LateIdSt
  loc_97E8B4: FFree1Ad var_A8
  loc_97E8B7: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '960A44
  'Data Table: 4D6F6C
  loc_960A2C: ILdRf Me
  loc_960A2F: CastAd
  loc_960A32: FStAdFunc var_88
  loc_960A35: FLdRfVar var_88
  loc_960A38: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_960A3D: FFree1Ad var_88
  loc_960A40: ExitProcHresult
  loc_960A41: CI4R8
  loc_960A42: NewIfNullPr Me
End Sub

Private Sub cmdXLS_Click() '96B0DC
  'Data Table: 4D6F6C
  loc_96B0C0: LitI2_Byte &HFF
  loc_96B0C2: LitI2_Byte 0
  loc_96B0C4: ILdRf Me
  loc_96B0C7: CastAd
  loc_96B0CA: FStAdFunc var_88
  loc_96B0CD: FLdRfVar var_88
  loc_96B0D0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B0D5: FFree1Ad var_88
  loc_96B0D8: ExitProcHresult
End Sub

Private Sub Form_Load() '9CBBCC
  'Data Table: 4D6F6C
  loc_9CBAF4: LitI2_Byte &HFF
  loc_9CBAF6: ImpAdStI2 MemVar_C3D840
  loc_9CBAF9: ILdRf Me
  loc_9CBAFC: CastAd
  loc_9CBAFF: FStAdFunc var_8C
  loc_9CBB02: FLdRfVar var_8C
  loc_9CBB05: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CBB0A: FFree1Ad var_8C
  loc_9CBB0D: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CBB10: FLdRfVar var_88
  loc_9CBB13: NewIfNullPr clsperiodo
  loc_9CBB16: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CBB1B: FLdRfVar var_90
  loc_9CBB1E: FLdRfVar var_88
  loc_9CBB21: NewIfNullPr clsperiodo
  loc_9CBB24: from_stack_1 = clsperiodo.RecordCount
  loc_9CBB29: ILdRf var_90
  loc_9CBB2C: LitI4 0
  loc_9CBB31: GtI4
  loc_9CBB32: BranchF loc_9CBBC5
  loc_9CBB35: FLdRfVar var_88
  loc_9CBB38: NewIfNullPr clsperiodo
  loc_9CBB3B: Call clsperiodo.MoveFirst()
  loc_9CBB40: FLdRfVar var_92
  loc_9CBB43: FLdRfVar var_88
  loc_9CBB46: NewIfNullPr clsperiodo
  loc_9CBB49: from_stack_1 = clsperiodo.EOF
  loc_9CBB4E: FLdI2 var_92
  loc_9CBB51: NotI4
  loc_9CBB52: BranchF loc_9CBBC5
  loc_9CBB55: LitVar_Missing var_D0
  loc_9CBB58: PopAdLdVar
  loc_9CBB59: FLdRfVar var_BC
  loc_9CBB5C: FLdRfVar var_AC
  loc_9CBB5F: LitVarStr var_A8, "PeriInfo"
  loc_9CBB64: PopAdLdVar
  loc_9CBB65: FLdRfVar var_98
  loc_9CBB68: FLdRfVar var_8C
  loc_9CBB6B: FLdRfVar var_88
  loc_9CBB6E: NewIfNullPr clsperiodo
  loc_9CBB71: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CBB76: FLdPr var_8C
  loc_9CBB79:  = Me.Fields
  loc_9CBB7E: FLdPr var_98
  loc_9CBB81: from_stack_2 = Me.Item(from_stack_1)
  loc_9CBB86: FLdPr var_AC
  loc_9CBB89:  = Me.Value
  loc_9CBB8E: FLdRfVar var_BC
  loc_9CBB91: CStrVarTmp
  loc_9CBB92: FStStrNoPop var_C0
  loc_9CBB95: FLdPr Me
  loc_9CBB98: VCallAd Control_ID_PeriodoCbo
  loc_9CBB9B: FStAdFunc var_D4
  loc_9CBB9E: FLdPr var_D4
  loc_9CBBA1: Me.AddItem from_stack_1, from_stack_2
  loc_9CBBA6: FFree1Str var_C0
  loc_9CBBA9: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CBBB4: FFree1Var var_BC = ""
  loc_9CBBB7: FLdRfVar var_88
  loc_9CBBBA: NewIfNullPr clsperiodo
  loc_9CBBBD: Call clsperiodo.MoveSiguiente()
  loc_9CBBC2: Branch loc_9CBB40
  loc_9CBBC5: Call cmdNueva_Click()
  loc_9CBBCA: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '960D3C
  'Data Table: 4D6F6C
  loc_960D24: FLdPr Me
  loc_960D27: VCallAd Control_ID_wbbReporte
  loc_960D2A: FStAdFunc var_88
  loc_960D2D: FLdRfVar var_88
  loc_960D30: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_960D35: FFree1Ad var_88
  loc_960D38: ExitProcHresult
  loc_960D39: ImpAdLdRf MemVar_519398
End Sub

Private Sub PeriodoCbo_Click() '9D966C
  'Data Table: 4D6F6C
  loc_9D9580: FLdRfVar var_8C
  loc_9D9583: FLdPr Me
  loc_9D9586: VCallAd Control_ID_PeriodoCbo
  loc_9D9589: FStAdFunc var_88
  loc_9D958C: FLdPr var_88
  loc_9D958F:  = Me.Text
  loc_9D9594: FLdRfVar var_9C
  loc_9D9597: ImpAdCallFPR4  = Now
  loc_9D959C: FLdRfVar var_9C
  loc_9D959F: FLdRfVar var_AC
  loc_9D95A2: ImpAdCallFPR4  = Month()
  loc_9D95A7: LitI2_Byte 1
  loc_9D95A9: FLdRfVar var_AC
  loc_9D95AC: CI2Var
  loc_9D95AD: ILdRf var_8C
  loc_9D95B0: CI2Str
  loc_9D95B2: FLdRfVar var_BC
  loc_9D95B5: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D95BA: FLdRfVar var_BC
  loc_9D95BD: CStrVarTmp
  loc_9D95BE: CVarStr var_CC
  loc_9D95C1: PopAdLdVar
  loc_9D95C2: FLdPr Me
  loc_9D95C5: VCallAd Control_ID_FechaDesdeMsk
  loc_9D95C8: FStAdFunc var_E0
  loc_9D95CB: FLdPr var_E0
  loc_9D95CE: LateIdSt
  loc_9D95D3: FFree1Str var_8C
  loc_9D95D6: FFreeAd var_88 = ""
  loc_9D95DD: FFreeVar var_9C = "": var_AC = "": var_BC = ""
  loc_9D95E8: FLdRfVar var_8C
  loc_9D95EB: FLdPr Me
  loc_9D95EE: VCallAd Control_ID_PeriodoCbo
  loc_9D95F1: FStAdFunc var_88
  loc_9D95F4: FLdPr var_88
  loc_9D95F7:  = Me.Text
  loc_9D95FC: FLdRfVar var_9C
  loc_9D95FF: ImpAdCallFPR4  = Now
  loc_9D9604: FLdRfVar var_9C
  loc_9D9607: FLdRfVar var_AC
  loc_9D960A: ImpAdCallFPR4  = Month()
  loc_9D960F: FLdRfVar var_BC
  loc_9D9612: ImpAdCallFPR4  = Now
  loc_9D9617: FLdRfVar var_BC
  loc_9D961A: FLdRfVar var_CC
  loc_9D961D: ImpAdCallFPR4  = Day()
  loc_9D9622: FLdRfVar var_CC
  loc_9D9625: CI2Var
  loc_9D9626: FLdRfVar var_AC
  loc_9D9629: CI2Var
  loc_9D962A: ILdRf var_8C
  loc_9D962D: CI2Str
  loc_9D962F: FLdRfVar var_F0
  loc_9D9632: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D9637: FLdRfVar var_F0
  loc_9D963A: CStrVarTmp
  loc_9D963B: CVarStr var_100
  loc_9D963E: PopAdLdVar
  loc_9D963F: FLdPr Me
  loc_9D9642: VCallAd Control_ID_FechaHastaMsk
  loc_9D9645: FStAdFunc var_E0
  loc_9D9648: FLdPr var_E0
  loc_9D964B: LateIdSt
  loc_9D9650: FFree1Str var_8C
  loc_9D9653: FFreeAd var_88 = ""
  loc_9D965A: FFreeVar var_9C = "": var_BC = "": var_AC = "": var_CC = "": var_F0 = ""
  loc_9D9669: ExitProcHresult
End Sub

Private Sub FechCheqOpt_Click() '9607E4
  'Data Table: 4D6F6C
  loc_9607CC: LitI2_Byte &HFF
  loc_9607CE: FLdPr Me
  loc_9607D1: VCallAd Control_ID_IncluyeAnuladosChk
  loc_9607D4: FStAdFunc var_88
  loc_9607D7: FLdPr var_88
  loc_9607DA: Me.Enabled = from_stack_1b
  loc_9607DF: FFree1Ad var_88
  loc_9607E2: ExitProcHresult
End Sub

Private Sub OrdeCheqTxt_Validate(Cancel As Boolean) '9B5510
  'Data Table: 4D6F6C
  loc_9B546C: FLdRfVar var_8C
  loc_9B546F: FLdPr Me
  loc_9B5472: VCallAd Control_ID_OrdeCheqTxt
  loc_9B5475: FStAdFunc var_88
  loc_9B5478: FLdPr var_88
  loc_9B547B:  = Me.Text
  loc_9B5480: ILdRf var_8C
  loc_9B5483: LitStr vbNullString
  loc_9B5486: NeStr
  loc_9B5488: FFree1Str var_8C
  loc_9B548B: FFree1Ad var_88
  loc_9B548E: BranchF loc_9B550F
  loc_9B5491: FLdRfVar var_8C
  loc_9B5494: FLdPr Me
  loc_9B5497: VCallAd Control_ID_OrdeCheqTxt
  loc_9B549A: FStAdFunc var_88
  loc_9B549D: FLdPr var_88
  loc_9B54A0:  = Me.Text
  loc_9B54A5: LitI2_Byte 0
  loc_9B54A7: PopTmpLdAd2 var_92
  loc_9B54AA: LitI2_Byte 0
  loc_9B54AC: PopTmpLdAd2 var_90
  loc_9B54AF: LitI2_Byte 0
  loc_9B54B1: PopTmpLdAd2 var_8E
  loc_9B54B4: ILdRf var_8C
  loc_9B54B7: LitStr "A la Orden de"
  loc_9B54BA: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9B54BF: FStStrNoPop var_98
  loc_9B54C2: FLdPr Me
  loc_9B54C5: MemStStrCopy
  loc_9B54C9: FFreeStr var_8C = ""
  loc_9B54D0: FFree1Ad var_88
  loc_9B54D3: FLdPr Me
  loc_9B54D6: VCallAd Control_ID_OrdeCheqTxt
  loc_9B54D9: FStAdFunc var_A4
  loc_9B54DC: LitNothing
  loc_9B54DE: CastAd
  loc_9B54E1: FStAdFunc var_A0
  loc_9B54E4: FLdRfVar var_A0
  loc_9B54E7: FLdZeroAd var_A4
  loc_9B54EA: FStAdFuncNoPop
  loc_9B54ED: CastAd
  loc_9B54F0: FStAdFunc var_9C
  loc_9B54F3: FLdRfVar var_9C
  loc_9B54F6: FLdPr Me
  loc_9B54F9: MemLdRfVar from_stack_1.global_92
  loc_9B54FC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B5501: IStI2 Cancel
  loc_9B5504: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_9B550F: ExitProcHresult
End Sub

Private Sub CodiBancCmd_Click() '9FF23C
  'Data Table: 4D6F6C
  loc_9FF0F8: ImpAdLdRf MemVar_C3D6AC
  loc_9FF0FB: NewIfNullAd
  loc_9FF0FE: FStAd var_88 
  loc_9FF102: FLdRfVar var_90
  loc_9FF105: FLdPr Me
  loc_9FF108: VCallAd Control_ID_PeriodoCbo
  loc_9FF10B: FStAdFunc var_8C
  loc_9FF10E: FLdPr var_8C
  loc_9FF111:  = Me.Text
  loc_9FF116: ILdRf var_90
  loc_9FF119: CI2Str
  loc_9FF11B: FLdPr var_88
  loc_9FF11E: Call bscBanco.iPeriInfoPut(from_stack_1v)
  loc_9FF123: FFree1Str var_90
  loc_9FF126: FFree1Ad var_8C
  loc_9FF129: LitVar_Missing var_B0
  loc_9FF12C: PopAdLdVar
  loc_9FF12D: LitVarI4
  loc_9FF135: PopAdLdVar
  loc_9FF136: FLdPr var_88
  loc_9FF139: Me.Show from_stack_1, from_stack_2
  loc_9FF13E: FLdRfVar var_B4
  loc_9FF141: FLdRfVar var_8C
  loc_9FF144: FLdPr var_88
  loc_9FF147: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FF14C: FLdPr var_8C
  loc_9FF14F: from_stack_1 = clsbase.RecordCount
  loc_9FF154: ILdRf var_B4
  loc_9FF157: LitI4 1
  loc_9FF15C: GtI4
  loc_9FF15D: FFree1Ad var_8C
  loc_9FF160: BranchF loc_9FF235
  loc_9FF163: FLdRfVar var_D0
  loc_9FF166: FLdRfVar var_C0
  loc_9FF169: LitVarStr var_A0, "CodiBanc"
  loc_9FF16E: PopAdLdVar
  loc_9FF16F: FLdRfVar var_BC
  loc_9FF172: FLdRfVar var_B8
  loc_9FF175: FLdRfVar var_8C
  loc_9FF178: FLdPr var_88
  loc_9FF17B: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FF180: FLdPr var_8C
  loc_9FF183: from_stack_1v = clsbase.RsFrmGet()
  loc_9FF188: FLdPr var_B8
  loc_9FF18B:  = Me.Fields
  loc_9FF190: FLdPr var_BC
  loc_9FF193: from_stack_2 = Me.Item(from_stack_1)
  loc_9FF198: FLdPr var_C0
  loc_9FF19B:  = Me.Value
  loc_9FF1A0: FLdRfVar var_D0
  loc_9FF1A3: CStrVarTmp
  loc_9FF1A4: CVarStr var_E0
  loc_9FF1A7: PopAdLdVar
  loc_9FF1A8: FLdPr Me
  loc_9FF1AB: VCallAd Control_ID_CodiBancMsk
  loc_9FF1AE: FStAdFunc var_E4
  loc_9FF1B1: FLdPr var_E4
  loc_9FF1B4: LateIdSt
  loc_9FF1B9: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_9FF1C6: FFreeVar var_D0 = ""
  loc_9FF1CD: FLdRfVar var_D0
  loc_9FF1D0: FLdRfVar var_C0
  loc_9FF1D3: LitVarStr var_A0, "DetaBanc"
  loc_9FF1D8: PopAdLdVar
  loc_9FF1D9: FLdRfVar var_BC
  loc_9FF1DC: FLdRfVar var_B8
  loc_9FF1DF: FLdRfVar var_8C
  loc_9FF1E2: FLdPr var_88
  loc_9FF1E5: from_stack_1v = bscBanco.global_4317104Get()
  loc_9FF1EA: FLdPr var_8C
  loc_9FF1ED: from_stack_1v = clsbase.RsFrmGet()
  loc_9FF1F2: FLdPr var_B8
  loc_9FF1F5:  = Me.Fields
  loc_9FF1FA: FLdPr var_BC
  loc_9FF1FD: from_stack_2 = Me.Item(from_stack_1)
  loc_9FF202: FLdPr var_C0
  loc_9FF205:  = Me.Value
  loc_9FF20A: FLdRfVar var_D0
  loc_9FF20D: CStrVarTmp
  loc_9FF20E: FStStrNoPop var_90
  loc_9FF211: FLdPr Me
  loc_9FF214: VCallAd Control_ID_DetaBancLbl
  loc_9FF217: FStAdFunc var_E4
  loc_9FF21A: FLdPr var_E4
  loc_9FF21D: Me.Caption = from_stack_1
  loc_9FF222: FFree1Str var_90
  loc_9FF225: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_9FF232: FFree1Var var_D0 = ""
  loc_9FF235: LitNothing
  loc_9FF237: FStAd var_88 
  loc_9FF23B: ExitProcHresult
End Sub

Private Sub FechaDesdeMsk_UnknownEvent_0 '951C48
  'Data Table: 4D6F6C
  loc_951C34: FLdPr Me
  loc_951C37: VCallAd Control_ID_FechaDesdeMsk
  loc_951C3A: CVarAd
  loc_951C3E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951C43: FFree1Var var_94 = ""
  loc_951C46: ExitProcHresult
End Sub

Private Function FechaDesdeMsk_UnknownEvent_8(arg_C) '9CC050
  'Data Table: 4D6F6C
  loc_9CBF84: FLdPr Me
  loc_9CBF87: VCallAd Control_ID_FechaDesdeMsk
  loc_9CBF8A: FStAdFunc var_88
  loc_9CBF8D: FLdPr var_88
  loc_9CBF90: LateIdLdVar var_98 DispID_15 0
  loc_9CBF97: PopAd
  loc_9CBF99: FLdRfVar var_A0
  loc_9CBF9C: FLdPr Me
  loc_9CBF9F: VCallAd Control_ID_PeriodoCbo
  loc_9CBFA2: FStAdFunc var_9C
  loc_9CBFA5: FLdPr var_9C
  loc_9CBFA8:  = Me.Text
  loc_9CBFAD: LitI2_Byte 1
  loc_9CBFAF: LitI2_Byte 1
  loc_9CBFB1: ILdRf var_A0
  loc_9CBFB4: CI2Str
  loc_9CBFB6: FLdRfVar var_B0
  loc_9CBFB9: ImpAdCallFPR4  = DateSerial(, , )
  loc_9CBFBE: FLdPr Me
  loc_9CBFC1: VCallAd Control_ID_FechaDesdeMsk
  loc_9CBFC4: FStAdFunc var_C8
  loc_9CBFC7: LitI2_Byte &HFF
  loc_9CBFC9: PopTmpLdAd2 var_BE
  loc_9CBFCC: FLdZeroAd var_C8
  loc_9CBFCF: FStAdFunc var_BC
  loc_9CBFD2: FLdRfVar var_BC
  loc_9CBFD5: FLdRfVar var_B0
  loc_9CBFD8: CStrVarVal var_B8
  loc_9CBFDC: LitI2_Byte 0
  loc_9CBFDE: LitI2_Byte 0
  loc_9CBFE0: FLdRfVar var_98
  loc_9CBFE3: CStrVarTmp
  loc_9CBFE4: FStStrNoPop var_B4
  loc_9CBFE7: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CBFEC: FStStrNoPop var_C4
  loc_9CBFEF: FLdPr Me
  loc_9CBFF2: MemStStrCopy
  loc_9CBFF6: FFreeStr var_A0 = "": var_B4 = "": var_B8 = ""
  loc_9CC001: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CC00C: FFreeVar var_98 = ""
  loc_9CC013: FLdPr Me
  loc_9CC016: VCallAd Control_ID_FechaDesdeMsk
  loc_9CC019: FStAdFunc var_C8
  loc_9CC01C: LitNothing
  loc_9CC01E: CastAd
  loc_9CC021: FStAdFunc var_BC
  loc_9CC024: FLdRfVar var_BC
  loc_9CC027: FLdZeroAd var_C8
  loc_9CC02A: FStAdFuncNoPop
  loc_9CC02D: CastAd
  loc_9CC030: FStAdFunc var_9C
  loc_9CC033: FLdRfVar var_9C
  loc_9CC036: FLdPr Me
  loc_9CC039: MemLdRfVar from_stack_1.global_92
  loc_9CC03C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CC041: IStI2 arg_C
  loc_9CC044: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CC04F: ExitProcHresult
End Function

Private Sub FechaHastaMsk_UnknownEvent_0 '951C00
  'Data Table: 4D6F6C
  loc_951BEC: FLdPr Me
  loc_951BEF: VCallAd Control_ID_FechaHastaMsk
  loc_951BF2: CVarAd
  loc_951BF6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951BFB: FFree1Var var_94 = ""
  loc_951BFE: ExitProcHresult
End Sub

Private Function FechaHastaMsk_UnknownEvent_8(arg_C) '9C4FE0
  'Data Table: 4D6F6C
  loc_9C4F24: FLdPr Me
  loc_9C4F27: VCallAd Control_ID_FechaHastaMsk
  loc_9C4F2A: FStAdFunc var_88
  loc_9C4F2D: FLdPr var_88
  loc_9C4F30: LateIdLdVar var_98 DispID_15 0
  loc_9C4F37: PopAd
  loc_9C4F39: FLdPr Me
  loc_9C4F3C: VCallAd Control_ID_FechaDesdeMsk
  loc_9C4F3F: FStAdFunc var_9C
  loc_9C4F42: FLdPr var_9C
  loc_9C4F45: LateIdLdVar var_AC DispID_15 0
  loc_9C4F4C: PopAd
  loc_9C4F4E: FLdPr Me
  loc_9C4F51: VCallAd Control_ID_FechaHastaMsk
  loc_9C4F54: FStAdFunc var_C4
  loc_9C4F57: LitI2_Byte &HFF
  loc_9C4F59: PopTmpLdAd2 var_BA
  loc_9C4F5C: FLdZeroAd var_C4
  loc_9C4F5F: FStAdFunc var_B8
  loc_9C4F62: FLdRfVar var_B8
  loc_9C4F65: FLdRfVar var_AC
  loc_9C4F68: CStrVarTmp
  loc_9C4F69: FStStrNoPop var_B4
  loc_9C4F6C: LitI2_Byte 0
  loc_9C4F6E: LitI2_Byte 0
  loc_9C4F70: FLdRfVar var_98
  loc_9C4F73: CStrVarTmp
  loc_9C4F74: FStStrNoPop var_B0
  loc_9C4F77: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C4F7C: FStStrNoPop var_C0
  loc_9C4F7F: FLdPr Me
  loc_9C4F82: MemStStrCopy
  loc_9C4F86: FFreeStr var_B0 = "": var_B4 = ""
  loc_9C4F8F: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C4F9A: FFreeVar var_98 = ""
  loc_9C4FA1: FLdPr Me
  loc_9C4FA4: VCallAd Control_ID_FechaHastaMsk
  loc_9C4FA7: FStAdFunc var_C4
  loc_9C4FAA: LitNothing
  loc_9C4FAC: CastAd
  loc_9C4FAF: FStAdFunc var_B8
  loc_9C4FB2: FLdRfVar var_B8
  loc_9C4FB5: FLdZeroAd var_C4
  loc_9C4FB8: FStAdFuncNoPop
  loc_9C4FBB: CastAd
  loc_9C4FBE: FStAdFunc var_9C
  loc_9C4FC1: FLdRfVar var_9C
  loc_9C4FC4: FLdPr Me
  loc_9C4FC7: MemLdRfVar from_stack_1.global_92
  loc_9C4FCA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C4FCF: IStI2 arg_C
  loc_9C4FD2: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9C4FDD: ExitProcHresult
  loc_9C4FDE: CI4Str
End Function

Private Sub cmdNueva_Click() '9C4EEC
  'Data Table: 4D6F6C
  loc_9C4E14: LitI2_Byte 0
  loc_9C4E16: FLdPr Me
  loc_9C4E19: MemStI2 bGenerado
  loc_9C4E1C: LitI2_Byte &HFF
  loc_9C4E1E: FLdPr Me
  loc_9C4E21: MemStI2 bLogos
  loc_9C4E24: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9C4E29: ImpAdLdI2 MemVar_C3D064
  loc_9C4E2C: CStrUI1
  loc_9C4E2E: FStStrNoPop var_88
  loc_9C4E31: FLdPr Me
  loc_9C4E34: VCallAd Control_ID_PeriodoCbo
  loc_9C4E37: FStAdFunc var_8C
  loc_9C4E3A: FLdPr var_8C
  loc_9C4E3D: Me.Text = from_stack_1
  loc_9C4E42: FFree1Str var_88
  loc_9C4E45: FFree1Ad var_8C
  loc_9C4E48: LitVarStr var_9C, vbNullString
  loc_9C4E4D: PopAdLdVar
  loc_9C4E4E: FLdPr Me
  loc_9C4E51: VCallAd Control_ID_CodiBancMsk
  loc_9C4E54: FStAdFunc var_8C
  loc_9C4E57: FLdPr var_8C
  loc_9C4E5A: LateIdSt
  loc_9C4E5F: FFree1Ad var_8C
  loc_9C4E62: LitStr vbNullString
  loc_9C4E65: FLdPr Me
  loc_9C4E68: VCallAd Control_ID_DetaBancLbl
  loc_9C4E6B: FStAdFunc var_8C
  loc_9C4E6E: FLdPr var_8C
  loc_9C4E71: Me.Caption = from_stack_1
  loc_9C4E76: FFree1Ad var_8C
  loc_9C4E79: LitI2_Byte &HFF
  loc_9C4E7B: FLdPr Me
  loc_9C4E7E: VCallAd Control_ID_FechCheqOpt
  loc_9C4E81: FStAdFunc var_8C
  loc_9C4E84: FLdPr var_8C
  loc_9C4E87: Me.Value = from_stack_1b
  loc_9C4E8C: FFree1Ad var_8C
  loc_9C4E8F: LitI2_Byte &HFF
  loc_9C4E91: FLdPr Me
  loc_9C4E94: VCallAd Control_ID_optMPtodos
  loc_9C4E97: FStAdFunc var_8C
  loc_9C4E9A: FLdPr var_8C
  loc_9C4E9D: Me.Value = from_stack_1b
  loc_9C4EA2: FFree1Ad var_8C
  loc_9C4EA5: LitI2_Byte &HFF
  loc_9C4EA7: FLdPr Me
  loc_9C4EAA: VCallAd Control_ID_BancoOpt
  loc_9C4EAD: FStAdFunc var_8C
  loc_9C4EB0: FLdPr var_8C
  loc_9C4EB3: Me.Value = from_stack_1b
  loc_9C4EB8: FFree1Ad var_8C
  loc_9C4EBB: LitStr vbNullString
  loc_9C4EBE: FLdPr Me
  loc_9C4EC1: VCallAd Control_ID_OrdeCheqTxt
  loc_9C4EC4: FStAdFunc var_8C
  loc_9C4EC7: FLdPr var_8C
  loc_9C4ECA: Me.Text = from_stack_1
  loc_9C4ECF: FFree1Ad var_8C
  loc_9C4ED2: Call HabilitarCriterio()
  loc_9C4ED7: ILdRf Me
  loc_9C4EDA: CastAd
  loc_9C4EDD: FStAdFunc var_8C
  loc_9C4EE0: FLdRfVar var_8C
  loc_9C4EE3: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9C4EE8: FFree1Ad var_8C
  loc_9C4EEB: ExitProcHresult
End Sub

Private Sub FereCheqOpt_Click() '96087C
  'Data Table: 4D6F6C
  loc_960864: LitI2_Byte &HFF
  loc_960866: FLdPr Me
  loc_960869: VCallAd Control_ID_IncluyeAnuladosChk
  loc_96086C: FStAdFunc var_88
  loc_96086F: FLdPr var_88
  loc_960872: Me.Enabled = from_stack_1b
  loc_960877: FFree1Ad var_88
  loc_96087A: ExitProcHresult
End Sub

Private Sub FepaCheqOpt_Click() '97E578
  'Data Table: 4D6F6C
  loc_97E544: LitI2_Byte 0
  loc_97E546: FLdPr Me
  loc_97E549: VCallAd Control_ID_IncluyeAnuladosChk
  loc_97E54C: FStAdFunc var_88
  loc_97E54F: FLdPr var_88
  loc_97E552: Me.Enabled = from_stack_1b
  loc_97E557: FFree1Ad var_88
  loc_97E55A: LitI4 0
  loc_97E55F: CI2I4
  loc_97E560: FLdPr Me
  loc_97E563: VCallAd Control_ID_IncluyeAnuladosChk
  loc_97E566: FStAdFunc var_88
  loc_97E569: FLdPr var_88
  loc_97E56C: Me.Value = from_stack_1
  loc_97E571: FFree1Ad var_88
  loc_97E574: ExitProcHresult
  loc_97E575: BranchFVar
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9896A4
  'Data Table: 4D6F6C
  loc_98966C: FLdPr Me
  loc_98966F: VCallAd Control_ID_statusBar
  loc_989672: FStAdFunc var_88
  loc_989675: FLdPr var_88
  loc_989678: LateIdLdVar var_98 DispID_1 0
  loc_98967F: CStrVarTmp
  loc_989680: CVarStr var_A8
  loc_989683: PopAdLdVar
  loc_989684: FLdPr Me
  loc_989687: VCallAd Control_ID_statusBar
  loc_98968A: FStAdFunc var_BC
  loc_98968D: FLdPr var_BC
  loc_989690: LateIdSt
  loc_989695: FFreeAd var_88 = ""
  loc_98969C: FFreeVar var_98 = ""
  loc_9896A3: ExitProcHresult
End Sub

Private Sub FeanCheqOpt_Click() '97E4A8
  'Data Table: 4D6F6C
  loc_97E474: LitI2_Byte 0
  loc_97E476: FLdPr Me
  loc_97E479: VCallAd Control_ID_IncluyeAnuladosChk
  loc_97E47C: FStAdFunc var_88
  loc_97E47F: FLdPr var_88
  loc_97E482: Me.Enabled = from_stack_1b
  loc_97E487: FFree1Ad var_88
  loc_97E48A: LitI4 1
  loc_97E48F: CI2I4
  loc_97E490: FLdPr Me
  loc_97E493: VCallAd Control_ID_IncluyeAnuladosChk
  loc_97E496: FStAdFunc var_88
  loc_97E499: FLdPr var_88
  loc_97E49C: Me.Value = from_stack_1
  loc_97E4A1: FFree1Ad var_88
  loc_97E4A4: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9609AC
  'Data Table: 4D6F6C
  loc_960994: ILdRf Me
  loc_960997: CastAd
  loc_96099A: FStAdFunc var_88
  loc_96099D: FLdRfVar var_88
  loc_9609A0: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9609A5: FFree1Ad var_88
  loc_9609A8: ExitProcHresult
End Sub

Private Sub CodiBancMsk_UnknownEvent_0 '951D20
  'Data Table: 4D6F6C
  loc_951D0C: FLdPr Me
  loc_951D0F: VCallAd Control_ID_CodiBancMsk
  loc_951D12: CVarAd
  loc_951D16: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951D1B: FFree1Var var_94 = ""
  loc_951D1E: ExitProcHresult
End Sub

Private Function CodiBancMsk_UnknownEvent_8(arg_C) '9F86A4
  'Data Table: 4D6F6C
  loc_9F856C: LitStr vbNullString
  loc_9F856F: FLdPr Me
  loc_9F8572: MemStStrCopy
  loc_9F8576: FLdPr Me
  loc_9F8579: VCallAd Control_ID_CodiBancMsk
  loc_9F857C: FStAdFunc var_88
  loc_9F857F: FLdPr var_88
  loc_9F8582: LateIdLdVar var_98 DispID_22 0
  loc_9F8589: CStrVarTmp
  loc_9F858A: FStStrNoPop var_9C
  loc_9F858D: LitStr vbNullString
  loc_9F8590: NeStr
  loc_9F8592: FFree1Str var_9C
  loc_9F8595: FFree1Ad var_88
  loc_9F8598: FFree1Var var_98 = ""
  loc_9F859B: BranchF loc_9F868C
  loc_9F859E: FLdRfVar var_9C
  loc_9F85A1: FLdPr Me
  loc_9F85A4: VCallAd Control_ID_PeriodoCbo
  loc_9F85A7: FStAdFunc var_88
  loc_9F85AA: FLdPr var_88
  loc_9F85AD:  = Me.Text
  loc_9F85B2: FLdPr Me
  loc_9F85B5: VCallAd Control_ID_CodiBancMsk
  loc_9F85B8: FStAdFunc var_A0
  loc_9F85BB: FLdPr var_A0
  loc_9F85BE: LateIdLdVar var_98 DispID_22 0
  loc_9F85C5: PopAd
  loc_9F85C7: LitI4 0
  loc_9F85CC: FStStrCopy var_A8
  loc_9F85CF: FLdRfVar var_A8
  loc_9F85D2: FLdPr Me
  loc_9F85D5: MemLdRfVar from_stack_1.global_96
  loc_9F85D8: NewIfNullRf
  loc_9F85DC: FLdRfVar var_98
  loc_9F85DF: CStrVarTmp
  loc_9F85E0: FStStrNoPop var_A4
  loc_9F85E3: ILdRf var_9C
  loc_9F85E6: ImpAdCallI2 Proc_259_5_B268F0(, , , )
  loc_9F85EB: FFreeStr var_9C = "": var_A4 = ""
  loc_9F85F4: FFreeAd var_88 = ""
  loc_9F85FB: FFree1Var var_98 = ""
  loc_9F85FE: BranchF loc_9F862F
  loc_9F8601: FLdRfVar var_9C
  loc_9F8604: FLdPr Me
  loc_9F8607: MemLdRfVar from_stack_1.global_96
  loc_9F860A: NewIfNullPr tblbanco
  loc_9F860D: from_stack_1v = tblbanco.DetaBancGet()
  loc_9F8612: ILdRf var_9C
  loc_9F8615: FLdPr Me
  loc_9F8618: VCallAd Control_ID_DetaBancLbl
  loc_9F861B: FStAdFunc var_88
  loc_9F861E: FLdPr var_88
  loc_9F8621: Me.Caption = from_stack_1
  loc_9F8626: FFree1Str var_9C
  loc_9F8629: FFree1Ad var_88
  loc_9F862C: Branch loc_9F8689
  loc_9F862F: FLdRfVar var_9C
  loc_9F8632: FLdPr Me
  loc_9F8635: MemLdRfVar from_stack_1.global_96
  loc_9F8638: NewIfNullPr tblbanco
  loc_9F863B: from_stack_1v = tblbanco.MsgErrorGet()
  loc_9F8640: ILdRf var_9C
  loc_9F8643: FLdPr Me
  loc_9F8646: MemStStrCopy
  loc_9F864A: FFree1Str var_9C
  loc_9F864D: FLdPr Me
  loc_9F8650: VCallAd Control_ID_CodiBancMsk
  loc_9F8653: FStAdFunc var_B0
  loc_9F8656: LitNothing
  loc_9F8658: CastAd
  loc_9F865B: FStAdFunc var_AC
  loc_9F865E: FLdRfVar var_AC
  loc_9F8661: FLdZeroAd var_B0
  loc_9F8664: FStAdFuncNoPop
  loc_9F8667: CastAd
  loc_9F866A: FStAdFunc var_A0
  loc_9F866D: FLdRfVar var_A0
  loc_9F8670: FLdPr Me
  loc_9F8673: MemLdRfVar from_stack_1.global_92
  loc_9F8676: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F867B: IStI2 arg_C
  loc_9F867E: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9F8689: Branch loc_9F86A3
  loc_9F868C: LitStr vbNullString
  loc_9F868F: FLdPr Me
  loc_9F8692: VCallAd Control_ID_DetaBancLbl
  loc_9F8695: FStAdFunc var_88
  loc_9F8698: FLdPr var_88
  loc_9F869B: Me.Caption = from_stack_1
  loc_9F86A0: FFree1Ad var_88
  loc_9F86A3: ExitProcHresult
End Function

Private Sub cmdPdf_Click() '960914
  'Data Table: 4D6F6C
  loc_9608FC: LitI2_Byte 0
  loc_9608FE: ILdRf Me
  loc_960901: CastAd
  loc_960904: FStAdFunc var_88
  loc_960907: FLdRfVar var_88
  loc_96090A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96090F: FFree1Ad var_88
  loc_960912: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9787A0
  'Data Table: 4D6F6C
  loc_978770: LitVarStr var_94, "Cerrando..."
  loc_978775: PopAdLdVar
  loc_978776: FLdPr Me
  loc_978779: VCallAd Control_ID_statusBar
  loc_97877C: FStAdFunc var_A8
  loc_97877F: FLdPr var_A8
  loc_978782: LateIdSt
  loc_978787: FFree1Ad var_A8
  loc_97878A: ILdRf Me
  loc_97878D: FStAdNoPop
  loc_978791: ImpAdLdRf MemVar_C44F9C
  loc_978794: NewIfNullPr Me
  loc_978797: Me.Global.Unload from_stack_1
  loc_97879C: FFree1Ad var_A8
  loc_97879F: ExitProcHresult
End Sub

Public Function htmFileGet() '4D8A58
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4D8A67
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4D8A76
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4D8A85
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4D8A94
  bGenerado = Value
End Sub

Public Function bLogosGet() '4D8AA3
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4D8AB2
  bLogos = Value
End Sub

Public Sub GeneraHTML() 'A7ECEC
  'Data Table: 4D6F6C
  loc_A7E8F0: FLdRfVar var_88
  loc_A7E8F3: LitI2_Byte 0
  loc_A7E8F5: LitI2_Byte &HFF
  loc_A7E8F7: ImpAdLdI4 MemVar_C3D83C
  loc_A7E8FA: FLdPr Me
  loc_A7E8FD: MemLdRfVar from_stack_1.global_76
  loc_A7E900: NewIfNullPr IFileSystem3
  loc_A7E903: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A7E908: ILdRf var_88
  loc_A7E90B: FLdPr Me
  loc_A7E90E: MemStVarAd
  loc_A7E912: FFree1Ad var_88
  loc_A7E915: Call Proc_189_35_AEEE70()
  loc_A7E91A: LitI2_Byte 1
  loc_A7E91C: FLdPr Me
  loc_A7E91F: MemLdRfVar from_stack_1.global_88
  loc_A7E922: FLdPr Me
  loc_A7E925: MemLdStr global_80
  loc_A7E928: LitI2_Byte 1
  loc_A7E92A: FnUBound
  loc_A7E92C: CI2I4
  loc_A7E92D: ForI2 var_8C
  loc_A7E933: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A7E938: PopAdLdVar
  loc_A7E939: FLdPr Me
  loc_A7E93C: MemLdRfVar from_stack_1.htmFile
  loc_A7E93F: LdPrVar
  loc_A7E941: LateMemCall
  loc_A7E947: FLdPr Me
  loc_A7E94A: MemLdI2 global_88
  loc_A7E94D: CI4UI1
  loc_A7E94E: FLdPr Me
  loc_A7E951: MemLdStr global_80
  loc_A7E954: AryLock
  loc_A7E957: Ary1LdRf
  loc_A7E958: FStR4 var_B4
  loc_A7E95B: LitI4 0
  loc_A7E960: LitI4 0
  loc_A7E965: LitI2_Byte 0
  loc_A7E967: LitStr "left"
  loc_A7E96A: FMemLdR4 var_B4(0)
  loc_A7E96F: LitStr " - "
  loc_A7E972: ConcatStr
  loc_A7E973: FStStrNoPop var_B8
  loc_A7E976: FMemLdR4 var_B4(4)
  loc_A7E97B: ConcatStr
  loc_A7E97C: FStStrNoPop var_BC
  loc_A7E97F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7E984: CVarStr var_CC
  loc_A7E987: PopAdLdVar
  loc_A7E988: FLdPr Me
  loc_A7E98B: MemLdRfVar from_stack_1.htmFile
  loc_A7E98E: LdPrVar
  loc_A7E990: LateMemCall
  loc_A7E996: FFreeStr var_B8 = ""
  loc_A7E99D: FFree1Var var_CC = ""
  loc_A7E9A0: LitI4 0
  loc_A7E9A5: LitI4 0
  loc_A7E9AA: LitI2_Byte 0
  loc_A7E9AC: LitStr "right"
  loc_A7E9AF: FMemLdR4 var_B4(8)
  loc_A7E9B4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7E9B9: CVarStr var_CC
  loc_A7E9BC: PopAdLdVar
  loc_A7E9BD: FLdPr Me
  loc_A7E9C0: MemLdRfVar from_stack_1.htmFile
  loc_A7E9C3: LdPrVar
  loc_A7E9C5: LateMemCall
  loc_A7E9CB: FFree1Var var_CC = ""
  loc_A7E9CE: LitI4 0
  loc_A7E9D3: LitI4 0
  loc_A7E9D8: LitI2_Byte 0
  loc_A7E9DA: LitStr "right"
  loc_A7E9DD: FMemLdR4 var_B4(12)
  loc_A7E9E2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7E9E7: CVarStr var_CC
  loc_A7E9EA: PopAdLdVar
  loc_A7E9EB: FLdPr Me
  loc_A7E9EE: MemLdRfVar from_stack_1.htmFile
  loc_A7E9F1: LdPrVar
  loc_A7E9F3: LateMemCall
  loc_A7E9F9: FFree1Var var_CC = ""
  loc_A7E9FC: LitI4 0
  loc_A7EA01: LitI4 0
  loc_A7EA06: LitI2_Byte 0
  loc_A7EA08: LitStr "right"
  loc_A7EA0B: FMemLdR4 var_B4(16)
  loc_A7EA10: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EA15: CVarStr var_CC
  loc_A7EA18: PopAdLdVar
  loc_A7EA19: FLdPr Me
  loc_A7EA1C: MemLdRfVar from_stack_1.htmFile
  loc_A7EA1F: LdPrVar
  loc_A7EA21: LateMemCall
  loc_A7EA27: FFree1Var var_CC = ""
  loc_A7EA2A: LitI4 0
  loc_A7EA2F: LitI4 0
  loc_A7EA34: LitI2_Byte 0
  loc_A7EA36: LitStr "right"
  loc_A7EA39: FMemLdR4 var_B4(20)
  loc_A7EA3E: LitStr "("
  loc_A7EA41: ConcatStr
  loc_A7EA42: FStStrNoPop var_B8
  loc_A7EA45: FMemLdR4 var_B4(24)
  loc_A7EA4A: ConcatStr
  loc_A7EA4B: FStStrNoPop var_BC
  loc_A7EA4E: LitStr ")"
  loc_A7EA51: ConcatStr
  loc_A7EA52: FStStrNoPop var_D0
  loc_A7EA55: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EA5A: CVarStr var_CC
  loc_A7EA5D: PopAdLdVar
  loc_A7EA5E: FLdPr Me
  loc_A7EA61: MemLdRfVar from_stack_1.htmFile
  loc_A7EA64: LdPrVar
  loc_A7EA66: LateMemCall
  loc_A7EA6C: FFreeStr var_B8 = "": var_BC = ""
  loc_A7EA75: FFree1Var var_CC = ""
  loc_A7EA78: LitI4 0
  loc_A7EA7D: LitI4 0
  loc_A7EA82: LitI2_Byte 0
  loc_A7EA84: LitStr "right"
  loc_A7EA87: FMemLdR4 var_B4(28)
  loc_A7EA8C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EA91: CVarStr var_CC
  loc_A7EA94: PopAdLdVar
  loc_A7EA95: FLdPr Me
  loc_A7EA98: MemLdRfVar from_stack_1.htmFile
  loc_A7EA9B: LdPrVar
  loc_A7EA9D: LateMemCall
  loc_A7EAA3: FFree1Var var_CC = ""
  loc_A7EAA6: LitI4 0
  loc_A7EAAB: LitI4 0
  loc_A7EAB0: LitI2_Byte 0
  loc_A7EAB2: LitStr "right"
  loc_A7EAB5: FMemLdR4 var_B4(32)
  loc_A7EABA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EABF: CVarStr var_CC
  loc_A7EAC2: PopAdLdVar
  loc_A7EAC3: FLdPr Me
  loc_A7EAC6: MemLdRfVar from_stack_1.htmFile
  loc_A7EAC9: LdPrVar
  loc_A7EACB: LateMemCall
  loc_A7EAD1: FFree1Var var_CC = ""
  loc_A7EAD4: LitI4 0
  loc_A7EAD9: LitI4 0
  loc_A7EADE: LitI2_Byte 0
  loc_A7EAE0: LitStr "right"
  loc_A7EAE3: FMemLdR4 var_B4(36)
  loc_A7EAE8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EAED: CVarStr var_CC
  loc_A7EAF0: PopAdLdVar
  loc_A7EAF1: FLdPr Me
  loc_A7EAF4: MemLdRfVar from_stack_1.htmFile
  loc_A7EAF7: LdPrVar
  loc_A7EAF9: LateMemCall
  loc_A7EAFF: FFree1Var var_CC = ""
  loc_A7EB02: LitI4 0
  loc_A7EB07: LitI4 0
  loc_A7EB0C: LitI2_Byte 0
  loc_A7EB0E: LitStr "right"
  loc_A7EB11: FMemLdR4 var_B4(40)
  loc_A7EB16: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EB1B: CVarStr var_CC
  loc_A7EB1E: PopAdLdVar
  loc_A7EB1F: FLdPr Me
  loc_A7EB22: MemLdRfVar from_stack_1.htmFile
  loc_A7EB25: LdPrVar
  loc_A7EB27: LateMemCall
  loc_A7EB2D: FFree1Var var_CC = ""
  loc_A7EB30: LitI4 0
  loc_A7EB35: LitI4 0
  loc_A7EB3A: LitI2_Byte 0
  loc_A7EB3C: LitStr "left"
  loc_A7EB3F: FMemLdR4 var_B4(44)
  loc_A7EB44: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EB49: CVarStr var_CC
  loc_A7EB4C: PopAdLdVar
  loc_A7EB4D: FLdPr Me
  loc_A7EB50: MemLdRfVar from_stack_1.htmFile
  loc_A7EB53: LdPrVar
  loc_A7EB55: LateMemCall
  loc_A7EB5B: FFree1Var var_CC = ""
  loc_A7EB5E: LitStr "Municipalidad de Guaymallén"
  loc_A7EB61: LitStr "Municipalidad de Lavalle"
  loc_A7EB64: EqStr
  loc_A7EB66: BranchF loc_A7EBC5
  loc_A7EB69: LitI4 0
  loc_A7EB6E: LitI4 0
  loc_A7EB73: LitI2_Byte 0
  loc_A7EB75: LitStr "left"
  loc_A7EB78: FMemLdR4 var_B4(48)
  loc_A7EB7D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EB82: CVarStr var_CC
  loc_A7EB85: PopAdLdVar
  loc_A7EB86: FLdPr Me
  loc_A7EB89: MemLdRfVar from_stack_1.htmFile
  loc_A7EB8C: LdPrVar
  loc_A7EB8E: LateMemCall
  loc_A7EB94: FFree1Var var_CC = ""
  loc_A7EB97: LitI4 0
  loc_A7EB9C: LitI4 0
  loc_A7EBA1: LitI2_Byte 0
  loc_A7EBA3: LitStr "left"
  loc_A7EBA6: FMemLdR4 var_B4(52)
  loc_A7EBAB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EBB0: CVarStr var_CC
  loc_A7EBB3: PopAdLdVar
  loc_A7EBB4: FLdPr Me
  loc_A7EBB7: MemLdRfVar from_stack_1.htmFile
  loc_A7EBBA: LdPrVar
  loc_A7EBBC: LateMemCall
  loc_A7EBC2: FFree1Var var_CC = ""
  loc_A7EBC5: LitI4 0
  loc_A7EBCA: LitI4 0
  loc_A7EBCF: LitI2_Byte 0
  loc_A7EBD1: LitStr "right"
  loc_A7EBD4: FMemLdR4 var_B4(56)
  loc_A7EBD9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EBDE: CVarStr var_CC
  loc_A7EBE1: PopAdLdVar
  loc_A7EBE2: FLdPr Me
  loc_A7EBE5: MemLdRfVar from_stack_1.htmFile
  loc_A7EBE8: LdPrVar
  loc_A7EBEA: LateMemCall
  loc_A7EBF0: FFree1Var var_CC = ""
  loc_A7EBF3: LitI4 0
  loc_A7EBF8: LitI4 0
  loc_A7EBFD: LitI2_Byte 0
  loc_A7EBFF: LitStr "right"
  loc_A7EC02: FMemLdR4 var_B4(60)
  loc_A7EC07: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7EC0C: CVarStr var_CC
  loc_A7EC0F: PopAdLdVar
  loc_A7EC10: FLdPr Me
  loc_A7EC13: MemLdRfVar from_stack_1.htmFile
  loc_A7EC16: LdPrVar
  loc_A7EC18: LateMemCall
  loc_A7EC1E: FFree1Var var_CC = ""
  loc_A7EC21: LitI4 0
  loc_A7EC26: FStR4 var_B4
  loc_A7EC29: AryUnlock
  loc_A7EC2C: LitVarStr var_9C, "     </tr>"
  loc_A7EC31: PopAdLdVar
  loc_A7EC32: FLdPr Me
  loc_A7EC35: MemLdRfVar from_stack_1.htmFile
  loc_A7EC38: LdPrVar
  loc_A7EC3A: LateMemCall
  loc_A7EC40: FLdPr Me
  loc_A7EC43: MemLdRfVar from_stack_1.global_88
  loc_A7EC46: NextI2 var_8C, loc_A7E933
  loc_A7EC4B: LitVarStr var_9C, "   <tr class=""Totales"" align=""right"">"
  loc_A7EC50: PopAdLdVar
  loc_A7EC51: FLdPr Me
  loc_A7EC54: MemLdRfVar from_stack_1.htmFile
  loc_A7EC57: LdPrVar
  loc_A7EC59: LateMemCall
  loc_A7EC5F: LitStr "Municipalidad de Guaymallén"
  loc_A7EC62: LitStr "Municipalidad de Lavalle"
  loc_A7EC65: EqStr
  loc_A7EC67: BranchF loc_A7EC81
  loc_A7EC6A: LitVarStr var_9C, "     <td colspan=""13"">Total</td>"
  loc_A7EC6F: PopAdLdVar
  loc_A7EC70: FLdPr Me
  loc_A7EC73: MemLdRfVar from_stack_1.htmFile
  loc_A7EC76: LdPrVar
  loc_A7EC78: LateMemCall
  loc_A7EC7E: Branch loc_A7EC95
  loc_A7EC81: LitVarStr var_9C, "     <td colspan=""11"">Total</td>"
  loc_A7EC86: PopAdLdVar
  loc_A7EC87: FLdPr Me
  loc_A7EC8A: MemLdRfVar from_stack_1.htmFile
  loc_A7EC8D: LdPrVar
  loc_A7EC8F: LateMemCall
  loc_A7EC95: LitStr "     <td>"
  loc_A7EC98: FLdPr Me
  loc_A7EC9B: MemLdStr global_84
  loc_A7EC9E: ConcatStr
  loc_A7EC9F: FStStrNoPop var_B8
  loc_A7ECA2: LitStr "</td>"
  loc_A7ECA5: ConcatStr
  loc_A7ECA6: CVarStr var_CC
  loc_A7ECA9: PopAdLdVar
  loc_A7ECAA: FLdPr Me
  loc_A7ECAD: MemLdRfVar from_stack_1.htmFile
  loc_A7ECB0: LdPrVar
  loc_A7ECB2: LateMemCall
  loc_A7ECB8: FFree1Str var_B8
  loc_A7ECBB: FFree1Var var_CC = ""
  loc_A7ECBE: LitVarStr var_9C, "     </tr>"
  loc_A7ECC3: PopAdLdVar
  loc_A7ECC4: FLdPr Me
  loc_A7ECC7: MemLdRfVar from_stack_1.htmFile
  loc_A7ECCA: LdPrVar
  loc_A7ECCC: LateMemCall
  loc_A7ECD2: Call Proc_189_36_982EE0()
  loc_A7ECD7: FLdPr Me
  loc_A7ECDA: MemLdRfVar from_stack_1.htmFile
  loc_A7ECDD: LdPrVar
  loc_A7ECDF: LateMemCall
  loc_A7ECE5: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A7ECEA: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9518A4
  'Data Table: 4D6F6C
  loc_95188C: LitI2_Byte 0
  loc_95188E: FLdPr Me
  loc_951891: MemStI2 bLogos
  loc_951894: Call GeneraHTML()
  loc_951899: LitI2_Byte &HFF
  loc_95189B: FLdPr Me
  loc_95189E: MemStI2 bLogos
  loc_9518A1: ExitProcHresult
  loc_9518A2: CDateR8
End Sub

Public Sub GeneraReporte() 'B97ED0
  'Data Table: 4D6F6C
  loc_B970A0: OnErrorGoto loc_B97E6A
  loc_B970A3: FLdPr Me
  loc_B970A6: MemLdI2 bGenerado
  loc_B970A9: BranchF loc_B970AD
  loc_B970AC: ExitProcHresult
  loc_B970AD: LitVarStr var_B0, "Generando reporte..."
  loc_B970B2: PopAdLdVar
  loc_B970B3: FLdPr Me
  loc_B970B6: VCallAd Control_ID_statusBar
  loc_B970B9: FStAdFunc var_C4
  loc_B970BC: FLdPr var_C4
  loc_B970BF: LateIdSt
  loc_B970C4: FFree1Ad var_C4
  loc_B970C7: LitI4 &HB
  loc_B970CC: CI2I4
  loc_B970CD: FLdPr Me
  loc_B970D0: Me.MousePointer = from_stack_1
  loc_B970D5: LitI2_Byte 0
  loc_B970D7: PopTmpLdAd2 var_C6
  loc_B970DA: from_stack_2v = CodiBancMsk_UnknownEvent_8(from_stack_1v)
  loc_B970DF: FLdPr Me
  loc_B970E2: MemLdStr global_92
  loc_B970E5: LitStr vbNullString
  loc_B970E8: NeStr
  loc_B970EA: BranchF loc_B970F0
  loc_B970ED: Branch loc_B97E41
  loc_B970F0: LitI2_Byte 0
  loc_B970F2: PopTmpLdAd2 var_C6
  loc_B970F5: from_stack_2v = FechaDesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_B970FA: FLdPr Me
  loc_B970FD: MemLdStr global_92
  loc_B97100: LitStr vbNullString
  loc_B97103: NeStr
  loc_B97105: BranchF loc_B9710B
  loc_B97108: Branch loc_B97E41
  loc_B9710B: LitI2_Byte 0
  loc_B9710D: PopTmpLdAd2 var_C6
  loc_B97110: from_stack_2v = FechaHastaMsk_UnknownEvent_8(from_stack_1v)
  loc_B97115: FLdPr Me
  loc_B97118: MemLdStr global_92
  loc_B9711B: LitStr vbNullString
  loc_B9711E: NeStr
  loc_B97120: BranchF loc_B97126
  loc_B97123: Branch loc_B97E41
  loc_B97126: LitI2_Byte 0
  loc_B97128: PopTmpLdAd2 var_C6
  loc_B9712B: Call OrdeCheqTxt_Validate(from_stack_1v)
  loc_B97130: FLdPr Me
  loc_B97133: MemLdStr global_92
  loc_B97136: LitStr vbNullString
  loc_B97139: NeStr
  loc_B9713B: BranchF loc_B97141
  loc_B9713E: Branch loc_B97E41
  loc_B97141: FLdPr Me
  loc_B97144: VCallAd Control_ID_CodiBancMsk
  loc_B97147: FStAdFunc var_C4
  loc_B9714A: FLdPr var_C4
  loc_B9714D: LateIdLdVar var_D8 DispID_22 0
  loc_B97154: PopAd
  loc_B97156: FLdPr Me
  loc_B97159: VCallAd Control_ID_CodiBancMsk
  loc_B9715C: FStAdFunc var_E0
  loc_B9715F: FLdPr var_E0
  loc_B97162: LateIdLdVar var_F0 DispID_22 0
  loc_B97169: PopAd
  loc_B9716B: LitVarStr var_C0, vbNullString
  loc_B97170: FStVarCopyObj var_114
  loc_B97173: FLdRfVar var_114
  loc_B97176: LitStr " AND ch.CodiBanc = "
  loc_B97179: FLdRfVar var_F0
  loc_B9717C: CStrVarTmp
  loc_B9717D: FStStrNoPop var_F4
  loc_B97180: ConcatStr
  loc_B97181: CVarStr var_104
  loc_B97184: FLdRfVar var_D8
  loc_B97187: CStrVarTmp
  loc_B97188: FStStrNoPop var_DC
  loc_B9718B: LitStr vbNullString
  loc_B9718E: NeStr
  loc_B97190: CVarBoolI2 var_B0
  loc_B97194: FLdRfVar var_124
  loc_B97197: ImpAdCallFPR4  = IIf(, , )
  loc_B9719C: FLdRfVar var_124
  loc_B9719F: CStrVarTmp
  loc_B971A0: FStStr var_88
  loc_B971A3: FFreeStr var_DC = ""
  loc_B971AA: FFreeAd var_C4 = ""
  loc_B971B1: FFreeVar var_D8 = "": var_F0 = "": var_B0 = "": var_104 = "": var_114 = ""
  loc_B971C0: FLdRfVar var_DC
  loc_B971C3: FLdPr Me
  loc_B971C6: VCallAd Control_ID_OrdeCheqTxt
  loc_B971C9: FStAdFunc var_C4
  loc_B971CC: FLdPr var_C4
  loc_B971CF:  = Me.Text
  loc_B971D4: FLdRfVar var_F4
  loc_B971D7: FLdPr Me
  loc_B971DA: VCallAd Control_ID_OrdeCheqTxt
  loc_B971DD: FStAdFunc var_E0
  loc_B971E0: FLdPr var_E0
  loc_B971E3:  = Me.Text
  loc_B971E8: LitI4 0
  loc_B971ED: LitI4 -1
  loc_B971F2: LitI4 1
  loc_B971F7: LitStr Chr(37)
  loc_B971FA: LitStr " "
  loc_B971FD: ILdRf var_F4
  loc_B97200: ImpAdCallI2 Replace(, , , , , )
  loc_B97205: FStStr var_130
  loc_B97208: LitVarStr var_C0, vbNullString
  loc_B9720D: FStVarCopyObj var_F0
  loc_B97210: FLdRfVar var_F0
  loc_B97213: LitStr " AND ch.OrdeCheq LIKE '" & Chr(37)
  loc_B97216: FLdZeroAd var_130
  loc_B97219: FStStrNoPop var_128
  loc_B9721C: ConcatStr
  loc_B9721D: FStStrNoPop var_12C
  loc_B97220: LitStr Chr(37) & "' "
  loc_B97223: ConcatStr
  loc_B97224: CVarStr var_D8
  loc_B97227: ILdRf var_DC
  loc_B9722A: LitStr vbNullString
  loc_B9722D: NeStr
  loc_B9722F: CVarBoolI2 var_B0
  loc_B97233: FLdRfVar var_104
  loc_B97236: ImpAdCallFPR4  = IIf(, , )
  loc_B9723B: FLdRfVar var_104
  loc_B9723E: CStrVarTmp
  loc_B9723F: FStStr var_9C
  loc_B97242: FFreeStr var_DC = "": var_F4 = "": var_128 = "": var_12C = ""
  loc_B9724F: FFreeAd var_C4 = ""
  loc_B97256: FFreeVar var_B0 = "": var_D8 = "": var_F0 = ""
  loc_B97261: FLdPr Me
  loc_B97264: VCallAd Control_ID_FechCheqOpt
  loc_B97267: CVarAd
  loc_B9726B: CBoolVarNull
  loc_B9726D: FFree1Var var_D8 = ""
  loc_B97270: BranchF loc_B9727C
  loc_B97273: LitStr "FechCheq"
  loc_B97276: FStStrCopy var_8C
  loc_B97279: Branch loc_B972B8
  loc_B9727C: FLdPr Me
  loc_B9727F: VCallAd Control_ID_FereCheqOpt
  loc_B97282: CVarAd
  loc_B97286: CBoolVarNull
  loc_B97288: FFree1Var var_D8 = ""
  loc_B9728B: BranchF loc_B97297
  loc_B9728E: LitStr "FereCheq"
  loc_B97291: FStStrCopy var_8C
  loc_B97294: Branch loc_B972B8
  loc_B97297: FLdPr Me
  loc_B9729A: VCallAd Control_ID_FepaCheqOpt
  loc_B9729D: CVarAd
  loc_B972A1: CBoolVarNull
  loc_B972A3: FFree1Var var_D8 = ""
  loc_B972A6: BranchF loc_B972B2
  loc_B972A9: LitStr "FepaCheq"
  loc_B972AC: FStStrCopy var_8C
  loc_B972AF: Branch loc_B972B8
  loc_B972B2: LitStr "FeanCheq"
  loc_B972B5: FStStrCopy var_8C
  loc_B972B8: FLdPr Me
  loc_B972BB: VCallAd Control_ID_optMPtodos
  loc_B972BE: CVarAd
  loc_B972C2: CBoolVarNull
  loc_B972C4: FFree1Var var_D8 = ""
  loc_B972C7: BranchF loc_B972D3
  loc_B972CA: LitStr " AND AutoCheq IN (1,2,3)"
  loc_B972CD: FStStrCopy var_A0
  loc_B972D0: Branch loc_B9732A
  loc_B972D3: FLdPr Me
  loc_B972D6: VCallAd Control_ID_optMPchequemanual
  loc_B972D9: CVarAd
  loc_B972DD: CBoolVarNull
  loc_B972DF: FFree1Var var_D8 = ""
  loc_B972E2: BranchF loc_B972EE
  loc_B972E5: LitStr " AND AutoCheq IN (1)"
  loc_B972E8: FStStrCopy var_A0
  loc_B972EB: Branch loc_B9732A
  loc_B972EE: FLdPr Me
  loc_B972F1: VCallAd Control_ID_optMPchequeimpreso
  loc_B972F4: CVarAd
  loc_B972F8: CBoolVarNull
  loc_B972FA: FFree1Var var_D8 = ""
  loc_B972FD: BranchF loc_B97309
  loc_B97300: LitStr " AND AutoCheq IN (2)"
  loc_B97303: FStStrCopy var_A0
  loc_B97306: Branch loc_B9732A
  loc_B97309: FLdPr Me
  loc_B9730C: VCallAd Control_ID_optMPtransferencia
  loc_B9730F: CVarAd
  loc_B97313: CBoolVarNull
  loc_B97315: FFree1Var var_D8 = ""
  loc_B97318: BranchF loc_B97324
  loc_B9731B: LitStr " AND AutoCheq IN (3)"
  loc_B9731E: FStStrCopy var_A0
  loc_B97321: Branch loc_B9732A
  loc_B97324: LitStr vbNullString
  loc_B97327: FStStrCopy var_A0
  loc_B9732A: FLdPr Me
  loc_B9732D: VCallAd Control_ID_FechaDesdeMsk
  loc_B97330: FStAdFunc var_C4
  loc_B97333: FLdPr var_C4
  loc_B97336: LateIdLdVar var_D8 DispID_15 0
  loc_B9733D: PopAd
  loc_B9733F: FLdPr Me
  loc_B97342: VCallAd Control_ID_FechaHastaMsk
  loc_B97345: FStAdFunc var_E0
  loc_B97348: FLdPr var_E0
  loc_B9734B: LateIdLdVar var_160 DispID_15 0
  loc_B97352: PopAd
  loc_B97354: LitVarStr var_C0, " BETWEEN "
  loc_B97359: LitI4 1
  loc_B9735E: LitI4 1
  loc_B97363: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_B97368: FStVarCopyObj var_104
  loc_B9736B: FLdRfVar var_104
  loc_B9736E: FLdRfVar var_D8
  loc_B97371: CStrVarTmp
  loc_B97372: CVarStr var_F0
  loc_B97375: FLdRfVar var_114
  loc_B97378: ImpAdCallFPR4  = Format(, )
  loc_B9737D: FLdRfVar var_114
  loc_B97380: ConcatVar var_124
  loc_B97384: LitVarStr var_140, " AND "
  loc_B97389: ConcatVar var_150
  loc_B9738D: LitI4 1
  loc_B97392: LitI4 1
  loc_B97397: LitVarStr var_180, "'yyyy-mm-dd'"
  loc_B9739C: FStVarCopyObj var_190
  loc_B9739F: FLdRfVar var_190
  loc_B973A2: FLdRfVar var_160
  loc_B973A5: CStrVarTmp
  loc_B973A6: CVarStr var_170
  loc_B973A9: FLdRfVar var_1A0
  loc_B973AC: ImpAdCallFPR4  = Format(, )
  loc_B973B1: FLdRfVar var_1A0
  loc_B973B4: ConcatVar var_1B0
  loc_B973B8: CStrVarTmp
  loc_B973B9: FStStr var_90
  loc_B973BC: FFreeAd var_C4 = ""
  loc_B973C3: FFreeVar var_D8 = "": var_F0 = "": var_104 = "": var_114 = "": var_124 = "": var_160 = "": var_170 = "": var_190 = "": var_150 = "": var_1A0 = ""
  loc_B973DC: FLdRfVar var_C6
  loc_B973DF: FLdPr Me
  loc_B973E2: VCallAd Control_ID_IncluyeAnuladosChk
  loc_B973E5: FStAdFunc var_C4
  loc_B973E8: FLdPr var_C4
  loc_B973EB:  = Me.Value
  loc_B973F0: LitVarStr var_140, " AND FeanCheq is null"
  loc_B973F5: FStVarCopyObj var_F0
  loc_B973F8: FLdRfVar var_F0
  loc_B973FB: LitVarStr var_C0, vbNullString
  loc_B97400: FStVarCopyObj var_D8
  loc_B97403: FLdRfVar var_D8
  loc_B97406: FLdI2 var_C6
  loc_B97409: CI4UI1
  loc_B9740A: LitI4 1
  loc_B9740F: EqI4
  loc_B97410: CVarBoolI2 var_B0
  loc_B97414: FLdRfVar var_104
  loc_B97417: ImpAdCallFPR4  = IIf(, , )
  loc_B9741C: FLdRfVar var_104
  loc_B9741F: CStrVarTmp
  loc_B97420: FStStr var_94
  loc_B97423: FFree1Ad var_C4
  loc_B97426: FFreeVar var_B0 = "": var_D8 = "": var_F0 = ""
  loc_B97431: FLdPr Me
  loc_B97434: VCallAd Control_ID_BancoOpt
  loc_B97437: CVarAd
  loc_B9743B: CBoolVarNull
  loc_B9743D: FFree1Var var_D8 = ""
  loc_B97440: BranchF loc_B9744C
  loc_B97443: LitStr "ch.CodiBanc"
  loc_B97446: FStStrCopy var_98
  loc_B97449: Branch loc_B97488
  loc_B9744C: FLdPr Me
  loc_B9744F: VCallAd Control_ID_NúmeroOpt
  loc_B97452: CVarAd
  loc_B97456: CBoolVarNull
  loc_B97458: FFree1Var var_D8 = ""
  loc_B9745B: BranchF loc_B97467
  loc_B9745E: LitStr "NumeMoba"
  loc_B97461: FStStrCopy var_98
  loc_B97464: Branch loc_B97488
  loc_B97467: FLdPr Me
  loc_B9746A: VCallAd Control_ID_OrdenPagoOpt
  loc_B9746D: CVarAd
  loc_B97471: CBoolVarNull
  loc_B97473: FFree1Var var_D8 = ""
  loc_B97476: BranchF loc_B97482
  loc_B97479: LitStr "NumeOrpa"
  loc_B9747C: FStStrCopy var_98
  loc_B9747F: Branch loc_B97488
  loc_B97482: LitStr "FechCheq"
  loc_B97485: FStStrCopy var_98
  loc_B97488: FLdPr Me
  loc_B9748B: VCallAd Control_ID_FereCheqOpt
  loc_B9748E: CVarAd
  loc_B97492: CBoolVarNull
  loc_B97494: FFree1Var var_D8 = ""
  loc_B97497: BranchF loc_B97599
  loc_B9749A: LitStr "SELECT ch.*, DetaBanc, IFNULL(a.NombArtra,'') NombArtra, CubaProv"
  loc_B9749D: LitStr " FROM cheque ch"
  loc_B974A0: ConcatStr
  loc_B974A1: FStStrNoPop var_DC
  loc_B974A4: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_B974A7: ConcatStr
  loc_B974A8: FStStrNoPop var_F4
  loc_B974AB: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = ch.PeriInfo AND o.NumeOrpa = ch.NumeOrpa"
  loc_B974AE: ConcatStr
  loc_B974AF: FStStrNoPop var_128
  loc_B974B2: LitStr " LEFT JOIN banco b on b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B974B5: ConcatStr
  loc_B974B6: FStStrNoPop var_12C
  loc_B974B9: LitStr " LEFT JOIN archtranfdeta atd ON atd.IdArtrad = ch.IdArtrad"
  loc_B974BC: ConcatStr
  loc_B974BD: FStStrNoPop var_130
  loc_B974C0: LitStr " LEFT JOIN archtranf a ON a.IdArtra = atd.IdArtra"
  loc_B974C3: ConcatStr
  loc_B974C4: FStStrNoPop var_1B4
  loc_B974C7: LitStr " WHERE ch.PeriInfo = "
  loc_B974CA: ConcatStr
  loc_B974CB: FStStrNoPop var_1BC
  loc_B974CE: FLdRfVar var_1B8
  loc_B974D1: FLdPr Me
  loc_B974D4: VCallAd Control_ID_PeriodoCbo
  loc_B974D7: FStAdFunc var_C4
  loc_B974DA: FLdPr var_C4
  loc_B974DD:  = Me.Text
  loc_B974E2: ILdRf var_1B8
  loc_B974E5: ConcatStr
  loc_B974E6: FStStrNoPop var_1C0
  loc_B974E9: LitStr " AND ch.CodiBanc > 0"
  loc_B974EC: ConcatStr
  loc_B974ED: FStStrNoPop var_1C4
  loc_B974F0: LitStr " AND ((AutoCheq IN (1,2) AND NumeMoba > 0 AND "
  loc_B974F3: ConcatStr
  loc_B974F4: FStStrNoPop var_1C8
  loc_B974F7: ILdRf var_8C
  loc_B974FA: ConcatStr
  loc_B974FB: FStStrNoPop var_1CC
  loc_B974FE: ILdRf var_90
  loc_B97501: ConcatStr
  loc_B97502: FStStrNoPop var_1D0
  loc_B97505: LitStr " )"
  loc_B97508: ConcatStr
  loc_B97509: FStStrNoPop var_1D4
  loc_B9750C: LitStr " OR (AutoCheq = 3 AND NumeMoba >= 0 AND FereOrpa "
  loc_B9750F: ConcatStr
  loc_B97510: FStStrNoPop var_1D8
  loc_B97513: ILdRf var_90
  loc_B97516: ConcatStr
  loc_B97517: FStStrNoPop var_1DC
  loc_B9751A: LitStr "))"
  loc_B9751D: ConcatStr
  loc_B9751E: FStStrNoPop var_1E0
  loc_B97521: ILdRf var_88
  loc_B97524: ConcatStr
  loc_B97525: FStStrNoPop var_1E4
  loc_B97528: ILdRf var_94
  loc_B9752B: ConcatStr
  loc_B9752C: FStStrNoPop var_1E8
  loc_B9752F: ILdRf var_A0
  loc_B97532: ConcatStr
  loc_B97533: FStStrNoPop var_1EC
  loc_B97536: ILdRf var_9C
  loc_B97539: ConcatStr
  loc_B9753A: FStStrNoPop var_1F0
  loc_B9753D: LitStr " ORDER BY "
  loc_B97540: ConcatStr
  loc_B97541: FStStrNoPop var_1F4
  loc_B97544: ILdRf var_98
  loc_B97547: ConcatStr
  loc_B97548: FStStrNoPop var_1F8
  loc_B9754B: LitStr ";"
  loc_B9754E: ConcatStr
  loc_B9754F: FStStrNoPop var_1FC
  loc_B97552: FLdPr Me
  loc_B97555: MemLdRfVar from_stack_1.global_72
  loc_B97558: NewIfNullPr clscheque
  loc_B9755B: Call clscheque.RedefineRS(from_stack_1v)
  loc_B97560: FFreeStr var_DC = "": var_F4 = "": var_128 = "": var_12C = "": var_130 = "": var_1B4 = "": var_1BC = "": var_1B8 = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = "": var_1EC = "": var_1F0 = "": var_1F4 = "": var_1F8 = ""
  loc_B97593: FFree1Ad var_C4
  loc_B97596: Branch loc_B97671
  loc_B97599: LitStr "SELECT ch.*, DetaBanc, IFNULL(a.NombArtra,'') NombArtra, CubaProv"
  loc_B9759C: LitStr " FROM cheque ch"
  loc_B9759F: ConcatStr
  loc_B975A0: FStStrNoPop var_DC
  loc_B975A3: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_B975A6: ConcatStr
  loc_B975A7: FStStrNoPop var_F4
  loc_B975AA: LitStr " LEFT JOIN banco b on b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B975AD: ConcatStr
  loc_B975AE: FStStrNoPop var_128
  loc_B975B1: LitStr " LEFT JOIN archtranfdeta atd ON atd.IdArtrad = ch.IdArtrad"
  loc_B975B4: ConcatStr
  loc_B975B5: FStStrNoPop var_12C
  loc_B975B8: LitStr " LEFT JOIN archtranf a ON a.IdArtra = atd.IdArtra"
  loc_B975BB: ConcatStr
  loc_B975BC: FStStrNoPop var_130
  loc_B975BF: LitStr " WHERE ch.PeriInfo = "
  loc_B975C2: ConcatStr
  loc_B975C3: FStStrNoPop var_1B8
  loc_B975C6: FLdRfVar var_1B4
  loc_B975C9: FLdPr Me
  loc_B975CC: VCallAd Control_ID_PeriodoCbo
  loc_B975CF: FStAdFunc var_C4
  loc_B975D2: FLdPr var_C4
  loc_B975D5:  = Me.Text
  loc_B975DA: ILdRf var_1B4
  loc_B975DD: ConcatStr
  loc_B975DE: FStStrNoPop var_1BC
  loc_B975E1: LitStr " AND ch.CodiBanc > 0"
  loc_B975E4: ConcatStr
  loc_B975E5: FStStrNoPop var_1C0
  loc_B975E8: LitStr " AND ((AutoCheq IN (1,2) AND NumeMoba > 0) OR (AutoCheq = 3 AND NumeMoba >= 0))"
  loc_B975EB: ConcatStr
  loc_B975EC: FStStrNoPop var_1C4
  loc_B975EF: ILdRf var_88
  loc_B975F2: ConcatStr
  loc_B975F3: FStStrNoPop var_1C8
  loc_B975F6: LitStr " AND "
  loc_B975F9: ConcatStr
  loc_B975FA: FStStrNoPop var_1CC
  loc_B975FD: ILdRf var_8C
  loc_B97600: ConcatStr
  loc_B97601: FStStrNoPop var_1D0
  loc_B97604: ILdRf var_90
  loc_B97607: ConcatStr
  loc_B97608: FStStrNoPop var_1D4
  loc_B9760B: ILdRf var_94
  loc_B9760E: ConcatStr
  loc_B9760F: FStStrNoPop var_1D8
  loc_B97612: ILdRf var_A0
  loc_B97615: ConcatStr
  loc_B97616: FStStrNoPop var_1DC
  loc_B97619: ILdRf var_9C
  loc_B9761C: ConcatStr
  loc_B9761D: FStStrNoPop var_1E0
  loc_B97620: LitStr " ORDER BY "
  loc_B97623: ConcatStr
  loc_B97624: FStStrNoPop var_1E4
  loc_B97627: ILdRf var_98
  loc_B9762A: ConcatStr
  loc_B9762B: FStStrNoPop var_1E8
  loc_B9762E: LitStr ";"
  loc_B97631: ConcatStr
  loc_B97632: FStStrNoPop var_1EC
  loc_B97635: FLdPr Me
  loc_B97638: MemLdRfVar from_stack_1.global_72
  loc_B9763B: NewIfNullPr clscheque
  loc_B9763E: Call clscheque.RedefineRS(from_stack_1v)
  loc_B97643: FFreeStr var_DC = "": var_F4 = "": var_128 = "": var_12C = "": var_130 = "": var_1B8 = "": var_1B4 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = ""
  loc_B9766E: FFree1Ad var_C4
  loc_B97671: FLdRfVar var_200
  loc_B97674: FLdPr Me
  loc_B97677: MemLdRfVar from_stack_1.global_72
  loc_B9767A: NewIfNullPr clscheque
  loc_B9767D: from_stack_1 = clscheque.RecordCount
  loc_B97682: ILdRf var_200
  loc_B97685: LitI4 0
  loc_B9768A: EqI4
  loc_B9768B: BranchF loc_B9769E
  loc_B9768E: LitI4 0
  loc_B97693: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B97696: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B9769B: Branch loc_B97E41
  loc_B9769E: LitI2_Byte 0
  loc_B976A0: LitVar_Missing var_D8
  loc_B976A3: LitI2_Byte &HFF
  loc_B976A5: LitVarI2 var_B0, 0
  loc_B976AA: PopAdLdVar
  loc_B976AB: FLdPr Me
  loc_B976AE: MemLdRfVar from_stack_1.global_84
  loc_B976B1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B976B6: FFree1Var var_D8 = ""
  loc_B976B9: FLdPr Me
  loc_B976BC: MemLdRfVar from_stack_1.global_72
  loc_B976BF: NewIfNullAd
  loc_B976C2: FStAd var_204 
  loc_B976C6: LitI4 0
  loc_B976CB: FLdRfVar var_200
  loc_B976CE: FLdPr var_204
  loc_B976D1: from_stack_1 = clscheque.RecordCount
  loc_B976D6: ILdRf var_200
  loc_B976D9: FLdPr Me
  loc_B976DC: MemLdRfVar from_stack_1.global_80
  loc_B976DF: Redim
  loc_B976E9: FLdPr var_204
  loc_B976EC: Call clscheque.MoveFirst()
  loc_B976F1: LitI2_Byte 1
  loc_B976F3: FLdPr Me
  loc_B976F6: MemLdRfVar from_stack_1.global_88
  loc_B976F9: FLdPr Me
  loc_B976FC: MemLdStr global_80
  loc_B976FF: LitI2_Byte 1
  loc_B97701: FnUBound
  loc_B97703: CI2I4
  loc_B97704: ForI2 var_208
  loc_B9770A: FLdRfVar var_20C
  loc_B9770D: LitVarStr var_B0, "CodiBanc"
  loc_B97712: PopAdLdVar
  loc_B97713: FLdRfVar var_E0
  loc_B97716: FLdRfVar var_C4
  loc_B97719: FLdPr var_204
  loc_B9771C: from_stack_1v = clscheque.RsFrmGet()
  loc_B97721: FLdPr var_C4
  loc_B97724:  = Me.Fields
  loc_B97729: FLdPr var_E0
  loc_B9772C: from_stack_2 = Me.Item(from_stack_1)
  loc_B97731: LitI2_Byte 0
  loc_B97733: LitVar_Missing var_F0
  loc_B97736: LitI2_Byte 0
  loc_B97738: FLdZeroAd var_20C
  loc_B9773B: CVarAd
  loc_B9773F: PopAdLdVar
  loc_B97740: FLdPr Me
  loc_B97743: MemLdI2 global_88
  loc_B97746: CI4UI1
  loc_B97747: FLdPr Me
  loc_B9774A: MemLdStr global_80
  loc_B9774D: AryLock
  loc_B97750: Ary1LdPr
  loc_B97751: MemLdRfVar from_stack_1.global_0
  loc_B97754: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97759: AryUnlock
  loc_B9775C: FFreeAd var_C4 = ""
  loc_B97763: FFreeVar var_D8 = ""
  loc_B9776A: FLdRfVar var_20C
  loc_B9776D: LitVarStr var_B0, "DetaBanc"
  loc_B97772: PopAdLdVar
  loc_B97773: FLdRfVar var_E0
  loc_B97776: FLdRfVar var_C4
  loc_B97779: FLdPr var_204
  loc_B9777C: from_stack_1v = clscheque.RsFrmGet()
  loc_B97781: FLdPr var_C4
  loc_B97784:  = Me.Fields
  loc_B97789: FLdPr var_E0
  loc_B9778C: from_stack_2 = Me.Item(from_stack_1)
  loc_B97791: LitI2_Byte 0
  loc_B97793: LitVar_Missing var_F0
  loc_B97796: LitI2_Byte 0
  loc_B97798: FLdZeroAd var_20C
  loc_B9779B: CVarAd
  loc_B9779F: PopAdLdVar
  loc_B977A0: FLdPr Me
  loc_B977A3: MemLdI2 global_88
  loc_B977A6: CI4UI1
  loc_B977A7: FLdPr Me
  loc_B977AA: MemLdStr global_80
  loc_B977AD: AryLock
  loc_B977B0: Ary1LdPr
  loc_B977B1: MemLdRfVar from_stack_1.global_4
  loc_B977B4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B977B9: AryUnlock
  loc_B977BC: FFreeAd var_C4 = ""
  loc_B977C3: FFreeVar var_D8 = ""
  loc_B977CA: FLdRfVar var_D8
  loc_B977CD: FLdRfVar var_20C
  loc_B977D0: LitVarStr var_B0, "NumeMoba"
  loc_B977D5: PopAdLdVar
  loc_B977D6: FLdRfVar var_E0
  loc_B977D9: FLdRfVar var_C4
  loc_B977DC: FLdPr var_204
  loc_B977DF: from_stack_1v = clscheque.RsFrmGet()
  loc_B977E4: FLdPr var_C4
  loc_B977E7:  = Me.Fields
  loc_B977EC: FLdPr var_E0
  loc_B977EF: from_stack_2 = Me.Item(from_stack_1)
  loc_B977F4: FLdPr var_20C
  loc_B977F7:  = Me.Value
  loc_B977FC: FLdRfVar var_21C
  loc_B977FF: LitVarStr var_C0, "NumeMoba"
  loc_B97804: PopAdLdVar
  loc_B97805: FLdRfVar var_218
  loc_B97808: FLdRfVar var_214
  loc_B9780B: FLdPr var_204
  loc_B9780E: from_stack_1v = clscheque.RsFrmGet()
  loc_B97813: FLdPr var_214
  loc_B97816:  = Me.Fields
  loc_B9781B: FLdPr var_218
  loc_B9781E: from_stack_2 = Me.Item(from_stack_1)
  loc_B97823: LitVarStr var_180, "&nbsp;"
  loc_B97828: FStVarCopyObj var_104
  loc_B9782B: FLdRfVar var_104
  loc_B9782E: FLdZeroAd var_21C
  loc_B97831: CVarAd
  loc_B97835: FLdRfVar var_D8
  loc_B97838: FnCLngVar
  loc_B9783A: LitI4 0
  loc_B9783F: NeI4
  loc_B97840: CVarBoolI2 var_140
  loc_B97844: FLdRfVar var_114
  loc_B97847: ImpAdCallFPR4  = IIf(, , )
  loc_B9784C: LitI2_Byte 0
  loc_B9784E: LitVar_Missing var_124
  loc_B97851: LitI2_Byte 0
  loc_B97853: FLdVar var_114
  loc_B97857: FLdPr Me
  loc_B9785A: MemLdI2 global_88
  loc_B9785D: CI4UI1
  loc_B9785E: FLdPr Me
  loc_B97861: MemLdStr global_80
  loc_B97864: AryLock
  loc_B97867: Ary1LdPr
  loc_B97868: MemLdRfVar from_stack_1.global_8
  loc_B9786B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97870: AryUnlock
  loc_B97873: FFreeAd var_C4 = "": var_E0 = "": var_20C = "": var_214 = ""
  loc_B97880: FFreeVar var_D8 = "": var_140 = "": var_F0 = "": var_104 = "": var_114 = ""
  loc_B9788F: FLdRfVar var_20C
  loc_B97892: LitVarStr var_B0, "NumeOrpa"
  loc_B97897: PopAdLdVar
  loc_B97898: FLdRfVar var_E0
  loc_B9789B: FLdRfVar var_C4
  loc_B9789E: FLdPr var_204
  loc_B978A1: from_stack_1v = clscheque.RsFrmGet()
  loc_B978A6: FLdPr var_C4
  loc_B978A9:  = Me.Fields
  loc_B978AE: FLdPr var_E0
  loc_B978B1: from_stack_2 = Me.Item(from_stack_1)
  loc_B978B6: LitI2_Byte 0
  loc_B978B8: LitVar_Missing var_F0
  loc_B978BB: LitI2_Byte 0
  loc_B978BD: FLdZeroAd var_20C
  loc_B978C0: CVarAd
  loc_B978C4: PopAdLdVar
  loc_B978C5: FLdPr Me
  loc_B978C8: MemLdI2 global_88
  loc_B978CB: CI4UI1
  loc_B978CC: FLdPr Me
  loc_B978CF: MemLdStr global_80
  loc_B978D2: AryLock
  loc_B978D5: Ary1LdPr
  loc_B978D6: MemLdRfVar from_stack_1.global_12
  loc_B978D9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B978DE: AryUnlock
  loc_B978E1: FFreeAd var_C4 = ""
  loc_B978E8: FFreeVar var_D8 = ""
  loc_B978EF: FLdRfVar var_20C
  loc_B978F2: LitVarStr var_B0, "NombArtra"
  loc_B978F7: PopAdLdVar
  loc_B978F8: FLdRfVar var_E0
  loc_B978FB: FLdRfVar var_C4
  loc_B978FE: FLdPr var_204
  loc_B97901: from_stack_1v = clscheque.RsFrmGet()
  loc_B97906: FLdPr var_C4
  loc_B97909:  = Me.Fields
  loc_B9790E: FLdPr var_E0
  loc_B97911: from_stack_2 = Me.Item(from_stack_1)
  loc_B97916: LitI2_Byte 0
  loc_B97918: LitVar_Missing var_F0
  loc_B9791B: LitI2_Byte 0
  loc_B9791D: FLdZeroAd var_20C
  loc_B97920: CVarAd
  loc_B97924: PopAdLdVar
  loc_B97925: FLdPr Me
  loc_B97928: MemLdI2 global_88
  loc_B9792B: CI4UI1
  loc_B9792C: FLdPr Me
  loc_B9792F: MemLdStr global_80
  loc_B97932: AryLock
  loc_B97935: Ary1LdPr
  loc_B97936: MemLdRfVar from_stack_1.global_16
  loc_B97939: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9793E: AryUnlock
  loc_B97941: FFreeAd var_C4 = ""
  loc_B97948: FFreeVar var_D8 = ""
  loc_B9794F: FLdRfVar var_20C
  loc_B97952: LitVarStr var_B0, "ExpeImpu"
  loc_B97957: PopAdLdVar
  loc_B97958: FLdRfVar var_E0
  loc_B9795B: FLdRfVar var_C4
  loc_B9795E: FLdPr var_204
  loc_B97961: from_stack_1v = clscheque.RsFrmGet()
  loc_B97966: FLdPr var_C4
  loc_B97969:  = Me.Fields
  loc_B9796E: FLdPr var_E0
  loc_B97971: from_stack_2 = Me.Item(from_stack_1)
  loc_B97976: LitI2_Byte 0
  loc_B97978: LitVar_Missing var_F0
  loc_B9797B: LitI2_Byte 0
  loc_B9797D: FLdZeroAd var_20C
  loc_B97980: CVarAd
  loc_B97984: PopAdLdVar
  loc_B97985: FLdPr Me
  loc_B97988: MemLdI2 global_88
  loc_B9798B: CI4UI1
  loc_B9798C: FLdPr Me
  loc_B9798F: MemLdStr global_80
  loc_B97992: AryLock
  loc_B97995: Ary1LdPr
  loc_B97996: MemLdRfVar from_stack_1.global_20
  loc_B97999: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B9799E: AryUnlock
  loc_B979A1: FFreeAd var_C4 = ""
  loc_B979A8: FFreeVar var_D8 = ""
  loc_B979AF: FLdRfVar var_20C
  loc_B979B2: LitVarStr var_B0, "NumeLiqu"
  loc_B979B7: PopAdLdVar
  loc_B979B8: FLdRfVar var_E0
  loc_B979BB: FLdRfVar var_C4
  loc_B979BE: FLdPr var_204
  loc_B979C1: from_stack_1v = clscheque.RsFrmGet()
  loc_B979C6: FLdPr var_C4
  loc_B979C9:  = Me.Fields
  loc_B979CE: FLdPr var_E0
  loc_B979D1: from_stack_2 = Me.Item(from_stack_1)
  loc_B979D6: LitI2_Byte 0
  loc_B979D8: LitVar_Missing var_F0
  loc_B979DB: LitI2_Byte 0
  loc_B979DD: FLdZeroAd var_20C
  loc_B979E0: CVarAd
  loc_B979E4: PopAdLdVar
  loc_B979E5: FLdPr Me
  loc_B979E8: MemLdI2 global_88
  loc_B979EB: CI4UI1
  loc_B979EC: FLdPr Me
  loc_B979EF: MemLdStr global_80
  loc_B979F2: AryLock
  loc_B979F5: Ary1LdPr
  loc_B979F6: MemLdRfVar from_stack_1.global_24
  loc_B979F9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B979FE: AryUnlock
  loc_B97A01: FFreeAd var_C4 = ""
  loc_B97A08: FFreeVar var_D8 = ""
  loc_B97A0F: FLdRfVar var_20C
  loc_B97A12: LitVarStr var_B0, "FechCheq"
  loc_B97A17: PopAdLdVar
  loc_B97A18: FLdRfVar var_E0
  loc_B97A1B: FLdRfVar var_C4
  loc_B97A1E: FLdPr var_204
  loc_B97A21: from_stack_1v = clscheque.RsFrmGet()
  loc_B97A26: FLdPr var_C4
  loc_B97A29:  = Me.Fields
  loc_B97A2E: FLdPr var_E0
  loc_B97A31: from_stack_2 = Me.Item(from_stack_1)
  loc_B97A36: LitI2_Byte 0
  loc_B97A38: LitVar_Missing var_F0
  loc_B97A3B: LitI2_Byte 0
  loc_B97A3D: FLdZeroAd var_20C
  loc_B97A40: CVarAd
  loc_B97A44: PopAdLdVar
  loc_B97A45: FLdPr Me
  loc_B97A48: MemLdI2 global_88
  loc_B97A4B: CI4UI1
  loc_B97A4C: FLdPr Me
  loc_B97A4F: MemLdStr global_80
  loc_B97A52: AryLock
  loc_B97A55: Ary1LdPr
  loc_B97A56: MemLdRfVar from_stack_1.global_28
  loc_B97A59: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97A5E: AryUnlock
  loc_B97A61: FFreeAd var_C4 = ""
  loc_B97A68: FFreeVar var_D8 = ""
  loc_B97A6F: FLdRfVar var_20C
  loc_B97A72: LitVarStr var_B0, "FereCheq"
  loc_B97A77: PopAdLdVar
  loc_B97A78: FLdRfVar var_E0
  loc_B97A7B: FLdRfVar var_C4
  loc_B97A7E: FLdPr var_204
  loc_B97A81: from_stack_1v = clscheque.RsFrmGet()
  loc_B97A86: FLdPr var_C4
  loc_B97A89:  = Me.Fields
  loc_B97A8E: FLdPr var_E0
  loc_B97A91: from_stack_2 = Me.Item(from_stack_1)
  loc_B97A96: LitI2_Byte 0
  loc_B97A98: LitVar_Missing var_F0
  loc_B97A9B: LitI2_Byte 0
  loc_B97A9D: FLdZeroAd var_20C
  loc_B97AA0: CVarAd
  loc_B97AA4: PopAdLdVar
  loc_B97AA5: FLdPr Me
  loc_B97AA8: MemLdI2 global_88
  loc_B97AAB: CI4UI1
  loc_B97AAC: FLdPr Me
  loc_B97AAF: MemLdStr global_80
  loc_B97AB2: AryLock
  loc_B97AB5: Ary1LdPr
  loc_B97AB6: MemLdRfVar from_stack_1.global_32
  loc_B97AB9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97ABE: AryUnlock
  loc_B97AC1: FFreeAd var_C4 = ""
  loc_B97AC8: FFreeVar var_D8 = ""
  loc_B97ACF: FLdRfVar var_20C
  loc_B97AD2: LitVarStr var_B0, "FepaCheq"
  loc_B97AD7: PopAdLdVar
  loc_B97AD8: FLdRfVar var_E0
  loc_B97ADB: FLdRfVar var_C4
  loc_B97ADE: FLdPr var_204
  loc_B97AE1: from_stack_1v = clscheque.RsFrmGet()
  loc_B97AE6: FLdPr var_C4
  loc_B97AE9:  = Me.Fields
  loc_B97AEE: FLdPr var_E0
  loc_B97AF1: from_stack_2 = Me.Item(from_stack_1)
  loc_B97AF6: LitI2_Byte 0
  loc_B97AF8: LitVar_Missing var_F0
  loc_B97AFB: LitI2_Byte 0
  loc_B97AFD: FLdZeroAd var_20C
  loc_B97B00: CVarAd
  loc_B97B04: PopAdLdVar
  loc_B97B05: FLdPr Me
  loc_B97B08: MemLdI2 global_88
  loc_B97B0B: CI4UI1
  loc_B97B0C: FLdPr Me
  loc_B97B0F: MemLdStr global_80
  loc_B97B12: AryLock
  loc_B97B15: Ary1LdPr
  loc_B97B16: MemLdRfVar from_stack_1.global_36
  loc_B97B19: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97B1E: AryUnlock
  loc_B97B21: FFreeAd var_C4 = ""
  loc_B97B28: FFreeVar var_D8 = ""
  loc_B97B2F: FLdRfVar var_20C
  loc_B97B32: LitVarStr var_B0, "FeanCheq"
  loc_B97B37: PopAdLdVar
  loc_B97B38: FLdRfVar var_E0
  loc_B97B3B: FLdRfVar var_C4
  loc_B97B3E: FLdPr var_204
  loc_B97B41: from_stack_1v = clscheque.RsFrmGet()
  loc_B97B46: FLdPr var_C4
  loc_B97B49:  = Me.Fields
  loc_B97B4E: FLdPr var_E0
  loc_B97B51: from_stack_2 = Me.Item(from_stack_1)
  loc_B97B56: LitI2_Byte 0
  loc_B97B58: LitVar_Missing var_F0
  loc_B97B5B: LitI2_Byte 0
  loc_B97B5D: FLdZeroAd var_20C
  loc_B97B60: CVarAd
  loc_B97B64: PopAdLdVar
  loc_B97B65: FLdPr Me
  loc_B97B68: MemLdI2 global_88
  loc_B97B6B: CI4UI1
  loc_B97B6C: FLdPr Me
  loc_B97B6F: MemLdStr global_80
  loc_B97B72: AryLock
  loc_B97B75: Ary1LdPr
  loc_B97B76: MemLdRfVar from_stack_1.global_40
  loc_B97B79: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97B7E: AryUnlock
  loc_B97B81: FFreeAd var_C4 = ""
  loc_B97B88: FFreeVar var_D8 = ""
  loc_B97B8F: FLdRfVar var_20C
  loc_B97B92: LitVarStr var_B0, "OrdeCheq"
  loc_B97B97: PopAdLdVar
  loc_B97B98: FLdRfVar var_E0
  loc_B97B9B: FLdRfVar var_C4
  loc_B97B9E: FLdPr var_204
  loc_B97BA1: from_stack_1v = clscheque.RsFrmGet()
  loc_B97BA6: FLdPr var_C4
  loc_B97BA9:  = Me.Fields
  loc_B97BAE: FLdPr var_E0
  loc_B97BB1: from_stack_2 = Me.Item(from_stack_1)
  loc_B97BB6: LitI2_Byte 0
  loc_B97BB8: LitVar_Missing var_F0
  loc_B97BBB: LitI2_Byte 0
  loc_B97BBD: FLdZeroAd var_20C
  loc_B97BC0: CVarAd
  loc_B97BC4: PopAdLdVar
  loc_B97BC5: FLdPr Me
  loc_B97BC8: MemLdI2 global_88
  loc_B97BCB: CI4UI1
  loc_B97BCC: FLdPr Me
  loc_B97BCF: MemLdStr global_80
  loc_B97BD2: AryLock
  loc_B97BD5: Ary1LdPr
  loc_B97BD6: MemLdRfVar from_stack_1.global_44
  loc_B97BD9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97BDE: AryUnlock
  loc_B97BE1: FFreeAd var_C4 = ""
  loc_B97BE8: FFreeVar var_D8 = ""
  loc_B97BEF: FLdRfVar var_20C
  loc_B97BF2: LitVarStr var_B0, "CucuPers"
  loc_B97BF7: PopAdLdVar
  loc_B97BF8: FLdRfVar var_E0
  loc_B97BFB: FLdRfVar var_C4
  loc_B97BFE: FLdPr var_204
  loc_B97C01: from_stack_1v = clscheque.RsFrmGet()
  loc_B97C06: FLdPr var_C4
  loc_B97C09:  = Me.Fields
  loc_B97C0E: FLdPr var_E0
  loc_B97C11: from_stack_2 = Me.Item(from_stack_1)
  loc_B97C16: LitI2_Byte 0
  loc_B97C18: LitVar_Missing var_F0
  loc_B97C1B: LitI2_Byte 0
  loc_B97C1D: FLdZeroAd var_20C
  loc_B97C20: CVarAd
  loc_B97C24: PopAdLdVar
  loc_B97C25: FLdPr Me
  loc_B97C28: MemLdI2 global_88
  loc_B97C2B: CI4UI1
  loc_B97C2C: FLdPr Me
  loc_B97C2F: MemLdStr global_80
  loc_B97C32: AryLock
  loc_B97C35: Ary1LdPr
  loc_B97C36: MemLdRfVar from_stack_1.global_48
  loc_B97C39: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97C3E: AryUnlock
  loc_B97C41: FFreeAd var_C4 = ""
  loc_B97C48: FFreeVar var_D8 = ""
  loc_B97C4F: FLdRfVar var_20C
  loc_B97C52: LitVarStr var_B0, "CubaProv"
  loc_B97C57: PopAdLdVar
  loc_B97C58: FLdRfVar var_E0
  loc_B97C5B: FLdRfVar var_C4
  loc_B97C5E: FLdPr var_204
  loc_B97C61: from_stack_1v = clscheque.RsFrmGet()
  loc_B97C66: FLdPr var_C4
  loc_B97C69:  = Me.Fields
  loc_B97C6E: FLdPr var_E0
  loc_B97C71: from_stack_2 = Me.Item(from_stack_1)
  loc_B97C76: LitI2_Byte 0
  loc_B97C78: LitVar_Missing var_F0
  loc_B97C7B: LitI2_Byte 0
  loc_B97C7D: FLdZeroAd var_20C
  loc_B97C80: CVarAd
  loc_B97C84: PopAdLdVar
  loc_B97C85: FLdPr Me
  loc_B97C88: MemLdI2 global_88
  loc_B97C8B: CI4UI1
  loc_B97C8C: FLdPr Me
  loc_B97C8F: MemLdStr global_80
  loc_B97C92: AryLock
  loc_B97C95: Ary1LdPr
  loc_B97C96: MemLdRfVar from_stack_1.htmFile
  loc_B97C99: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97C9E: AryUnlock
  loc_B97CA1: FFreeAd var_C4 = ""
  loc_B97CA8: FFreeVar var_D8 = ""
  loc_B97CAF: FLdRfVar var_D8
  loc_B97CB2: FLdRfVar var_20C
  loc_B97CB5: LitVarStr var_B0, "AutoCheq"
  loc_B97CBA: PopAdLdVar
  loc_B97CBB: FLdRfVar var_E0
  loc_B97CBE: FLdRfVar var_C4
  loc_B97CC1: FLdPr var_204
  loc_B97CC4: from_stack_1v = clscheque.RsFrmGet()
  loc_B97CC9: FLdPr var_C4
  loc_B97CCC:  = Me.Fields
  loc_B97CD1: FLdPr var_E0
  loc_B97CD4: from_stack_2 = Me.Item(from_stack_1)
  loc_B97CD9: FLdPr var_20C
  loc_B97CDC:  = Me.Value
  loc_B97CE1: FLdRfVar var_104
  loc_B97CE4: FLdRfVar var_21C
  loc_B97CE7: LitVarStr var_140, "AutoCheq"
  loc_B97CEC: PopAdLdVar
  loc_B97CED: FLdRfVar var_218
  loc_B97CF0: FLdRfVar var_214
  loc_B97CF3: FLdPr var_204
  loc_B97CF6: from_stack_1v = clscheque.RsFrmGet()
  loc_B97CFB: FLdPr var_214
  loc_B97CFE:  = Me.Fields
  loc_B97D03: FLdPr var_218
  loc_B97D06: from_stack_2 = Me.Item(from_stack_1)
  loc_B97D0B: FLdPr var_21C
  loc_B97D0E:  = Me.Value
  loc_B97D13: LitVarStr var_23C, "transferencia"
  loc_B97D18: FStVarCopyObj var_160
  loc_B97D1B: FLdRfVar var_160
  loc_B97D1E: LitVarStr var_22C, "cheque impreso"
  loc_B97D23: FStVarCopyObj var_150
  loc_B97D26: FLdRfVar var_150
  loc_B97D29: FLdRfVar var_104
  loc_B97D2C: LitVarStr var_180, "2"
  loc_B97D31: HardType
  loc_B97D32: EqVar var_114
  loc_B97D36: FStVar var_124
  loc_B97D3A: FLdRfVar var_124
  loc_B97D3D: FLdRfVar var_170
  loc_B97D40: ImpAdCallFPR4  = IIf(, , )
  loc_B97D45: FLdRfVar var_170
  loc_B97D48: LitVarStr var_24C, "cheque manual"
  loc_B97D4D: FStVarCopyObj var_1A0
  loc_B97D50: FLdRfVar var_1A0
  loc_B97D53: FLdRfVar var_D8
  loc_B97D56: LitVarStr var_C0, "1"
  loc_B97D5B: HardType
  loc_B97D5C: EqVar var_F0
  loc_B97D60: FStVar var_190
  loc_B97D64: FLdRfVar var_190
  loc_B97D67: FLdRfVar var_1B0
  loc_B97D6A: ImpAdCallFPR4  = IIf(, , )
  loc_B97D6F: LitI2_Byte 0
  loc_B97D71: LitVar_Missing var_26C
  loc_B97D74: LitI2_Byte 0
  loc_B97D76: FLdVar var_1B0
  loc_B97D7A: FLdPr Me
  loc_B97D7D: MemLdI2 global_88
  loc_B97D80: CI4UI1
  loc_B97D81: FLdPr Me
  loc_B97D84: MemLdStr global_80
  loc_B97D87: AryLock
  loc_B97D8A: Ary1LdPr
  loc_B97D8B: MemLdRfVar from_stack_1.global_56
  loc_B97D8E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97D93: AryUnlock
  loc_B97D96: FFreeAd var_C4 = "": var_E0 = "": var_20C = "": var_214 = "": var_218 = ""
  loc_B97DA5: FFreeVar var_D8 = "": var_104 = "": var_124 = "": var_150 = "": var_160 = "": var_190 = "": var_1A0 = "": var_170 = "": var_1B0 = ""
  loc_B97DBC: FLdRfVar var_20C
  loc_B97DBF: LitVarStr var_B0, "ImpoCheq"
  loc_B97DC4: PopAdLdVar
  loc_B97DC5: FLdRfVar var_E0
  loc_B97DC8: FLdRfVar var_C4
  loc_B97DCB: FLdPr var_204
  loc_B97DCE: from_stack_1v = clscheque.RsFrmGet()
  loc_B97DD3: FLdPr var_C4
  loc_B97DD6:  = Me.Fields
  loc_B97DDB: FLdPr var_E0
  loc_B97DDE: from_stack_2 = Me.Item(from_stack_1)
  loc_B97DE3: LitI2_Byte 0
  loc_B97DE5: FLdPr Me
  loc_B97DE8: MemLdRfVar from_stack_1.global_84
  loc_B97DEB: CVarRef
  loc_B97DF0: LitI2_Byte &HFF
  loc_B97DF2: FLdZeroAd var_20C
  loc_B97DF5: CVarAd
  loc_B97DF9: PopAdLdVar
  loc_B97DFA: FLdPr Me
  loc_B97DFD: MemLdI2 global_88
  loc_B97E00: CI4UI1
  loc_B97E01: FLdPr Me
  loc_B97E04: MemLdStr global_80
  loc_B97E07: AryLock
  loc_B97E0A: Ary1LdPr
  loc_B97E0B: MemLdRfVar from_stack_1.global_60
  loc_B97E0E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B97E13: AryUnlock
  loc_B97E16: FFreeAd var_C4 = ""
  loc_B97E1D: FFree1Var var_D8 = ""
  loc_B97E20: FLdPr var_204
  loc_B97E23: Call clscheque.MoveSiguiente()
  loc_B97E28: FLdPr Me
  loc_B97E2B: MemLdRfVar from_stack_1.global_88
  loc_B97E2E: NextI2 var_208, loc_B9770A
  loc_B97E33: LitNothing
  loc_B97E35: FStAd var_204 
  loc_B97E39: LitI2_Byte &HFF
  loc_B97E3B: FLdPr Me
  loc_B97E3E: MemStI2 bGenerado
  loc_B97E41: LitI4 0
  loc_B97E46: CI2I4
  loc_B97E47: FLdPr Me
  loc_B97E4A: Me.MousePointer = from_stack_1
  loc_B97E4F: LitVarStr var_B0, vbNullString
  loc_B97E54: PopAdLdVar
  loc_B97E55: FLdPr Me
  loc_B97E58: VCallAd Control_ID_statusBar
  loc_B97E5B: FStAdFunc var_C4
  loc_B97E5E: FLdPr var_C4
  loc_B97E61: LateIdSt
  loc_B97E66: FFree1Ad var_C4
  loc_B97E69: ExitProcHresult
  loc_B97E6A: LitI4 0
  loc_B97E6F: LitStr "Error "
  loc_B97E72: FLdRfVar var_200
  loc_B97E75: ImpAdCallI2 Err 'rtcErrObj
  loc_B97E7A: FStAdFunc var_C4
  loc_B97E7D: FLdPr var_C4
  loc_B97E80:  = Err.Number
  loc_B97E85: ILdRf var_200
  loc_B97E88: CStrI4
  loc_B97E8A: FStStrNoPop var_DC
  loc_B97E8D: ConcatStr
  loc_B97E8E: FStStrNoPop var_F4
  loc_B97E91: LitStr ": "
  loc_B97E94: ConcatStr
  loc_B97E95: FStStrNoPop var_12C
  loc_B97E98: FLdRfVar var_128
  loc_B97E9B: ImpAdCallI2 Err 'rtcErrObj
  loc_B97EA0: FStAdFunc var_E0
  loc_B97EA3: FLdPr var_E0
  loc_B97EA6:  = Err.Description
  loc_B97EAB: ILdRf var_128
  loc_B97EAE: ConcatStr
  loc_B97EAF: FStStrNoPop var_130
  loc_B97EB2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B97EB7: FFreeStr var_DC = "": var_F4 = "": var_12C = "": var_128 = ""
  loc_B97EC4: FFreeAd var_C4 = ""
  loc_B97ECB: ExitProcHresult
  loc_B97ECC: ExitProcHresult
  loc_B97ECD: FFree1Ad GeneraReporte92
End Sub

Public Sub HabilitarCriterio() 'A25448
  'Data Table: 4D6F6C
  loc_A252D4: LitI4 0
  loc_A252D9: LitI4 &H14
  loc_A252DE: FLdRfVar var_88
  loc_A252E1: Redim
  loc_A252EB: FLdPr Me
  loc_A252EE: VCallAd Control_ID_PeriodoCbo
  loc_A252F1: CVarAd
  loc_A252F5: ParmAry1St
  loc_A252FB: FLdPr Me
  loc_A252FE: VCallAd Control_ID_CodiBancMsk
  loc_A25301: CVarAd
  loc_A25305: ParmAry1St
  loc_A2530B: FLdPr Me
  loc_A2530E: VCallAd Control_ID_CodiBancCmd
  loc_A25311: CVarAd
  loc_A25315: ParmAry1St
  loc_A2531B: FLdPr Me
  loc_A2531E: VCallAd Control_ID_FechCheqOpt
  loc_A25321: CVarAd
  loc_A25325: ParmAry1St
  loc_A2532B: FLdPr Me
  loc_A2532E: VCallAd Control_ID_FereCheqOpt
  loc_A25331: CVarAd
  loc_A25335: ParmAry1St
  loc_A2533B: FLdPr Me
  loc_A2533E: VCallAd Control_ID_FepaCheqOpt
  loc_A25341: CVarAd
  loc_A25345: ParmAry1St
  loc_A2534B: FLdPr Me
  loc_A2534E: VCallAd Control_ID_FeanCheqOpt
  loc_A25351: CVarAd
  loc_A25355: ParmAry1St
  loc_A2535B: FLdPr Me
  loc_A2535E: VCallAd Control_ID_FechaDesdeMsk
  loc_A25361: CVarAd
  loc_A25365: ParmAry1St
  loc_A2536B: FLdPr Me
  loc_A2536E: VCallAd Control_ID_cmdCalDesde
  loc_A25371: CVarAd
  loc_A25375: ParmAry1St
  loc_A2537B: FLdPr Me
  loc_A2537E: VCallAd Control_ID_FechaHastaMsk
  loc_A25381: CVarAd
  loc_A25385: ParmAry1St
  loc_A2538B: FLdPr Me
  loc_A2538E: VCallAd Control_ID_cmdCalHasta
  loc_A25391: CVarAd
  loc_A25395: ParmAry1St
  loc_A2539B: FLdPr Me
  loc_A2539E: VCallAd Control_ID_IncluyeAnuladosChk
  loc_A253A1: CVarAd
  loc_A253A5: ParmAry1St
  loc_A253AB: FLdPr Me
  loc_A253AE: VCallAd Control_ID_BancoOpt
  loc_A253B1: CVarAd
  loc_A253B5: ParmAry1St
  loc_A253BB: FLdPr Me
  loc_A253BE: VCallAd Control_ID_NúmeroOpt
  loc_A253C1: CVarAd
  loc_A253C5: ParmAry1St
  loc_A253CB: FLdPr Me
  loc_A253CE: VCallAd Control_ID_OrdenPagoOpt
  loc_A253D1: CVarAd
  loc_A253D5: ParmAry1St
  loc_A253DB: FLdPr Me
  loc_A253DE: VCallAd Control_ID_FechaOpt
  loc_A253E1: CVarAd
  loc_A253E5: ParmAry1St
  loc_A253EB: FLdPr Me
  loc_A253EE: VCallAd Control_ID_OrdeCheqTxt
  loc_A253F1: CVarAd
  loc_A253F5: ParmAry1St
  loc_A253FB: FLdPr Me
  loc_A253FE: VCallAd Control_ID_optMPtodos
  loc_A25401: CVarAd
  loc_A25405: ParmAry1St
  loc_A2540B: FLdPr Me
  loc_A2540E: VCallAd Control_ID_optMPchequemanual
  loc_A25411: CVarAd
  loc_A25415: ParmAry1St
  loc_A2541B: FLdPr Me
  loc_A2541E: VCallAd Control_ID_optMPchequeimpreso
  loc_A25421: CVarAd
  loc_A25425: ParmAry1St
  loc_A2542B: FLdPr Me
  loc_A2542E: VCallAd Control_ID_optMPtransferencia
  loc_A25431: CVarAd
  loc_A25435: ParmAry1St
  loc_A2543B: FLdRfVar var_88
  loc_A2543E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A25443: FLdRfVar var_88
  loc_A25446: Erase
  loc_A25447: ExitProcHresult
End Sub

Private Function Proc_189_35_AEEE70() 'AEEE70
  'Data Table: 4D6F6C
  loc_AEE74C: FLdPr Me
  loc_AEE74F: VCallAd Control_ID_FechCheqOpt
  loc_AEE752: CVarAd
  loc_AEE756: CBoolVarNull
  loc_AEE758: FFree1Var var_9C = ""
  loc_AEE75B: BranchF loc_AEE767
  loc_AEE75E: LitStr "Emisión"
  loc_AEE761: FStStrCopy var_88
  loc_AEE764: Branch loc_AEE7A3
  loc_AEE767: FLdPr Me
  loc_AEE76A: VCallAd Control_ID_FereCheqOpt
  loc_AEE76D: CVarAd
  loc_AEE771: CBoolVarNull
  loc_AEE773: FFree1Var var_9C = ""
  loc_AEE776: BranchF loc_AEE782
  loc_AEE779: LitStr "Remisión"
  loc_AEE77C: FStStrCopy var_88
  loc_AEE77F: Branch loc_AEE7A3
  loc_AEE782: FLdPr Me
  loc_AEE785: VCallAd Control_ID_FepaCheqOpt
  loc_AEE788: CVarAd
  loc_AEE78C: CBoolVarNull
  loc_AEE78E: FFree1Var var_9C = ""
  loc_AEE791: BranchF loc_AEE79D
  loc_AEE794: LitStr "Pago"
  loc_AEE797: FStStrCopy var_88
  loc_AEE79A: Branch loc_AEE7A3
  loc_AEE79D: LitStr "Anulación"
  loc_AEE7A0: FStStrCopy var_88
  loc_AEE7A3: FLdPr Me
  loc_AEE7A6: VCallAd Control_ID_optMPtodos
  loc_AEE7A9: CVarAd
  loc_AEE7AD: CBoolVarNull
  loc_AEE7AF: FFree1Var var_9C = ""
  loc_AEE7B2: BranchF loc_AEE7BE
  loc_AEE7B5: LitStr "Todos los medios de pago"
  loc_AEE7B8: FStStrCopy var_8C
  loc_AEE7BB: Branch loc_AEE80C
  loc_AEE7BE: FLdPr Me
  loc_AEE7C1: VCallAd Control_ID_optMPchequemanual
  loc_AEE7C4: CVarAd
  loc_AEE7C8: CBoolVarNull
  loc_AEE7CA: FFree1Var var_9C = ""
  loc_AEE7CD: BranchF loc_AEE7D9
  loc_AEE7D0: LitStr "cheque manual"
  loc_AEE7D3: FStStrCopy var_8C
  loc_AEE7D6: Branch loc_AEE80C
  loc_AEE7D9: FLdPr Me
  loc_AEE7DC: VCallAd Control_ID_optMPchequeimpreso
  loc_AEE7DF: CVarAd
  loc_AEE7E3: CBoolVarNull
  loc_AEE7E5: FFree1Var var_9C = ""
  loc_AEE7E8: BranchF loc_AEE7F4
  loc_AEE7EB: LitStr "cheque impreso"
  loc_AEE7EE: FStStrCopy var_8C
  loc_AEE7F1: Branch loc_AEE80C
  loc_AEE7F4: FLdPr Me
  loc_AEE7F7: VCallAd Control_ID_optMPtransferencia
  loc_AEE7FA: CVarAd
  loc_AEE7FE: CBoolVarNull
  loc_AEE800: FFree1Var var_9C = ""
  loc_AEE803: BranchF loc_AEE80C
  loc_AEE806: LitStr "transferencia"
  loc_AEE809: FStStrCopy var_8C
  loc_AEE80C: LitVarStr var_AC, "<html>"
  loc_AEE811: PopAdLdVar
  loc_AEE812: FLdPr Me
  loc_AEE815: MemLdRfVar from_stack_1.htmFile
  loc_AEE818: LdPrVar
  loc_AEE81A: LateMemCall
  loc_AEE820: LitVarStr var_AC, "<head>"
  loc_AEE825: PopAdLdVar
  loc_AEE826: FLdPr Me
  loc_AEE829: MemLdRfVar from_stack_1.htmFile
  loc_AEE82C: LdPrVar
  loc_AEE82E: LateMemCall
  loc_AEE834: LitVarStr var_AC, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AEE839: PopAdLdVar
  loc_AEE83A: FLdPr Me
  loc_AEE83D: MemLdRfVar from_stack_1.htmFile
  loc_AEE840: LdPrVar
  loc_AEE842: LateMemCall
  loc_AEE848: LitStr "<title>"
  loc_AEE84B: FLdRfVar var_C0
  loc_AEE84E: FLdPr Me
  loc_AEE851:  = Me.Caption
  loc_AEE856: ILdRf var_C0
  loc_AEE859: ConcatStr
  loc_AEE85A: FStStrNoPop var_C4
  loc_AEE85D: LitStr "</title>"
  loc_AEE860: ConcatStr
  loc_AEE861: CVarStr var_9C
  loc_AEE864: PopAdLdVar
  loc_AEE865: FLdPr Me
  loc_AEE868: MemLdRfVar from_stack_1.htmFile
  loc_AEE86B: LdPrVar
  loc_AEE86D: LateMemCall
  loc_AEE873: FFreeStr var_C0 = ""
  loc_AEE87A: FFree1Var var_9C = ""
  loc_AEE87D: LitStr vbNullString
  loc_AEE880: ILdRf Me
  loc_AEE883: CastAd
  loc_AEE886: FStAdFunc var_C8
  loc_AEE889: FLdRfVar var_C8
  loc_AEE88C: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_AEE891: FFree1Ad var_C8
  loc_AEE894: LitI4 0
  loc_AEE899: FStStrCopy var_C4
  loc_AEE89C: FLdRfVar var_C4
  loc_AEE89F: LitI4 0
  loc_AEE8A4: FStStrCopy var_C0
  loc_AEE8A7: FLdRfVar var_C0
  loc_AEE8AA: LitI2_Byte &HFF
  loc_AEE8AC: PopTmpLdAd2 var_CA
  loc_AEE8AF: FLdPr Me
  loc_AEE8B2: MemLdRfVar from_stack_1.htmFile
  loc_AEE8B5: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AEE8BA: FFreeStr var_C0 = ""
  loc_AEE8C1: LitVarStr var_AC, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AEE8C6: PopAdLdVar
  loc_AEE8C7: FLdPr Me
  loc_AEE8CA: MemLdRfVar from_stack_1.htmFile
  loc_AEE8CD: LdPrVar
  loc_AEE8CF: LateMemCall
  loc_AEE8D5: LitVarStr var_AC, "  <tr valign=""baseline"">"
  loc_AEE8DA: PopAdLdVar
  loc_AEE8DB: FLdPr Me
  loc_AEE8DE: MemLdRfVar from_stack_1.htmFile
  loc_AEE8E1: LdPrVar
  loc_AEE8E3: LateMemCall
  loc_AEE8E9: LitVarStr var_AC, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_AEE8EE: PopAdLdVar
  loc_AEE8EF: FLdPr Me
  loc_AEE8F2: MemLdRfVar from_stack_1.htmFile
  loc_AEE8F5: LdPrVar
  loc_AEE8F7: LateMemCall
  loc_AEE8FD: FLdPr Me
  loc_AEE900: MemLdI2 bLogos
  loc_AEE903: BranchF loc_AEE91A
  loc_AEE906: LitVarStr var_AC, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_AEE90B: PopAdLdVar
  loc_AEE90C: FLdPr Me
  loc_AEE90F: MemLdRfVar from_stack_1.htmFile
  loc_AEE912: LdPrVar
  loc_AEE914: LateMemCall
  loc_AEE91A: LitVarStr var_BC, "    <br><br>"
  loc_AEE91F: LitVarStr var_AC, "Municipalidad de Guaymallén"
  loc_AEE924: FStVarCopyObj var_9C
  loc_AEE927: FLdRfVar var_9C
  loc_AEE92A: FLdRfVar var_DC
  loc_AEE92D: ImpAdCallFPR4  = Ucase()
  loc_AEE932: FLdRfVar var_DC
  loc_AEE935: ConcatVar var_EC
  loc_AEE939: LitVarStr var_FC, "</p>"
  loc_AEE93E: ConcatVar var_10C
  loc_AEE942: PopAdLdVar
  loc_AEE943: FLdPr Me
  loc_AEE946: MemLdRfVar from_stack_1.htmFile
  loc_AEE949: LdPrVar
  loc_AEE94B: LateMemCall
  loc_AEE951: FFreeVar var_9C = "": var_DC = "": var_EC = ""
  loc_AEE95C: LitStr "    <p>"
  loc_AEE95F: FLdRfVar var_C0
  loc_AEE962: FLdPr Me
  loc_AEE965:  = Me.Caption
  loc_AEE96A: ILdRf var_C0
  loc_AEE96D: ConcatStr
  loc_AEE96E: FStStrNoPop var_C4
  loc_AEE971: LitStr "</p></th>"
  loc_AEE974: ConcatStr
  loc_AEE975: CVarStr var_9C
  loc_AEE978: PopAdLdVar
  loc_AEE979: FLdPr Me
  loc_AEE97C: MemLdRfVar from_stack_1.htmFile
  loc_AEE97F: LdPrVar
  loc_AEE981: LateMemCall
  loc_AEE987: FFreeStr var_C0 = ""
  loc_AEE98E: FFree1Var var_9C = ""
  loc_AEE991: LitVarStr var_AC, "  </tr>"
  loc_AEE996: PopAdLdVar
  loc_AEE997: FLdPr Me
  loc_AEE99A: MemLdRfVar from_stack_1.htmFile
  loc_AEE99D: LdPrVar
  loc_AEE99F: LateMemCall
  loc_AEE9A5: LitVarStr var_AC, "  <tr>"
  loc_AEE9AA: PopAdLdVar
  loc_AEE9AB: FLdPr Me
  loc_AEE9AE: MemLdRfVar from_stack_1.htmFile
  loc_AEE9B1: LdPrVar
  loc_AEE9B3: LateMemCall
  loc_AEE9B9: LitVarStr var_AC, "    <th colspan=""3""><hr></th>"
  loc_AEE9BE: PopAdLdVar
  loc_AEE9BF: FLdPr Me
  loc_AEE9C2: MemLdRfVar from_stack_1.htmFile
  loc_AEE9C5: LdPrVar
  loc_AEE9C7: LateMemCall
  loc_AEE9CD: LitVarStr var_AC, "  </tr>"
  loc_AEE9D2: PopAdLdVar
  loc_AEE9D3: FLdPr Me
  loc_AEE9D6: MemLdRfVar from_stack_1.htmFile
  loc_AEE9D9: LdPrVar
  loc_AEE9DB: LateMemCall
  loc_AEE9E1: LitVarStr var_AC, "  <tr valign=""baseline"">"
  loc_AEE9E6: PopAdLdVar
  loc_AEE9E7: FLdPr Me
  loc_AEE9EA: MemLdRfVar from_stack_1.htmFile
  loc_AEE9ED: LdPrVar
  loc_AEE9EF: LateMemCall
  loc_AEE9F5: LitStr "    <th align=""left"">Periodo: <span class=""Normal"">"
  loc_AEE9F8: FLdRfVar var_C0
  loc_AEE9FB: FLdPr Me
  loc_AEE9FE: VCallAd Control_ID_PeriodoCbo
  loc_AEEA01: FStAdFunc var_C8
  loc_AEEA04: FLdPr var_C8
  loc_AEEA07:  = Me.Text
  loc_AEEA0C: ILdRf var_C0
  loc_AEEA0F: ConcatStr
  loc_AEEA10: FStStrNoPop var_C4
  loc_AEEA13: LitStr "</span><br>"
  loc_AEEA16: ConcatStr
  loc_AEEA17: CVarStr var_9C
  loc_AEEA1A: PopAdLdVar
  loc_AEEA1B: FLdPr Me
  loc_AEEA1E: MemLdRfVar from_stack_1.htmFile
  loc_AEEA21: LdPrVar
  loc_AEEA23: LateMemCall
  loc_AEEA29: FFreeStr var_C0 = ""
  loc_AEEA30: FFree1Ad var_C8
  loc_AEEA33: FFree1Var var_9C = ""
  loc_AEEA36: FLdPr Me
  loc_AEEA39: VCallAd Control_ID_CodiBancMsk
  loc_AEEA3C: FStAdFunc var_C8
  loc_AEEA3F: FLdPr var_C8
  loc_AEEA42: LateIdLdVar var_9C DispID_22 0
  loc_AEEA49: CStrVarTmp
  loc_AEEA4A: FStStrNoPop var_C0
  loc_AEEA4D: LitStr vbNullString
  loc_AEEA50: NeStr
  loc_AEEA52: FFree1Str var_C0
  loc_AEEA55: FFree1Ad var_C8
  loc_AEEA58: FFree1Var var_9C = ""
  loc_AEEA5B: BranchF loc_AEEACF
  loc_AEEA5E: LitStr "    Banco: <span class=""Normal"">"
  loc_AEEA61: FLdPr Me
  loc_AEEA64: VCallAd Control_ID_CodiBancMsk
  loc_AEEA67: FStAdFunc var_C8
  loc_AEEA6A: FLdPr var_C8
  loc_AEEA6D: LateIdLdVar var_9C DispID_22 0
  loc_AEEA74: CStrVarTmp
  loc_AEEA75: FStStrNoPop var_C0
  loc_AEEA78: ConcatStr
  loc_AEEA79: FStStrNoPop var_C4
  loc_AEEA7C: LitStr " - "
  loc_AEEA7F: ConcatStr
  loc_AEEA80: FStStrNoPop var_128
  loc_AEEA83: FLdRfVar var_124
  loc_AEEA86: FLdPr Me
  loc_AEEA89: VCallAd Control_ID_DetaBancLbl
  loc_AEEA8C: FStAdFunc var_120
  loc_AEEA8F: FLdPr var_120
  loc_AEEA92:  = Me.Caption
  loc_AEEA97: ILdRf var_124
  loc_AEEA9A: ConcatStr
  loc_AEEA9B: FStStrNoPop var_12C
  loc_AEEA9E: LitStr "</span>"
  loc_AEEAA1: ConcatStr
  loc_AEEAA2: CVarStr var_DC
  loc_AEEAA5: PopAdLdVar
  loc_AEEAA6: FLdPr Me
  loc_AEEAA9: MemLdRfVar from_stack_1.htmFile
  loc_AEEAAC: LdPrVar
  loc_AEEAAE: LateMemCall
  loc_AEEAB4: FFreeStr var_C0 = "": var_C4 = "": var_128 = "": var_124 = ""
  loc_AEEAC1: FFreeAd var_C8 = ""
  loc_AEEAC8: FFreeVar var_9C = ""
  loc_AEEACF: LitVarStr var_AC, "    </th>"
  loc_AEEAD4: PopAdLdVar
  loc_AEEAD5: FLdPr Me
  loc_AEEAD8: MemLdRfVar from_stack_1.htmFile
  loc_AEEADB: LdPrVar
  loc_AEEADD: LateMemCall
  loc_AEEAE3: LitStr "    <th align=""left"">Fecha de "
  loc_AEEAE6: ILdRf var_88
  loc_AEEAE9: ConcatStr
  loc_AEEAEA: FStStrNoPop var_C0
  loc_AEEAED: LitStr "&nbsp;"
  loc_AEEAF0: ConcatStr
  loc_AEEAF1: CVarStr var_9C
  loc_AEEAF4: PopAdLdVar
  loc_AEEAF5: FLdPr Me
  loc_AEEAF8: MemLdRfVar from_stack_1.htmFile
  loc_AEEAFB: LdPrVar
  loc_AEEAFD: LateMemCall
  loc_AEEB03: FFree1Str var_C0
  loc_AEEB06: FFree1Var var_9C = ""
  loc_AEEB09: LitStr "      <span class=""Normal"">Desde: "
  loc_AEEB0C: FLdPr Me
  loc_AEEB0F: VCallAd Control_ID_FechaDesdeMsk
  loc_AEEB12: FStAdFunc var_C8
  loc_AEEB15: FLdPr var_C8
  loc_AEEB18: LateIdLdVar var_9C DispID_15 0
  loc_AEEB1F: CStrVarTmp
  loc_AEEB20: FStStrNoPop var_C0
  loc_AEEB23: ConcatStr
  loc_AEEB24: FStStrNoPop var_C4
  loc_AEEB27: LitStr "</span>&nbsp;&nbsp;&nbsp;"
  loc_AEEB2A: ConcatStr
  loc_AEEB2B: CVarStr var_DC
  loc_AEEB2E: PopAdLdVar
  loc_AEEB2F: FLdPr Me
  loc_AEEB32: MemLdRfVar from_stack_1.htmFile
  loc_AEEB35: LdPrVar
  loc_AEEB37: LateMemCall
  loc_AEEB3D: FFreeStr var_C0 = ""
  loc_AEEB44: FFree1Ad var_C8
  loc_AEEB47: FFreeVar var_9C = ""
  loc_AEEB4E: LitStr "      <span class=""Normal"">Hasta: "
  loc_AEEB51: FLdPr Me
  loc_AEEB54: VCallAd Control_ID_FechaHastaMsk
  loc_AEEB57: FStAdFunc var_C8
  loc_AEEB5A: FLdPr var_C8
  loc_AEEB5D: LateIdLdVar var_9C DispID_15 0
  loc_AEEB64: CStrVarTmp
  loc_AEEB65: FStStrNoPop var_C0
  loc_AEEB68: ConcatStr
  loc_AEEB69: FStStrNoPop var_C4
  loc_AEEB6C: LitStr "</span>"
  loc_AEEB6F: ConcatStr
  loc_AEEB70: CVarStr var_DC
  loc_AEEB73: PopAdLdVar
  loc_AEEB74: FLdPr Me
  loc_AEEB77: MemLdRfVar from_stack_1.htmFile
  loc_AEEB7A: LdPrVar
  loc_AEEB7C: LateMemCall
  loc_AEEB82: FFreeStr var_C0 = ""
  loc_AEEB89: FFree1Ad var_C8
  loc_AEEB8C: FFreeVar var_9C = ""
  loc_AEEB93: LitVarStr var_AC, "    </th>"
  loc_AEEB98: PopAdLdVar
  loc_AEEB99: FLdPr Me
  loc_AEEB9C: MemLdRfVar from_stack_1.htmFile
  loc_AEEB9F: LdPrVar
  loc_AEEBA1: LateMemCall
  loc_AEEBA7: LitStr "    <th align=""left"">Medio de pago: <span class=""Normal"">"
  loc_AEEBAA: ILdRf var_8C
  loc_AEEBAD: ConcatStr
  loc_AEEBAE: FStStrNoPop var_C0
  loc_AEEBB1: LitStr "</span>"
  loc_AEEBB4: ConcatStr
  loc_AEEBB5: CVarStr var_9C
  loc_AEEBB8: PopAdLdVar
  loc_AEEBB9: FLdPr Me
  loc_AEEBBC: MemLdRfVar from_stack_1.htmFile
  loc_AEEBBF: LdPrVar
  loc_AEEBC1: LateMemCall
  loc_AEEBC7: FFree1Str var_C0
  loc_AEEBCA: FFree1Var var_9C = ""
  loc_AEEBCD: LitVarStr var_AC, "    </th>"
  loc_AEEBD2: PopAdLdVar
  loc_AEEBD3: FLdPr Me
  loc_AEEBD6: MemLdRfVar from_stack_1.htmFile
  loc_AEEBD9: LdPrVar
  loc_AEEBDB: LateMemCall
  loc_AEEBE1: FLdRfVar var_CA
  loc_AEEBE4: FLdPr Me
  loc_AEEBE7: VCallAd Control_ID_IncluyeAnuladosChk
  loc_AEEBEA: FStAdFunc var_C8
  loc_AEEBED: FLdPr var_C8
  loc_AEEBF0:  = Me.Value
  loc_AEEBF5: FLdI2 var_CA
  loc_AEEBF8: CI4UI1
  loc_AEEBF9: LitI4 1
  loc_AEEBFE: EqI4
  loc_AEEBFF: FFree1Ad var_C8
  loc_AEEC02: BranchF loc_AEEC1C
  loc_AEEC05: LitVarStr var_AC, "    <th align=""right""><span class=""Normal"">Incluye cheques ANULADOS</span></th>"
  loc_AEEC0A: PopAdLdVar
  loc_AEEC0B: FLdPr Me
  loc_AEEC0E: MemLdRfVar from_stack_1.htmFile
  loc_AEEC11: LdPrVar
  loc_AEEC13: LateMemCall
  loc_AEEC19: Branch loc_AEEC30
  loc_AEEC1C: LitVarStr var_AC, "    <th>&nbsp;</th>"
  loc_AEEC21: PopAdLdVar
  loc_AEEC22: FLdPr Me
  loc_AEEC25: MemLdRfVar from_stack_1.htmFile
  loc_AEEC28: LdPrVar
  loc_AEEC2A: LateMemCall
  loc_AEEC30: FLdRfVar var_C0
  loc_AEEC33: FLdPr Me
  loc_AEEC36: VCallAd Control_ID_OrdeCheqTxt
  loc_AEEC39: FStAdFunc var_C8
  loc_AEEC3C: FLdPr var_C8
  loc_AEEC3F:  = Me.Text
  loc_AEEC44: ILdRf var_C0
  loc_AEEC47: LitStr vbNullString
  loc_AEEC4A: NeStr
  loc_AEEC4C: FFree1Str var_C0
  loc_AEEC4F: FFree1Ad var_C8
  loc_AEEC52: BranchF loc_AEECBE
  loc_AEEC55: LitVarStr var_AC, "  <tr>"
  loc_AEEC5A: PopAdLdVar
  loc_AEEC5B: FLdPr Me
  loc_AEEC5E: MemLdRfVar from_stack_1.htmFile
  loc_AEEC61: LdPrVar
  loc_AEEC63: LateMemCall
  loc_AEEC69: LitStr "     <th align=""left"">A la Orden de: <span class=""Normal"">"
  loc_AEEC6C: FLdRfVar var_C0
  loc_AEEC6F: FLdPr Me
  loc_AEEC72: VCallAd Control_ID_OrdeCheqTxt
  loc_AEEC75: FStAdFunc var_C8
  loc_AEEC78: FLdPr var_C8
  loc_AEEC7B:  = Me.Text
  loc_AEEC80: ILdRf var_C0
  loc_AEEC83: ConcatStr
  loc_AEEC84: FStStrNoPop var_C4
  loc_AEEC87: LitStr "</span></th>"
  loc_AEEC8A: ConcatStr
  loc_AEEC8B: CVarStr var_9C
  loc_AEEC8E: PopAdLdVar
  loc_AEEC8F: FLdPr Me
  loc_AEEC92: MemLdRfVar from_stack_1.htmFile
  loc_AEEC95: LdPrVar
  loc_AEEC97: LateMemCall
  loc_AEEC9D: FFreeStr var_C0 = ""
  loc_AEECA4: FFree1Ad var_C8
  loc_AEECA7: FFree1Var var_9C = ""
  loc_AEECAA: LitVarStr var_AC, "  </tr>"
  loc_AEECAF: PopAdLdVar
  loc_AEECB0: FLdPr Me
  loc_AEECB3: MemLdRfVar from_stack_1.htmFile
  loc_AEECB6: LdPrVar
  loc_AEECB8: LateMemCall
  loc_AEECBE: LitVarStr var_AC, "  </tr>"
  loc_AEECC3: PopAdLdVar
  loc_AEECC4: FLdPr Me
  loc_AEECC7: MemLdRfVar from_stack_1.htmFile
  loc_AEECCA: LdPrVar
  loc_AEECCC: LateMemCall
  loc_AEECD2: LitVarStr var_AC, "</table>"
  loc_AEECD7: PopAdLdVar
  loc_AEECD8: FLdPr Me
  loc_AEECDB: MemLdRfVar from_stack_1.htmFile
  loc_AEECDE: LdPrVar
  loc_AEECE0: LateMemCall
  loc_AEECE6: LitVarStr var_AC, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AEECEB: PopAdLdVar
  loc_AEECEC: FLdPr Me
  loc_AEECEF: MemLdRfVar from_stack_1.htmFile
  loc_AEECF2: LdPrVar
  loc_AEECF4: LateMemCall
  loc_AEECFA: LitVarStr var_AC, "  <thead>"
  loc_AEECFF: PopAdLdVar
  loc_AEED00: FLdPr Me
  loc_AEED03: MemLdRfVar from_stack_1.htmFile
  loc_AEED06: LdPrVar
  loc_AEED08: LateMemCall
  loc_AEED0E: LitVarStr var_AC, "  <tr align=""center"" class=""Encabezado"">"
  loc_AEED13: PopAdLdVar
  loc_AEED14: FLdPr Me
  loc_AEED17: MemLdRfVar from_stack_1.htmFile
  loc_AEED1A: LdPrVar
  loc_AEED1C: LateMemCall
  loc_AEED22: LitVarStr var_AC, "    <th>Banco</th>"
  loc_AEED27: PopAdLdVar
  loc_AEED28: FLdPr Me
  loc_AEED2B: MemLdRfVar from_stack_1.htmFile
  loc_AEED2E: LdPrVar
  loc_AEED30: LateMemCall
  loc_AEED36: LitVarStr var_AC, "    <th>Número</th>"
  loc_AEED3B: PopAdLdVar
  loc_AEED3C: FLdPr Me
  loc_AEED3F: MemLdRfVar from_stack_1.htmFile
  loc_AEED42: LdPrVar
  loc_AEED44: LateMemCall
  loc_AEED4A: LitVarStr var_AC, "    <th>O.P.</th>"
  loc_AEED4F: PopAdLdVar
  loc_AEED50: FLdPr Me
  loc_AEED53: MemLdRfVar from_stack_1.htmFile
  loc_AEED56: LdPrVar
  loc_AEED58: LateMemCall
  loc_AEED5E: LitVarStr var_AC, "    <th>Archivo</th>"
  loc_AEED63: PopAdLdVar
  loc_AEED64: FLdPr Me
  loc_AEED67: MemLdRfVar from_stack_1.htmFile
  loc_AEED6A: LdPrVar
  loc_AEED6C: LateMemCall
  loc_AEED72: LitVarStr var_AC, "    <th>Expediente</th>"
  loc_AEED77: PopAdLdVar
  loc_AEED78: FLdPr Me
  loc_AEED7B: MemLdRfVar from_stack_1.htmFile
  loc_AEED7E: LdPrVar
  loc_AEED80: LateMemCall
  loc_AEED86: LitVarStr var_AC, "    <th>Emisión</th>"
  loc_AEED8B: PopAdLdVar
  loc_AEED8C: FLdPr Me
  loc_AEED8F: MemLdRfVar from_stack_1.htmFile
  loc_AEED92: LdPrVar
  loc_AEED94: LateMemCall
  loc_AEED9A: LitVarStr var_AC, "    <th>Remisión</th>"
  loc_AEED9F: PopAdLdVar
  loc_AEEDA0: FLdPr Me
  loc_AEEDA3: MemLdRfVar from_stack_1.htmFile
  loc_AEEDA6: LdPrVar
  loc_AEEDA8: LateMemCall
  loc_AEEDAE: LitVarStr var_AC, "    <th>Pago</th>"
  loc_AEEDB3: PopAdLdVar
  loc_AEEDB4: FLdPr Me
  loc_AEEDB7: MemLdRfVar from_stack_1.htmFile
  loc_AEEDBA: LdPrVar
  loc_AEEDBC: LateMemCall
  loc_AEEDC2: LitVarStr var_AC, "    <th>Anulación</th>"
  loc_AEEDC7: PopAdLdVar
  loc_AEEDC8: FLdPr Me
  loc_AEEDCB: MemLdRfVar from_stack_1.htmFile
  loc_AEEDCE: LdPrVar
  loc_AEEDD0: LateMemCall
  loc_AEEDD6: LitVarStr var_AC, "    <th>A la Orden de:</th>"
  loc_AEEDDB: PopAdLdVar
  loc_AEEDDC: FLdPr Me
  loc_AEEDDF: MemLdRfVar from_stack_1.htmFile
  loc_AEEDE2: LdPrVar
  loc_AEEDE4: LateMemCall
  loc_AEEDEA: LitStr "Municipalidad de Guaymallén"
  loc_AEEDED: LitStr "Municipalidad de Lavalle"
  loc_AEEDF0: EqStr
  loc_AEEDF2: BranchF loc_AEEE1D
  loc_AEEDF5: LitVarStr var_AC, "    <th>CUIT</th>"
  loc_AEEDFA: PopAdLdVar
  loc_AEEDFB: FLdPr Me
  loc_AEEDFE: MemLdRfVar from_stack_1.htmFile
  loc_AEEE01: LdPrVar
  loc_AEEE03: LateMemCall
  loc_AEEE09: LitVarStr var_AC, "    <th>CBU</th>"
  loc_AEEE0E: PopAdLdVar
  loc_AEEE0F: FLdPr Me
  loc_AEEE12: MemLdRfVar from_stack_1.htmFile
  loc_AEEE15: LdPrVar
  loc_AEEE17: LateMemCall
  loc_AEEE1D: LitVarStr var_AC, "    <th>Medio de pago</th>"
  loc_AEEE22: PopAdLdVar
  loc_AEEE23: FLdPr Me
  loc_AEEE26: MemLdRfVar from_stack_1.htmFile
  loc_AEEE29: LdPrVar
  loc_AEEE2B: LateMemCall
  loc_AEEE31: LitVarStr var_AC, "    <th>Importe</th>"
  loc_AEEE36: PopAdLdVar
  loc_AEEE37: FLdPr Me
  loc_AEEE3A: MemLdRfVar from_stack_1.htmFile
  loc_AEEE3D: LdPrVar
  loc_AEEE3F: LateMemCall
  loc_AEEE45: LitVarStr var_AC, "  </tr>"
  loc_AEEE4A: PopAdLdVar
  loc_AEEE4B: FLdPr Me
  loc_AEEE4E: MemLdRfVar from_stack_1.htmFile
  loc_AEEE51: LdPrVar
  loc_AEEE53: LateMemCall
  loc_AEEE59: LitVarStr var_AC, "  </thead>"
  loc_AEEE5E: PopAdLdVar
  loc_AEEE5F: FLdPr Me
  loc_AEEE62: MemLdRfVar from_stack_1.htmFile
  loc_AEEE65: LdPrVar
  loc_AEEE67: LateMemCall
  loc_AEEE6D: ExitProcHresult
  loc_AEEE6E: ExitProcR8
End Function

Private Function Proc_189_36_982EE0() '982EE0
  'Data Table: 4D6F6C
  loc_982EA0: LitVarStr var_94, "</table>"
  loc_982EA5: PopAdLdVar
  loc_982EA6: FLdPr Me
  loc_982EA9: MemLdRfVar from_stack_1.htmFile
  loc_982EAC: LdPrVar
  loc_982EAE: LateMemCall
  loc_982EB4: LitVarStr var_94, "</body>"
  loc_982EB9: PopAdLdVar
  loc_982EBA: FLdPr Me
  loc_982EBD: MemLdRfVar from_stack_1.htmFile
  loc_982EC0: LdPrVar
  loc_982EC2: LateMemCall
  loc_982EC8: LitVarStr var_94, "</html>"
  loc_982ECD: PopAdLdVar
  loc_982ECE: FLdPr Me
  loc_982ED1: MemLdRfVar from_stack_1.htmFile
  loc_982ED4: LdPrVar
  loc_982ED6: LateMemCall
  loc_982EDC: ExitProcHresult
  loc_982EDD: ExitProcI2
  loc_982EDE: GeCy
End Function
