VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptVolantedeImputaciones
  Caption = "Volante de Imputaciones  (Expediente Original)"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptVolantedeImputaciones.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10545
  ClientHeight = 7275
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame framePie
    Caption = " Pie de página "
    Left = 120
    Top = 4800
    Width = 10335
    Height = 975
    TabIndex = 38
    Begin VB.TextBox txtPie
      Left = 240
      Top = 240
      Width = 9855
      Height = 615
      TabIndex = 39
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7020
    Width = 10545
    Height = 255
    TabIndex = 48
    OleObjectBlob = "rptVolantedeImputaciones.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 6120
    Width = 735
    Height = 615
    TabIndex = 46
    Cancel = -1  'True
    Picture = "rptVolantedeImputaciones.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptVolantedeImputaciones.frx":0B9C
    Left = 9960
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 5880
    Width = 3375
    Height = 1095
    TabIndex = 43
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 45
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 44
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 5880
    Width = 3015
    Height = 1095
    TabIndex = 40
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 42
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 41
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10335
    Height = 4695
    TabIndex = 0
    Begin VB.CheckBox ChkMostrarResumen
      Caption = "Mostrar Resumen"
      Left = 3480
      Top = 4200
      Width = 1695
      Height = 375
      TabIndex = 49
      Value = 1
    End
    Begin VB.CommandButton CucuPersCmd
      Left = 3030
      Top = 3720
      Width = 375
      Height = 375
      TabIndex = 34
      Picture = "rptVolantedeImputaciones.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.Frame FrameEtapas
      Caption = "Etapas"
      Left = 4440
      Top = 120
      Width = 3975
      Height = 1575
      TabIndex = 8
      Begin VB.CheckBox chkEtapa
        Caption = "Preventiva"
        Index = 1
        Left = 120
        Top = 240
        Width = 1215
        Height = 495
        TabIndex = 9
        Value = 1
      End
      Begin VB.CheckBox chkEtapa
        Caption = "Definitiva"
        Index = 2
        Left = 120
        Top = 600
        Width = 1095
        Height = 495
        TabIndex = 10
        Value = 1
      End
      Begin VB.CheckBox chkEtapa
        Caption = "Devengado"
        Index = 3
        Left = 120
        Top = 960
        Width = 1215
        Height = 495
        TabIndex = 11
        Value = 1
      End
      Begin VB.CheckBox chkEtapa
        Caption = "Mandado a pagar"
        Index = 4
        Left = 2040
        Top = 240
        Width = 1575
        Height = 495
        TabIndex = 12
        Value = 1
      End
      Begin VB.CheckBox chkEtapa
        Caption = "Pagado"
        Index = 5
        Left = 2040
        Top = 600
        Width = 1575
        Height = 495
        TabIndex = 13
        Value = 1
      End
    End
    Begin VB.ComboBox cboCodiUsua
      Style = 2
      Left = 1800
      Top = 4200
      Width = 1455
      Height = 315
      TabIndex = 37
    End
    Begin VB.CheckBox SinteticoChk
      Caption = "Sintético"
      Left = 9000
      Top = 3360
      Width = 975
      Height = 375
      Visible = 0   'False
      TabIndex = 31
    End
    Begin VB.CommandButton cmdCodiOrga
      Left = 2880
      Top = 3240
      Width = 375
      Height = 375
      TabIndex = 29
      Picture = "rptVolantedeImputaciones.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 3120
      Top = 2760
      Width = 375
      Height = 375
      TabIndex = 25
      Picture = "rptVolantedeImputaciones.frx":0DF4
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.Frame BuscaExpeFra
      Caption = "Búsqueda de expediente"
      Left = 4440
      Top = 1800
      Width = 3975
      Height = 855
      TabIndex = 19
      Begin MSMask.MaskEdBox CodiOrcoMsk
        Left = 2520
        Top = 360
        Width = 975
        Height = 315
        TabIndex = 21
        OleObjectBlob = "rptVolantedeImputaciones.frx":0EEE
      End
      Begin VB.Label Label6
        Caption = "Orden de Compra Nº:"
        Left = 960
        Top = 360
        Width = 1515
        Height = 195
        TabIndex = 20
        AutoSize = -1  'True
      End
    End
    Begin VB.ComboBox cboExorImpu
      Left = 1800
      Top = 840
      Width = 2055
      Height = 315
      TabIndex = 5
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2940
      Top = 2280
      Width = 375
      Height = 375
      TabIndex = 22
      Picture = "rptVolantedeImputaciones.frx":0F5E
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2940
      Top = 1800
      Width = 375
      Height = 375
      TabIndex = 16
      Picture = "rptVolantedeImputaciones.frx":14A0
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8760
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1800
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1800
      Top = 1800
      Width = 1095
      Height = 315
      TabIndex = 15
      OleObjectBlob = "rptVolantedeImputaciones.frx":19E2
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1800
      Top = 2280
      Width = 1095
      Height = 315
      TabIndex = 18
      OleObjectBlob = "rptVolantedeImputaciones.frx":1A6A
    End
    Begin MSMask.MaskEdBox CodiNopeMsk
      Left = 1800
      Top = 1320
      Width = 975
      Height = 315
      TabIndex = 7
      OleObjectBlob = "rptVolantedeImputaciones.frx":1AF2
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1800
      Top = 2760
      Width = 1215
      Height = 315
      TabIndex = 24
      OleObjectBlob = "rptVolantedeImputaciones.frx":1B62
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1800
      Top = 3240
      Width = 975
      Height = 315
      TabIndex = 28
      OleObjectBlob = "rptVolantedeImputaciones.frx":1BC2
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 1800
      Top = 3720
      Width = 1215
      Height = 315
      TabIndex = 33
      OleObjectBlob = "rptVolantedeImputaciones.frx":1C22
    End
    Begin VB.Label Label3
      Caption = "Proveedor:"
      Left = 900
      Top = 3720
      Width = 780
      Height = 195
      TabIndex = 32
    End
    Begin VB.Label lblDetaProv
      Left = 3510
      Top = 3720
      Width = 4935
      Height = 375
      TabIndex = 35
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label9
      Caption = "Usuario:"
      Left = 1095
      Top = 4200
      Width = 585
      Height = 195
      TabIndex = 36
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3360
      Top = 3240
      Width = 5055
      Height = 375
      TabIndex = 30
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label8
      Caption = "Organigrama:"
      Left = 735
      Top = 3240
      Width = 945
      Height = 195
      TabIndex = 27
    End
    Begin VB.Label LabelPartida
      Caption = "Partida:"
      Left = 1140
      Top = 2760
      Width = 540
      Height = 195
      TabIndex = 23
    End
    Begin VB.Label CodiPartLbl
      Left = 3600
      Top = 2760
      Width = 4815
      Height = 375
      TabIndex = 26
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label7
      Caption = "Nota de pedido Nº:"
      Left = 315
      Top = 1320
      Width = 1365
      Height = 195
      TabIndex = 6
    End
    Begin VB.Label Label5
      Caption = "Hasta:"
      Left = 1215
      Top = 2280
      Width = 465
      Height = 195
      TabIndex = 17
    End
    Begin VB.Label Label4
      Caption = "Desde:"
      Left = 1170
      Top = 1800
      Width = 510
      Height = 195
      TabIndex = 14
    End
    Begin VB.Label Label2
      Caption = "Expediente Original:"
      Left = 270
      Top = 840
      Width = 1410
      Height = 195
      TabIndex = 4
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1095
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8280
    Top = 6240
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 47
    OleObjectBlob = "rptVolantedeImputaciones.frx":1CAC
  End
End

Attribute VB_Name = "rptVolantedeImputaciones"

Public ePart As New Class
Public htmFile As Variant
Public ExorImpu As String
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0057E440
  bStruc(104) As Byte ' String fields: 26
End Type

Private Type UDT_2_0057E4B4
  bStruc(8) As Byte ' String fields: 2
End Type


Private Sub CodiNopeMsk_UnknownEvent_0 '951930
  'Data Table: 4F340C
  loc_95191C: FLdPr Me
  loc_95191F: VCallAd Control_ID_CodiNopeMsk
  loc_951922: CVarAd
  loc_951926: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95192B: FFree1Var var_94 = ""
  loc_95192E: ExitProcHresult
End Sub

Private Sub cmdCodiPart_Click() '9F5948
  'Data Table: 4F340C
  loc_9F5818: LitNothing
  loc_9F581A: CastAd
  loc_9F581D: FStAdFuncNoPop
  loc_9F5820: ImpAdLdRf MemVar_C3D724
  loc_9F5823: NewIfNullPr bscPartida
  loc_9F5826: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F582B: FFree1Ad var_88
  loc_9F582E: LitVar_Missing var_A8
  loc_9F5831: PopAdLdVar
  loc_9F5832: LitVarI4
  loc_9F583A: PopAdLdVar
  loc_9F583B: ImpAdLdRf MemVar_C3D724
  loc_9F583E: NewIfNullPr bscPartida
  loc_9F5841: bscPartida.Show from_stack_1, from_stack_2
  loc_9F5846: FLdRfVar var_AC
  loc_9F5849: FLdRfVar var_88
  loc_9F584C: ImpAdLdRf MemVar_C3D724
  loc_9F584F: NewIfNullPr bscPartida
  loc_9F5852: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F5857: FLdPr var_88
  loc_9F585A: from_stack_1 = clsbase.RecordCount
  loc_9F585F: ILdRf var_AC
  loc_9F5862: LitI4 0
  loc_9F5867: GtI4
  loc_9F5868: FFree1Ad var_88
  loc_9F586B: BranchF loc_9F5946
  loc_9F586E: FLdRfVar var_C8
  loc_9F5871: FLdRfVar var_B8
  loc_9F5874: LitVarStr var_98, "CodiPart"
  loc_9F5879: PopAdLdVar
  loc_9F587A: FLdRfVar var_B4
  loc_9F587D: FLdRfVar var_B0
  loc_9F5880: FLdRfVar var_88
  loc_9F5883: ImpAdLdRf MemVar_C3D724
  loc_9F5886: NewIfNullPr bscPartida
  loc_9F5889: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F588E: FLdPr var_88
  loc_9F5891: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5896: FLdPr var_B0
  loc_9F5899:  = Me.Fields
  loc_9F589E: FLdPr var_B4
  loc_9F58A1: from_stack_2 = Me.Item(from_stack_1)
  loc_9F58A6: FLdPr var_B8
  loc_9F58A9:  = Me.Value
  loc_9F58AE: FLdRfVar var_C8
  loc_9F58B1: CStrVarTmp
  loc_9F58B2: CVarStr var_D8
  loc_9F58B5: PopAdLdVar
  loc_9F58B6: FLdPr Me
  loc_9F58B9: VCallAd Control_ID_CodiPartMsk
  loc_9F58BC: FStAdFunc var_DC
  loc_9F58BF: FLdPr var_DC
  loc_9F58C2: LateIdSt
  loc_9F58C7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F58D4: FFreeVar var_C8 = ""
  loc_9F58DB: FLdRfVar var_C8
  loc_9F58DE: FLdRfVar var_B8
  loc_9F58E1: LitVarStr var_98, "DetaPart"
  loc_9F58E6: PopAdLdVar
  loc_9F58E7: FLdRfVar var_B4
  loc_9F58EA: FLdRfVar var_B0
  loc_9F58ED: FLdRfVar var_88
  loc_9F58F0: ImpAdLdRf MemVar_C3D724
  loc_9F58F3: NewIfNullPr bscPartida
  loc_9F58F6: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F58FB: FLdPr var_88
  loc_9F58FE: from_stack_1v = clsbase.RsFrmGet()
  loc_9F5903: FLdPr var_B0
  loc_9F5906:  = Me.Fields
  loc_9F590B: FLdPr var_B4
  loc_9F590E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F5913: FLdPr var_B8
  loc_9F5916:  = Me.Value
  loc_9F591B: FLdRfVar var_C8
  loc_9F591E: CStrVarTmp
  loc_9F591F: FStStrNoPop var_E0
  loc_9F5922: FLdPr Me
  loc_9F5925: VCallAd Control_ID_CodiPartLbl
  loc_9F5928: FStAdFunc var_DC
  loc_9F592B: FLdPr var_DC
  loc_9F592E: Me.Caption = from_stack_1
  loc_9F5933: FFree1Str var_E0
  loc_9F5936: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F5943: FFree1Var var_C8 = ""
  loc_9F5946: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97D128
  'Data Table: 4F340C
  loc_97D0F4: LitVar_Missing var_A4
  loc_97D0F7: PopAdLdVar
  loc_97D0F8: LitVarI4
  loc_97D100: PopAdLdVar
  loc_97D101: ImpAdLdRf MemVar_C3D9A8
  loc_97D104: NewIfNullPr frmCalendario
  loc_97D107: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D10C: ImpAdLdRf MemVar_C3D038
  loc_97D10F: CDargRef
  loc_97D113: FLdPr Me
  loc_97D116: VCallAd Control_ID_mskDesde
  loc_97D119: FStAdFunc var_A8
  loc_97D11C: FLdPr var_A8
  loc_97D11F: LateIdSt
  loc_97D124: FFree1Ad var_A8
  loc_97D127: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97D190
  'Data Table: 4F340C
  loc_97D15C: LitVar_Missing var_A4
  loc_97D15F: PopAdLdVar
  loc_97D160: LitVarI4
  loc_97D168: PopAdLdVar
  loc_97D169: ImpAdLdRf MemVar_C3D9A8
  loc_97D16C: NewIfNullPr frmCalendario
  loc_97D16F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97D174: ImpAdLdRf MemVar_C3D038
  loc_97D177: CDargRef
  loc_97D17B: FLdPr Me
  loc_97D17E: VCallAd Control_ID_mskHasta
  loc_97D181: FStAdFunc var_A8
  loc_97D184: FLdPr var_A8
  loc_97D187: LateIdSt
  loc_97D18C: FFree1Ad var_A8
  loc_97D18F: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() 'A44844
  'Data Table: 4F340C
  loc_A445E8: FLdRfVar var_8C
  loc_A445EB: FLdPr Me
  loc_A445EE: VCallAd Control_ID_cboPeriodo
  loc_A445F1: FStAdFunc var_88
  loc_A445F4: FLdPr var_88
  loc_A445F7:  = Me.Tag
  loc_A445FC: ILdRf var_8C
  loc_A445FF: FLdRfVar var_94
  loc_A44602: FLdPr Me
  loc_A44605: VCallAd Control_ID_cboPeriodo
  loc_A44608: FStAdFunc var_90
  loc_A4460B: FLdPr var_90
  loc_A4460E:  = Me.Text
  loc_A44613: ILdRf var_94
  loc_A44616: NeStr
  loc_A44618: FFreeStr var_8C = ""
  loc_A4461F: FFreeAd var_88 = ""
  loc_A44626: BranchF loc_A44841
  loc_A44629: FLdRfVar var_8C
  loc_A4462C: FLdPr Me
  loc_A4462F: VCallAd Control_ID_cboPeriodo
  loc_A44632: FStAdFunc var_88
  loc_A44635: FLdPr var_88
  loc_A44638:  = Me.Text
  loc_A4463D: LitI2_Byte 1
  loc_A4463F: LitI2_Byte 1
  loc_A44641: ILdRf var_8C
  loc_A44644: CI2Str
  loc_A44646: FLdRfVar var_A4
  loc_A44649: ImpAdCallFPR4  = DateSerial(, , )
  loc_A4464E: FLdRfVar var_A4
  loc_A44651: CStrVarTmp
  loc_A44652: CVarStr var_B4
  loc_A44655: PopAdLdVar
  loc_A44656: FLdPr Me
  loc_A44659: VCallAd Control_ID_mskDesde
  loc_A4465C: FStAdFunc var_90
  loc_A4465F: FLdPr var_90
  loc_A44662: LateIdSt
  loc_A44667: FFree1Str var_8C
  loc_A4466A: FFreeAd var_88 = ""
  loc_A44671: FFreeVar var_A4 = ""
  loc_A44678: ImpAdLdFPR8 MemVar_C3D04C
  loc_A4467B: CStrDate
  loc_A4467D: CVarStr var_A4
  loc_A44680: PopAdLdVar
  loc_A44681: FLdPr Me
  loc_A44684: VCallAd Control_ID_mskHasta
  loc_A44687: FStAdFunc var_88
  loc_A4468A: FLdPr var_88
  loc_A4468D: LateIdSt
  loc_A44692: FFree1Ad var_88
  loc_A44695: FFree1Var var_A4 = ""
  loc_A44698: FLdPr Me
  loc_A4469B: MemLdStr ExorImpu
  loc_A4469E: LitStr vbNullString
  loc_A446A1: EqStr
  loc_A446A3: BranchF loc_A447C7
  loc_A446A6: LitStr "SELECT DISTINCT ExorImpu"
  loc_A446A9: LitStr " FROM imputacion"
  loc_A446AC: ConcatStr
  loc_A446AD: FStStrNoPop var_8C
  loc_A446B0: LitStr " WHERE PeriInfo = "
  loc_A446B3: ConcatStr
  loc_A446B4: FStStrNoPop var_C8
  loc_A446B7: FLdRfVar var_94
  loc_A446BA: FLdPr Me
  loc_A446BD: VCallAd Control_ID_cboPeriodo
  loc_A446C0: FStAdFunc var_88
  loc_A446C3: FLdPr var_88
  loc_A446C6:  = Me.Text
  loc_A446CB: ILdRf var_94
  loc_A446CE: ConcatStr
  loc_A446CF: FStStrNoPop var_CC
  loc_A446D2: LitStr " ORDER BY ExorImpu;"
  loc_A446D5: ConcatStr
  loc_A446D6: FStStrNoPop var_D0
  loc_A446D9: FLdPr Me
  loc_A446DC: MemLdRfVar from_stack_1.global_124
  loc_A446DF: NewIfNullPr clsimputacion
  loc_A446E2: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A446E7: FFreeStr var_8C = "": var_C8 = "": var_94 = "": var_CC = ""
  loc_A446F4: FFree1Ad var_88
  loc_A446F7: FLdPr Me
  loc_A446FA: VCallAd Control_ID_cboExorImpu
  loc_A446FD: FStAdFunc var_88
  loc_A44700: FLdPr var_88
  loc_A44703: Me.Clear
  loc_A44708: FFree1Ad var_88
  loc_A4470B: FLdRfVar var_D4
  loc_A4470E: FLdPr Me
  loc_A44711: MemLdRfVar from_stack_1.global_124
  loc_A44714: NewIfNullPr clsimputacion
  loc_A44717: from_stack_1 = clsimputacion.RecordCount
  loc_A4471C: ILdRf var_D4
  loc_A4471F: LitI4 0
  loc_A44724: GtI4
  loc_A44725: BranchF loc_A447C4
  loc_A44728: FLdPr Me
  loc_A4472B: MemLdRfVar from_stack_1.global_124
  loc_A4472E: NewIfNullPr clsimputacion
  loc_A44731: Call clsimputacion.MoveFirst()
  loc_A44736: FLdRfVar var_D6
  loc_A44739: FLdPr Me
  loc_A4473C: MemLdRfVar from_stack_1.global_124
  loc_A4473F: NewIfNullPr clsimputacion
  loc_A44742: from_stack_1 = clsimputacion.EOF
  loc_A44747: FLdI2 var_D6
  loc_A4474A: NotI4
  loc_A4474B: BranchF loc_A447C4
  loc_A4474E: LitVar_Missing var_EC
  loc_A44751: PopAdLdVar
  loc_A44752: FLdRfVar var_A4
  loc_A44755: FLdRfVar var_DC
  loc_A44758: LitVarStr var_C4, "ExorImpu"
  loc_A4475D: PopAdLdVar
  loc_A4475E: FLdRfVar var_90
  loc_A44761: FLdRfVar var_88
  loc_A44764: FLdPr Me
  loc_A44767: MemLdRfVar from_stack_1.global_124
  loc_A4476A: NewIfNullPr clsimputacion
  loc_A4476D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A44772: FLdPr var_88
  loc_A44775:  = Me.Fields
  loc_A4477A: FLdPr var_90
  loc_A4477D: from_stack_2 = Me.Item(from_stack_1)
  loc_A44782: FLdPr var_DC
  loc_A44785:  = Me.Value
  loc_A4478A: FLdRfVar var_A4
  loc_A4478D: CStrVarTmp
  loc_A4478E: FStStrNoPop var_8C
  loc_A44791: FLdPr Me
  loc_A44794: VCallAd Control_ID_cboExorImpu
  loc_A44797: FStAdFunc var_F0
  loc_A4479A: FLdPr var_F0
  loc_A4479D: Me.AddItem from_stack_1, from_stack_2
  loc_A447A2: FFree1Str var_8C
  loc_A447A5: FFreeAd var_88 = "": var_90 = "": var_DC = ""
  loc_A447B0: FFree1Var var_A4 = ""
  loc_A447B3: FLdPr Me
  loc_A447B6: MemLdRfVar from_stack_1.global_124
  loc_A447B9: NewIfNullPr clsimputacion
  loc_A447BC: Call clsimputacion.MoveSiguiente()
  loc_A447C1: Branch loc_A44736
  loc_A447C4: Branch loc_A4480F
  loc_A447C7: FLdPr Me
  loc_A447CA: VCallAd Control_ID_cboExorImpu
  loc_A447CD: FStAdFunc var_88
  loc_A447D0: FLdPr var_88
  loc_A447D3: Me.Clear
  loc_A447D8: FFree1Ad var_88
  loc_A447DB: LitVar_Missing var_C4
  loc_A447DE: PopAdLdVar
  loc_A447DF: FLdPr Me
  loc_A447E2: MemLdStr ExorImpu
  loc_A447E5: FLdPr Me
  loc_A447E8: VCallAd Control_ID_cboExorImpu
  loc_A447EB: FStAdFunc var_88
  loc_A447EE: FLdPr var_88
  loc_A447F1: Me.AddItem from_stack_1, from_stack_2
  loc_A447F6: FFree1Ad var_88
  loc_A447F9: LitI2_Byte 0
  loc_A447FB: FLdPr Me
  loc_A447FE: VCallAd Control_ID_cboExorImpu
  loc_A44801: FStAdFunc var_88
  loc_A44804: FLdPr var_88
  loc_A44807: Me.ListIndex = from_stack_1
  loc_A4480C: FFree1Ad var_88
  loc_A4480F: FLdRfVar var_8C
  loc_A44812: FLdPr Me
  loc_A44815: VCallAd Control_ID_cboPeriodo
  loc_A44818: FStAdFunc var_88
  loc_A4481B: FLdPr var_88
  loc_A4481E:  = Me.Text
  loc_A44823: ILdRf var_8C
  loc_A44826: FLdPr Me
  loc_A44829: VCallAd Control_ID_cboPeriodo
  loc_A4482C: FStAdFunc var_90
  loc_A4482F: FLdPr var_90
  loc_A44832: Me.Tag = from_stack_1
  loc_A44837: FFree1Str var_8C
  loc_A4483A: FFreeAd var_88 = ""
  loc_A44841: ExitProcHresult
  loc_A44842: NewIfNullAd
End Sub

Private Sub cmdXLS_Click() '96A77C
  'Data Table: 4F340C
  loc_96A760: LitI2_Byte &HFF
  loc_96A762: LitI2_Byte 0
  loc_96A764: ILdRf Me
  loc_96A767: CastAd
  loc_96A76A: FStAdFunc var_88
  loc_96A76D: FLdRfVar var_88
  loc_96A770: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96A775: FFree1Ad var_88
  loc_96A778: ExitProcHresult
  loc_96A779: FnAbsR4
  loc_96A77A: IDvI2
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '9518E8
  'Data Table: 4F340C
  loc_9518D4: FLdPr Me
  loc_9518D7: VCallAd Control_ID_CucuPersMsk
  loc_9518DA: CVarAd
  loc_9518DE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9518E3: FFree1Var var_94 = ""
  loc_9518E6: ExitProcHresult
End Sub

Private Function CucuPersMsk_UnknownEvent_8(arg_C) '9E753C
  'Data Table: 4F340C
  loc_9E7428: FLdPr Me
  loc_9E742B: VCallAd Control_ID_CucuPersMsk
  loc_9E742E: FStAdFunc var_88
  loc_9E7431: FLdPr var_88
  loc_9E7434: LateIdLdVar var_98 DispID_13 -32767
  loc_9E743B: CBoolVar
  loc_9E743D: FLdPr Me
  loc_9E7440: VCallAd Control_ID_CucuPersMsk
  loc_9E7443: FStAdFunc var_9C
  loc_9E7446: FLdPr var_9C
  loc_9E7449: LateIdLdVar var_AC DispID_22 0
  loc_9E7450: CStrVarTmp
  loc_9E7451: FStStrNoPop var_B0
  loc_9E7454: LitStr vbNullString
  loc_9E7457: NeStr
  loc_9E7459: AndI4
  loc_9E745A: FFree1Str var_B0
  loc_9E745D: FFreeAd var_88 = ""
  loc_9E7464: FFreeVar var_98 = ""
  loc_9E746B: BranchF loc_9E7522
  loc_9E746E: FLdPr Me
  loc_9E7471: VCallAd Control_ID_CucuPersMsk
  loc_9E7474: FStAdFunc var_88
  loc_9E7477: FLdPr var_88
  loc_9E747A: LateIdLdVar var_98 DispID_22 0
  loc_9E7481: PopAd
  loc_9E7483: FLdPr Me
  loc_9E7486: MemLdRfVar from_stack_1.global_80
  loc_9E7489: NewIfNullRf
  loc_9E748D: FLdRfVar var_98
  loc_9E7490: CStrVarTmp
  loc_9E7491: FStStrNoPop var_B0
  loc_9E7494: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_9E7499: FStStrNoPop var_B4
  loc_9E749C: FLdPr Me
  loc_9E749F: MemStStrCopy
  loc_9E74A3: FFreeStr var_B0 = ""
  loc_9E74AA: FFree1Ad var_88
  loc_9E74AD: FFree1Var var_98 = ""
  loc_9E74B0: FLdPr Me
  loc_9E74B3: VCallAd Control_ID_CucuPersMsk
  loc_9E74B6: FStAdFunc var_BC
  loc_9E74B9: FLdPr Me
  loc_9E74BC: VCallAd Control_ID_lblDetaProv
  loc_9E74BF: FStAdFunc var_B8
  loc_9E74C2: FLdRfVar var_B8
  loc_9E74C5: FLdZeroAd var_BC
  loc_9E74C8: FStAdFuncNoPop
  loc_9E74CB: CastAd
  loc_9E74CE: FStAdFunc var_9C
  loc_9E74D1: FLdRfVar var_9C
  loc_9E74D4: FLdPr Me
  loc_9E74D7: MemLdRfVar from_stack_1.global_144
  loc_9E74DA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E74DF: IStI2 arg_C
  loc_9E74E2: FFreeAd var_88 = "": var_9C = "": var_B8 = ""
  loc_9E74ED: ILdI2 arg_C
  loc_9E74F0: NotI4
  loc_9E74F1: BranchF loc_9E751F
  loc_9E74F4: FLdRfVar var_B0
  loc_9E74F7: FLdPr Me
  loc_9E74FA: MemLdRfVar from_stack_1.global_80
  loc_9E74FD: NewIfNullPr tblproveedor
  loc_9E7500: from_stack_1v = tblproveedor.DetaProvGet()
  loc_9E7505: ILdRf var_B0
  loc_9E7508: FLdPr Me
  loc_9E750B: VCallAd Control_ID_lblDetaProv
  loc_9E750E: FStAdFunc var_88
  loc_9E7511: FLdPr var_88
  loc_9E7514: Me.Caption = from_stack_1
  loc_9E7519: FFree1Str var_B0
  loc_9E751C: FFree1Ad var_88
  loc_9E751F: Branch loc_9E7539
  loc_9E7522: LitStr vbNullString
  loc_9E7525: FLdPr Me
  loc_9E7528: VCallAd Control_ID_lblDetaProv
  loc_9E752B: FStAdFunc var_88
  loc_9E752E: FLdPr var_88
  loc_9E7531: Me.Caption = from_stack_1
  loc_9E7536: FFree1Ad var_88
  loc_9E7539: ExitProcHresult
End Function

Private Sub cmdCodiOrga_Click() '9F9DCC
  'Data Table: 4F340C
  loc_9F9C90: LitI2_Byte &HFF
  loc_9F9C92: ImpAdLdRf MemVar_C3D710
  loc_9F9C95: NewIfNullPr bscOrganigrama
  loc_9F9C98: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_9F9C9D: LitNothing
  loc_9F9C9F: CastAd
  loc_9F9CA2: FStAdFuncNoPop
  loc_9F9CA5: ImpAdLdRf MemVar_C3D710
  loc_9F9CA8: NewIfNullPr bscOrganigrama
  loc_9F9CAB: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_9F9CB0: FFree1Ad var_88
  loc_9F9CB3: LitVar_Missing var_A8
  loc_9F9CB6: PopAdLdVar
  loc_9F9CB7: LitVarI4
  loc_9F9CBF: PopAdLdVar
  loc_9F9CC0: ImpAdLdRf MemVar_C3D710
  loc_9F9CC3: NewIfNullPr bscOrganigrama
  loc_9F9CC6: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_9F9CCB: FLdRfVar var_AC
  loc_9F9CCE: FLdRfVar var_88
  loc_9F9CD1: ImpAdLdRf MemVar_C3D710
  loc_9F9CD4: NewIfNullPr bscOrganigrama
  loc_9F9CD7: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F9CDC: FLdPr var_88
  loc_9F9CDF: from_stack_1 = clsbase.RecordCount
  loc_9F9CE4: ILdRf var_AC
  loc_9F9CE7: LitI4 0
  loc_9F9CEC: GtI4
  loc_9F9CED: FFree1Ad var_88
  loc_9F9CF0: BranchF loc_9F9DCB
  loc_9F9CF3: FLdRfVar var_C8
  loc_9F9CF6: FLdRfVar var_B8
  loc_9F9CF9: LitVarStr var_98, "CodiOrga"
  loc_9F9CFE: PopAdLdVar
  loc_9F9CFF: FLdRfVar var_B4
  loc_9F9D02: FLdRfVar var_B0
  loc_9F9D05: FLdRfVar var_88
  loc_9F9D08: ImpAdLdRf MemVar_C3D710
  loc_9F9D0B: NewIfNullPr bscOrganigrama
  loc_9F9D0E: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F9D13: FLdPr var_88
  loc_9F9D16: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9D1B: FLdPr var_B0
  loc_9F9D1E:  = Me.Fields
  loc_9F9D23: FLdPr var_B4
  loc_9F9D26: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9D2B: FLdPr var_B8
  loc_9F9D2E:  = Me.Value
  loc_9F9D33: FLdRfVar var_C8
  loc_9F9D36: CStrVarTmp
  loc_9F9D37: CVarStr var_D8
  loc_9F9D3A: PopAdLdVar
  loc_9F9D3B: FLdPr Me
  loc_9F9D3E: VCallAd Control_ID_CodiOrgaMsk
  loc_9F9D41: FStAdFunc var_DC
  loc_9F9D44: FLdPr var_DC
  loc_9F9D47: LateIdSt
  loc_9F9D4C: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9D59: FFreeVar var_C8 = ""
  loc_9F9D60: FLdRfVar var_C8
  loc_9F9D63: FLdRfVar var_B8
  loc_9F9D66: LitVarStr var_98, "DetaOrga"
  loc_9F9D6B: PopAdLdVar
  loc_9F9D6C: FLdRfVar var_B4
  loc_9F9D6F: FLdRfVar var_B0
  loc_9F9D72: FLdRfVar var_88
  loc_9F9D75: ImpAdLdRf MemVar_C3D710
  loc_9F9D78: NewIfNullPr bscOrganigrama
  loc_9F9D7B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_9F9D80: FLdPr var_88
  loc_9F9D83: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9D88: FLdPr var_B0
  loc_9F9D8B:  = Me.Fields
  loc_9F9D90: FLdPr var_B4
  loc_9F9D93: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9D98: FLdPr var_B8
  loc_9F9D9B:  = Me.Value
  loc_9F9DA0: FLdRfVar var_C8
  loc_9F9DA3: CStrVarTmp
  loc_9F9DA4: FStStrNoPop var_E0
  loc_9F9DA7: FLdPr Me
  loc_9F9DAA: VCallAd Control_ID_CodiOrgaLbl
  loc_9F9DAD: FStAdFunc var_DC
  loc_9F9DB0: FLdPr var_DC
  loc_9F9DB3: Me.Caption = from_stack_1
  loc_9F9DB8: FFree1Str var_E0
  loc_9F9DBB: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9DC8: FFree1Var var_C8 = ""
  loc_9F9DCB: ExitProcHresult
End Sub

Private Sub cboExorImpu_Change() '9741E0
  'Data Table: 4F340C
  loc_9741BC: FLdRfVar var_8C
  loc_9741BF: FLdPr Me
  loc_9741C2: VCallAd Control_ID_cboExorImpu
  loc_9741C5: FStAdFunc var_88
  loc_9741C8: FLdPr var_88
  loc_9741CB:  = Me.Text
  loc_9741D0: ILdRf var_8C
  loc_9741D3: Call Proc_252_52_A2387C()
  loc_9741D8: FFree1Str var_8C
  loc_9741DB: FFree1Ad var_88
  loc_9741DE: ExitProcHresult
End Sub

Private Sub cboExorImpu_Click() '98EEB0
  'Data Table: 4F340C
  loc_98EE68: FLdRfVar var_8C
  loc_98EE6B: FLdPrThis
  loc_98EE6C: VCallAd Control_ID_cboExorImpu
  loc_98EE6F: FStAdFunc var_88
  loc_98EE72: FLdPr var_88
  loc_98EE75:  = Me.Text
  loc_98EE7A: ILdRf var_8C
  loc_98EE7D: LitStr vbNullString
  loc_98EE80: NeStr
  loc_98EE82: FFree1Str var_8C
  loc_98EE85: FFree1Ad var_88
  loc_98EE88: BranchF loc_98EEAD
  loc_98EE8B: FLdRfVar var_8C
  loc_98EE8E: FLdPr Me
  loc_98EE91: VCallAd Control_ID_cboExorImpu
  loc_98EE94: FStAdFunc var_88
  loc_98EE97: FLdPr var_88
  loc_98EE9A:  = Me.Text
  loc_98EE9F: ILdRf var_8C
  loc_98EEA2: Call Proc_252_52_A2387C()
  loc_98EEA7: FFree1Str var_8C
  loc_98EEAA: FFree1Ad var_88
  loc_98EEAD: ExitProcHresult
End Sub

Private Sub cboExorImpu_KeyPress(KeyAscii As Integer) '975E14
  'Data Table: 4F340C
  loc_975DEC: FLdPr Me
  loc_975DEF: VCallAd Control_ID_cboExorImpu
  loc_975DF2: FStAdFunc var_8C
  loc_975DF5: ILdI2 KeyAscii
  loc_975DF8: FLdZeroAd var_8C
  loc_975DFB: FStAdFunc var_88
  loc_975DFE: FLdRfVar var_88
  loc_975E01: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_975E06: IStI2 KeyAscii
  loc_975E09: FFreeAd var_88 = ""
  loc_975E10: ExitProcHresult
End Sub

Private Sub cboExorImpu_LostFocus() '974B38
  'Data Table: 4F340C
  loc_974B14: FLdRfVar var_8C
  loc_974B17: FLdPr Me
  loc_974B1A: VCallAd Control_ID_cboExorImpu
  loc_974B1D: FStAdFunc var_88
  loc_974B20: FLdPr var_88
  loc_974B23:  = Me.Text
  loc_974B28: ILdRf var_8C
  loc_974B2B: Call Proc_252_52_A2387C()
  loc_974B30: FFree1Str var_8C
  loc_974B33: FFree1Ad var_88
  loc_974B36: ExitProcHresult
End Sub

Private Sub cboExorImpu_Scroll() '974B94
  'Data Table: 4F340C
  loc_974B70: FLdRfVar var_8C
  loc_974B73: FLdPr Me
  loc_974B76: VCallAd Control_ID_cboExorImpu
  loc_974B79: FStAdFunc var_88
  loc_974B7C: FLdPr var_88
  loc_974B7F:  = Me.Text
  loc_974B84: ILdRf var_8C
  loc_974B87: Call Proc_252_52_A2387C()
  loc_974B8C: FFree1Str var_8C
  loc_974B8F: FFree1Ad var_88
  loc_974B92: ExitProcHresult
End Sub

Private Sub cboExorImpu_Validate(Cancel As Boolean) '9BC2C4
  'Data Table: 4F340C
  loc_9BC210: FLdRfVar var_8C
  loc_9BC213: FLdPr Me
  loc_9BC216: VCallAd Control_ID_cboExorImpu
  loc_9BC219: FStAdFunc var_88
  loc_9BC21C: FLdPr var_88
  loc_9BC21F:  = Me.Text
  loc_9BC224: ILdRf var_8C
  loc_9BC227: LitStr vbNullString
  loc_9BC22A: NeStr
  loc_9BC22C: FFree1Str var_8C
  loc_9BC22F: FFree1Ad var_88
  loc_9BC232: BranchF loc_9BC27A
  loc_9BC235: FLdRfVar var_8C
  loc_9BC238: FLdPr Me
  loc_9BC23B: VCallAd Control_ID_cboExorImpu
  loc_9BC23E: FStAdFunc var_88
  loc_9BC241: FLdPr var_88
  loc_9BC244:  = Me.Text
  loc_9BC249: LitI2_Byte 0
  loc_9BC24B: PopTmpLdAd2 var_92
  loc_9BC24E: LitI2_Byte 0
  loc_9BC250: PopTmpLdAd2 var_90
  loc_9BC253: LitI2_Byte 0
  loc_9BC255: PopTmpLdAd2 var_8E
  loc_9BC258: ILdRf var_8C
  loc_9BC25B: LitStr "Expediente Original"
  loc_9BC25E: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BC263: FStStrNoPop var_98
  loc_9BC266: FLdPr Me
  loc_9BC269: MemStStrCopy
  loc_9BC26D: FFreeStr var_8C = ""
  loc_9BC274: FFree1Ad var_88
  loc_9BC277: Branch loc_9BC284
  loc_9BC27A: LitStr "Debe ingresar un número de expediente. Verifique..."
  loc_9BC27D: FLdPr Me
  loc_9BC280: MemStStrCopy
  loc_9BC284: FLdPr Me
  loc_9BC287: VCallAd Control_ID_cboExorImpu
  loc_9BC28A: FStAdFunc var_A4
  loc_9BC28D: LitNothing
  loc_9BC28F: CastAd
  loc_9BC292: FStAdFunc var_A0
  loc_9BC295: FLdRfVar var_A0
  loc_9BC298: FLdZeroAd var_A4
  loc_9BC29B: FStAdFuncNoPop
  loc_9BC29E: CastAd
  loc_9BC2A1: FStAdFunc var_9C
  loc_9BC2A4: FLdRfVar var_9C
  loc_9BC2A7: FLdPr Me
  loc_9BC2AA: MemLdRfVar from_stack_1.global_144
  loc_9BC2AD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BC2B2: IStI2 Cancel
  loc_9BC2B5: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_9BC2C0: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9D1CF8
  'Data Table: 4F340C
  loc_9D1C1C: LitStr "Municipalidad de Guaymallén"
  loc_9D1C1F: LitStr "Municipalidad de General Alvear"
  loc_9D1C22: EqStr
  loc_9D1C24: BranchF loc_9D1CB7
  loc_9D1C27: LitI2_Byte 0
  loc_9D1C29: PopTmpLdAd2 var_86
  loc_9D1C2C: Call cboExorImpu_Validate(from_stack_1v)
  loc_9D1C31: FLdPr Me
  loc_9D1C34: MemLdStr global_144
  loc_9D1C37: LitStr vbNullString
  loc_9D1C3A: NeStr
  loc_9D1C3C: BranchF loc_9D1C42
  loc_9D1C3F: Branch loc_9D1CCD
  loc_9D1C42: LitStr "Expte "
  loc_9D1C45: FLdRfVar var_90
  loc_9D1C48: FLdPr Me
  loc_9D1C4B: VCallAd Control_ID_cboPeriodo
  loc_9D1C4E: FStAdFunc var_8C
  loc_9D1C51: FLdPr var_8C
  loc_9D1C54:  = Me.Text
  loc_9D1C59: ILdRf var_90
  loc_9D1C5C: ConcatStr
  loc_9D1C5D: FStStrNoPop var_94
  loc_9D1C60: LitStr "-"
  loc_9D1C63: ConcatStr
  loc_9D1C64: FStStrNoPop var_A0
  loc_9D1C67: FLdRfVar var_9C
  loc_9D1C6A: FLdPr Me
  loc_9D1C6D: VCallAd Control_ID_cboExorImpu
  loc_9D1C70: FStAdFunc var_98
  loc_9D1C73: FLdPr var_98
  loc_9D1C76:  = Me.Text
  loc_9D1C7B: ILdRf var_9C
  loc_9D1C7E: ConcatStr
  loc_9D1C7F: FStStrNoPop var_A4
  loc_9D1C82: FLdPr Me
  loc_9D1C85: Me.Tag = from_stack_1
  loc_9D1C8A: FFreeStr var_90 = "": var_94 = "": var_A0 = "": var_9C = ""
  loc_9D1C97: FFreeAd var_8C = ""
  loc_9D1C9E: LitI2_Byte 0
  loc_9D1CA0: ILdRf Me
  loc_9D1CA3: CastAd
  loc_9D1CA6: FStAdFunc var_8C
  loc_9D1CA9: FLdRfVar var_8C
  loc_9D1CAC: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9D1CB1: FFree1Ad var_8C
  loc_9D1CB4: Branch loc_9D1CCD
  loc_9D1CB7: LitI2_Byte 0
  loc_9D1CB9: ILdRf Me
  loc_9D1CBC: CastAd
  loc_9D1CBF: FStAdFunc var_8C
  loc_9D1CC2: FLdRfVar var_8C
  loc_9D1CC5: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9D1CCA: FFree1Ad var_8C
  loc_9D1CCD: LitI4 0
  loc_9D1CD2: CI2I4
  loc_9D1CD3: FLdPr Me
  loc_9D1CD6: Me.MousePointer = from_stack_1
  loc_9D1CDB: LitVarStr var_B4, vbNullString
  loc_9D1CE0: PopAdLdVar
  loc_9D1CE1: FLdPr Me
  loc_9D1CE4: VCallAd Control_ID_statusBar
  loc_9D1CE7: FStAdFunc var_8C
  loc_9D1CEA: FLdPr var_8C
  loc_9D1CED: LateIdSt
  loc_9D1CF2: FFree1Ad var_8C
  loc_9D1CF5: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '951A08
  'Data Table: 4F340C
  loc_9519F4: FLdPr Me
  loc_9519F7: VCallAd Control_ID_CodiPartMsk
  loc_9519FA: CVarAd
  loc_9519FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951A03: FFree1Var var_94 = ""
  loc_951A06: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A0A7FC
  'Data Table: 4F340C
  loc_A0A6B0: LitStr "SELECT DetaPart FROM partida WHERE PeriInfo = "
  loc_A0A6B3: FLdRfVar var_90
  loc_A0A6B6: FLdPr Me
  loc_A0A6B9: VCallAd Control_ID_cboPeriodo
  loc_A0A6BC: FStAdFunc var_8C
  loc_A0A6BF: FLdPr var_8C
  loc_A0A6C2:  = Me.Text
  loc_A0A6C7: ILdRf var_90
  loc_A0A6CA: ConcatStr
  loc_A0A6CB: FStStrNoPop var_94
  loc_A0A6CE: LitStr " AND CodiPart LIKE '"
  loc_A0A6D1: ConcatStr
  loc_A0A6D2: FStStrNoPop var_AC
  loc_A0A6D5: FLdPr Me
  loc_A0A6D8: VCallAd Control_ID_CodiPartMsk
  loc_A0A6DB: FStAdFunc var_98
  loc_A0A6DE: FLdPr var_98
  loc_A0A6E1: LateIdLdVar var_A8 DispID_22 0
  loc_A0A6E8: CStrVarTmp
  loc_A0A6E9: FStStrNoPop var_B0
  loc_A0A6EC: ConcatStr
  loc_A0A6ED: FStStrNoPop var_B4
  loc_A0A6F0: LitStr Chr(37) & "'"
  loc_A0A6F3: ConcatStr
  loc_A0A6F4: FStStrNoPop var_B8
  loc_A0A6F7: FLdRfVar var_88
  loc_A0A6FA: NewIfNullPr clspartida
  loc_A0A6FD: Call clspartida.RedefineRS(from_stack_1v)
  loc_A0A702: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A0A711: FFreeAd var_8C = ""
  loc_A0A718: FFree1Var var_A8 = ""
  loc_A0A71B: FLdRfVar var_BC
  loc_A0A71E: FLdRfVar var_88
  loc_A0A721: NewIfNullPr clspartida
  loc_A0A724: from_stack_1 = clspartida.RecordCount
  loc_A0A729: ILdRf var_BC
  loc_A0A72C: FStR4 var_C0
  loc_A0A72F: ILdRf var_C0
  loc_A0A732: LitI4 0
  loc_A0A737: EqI4
  loc_A0A738: BranchF loc_A0A755
  loc_A0A73B: LitStr "0 registros encontrados"
  loc_A0A73E: FLdPr Me
  loc_A0A741: VCallAd Control_ID_CodiPartLbl
  loc_A0A744: FStAdFunc var_8C
  loc_A0A747: FLdPr var_8C
  loc_A0A74A: Me.Caption = from_stack_1
  loc_A0A74F: FFree1Ad var_8C
  loc_A0A752: Branch loc_A0A7FA
  loc_A0A755: ILdRf var_C0
  loc_A0A758: LitI4 1
  loc_A0A75D: EqI4
  loc_A0A75E: BranchF loc_A0A7C2
  loc_A0A761: FLdRfVar var_A8
  loc_A0A764: FLdRfVar var_D4
  loc_A0A767: LitVarStr var_D0, "DetaPart"
  loc_A0A76C: PopAdLdVar
  loc_A0A76D: FLdRfVar var_98
  loc_A0A770: FLdRfVar var_8C
  loc_A0A773: FLdRfVar var_88
  loc_A0A776: NewIfNullPr clspartida
  loc_A0A779: from_stack_1v = clspartida.RsFrmGet()
  loc_A0A77E: FLdPr var_8C
  loc_A0A781:  = Me.Fields
  loc_A0A786: FLdPr var_98
  loc_A0A789: from_stack_2 = Me.Item(from_stack_1)
  loc_A0A78E: FLdPr var_D4
  loc_A0A791:  = Me.Value
  loc_A0A796: FLdRfVar var_A8
  loc_A0A799: CStrVarTmp
  loc_A0A79A: FStStrNoPop var_90
  loc_A0A79D: FLdPr Me
  loc_A0A7A0: VCallAd Control_ID_CodiPartLbl
  loc_A0A7A3: FStAdFunc var_D8
  loc_A0A7A6: FLdPr var_D8
  loc_A0A7A9: Me.Caption = from_stack_1
  loc_A0A7AE: FFree1Str var_90
  loc_A0A7B1: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A0A7BC: FFree1Var var_A8 = ""
  loc_A0A7BF: Branch loc_A0A7FA
  loc_A0A7C2: FLdRfVar var_BC
  loc_A0A7C5: FLdRfVar var_88
  loc_A0A7C8: NewIfNullPr clspartida
  loc_A0A7CB: from_stack_1 = clspartida.RecordCount
  loc_A0A7D0: ILdRf var_BC
  loc_A0A7D3: CStrI4
  loc_A0A7D5: FStStrNoPop var_90
  loc_A0A7D8: LitStr " partidas encontradas"
  loc_A0A7DB: ConcatStr
  loc_A0A7DC: FStStrNoPop var_94
  loc_A0A7DF: FLdPr Me
  loc_A0A7E2: VCallAd Control_ID_CodiPartLbl
  loc_A0A7E5: FStAdFunc var_8C
  loc_A0A7E8: FLdPr var_8C
  loc_A0A7EB: Me.Caption = from_stack_1
  loc_A0A7F0: FFreeStr var_90 = ""
  loc_A0A7F7: FFree1Ad var_8C
  loc_A0A7FA: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '951978
  'Data Table: 4F340C
  loc_951964: FLdPr Me
  loc_951967: VCallAd Control_ID_CodiOrgaMsk
  loc_95196A: CVarAd
  loc_95196E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951973: FFree1Var var_94 = ""
  loc_951976: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A0AD00
  'Data Table: 4F340C
  loc_A0ABB4: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A0ABB7: FLdRfVar var_90
  loc_A0ABBA: FLdPr Me
  loc_A0ABBD: VCallAd Control_ID_cboPeriodo
  loc_A0ABC0: FStAdFunc var_8C
  loc_A0ABC3: FLdPr var_8C
  loc_A0ABC6:  = Me.Text
  loc_A0ABCB: ILdRf var_90
  loc_A0ABCE: ConcatStr
  loc_A0ABCF: FStStrNoPop var_94
  loc_A0ABD2: LitStr " AND CodiOrga LIKE '"
  loc_A0ABD5: ConcatStr
  loc_A0ABD6: FStStrNoPop var_AC
  loc_A0ABD9: FLdPr Me
  loc_A0ABDC: VCallAd Control_ID_CodiOrgaMsk
  loc_A0ABDF: FStAdFunc var_98
  loc_A0ABE2: FLdPr var_98
  loc_A0ABE5: LateIdLdVar var_A8 DispID_22 0
  loc_A0ABEC: CStrVarTmp
  loc_A0ABED: FStStrNoPop var_B0
  loc_A0ABF0: ConcatStr
  loc_A0ABF1: FStStrNoPop var_B4
  loc_A0ABF4: LitStr Chr(37) & "'"
  loc_A0ABF7: ConcatStr
  loc_A0ABF8: FStStrNoPop var_B8
  loc_A0ABFB: FLdRfVar var_88
  loc_A0ABFE: NewIfNullPr clsorganigrama
  loc_A0AC01: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A0AC06: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A0AC15: FFreeAd var_8C = ""
  loc_A0AC1C: FFree1Var var_A8 = ""
  loc_A0AC1F: FLdRfVar var_BC
  loc_A0AC22: FLdRfVar var_88
  loc_A0AC25: NewIfNullPr clsorganigrama
  loc_A0AC28: from_stack_1 = clsorganigrama.RecordCount
  loc_A0AC2D: ILdRf var_BC
  loc_A0AC30: FStR4 var_C0
  loc_A0AC33: ILdRf var_C0
  loc_A0AC36: LitI4 0
  loc_A0AC3B: EqI4
  loc_A0AC3C: BranchF loc_A0AC59
  loc_A0AC3F: LitStr "0 registros encontrados"
  loc_A0AC42: FLdPr Me
  loc_A0AC45: VCallAd Control_ID_CodiOrgaLbl
  loc_A0AC48: FStAdFunc var_8C
  loc_A0AC4B: FLdPr var_8C
  loc_A0AC4E: Me.Caption = from_stack_1
  loc_A0AC53: FFree1Ad var_8C
  loc_A0AC56: Branch loc_A0ACFE
  loc_A0AC59: ILdRf var_C0
  loc_A0AC5C: LitI4 1
  loc_A0AC61: EqI4
  loc_A0AC62: BranchF loc_A0ACC6
  loc_A0AC65: FLdRfVar var_A8
  loc_A0AC68: FLdRfVar var_D4
  loc_A0AC6B: LitVarStr var_D0, "DetaOrga"
  loc_A0AC70: PopAdLdVar
  loc_A0AC71: FLdRfVar var_98
  loc_A0AC74: FLdRfVar var_8C
  loc_A0AC77: FLdRfVar var_88
  loc_A0AC7A: NewIfNullPr clsorganigrama
  loc_A0AC7D: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A0AC82: FLdPr var_8C
  loc_A0AC85:  = Me.Fields
  loc_A0AC8A: FLdPr var_98
  loc_A0AC8D: from_stack_2 = Me.Item(from_stack_1)
  loc_A0AC92: FLdPr var_D4
  loc_A0AC95:  = Me.Value
  loc_A0AC9A: FLdRfVar var_A8
  loc_A0AC9D: CStrVarTmp
  loc_A0AC9E: FStStrNoPop var_90
  loc_A0ACA1: FLdPr Me
  loc_A0ACA4: VCallAd Control_ID_CodiOrgaLbl
  loc_A0ACA7: FStAdFunc var_D8
  loc_A0ACAA: FLdPr var_D8
  loc_A0ACAD: Me.Caption = from_stack_1
  loc_A0ACB2: FFree1Str var_90
  loc_A0ACB5: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A0ACC0: FFree1Var var_A8 = ""
  loc_A0ACC3: Branch loc_A0ACFE
  loc_A0ACC6: FLdRfVar var_BC
  loc_A0ACC9: FLdRfVar var_88
  loc_A0ACCC: NewIfNullPr clsorganigrama
  loc_A0ACCF: from_stack_1 = clsorganigrama.RecordCount
  loc_A0ACD4: ILdRf var_BC
  loc_A0ACD7: CStrI4
  loc_A0ACD9: FStStrNoPop var_90
  loc_A0ACDC: LitStr " organigramas encontrados"
  loc_A0ACDF: ConcatStr
  loc_A0ACE0: FStStrNoPop var_94
  loc_A0ACE3: FLdPr Me
  loc_A0ACE6: VCallAd Control_ID_CodiOrgaLbl
  loc_A0ACE9: FStAdFunc var_8C
  loc_A0ACEC: FLdPr var_8C
  loc_A0ACEF: Me.Caption = from_stack_1
  loc_A0ACF4: FFreeStr var_90 = ""
  loc_A0ACFB: FFree1Ad var_8C
  loc_A0ACFE: ExitProcHresult
End Sub

Private Sub BuscaExpeFra_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single) '99010C
  'Data Table: 4F340C
  loc_9900C0: ILdI2 Button
  loc_9900C3: CI4UI1
  loc_9900C4: LitI4 1
  loc_9900C9: EqI4
  loc_9900CA: ILdI2 Shift
  loc_9900CD: CI4UI1
  loc_9900CE: LitI4 2
  loc_9900D3: EqI4
  loc_9900D4: AndI4
  loc_9900D5: BranchF loc_990108
  loc_9900D8: FLdRfVar var_8A
  loc_9900DB: FLdPr Me
  loc_9900DE: VCallAd Control_ID_SinteticoChk
  loc_9900E1: FStAdFunc var_88
  loc_9900E4: FLdPr var_88
  loc_9900E7:  = Me.Visible
  loc_9900EC: FLdI2 var_8A
  loc_9900EF: NotI4
  loc_9900F0: FLdPr Me
  loc_9900F3: VCallAd Control_ID_SinteticoChk
  loc_9900F6: FStAdFunc var_90
  loc_9900F9: FLdPr var_90
  loc_9900FC: Me.Visible = from_stack_1b
  loc_990101: FFreeAd var_88 = ""
  loc_990108: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '986224
  'Data Table: 4F340C
  loc_9861EC: FLdPr Me
  loc_9861EF: VCallAd Control_ID_statusBar
  loc_9861F2: FStAdFunc var_88
  loc_9861F5: FLdPr var_88
  loc_9861F8: LateIdLdVar var_98 DispID_1 0
  loc_9861FF: CStrVarTmp
  loc_986200: CVarStr var_A8
  loc_986203: PopAdLdVar
  loc_986204: FLdPr Me
  loc_986207: VCallAd Control_ID_statusBar
  loc_98620A: FStAdFunc var_BC
  loc_98620D: FLdPr var_BC
  loc_986210: LateIdSt
  loc_986215: FFreeAd var_88 = ""
  loc_98621C: FFreeVar var_98 = ""
  loc_986223: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95494C
  'Data Table: 4F340C
  loc_954934: ILdRf Me
  loc_954937: CastAd
  loc_95493A: FStAdFunc var_88
  loc_95493D: FLdRfVar var_88
  loc_954940: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_954945: FFree1Ad var_88
  loc_954948: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '981134
  'Data Table: 4F340C
  loc_9810FC: ILdRf Me
  loc_9810FF: CastAd
  loc_981102: FStAdFunc var_88
  loc_981105: FLdRfVar var_88
  loc_981108: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_98110D: FFree1Ad var_88
  loc_981110: LitStr "Municipalidad de Guaymallén"
  loc_981113: LitStr "Municipalidad de Rivadavia"
  loc_981116: EqStr
  loc_981118: BranchF loc_981130
  loc_98111B: ILdRf Me
  loc_98111E: FStAdNoPop
  loc_981122: ImpAdLdRf MemVar_C44F9C
  loc_981125: NewIfNullPr Me
  loc_981128: Me.Global.Unload from_stack_1
  loc_98112D: FFree1Ad var_88
  loc_981130: ExitProcHresult
End Sub

Private Sub CucuPersCmd_Click() 'A032B0
  'Data Table: 4F340C
  loc_A03164: ImpAdLdRf MemVar_C3D74C
  loc_A03167: NewIfNullAd
  loc_A0316A: FStAd var_88 
  loc_A0316E: LitI2_Byte 0
  loc_A03170: FLdPr var_88
  loc_A03173: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A03178: LitNothing
  loc_A0317A: CastAd
  loc_A0317D: FStAdFuncNoPop
  loc_A03180: FLdRfVar var_8C
  loc_A03183: ImpAdLdRf MemVar_C3D74C
  loc_A03186: NewIfNullPr bscProveedor
  loc_A03189: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0318E: FLdPr var_8C
  loc_A03191: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A03196: FFreeAd var_90 = ""
  loc_A0319D: LitVar_Missing var_B0
  loc_A031A0: PopAdLdVar
  loc_A031A1: LitVarI4
  loc_A031A9: PopAdLdVar
  loc_A031AA: FLdPr var_88
  loc_A031AD: Me.Show from_stack_1, from_stack_2
  loc_A031B2: FLdRfVar var_B4
  loc_A031B5: FLdRfVar var_8C
  loc_A031B8: FLdPr var_88
  loc_A031BB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A031C0: FLdPr var_8C
  loc_A031C3: from_stack_1 = clsbase.RecordCount
  loc_A031C8: ILdRf var_B4
  loc_A031CB: LitI4 0
  loc_A031D0: GtI4
  loc_A031D1: FFree1Ad var_8C
  loc_A031D4: BranchF loc_A032A9
  loc_A031D7: FLdRfVar var_CC
  loc_A031DA: FLdRfVar var_BC
  loc_A031DD: LitVarStr var_A0, "CucuPers"
  loc_A031E2: PopAdLdVar
  loc_A031E3: FLdRfVar var_B8
  loc_A031E6: FLdRfVar var_90
  loc_A031E9: FLdRfVar var_8C
  loc_A031EC: FLdPr var_88
  loc_A031EF: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A031F4: FLdPr var_8C
  loc_A031F7: from_stack_1v = clsbase.RsFrmGet()
  loc_A031FC: FLdPr var_90
  loc_A031FF:  = Me.Fields
  loc_A03204: FLdPr var_B8
  loc_A03207: from_stack_2 = Me.Item(from_stack_1)
  loc_A0320C: FLdPr var_BC
  loc_A0320F:  = Me.Value
  loc_A03214: FLdRfVar var_CC
  loc_A03217: CStrVarTmp
  loc_A03218: CVarStr var_DC
  loc_A0321B: PopAdLdVar
  loc_A0321C: FLdPr Me
  loc_A0321F: VCallAd Control_ID_CucuPersMsk
  loc_A03222: FStAdFunc var_E0
  loc_A03225: FLdPr var_E0
  loc_A03228: LateIdSt
  loc_A0322D: FFreeAd var_8C = "": var_90 = "": var_B8 = "": var_BC = ""
  loc_A0323A: FFreeVar var_CC = ""
  loc_A03241: FLdRfVar var_CC
  loc_A03244: FLdRfVar var_BC
  loc_A03247: LitVarStr var_A0, "DetaProv"
  loc_A0324C: PopAdLdVar
  loc_A0324D: FLdRfVar var_B8
  loc_A03250: FLdRfVar var_90
  loc_A03253: FLdRfVar var_8C
  loc_A03256: FLdPr var_88
  loc_A03259: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0325E: FLdPr var_8C
  loc_A03261: from_stack_1v = clsbase.RsFrmGet()
  loc_A03266: FLdPr var_90
  loc_A03269:  = Me.Fields
  loc_A0326E: FLdPr var_B8
  loc_A03271: from_stack_2 = Me.Item(from_stack_1)
  loc_A03276: FLdPr var_BC
  loc_A03279:  = Me.Value
  loc_A0327E: FLdRfVar var_CC
  loc_A03281: CStrVarTmp
  loc_A03282: FStStrNoPop var_E4
  loc_A03285: FLdPr Me
  loc_A03288: VCallAd Control_ID_lblDetaProv
  loc_A0328B: FStAdFunc var_E0
  loc_A0328E: FLdPr var_E0
  loc_A03291: Me.Caption = from_stack_1
  loc_A03296: FFree1Str var_E4
  loc_A03299: FFreeAd var_8C = "": var_90 = "": var_B8 = "": var_BC = ""
  loc_A032A6: FFree1Var var_CC = ""
  loc_A032A9: LitNothing
  loc_A032AB: FStAd var_88 
  loc_A032AF: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A36100
  'Data Table: 4F340C
  loc_A35EEC: FLdPr Me
  loc_A35EEF: MemLdI2 bGenerado
  loc_A35EF2: NotI4
  loc_A35EF3: BranchF loc_A35F00
  loc_A35EF6: LitStr vbNullString
  loc_A35EF9: FLdPr Me
  loc_A35EFC: MemStStrCopy
  loc_A35F00: LitI2_Byte 0
  loc_A35F02: FLdPr Me
  loc_A35F05: MemStI2 bGenerado
  loc_A35F08: LitI2_Byte &HFF
  loc_A35F0A: FLdPr Me
  loc_A35F0D: MemStI2 bLogos
  loc_A35F10: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A35F15: LitStr vbNullString
  loc_A35F18: FLdPr Me
  loc_A35F1B: VCallAd Control_ID_cboExorImpu
  loc_A35F1E: FStAdFunc var_88
  loc_A35F21: FLdPr var_88
  loc_A35F24: Me.Text = from_stack_1
  loc_A35F29: FFree1Ad var_88
  loc_A35F2C: ImpAdLdI2 MemVar_C3D064
  loc_A35F2F: CStrUI1
  loc_A35F31: FStStrNoPop var_8C
  loc_A35F34: FLdPr Me
  loc_A35F37: VCallAd Control_ID_cboPeriodo
  loc_A35F3A: FStAdFunc var_88
  loc_A35F3D: FLdPr var_88
  loc_A35F40: Me.Text = from_stack_1
  loc_A35F45: FFree1Str var_8C
  loc_A35F48: FFree1Ad var_88
  loc_A35F4B: LitI2_Byte 1
  loc_A35F4D: LitI2_Byte 1
  loc_A35F4F: ImpAdLdI2 MemVar_C3D064
  loc_A35F52: FLdRfVar var_9C
  loc_A35F55: ImpAdCallFPR4  = DateSerial(, , )
  loc_A35F5A: FLdRfVar var_9C
  loc_A35F5D: CStrVarTmp
  loc_A35F5E: CVarStr var_AC
  loc_A35F61: PopAdLdVar
  loc_A35F62: FLdPr Me
  loc_A35F65: VCallAd Control_ID_mskDesde
  loc_A35F68: FStAdFunc var_88
  loc_A35F6B: FLdPr var_88
  loc_A35F6E: LateIdSt
  loc_A35F73: FFree1Ad var_88
  loc_A35F76: FFreeVar var_9C = ""
  loc_A35F7D: ImpAdLdFPR8 MemVar_C3D04C
  loc_A35F80: CStrDate
  loc_A35F82: CVarStr var_9C
  loc_A35F85: PopAdLdVar
  loc_A35F86: FLdPr Me
  loc_A35F89: VCallAd Control_ID_mskHasta
  loc_A35F8C: FStAdFunc var_88
  loc_A35F8F: FLdPr var_88
  loc_A35F92: LateIdSt
  loc_A35F97: FFree1Ad var_88
  loc_A35F9A: FFree1Var var_9C = ""
  loc_A35F9D: LitVarStr var_BC, vbNullString
  loc_A35FA2: PopAdLdVar
  loc_A35FA3: FLdPr Me
  loc_A35FA6: VCallAd Control_ID_CodiOrcoMsk
  loc_A35FA9: FStAdFunc var_88
  loc_A35FAC: FLdPr var_88
  loc_A35FAF: LateIdSt
  loc_A35FB4: FFree1Ad var_88
  loc_A35FB7: LitVarStr var_BC, vbNullString
  loc_A35FBC: PopAdLdVar
  loc_A35FBD: FLdPr Me
  loc_A35FC0: VCallAd Control_ID_CodiNopeMsk
  loc_A35FC3: FStAdFunc var_88
  loc_A35FC6: FLdPr var_88
  loc_A35FC9: LateIdSt
  loc_A35FCE: FFree1Ad var_88
  loc_A35FD1: LitVarStr var_BC, vbNullString
  loc_A35FD6: PopAdLdVar
  loc_A35FD7: FLdPr Me
  loc_A35FDA: VCallAd Control_ID_CodiPartMsk
  loc_A35FDD: FStAdFunc var_88
  loc_A35FE0: FLdPr var_88
  loc_A35FE3: LateIdSt
  loc_A35FE8: FFree1Ad var_88
  loc_A35FEB: LitStr vbNullString
  loc_A35FEE: FLdPr Me
  loc_A35FF1: VCallAd Control_ID_CodiPartLbl
  loc_A35FF4: FStAdFunc var_88
  loc_A35FF7: FLdPr var_88
  loc_A35FFA: Me.Caption = from_stack_1
  loc_A35FFF: FFree1Ad var_88
  loc_A36002: LitVarStr var_BC, vbNullString
  loc_A36007: PopAdLdVar
  loc_A36008: FLdPr Me
  loc_A3600B: VCallAd Control_ID_CodiOrgaMsk
  loc_A3600E: FStAdFunc var_88
  loc_A36011: FLdPr var_88
  loc_A36014: LateIdSt
  loc_A36019: FFree1Ad var_88
  loc_A3601C: LitStr vbNullString
  loc_A3601F: FLdPr Me
  loc_A36022: VCallAd Control_ID_CodiOrgaLbl
  loc_A36025: FStAdFunc var_88
  loc_A36028: FLdPr var_88
  loc_A3602B: Me.Caption = from_stack_1
  loc_A36030: FFree1Ad var_88
  loc_A36033: LitVarStr var_BC, vbNullString
  loc_A36038: PopAdLdVar
  loc_A36039: FLdPr Me
  loc_A3603C: VCallAd Control_ID_CucuPersMsk
  loc_A3603F: FStAdFunc var_88
  loc_A36042: FLdPr var_88
  loc_A36045: LateIdSt
  loc_A3604A: FFree1Ad var_88
  loc_A3604D: LitStr vbNullString
  loc_A36050: FLdPr Me
  loc_A36053: VCallAd Control_ID_lblDetaProv
  loc_A36056: FStAdFunc var_88
  loc_A36059: FLdPr var_88
  loc_A3605C: Me.Caption = from_stack_1
  loc_A36061: FFree1Ad var_88
  loc_A36064: LitI2_Byte 0
  loc_A36066: FLdPr Me
  loc_A36069: VCallAd Control_ID_cboCodiUsua
  loc_A3606C: FStAdFunc var_88
  loc_A3606F: FLdPr var_88
  loc_A36072: Me.ListIndex = from_stack_1
  loc_A36077: FFree1Ad var_88
  loc_A3607A: LitStr vbNullString
  loc_A3607D: FLdPr Me
  loc_A36080: VCallAd Control_ID_txtPie
  loc_A36083: FStAdFunc var_88
  loc_A36086: FLdPr var_88
  loc_A36089: Me.Text = from_stack_1
  loc_A3608E: FFree1Ad var_88
  loc_A36091: LitStr "Municipalidad de Guaymallén"
  loc_A36094: FStStrCopy var_D0
  loc_A36097: ILdRf var_D0
  loc_A3609A: LitStr "Municipalidad de General Alvear"
  loc_A3609D: EqStr
  loc_A3609F: BranchT loc_A360AD
  loc_A360A2: ILdRf var_D0
  loc_A360A5: LitStr "Municipalidad de Tupungato"
  loc_A360A8: EqStr
  loc_A360AA: BranchF loc_A360CA
  loc_A360AD: LitI4 0
  loc_A360B2: CI2I4
  loc_A360B3: FLdPr Me
  loc_A360B6: VCallAd Control_ID_ChkMostrarResumen
  loc_A360B9: FStAdFunc var_88
  loc_A360BC: FLdPr var_88
  loc_A360BF: Me.Value = from_stack_1
  loc_A360C4: FFree1Ad var_88
  loc_A360C7: Branch loc_A360E4
  loc_A360CA: LitI4 1
  loc_A360CF: CI2I4
  loc_A360D0: FLdPr Me
  loc_A360D3: VCallAd Control_ID_ChkMostrarResumen
  loc_A360D6: FStAdFunc var_88
  loc_A360D9: FLdPr var_88
  loc_A360DC: Me.Value = from_stack_1
  loc_A360E1: FFree1Ad var_88
  loc_A360E4: Call HabilitarCriterio()
  loc_A360E9: ILdRf Me
  loc_A360EC: CastAd
  loc_A360EF: FStAdFunc var_88
  loc_A360F2: FLdRfVar var_88
  loc_A360F5: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A360FA: FFree1Ad var_88
  loc_A360FD: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '979BF0
  'Data Table: 4F340C
  loc_979BC0: LitVarStr var_94, "Cerrando..."
  loc_979BC5: PopAdLdVar
  loc_979BC6: FLdPr Me
  loc_979BC9: VCallAd Control_ID_statusBar
  loc_979BCC: FStAdFunc var_A8
  loc_979BCF: FLdPr var_A8
  loc_979BD2: LateIdSt
  loc_979BD7: FFree1Ad var_A8
  loc_979BDA: ILdRf Me
  loc_979BDD: FStAdNoPop
  loc_979BE1: ImpAdLdRf MemVar_C44F9C
  loc_979BE4: NewIfNullPr Me
  loc_979BE7: Me.Global.Unload from_stack_1
  loc_979BEC: FFree1Ad var_A8
  loc_979BEF: ExitProcHresult
End Sub

Private Sub CodiOrcoMsk_UnknownEvent_0 '9519C0
  'Data Table: 4F340C
  loc_9519AC: FLdPr Me
  loc_9519AF: VCallAd Control_ID_CodiOrcoMsk
  loc_9519B2: CVarAd
  loc_9519B6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9519BB: FFree1Var var_94 = ""
  loc_9519BE: ExitProcHresult
End Sub

Private Sub CodiOrcoMsk_Change() 'A14718
  'Data Table: 4F340C
  loc_A145BC: FLdPr Me
  loc_A145BF: VCallAd Control_ID_CodiOrcoMsk
  loc_A145C2: FStAdFunc var_88
  loc_A145C5: FLdPr var_88
  loc_A145C8: LateIdLdVar var_98 DispID_22 0
  loc_A145CF: CStrVarTmp
  loc_A145D0: FStStrNoPop var_9C
  loc_A145D3: LitStr vbNullString
  loc_A145D6: NeStr
  loc_A145D8: FFree1Str var_9C
  loc_A145DB: FFree1Ad var_88
  loc_A145DE: FFree1Var var_98 = ""
  loc_A145E1: BranchF loc_A146FE
  loc_A145E4: LitStr "SELECT ExorImpu"
  loc_A145E7: LitStr " FROM imputacion"
  loc_A145EA: ConcatStr
  loc_A145EB: FStStrNoPop var_9C
  loc_A145EE: LitStr " WHERE PeriInfo = "
  loc_A145F1: ConcatStr
  loc_A145F2: FStStrNoPop var_A8
  loc_A145F5: FLdRfVar var_A4
  loc_A145F8: FLdPr Me
  loc_A145FB: VCallAd Control_ID_cboPeriodo
  loc_A145FE: FStAdFunc var_88
  loc_A14601: FLdPr var_88
  loc_A14604:  = Me.Text
  loc_A14609: ILdRf var_A4
  loc_A1460C: ConcatStr
  loc_A1460D: FStStrNoPop var_AC
  loc_A14610: LitStr " AND CodiOrco = "
  loc_A14613: ConcatStr
  loc_A14614: FStStrNoPop var_B4
  loc_A14617: FLdPr Me
  loc_A1461A: VCallAd Control_ID_CodiOrcoMsk
  loc_A1461D: FStAdFunc var_B0
  loc_A14620: FLdPr var_B0
  loc_A14623: LateIdLdVar var_98 DispID_22 0
  loc_A1462A: CStrVarTmp
  loc_A1462B: FStStrNoPop var_B8
  loc_A1462E: ConcatStr
  loc_A1462F: FStStrNoPop var_BC
  loc_A14632: LitStr " LIMIT 1;"
  loc_A14635: ConcatStr
  loc_A14636: FStStrNoPop var_C0
  loc_A14639: FLdRfVar var_A0
  loc_A1463C: NewIfNullPr clsimputacion
  loc_A1463F: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A14644: FFreeStr var_9C = "": var_A8 = "": var_A4 = "": var_AC = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A14657: FFreeAd var_88 = ""
  loc_A1465E: FFree1Var var_98 = ""
  loc_A14661: FLdRfVar var_C4
  loc_A14664: FLdRfVar var_A0
  loc_A14667: NewIfNullPr clsimputacion
  loc_A1466A: from_stack_1 = clsimputacion.RecordCount
  loc_A1466F: ILdRf var_C4
  loc_A14672: LitI4 0
  loc_A14677: GtI4
  loc_A14678: BranchF loc_A146DC
  loc_A1467B: FLdRfVar var_98
  loc_A1467E: FLdRfVar var_D8
  loc_A14681: LitVarStr var_D4, "ExorImpu"
  loc_A14686: PopAdLdVar
  loc_A14687: FLdRfVar var_B0
  loc_A1468A: FLdRfVar var_88
  loc_A1468D: FLdRfVar var_A0
  loc_A14690: NewIfNullPr clsimputacion
  loc_A14693: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A14698: FLdPr var_88
  loc_A1469B:  = Me.Fields
  loc_A146A0: FLdPr var_B0
  loc_A146A3: from_stack_2 = Me.Item(from_stack_1)
  loc_A146A8: FLdPr var_D8
  loc_A146AB:  = Me.Value
  loc_A146B0: FLdRfVar var_98
  loc_A146B3: CStrVarTmp
  loc_A146B4: FStStrNoPop var_9C
  loc_A146B7: FLdPr Me
  loc_A146BA: VCallAd Control_ID_cboExorImpu
  loc_A146BD: FStAdFunc var_DC
  loc_A146C0: FLdPr var_DC
  loc_A146C3: Me.Text = from_stack_1
  loc_A146C8: FFree1Str var_9C
  loc_A146CB: FFreeAd var_88 = "": var_B0 = "": var_D8 = ""
  loc_A146D6: FFree1Var var_98 = ""
  loc_A146D9: Branch loc_A146F3
  loc_A146DC: LitStr vbNullString
  loc_A146DF: FLdPr Me
  loc_A146E2: VCallAd Control_ID_cboExorImpu
  loc_A146E5: FStAdFunc var_88
  loc_A146E8: FLdPr var_88
  loc_A146EB: Me.Text = from_stack_1
  loc_A146F0: FFree1Ad var_88
  loc_A146F3: LitNothing
  loc_A146F5: CastAd
  loc_A146F8: FStAdFunc var_A0
  loc_A146FB: Branch loc_A14715
  loc_A146FE: LitStr vbNullString
  loc_A14701: FLdPr Me
  loc_A14704: VCallAd Control_ID_cboExorImpu
  loc_A14707: FStAdFunc var_88
  loc_A1470A: FLdPr var_88
  loc_A1470D: Me.Text = from_stack_1
  loc_A14712: FFree1Ad var_88
  loc_A14715: ExitProcHresult
  loc_A14716: ImpAdLdRf MemVar_0
End Sub

Private Sub mskDesde_UnknownEvent_0 '951AE0
  'Data Table: 4F340C
  loc_951ACC: FLdPr Me
  loc_951ACF: VCallAd Control_ID_mskDesde
  loc_951AD2: CVarAd
  loc_951AD6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951ADB: FFree1Var var_94 = ""
  loc_951ADE: ExitProcHresult
End Sub

Private Function mskDesde_UnknownEvent_8(arg_C) '9F04BC
  'Data Table: 4F340C
  loc_9F039C: FLdPr Me
  loc_9F039F: VCallAd Control_ID_mskDesde
  loc_9F03A2: FStAdFunc var_88
  loc_9F03A5: FLdPr var_88
  loc_9F03A8: LateIdLdVar var_98 DispID_22 0
  loc_9F03AF: CStrVarTmp
  loc_9F03B0: FStStrNoPop var_9C
  loc_9F03B3: LitStr vbNullString
  loc_9F03B6: NeStr
  loc_9F03B8: FLdPr Me
  loc_9F03BB: VCallAd Control_ID_mskHasta
  loc_9F03BE: FStAdFunc var_A0
  loc_9F03C1: FLdPr var_A0
  loc_9F03C4: LateIdLdVar var_B0 DispID_22 0
  loc_9F03CB: CStrVarTmp
  loc_9F03CC: FStStrNoPop var_B4
  loc_9F03CF: LitStr vbNullString
  loc_9F03D2: NeStr
  loc_9F03D4: AndI4
  loc_9F03D5: FFreeStr var_9C = ""
  loc_9F03DC: FFreeAd var_88 = ""
  loc_9F03E3: FFreeVar var_98 = ""
  loc_9F03EA: BranchF loc_9F04B8
  loc_9F03ED: FLdPr Me
  loc_9F03F0: VCallAd Control_ID_mskDesde
  loc_9F03F3: FStAdFunc var_88
  loc_9F03F6: FLdPr var_88
  loc_9F03F9: LateIdLdVar var_98 DispID_15 0
  loc_9F0400: PopAd
  loc_9F0402: FLdRfVar var_9C
  loc_9F0405: FLdPr Me
  loc_9F0408: VCallAd Control_ID_cboPeriodo
  loc_9F040B: FStAdFunc var_A0
  loc_9F040E: FLdPr var_A0
  loc_9F0411:  = Me.Text
  loc_9F0416: LitI2_Byte 1
  loc_9F0418: LitI2_Byte 1
  loc_9F041A: ILdRf var_9C
  loc_9F041D: CI2Str
  loc_9F041F: FLdRfVar var_B0
  loc_9F0422: ImpAdCallFPR4  = DateSerial(, , )
  loc_9F0427: FLdPr Me
  loc_9F042A: VCallAd Control_ID_mskDesde
  loc_9F042D: FStAdFunc var_C8
  loc_9F0430: LitI2_Byte 0
  loc_9F0432: PopTmpLdAd2 var_BE
  loc_9F0435: FLdZeroAd var_C8
  loc_9F0438: FStAdFunc var_BC
  loc_9F043B: FLdRfVar var_BC
  loc_9F043E: FLdRfVar var_B0
  loc_9F0441: CStrVarVal var_B8
  loc_9F0445: LitI2_Byte 0
  loc_9F0447: LitI2_Byte 0
  loc_9F0449: FLdRfVar var_98
  loc_9F044C: CStrVarTmp
  loc_9F044D: FStStrNoPop var_B4
  loc_9F0450: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9F0455: FStStrNoPop var_C4
  loc_9F0458: FLdPr Me
  loc_9F045B: MemStStrCopy
  loc_9F045F: FFreeStr var_9C = "": var_B4 = "": var_B8 = ""
  loc_9F046A: FFreeAd var_88 = "": var_A0 = "": var_BC = ""
  loc_9F0475: FFreeVar var_98 = ""
  loc_9F047C: FLdPr Me
  loc_9F047F: VCallAd Control_ID_mskDesde
  loc_9F0482: FStAdFunc var_C8
  loc_9F0485: LitNothing
  loc_9F0487: CastAd
  loc_9F048A: FStAdFunc var_BC
  loc_9F048D: FLdRfVar var_BC
  loc_9F0490: FLdZeroAd var_C8
  loc_9F0493: FStAdFuncNoPop
  loc_9F0496: CastAd
  loc_9F0499: FStAdFunc var_A0
  loc_9F049C: FLdRfVar var_A0
  loc_9F049F: FLdPr Me
  loc_9F04A2: MemLdRfVar from_stack_1.global_144
  loc_9F04A5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F04AA: IStI2 arg_C
  loc_9F04AD: FFreeAd var_88 = "": var_A0 = "": var_BC = ""
  loc_9F04B8: ExitProcHresult
End Function

Private Sub mskHasta_UnknownEvent_0 '951A50
  'Data Table: 4F340C
  loc_951A3C: FLdPr Me
  loc_951A3F: VCallAd Control_ID_mskHasta
  loc_951A42: CVarAd
  loc_951A46: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951A4B: FFree1Var var_94 = ""
  loc_951A4E: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9CCA94
  'Data Table: 4F340C
  loc_9CC9C8: FLdPr Me
  loc_9CC9CB: VCallAd Control_ID_mskHasta
  loc_9CC9CE: FStAdFunc var_88
  loc_9CC9D1: FLdPr var_88
  loc_9CC9D4: LateIdLdVar var_98 DispID_15 0
  loc_9CC9DB: PopAd
  loc_9CC9DD: FLdRfVar var_A0
  loc_9CC9E0: FLdPr Me
  loc_9CC9E3: VCallAd Control_ID_cboPeriodo
  loc_9CC9E6: FStAdFunc var_9C
  loc_9CC9E9: FLdPr var_9C
  loc_9CC9EC:  = Me.Text
  loc_9CC9F1: LitI2_Byte 1
  loc_9CC9F3: LitI2_Byte 1
  loc_9CC9F5: ILdRf var_A0
  loc_9CC9F8: CI2Str
  loc_9CC9FA: FLdRfVar var_B0
  loc_9CC9FD: ImpAdCallFPR4  = DateSerial(, , )
  loc_9CCA02: FLdPr Me
  loc_9CCA05: VCallAd Control_ID_mskHasta
  loc_9CCA08: FStAdFunc var_C8
  loc_9CCA0B: LitI2_Byte 0
  loc_9CCA0D: PopTmpLdAd2 var_BE
  loc_9CCA10: FLdZeroAd var_C8
  loc_9CCA13: FStAdFunc var_BC
  loc_9CCA16: FLdRfVar var_BC
  loc_9CCA19: FLdRfVar var_B0
  loc_9CCA1C: CStrVarVal var_B8
  loc_9CCA20: LitI2_Byte 0
  loc_9CCA22: LitI2_Byte 0
  loc_9CCA24: FLdRfVar var_98
  loc_9CCA27: CStrVarTmp
  loc_9CCA28: FStStrNoPop var_B4
  loc_9CCA2B: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CCA30: FStStrNoPop var_C4
  loc_9CCA33: FLdPr Me
  loc_9CCA36: MemStStrCopy
  loc_9CCA3A: FFreeStr var_A0 = "": var_B4 = "": var_B8 = ""
  loc_9CCA45: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CCA50: FFreeVar var_98 = ""
  loc_9CCA57: FLdPr Me
  loc_9CCA5A: VCallAd Control_ID_mskHasta
  loc_9CCA5D: FStAdFunc var_C8
  loc_9CCA60: LitNothing
  loc_9CCA62: CastAd
  loc_9CCA65: FStAdFunc var_BC
  loc_9CCA68: FLdRfVar var_BC
  loc_9CCA6B: FLdZeroAd var_C8
  loc_9CCA6E: FStAdFuncNoPop
  loc_9CCA71: CastAd
  loc_9CCA74: FStAdFunc var_9C
  loc_9CCA77: FLdRfVar var_9C
  loc_9CCA7A: FLdPr Me
  loc_9CCA7D: MemLdRfVar from_stack_1.global_144
  loc_9CCA80: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CCA85: IStI2 arg_C
  loc_9CCA88: FFreeAd var_88 = "": var_9C = "": var_BC = ""
  loc_9CCA93: ExitProcHresult
End Function

Private Sub Form_Load() 'A3474C
  'Data Table: 4F340C
  loc_A34548: LitVarStr var_94, "######"
  loc_A3454D: PopAdLdVar
  loc_A3454E: FLdPr Me
  loc_A34551: VCallAd Control_ID_CodiOrgaMsk
  loc_A34554: FStAdFunc var_A8
  loc_A34557: FLdPr var_A8
  loc_A3455A: LateIdSt
  loc_A3455F: FFree1Ad var_A8
  loc_A34562: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A34567: PopAdLdVar
  loc_A34568: FLdPr Me
  loc_A3456B: VCallAd Control_ID_CodiPartMsk
  loc_A3456E: FStAdFunc var_A8
  loc_A34571: FLdPr var_A8
  loc_A34574: LateIdSt
  loc_A34579: FFree1Ad var_A8
  loc_A3457C: LitI2_Byte &HFF
  loc_A3457E: ImpAdStI2 MemVar_C3D840
  loc_A34581: LitStr "Municipalidad de Guaymallén"
  loc_A34584: LitStr "Municipalidad de Lavalle"
  loc_A34587: EqStr
  loc_A34589: BranchF loc_A34591
  loc_A3458C: LitI2_Byte &HFF
  loc_A3458E: ImpAdStI2 MemVar_C3D844
  loc_A34591: ILdRf Me
  loc_A34594: CastAd
  loc_A34597: FStAdFunc var_A8
  loc_A3459A: FLdRfVar var_A8
  loc_A3459D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A345A2: FFree1Ad var_A8
  loc_A345A5: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A345A8: FLdRfVar var_B0
  loc_A345AB: NewIfNullPr clsperiodo
  loc_A345AE: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A345B3: FLdRfVar var_B4
  loc_A345B6: FLdRfVar var_B0
  loc_A345B9: NewIfNullPr clsperiodo
  loc_A345BC: from_stack_1 = clsperiodo.RecordCount
  loc_A345C1: ILdRf var_B4
  loc_A345C4: LitI4 0
  loc_A345C9: GtI4
  loc_A345CA: BranchF loc_A3465D
  loc_A345CD: FLdRfVar var_B0
  loc_A345D0: NewIfNullPr clsperiodo
  loc_A345D3: Call clsperiodo.MoveFirst()
  loc_A345D8: FLdRfVar var_B6
  loc_A345DB: FLdRfVar var_B0
  loc_A345DE: NewIfNullPr clsperiodo
  loc_A345E1: from_stack_1 = clsperiodo.EOF
  loc_A345E6: FLdI2 var_B6
  loc_A345E9: NotI4
  loc_A345EA: BranchF loc_A3465D
  loc_A345ED: LitVar_Missing var_A4
  loc_A345F0: PopAdLdVar
  loc_A345F1: FLdRfVar var_D0
  loc_A345F4: FLdRfVar var_C0
  loc_A345F7: LitVarStr var_94, "PeriInfo"
  loc_A345FC: PopAdLdVar
  loc_A345FD: FLdRfVar var_BC
  loc_A34600: FLdRfVar var_A8
  loc_A34603: FLdRfVar var_B0
  loc_A34606: NewIfNullPr clsperiodo
  loc_A34609: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A3460E: FLdPr var_A8
  loc_A34611:  = Me.Fields
  loc_A34616: FLdPr var_BC
  loc_A34619: from_stack_2 = Me.Item(from_stack_1)
  loc_A3461E: FLdPr var_C0
  loc_A34621:  = Me.Value
  loc_A34626: FLdRfVar var_D0
  loc_A34629: CStrVarTmp
  loc_A3462A: FStStrNoPop var_D4
  loc_A3462D: FLdPr Me
  loc_A34630: VCallAd Control_ID_cboPeriodo
  loc_A34633: FStAdFunc var_D8
  loc_A34636: FLdPr var_D8
  loc_A34639: Me.AddItem from_stack_1, from_stack_2
  loc_A3463E: FFree1Str var_D4
  loc_A34641: FFreeAd var_A8 = "": var_BC = "": var_C0 = ""
  loc_A3464C: FFree1Var var_D0 = ""
  loc_A3464F: FLdRfVar var_B0
  loc_A34652: NewIfNullPr clsperiodo
  loc_A34655: Call clsperiodo.MoveSiguiente()
  loc_A3465A: Branch loc_A345D8
  loc_A3465D: LitStr "SELECT CodiUsua FROM infogov.usuario ORDER BY CodiUsua"
  loc_A34660: FLdRfVar var_AC
  loc_A34663: NewIfNullPr clsusuario
  loc_A34666: Call clsusuario.RedefineRS(from_stack_1v)
  loc_A3466B: FLdRfVar var_B4
  loc_A3466E: FLdRfVar var_AC
  loc_A34671: NewIfNullPr clsusuario
  loc_A34674: from_stack_1 = clsusuario.RecordCount
  loc_A34679: ILdRf var_B4
  loc_A3467C: LitI4 0
  loc_A34681: GtI4
  loc_A34682: BranchF loc_A34744
  loc_A34685: FLdRfVar var_AC
  loc_A34688: NewIfNullPr clsusuario
  loc_A3468B: Call clsusuario.MoveFirst()
  loc_A34690: FLdPr Me
  loc_A34693: VCallAd Control_ID_cboCodiUsua
  loc_A34696: FStAdFunc var_A8
  loc_A34699: FLdPr var_A8
  loc_A3469C: Me.Clear
  loc_A346A1: FFree1Ad var_A8
  loc_A346A4: LitVar_Missing var_94
  loc_A346A7: PopAdLdVar
  loc_A346A8: LitStr "TODOS"
  loc_A346AB: FLdPr Me
  loc_A346AE: VCallAd Control_ID_cboCodiUsua
  loc_A346B1: FStAdFunc var_A8
  loc_A346B4: FLdPr var_A8
  loc_A346B7: Me.AddItem from_stack_1, from_stack_2
  loc_A346BC: FFree1Ad var_A8
  loc_A346BF: FLdRfVar var_B6
  loc_A346C2: FLdRfVar var_AC
  loc_A346C5: NewIfNullPr clsusuario
  loc_A346C8: from_stack_1 = clsusuario.EOF
  loc_A346CD: FLdI2 var_B6
  loc_A346D0: NotI4
  loc_A346D1: BranchF loc_A34744
  loc_A346D4: LitVar_Missing var_A4
  loc_A346D7: PopAdLdVar
  loc_A346D8: FLdRfVar var_D0
  loc_A346DB: FLdRfVar var_C0
  loc_A346DE: LitVarStr var_94, "CodiUsua"
  loc_A346E3: PopAdLdVar
  loc_A346E4: FLdRfVar var_BC
  loc_A346E7: FLdRfVar var_A8
  loc_A346EA: FLdRfVar var_AC
  loc_A346ED: NewIfNullPr clsusuario
  loc_A346F0: from_stack_1v = clsusuario.RsFrmGet()
  loc_A346F5: FLdPr var_A8
  loc_A346F8:  = Me.Fields
  loc_A346FD: FLdPr var_BC
  loc_A34700: from_stack_2 = Me.Item(from_stack_1)
  loc_A34705: FLdPr var_C0
  loc_A34708:  = Me.Value
  loc_A3470D: FLdRfVar var_D0
  loc_A34710: CStrVarTmp
  loc_A34711: FStStrNoPop var_D4
  loc_A34714: FLdPr Me
  loc_A34717: VCallAd Control_ID_cboCodiUsua
  loc_A3471A: FStAdFunc var_D8
  loc_A3471D: FLdPr var_D8
  loc_A34720: Me.AddItem from_stack_1, from_stack_2
  loc_A34725: FFree1Str var_D4
  loc_A34728: FFreeAd var_A8 = "": var_BC = "": var_C0 = ""
  loc_A34733: FFree1Var var_D0 = ""
  loc_A34736: FLdRfVar var_AC
  loc_A34739: NewIfNullPr clsusuario
  loc_A3473C: Call clsusuario.MoveSiguiente()
  loc_A34741: Branch loc_A346BF
  loc_A34744: Call cmdNueva_Click()
  loc_A34749: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9576B8
  'Data Table: 4F340C
  loc_9576A0: FLdPr Me
  loc_9576A3: VCallAd Control_ID_wbbReporte
  loc_9576A6: FStAdFunc var_88
  loc_9576A9: FLdRfVar var_88
  loc_9576AC: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9576B1: FFree1Ad var_88
  loc_9576B4: ExitProcHresult
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) '975DB8
  'Data Table: 4F340C
  loc_975D8C: FLdRfVar var_8A
  loc_975D8F: FLdPr Me
  loc_975D92: VCallAd Control_ID_cmdPredeterminada
  loc_975D95: FStAdFunc var_88
  loc_975D98: FLdPr var_88
  loc_975D9B:  = Me.Enabled
  loc_975DA0: FLdI2 var_8A
  loc_975DA3: FFree1Ad var_88
  loc_975DA6: BranchF loc_975DB1
  loc_975DA9: LitI2_Byte 0
  loc_975DAB: IStI2 Cancel
  loc_975DAE: Branch loc_975DB6
  loc_975DB1: LitI2_Byte 1
  loc_975DB3: IStI2 Cancel
  loc_975DB6: ExitProcHresult
End Sub

Public Function global_5190668Get() '4F53E0
  global_5190668Get = global_5190668
End Function

Public Sub global_5190668Put(Value) '4F53FA
  global_5190668 = Value
End Sub

Public Sub global_5190668Set(Value) '4F5414
  global_5190668 = Value
End Sub

Public Function htmFileGet() '4F542E
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4F543D
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4F544C
  htmFile = Value
End Sub

Public Function ExorImpuGet() '4F545B
  ExorImpuGet = ExorImpu
End Function

Public Sub ExorImpuPut(Value) '4F546A
  ExorImpu = Value
End Sub

Public Function bLogosGet() '4F5479
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4F5488
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4F5497
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4F54A6
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A45DBC
  'Data Table: 4F340C
  loc_A45BBC: LitI4 0
  loc_A45BC1: LitI4 &H16
  loc_A45BC6: FLdRfVar var_B0
  loc_A45BC9: Redim
  loc_A45BD3: FLdPr Me
  loc_A45BD6: VCallAd Control_ID_cboPeriodo
  loc_A45BD9: CVarAd
  loc_A45BDD: ParmAry1St
  loc_A45BE3: FLdPr Me
  loc_A45BE6: VCallAd Control_ID_cboExorImpu
  loc_A45BE9: CVarAd
  loc_A45BED: ParmAry1St
  loc_A45BF3: FLdPr Me
  loc_A45BF6: VCallAd Control_ID_mskDesde
  loc_A45BF9: CVarAd
  loc_A45BFD: ParmAry1St
  loc_A45C03: FLdPr Me
  loc_A45C06: VCallAd Control_ID_cmdCalDesde
  loc_A45C09: CVarAd
  loc_A45C0D: ParmAry1St
  loc_A45C13: FLdPr Me
  loc_A45C16: VCallAd Control_ID_mskHasta
  loc_A45C19: CVarAd
  loc_A45C1D: ParmAry1St
  loc_A45C23: FLdPr Me
  loc_A45C26: VCallAd Control_ID_cmdCalHasta
  loc_A45C29: CVarAd
  loc_A45C2D: ParmAry1St
  loc_A45C33: FLdRfVar var_8C
  loc_A45C36: LitI2_Byte 1
  loc_A45C38: FLdPr Me
  loc_A45C3B: VCallAd Control_ID_chkEtapa
  loc_A45C3E: FStAdFunc var_88
  loc_A45C41: FLdPr var_88
  loc_A45C44: Set from_stack_2 = Me(from_stack_1)
  loc_A45C49: FLdZeroAd var_8C
  loc_A45C4C: CVarAd
  loc_A45C50: ParmAry1St
  loc_A45C56: FLdRfVar var_94
  loc_A45C59: LitI2_Byte 2
  loc_A45C5B: FLdPr Me
  loc_A45C5E: VCallAd Control_ID_chkEtapa
  loc_A45C61: FStAdFunc var_90
  loc_A45C64: FLdPr var_90
  loc_A45C67: Set from_stack_2 = Me(from_stack_1)
  loc_A45C6C: FLdZeroAd var_94
  loc_A45C6F: CVarAd
  loc_A45C73: ParmAry1St
  loc_A45C79: FLdRfVar var_9C
  loc_A45C7C: LitI2_Byte 3
  loc_A45C7E: FLdPr Me
  loc_A45C81: VCallAd Control_ID_chkEtapa
  loc_A45C84: FStAdFunc var_98
  loc_A45C87: FLdPr var_98
  loc_A45C8A: Set from_stack_2 = Me(from_stack_1)
  loc_A45C8F: FLdZeroAd var_9C
  loc_A45C92: CVarAd
  loc_A45C96: ParmAry1St
  loc_A45C9C: FLdRfVar var_A4
  loc_A45C9F: LitI2_Byte 4
  loc_A45CA1: FLdPr Me
  loc_A45CA4: VCallAd Control_ID_chkEtapa
  loc_A45CA7: FStAdFunc var_A0
  loc_A45CAA: FLdPr var_A0
  loc_A45CAD: Set from_stack_2 = Me(from_stack_1)
  loc_A45CB2: FLdZeroAd var_A4
  loc_A45CB5: CVarAd
  loc_A45CB9: ParmAry1St
  loc_A45CBF: FLdRfVar var_AC
  loc_A45CC2: LitI2_Byte 5
  loc_A45CC4: FLdPr Me
  loc_A45CC7: VCallAd Control_ID_chkEtapa
  loc_A45CCA: FStAdFunc var_A8
  loc_A45CCD: FLdPr var_A8
  loc_A45CD0: Set from_stack_2 = Me(from_stack_1)
  loc_A45CD5: FLdZeroAd var_AC
  loc_A45CD8: CVarAd
  loc_A45CDC: ParmAry1St
  loc_A45CE2: FLdPr Me
  loc_A45CE5: VCallAd Control_ID_CodiOrcoMsk
  loc_A45CE8: CVarAd
  loc_A45CEC: ParmAry1St
  loc_A45CF2: FLdPr Me
  loc_A45CF5: VCallAd Control_ID_CodiNopeMsk
  loc_A45CF8: CVarAd
  loc_A45CFC: ParmAry1St
  loc_A45D02: FLdPr Me
  loc_A45D05: VCallAd Control_ID_CodiPartMsk
  loc_A45D08: CVarAd
  loc_A45D0C: ParmAry1St
  loc_A45D12: FLdPr Me
  loc_A45D15: VCallAd Control_ID_cmdCodiPart
  loc_A45D18: CVarAd
  loc_A45D1C: ParmAry1St
  loc_A45D22: FLdPr Me
  loc_A45D25: VCallAd Control_ID_CodiOrgaMsk
  loc_A45D28: CVarAd
  loc_A45D2C: ParmAry1St
  loc_A45D32: FLdPr Me
  loc_A45D35: VCallAd Control_ID_cmdCodiOrga
  loc_A45D38: CVarAd
  loc_A45D3C: ParmAry1St
  loc_A45D42: FLdPr Me
  loc_A45D45: VCallAd Control_ID_cboCodiUsua
  loc_A45D48: CVarAd
  loc_A45D4C: ParmAry1St
  loc_A45D52: FLdPr Me
  loc_A45D55: VCallAd Control_ID_CucuPersMsk
  loc_A45D58: CVarAd
  loc_A45D5C: ParmAry1St
  loc_A45D62: FLdPr Me
  loc_A45D65: VCallAd Control_ID_CucuPersCmd
  loc_A45D68: CVarAd
  loc_A45D6C: ParmAry1St
  loc_A45D72: FLdPr Me
  loc_A45D75: VCallAd Control_ID_lblDetaProv
  loc_A45D78: CVarAd
  loc_A45D7C: ParmAry1St
  loc_A45D82: FLdPr Me
  loc_A45D85: VCallAd Control_ID_txtPie
  loc_A45D88: CVarAd
  loc_A45D8C: ParmAry1St
  loc_A45D92: FLdPr Me
  loc_A45D95: VCallAd Control_ID_ChkMostrarResumen
  loc_A45D98: CVarAd
  loc_A45D9C: ParmAry1St
  loc_A45DA2: FLdRfVar var_B0
  loc_A45DA5: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A45DAA: FLdRfVar var_B0
  loc_A45DAD: Erase
  loc_A45DAE: FFreeAd var_88 = "": var_90 = "": var_98 = "": var_A0 = ""
  loc_A45DBB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C07CA0
  'Data Table: 4F340C
  loc_C05580: FLdPr Me
  loc_C05583: MemLdI2 bGenerado
  loc_C05586: BranchF loc_C0558A
  loc_C05589: ExitProcHresult
  loc_C0558A: LitVarStr var_98, "Generando reporte..."
  loc_C0558F: PopAdLdVar
  loc_C05590: FLdPr Me
  loc_C05593: VCallAd Control_ID_statusBar
  loc_C05596: FStAdFunc var_AC
  loc_C05599: FLdPr var_AC
  loc_C0559C: LateIdSt
  loc_C055A1: FFree1Ad var_AC
  loc_C055A4: LitI4 &HB
  loc_C055A9: CI2I4
  loc_C055AA: FLdPr Me
  loc_C055AD: Me.MousePointer = from_stack_1
  loc_C055B2: LitI2_Byte 0
  loc_C055B4: PopTmpLdAd2 var_CA
  loc_C055B7: Call cboExorImpu_Validate(from_stack_1v)
  loc_C055BC: FLdPr Me
  loc_C055BF: MemLdStr global_144
  loc_C055C2: LitStr vbNullString
  loc_C055C5: NeStr
  loc_C055C7: BranchF loc_C055CD
  loc_C055CA: Branch loc_C07C74
  loc_C055CD: LitI2_Byte 0
  loc_C055CF: PopTmpLdAd2 var_CA
  loc_C055D2: from_stack_2v = mskDesde_UnknownEvent_8(from_stack_1v)
  loc_C055D7: FLdPr Me
  loc_C055DA: MemLdStr global_144
  loc_C055DD: LitStr vbNullString
  loc_C055E0: NeStr
  loc_C055E2: BranchF loc_C055E8
  loc_C055E5: Branch loc_C07C74
  loc_C055E8: LitI2_Byte 0
  loc_C055EA: PopTmpLdAd2 var_CA
  loc_C055ED: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_C055F2: FLdPr Me
  loc_C055F5: MemLdStr global_144
  loc_C055F8: LitStr vbNullString
  loc_C055FB: NeStr
  loc_C055FD: BranchF loc_C05603
  loc_C05600: Branch loc_C07C74
  loc_C05603: FLdPr Me
  loc_C05606: VCallAd Control_ID_mskDesde
  loc_C05609: FStAdFunc var_AC
  loc_C0560C: FLdPr var_AC
  loc_C0560F: LateIdLdVar var_DC DispID_22 0
  loc_C05616: CStrVarTmp
  loc_C05617: FStStrNoPop var_E0
  loc_C0561A: LitStr vbNullString
  loc_C0561D: NeStr
  loc_C0561F: FFree1Str var_E0
  loc_C05622: FFree1Ad var_AC
  loc_C05625: FFree1Var var_DC = ""
  loc_C05628: BranchF loc_C0567A
  loc_C0562B: FLdPr Me
  loc_C0562E: VCallAd Control_ID_mskDesde
  loc_C05631: FStAdFunc var_AC
  loc_C05634: FLdPr var_AC
  loc_C05637: LateIdLdVar var_DC DispID_15 0
  loc_C0563E: PopAd
  loc_C05640: LitStr " AND FechImpu >= "
  loc_C05643: LitI4 1
  loc_C05648: LitI4 1
  loc_C0564D: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_C05652: FStVarCopyObj var_100
  loc_C05655: FLdRfVar var_100
  loc_C05658: FLdRfVar var_DC
  loc_C0565B: CStrVarTmp
  loc_C0565C: CVarStr var_F0
  loc_C0565F: ImpAdCallI2 Format$(, )
  loc_C05664: FStStrNoPop var_E0
  loc_C05667: ConcatStr
  loc_C05668: FStStr var_B0
  loc_C0566B: FFree1Str var_E0
  loc_C0566E: FFree1Ad var_AC
  loc_C05671: FFreeVar var_DC = "": var_F0 = ""
  loc_C0567A: FLdPr Me
  loc_C0567D: VCallAd Control_ID_mskHasta
  loc_C05680: FStAdFunc var_AC
  loc_C05683: FLdPr var_AC
  loc_C05686: LateIdLdVar var_DC DispID_22 0
  loc_C0568D: CStrVarTmp
  loc_C0568E: FStStrNoPop var_E0
  loc_C05691: LitStr vbNullString
  loc_C05694: NeStr
  loc_C05696: FFree1Str var_E0
  loc_C05699: FFree1Ad var_AC
  loc_C0569C: FFree1Var var_DC = ""
  loc_C0569F: BranchF loc_C056F1
  loc_C056A2: FLdPr Me
  loc_C056A5: VCallAd Control_ID_mskHasta
  loc_C056A8: FStAdFunc var_AC
  loc_C056AB: FLdPr var_AC
  loc_C056AE: LateIdLdVar var_DC DispID_15 0
  loc_C056B5: PopAd
  loc_C056B7: LitStr " AND FechImpu <= "
  loc_C056BA: LitI4 1
  loc_C056BF: LitI4 1
  loc_C056C4: LitVarStr var_98, "'yyyy-mm-dd'"
  loc_C056C9: FStVarCopyObj var_100
  loc_C056CC: FLdRfVar var_100
  loc_C056CF: FLdRfVar var_DC
  loc_C056D2: CStrVarTmp
  loc_C056D3: CVarStr var_F0
  loc_C056D6: ImpAdCallI2 Format$(, )
  loc_C056DB: FStStrNoPop var_E0
  loc_C056DE: ConcatStr
  loc_C056DF: FStStr var_B4
  loc_C056E2: FFree1Str var_E0
  loc_C056E5: FFree1Ad var_AC
  loc_C056E8: FFreeVar var_DC = "": var_F0 = ""
  loc_C056F1: FLdPr Me
  loc_C056F4: VCallAd Control_ID_CodiNopeMsk
  loc_C056F7: FStAdFunc var_AC
  loc_C056FA: FLdPr var_AC
  loc_C056FD: LateIdLdVar var_DC DispID_22 0
  loc_C05704: PopAd
  loc_C05706: FLdPr Me
  loc_C05709: VCallAd Control_ID_CodiNopeMsk
  loc_C0570C: FStAdFunc var_104
  loc_C0570F: FLdPr var_104
  loc_C05712: LateIdLdVar var_F0 DispID_22 0
  loc_C05719: PopAd
  loc_C0571B: LitVarStr var_A8, vbNullString
  loc_C05720: FStVarCopyObj var_118
  loc_C05723: FLdRfVar var_118
  loc_C05726: LitStr " AND i.CodiNope = "
  loc_C05729: FLdRfVar var_F0
  loc_C0572C: CStrVarTmp
  loc_C0572D: FStStrNoPop var_108
  loc_C05730: ConcatStr
  loc_C05731: CVarStr var_100
  loc_C05734: FLdRfVar var_DC
  loc_C05737: CStrVarTmp
  loc_C05738: FStStrNoPop var_E0
  loc_C0573B: LitStr vbNullString
  loc_C0573E: NeStr
  loc_C05740: CVarBoolI2 var_98
  loc_C05744: FLdRfVar var_128
  loc_C05747: ImpAdCallFPR4  = IIf(, , )
  loc_C0574C: FLdRfVar var_128
  loc_C0574F: CStrVarTmp
  loc_C05750: FStStr var_B8
  loc_C05753: FFreeStr var_E0 = ""
  loc_C0575A: FFreeAd var_AC = ""
  loc_C05761: FFreeVar var_DC = "": var_F0 = "": var_98 = "": var_100 = "": var_118 = ""
  loc_C05770: FLdPr Me
  loc_C05773: VCallAd Control_ID_CodiPartMsk
  loc_C05776: FStAdFunc var_AC
  loc_C05779: FLdPr var_AC
  loc_C0577C: LateIdLdVar var_DC DispID_22 0
  loc_C05783: PopAd
  loc_C05785: FLdPr Me
  loc_C05788: VCallAd Control_ID_CodiPartMsk
  loc_C0578B: FStAdFunc var_104
  loc_C0578E: FLdPr var_104
  loc_C05791: LateIdLdVar var_F0 DispID_22 0
  loc_C05798: PopAd
  loc_C0579A: LitVarStr var_A8, vbNullString
  loc_C0579F: FStVarCopyObj var_118
  loc_C057A2: FLdRfVar var_118
  loc_C057A5: LitStr " AND i.CodiPart LIKE '"
  loc_C057A8: FLdRfVar var_F0
  loc_C057AB: CStrVarTmp
  loc_C057AC: FStStrNoPop var_108
  loc_C057AF: ConcatStr
  loc_C057B0: FStStrNoPop var_12C
  loc_C057B3: LitStr Chr(37) & "'"
  loc_C057B6: ConcatStr
  loc_C057B7: CVarStr var_100
  loc_C057BA: FLdRfVar var_DC
  loc_C057BD: CStrVarTmp
  loc_C057BE: FStStrNoPop var_E0
  loc_C057C1: LitStr vbNullString
  loc_C057C4: NeStr
  loc_C057C6: CVarBoolI2 var_98
  loc_C057CA: FLdRfVar var_128
  loc_C057CD: ImpAdCallFPR4  = IIf(, , )
  loc_C057D2: FLdRfVar var_128
  loc_C057D5: CStrVarTmp
  loc_C057D6: FStStr var_BC
  loc_C057D9: FFreeStr var_E0 = "": var_108 = ""
  loc_C057E2: FFreeAd var_AC = ""
  loc_C057E9: FFreeVar var_DC = "": var_F0 = "": var_98 = "": var_100 = "": var_118 = ""
  loc_C057F8: FLdPr Me
  loc_C057FB: VCallAd Control_ID_CodiOrgaMsk
  loc_C057FE: FStAdFunc var_AC
  loc_C05801: FLdPr var_AC
  loc_C05804: LateIdLdVar var_DC DispID_22 0
  loc_C0580B: PopAd
  loc_C0580D: FLdPr Me
  loc_C05810: VCallAd Control_ID_CodiOrgaMsk
  loc_C05813: FStAdFunc var_104
  loc_C05816: FLdPr var_104
  loc_C05819: LateIdLdVar var_F0 DispID_22 0
  loc_C05820: PopAd
  loc_C05822: LitVarStr var_A8, vbNullString
  loc_C05827: FStVarCopyObj var_118
  loc_C0582A: FLdRfVar var_118
  loc_C0582D: LitStr " AND i.CodiOrga LIKE '"
  loc_C05830: FLdRfVar var_F0
  loc_C05833: CStrVarTmp
  loc_C05834: FStStrNoPop var_108
  loc_C05837: ConcatStr
  loc_C05838: FStStrNoPop var_12C
  loc_C0583B: LitStr Chr(37) & "'"
  loc_C0583E: ConcatStr
  loc_C0583F: CVarStr var_100
  loc_C05842: FLdRfVar var_DC
  loc_C05845: CStrVarTmp
  loc_C05846: FStStrNoPop var_E0
  loc_C05849: LitStr vbNullString
  loc_C0584C: NeStr
  loc_C0584E: CVarBoolI2 var_98
  loc_C05852: FLdRfVar var_128
  loc_C05855: ImpAdCallFPR4  = IIf(, , )
  loc_C0585A: FLdRfVar var_128
  loc_C0585D: CStrVarTmp
  loc_C0585E: FStStr var_C0
  loc_C05861: FFreeStr var_E0 = "": var_108 = ""
  loc_C0586A: FFreeAd var_AC = ""
  loc_C05871: FFreeVar var_DC = "": var_F0 = "": var_98 = "": var_100 = "": var_118 = ""
  loc_C05880: FLdRfVar var_CA
  loc_C05883: FLdPr Me
  loc_C05886: VCallAd Control_ID_cboCodiUsua
  loc_C05889: FStAdFunc var_AC
  loc_C0588C: FLdPr var_AC
  loc_C0588F:  = Me.ListIndex
  loc_C05894: FLdRfVar var_E0
  loc_C05897: FLdPr Me
  loc_C0589A: VCallAd Control_ID_cboCodiUsua
  loc_C0589D: FStAdFunc var_104
  loc_C058A0: FLdPr var_104
  loc_C058A3:  = Me.Text
  loc_C058A8: LitVarStr var_A8, vbNullString
  loc_C058AD: FStVarCopyObj var_F0
  loc_C058B0: FLdRfVar var_F0
  loc_C058B3: LitStr " AND i.AltaUsua = '"
  loc_C058B6: ILdRf var_E0
  loc_C058B9: ConcatStr
  loc_C058BA: FStStrNoPop var_108
  loc_C058BD: LitStr "'"
  loc_C058C0: ConcatStr
  loc_C058C1: CVarStr var_DC
  loc_C058C4: FLdI2 var_CA
  loc_C058C7: LitI2_Byte 0
  loc_C058C9: GtI2
  loc_C058CA: CVarBoolI2 var_98
  loc_C058CE: FLdRfVar var_100
  loc_C058D1: ImpAdCallFPR4  = IIf(, , )
  loc_C058D6: FLdRfVar var_100
  loc_C058D9: CStrVarTmp
  loc_C058DA: FStStr var_C4
  loc_C058DD: FFreeStr var_E0 = ""
  loc_C058E4: FFreeAd var_AC = ""
  loc_C058EB: FFreeVar var_98 = "": var_DC = "": var_F0 = ""
  loc_C058F6: FLdPr Me
  loc_C058F9: VCallAd Control_ID_CucuPersMsk
  loc_C058FC: FStAdFunc var_AC
  loc_C058FF: FLdPr var_AC
  loc_C05902: LateIdLdVar var_DC DispID_22 0
  loc_C05909: PopAd
  loc_C0590B: FLdPr Me
  loc_C0590E: VCallAd Control_ID_CucuPersMsk
  loc_C05911: FStAdFunc var_104
  loc_C05914: FLdPr var_104
  loc_C05917: LateIdLdVar var_F0 DispID_22 0
  loc_C0591E: PopAd
  loc_C05920: LitVarStr var_A8, vbNullString
  loc_C05925: FStVarCopyObj var_118
  loc_C05928: FLdRfVar var_118
  loc_C0592B: LitStr " AND i.CucuPers = "
  loc_C0592E: FLdRfVar var_F0
  loc_C05931: CStrVarTmp
  loc_C05932: FStStrNoPop var_108
  loc_C05935: ConcatStr
  loc_C05936: CVarStr var_100
  loc_C05939: FLdRfVar var_DC
  loc_C0593C: CStrVarTmp
  loc_C0593D: FStStrNoPop var_E0
  loc_C05940: LitStr vbNullString
  loc_C05943: NeStr
  loc_C05945: CVarBoolI2 var_98
  loc_C05949: FLdRfVar var_128
  loc_C0594C: ImpAdCallFPR4  = IIf(, , )
  loc_C05951: FLdRfVar var_128
  loc_C05954: CStrVarTmp
  loc_C05955: FStStr var_C8
  loc_C05958: FFreeStr var_E0 = ""
  loc_C0595F: FFreeAd var_AC = ""
  loc_C05966: FFreeVar var_DC = "": var_F0 = "": var_98 = "": var_100 = "": var_118 = ""
  loc_C05975: LitI4 0
  loc_C0597A: FStR4 var_88
  loc_C0597D: LitI4 0
  loc_C05982: LitI4 5
  loc_C05987: FLdPr Me
  loc_C0598A: MemLdRfVar from_stack_1.global_132
  loc_C0598D: Redim
  loc_C05997: LitI2_Byte 1
  loc_C05999: FLdPr Me
  loc_C0599C: MemLdRfVar from_stack_1.global_136
  loc_C0599F: LitI2_Byte 5
  loc_C059A1: ForI2 var_130
  loc_C059A7: LitI4 0
  loc_C059AC: LitI4 0
  loc_C059B1: FLdPr Me
  loc_C059B4: MemLdI2 global_136
  loc_C059B7: CI4UI1
  loc_C059B8: FLdPr Me
  loc_C059BB: MemLdStr global_132
  loc_C059BE: Ary1LdPr
  loc_C059BF: MemLdRfVar from_stack_1.global_0
  loc_C059C2: Redim
  loc_C059CC: FLdPr Me
  loc_C059CF: MemLdRfVar from_stack_1.global_136
  loc_C059D2: NextI2 var_130, loc_C059A7
  loc_C059D7: FLdRfVar var_CA
  loc_C059DA: FLdRfVar var_104
  loc_C059DD: LitI2_Byte 1
  loc_C059DF: FLdPrThis
  loc_C059E0: VCallAd Control_ID_chkEtapa
  loc_C059E3: FStAdFunc var_AC
  loc_C059E6: FLdPr var_AC
  loc_C059E9: Set from_stack_2 = Me(from_stack_1)
  loc_C059EE: FLdPr var_104
  loc_C059F1:  = Me.Value
  loc_C059F6: FLdI2 var_CA
  loc_C059F9: CI4UI1
  loc_C059FA: LitI4 1
  loc_C059FF: EqI4
  loc_C05A00: FFreeAd var_AC = ""
  loc_C05A07: BranchF loc_C05B70
  loc_C05A0A: LitStr "SELECT IF(oxu.PeriInfo IS NULL,'No','Si') Mostrar, DetaPart, DetaOrga, DetaUnga, DetaFifu, DetaInsu, '' DetaProv, '' FantProv"
  loc_C05A0D: LitStr ", infogov.fnArmarJeraOrga(o.PeriInfo, o.CodiOrga) CodiOrga, i.CodiPart, i.CodiUnga, i.CodiFifu, ii.CodiInsu"
  loc_C05A10: ConcatStr
  loc_C05A11: FStStrNoPop var_E0
  loc_C05A14: LitStr ", i.DetaImpu, i.FechImpu, i.ExorImpu, i.ExpeImpu, i.AltaUsua, i.CucuPers, i.PrevImpu"
  loc_C05A17: ConcatStr
  loc_C05A18: FStStrNoPop var_108
  loc_C05A1B: LitStr ", i.CodiNope, i.Item"
  loc_C05A1E: ConcatStr
  loc_C05A1F: FStStrNoPop var_12C
  loc_C05A22: LitStr " FROM imputacion i"
  loc_C05A25: ConcatStr
  loc_C05A26: FStStrNoPop var_134
  loc_C05A29: LitStr " LEFT JOIN orgaxusua oxu ON oxu.PeriInfo = i.PeriInfo AND oxu.CodiOrga = i.CodiOrga AND oxu.CodiUsua = '"
  loc_C05A2C: ConcatStr
  loc_C05A2D: FStStrNoPop var_138
  loc_C05A30: ImpAdLdI4 MemVar_C3D03C
  loc_C05A33: ConcatStr
  loc_C05A34: FStStrNoPop var_13C
  loc_C05A37: LitStr "'"
  loc_C05A3A: ConcatStr
  loc_C05A3B: FStStrNoPop var_140
  loc_C05A3E: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_C05A41: ConcatStr
  loc_C05A42: FStStrNoPop var_144
  loc_C05A45: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_C05A48: ConcatStr
  loc_C05A49: FStStrNoPop var_148
  loc_C05A4C: LitStr " INNER JOIN unidadgasto ug ON ug.CodiUnga = i.CodiUnga"
  loc_C05A4F: ConcatStr
  loc_C05A50: FStStrNoPop var_14C
  loc_C05A53: LitStr " INNER JOIN finalidad f ON f.PeriInfo = i.PeriInfo AND f.CodiFifu = i.CodiFifu"
  loc_C05A56: ConcatStr
  loc_C05A57: FStStrNoPop var_150
  loc_C05A5A: LitStr " INNER JOIN infogov.insumo ii ON ii.CodiInsu = i.CodiInsu"
  loc_C05A5D: ConcatStr
  loc_C05A5E: FStStrNoPop var_154
  loc_C05A61: LitStr " WHERE i.PeriInfo = "
  loc_C05A64: ConcatStr
  loc_C05A65: FStStrNoPop var_15C
  loc_C05A68: FLdRfVar var_158
  loc_C05A6B: FLdPr Me
  loc_C05A6E: VCallAd Control_ID_cboPeriodo
  loc_C05A71: FStAdFunc var_AC
  loc_C05A74: FLdPr var_AC
  loc_C05A77:  = Me.Text
  loc_C05A7C: ILdRf var_158
  loc_C05A7F: ConcatStr
  loc_C05A80: FStStrNoPop var_160
  loc_C05A83: LitStr " AND i.ExorImpu = '"
  loc_C05A86: ConcatStr
  loc_C05A87: FStStrNoPop var_168
  loc_C05A8A: FLdRfVar var_164
  loc_C05A8D: FLdPr Me
  loc_C05A90: VCallAd Control_ID_cboExorImpu
  loc_C05A93: FStAdFunc var_104
  loc_C05A96: FLdPr var_104
  loc_C05A99:  = Me.Text
  loc_C05A9E: ILdRf var_164
  loc_C05AA1: ConcatStr
  loc_C05AA2: FStStrNoPop var_16C
  loc_C05AA5: LitStr "' AND PrevImpu <> 0"
  loc_C05AA8: ConcatStr
  loc_C05AA9: FStStrNoPop var_170
  loc_C05AAC: ILdRf var_B0
  loc_C05AAF: ConcatStr
  loc_C05AB0: FStStrNoPop var_174
  loc_C05AB3: ILdRf var_B4
  loc_C05AB6: ConcatStr
  loc_C05AB7: FStStrNoPop var_178
  loc_C05ABA: ILdRf var_B8
  loc_C05ABD: ConcatStr
  loc_C05ABE: FStStrNoPop var_17C
  loc_C05AC1: ILdRf var_BC
  loc_C05AC4: ConcatStr
  loc_C05AC5: FStStrNoPop var_180
  loc_C05AC8: ILdRf var_C0
  loc_C05ACB: ConcatStr
  loc_C05ACC: FStStrNoPop var_184
  loc_C05ACF: ILdRf var_C4
  loc_C05AD2: ConcatStr
  loc_C05AD3: FStStrNoPop var_188
  loc_C05AD6: ILdRf var_C8
  loc_C05AD9: ConcatStr
  loc_C05ADA: FStStrNoPop var_18C
  loc_C05ADD: LitStr " ORDER BY CodiNope, Item, i.CodiPart, i.CodiOrga, FechImpu, IdImpu;"
  loc_C05AE0: ConcatStr
  loc_C05AE1: FStStrNoPop var_190
  loc_C05AE4: LitI4 1
  loc_C05AE9: FLdPr Me
  loc_C05AEC: MemLdRfVar from_stack_1.global_100
  loc_C05AEF: Ary1LdRf
  loc_C05AF0: NewIfNullPr clsimputacion
  loc_C05AF3: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_C05AF8: FFreeStr var_E0 = "": var_108 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_15C = "": var_158 = "": var_160 = "": var_168 = "": var_164 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_C05B31: FFreeAd var_AC = ""
  loc_C05B38: FLdRfVar var_194
  loc_C05B3B: LitI4 1
  loc_C05B40: FLdPr Me
  loc_C05B43: MemLdRfVar from_stack_1.global_100
  loc_C05B46: Ary1LdRf
  loc_C05B47: NewIfNullPr clsimputacion
  loc_C05B4A: from_stack_1 = clsimputacion.RecordCount
  loc_C05B4F: LitI4 0
  loc_C05B54: ILdRf var_194
  loc_C05B57: LitI4 1
  loc_C05B5C: FLdPr Me
  loc_C05B5F: MemLdStr global_132
  loc_C05B62: Ary1LdPr
  loc_C05B63: MemLdRfVar from_stack_1.global_0
  loc_C05B66: Redim
  loc_C05B70: FLdRfVar var_CA
  loc_C05B73: FLdRfVar var_104
  loc_C05B76: LitI2_Byte 2
  loc_C05B78: FLdPrThis
  loc_C05B79: VCallAd Control_ID_chkEtapa
  loc_C05B7C: FStAdFunc var_AC
  loc_C05B7F: FLdPr var_AC
  loc_C05B82: Set from_stack_2 = Me(from_stack_1)
  loc_C05B87: FLdPr var_104
  loc_C05B8A:  = Me.Value
  loc_C05B8F: FLdI2 var_CA
  loc_C05B92: CI4UI1
  loc_C05B93: LitI4 1
  loc_C05B98: EqI4
  loc_C05B99: FFreeAd var_AC = ""
  loc_C05BA0: BranchF loc_C05D09
  loc_C05BA3: LitStr "SELECT IF(oxu.PeriInfo IS NULL,'No','Si') Mostrar, DetaPart, DetaOrga, DetaUnga, DetaFifu, DetaInsu, DetaProv, FantProv, CodiOrco, Item, Altern"
  loc_C05BA6: LitStr ", infogov.fnArmarJeraOrga(o.PeriInfo, o.CodiOrga) CodiOrga, i.CodiPart, i.CodiUnga, i.CodiFifu, ii.CodiInsu"
  loc_C05BA9: ConcatStr
  loc_C05BAA: FStStrNoPop var_E0
  loc_C05BAD: LitStr ", i.DetaImpu, i.FechImpu, i.ExorImpu, i.ExpeImpu, i.AltaUsua, i.CucuPers, i.DefiImpu"
  loc_C05BB0: ConcatStr
  loc_C05BB1: FStStrNoPop var_108
  loc_C05BB4: LitStr ", i.CodiNope, i.Item, i.CodiOrco, i.Altern"
  loc_C05BB7: ConcatStr
  loc_C05BB8: FStStrNoPop var_12C
  loc_C05BBB: LitStr " FROM imputacion i"
  loc_C05BBE: ConcatStr
  loc_C05BBF: FStStrNoPop var_134
  loc_C05BC2: LitStr " LEFT JOIN orgaxusua oxu ON oxu.PeriInfo = i.PeriInfo AND oxu.CodiOrga = i.CodiOrga AND oxu.CodiUsua = '"
  loc_C05BC5: ConcatStr
  loc_C05BC6: FStStrNoPop var_138
  loc_C05BC9: ImpAdLdI4 MemVar_C3D03C
  loc_C05BCC: ConcatStr
  loc_C05BCD: FStStrNoPop var_13C
  loc_C05BD0: LitStr "'"
  loc_C05BD3: ConcatStr
  loc_C05BD4: FStStrNoPop var_140
  loc_C05BD7: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_C05BDA: ConcatStr
  loc_C05BDB: FStStrNoPop var_144
  loc_C05BDE: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_C05BE1: ConcatStr
  loc_C05BE2: FStStrNoPop var_148
  loc_C05BE5: LitStr " INNER JOIN unidadgasto ug ON ug.CodiUnga = i.CodiUnga"
  loc_C05BE8: ConcatStr
  loc_C05BE9: FStStrNoPop var_14C
  loc_C05BEC: LitStr " INNER JOIN finalidad f ON f.PeriInfo = i.PeriInfo AND f.CodiFifu = i.CodiFifu"
  loc_C05BEF: ConcatStr
  loc_C05BF0: FStStrNoPop var_150
  loc_C05BF3: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_C05BF6: ConcatStr
  loc_C05BF7: FStStrNoPop var_154
  loc_C05BFA: LitStr " INNER JOIN infogov.insumo ii ON ii.CodiInsu = i.CodiInsu"
  loc_C05BFD: ConcatStr
  loc_C05BFE: FStStrNoPop var_158
  loc_C05C01: LitStr " WHERE i.PeriInfo = "
  loc_C05C04: ConcatStr
  loc_C05C05: FStStrNoPop var_160
  loc_C05C08: FLdRfVar var_15C
  loc_C05C0B: FLdPr Me
  loc_C05C0E: VCallAd Control_ID_cboPeriodo
  loc_C05C11: FStAdFunc var_AC
  loc_C05C14: FLdPr var_AC
  loc_C05C17:  = Me.Text
  loc_C05C1C: ILdRf var_15C
  loc_C05C1F: ConcatStr
  loc_C05C20: FStStrNoPop var_164
  loc_C05C23: LitStr " AND i.ExorImpu = '"
  loc_C05C26: ConcatStr
  loc_C05C27: FStStrNoPop var_16C
  loc_C05C2A: FLdRfVar var_168
  loc_C05C2D: FLdPr Me
  loc_C05C30: VCallAd Control_ID_cboExorImpu
  loc_C05C33: FStAdFunc var_104
  loc_C05C36: FLdPr var_104
  loc_C05C39:  = Me.Text
  loc_C05C3E: ILdRf var_168
  loc_C05C41: ConcatStr
  loc_C05C42: FStStrNoPop var_170
  loc_C05C45: LitStr "' AND DefiImpu <> 0"
  loc_C05C48: ConcatStr
  loc_C05C49: FStStrNoPop var_174
  loc_C05C4C: ILdRf var_B0
  loc_C05C4F: ConcatStr
  loc_C05C50: FStStrNoPop var_178
  loc_C05C53: ILdRf var_B4
  loc_C05C56: ConcatStr
  loc_C05C57: FStStrNoPop var_17C
  loc_C05C5A: ILdRf var_BC
  loc_C05C5D: ConcatStr
  loc_C05C5E: FStStrNoPop var_180
  loc_C05C61: ILdRf var_C0
  loc_C05C64: ConcatStr
  loc_C05C65: FStStrNoPop var_184
  loc_C05C68: ILdRf var_C4
  loc_C05C6B: ConcatStr
  loc_C05C6C: FStStrNoPop var_188
  loc_C05C6F: ILdRf var_C8
  loc_C05C72: ConcatStr
  loc_C05C73: FStStrNoPop var_18C
  loc_C05C76: LitStr " ORDER BY CodiOrco, Item, Altern, i.CodiPart, i.CodiOrga, FechImpu, IdImpu;"
  loc_C05C79: ConcatStr
  loc_C05C7A: FStStrNoPop var_190
  loc_C05C7D: LitI4 2
  loc_C05C82: FLdPr Me
  loc_C05C85: MemLdRfVar from_stack_1.global_100
  loc_C05C88: Ary1LdRf
  loc_C05C89: NewIfNullPr clsimputacion
  loc_C05C8C: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_C05C91: FFreeStr var_E0 = "": var_108 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_160 = "": var_15C = "": var_164 = "": var_16C = "": var_168 = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = ""
  loc_C05CCA: FFreeAd var_AC = ""
  loc_C05CD1: FLdRfVar var_194
  loc_C05CD4: LitI4 2
  loc_C05CD9: FLdPr Me
  loc_C05CDC: MemLdRfVar from_stack_1.global_100
  loc_C05CDF: Ary1LdRf
  loc_C05CE0: NewIfNullPr clsimputacion
  loc_C05CE3: from_stack_1 = clsimputacion.RecordCount
  loc_C05CE8: LitI4 0
  loc_C05CED: ILdRf var_194
  loc_C05CF0: LitI4 2
  loc_C05CF5: FLdPr Me
  loc_C05CF8: MemLdStr global_132
  loc_C05CFB: Ary1LdPr
  loc_C05CFC: MemLdRfVar from_stack_1.global_0
  loc_C05CFF: Redim
  loc_C05D09: FLdRfVar var_CA
  loc_C05D0C: FLdRfVar var_104
  loc_C05D0F: LitI2_Byte 3
  loc_C05D11: FLdPrThis
  loc_C05D12: VCallAd Control_ID_chkEtapa
  loc_C05D15: FStAdFunc var_AC
  loc_C05D18: FLdPr var_AC
  loc_C05D1B: Set from_stack_2 = Me(from_stack_1)
  loc_C05D20: FLdPr var_104
  loc_C05D23:  = Me.Value
  loc_C05D28: FLdI2 var_CA
  loc_C05D2B: CI4UI1
  loc_C05D2C: LitI4 1
  loc_C05D31: EqI4
  loc_C05D32: FFreeAd var_AC = ""
  loc_C05D39: BranchF loc_C05EAB
  loc_C05D3C: LitStr "SELECT IF(oxu.PeriInfo IS NULL,'No','Si') Mostrar, DetaPart, DetaOrga, DetaUnga, DetaFifu, DetaInsu, DetaProv, FantProv, CodiRece, CodiOrco, Item, Altern"
  loc_C05D3F: LitStr ", Left(NumeFact,3) AS TifaDeve, Substr(NumeFact,4,4) AS SufaDeve, Right(NumeFact,8) AS NufaDeve"
  loc_C05D42: ConcatStr
  loc_C05D43: FStStrNoPop var_E0
  loc_C05D46: LitStr ", infogov.fnArmarJeraOrga(o.PeriInfo, o.CodiOrga) CodiOrga, i.CodiPart, i.CodiUnga, i.CodiFifu, ii.CodiInsu"
  loc_C05D49: ConcatStr
  loc_C05D4A: FStStrNoPop var_108
  loc_C05D4D: LitStr ", i.DetaImpu, i.FechImpu, i.ExorImpu, i.ExpeImpu, i.AltaUsua, i.CucuPers, i.DeveImpu, i.NumeFact"
  loc_C05D50: ConcatStr
  loc_C05D51: FStStrNoPop var_12C
  loc_C05D54: LitStr ", i.CodiNope, i.Item, i.CodiOrco, i.CodiRece, i.Altern"
  loc_C05D57: ConcatStr
  loc_C05D58: FStStrNoPop var_134
  loc_C05D5B: LitStr " FROM imputacion i"
  loc_C05D5E: ConcatStr
  loc_C05D5F: FStStrNoPop var_138
  loc_C05D62: LitStr " LEFT JOIN orgaxusua oxu ON oxu.PeriInfo = i.PeriInfo AND oxu.CodiOrga = i.CodiOrga AND oxu.CodiUsua = '"
  loc_C05D65: ConcatStr
  loc_C05D66: FStStrNoPop var_13C
  loc_C05D69: ImpAdLdI4 MemVar_C3D03C
  loc_C05D6C: ConcatStr
  loc_C05D6D: FStStrNoPop var_140
  loc_C05D70: LitStr "'"
  loc_C05D73: ConcatStr
  loc_C05D74: FStStrNoPop var_144
  loc_C05D77: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_C05D7A: ConcatStr
  loc_C05D7B: FStStrNoPop var_148
  loc_C05D7E: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_C05D81: ConcatStr
  loc_C05D82: FStStrNoPop var_14C
  loc_C05D85: LitStr " INNER JOIN unidadgasto ug ON ug.CodiUnga = i.CodiUnga"
  loc_C05D88: ConcatStr
  loc_C05D89: FStStrNoPop var_150
  loc_C05D8C: LitStr " INNER JOIN finalidad f ON f.PeriInfo = i.PeriInfo AND f.CodiFifu = i.CodiFifu"
  loc_C05D8F: ConcatStr
  loc_C05D90: FStStrNoPop var_154
  loc_C05D93: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_C05D96: ConcatStr
  loc_C05D97: FStStrNoPop var_158
  loc_C05D9A: LitStr " INNER JOIN infogov.insumo ii ON ii.CodiInsu = i.CodiInsu"
  loc_C05D9D: ConcatStr
  loc_C05D9E: FStStrNoPop var_15C
  loc_C05DA1: LitStr " WHERE i.PeriInfo = "
  loc_C05DA4: ConcatStr
  loc_C05DA5: FStStrNoPop var_164
  loc_C05DA8: FLdRfVar var_160
  loc_C05DAB: FLdPr Me
  loc_C05DAE: VCallAd Control_ID_cboPeriodo
  loc_C05DB1: FStAdFunc var_AC
  loc_C05DB4: FLdPr var_AC
  loc_C05DB7:  = Me.Text
  loc_C05DBC: ILdRf var_160
  loc_C05DBF: ConcatStr
  loc_C05DC0: FStStrNoPop var_168
  loc_C05DC3: LitStr " AND i.ExorImpu = '"
  loc_C05DC6: ConcatStr
  loc_C05DC7: FStStrNoPop var_170
  loc_C05DCA: FLdRfVar var_16C
  loc_C05DCD: FLdPr Me
  loc_C05DD0: VCallAd Control_ID_cboExorImpu
  loc_C05DD3: FStAdFunc var_104
  loc_C05DD6: FLdPr var_104
  loc_C05DD9:  = Me.Text
  loc_C05DDE: ILdRf var_16C
  loc_C05DE1: ConcatStr
  loc_C05DE2: FStStrNoPop var_174
  loc_C05DE5: LitStr "' AND DeveImpu <> 0"
  loc_C05DE8: ConcatStr
  loc_C05DE9: FStStrNoPop var_178
  loc_C05DEC: ILdRf var_B0
  loc_C05DEF: ConcatStr
  loc_C05DF0: FStStrNoPop var_17C
  loc_C05DF3: ILdRf var_B4
  loc_C05DF6: ConcatStr
  loc_C05DF7: FStStrNoPop var_180
  loc_C05DFA: ILdRf var_BC
  loc_C05DFD: ConcatStr
  loc_C05DFE: FStStrNoPop var_184
  loc_C05E01: ILdRf var_C0
  loc_C05E04: ConcatStr
  loc_C05E05: FStStrNoPop var_188
  loc_C05E08: ILdRf var_C4
  loc_C05E0B: ConcatStr
  loc_C05E0C: FStStrNoPop var_18C
  loc_C05E0F: ILdRf var_C8
  loc_C05E12: ConcatStr
  loc_C05E13: FStStrNoPop var_190
  loc_C05E16: LitStr " ORDER BY CodiOrco, CodiRece, Item, Altern, CodiPart, CodiOrga, FechImpu, IdImpu;"
  loc_C05E19: ConcatStr
  loc_C05E1A: FStStrNoPop var_198
  loc_C05E1D: LitI4 3
  loc_C05E22: FLdPr Me
  loc_C05E25: MemLdRfVar from_stack_1.global_100
  loc_C05E28: Ary1LdRf
  loc_C05E29: NewIfNullPr clsimputacion
  loc_C05E2C: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_C05E31: FFreeStr var_E0 = "": var_108 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_164 = "": var_160 = "": var_168 = "": var_170 = "": var_16C = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_C05E6C: FFreeAd var_AC = ""
  loc_C05E73: FLdRfVar var_194
  loc_C05E76: LitI4 3
  loc_C05E7B: FLdPr Me
  loc_C05E7E: MemLdRfVar from_stack_1.global_100
  loc_C05E81: Ary1LdRf
  loc_C05E82: NewIfNullPr clsimputacion
  loc_C05E85: from_stack_1 = clsimputacion.RecordCount
  loc_C05E8A: LitI4 0
  loc_C05E8F: ILdRf var_194
  loc_C05E92: LitI4 3
  loc_C05E97: FLdPr Me
  loc_C05E9A: MemLdStr global_132
  loc_C05E9D: Ary1LdPr
  loc_C05E9E: MemLdRfVar from_stack_1.global_0
  loc_C05EA1: Redim
  loc_C05EAB: FLdRfVar var_CA
  loc_C05EAE: FLdRfVar var_104
  loc_C05EB1: LitI2_Byte 4
  loc_C05EB3: FLdPrThis
  loc_C05EB4: VCallAd Control_ID_chkEtapa
  loc_C05EB7: FStAdFunc var_AC
  loc_C05EBA: FLdPr var_AC
  loc_C05EBD: Set from_stack_2 = Me(from_stack_1)
  loc_C05EC2: FLdPr var_104
  loc_C05EC5:  = Me.Value
  loc_C05ECA: FLdI2 var_CA
  loc_C05ECD: CI4UI1
  loc_C05ECE: LitI4 1
  loc_C05ED3: EqI4
  loc_C05ED4: FFreeAd var_AC = ""
  loc_C05EDB: BranchF loc_C06056
  loc_C05EDE: LitStr "SELECT IF(oxu.PeriInfo IS NULL,'No','Si') Mostrar, DetaPart, DetaOrga, DetaUnga, DetaFifu, DetaInsu, DetaProv, FantProv, IFNULL(FereOrpa,'') FereOrpa"
  loc_C05EE1: LitStr ", Left(NumeFact,3) AS TifaDeve, Substr(NumeFact,4,4) AS SufaDeve, Right(NumeFact,8) AS NufaDeve"
  loc_C05EE4: ConcatStr
  loc_C05EE5: FStStrNoPop var_E0
  loc_C05EE8: LitStr ", infogov.fnArmarJeraOrga(o.PeriInfo, o.CodiOrga) CodiOrga, i.CodiPart, i.CodiUnga, i.CodiFifu, ii.CodiInsu"
  loc_C05EEB: ConcatStr
  loc_C05EEC: FStStrNoPop var_108
  loc_C05EEF: LitStr ", i.DetaImpu, i.FechImpu, i.ExorImpu, i.ExpeImpu, i.AltaUsua, i.CucuPers, i.MapaImpu, i.NumeFact, i.NumeOrpa"
  loc_C05EF2: ConcatStr
  loc_C05EF3: FStStrNoPop var_12C
  loc_C05EF6: LitStr ", i.CodiNope, i.Item, i.CodiOrco, i.CodiRece, i.Altern"
  loc_C05EF9: ConcatStr
  loc_C05EFA: FStStrNoPop var_134
  loc_C05EFD: LitStr " FROM imputacion i"
  loc_C05F00: ConcatStr
  loc_C05F01: FStStrNoPop var_138
  loc_C05F04: LitStr " LEFT JOIN orgaxusua oxu ON oxu.PeriInfo = i.PeriInfo AND oxu.CodiOrga = i.CodiOrga AND oxu.CodiUsua = '"
  loc_C05F07: ConcatStr
  loc_C05F08: FStStrNoPop var_13C
  loc_C05F0B: ImpAdLdI4 MemVar_C3D03C
  loc_C05F0E: ConcatStr
  loc_C05F0F: FStStrNoPop var_140
  loc_C05F12: LitStr "'"
  loc_C05F15: ConcatStr
  loc_C05F16: FStStrNoPop var_144
  loc_C05F19: LitStr " LEFT JOIN ordenpago op ON op.PeriInfo = i.PeriInfo AND op.NumeOrpa = i.NumeOrpa"
  loc_C05F1C: ConcatStr
  loc_C05F1D: FStStrNoPop var_148
  loc_C05F20: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_C05F23: ConcatStr
  loc_C05F24: FStStrNoPop var_14C
  loc_C05F27: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_C05F2A: ConcatStr
  loc_C05F2B: FStStrNoPop var_150
  loc_C05F2E: LitStr " INNER JOIN unidadgasto ug ON ug.CodiUnga = i.CodiUnga"
  loc_C05F31: ConcatStr
  loc_C05F32: FStStrNoPop var_154
  loc_C05F35: LitStr " INNER JOIN finalidad f ON f.PeriInfo = i.PeriInfo AND f.CodiFifu = i.CodiFifu"
  loc_C05F38: ConcatStr
  loc_C05F39: FStStrNoPop var_158
  loc_C05F3C: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_C05F3F: ConcatStr
  loc_C05F40: FStStrNoPop var_15C
  loc_C05F43: LitStr " INNER JOIN infogov.insumo ii ON ii.CodiInsu = i.CodiInsu"
  loc_C05F46: ConcatStr
  loc_C05F47: FStStrNoPop var_160
  loc_C05F4A: LitStr " WHERE i.PeriInfo = "
  loc_C05F4D: ConcatStr
  loc_C05F4E: FStStrNoPop var_168
  loc_C05F51: FLdRfVar var_164
  loc_C05F54: FLdPr Me
  loc_C05F57: VCallAd Control_ID_cboPeriodo
  loc_C05F5A: FStAdFunc var_AC
  loc_C05F5D: FLdPr var_AC
  loc_C05F60:  = Me.Text
  loc_C05F65: ILdRf var_164
  loc_C05F68: ConcatStr
  loc_C05F69: FStStrNoPop var_16C
  loc_C05F6C: LitStr " AND i.ExorImpu = '"
  loc_C05F6F: ConcatStr
  loc_C05F70: FStStrNoPop var_174
  loc_C05F73: FLdRfVar var_170
  loc_C05F76: FLdPr Me
  loc_C05F79: VCallAd Control_ID_cboExorImpu
  loc_C05F7C: FStAdFunc var_104
  loc_C05F7F: FLdPr var_104
  loc_C05F82:  = Me.Text
  loc_C05F87: ILdRf var_170
  loc_C05F8A: ConcatStr
  loc_C05F8B: FStStrNoPop var_178
  loc_C05F8E: LitStr "' AND MapaImpu <> 0"
  loc_C05F91: ConcatStr
  loc_C05F92: FStStrNoPop var_17C
  loc_C05F95: ILdRf var_B0
  loc_C05F98: ConcatStr
  loc_C05F99: FStStrNoPop var_180
  loc_C05F9C: ILdRf var_B4
  loc_C05F9F: ConcatStr
  loc_C05FA0: FStStrNoPop var_184
  loc_C05FA3: ILdRf var_BC
  loc_C05FA6: ConcatStr
  loc_C05FA7: FStStrNoPop var_188
  loc_C05FAA: ILdRf var_C0
  loc_C05FAD: ConcatStr
  loc_C05FAE: FStStrNoPop var_18C
  loc_C05FB1: ILdRf var_C4
  loc_C05FB4: ConcatStr
  loc_C05FB5: FStStrNoPop var_190
  loc_C05FB8: ILdRf var_C8
  loc_C05FBB: ConcatStr
  loc_C05FBC: FStStrNoPop var_198
  loc_C05FBF: LitStr " ORDER BY CodiOrco, CodiRece, Item, Altern, CodiPart, CodiOrga, FechImpu, IdImpu;"
  loc_C05FC2: ConcatStr
  loc_C05FC3: FStStrNoPop var_19C
  loc_C05FC6: LitI4 4
  loc_C05FCB: FLdPr Me
  loc_C05FCE: MemLdRfVar from_stack_1.global_100
  loc_C05FD1: Ary1LdRf
  loc_C05FD2: NewIfNullPr clsimputacion
  loc_C05FD5: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_C05FDA: FFreeStr var_E0 = "": var_108 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_168 = "": var_164 = "": var_16C = "": var_174 = "": var_170 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_198 = ""
  loc_C06017: FFreeAd var_AC = ""
  loc_C0601E: FLdRfVar var_194
  loc_C06021: LitI4 4
  loc_C06026: FLdPr Me
  loc_C06029: MemLdRfVar from_stack_1.global_100
  loc_C0602C: Ary1LdRf
  loc_C0602D: NewIfNullPr clsimputacion
  loc_C06030: from_stack_1 = clsimputacion.RecordCount
  loc_C06035: LitI4 0
  loc_C0603A: ILdRf var_194
  loc_C0603D: LitI4 4
  loc_C06042: FLdPr Me
  loc_C06045: MemLdStr global_132
  loc_C06048: Ary1LdPr
  loc_C06049: MemLdRfVar from_stack_1.global_0
  loc_C0604C: Redim
  loc_C06056: FLdRfVar var_CA
  loc_C06059: FLdRfVar var_104
  loc_C0605C: LitI2_Byte 5
  loc_C0605E: FLdPrThis
  loc_C0605F: VCallAd Control_ID_chkEtapa
  loc_C06062: FStAdFunc var_AC
  loc_C06065: FLdPr var_AC
  loc_C06068: Set from_stack_2 = Me(from_stack_1)
  loc_C0606D: FLdPr var_104
  loc_C06070:  = Me.Value
  loc_C06075: FLdI2 var_CA
  loc_C06078: CI4UI1
  loc_C06079: LitI4 1
  loc_C0607E: EqI4
  loc_C0607F: FFreeAd var_AC = ""
  loc_C06086: BranchF loc_C06201
  loc_C06089: LitStr "SELECT IF(oxu.PeriInfo IS NULL,'No','Si') Mostrar, DetaPart, DetaOrga, DetaUnga, DetaFifu, DetaInsu, DetaProv, FantProv, IFNULL(op.ArchOrpa,'') ArchOrpa"
  loc_C0608C: LitStr ", Left(NumeFact,3) AS TifaDeve, Substr(NumeFact,4,4) AS SufaDeve, Right(NumeFact,8) AS NufaDeve"
  loc_C0608F: ConcatStr
  loc_C06090: FStStrNoPop var_E0
  loc_C06093: LitStr ", infogov.fnArmarJeraOrga(o.PeriInfo, o.CodiOrga) CodiOrga, i.CodiPart, i.CodiUnga, i.CodiFifu, ii.CodiInsu"
  loc_C06096: ConcatStr
  loc_C06097: FStStrNoPop var_108
  loc_C0609A: LitStr ", i.DetaImpu, i.FechImpu, i.ExorImpu, i.ExpeImpu, i.AltaUsua, i.CucuPers, i.PagaImpu, i.NumeFact, i.NumeOrpa"
  loc_C0609D: ConcatStr
  loc_C0609E: FStStrNoPop var_12C
  loc_C060A1: LitStr ", i.CodiNope, i.Item, i.CodiOrco, i.CodiRece, i.Altern"
  loc_C060A4: ConcatStr
  loc_C060A5: FStStrNoPop var_134
  loc_C060A8: LitStr " FROM imputacion i"
  loc_C060AB: ConcatStr
  loc_C060AC: FStStrNoPop var_138
  loc_C060AF: LitStr " LEFT JOIN orgaxusua oxu ON oxu.PeriInfo = i.PeriInfo AND oxu.CodiOrga = i.CodiOrga AND oxu.CodiUsua = '"
  loc_C060B2: ConcatStr
  loc_C060B3: FStStrNoPop var_13C
  loc_C060B6: ImpAdLdI4 MemVar_C3D03C
  loc_C060B9: ConcatStr
  loc_C060BA: FStStrNoPop var_140
  loc_C060BD: LitStr "'"
  loc_C060C0: ConcatStr
  loc_C060C1: FStStrNoPop var_144
  loc_C060C4: LitStr " LEFT JOIN ordenpago op ON op.PeriInfo = i.PeriInfo AND op.NumeOrpa = i.NumeOrpa"
  loc_C060C7: ConcatStr
  loc_C060C8: FStStrNoPop var_148
  loc_C060CB: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_C060CE: ConcatStr
  loc_C060CF: FStStrNoPop var_14C
  loc_C060D2: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = i.PeriInfo AND o.CodiOrga = i.CodiOrga"
  loc_C060D5: ConcatStr
  loc_C060D6: FStStrNoPop var_150
  loc_C060D9: LitStr " INNER JOIN unidadgasto ug ON ug.CodiUnga = i.CodiUnga"
  loc_C060DC: ConcatStr
  loc_C060DD: FStStrNoPop var_154
  loc_C060E0: LitStr " INNER JOIN finalidad f ON f.PeriInfo = i.PeriInfo AND f.CodiFifu = i.CodiFifu"
  loc_C060E3: ConcatStr
  loc_C060E4: FStStrNoPop var_158
  loc_C060E7: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = i.CucuPers"
  loc_C060EA: ConcatStr
  loc_C060EB: FStStrNoPop var_15C
  loc_C060EE: LitStr " INNER JOIN infogov.insumo ii ON ii.CodiInsu = i.CodiInsu"
  loc_C060F1: ConcatStr
  loc_C060F2: FStStrNoPop var_160
  loc_C060F5: LitStr " WHERE i.PeriInfo = "
  loc_C060F8: ConcatStr
  loc_C060F9: FStStrNoPop var_168
  loc_C060FC: FLdRfVar var_164
  loc_C060FF: FLdPr Me
  loc_C06102: VCallAd Control_ID_cboPeriodo
  loc_C06105: FStAdFunc var_AC
  loc_C06108: FLdPr var_AC
  loc_C0610B:  = Me.Text
  loc_C06110: ILdRf var_164
  loc_C06113: ConcatStr
  loc_C06114: FStStrNoPop var_16C
  loc_C06117: LitStr " AND i.ExorImpu = '"
  loc_C0611A: ConcatStr
  loc_C0611B: FStStrNoPop var_174
  loc_C0611E: FLdRfVar var_170
  loc_C06121: FLdPr Me
  loc_C06124: VCallAd Control_ID_cboExorImpu
  loc_C06127: FStAdFunc var_104
  loc_C0612A: FLdPr var_104
  loc_C0612D:  = Me.Text
  loc_C06132: ILdRf var_170
  loc_C06135: ConcatStr
  loc_C06136: FStStrNoPop var_178
  loc_C06139: LitStr "' AND PagaImpu <> 0"
  loc_C0613C: ConcatStr
  loc_C0613D: FStStrNoPop var_17C
  loc_C06140: ILdRf var_B0
  loc_C06143: ConcatStr
  loc_C06144: FStStrNoPop var_180
  loc_C06147: ILdRf var_B4
  loc_C0614A: ConcatStr
  loc_C0614B: FStStrNoPop var_184
  loc_C0614E: ILdRf var_BC
  loc_C06151: ConcatStr
  loc_C06152: FStStrNoPop var_188
  loc_C06155: ILdRf var_C0
  loc_C06158: ConcatStr
  loc_C06159: FStStrNoPop var_18C
  loc_C0615C: ILdRf var_C4
  loc_C0615F: ConcatStr
  loc_C06160: FStStrNoPop var_190
  loc_C06163: ILdRf var_C8
  loc_C06166: ConcatStr
  loc_C06167: FStStrNoPop var_198
  loc_C0616A: LitStr " ORDER BY CodiOrco, CodiRece, Item, Altern, CodiPart, CodiOrga, FechImpu, IdImpu;"
  loc_C0616D: ConcatStr
  loc_C0616E: FStStrNoPop var_19C
  loc_C06171: LitI4 5
  loc_C06176: FLdPr Me
  loc_C06179: MemLdRfVar from_stack_1.global_100
  loc_C0617C: Ary1LdRf
  loc_C0617D: NewIfNullPr clsimputacion
  loc_C06180: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_C06185: FFreeStr var_E0 = "": var_108 = "": var_12C = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_168 = "": var_164 = "": var_16C = "": var_174 = "": var_170 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_198 = ""
  loc_C061C2: FFreeAd var_AC = ""
  loc_C061C9: FLdRfVar var_194
  loc_C061CC: LitI4 5
  loc_C061D1: FLdPr Me
  loc_C061D4: MemLdRfVar from_stack_1.global_100
  loc_C061D7: Ary1LdRf
  loc_C061D8: NewIfNullPr clsimputacion
  loc_C061DB: from_stack_1 = clsimputacion.RecordCount
  loc_C061E0: LitI4 0
  loc_C061E5: ILdRf var_194
  loc_C061E8: LitI4 5
  loc_C061ED: FLdPr Me
  loc_C061F0: MemLdStr global_132
  loc_C061F3: Ary1LdPr
  loc_C061F4: MemLdRfVar from_stack_1.global_0
  loc_C061F7: Redim
  loc_C06201: LitI4 1
  loc_C06206: FLdPr Me
  loc_C06209: MemLdStr global_132
  loc_C0620C: Ary1LdPr
  loc_C0620D: MemLdStr global_0
  loc_C06210: LitI2_Byte 1
  loc_C06212: FnUBound
  loc_C06214: FStR4 var_88
  loc_C06217: LitI2_Byte 2
  loc_C06219: FLdPr Me
  loc_C0621C: MemLdRfVar from_stack_1.global_136
  loc_C0621F: LitI2_Byte 5
  loc_C06221: ForI2 var_1A0
  loc_C06227: FLdPr Me
  loc_C0622A: MemLdI2 global_136
  loc_C0622D: CI4UI1
  loc_C0622E: FLdPr Me
  loc_C06231: MemLdStr global_132
  loc_C06234: Ary1LdPr
  loc_C06235: MemLdStr global_0
  loc_C06238: LitI2_Byte 1
  loc_C0623A: FnUBound
  loc_C0623C: ILdRf var_88
  loc_C0623F: GtI4
  loc_C06240: BranchF loc_C0625B
  loc_C06243: FLdPr Me
  loc_C06246: MemLdI2 global_136
  loc_C06249: CI4UI1
  loc_C0624A: FLdPr Me
  loc_C0624D: MemLdStr global_132
  loc_C06250: Ary1LdPr
  loc_C06251: MemLdStr global_0
  loc_C06254: LitI2_Byte 1
  loc_C06256: FnUBound
  loc_C06258: FStR4 var_88
  loc_C0625B: FLdPr Me
  loc_C0625E: MemLdRfVar from_stack_1.global_136
  loc_C06261: NextI2 var_1A0, loc_C06227
  loc_C06266: ILdRf var_88
  loc_C06269: LitI4 0
  loc_C0626E: EqI4
  loc_C0626F: BranchF loc_C062AA
  loc_C06272: LitI4 0
  loc_C06277: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C0627A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C0627F: LitI4 0
  loc_C06284: CI2I4
  loc_C06285: FLdPr Me
  loc_C06288: Me.MousePointer = from_stack_1
  loc_C0628D: LitVarStr var_98, vbNullString
  loc_C06292: PopAdLdVar
  loc_C06293: FLdPr Me
  loc_C06296: VCallAd Control_ID_statusBar
  loc_C06299: FStAdFunc var_AC
  loc_C0629C: FLdPr var_AC
  loc_C0629F: LateIdSt
  loc_C062A4: FFree1Ad var_AC
  loc_C062A7: Branch loc_C07C74
  loc_C062AA: LitI2_Byte 1
  loc_C062AC: FLdPr Me
  loc_C062AF: MemLdRfVar from_stack_1.global_136
  loc_C062B2: LitI2_Byte 5
  loc_C062B4: ForI2 var_1A4
  loc_C062BA: FLdPr Me
  loc_C062BD: MemLdI2 global_136
  loc_C062C0: CI4UI1
  loc_C062C1: FLdPr Me
  loc_C062C4: MemLdStr global_132
  loc_C062C7: Ary1LdPr
  loc_C062C8: MemLdStr global_0
  loc_C062CB: LitI2_Byte 1
  loc_C062CD: FnUBound
  loc_C062CF: LitI4 0
  loc_C062D4: GtI4
  loc_C062D5: BranchF loc_C07C61
  loc_C062D8: FLdPr Me
  loc_C062DB: MemLdI2 global_136
  loc_C062DE: CI4UI1
  loc_C062DF: FLdPr Me
  loc_C062E2: MemLdRfVar from_stack_1.global_100
  loc_C062E5: Ary1LdRf
  loc_C062E6: NewIfNullPr clsimputacion
  loc_C062E9: Call clsimputacion.MoveFirst()
  loc_C062EE: LitI4 1
  loc_C062F3: FLdPr Me
  loc_C062F6: MemLdRfVar from_stack_1.global_140
  loc_C062F9: FLdPr Me
  loc_C062FC: MemLdI2 global_136
  loc_C062FF: CI4UI1
  loc_C06300: FLdPr Me
  loc_C06303: MemLdStr global_132
  loc_C06306: Ary1LdPr
  loc_C06307: MemLdStr global_0
  loc_C0630A: LitI2_Byte 1
  loc_C0630C: FnUBound
  loc_C0630E: ForI4 var_1AC
  loc_C06314: FLdRfVar var_AC
  loc_C06317: FLdPr Me
  loc_C0631A: MemLdI2 global_136
  loc_C0631D: CI4UI1
  loc_C0631E: FLdPr Me
  loc_C06321: MemLdRfVar from_stack_1.global_100
  loc_C06324: Ary1LdRf
  loc_C06325: NewIfNullPr clsimputacion
  loc_C06328: from_stack_1v = clsimputacion.RsFrmGet()
  loc_C0632D: FLdZeroAd var_AC
  loc_C06330: FStAdFunc var_1B0
  loc_C06333: ImpAdLdRf MemVar_C3D03C
  loc_C06336: CVarRef
  loc_C0633B: FLdRfVar var_F0
  loc_C0633E: ImpAdCallFPR4  = Ucase()
  loc_C06343: FLdRfVar var_DC
  loc_C06346: FLdRfVar var_104
  loc_C06349: LitVarStr var_98, "Mostrar"
  loc_C0634E: PopAdLdVar
  loc_C0634F: FLdRfVar var_AC
  loc_C06352: FLdPr var_1B0
  loc_C06355:  = Me.Fields
  loc_C0635A: FLdPr var_AC
  loc_C0635D: from_stack_2 = Me.Item(from_stack_1)
  loc_C06362: FLdPr var_104
  loc_C06365:  = Me.Value
  loc_C0636A: FLdRfVar var_DC
  loc_C0636D: FnCStrVar
  loc_C0636F: FStStrNoPop var_E0
  loc_C06372: LitStr "Si"
  loc_C06375: EqStr
  loc_C06377: CVarBoolI2 var_1D0
  loc_C0637B: LitI4 3
  loc_C06380: FLdRfVar var_F0
  loc_C06383: FLdRfVar var_100
  loc_C06386: ImpAdCallFPR4  = Left(, )
  loc_C0638B: FLdRfVar var_100
  loc_C0638E: LitVarStr var_1C0, "HTC"
  loc_C06393: HardType
  loc_C06394: EqVar var_118
  loc_C06398: OrVar var_128
  loc_C0639C: CBoolVarNull
  loc_C0639E: FFree1Str var_E0
  loc_C063A1: FFreeAd var_AC = ""
  loc_C063A8: FFreeVar var_DC = "": var_F0 = "": var_100 = ""
  loc_C063B3: BranchF loc_C07329
  loc_C063B6: FLdRfVar var_104
  loc_C063B9: LitVarStr var_98, "CodiPart"
  loc_C063BE: PopAdLdVar
  loc_C063BF: FLdRfVar var_AC
  loc_C063C2: FLdPr var_1B0
  loc_C063C5:  = Me.Fields
  loc_C063CA: FLdPr var_AC
  loc_C063CD: from_stack_2 = Me.Item(from_stack_1)
  loc_C063D2: LitI2_Byte 0
  loc_C063D4: LitVar_Missing var_F0
  loc_C063D7: LitI2_Byte 0
  loc_C063D9: FLdZeroAd var_104
  loc_C063DC: CVarAd
  loc_C063E0: PopAdLdVar
  loc_C063E1: FLdPr Me
  loc_C063E4: MemLdStr global_140
  loc_C063E7: FLdPr Me
  loc_C063EA: MemLdI2 global_136
  loc_C063ED: CI4UI1
  loc_C063EE: FLdPr Me
  loc_C063F1: MemLdStr global_132
  loc_C063F4: AryLock
  loc_C063F7: Ary1LdPr
  loc_C063F8: MemLdStr global_0
  loc_C063FB: AryLock
  loc_C063FE: Ary1LdPr
  loc_C063FF: MemLdRfVar from_stack_1.global_0
  loc_C06402: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06407: AryUnlock
  loc_C0640A: AryUnlock
  loc_C0640D: FFree1Ad var_AC
  loc_C06410: FFreeVar var_DC = ""
  loc_C06417: FLdRfVar var_104
  loc_C0641A: LitVarStr var_98, "DetaPart"
  loc_C0641F: PopAdLdVar
  loc_C06420: FLdRfVar var_AC
  loc_C06423: FLdPr var_1B0
  loc_C06426:  = Me.Fields
  loc_C0642B: FLdPr var_AC
  loc_C0642E: from_stack_2 = Me.Item(from_stack_1)
  loc_C06433: LitI2_Byte 0
  loc_C06435: LitVar_Missing var_F0
  loc_C06438: LitI2_Byte 0
  loc_C0643A: FLdZeroAd var_104
  loc_C0643D: CVarAd
  loc_C06441: PopAdLdVar
  loc_C06442: FLdPr Me
  loc_C06445: MemLdStr global_140
  loc_C06448: FLdPr Me
  loc_C0644B: MemLdI2 global_136
  loc_C0644E: CI4UI1
  loc_C0644F: FLdPr Me
  loc_C06452: MemLdStr global_132
  loc_C06455: AryLock
  loc_C06458: Ary1LdPr
  loc_C06459: MemLdStr global_0
  loc_C0645C: AryLock
  loc_C0645F: Ary1LdPr
  loc_C06460: MemLdRfVar from_stack_1.global_4
  loc_C06463: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06468: AryUnlock
  loc_C0646B: AryUnlock
  loc_C0646E: FFree1Ad var_AC
  loc_C06471: FFreeVar var_DC = ""
  loc_C06478: FLdRfVar var_104
  loc_C0647B: LitVarStr var_98, "CodiOrga"
  loc_C06480: PopAdLdVar
  loc_C06481: FLdRfVar var_AC
  loc_C06484: FLdPr var_1B0
  loc_C06487:  = Me.Fields
  loc_C0648C: FLdPr var_AC
  loc_C0648F: from_stack_2 = Me.Item(from_stack_1)
  loc_C06494: LitI2_Byte 0
  loc_C06496: LitVar_Missing var_F0
  loc_C06499: LitI2_Byte 0
  loc_C0649B: FLdZeroAd var_104
  loc_C0649E: CVarAd
  loc_C064A2: PopAdLdVar
  loc_C064A3: FLdPr Me
  loc_C064A6: MemLdStr global_140
  loc_C064A9: FLdPr Me
  loc_C064AC: MemLdI2 global_136
  loc_C064AF: CI4UI1
  loc_C064B0: FLdPr Me
  loc_C064B3: MemLdStr global_132
  loc_C064B6: AryLock
  loc_C064B9: Ary1LdPr
  loc_C064BA: MemLdStr global_0
  loc_C064BD: AryLock
  loc_C064C0: Ary1LdPr
  loc_C064C1: MemLdRfVar from_stack_1.global_8
  loc_C064C4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C064C9: AryUnlock
  loc_C064CC: AryUnlock
  loc_C064CF: FFree1Ad var_AC
  loc_C064D2: FFreeVar var_DC = ""
  loc_C064D9: FLdRfVar var_104
  loc_C064DC: LitVarStr var_98, "DetaOrga"
  loc_C064E1: PopAdLdVar
  loc_C064E2: FLdRfVar var_AC
  loc_C064E5: FLdPr var_1B0
  loc_C064E8:  = Me.Fields
  loc_C064ED: FLdPr var_AC
  loc_C064F0: from_stack_2 = Me.Item(from_stack_1)
  loc_C064F5: LitI2_Byte 0
  loc_C064F7: LitVar_Missing var_F0
  loc_C064FA: LitI2_Byte 0
  loc_C064FC: FLdZeroAd var_104
  loc_C064FF: CVarAd
  loc_C06503: PopAdLdVar
  loc_C06504: FLdPr Me
  loc_C06507: MemLdStr global_140
  loc_C0650A: FLdPr Me
  loc_C0650D: MemLdI2 global_136
  loc_C06510: CI4UI1
  loc_C06511: FLdPr Me
  loc_C06514: MemLdStr global_132
  loc_C06517: AryLock
  loc_C0651A: Ary1LdPr
  loc_C0651B: MemLdStr global_0
  loc_C0651E: AryLock
  loc_C06521: Ary1LdPr
  loc_C06522: MemLdRfVar from_stack_1.global_12
  loc_C06525: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0652A: AryUnlock
  loc_C0652D: AryUnlock
  loc_C06530: FFree1Ad var_AC
  loc_C06533: FFreeVar var_DC = ""
  loc_C0653A: FLdRfVar var_104
  loc_C0653D: LitVarStr var_98, "CodiUnga"
  loc_C06542: PopAdLdVar
  loc_C06543: FLdRfVar var_AC
  loc_C06546: FLdPr var_1B0
  loc_C06549:  = Me.Fields
  loc_C0654E: FLdPr var_AC
  loc_C06551: from_stack_2 = Me.Item(from_stack_1)
  loc_C06556: LitI2_Byte 0
  loc_C06558: LitVar_Missing var_F0
  loc_C0655B: LitI2_Byte 0
  loc_C0655D: FLdZeroAd var_104
  loc_C06560: CVarAd
  loc_C06564: PopAdLdVar
  loc_C06565: FLdPr Me
  loc_C06568: MemLdStr global_140
  loc_C0656B: FLdPr Me
  loc_C0656E: MemLdI2 global_136
  loc_C06571: CI4UI1
  loc_C06572: FLdPr Me
  loc_C06575: MemLdStr global_132
  loc_C06578: AryLock
  loc_C0657B: Ary1LdPr
  loc_C0657C: MemLdStr global_0
  loc_C0657F: AryLock
  loc_C06582: Ary1LdPr
  loc_C06583: MemLdRfVar from_stack_1.global_16
  loc_C06586: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0658B: AryUnlock
  loc_C0658E: AryUnlock
  loc_C06591: FFree1Ad var_AC
  loc_C06594: FFreeVar var_DC = ""
  loc_C0659B: FLdRfVar var_104
  loc_C0659E: LitVarStr var_98, "DetaUnga"
  loc_C065A3: PopAdLdVar
  loc_C065A4: FLdRfVar var_AC
  loc_C065A7: FLdPr var_1B0
  loc_C065AA:  = Me.Fields
  loc_C065AF: FLdPr var_AC
  loc_C065B2: from_stack_2 = Me.Item(from_stack_1)
  loc_C065B7: LitI2_Byte 0
  loc_C065B9: LitVar_Missing var_F0
  loc_C065BC: LitI2_Byte 0
  loc_C065BE: FLdZeroAd var_104
  loc_C065C1: CVarAd
  loc_C065C5: PopAdLdVar
  loc_C065C6: FLdPr Me
  loc_C065C9: MemLdStr global_140
  loc_C065CC: FLdPr Me
  loc_C065CF: MemLdI2 global_136
  loc_C065D2: CI4UI1
  loc_C065D3: FLdPr Me
  loc_C065D6: MemLdStr global_132
  loc_C065D9: AryLock
  loc_C065DC: Ary1LdPr
  loc_C065DD: MemLdStr global_0
  loc_C065E0: AryLock
  loc_C065E3: Ary1LdPr
  loc_C065E4: MemLdRfVar from_stack_1.global_20
  loc_C065E7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C065EC: AryUnlock
  loc_C065EF: AryUnlock
  loc_C065F2: FFree1Ad var_AC
  loc_C065F5: FFreeVar var_DC = ""
  loc_C065FC: FLdRfVar var_104
  loc_C065FF: LitVarStr var_98, "CodiFifu"
  loc_C06604: PopAdLdVar
  loc_C06605: FLdRfVar var_AC
  loc_C06608: FLdPr var_1B0
  loc_C0660B:  = Me.Fields
  loc_C06610: FLdPr var_AC
  loc_C06613: from_stack_2 = Me.Item(from_stack_1)
  loc_C06618: LitI2_Byte 0
  loc_C0661A: LitVar_Missing var_F0
  loc_C0661D: LitI2_Byte 0
  loc_C0661F: FLdZeroAd var_104
  loc_C06622: CVarAd
  loc_C06626: PopAdLdVar
  loc_C06627: FLdPr Me
  loc_C0662A: MemLdStr global_140
  loc_C0662D: FLdPr Me
  loc_C06630: MemLdI2 global_136
  loc_C06633: CI4UI1
  loc_C06634: FLdPr Me
  loc_C06637: MemLdStr global_132
  loc_C0663A: AryLock
  loc_C0663D: Ary1LdPr
  loc_C0663E: MemLdStr global_0
  loc_C06641: AryLock
  loc_C06644: Ary1LdPr
  loc_C06645: MemLdRfVar from_stack_1.global_24
  loc_C06648: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0664D: AryUnlock
  loc_C06650: AryUnlock
  loc_C06653: FFree1Ad var_AC
  loc_C06656: FFreeVar var_DC = ""
  loc_C0665D: FLdRfVar var_104
  loc_C06660: LitVarStr var_98, "DetaFifu"
  loc_C06665: PopAdLdVar
  loc_C06666: FLdRfVar var_AC
  loc_C06669: FLdPr var_1B0
  loc_C0666C:  = Me.Fields
  loc_C06671: FLdPr var_AC
  loc_C06674: from_stack_2 = Me.Item(from_stack_1)
  loc_C06679: LitI2_Byte 0
  loc_C0667B: LitVar_Missing var_F0
  loc_C0667E: LitI2_Byte 0
  loc_C06680: FLdZeroAd var_104
  loc_C06683: CVarAd
  loc_C06687: PopAdLdVar
  loc_C06688: FLdPr Me
  loc_C0668B: MemLdStr global_140
  loc_C0668E: FLdPr Me
  loc_C06691: MemLdI2 global_136
  loc_C06694: CI4UI1
  loc_C06695: FLdPr Me
  loc_C06698: MemLdStr global_132
  loc_C0669B: AryLock
  loc_C0669E: Ary1LdPr
  loc_C0669F: MemLdStr global_0
  loc_C066A2: AryLock
  loc_C066A5: Ary1LdPr
  loc_C066A6: MemLdRfVar from_stack_1.global_28
  loc_C066A9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C066AE: AryUnlock
  loc_C066B1: AryUnlock
  loc_C066B4: FFree1Ad var_AC
  loc_C066B7: FFreeVar var_DC = ""
  loc_C066BE: FLdRfVar var_104
  loc_C066C1: LitVarStr var_98, "CodiInsu"
  loc_C066C6: PopAdLdVar
  loc_C066C7: FLdRfVar var_AC
  loc_C066CA: FLdPr var_1B0
  loc_C066CD:  = Me.Fields
  loc_C066D2: FLdPr var_AC
  loc_C066D5: from_stack_2 = Me.Item(from_stack_1)
  loc_C066DA: LitI2_Byte 0
  loc_C066DC: LitVar_Missing var_F0
  loc_C066DF: LitI2_Byte 0
  loc_C066E1: FLdZeroAd var_104
  loc_C066E4: CVarAd
  loc_C066E8: PopAdLdVar
  loc_C066E9: FLdPr Me
  loc_C066EC: MemLdStr global_140
  loc_C066EF: FLdPr Me
  loc_C066F2: MemLdI2 global_136
  loc_C066F5: CI4UI1
  loc_C066F6: FLdPr Me
  loc_C066F9: MemLdStr global_132
  loc_C066FC: AryLock
  loc_C066FF: Ary1LdPr
  loc_C06700: MemLdStr global_0
  loc_C06703: AryLock
  loc_C06706: Ary1LdPr
  loc_C06707: MemLdRfVar from_stack_1.global_32
  loc_C0670A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0670F: AryUnlock
  loc_C06712: AryUnlock
  loc_C06715: FFree1Ad var_AC
  loc_C06718: FFreeVar var_DC = ""
  loc_C0671F: FLdRfVar var_104
  loc_C06722: LitVarStr var_98, "DetaInsu"
  loc_C06727: PopAdLdVar
  loc_C06728: FLdRfVar var_AC
  loc_C0672B: FLdPr var_1B0
  loc_C0672E:  = Me.Fields
  loc_C06733: FLdPr var_AC
  loc_C06736: from_stack_2 = Me.Item(from_stack_1)
  loc_C0673B: LitI2_Byte 0
  loc_C0673D: LitVar_Missing var_F0
  loc_C06740: LitI2_Byte 0
  loc_C06742: FLdZeroAd var_104
  loc_C06745: CVarAd
  loc_C06749: PopAdLdVar
  loc_C0674A: FLdPr Me
  loc_C0674D: MemLdStr global_140
  loc_C06750: FLdPr Me
  loc_C06753: MemLdI2 global_136
  loc_C06756: CI4UI1
  loc_C06757: FLdPr Me
  loc_C0675A: MemLdStr global_132
  loc_C0675D: AryLock
  loc_C06760: Ary1LdPr
  loc_C06761: MemLdStr global_0
  loc_C06764: AryLock
  loc_C06767: Ary1LdPr
  loc_C06768: MemLdRfVar from_stack_1.global_36
  loc_C0676B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06770: AryUnlock
  loc_C06773: AryUnlock
  loc_C06776: FFree1Ad var_AC
  loc_C06779: FFreeVar var_DC = ""
  loc_C06780: FLdRfVar var_104
  loc_C06783: LitVarStr var_98, "DetaImpu"
  loc_C06788: PopAdLdVar
  loc_C06789: FLdRfVar var_AC
  loc_C0678C: FLdPr var_1B0
  loc_C0678F:  = Me.Fields
  loc_C06794: FLdPr var_AC
  loc_C06797: from_stack_2 = Me.Item(from_stack_1)
  loc_C0679C: LitI2_Byte 0
  loc_C0679E: LitVar_Missing var_F0
  loc_C067A1: LitI2_Byte 0
  loc_C067A3: FLdZeroAd var_104
  loc_C067A6: CVarAd
  loc_C067AA: PopAdLdVar
  loc_C067AB: FLdPr Me
  loc_C067AE: MemLdStr global_140
  loc_C067B1: FLdPr Me
  loc_C067B4: MemLdI2 global_136
  loc_C067B7: CI4UI1
  loc_C067B8: FLdPr Me
  loc_C067BB: MemLdStr global_132
  loc_C067BE: AryLock
  loc_C067C1: Ary1LdPr
  loc_C067C2: MemLdStr global_0
  loc_C067C5: AryLock
  loc_C067C8: Ary1LdPr
  loc_C067C9: MemLdRfVar from_stack_1.global_40
  loc_C067CC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C067D1: AryUnlock
  loc_C067D4: AryUnlock
  loc_C067D7: FFree1Ad var_AC
  loc_C067DA: FFreeVar var_DC = ""
  loc_C067E1: FLdRfVar var_104
  loc_C067E4: LitVarStr var_98, "CucuPers"
  loc_C067E9: PopAdLdVar
  loc_C067EA: FLdRfVar var_AC
  loc_C067ED: FLdPr var_1B0
  loc_C067F0:  = Me.Fields
  loc_C067F5: FLdPr var_AC
  loc_C067F8: from_stack_2 = Me.Item(from_stack_1)
  loc_C067FD: LitI2_Byte 0
  loc_C067FF: LitVar_Missing var_F0
  loc_C06802: LitI2_Byte 0
  loc_C06804: FLdZeroAd var_104
  loc_C06807: CVarAd
  loc_C0680B: PopAdLdVar
  loc_C0680C: FLdPr Me
  loc_C0680F: MemLdStr global_140
  loc_C06812: FLdPr Me
  loc_C06815: MemLdI2 global_136
  loc_C06818: CI4UI1
  loc_C06819: FLdPr Me
  loc_C0681C: MemLdStr global_132
  loc_C0681F: AryLock
  loc_C06822: Ary1LdPr
  loc_C06823: MemLdStr global_0
  loc_C06826: AryLock
  loc_C06829: Ary1LdPr
  loc_C0682A: MemLdRfVar from_stack_1.global_44
  loc_C0682D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06832: AryUnlock
  loc_C06835: AryUnlock
  loc_C06838: FFree1Ad var_AC
  loc_C0683B: FFreeVar var_DC = ""
  loc_C06842: FLdRfVar var_F0
  loc_C06845: FLdRfVar var_104
  loc_C06848: LitVarStr var_98, "FantProv"
  loc_C0684D: PopAdLdVar
  loc_C0684E: FLdRfVar var_AC
  loc_C06851: FLdPr var_1B0
  loc_C06854:  = Me.Fields
  loc_C06859: FLdPr var_AC
  loc_C0685C: from_stack_2 = Me.Item(from_stack_1)
  loc_C06861: FLdPr var_104
  loc_C06864:  = Me.Value
  loc_C06869: FLdRfVar var_DC
  loc_C0686C: FLdRfVar var_1E0
  loc_C0686F: LitVarStr var_A8, "DetaProv"
  loc_C06874: PopAdLdVar
  loc_C06875: FLdRfVar var_1DC
  loc_C06878: FLdPr var_1B0
  loc_C0687B:  = Me.Fields
  loc_C06880: FLdPr var_1DC
  loc_C06883: from_stack_2 = Me.Item(from_stack_1)
  loc_C06888: FLdPr var_1E0
  loc_C0688B:  = Me.Value
  loc_C06890: FLdRfVar var_1E8
  loc_C06893: LitVarStr var_1C0, "FantProv"
  loc_C06898: PopAdLdVar
  loc_C06899: FLdRfVar var_1E4
  loc_C0689C: FLdPr var_1B0
  loc_C0689F:  = Me.Fields
  loc_C068A4: FLdPr var_1E4
  loc_C068A7: from_stack_2 = Me.Item(from_stack_1)
  loc_C068AC: FLdRfVar var_118
  loc_C068AF: FLdRfVar var_1F0
  loc_C068B2: LitVarStr var_1D0, "DetaProv"
  loc_C068B7: PopAdLdVar
  loc_C068B8: FLdRfVar var_1EC
  loc_C068BB: FLdPr var_1B0
  loc_C068BE:  = Me.Fields
  loc_C068C3: FLdPr var_1EC
  loc_C068C6: from_stack_2 = Me.Item(from_stack_1)
  loc_C068CB: FLdPr var_1F0
  loc_C068CE:  = Me.Value
  loc_C068D3: FLdRfVar var_118
  loc_C068D6: LitVarStr var_200, " - "
  loc_C068DB: ConcatVar var_128
  loc_C068DF: FLdRfVar var_228
  loc_C068E2: FLdRfVar var_218
  loc_C068E5: LitVarStr var_214, "FantProv"
  loc_C068EA: PopAdLdVar
  loc_C068EB: FLdRfVar var_204
  loc_C068EE: FLdPr var_1B0
  loc_C068F1:  = Me.Fields
  loc_C068F6: FLdPr var_204
  loc_C068F9: from_stack_2 = Me.Item(from_stack_1)
  loc_C068FE: FLdPr var_218
  loc_C06901:  = Me.Value
  loc_C06906: FLdRfVar var_228
  loc_C06909: ConcatVar var_238
  loc_C0690D: FLdZeroAd var_1E8
  loc_C06910: CVarAd
  loc_C06914: FLdRfVar var_F0
  loc_C06917: FLdRfVar var_DC
  loc_C0691A: EqVar var_100
  loc_C0691E: FStVar var_248
  loc_C06922: FLdRfVar var_248
  loc_C06925: FLdRfVar var_268
  loc_C06928: ImpAdCallFPR4  = IIf(, , )
  loc_C0692D: LitI2_Byte 0
  loc_C0692F: LitVar_Missing var_288
  loc_C06932: LitI2_Byte 0
  loc_C06934: FLdVar var_268
  loc_C06938: FLdPr Me
  loc_C0693B: MemLdStr global_140
  loc_C0693E: FLdPr Me
  loc_C06941: MemLdI2 global_136
  loc_C06944: CI4UI1
  loc_C06945: FLdPr Me
  loc_C06948: MemLdStr global_132
  loc_C0694B: AryLock
  loc_C0694E: Ary1LdPr
  loc_C0694F: MemLdStr global_0
  loc_C06952: AryLock
  loc_C06955: Ary1LdPr
  loc_C06956: MemLdRfVar from_stack_1.global_48
  loc_C06959: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0695E: AryUnlock
  loc_C06961: AryUnlock
  loc_C06964: FFreeAd var_AC = "": var_1DC = "": var_1E0 = "": var_104 = "": var_1E4 = "": var_1EC = "": var_1F0 = "": var_204 = ""
  loc_C06979: FFreeVar var_F0 = "": var_DC = "": var_118 = "": var_128 = "": var_228 = "": var_248 = "": var_258 = "": var_238 = "": var_268 = ""
  loc_C06990: FLdRfVar var_104
  loc_C06993: LitVarStr var_98, "FechImpu"
  loc_C06998: PopAdLdVar
  loc_C06999: FLdRfVar var_AC
  loc_C0699C: FLdPr var_1B0
  loc_C0699F:  = Me.Fields
  loc_C069A4: FLdPr var_AC
  loc_C069A7: from_stack_2 = Me.Item(from_stack_1)
  loc_C069AC: LitI2_Byte 0
  loc_C069AE: LitVar_Missing var_F0
  loc_C069B1: LitI2_Byte 0
  loc_C069B3: FLdZeroAd var_104
  loc_C069B6: CVarAd
  loc_C069BA: PopAdLdVar
  loc_C069BB: FLdPr Me
  loc_C069BE: MemLdStr global_140
  loc_C069C1: FLdPr Me
  loc_C069C4: MemLdI2 global_136
  loc_C069C7: CI4UI1
  loc_C069C8: FLdPr Me
  loc_C069CB: MemLdStr global_132
  loc_C069CE: AryLock
  loc_C069D1: Ary1LdPr
  loc_C069D2: MemLdStr global_0
  loc_C069D5: AryLock
  loc_C069D8: Ary1LdPr
  loc_C069D9: MemLdRfVar from_stack_1.htmFile
  loc_C069DC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C069E1: AryUnlock
  loc_C069E4: AryUnlock
  loc_C069E7: FFree1Ad var_AC
  loc_C069EA: FFreeVar var_DC = ""
  loc_C069F1: FLdRfVar var_104
  loc_C069F4: LitVarStr var_98, "ExpeImpu"
  loc_C069F9: PopAdLdVar
  loc_C069FA: FLdRfVar var_AC
  loc_C069FD: FLdPr var_1B0
  loc_C06A00:  = Me.Fields
  loc_C06A05: FLdPr var_AC
  loc_C06A08: from_stack_2 = Me.Item(from_stack_1)
  loc_C06A0D: LitI2_Byte 0
  loc_C06A0F: LitVar_Missing var_F0
  loc_C06A12: LitI2_Byte 0
  loc_C06A14: FLdZeroAd var_104
  loc_C06A17: CVarAd
  loc_C06A1B: PopAdLdVar
  loc_C06A1C: FLdPr Me
  loc_C06A1F: MemLdStr global_140
  loc_C06A22: FLdPr Me
  loc_C06A25: MemLdI2 global_136
  loc_C06A28: CI4UI1
  loc_C06A29: FLdPr Me
  loc_C06A2C: MemLdStr global_132
  loc_C06A2F: AryLock
  loc_C06A32: Ary1LdPr
  loc_C06A33: MemLdStr global_0
  loc_C06A36: AryLock
  loc_C06A39: Ary1LdPr
  loc_C06A3A: MemLdRfVar from_stack_1.global_60
  loc_C06A3D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06A42: AryUnlock
  loc_C06A45: AryUnlock
  loc_C06A48: FFree1Ad var_AC
  loc_C06A4B: FFreeVar var_DC = ""
  loc_C06A52: FLdRfVar var_104
  loc_C06A55: LitVarStr var_98, "AltaUsua"
  loc_C06A5A: PopAdLdVar
  loc_C06A5B: FLdRfVar var_AC
  loc_C06A5E: FLdPr var_1B0
  loc_C06A61:  = Me.Fields
  loc_C06A66: FLdPr var_AC
  loc_C06A69: from_stack_2 = Me.Item(from_stack_1)
  loc_C06A6E: LitI2_Byte 0
  loc_C06A70: LitVar_Missing var_F0
  loc_C06A73: LitI2_Byte 0
  loc_C06A75: FLdZeroAd var_104
  loc_C06A78: CVarAd
  loc_C06A7C: PopAdLdVar
  loc_C06A7D: FLdPr Me
  loc_C06A80: MemLdStr global_140
  loc_C06A83: FLdPr Me
  loc_C06A86: MemLdI2 global_136
  loc_C06A89: CI4UI1
  loc_C06A8A: FLdPr Me
  loc_C06A8D: MemLdStr global_132
  loc_C06A90: AryLock
  loc_C06A93: Ary1LdPr
  loc_C06A94: MemLdStr global_0
  loc_C06A97: AryLock
  loc_C06A9A: Ary1LdPr
  loc_C06A9B: MemLdRfVar from_stack_1.global_64
  loc_C06A9E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06AA3: AryUnlock
  loc_C06AA6: AryUnlock
  loc_C06AA9: FFree1Ad var_AC
  loc_C06AAC: FFreeVar var_DC = ""
  loc_C06AB3: FLdPr Me
  loc_C06AB6: MemLdI2 global_136
  loc_C06AB9: FStI2 var_28A
  loc_C06ABC: FLdI2 var_28A
  loc_C06ABF: LitI2_Byte 1
  loc_C06AC1: EqI2
  loc_C06AC2: BranchF loc_C06C00
  loc_C06AC5: FLdRfVar var_104
  loc_C06AC8: LitVarStr var_98, "PrevImpu"
  loc_C06ACD: PopAdLdVar
  loc_C06ACE: FLdRfVar var_AC
  loc_C06AD1: FLdPr var_1B0
  loc_C06AD4:  = Me.Fields
  loc_C06AD9: FLdPr var_AC
  loc_C06ADC: from_stack_2 = Me.Item(from_stack_1)
  loc_C06AE1: LitI2_Byte 0
  loc_C06AE3: FLdPr Me
  loc_C06AE6: MemLdI2 global_136
  loc_C06AE9: CI4UI1
  loc_C06AEA: FLdPr Me
  loc_C06AED: MemLdStr global_132
  loc_C06AF0: AryLock
  loc_C06AF3: Ary1LdPr
  loc_C06AF4: MemLdRfVar from_stack_1.global_4
  loc_C06AF7: CVarRef
  loc_C06AFC: LitI2_Byte &HFF
  loc_C06AFE: FLdZeroAd var_104
  loc_C06B01: CVarAd
  loc_C06B05: PopAdLdVar
  loc_C06B06: FLdPr Me
  loc_C06B09: MemLdStr global_140
  loc_C06B0C: FLdPr Me
  loc_C06B0F: MemLdI2 global_136
  loc_C06B12: CI4UI1
  loc_C06B13: FLdPr Me
  loc_C06B16: MemLdStr global_132
  loc_C06B19: AryLock
  loc_C06B1C: Ary1LdPr
  loc_C06B1D: MemLdStr global_0
  loc_C06B20: AryLock
  loc_C06B23: Ary1LdPr
  loc_C06B24: MemLdRfVar from_stack_1.ePart
  loc_C06B27: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06B2C: AryUnlock
  loc_C06B2F: AryUnlock
  loc_C06B32: AryUnlock
  loc_C06B35: FFree1Ad var_AC
  loc_C06B38: FFree1Var var_DC = ""
  loc_C06B3B: FLdRfVar var_104
  loc_C06B3E: LitVarStr var_98, "CodiNope"
  loc_C06B43: PopAdLdVar
  loc_C06B44: FLdRfVar var_AC
  loc_C06B47: FLdPr var_1B0
  loc_C06B4A:  = Me.Fields
  loc_C06B4F: FLdPr var_AC
  loc_C06B52: from_stack_2 = Me.Item(from_stack_1)
  loc_C06B57: LitI2_Byte 0
  loc_C06B59: LitVar_Missing var_F0
  loc_C06B5C: LitI2_Byte 0
  loc_C06B5E: FLdZeroAd var_104
  loc_C06B61: CVarAd
  loc_C06B65: PopAdLdVar
  loc_C06B66: FLdPr Me
  loc_C06B69: MemLdStr global_140
  loc_C06B6C: FLdPr Me
  loc_C06B6F: MemLdI2 global_136
  loc_C06B72: CI4UI1
  loc_C06B73: FLdPr Me
  loc_C06B76: MemLdStr global_132
  loc_C06B79: AryLock
  loc_C06B7C: Ary1LdPr
  loc_C06B7D: MemLdStr global_0
  loc_C06B80: AryLock
  loc_C06B83: Ary1LdPr
  loc_C06B84: MemLdRfVar from_stack_1.global_68
  loc_C06B87: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06B8C: AryUnlock
  loc_C06B8F: AryUnlock
  loc_C06B92: FFree1Ad var_AC
  loc_C06B95: FFreeVar var_DC = ""
  loc_C06B9C: FLdRfVar var_104
  loc_C06B9F: LitVarStr var_98, "Item"
  loc_C06BA4: PopAdLdVar
  loc_C06BA5: FLdRfVar var_AC
  loc_C06BA8: FLdPr var_1B0
  loc_C06BAB:  = Me.Fields
  loc_C06BB0: FLdPr var_AC
  loc_C06BB3: from_stack_2 = Me.Item(from_stack_1)
  loc_C06BB8: LitI2_Byte 0
  loc_C06BBA: LitVar_Missing var_F0
  loc_C06BBD: LitI2_Byte 0
  loc_C06BBF: FLdZeroAd var_104
  loc_C06BC2: CVarAd
  loc_C06BC6: PopAdLdVar
  loc_C06BC7: FLdPr Me
  loc_C06BCA: MemLdStr global_140
  loc_C06BCD: FLdPr Me
  loc_C06BD0: MemLdI2 global_136
  loc_C06BD3: CI4UI1
  loc_C06BD4: FLdPr Me
  loc_C06BD7: MemLdStr global_132
  loc_C06BDA: AryLock
  loc_C06BDD: Ary1LdPr
  loc_C06BDE: MemLdStr global_0
  loc_C06BE1: AryLock
  loc_C06BE4: Ary1LdPr
  loc_C06BE5: MemLdRfVar from_stack_1.ExorImpu
  loc_C06BE8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06BED: AryUnlock
  loc_C06BF0: AryUnlock
  loc_C06BF3: FFree1Ad var_AC
  loc_C06BF6: FFreeVar var_DC = ""
  loc_C06BFD: Branch loc_C07326
  loc_C06C00: FLdI2 var_28A
  loc_C06C03: LitI2_Byte 2
  loc_C06C05: EqI2
  loc_C06C06: BranchF loc_C06DA5
  loc_C06C09: FLdRfVar var_104
  loc_C06C0C: LitVarStr var_98, "DefiImpu"
  loc_C06C11: PopAdLdVar
  loc_C06C12: FLdRfVar var_AC
  loc_C06C15: FLdPr var_1B0
  loc_C06C18:  = Me.Fields
  loc_C06C1D: FLdPr var_AC
  loc_C06C20: from_stack_2 = Me.Item(from_stack_1)
  loc_C06C25: LitI2_Byte 0
  loc_C06C27: FLdPr Me
  loc_C06C2A: MemLdI2 global_136
  loc_C06C2D: CI4UI1
  loc_C06C2E: FLdPr Me
  loc_C06C31: MemLdStr global_132
  loc_C06C34: AryLock
  loc_C06C37: Ary1LdPr
  loc_C06C38: MemLdRfVar from_stack_1.global_4
  loc_C06C3B: CVarRef
  loc_C06C40: LitI2_Byte &HFF
  loc_C06C42: FLdZeroAd var_104
  loc_C06C45: CVarAd
  loc_C06C49: PopAdLdVar
  loc_C06C4A: FLdPr Me
  loc_C06C4D: MemLdStr global_140
  loc_C06C50: FLdPr Me
  loc_C06C53: MemLdI2 global_136
  loc_C06C56: CI4UI1
  loc_C06C57: FLdPr Me
  loc_C06C5A: MemLdStr global_132
  loc_C06C5D: AryLock
  loc_C06C60: Ary1LdPr
  loc_C06C61: MemLdStr global_0
  loc_C06C64: AryLock
  loc_C06C67: Ary1LdPr
  loc_C06C68: MemLdRfVar from_stack_1.ePart
  loc_C06C6B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06C70: AryUnlock
  loc_C06C73: AryUnlock
  loc_C06C76: AryUnlock
  loc_C06C79: FFree1Ad var_AC
  loc_C06C7C: FFree1Var var_DC = ""
  loc_C06C7F: FLdRfVar var_104
  loc_C06C82: LitVarStr var_98, "CodiOrco"
  loc_C06C87: PopAdLdVar
  loc_C06C88: FLdRfVar var_AC
  loc_C06C8B: FLdPr var_1B0
  loc_C06C8E:  = Me.Fields
  loc_C06C93: FLdPr var_AC
  loc_C06C96: from_stack_2 = Me.Item(from_stack_1)
  loc_C06C9B: LitI2_Byte 0
  loc_C06C9D: LitVar_Missing var_F0
  loc_C06CA0: LitI2_Byte 0
  loc_C06CA2: FLdZeroAd var_104
  loc_C06CA5: CVarAd
  loc_C06CA9: PopAdLdVar
  loc_C06CAA: FLdPr Me
  loc_C06CAD: MemLdStr global_140
  loc_C06CB0: FLdPr Me
  loc_C06CB3: MemLdI2 global_136
  loc_C06CB6: CI4UI1
  loc_C06CB7: FLdPr Me
  loc_C06CBA: MemLdStr global_132
  loc_C06CBD: AryLock
  loc_C06CC0: Ary1LdPr
  loc_C06CC1: MemLdStr global_0
  loc_C06CC4: AryLock
  loc_C06CC7: Ary1LdPr
  loc_C06CC8: MemLdRfVar from_stack_1.bLogos
  loc_C06CCB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06CD0: AryUnlock
  loc_C06CD3: AryUnlock
  loc_C06CD6: FFree1Ad var_AC
  loc_C06CD9: FFreeVar var_DC = ""
  loc_C06CE0: FLdRfVar var_104
  loc_C06CE3: LitVarStr var_98, "Item"
  loc_C06CE8: PopAdLdVar
  loc_C06CE9: FLdRfVar var_AC
  loc_C06CEC: FLdPr var_1B0
  loc_C06CEF:  = Me.Fields
  loc_C06CF4: FLdPr var_AC
  loc_C06CF7: from_stack_2 = Me.Item(from_stack_1)
  loc_C06CFC: LitI2_Byte 0
  loc_C06CFE: LitVar_Missing var_F0
  loc_C06D01: LitI2_Byte 0
  loc_C06D03: FLdZeroAd var_104
  loc_C06D06: CVarAd
  loc_C06D0A: PopAdLdVar
  loc_C06D0B: FLdPr Me
  loc_C06D0E: MemLdStr global_140
  loc_C06D11: FLdPr Me
  loc_C06D14: MemLdI2 global_136
  loc_C06D17: CI4UI1
  loc_C06D18: FLdPr Me
  loc_C06D1B: MemLdStr global_132
  loc_C06D1E: AryLock
  loc_C06D21: Ary1LdPr
  loc_C06D22: MemLdStr global_0
  loc_C06D25: AryLock
  loc_C06D28: Ary1LdPr
  loc_C06D29: MemLdRfVar from_stack_1.global_80
  loc_C06D2C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06D31: AryUnlock
  loc_C06D34: AryUnlock
  loc_C06D37: FFree1Ad var_AC
  loc_C06D3A: FFreeVar var_DC = ""
  loc_C06D41: FLdRfVar var_104
  loc_C06D44: LitVarStr var_98, "Altern"
  loc_C06D49: PopAdLdVar
  loc_C06D4A: FLdRfVar var_AC
  loc_C06D4D: FLdPr var_1B0
  loc_C06D50:  = Me.Fields
  loc_C06D55: FLdPr var_AC
  loc_C06D58: from_stack_2 = Me.Item(from_stack_1)
  loc_C06D5D: LitI2_Byte 0
  loc_C06D5F: LitVar_Missing var_F0
  loc_C06D62: LitI2_Byte 0
  loc_C06D64: FLdZeroAd var_104
  loc_C06D67: CVarAd
  loc_C06D6B: PopAdLdVar
  loc_C06D6C: FLdPr Me
  loc_C06D6F: MemLdStr global_140
  loc_C06D72: FLdPr Me
  loc_C06D75: MemLdI2 global_136
  loc_C06D78: CI4UI1
  loc_C06D79: FLdPr Me
  loc_C06D7C: MemLdStr global_132
  loc_C06D7F: AryLock
  loc_C06D82: Ary1LdPr
  loc_C06D83: MemLdStr global_0
  loc_C06D86: AryLock
  loc_C06D89: Ary1LdPr
  loc_C06D8A: MemLdRfVar from_stack_1.global_84
  loc_C06D8D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06D92: AryUnlock
  loc_C06D95: AryUnlock
  loc_C06D98: FFree1Ad var_AC
  loc_C06D9B: FFreeVar var_DC = ""
  loc_C06DA2: Branch loc_C07326
  loc_C06DA5: FLdI2 var_28A
  loc_C06DA8: LitI2_Byte 3
  loc_C06DAA: EqI2
  loc_C06DAB: BranchF loc_C0700C
  loc_C06DAE: FLdRfVar var_104
  loc_C06DB1: LitVarStr var_98, "DeveImpu"
  loc_C06DB6: PopAdLdVar
  loc_C06DB7: FLdRfVar var_AC
  loc_C06DBA: FLdPr var_1B0
  loc_C06DBD:  = Me.Fields
  loc_C06DC2: FLdPr var_AC
  loc_C06DC5: from_stack_2 = Me.Item(from_stack_1)
  loc_C06DCA: LitI2_Byte 0
  loc_C06DCC: FLdPr Me
  loc_C06DCF: MemLdI2 global_136
  loc_C06DD2: CI4UI1
  loc_C06DD3: FLdPr Me
  loc_C06DD6: MemLdStr global_132
  loc_C06DD9: AryLock
  loc_C06DDC: Ary1LdPr
  loc_C06DDD: MemLdRfVar from_stack_1.global_4
  loc_C06DE0: CVarRef
  loc_C06DE5: LitI2_Byte &HFF
  loc_C06DE7: FLdZeroAd var_104
  loc_C06DEA: CVarAd
  loc_C06DEE: PopAdLdVar
  loc_C06DEF: FLdPr Me
  loc_C06DF2: MemLdStr global_140
  loc_C06DF5: FLdPr Me
  loc_C06DF8: MemLdI2 global_136
  loc_C06DFB: CI4UI1
  loc_C06DFC: FLdPr Me
  loc_C06DFF: MemLdStr global_132
  loc_C06E02: AryLock
  loc_C06E05: Ary1LdPr
  loc_C06E06: MemLdStr global_0
  loc_C06E09: AryLock
  loc_C06E0C: Ary1LdPr
  loc_C06E0D: MemLdRfVar from_stack_1.ePart
  loc_C06E10: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06E15: AryUnlock
  loc_C06E18: AryUnlock
  loc_C06E1B: AryUnlock
  loc_C06E1E: FFree1Ad var_AC
  loc_C06E21: FFree1Var var_DC = ""
  loc_C06E24: FLdRfVar var_104
  loc_C06E27: LitVarStr var_98, "CodiOrco"
  loc_C06E2C: PopAdLdVar
  loc_C06E2D: FLdRfVar var_AC
  loc_C06E30: FLdPr var_1B0
  loc_C06E33:  = Me.Fields
  loc_C06E38: FLdPr var_AC
  loc_C06E3B: from_stack_2 = Me.Item(from_stack_1)
  loc_C06E40: LitI2_Byte 0
  loc_C06E42: LitVar_Missing var_F0
  loc_C06E45: LitI2_Byte 0
  loc_C06E47: FLdZeroAd var_104
  loc_C06E4A: CVarAd
  loc_C06E4E: PopAdLdVar
  loc_C06E4F: FLdPr Me
  loc_C06E52: MemLdStr global_140
  loc_C06E55: FLdPr Me
  loc_C06E58: MemLdI2 global_136
  loc_C06E5B: CI4UI1
  loc_C06E5C: FLdPr Me
  loc_C06E5F: MemLdStr global_132
  loc_C06E62: AryLock
  loc_C06E65: Ary1LdPr
  loc_C06E66: MemLdStr global_0
  loc_C06E69: AryLock
  loc_C06E6C: Ary1LdPr
  loc_C06E6D: MemLdRfVar from_stack_1.bLogos
  loc_C06E70: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06E75: AryUnlock
  loc_C06E78: AryUnlock
  loc_C06E7B: FFree1Ad var_AC
  loc_C06E7E: FFreeVar var_DC = ""
  loc_C06E85: FLdRfVar var_104
  loc_C06E88: LitVarStr var_98, "Item"
  loc_C06E8D: PopAdLdVar
  loc_C06E8E: FLdRfVar var_AC
  loc_C06E91: FLdPr var_1B0
  loc_C06E94:  = Me.Fields
  loc_C06E99: FLdPr var_AC
  loc_C06E9C: from_stack_2 = Me.Item(from_stack_1)
  loc_C06EA1: LitI2_Byte 0
  loc_C06EA3: LitVar_Missing var_F0
  loc_C06EA6: LitI2_Byte 0
  loc_C06EA8: FLdZeroAd var_104
  loc_C06EAB: CVarAd
  loc_C06EAF: PopAdLdVar
  loc_C06EB0: FLdPr Me
  loc_C06EB3: MemLdStr global_140
  loc_C06EB6: FLdPr Me
  loc_C06EB9: MemLdI2 global_136
  loc_C06EBC: CI4UI1
  loc_C06EBD: FLdPr Me
  loc_C06EC0: MemLdStr global_132
  loc_C06EC3: AryLock
  loc_C06EC6: Ary1LdPr
  loc_C06EC7: MemLdStr global_0
  loc_C06ECA: AryLock
  loc_C06ECD: Ary1LdPr
  loc_C06ECE: MemLdRfVar from_stack_1.global_80
  loc_C06ED1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06ED6: AryUnlock
  loc_C06ED9: AryUnlock
  loc_C06EDC: FFree1Ad var_AC
  loc_C06EDF: FFreeVar var_DC = ""
  loc_C06EE6: FLdRfVar var_104
  loc_C06EE9: LitVarStr var_98, "Altern"
  loc_C06EEE: PopAdLdVar
  loc_C06EEF: FLdRfVar var_AC
  loc_C06EF2: FLdPr var_1B0
  loc_C06EF5:  = Me.Fields
  loc_C06EFA: FLdPr var_AC
  loc_C06EFD: from_stack_2 = Me.Item(from_stack_1)
  loc_C06F02: LitI2_Byte 0
  loc_C06F04: LitVar_Missing var_F0
  loc_C06F07: LitI2_Byte 0
  loc_C06F09: FLdZeroAd var_104
  loc_C06F0C: CVarAd
  loc_C06F10: PopAdLdVar
  loc_C06F11: FLdPr Me
  loc_C06F14: MemLdStr global_140
  loc_C06F17: FLdPr Me
  loc_C06F1A: MemLdI2 global_136
  loc_C06F1D: CI4UI1
  loc_C06F1E: FLdPr Me
  loc_C06F21: MemLdStr global_132
  loc_C06F24: AryLock
  loc_C06F27: Ary1LdPr
  loc_C06F28: MemLdStr global_0
  loc_C06F2B: AryLock
  loc_C06F2E: Ary1LdPr
  loc_C06F2F: MemLdRfVar from_stack_1.global_84
  loc_C06F32: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06F37: AryUnlock
  loc_C06F3A: AryUnlock
  loc_C06F3D: FFree1Ad var_AC
  loc_C06F40: FFreeVar var_DC = ""
  loc_C06F47: FLdRfVar var_104
  loc_C06F4A: LitVarStr var_98, "CodiRece"
  loc_C06F4F: PopAdLdVar
  loc_C06F50: FLdRfVar var_AC
  loc_C06F53: FLdPr var_1B0
  loc_C06F56:  = Me.Fields
  loc_C06F5B: FLdPr var_AC
  loc_C06F5E: from_stack_2 = Me.Item(from_stack_1)
  loc_C06F63: LitI2_Byte 0
  loc_C06F65: LitVar_Missing var_F0
  loc_C06F68: LitI2_Byte 0
  loc_C06F6A: FLdZeroAd var_104
  loc_C06F6D: CVarAd
  loc_C06F71: PopAdLdVar
  loc_C06F72: FLdPr Me
  loc_C06F75: MemLdStr global_140
  loc_C06F78: FLdPr Me
  loc_C06F7B: MemLdI2 global_136
  loc_C06F7E: CI4UI1
  loc_C06F7F: FLdPr Me
  loc_C06F82: MemLdStr global_132
  loc_C06F85: AryLock
  loc_C06F88: Ary1LdPr
  loc_C06F89: MemLdStr global_0
  loc_C06F8C: AryLock
  loc_C06F8F: Ary1LdPr
  loc_C06F90: MemLdRfVar from_stack_1.global_88
  loc_C06F93: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06F98: AryUnlock
  loc_C06F9B: AryUnlock
  loc_C06F9E: FFree1Ad var_AC
  loc_C06FA1: FFreeVar var_DC = ""
  loc_C06FA8: FLdRfVar var_104
  loc_C06FAB: LitVarStr var_98, "NumeFact"
  loc_C06FB0: PopAdLdVar
  loc_C06FB1: FLdRfVar var_AC
  loc_C06FB4: FLdPr var_1B0
  loc_C06FB7:  = Me.Fields
  loc_C06FBC: FLdPr var_AC
  loc_C06FBF: from_stack_2 = Me.Item(from_stack_1)
  loc_C06FC4: LitI2_Byte 0
  loc_C06FC6: LitVar_Missing var_F0
  loc_C06FC9: LitI2_Byte 0
  loc_C06FCB: FLdZeroAd var_104
  loc_C06FCE: CVarAd
  loc_C06FD2: PopAdLdVar
  loc_C06FD3: FLdPr Me
  loc_C06FD6: MemLdStr global_140
  loc_C06FD9: FLdPr Me
  loc_C06FDC: MemLdI2 global_136
  loc_C06FDF: CI4UI1
  loc_C06FE0: FLdPr Me
  loc_C06FE3: MemLdStr global_132
  loc_C06FE6: AryLock
  loc_C06FE9: Ary1LdPr
  loc_C06FEA: MemLdStr global_0
  loc_C06FED: AryLock
  loc_C06FF0: Ary1LdPr
  loc_C06FF1: MemLdRfVar from_stack_1.global_92
  loc_C06FF4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C06FF9: AryUnlock
  loc_C06FFC: AryUnlock
  loc_C06FFF: FFree1Ad var_AC
  loc_C07002: FFreeVar var_DC = ""
  loc_C07009: Branch loc_C07326
  loc_C0700C: FLdI2 var_28A
  loc_C0700F: LitI2_Byte 4
  loc_C07011: EqI2
  loc_C07012: BranchF loc_C071E5
  loc_C07015: FLdRfVar var_104
  loc_C07018: LitVarStr var_98, "MapaImpu"
  loc_C0701D: PopAdLdVar
  loc_C0701E: FLdRfVar var_AC
  loc_C07021: FLdPr var_1B0
  loc_C07024:  = Me.Fields
  loc_C07029: FLdPr var_AC
  loc_C0702C: from_stack_2 = Me.Item(from_stack_1)
  loc_C07031: LitI2_Byte 0
  loc_C07033: FLdPr Me
  loc_C07036: MemLdI2 global_136
  loc_C07039: CI4UI1
  loc_C0703A: FLdPr Me
  loc_C0703D: MemLdStr global_132
  loc_C07040: AryLock
  loc_C07043: Ary1LdPr
  loc_C07044: MemLdRfVar from_stack_1.global_4
  loc_C07047: CVarRef
  loc_C0704C: LitI2_Byte &HFF
  loc_C0704E: FLdZeroAd var_104
  loc_C07051: CVarAd
  loc_C07055: PopAdLdVar
  loc_C07056: FLdPr Me
  loc_C07059: MemLdStr global_140
  loc_C0705C: FLdPr Me
  loc_C0705F: MemLdI2 global_136
  loc_C07062: CI4UI1
  loc_C07063: FLdPr Me
  loc_C07066: MemLdStr global_132
  loc_C07069: AryLock
  loc_C0706C: Ary1LdPr
  loc_C0706D: MemLdStr global_0
  loc_C07070: AryLock
  loc_C07073: Ary1LdPr
  loc_C07074: MemLdRfVar from_stack_1.ePart
  loc_C07077: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0707C: AryUnlock
  loc_C0707F: AryUnlock
  loc_C07082: AryUnlock
  loc_C07085: FFree1Ad var_AC
  loc_C07088: FFree1Var var_DC = ""
  loc_C0708B: FLdRfVar var_DC
  loc_C0708E: FLdRfVar var_104
  loc_C07091: LitVarStr var_98, "NumeOrpa"
  loc_C07096: PopAdLdVar
  loc_C07097: FLdRfVar var_AC
  loc_C0709A: FLdPr var_1B0
  loc_C0709D:  = Me.Fields
  loc_C070A2: FLdPr var_AC
  loc_C070A5: from_stack_2 = Me.Item(from_stack_1)
  loc_C070AA: FLdPr var_104
  loc_C070AD:  = Me.Value
  loc_C070B2: FLdRfVar var_1E0
  loc_C070B5: LitVarStr var_1C0, "FereOrpa"
  loc_C070BA: PopAdLdVar
  loc_C070BB: FLdRfVar var_1DC
  loc_C070BE: FLdPr var_1B0
  loc_C070C1:  = Me.Fields
  loc_C070C6: FLdPr var_1DC
  loc_C070C9: from_stack_2 = Me.Item(from_stack_1)
  loc_C070CE: FLdZeroAd var_1E0
  loc_C070D1: CVarAd
  loc_C070D5: ImpAdCallI2 IsDate()
  loc_C070DA: FStI2 var_CA
  loc_C070DD: FLdRfVar var_1E8
  loc_C070E0: LitVarStr var_1D0, "FereOrpa"
  loc_C070E5: PopAdLdVar
  loc_C070E6: FLdRfVar var_1E4
  loc_C070E9: FLdPr var_1B0
  loc_C070EC:  = Me.Fields
  loc_C070F1: FLdPr var_1E4
  loc_C070F4: from_stack_2 = Me.Item(from_stack_1)
  loc_C070F9: LitVarStr var_214, vbNullString
  loc_C070FE: FStVarCopyObj var_128
  loc_C07101: FLdRfVar var_128
  loc_C07104: FLdZeroAd var_1E8
  loc_C07107: CVarAd
  loc_C0710B: FLdI2 var_CA
  loc_C0710E: CVarBoolI2 var_200
  loc_C07112: FLdRfVar var_228
  loc_C07115: ImpAdCallFPR4  = IIf(, , )
  loc_C0711A: LitI2_Byte 0
  loc_C0711C: LitVar_Missing var_248
  loc_C0711F: LitI2_Byte 0
  loc_C07121: FLdRfVar var_DC
  loc_C07124: LitVarStr var_A8, "<br>"
  loc_C07129: ConcatVar var_F0
  loc_C0712D: FLdRfVar var_228
  loc_C07130: ConcatVar var_238
  loc_C07134: PopAdLdVar
  loc_C07135: FLdPr Me
  loc_C07138: MemLdStr global_140
  loc_C0713B: FLdPr Me
  loc_C0713E: MemLdI2 global_136
  loc_C07141: CI4UI1
  loc_C07142: FLdPr Me
  loc_C07145: MemLdStr global_132
  loc_C07148: AryLock
  loc_C0714B: Ary1LdPr
  loc_C0714C: MemLdStr global_0
  loc_C0714F: AryLock
  loc_C07152: Ary1LdPr
  loc_C07153: MemLdRfVar from_stack_1.global_96
  loc_C07156: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0715B: AryUnlock
  loc_C0715E: AryUnlock
  loc_C07161: FFreeAd var_AC = "": var_104 = "": var_1DC = ""
  loc_C0716C: FFreeVar var_DC = "": var_100 = "": var_200 = "": var_118 = "": var_128 = "": var_F0 = "": var_228 = "": var_238 = ""
  loc_C07181: FLdRfVar var_104
  loc_C07184: LitVarStr var_98, "NumeFact"
  loc_C07189: PopAdLdVar
  loc_C0718A: FLdRfVar var_AC
  loc_C0718D: FLdPr var_1B0
  loc_C07190:  = Me.Fields
  loc_C07195: FLdPr var_AC
  loc_C07198: from_stack_2 = Me.Item(from_stack_1)
  loc_C0719D: LitI2_Byte 0
  loc_C0719F: LitVar_Missing var_F0
  loc_C071A2: LitI2_Byte 0
  loc_C071A4: FLdZeroAd var_104
  loc_C071A7: CVarAd
  loc_C071AB: PopAdLdVar
  loc_C071AC: FLdPr Me
  loc_C071AF: MemLdStr global_140
  loc_C071B2: FLdPr Me
  loc_C071B5: MemLdI2 global_136
  loc_C071B8: CI4UI1
  loc_C071B9: FLdPr Me
  loc_C071BC: MemLdStr global_132
  loc_C071BF: AryLock
  loc_C071C2: Ary1LdPr
  loc_C071C3: MemLdStr global_0
  loc_C071C6: AryLock
  loc_C071C9: Ary1LdPr
  loc_C071CA: MemLdRfVar from_stack_1.global_92
  loc_C071CD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C071D2: AryUnlock
  loc_C071D5: AryUnlock
  loc_C071D8: FFree1Ad var_AC
  loc_C071DB: FFreeVar var_DC = ""
  loc_C071E2: Branch loc_C07326
  loc_C071E5: FLdI2 var_28A
  loc_C071E8: LitI2_Byte 5
  loc_C071EA: EqI2
  loc_C071EB: BranchF loc_C07326
  loc_C071EE: FLdRfVar var_104
  loc_C071F1: LitVarStr var_98, "PagaImpu"
  loc_C071F6: PopAdLdVar
  loc_C071F7: FLdRfVar var_AC
  loc_C071FA: FLdPr var_1B0
  loc_C071FD:  = Me.Fields
  loc_C07202: FLdPr var_AC
  loc_C07205: from_stack_2 = Me.Item(from_stack_1)
  loc_C0720A: LitI2_Byte 0
  loc_C0720C: FLdPr Me
  loc_C0720F: MemLdI2 global_136
  loc_C07212: CI4UI1
  loc_C07213: FLdPr Me
  loc_C07216: MemLdStr global_132
  loc_C07219: AryLock
  loc_C0721C: Ary1LdPr
  loc_C0721D: MemLdRfVar from_stack_1.global_4
  loc_C07220: CVarRef
  loc_C07225: LitI2_Byte &HFF
  loc_C07227: FLdZeroAd var_104
  loc_C0722A: CVarAd
  loc_C0722E: PopAdLdVar
  loc_C0722F: FLdPr Me
  loc_C07232: MemLdStr global_140
  loc_C07235: FLdPr Me
  loc_C07238: MemLdI2 global_136
  loc_C0723B: CI4UI1
  loc_C0723C: FLdPr Me
  loc_C0723F: MemLdStr global_132
  loc_C07242: AryLock
  loc_C07245: Ary1LdPr
  loc_C07246: MemLdStr global_0
  loc_C07249: AryLock
  loc_C0724C: Ary1LdPr
  loc_C0724D: MemLdRfVar from_stack_1.ePart
  loc_C07250: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07255: AryUnlock
  loc_C07258: AryUnlock
  loc_C0725B: AryUnlock
  loc_C0725E: FFree1Ad var_AC
  loc_C07261: FFree1Var var_DC = ""
  loc_C07264: FLdRfVar var_104
  loc_C07267: LitVarStr var_98, "NumeOrpa"
  loc_C0726C: PopAdLdVar
  loc_C0726D: FLdRfVar var_AC
  loc_C07270: FLdPr var_1B0
  loc_C07273:  = Me.Fields
  loc_C07278: FLdPr var_AC
  loc_C0727B: from_stack_2 = Me.Item(from_stack_1)
  loc_C07280: LitI2_Byte 0
  loc_C07282: LitVar_Missing var_F0
  loc_C07285: LitI2_Byte 0
  loc_C07287: FLdZeroAd var_104
  loc_C0728A: CVarAd
  loc_C0728E: PopAdLdVar
  loc_C0728F: FLdPr Me
  loc_C07292: MemLdStr global_140
  loc_C07295: FLdPr Me
  loc_C07298: MemLdI2 global_136
  loc_C0729B: CI4UI1
  loc_C0729C: FLdPr Me
  loc_C0729F: MemLdStr global_132
  loc_C072A2: AryLock
  loc_C072A5: Ary1LdPr
  loc_C072A6: MemLdStr global_0
  loc_C072A9: AryLock
  loc_C072AC: Ary1LdPr
  loc_C072AD: MemLdRfVar from_stack_1.global_96
  loc_C072B0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C072B5: AryUnlock
  loc_C072B8: AryUnlock
  loc_C072BB: FFree1Ad var_AC
  loc_C072BE: FFreeVar var_DC = ""
  loc_C072C5: FLdRfVar var_104
  loc_C072C8: LitVarStr var_98, "ArchOrpa"
  loc_C072CD: PopAdLdVar
  loc_C072CE: FLdRfVar var_AC
  loc_C072D1: FLdPr var_1B0
  loc_C072D4:  = Me.Fields
  loc_C072D9: FLdPr var_AC
  loc_C072DC: from_stack_2 = Me.Item(from_stack_1)
  loc_C072E1: LitI2_Byte 0
  loc_C072E3: LitVar_Missing var_F0
  loc_C072E6: LitI2_Byte 0
  loc_C072E8: FLdZeroAd var_104
  loc_C072EB: CVarAd
  loc_C072EF: PopAdLdVar
  loc_C072F0: FLdPr Me
  loc_C072F3: MemLdStr global_140
  loc_C072F6: FLdPr Me
  loc_C072F9: MemLdI2 global_136
  loc_C072FC: CI4UI1
  loc_C072FD: FLdPr Me
  loc_C07300: MemLdStr global_132
  loc_C07303: AryLock
  loc_C07306: Ary1LdPr
  loc_C07307: MemLdStr global_0
  loc_C0730A: AryLock
  loc_C0730D: Ary1LdPr
  loc_C0730E: MemLdRfVar from_stack_1.global_100
  loc_C07311: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07316: AryUnlock
  loc_C07319: AryUnlock
  loc_C0731C: FFree1Ad var_AC
  loc_C0731F: FFreeVar var_DC = ""
  loc_C07326: Branch loc_C07C32
  loc_C07329: LitI2_Byte 0
  loc_C0732B: LitVar_Missing var_DC
  loc_C0732E: LitI2_Byte 0
  loc_C07330: LitVarStr var_98, "&nbsp;"
  loc_C07335: PopAdLdVar
  loc_C07336: FLdPr Me
  loc_C07339: MemLdStr global_140
  loc_C0733C: FLdPr Me
  loc_C0733F: MemLdI2 global_136
  loc_C07342: CI4UI1
  loc_C07343: FLdPr Me
  loc_C07346: MemLdStr global_132
  loc_C07349: AryLock
  loc_C0734C: Ary1LdPr
  loc_C0734D: MemLdStr global_0
  loc_C07350: AryLock
  loc_C07353: Ary1LdPr
  loc_C07354: MemLdRfVar from_stack_1.global_0
  loc_C07357: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0735C: AryUnlock
  loc_C0735F: AryUnlock
  loc_C07362: FFree1Var var_DC = ""
  loc_C07365: LitI2_Byte 0
  loc_C07367: LitVar_Missing var_DC
  loc_C0736A: LitI2_Byte 0
  loc_C0736C: LitVarStr var_98, "&nbsp;"
  loc_C07371: PopAdLdVar
  loc_C07372: FLdPr Me
  loc_C07375: MemLdStr global_140
  loc_C07378: FLdPr Me
  loc_C0737B: MemLdI2 global_136
  loc_C0737E: CI4UI1
  loc_C0737F: FLdPr Me
  loc_C07382: MemLdStr global_132
  loc_C07385: AryLock
  loc_C07388: Ary1LdPr
  loc_C07389: MemLdStr global_0
  loc_C0738C: AryLock
  loc_C0738F: Ary1LdPr
  loc_C07390: MemLdRfVar from_stack_1.global_4
  loc_C07393: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07398: AryUnlock
  loc_C0739B: AryUnlock
  loc_C0739E: FFree1Var var_DC = ""
  loc_C073A1: FLdRfVar var_104
  loc_C073A4: LitVarStr var_98, "CodiOrga"
  loc_C073A9: PopAdLdVar
  loc_C073AA: FLdRfVar var_AC
  loc_C073AD: FLdPr var_1B0
  loc_C073B0:  = Me.Fields
  loc_C073B5: FLdPr var_AC
  loc_C073B8: from_stack_2 = Me.Item(from_stack_1)
  loc_C073BD: LitI2_Byte 0
  loc_C073BF: LitVar_Missing var_F0
  loc_C073C2: LitI2_Byte 0
  loc_C073C4: FLdZeroAd var_104
  loc_C073C7: CVarAd
  loc_C073CB: PopAdLdVar
  loc_C073CC: FLdPr Me
  loc_C073CF: MemLdStr global_140
  loc_C073D2: FLdPr Me
  loc_C073D5: MemLdI2 global_136
  loc_C073D8: CI4UI1
  loc_C073D9: FLdPr Me
  loc_C073DC: MemLdStr global_132
  loc_C073DF: AryLock
  loc_C073E2: Ary1LdPr
  loc_C073E3: MemLdStr global_0
  loc_C073E6: AryLock
  loc_C073E9: Ary1LdPr
  loc_C073EA: MemLdRfVar from_stack_1.global_8
  loc_C073ED: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C073F2: AryUnlock
  loc_C073F5: AryUnlock
  loc_C073F8: FFree1Ad var_AC
  loc_C073FB: FFreeVar var_DC = ""
  loc_C07402: LitI2_Byte 0
  loc_C07404: LitVar_Missing var_DC
  loc_C07407: LitI2_Byte 0
  loc_C07409: LitVarStr var_98, "No tiene permiso para ésta Oficina"
  loc_C0740E: PopAdLdVar
  loc_C0740F: FLdPr Me
  loc_C07412: MemLdStr global_140
  loc_C07415: FLdPr Me
  loc_C07418: MemLdI2 global_136
  loc_C0741B: CI4UI1
  loc_C0741C: FLdPr Me
  loc_C0741F: MemLdStr global_132
  loc_C07422: AryLock
  loc_C07425: Ary1LdPr
  loc_C07426: MemLdStr global_0
  loc_C07429: AryLock
  loc_C0742C: Ary1LdPr
  loc_C0742D: MemLdRfVar from_stack_1.global_12
  loc_C07430: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07435: AryUnlock
  loc_C07438: AryUnlock
  loc_C0743B: FFree1Var var_DC = ""
  loc_C0743E: LitI2_Byte 0
  loc_C07440: LitVar_Missing var_DC
  loc_C07443: LitI2_Byte 0
  loc_C07445: LitVarStr var_98, "&nbsp;"
  loc_C0744A: PopAdLdVar
  loc_C0744B: FLdPr Me
  loc_C0744E: MemLdStr global_140
  loc_C07451: FLdPr Me
  loc_C07454: MemLdI2 global_136
  loc_C07457: CI4UI1
  loc_C07458: FLdPr Me
  loc_C0745B: MemLdStr global_132
  loc_C0745E: AryLock
  loc_C07461: Ary1LdPr
  loc_C07462: MemLdStr global_0
  loc_C07465: AryLock
  loc_C07468: Ary1LdPr
  loc_C07469: MemLdRfVar from_stack_1.global_16
  loc_C0746C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07471: AryUnlock
  loc_C07474: AryUnlock
  loc_C07477: FFree1Var var_DC = ""
  loc_C0747A: LitI2_Byte 0
  loc_C0747C: LitVar_Missing var_DC
  loc_C0747F: LitI2_Byte 0
  loc_C07481: LitVarStr var_98, "&nbsp;"
  loc_C07486: PopAdLdVar
  loc_C07487: FLdPr Me
  loc_C0748A: MemLdStr global_140
  loc_C0748D: FLdPr Me
  loc_C07490: MemLdI2 global_136
  loc_C07493: CI4UI1
  loc_C07494: FLdPr Me
  loc_C07497: MemLdStr global_132
  loc_C0749A: AryLock
  loc_C0749D: Ary1LdPr
  loc_C0749E: MemLdStr global_0
  loc_C074A1: AryLock
  loc_C074A4: Ary1LdPr
  loc_C074A5: MemLdRfVar from_stack_1.global_20
  loc_C074A8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C074AD: AryUnlock
  loc_C074B0: AryUnlock
  loc_C074B3: FFree1Var var_DC = ""
  loc_C074B6: LitI2_Byte 0
  loc_C074B8: LitVar_Missing var_DC
  loc_C074BB: LitI2_Byte 0
  loc_C074BD: LitVarStr var_98, "&nbsp;"
  loc_C074C2: PopAdLdVar
  loc_C074C3: FLdPr Me
  loc_C074C6: MemLdStr global_140
  loc_C074C9: FLdPr Me
  loc_C074CC: MemLdI2 global_136
  loc_C074CF: CI4UI1
  loc_C074D0: FLdPr Me
  loc_C074D3: MemLdStr global_132
  loc_C074D6: AryLock
  loc_C074D9: Ary1LdPr
  loc_C074DA: MemLdStr global_0
  loc_C074DD: AryLock
  loc_C074E0: Ary1LdPr
  loc_C074E1: MemLdRfVar from_stack_1.global_24
  loc_C074E4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C074E9: AryUnlock
  loc_C074EC: AryUnlock
  loc_C074EF: FFree1Var var_DC = ""
  loc_C074F2: LitI2_Byte 0
  loc_C074F4: LitVar_Missing var_DC
  loc_C074F7: LitI2_Byte 0
  loc_C074F9: LitVarStr var_98, "&nbsp;"
  loc_C074FE: PopAdLdVar
  loc_C074FF: FLdPr Me
  loc_C07502: MemLdStr global_140
  loc_C07505: FLdPr Me
  loc_C07508: MemLdI2 global_136
  loc_C0750B: CI4UI1
  loc_C0750C: FLdPr Me
  loc_C0750F: MemLdStr global_132
  loc_C07512: AryLock
  loc_C07515: Ary1LdPr
  loc_C07516: MemLdStr global_0
  loc_C07519: AryLock
  loc_C0751C: Ary1LdPr
  loc_C0751D: MemLdRfVar from_stack_1.global_28
  loc_C07520: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07525: AryUnlock
  loc_C07528: AryUnlock
  loc_C0752B: FFree1Var var_DC = ""
  loc_C0752E: LitI2_Byte 0
  loc_C07530: LitVar_Missing var_DC
  loc_C07533: LitI2_Byte 0
  loc_C07535: LitVarStr var_98, "&nbsp;"
  loc_C0753A: PopAdLdVar
  loc_C0753B: FLdPr Me
  loc_C0753E: MemLdStr global_140
  loc_C07541: FLdPr Me
  loc_C07544: MemLdI2 global_136
  loc_C07547: CI4UI1
  loc_C07548: FLdPr Me
  loc_C0754B: MemLdStr global_132
  loc_C0754E: AryLock
  loc_C07551: Ary1LdPr
  loc_C07552: MemLdStr global_0
  loc_C07555: AryLock
  loc_C07558: Ary1LdPr
  loc_C07559: MemLdRfVar from_stack_1.global_32
  loc_C0755C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07561: AryUnlock
  loc_C07564: AryUnlock
  loc_C07567: FFree1Var var_DC = ""
  loc_C0756A: LitI2_Byte 0
  loc_C0756C: LitVar_Missing var_DC
  loc_C0756F: LitI2_Byte 0
  loc_C07571: LitVarStr var_98, "&nbsp;"
  loc_C07576: PopAdLdVar
  loc_C07577: FLdPr Me
  loc_C0757A: MemLdStr global_140
  loc_C0757D: FLdPr Me
  loc_C07580: MemLdI2 global_136
  loc_C07583: CI4UI1
  loc_C07584: FLdPr Me
  loc_C07587: MemLdStr global_132
  loc_C0758A: AryLock
  loc_C0758D: Ary1LdPr
  loc_C0758E: MemLdStr global_0
  loc_C07591: AryLock
  loc_C07594: Ary1LdPr
  loc_C07595: MemLdRfVar from_stack_1.global_36
  loc_C07598: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0759D: AryUnlock
  loc_C075A0: AryUnlock
  loc_C075A3: FFree1Var var_DC = ""
  loc_C075A6: LitI2_Byte 0
  loc_C075A8: LitVar_Missing var_DC
  loc_C075AB: LitI2_Byte 0
  loc_C075AD: LitVarStr var_98, "&nbsp;"
  loc_C075B2: PopAdLdVar
  loc_C075B3: FLdPr Me
  loc_C075B6: MemLdStr global_140
  loc_C075B9: FLdPr Me
  loc_C075BC: MemLdI2 global_136
  loc_C075BF: CI4UI1
  loc_C075C0: FLdPr Me
  loc_C075C3: MemLdStr global_132
  loc_C075C6: AryLock
  loc_C075C9: Ary1LdPr
  loc_C075CA: MemLdStr global_0
  loc_C075CD: AryLock
  loc_C075D0: Ary1LdPr
  loc_C075D1: MemLdRfVar from_stack_1.global_40
  loc_C075D4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C075D9: AryUnlock
  loc_C075DC: AryUnlock
  loc_C075DF: FFree1Var var_DC = ""
  loc_C075E2: LitI2_Byte 0
  loc_C075E4: LitVar_Missing var_DC
  loc_C075E7: LitI2_Byte 0
  loc_C075E9: LitVarStr var_98, "&nbsp;"
  loc_C075EE: PopAdLdVar
  loc_C075EF: FLdPr Me
  loc_C075F2: MemLdStr global_140
  loc_C075F5: FLdPr Me
  loc_C075F8: MemLdI2 global_136
  loc_C075FB: CI4UI1
  loc_C075FC: FLdPr Me
  loc_C075FF: MemLdStr global_132
  loc_C07602: AryLock
  loc_C07605: Ary1LdPr
  loc_C07606: MemLdStr global_0
  loc_C07609: AryLock
  loc_C0760C: Ary1LdPr
  loc_C0760D: MemLdRfVar from_stack_1.global_44
  loc_C07610: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07615: AryUnlock
  loc_C07618: AryUnlock
  loc_C0761B: FFree1Var var_DC = ""
  loc_C0761E: LitI2_Byte 0
  loc_C07620: LitVar_Missing var_DC
  loc_C07623: LitI2_Byte 0
  loc_C07625: LitVarStr var_98, "&nbsp;"
  loc_C0762A: PopAdLdVar
  loc_C0762B: FLdPr Me
  loc_C0762E: MemLdStr global_140
  loc_C07631: FLdPr Me
  loc_C07634: MemLdI2 global_136
  loc_C07637: CI4UI1
  loc_C07638: FLdPr Me
  loc_C0763B: MemLdStr global_132
  loc_C0763E: AryLock
  loc_C07641: Ary1LdPr
  loc_C07642: MemLdStr global_0
  loc_C07645: AryLock
  loc_C07648: Ary1LdPr
  loc_C07649: MemLdRfVar from_stack_1.global_48
  loc_C0764C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07651: AryUnlock
  loc_C07654: AryUnlock
  loc_C07657: FFree1Var var_DC = ""
  loc_C0765A: LitI2_Byte 0
  loc_C0765C: LitVar_Missing var_DC
  loc_C0765F: LitI2_Byte 0
  loc_C07661: LitVarStr var_98, "&nbsp;"
  loc_C07666: PopAdLdVar
  loc_C07667: FLdPr Me
  loc_C0766A: MemLdStr global_140
  loc_C0766D: FLdPr Me
  loc_C07670: MemLdI2 global_136
  loc_C07673: CI4UI1
  loc_C07674: FLdPr Me
  loc_C07677: MemLdStr global_132
  loc_C0767A: AryLock
  loc_C0767D: Ary1LdPr
  loc_C0767E: MemLdStr global_0
  loc_C07681: AryLock
  loc_C07684: Ary1LdPr
  loc_C07685: MemLdRfVar from_stack_1.htmFile
  loc_C07688: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0768D: AryUnlock
  loc_C07690: AryUnlock
  loc_C07693: FFree1Var var_DC = ""
  loc_C07696: LitI2_Byte 0
  loc_C07698: LitVar_Missing var_DC
  loc_C0769B: LitI2_Byte 0
  loc_C0769D: LitVarStr var_98, "&nbsp;"
  loc_C076A2: PopAdLdVar
  loc_C076A3: FLdPr Me
  loc_C076A6: MemLdStr global_140
  loc_C076A9: FLdPr Me
  loc_C076AC: MemLdI2 global_136
  loc_C076AF: CI4UI1
  loc_C076B0: FLdPr Me
  loc_C076B3: MemLdStr global_132
  loc_C076B6: AryLock
  loc_C076B9: Ary1LdPr
  loc_C076BA: MemLdStr global_0
  loc_C076BD: AryLock
  loc_C076C0: Ary1LdPr
  loc_C076C1: MemLdRfVar from_stack_1.global_60
  loc_C076C4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C076C9: AryUnlock
  loc_C076CC: AryUnlock
  loc_C076CF: FFree1Var var_DC = ""
  loc_C076D2: LitI2_Byte 0
  loc_C076D4: LitVar_Missing var_DC
  loc_C076D7: LitI2_Byte 0
  loc_C076D9: LitVarStr var_98, "&nbsp;"
  loc_C076DE: PopAdLdVar
  loc_C076DF: FLdPr Me
  loc_C076E2: MemLdStr global_140
  loc_C076E5: FLdPr Me
  loc_C076E8: MemLdI2 global_136
  loc_C076EB: CI4UI1
  loc_C076EC: FLdPr Me
  loc_C076EF: MemLdStr global_132
  loc_C076F2: AryLock
  loc_C076F5: Ary1LdPr
  loc_C076F6: MemLdStr global_0
  loc_C076F9: AryLock
  loc_C076FC: Ary1LdPr
  loc_C076FD: MemLdRfVar from_stack_1.global_64
  loc_C07700: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07705: AryUnlock
  loc_C07708: AryUnlock
  loc_C0770B: FFree1Var var_DC = ""
  loc_C0770E: FLdPr Me
  loc_C07711: MemLdI2 global_136
  loc_C07714: FStI2 var_292
  loc_C07717: FLdI2 var_292
  loc_C0771A: LitI2_Byte 1
  loc_C0771C: EqI2
  loc_C0771D: BranchF loc_C077ED
  loc_C07720: LitI2_Byte 0
  loc_C07722: FLdPr Me
  loc_C07725: MemLdI2 global_136
  loc_C07728: CI4UI1
  loc_C07729: FLdPr Me
  loc_C0772C: MemLdStr global_132
  loc_C0772F: AryLock
  loc_C07732: Ary1LdPr
  loc_C07733: MemLdRfVar from_stack_1.global_4
  loc_C07736: CVarRef
  loc_C0773B: LitI2_Byte &HFF
  loc_C0773D: LitVarStr var_98, "0"
  loc_C07742: PopAdLdVar
  loc_C07743: FLdPr Me
  loc_C07746: MemLdStr global_140
  loc_C07749: FLdPr Me
  loc_C0774C: MemLdI2 global_136
  loc_C0774F: CI4UI1
  loc_C07750: FLdPr Me
  loc_C07753: MemLdStr global_132
  loc_C07756: AryLock
  loc_C07759: Ary1LdPr
  loc_C0775A: MemLdStr global_0
  loc_C0775D: AryLock
  loc_C07760: Ary1LdPr
  loc_C07761: MemLdRfVar from_stack_1.ePart
  loc_C07764: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07769: AryUnlock
  loc_C0776C: AryUnlock
  loc_C0776F: AryUnlock
  loc_C07772: LitI2_Byte 0
  loc_C07774: LitVar_Missing var_DC
  loc_C07777: LitI2_Byte 0
  loc_C07779: LitVarStr var_98, "&nbsp;"
  loc_C0777E: PopAdLdVar
  loc_C0777F: FLdPr Me
  loc_C07782: MemLdStr global_140
  loc_C07785: FLdPr Me
  loc_C07788: MemLdI2 global_136
  loc_C0778B: CI4UI1
  loc_C0778C: FLdPr Me
  loc_C0778F: MemLdStr global_132
  loc_C07792: AryLock
  loc_C07795: Ary1LdPr
  loc_C07796: MemLdStr global_0
  loc_C07799: AryLock
  loc_C0779C: Ary1LdPr
  loc_C0779D: MemLdRfVar from_stack_1.global_68
  loc_C077A0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C077A5: AryUnlock
  loc_C077A8: AryUnlock
  loc_C077AB: FFree1Var var_DC = ""
  loc_C077AE: LitI2_Byte 0
  loc_C077B0: LitVar_Missing var_DC
  loc_C077B3: LitI2_Byte 0
  loc_C077B5: LitVarStr var_98, "&nbsp;"
  loc_C077BA: PopAdLdVar
  loc_C077BB: FLdPr Me
  loc_C077BE: MemLdStr global_140
  loc_C077C1: FLdPr Me
  loc_C077C4: MemLdI2 global_136
  loc_C077C7: CI4UI1
  loc_C077C8: FLdPr Me
  loc_C077CB: MemLdStr global_132
  loc_C077CE: AryLock
  loc_C077D1: Ary1LdPr
  loc_C077D2: MemLdStr global_0
  loc_C077D5: AryLock
  loc_C077D8: Ary1LdPr
  loc_C077D9: MemLdRfVar from_stack_1.ExorImpu
  loc_C077DC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C077E1: AryUnlock
  loc_C077E4: AryUnlock
  loc_C077E7: FFree1Var var_DC = ""
  loc_C077EA: Branch loc_C07C32
  loc_C077ED: FLdI2 var_292
  loc_C077F0: LitI2_Byte 2
  loc_C077F2: EqI2
  loc_C077F3: BranchF loc_C078FF
  loc_C077F6: LitI2_Byte 0
  loc_C077F8: FLdPr Me
  loc_C077FB: MemLdI2 global_136
  loc_C077FE: CI4UI1
  loc_C077FF: FLdPr Me
  loc_C07802: MemLdStr global_132
  loc_C07805: AryLock
  loc_C07808: Ary1LdPr
  loc_C07809: MemLdRfVar from_stack_1.global_4
  loc_C0780C: CVarRef
  loc_C07811: LitI2_Byte &HFF
  loc_C07813: LitVarStr var_98, "0"
  loc_C07818: PopAdLdVar
  loc_C07819: FLdPr Me
  loc_C0781C: MemLdStr global_140
  loc_C0781F: FLdPr Me
  loc_C07822: MemLdI2 global_136
  loc_C07825: CI4UI1
  loc_C07826: FLdPr Me
  loc_C07829: MemLdStr global_132
  loc_C0782C: AryLock
  loc_C0782F: Ary1LdPr
  loc_C07830: MemLdStr global_0
  loc_C07833: AryLock
  loc_C07836: Ary1LdPr
  loc_C07837: MemLdRfVar from_stack_1.ePart
  loc_C0783A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0783F: AryUnlock
  loc_C07842: AryUnlock
  loc_C07845: AryUnlock
  loc_C07848: LitI2_Byte 0
  loc_C0784A: LitVar_Missing var_DC
  loc_C0784D: LitI2_Byte 0
  loc_C0784F: LitVarStr var_98, "&nbsp;"
  loc_C07854: PopAdLdVar
  loc_C07855: FLdPr Me
  loc_C07858: MemLdStr global_140
  loc_C0785B: FLdPr Me
  loc_C0785E: MemLdI2 global_136
  loc_C07861: CI4UI1
  loc_C07862: FLdPr Me
  loc_C07865: MemLdStr global_132
  loc_C07868: AryLock
  loc_C0786B: Ary1LdPr
  loc_C0786C: MemLdStr global_0
  loc_C0786F: AryLock
  loc_C07872: Ary1LdPr
  loc_C07873: MemLdRfVar from_stack_1.bLogos
  loc_C07876: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0787B: AryUnlock
  loc_C0787E: AryUnlock
  loc_C07881: FFree1Var var_DC = ""
  loc_C07884: LitI2_Byte 0
  loc_C07886: LitVar_Missing var_DC
  loc_C07889: LitI2_Byte 0
  loc_C0788B: LitVarStr var_98, "&nbsp;"
  loc_C07890: PopAdLdVar
  loc_C07891: FLdPr Me
  loc_C07894: MemLdStr global_140
  loc_C07897: FLdPr Me
  loc_C0789A: MemLdI2 global_136
  loc_C0789D: CI4UI1
  loc_C0789E: FLdPr Me
  loc_C078A1: MemLdStr global_132
  loc_C078A4: AryLock
  loc_C078A7: Ary1LdPr
  loc_C078A8: MemLdStr global_0
  loc_C078AB: AryLock
  loc_C078AE: Ary1LdPr
  loc_C078AF: MemLdRfVar from_stack_1.global_80
  loc_C078B2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C078B7: AryUnlock
  loc_C078BA: AryUnlock
  loc_C078BD: FFree1Var var_DC = ""
  loc_C078C0: LitI2_Byte 0
  loc_C078C2: LitVar_Missing var_DC
  loc_C078C5: LitI2_Byte 0
  loc_C078C7: LitVarStr var_98, "&nbsp;"
  loc_C078CC: PopAdLdVar
  loc_C078CD: FLdPr Me
  loc_C078D0: MemLdStr global_140
  loc_C078D3: FLdPr Me
  loc_C078D6: MemLdI2 global_136
  loc_C078D9: CI4UI1
  loc_C078DA: FLdPr Me
  loc_C078DD: MemLdStr global_132
  loc_C078E0: AryLock
  loc_C078E3: Ary1LdPr
  loc_C078E4: MemLdStr global_0
  loc_C078E7: AryLock
  loc_C078EA: Ary1LdPr
  loc_C078EB: MemLdRfVar from_stack_1.global_84
  loc_C078EE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C078F3: AryUnlock
  loc_C078F6: AryUnlock
  loc_C078F9: FFree1Var var_DC = ""
  loc_C078FC: Branch loc_C07C32
  loc_C078FF: FLdI2 var_292
  loc_C07902: LitI2_Byte 3
  loc_C07904: EqI2
  loc_C07905: BranchF loc_C07A89
  loc_C07908: LitI2_Byte 0
  loc_C0790A: FLdPr Me
  loc_C0790D: MemLdI2 global_136
  loc_C07910: CI4UI1
  loc_C07911: FLdPr Me
  loc_C07914: MemLdStr global_132
  loc_C07917: AryLock
  loc_C0791A: Ary1LdPr
  loc_C0791B: MemLdRfVar from_stack_1.global_4
  loc_C0791E: CVarRef
  loc_C07923: LitI2_Byte &HFF
  loc_C07925: LitVarStr var_98, "0"
  loc_C0792A: PopAdLdVar
  loc_C0792B: FLdPr Me
  loc_C0792E: MemLdStr global_140
  loc_C07931: FLdPr Me
  loc_C07934: MemLdI2 global_136
  loc_C07937: CI4UI1
  loc_C07938: FLdPr Me
  loc_C0793B: MemLdStr global_132
  loc_C0793E: AryLock
  loc_C07941: Ary1LdPr
  loc_C07942: MemLdStr global_0
  loc_C07945: AryLock
  loc_C07948: Ary1LdPr
  loc_C07949: MemLdRfVar from_stack_1.ePart
  loc_C0794C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07951: AryUnlock
  loc_C07954: AryUnlock
  loc_C07957: AryUnlock
  loc_C0795A: LitI2_Byte 0
  loc_C0795C: LitVar_Missing var_DC
  loc_C0795F: LitI2_Byte 0
  loc_C07961: LitVarStr var_98, "&nbsp;"
  loc_C07966: PopAdLdVar
  loc_C07967: FLdPr Me
  loc_C0796A: MemLdStr global_140
  loc_C0796D: FLdPr Me
  loc_C07970: MemLdI2 global_136
  loc_C07973: CI4UI1
  loc_C07974: FLdPr Me
  loc_C07977: MemLdStr global_132
  loc_C0797A: AryLock
  loc_C0797D: Ary1LdPr
  loc_C0797E: MemLdStr global_0
  loc_C07981: AryLock
  loc_C07984: Ary1LdPr
  loc_C07985: MemLdRfVar from_stack_1.bLogos
  loc_C07988: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0798D: AryUnlock
  loc_C07990: AryUnlock
  loc_C07993: FFree1Var var_DC = ""
  loc_C07996: LitI2_Byte 0
  loc_C07998: LitVar_Missing var_DC
  loc_C0799B: LitI2_Byte 0
  loc_C0799D: LitVarStr var_98, "&nbsp;"
  loc_C079A2: PopAdLdVar
  loc_C079A3: FLdPr Me
  loc_C079A6: MemLdStr global_140
  loc_C079A9: FLdPr Me
  loc_C079AC: MemLdI2 global_136
  loc_C079AF: CI4UI1
  loc_C079B0: FLdPr Me
  loc_C079B3: MemLdStr global_132
  loc_C079B6: AryLock
  loc_C079B9: Ary1LdPr
  loc_C079BA: MemLdStr global_0
  loc_C079BD: AryLock
  loc_C079C0: Ary1LdPr
  loc_C079C1: MemLdRfVar from_stack_1.global_80
  loc_C079C4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C079C9: AryUnlock
  loc_C079CC: AryUnlock
  loc_C079CF: FFree1Var var_DC = ""
  loc_C079D2: LitI2_Byte 0
  loc_C079D4: LitVar_Missing var_DC
  loc_C079D7: LitI2_Byte 0
  loc_C079D9: LitVarStr var_98, "&nbsp;"
  loc_C079DE: PopAdLdVar
  loc_C079DF: FLdPr Me
  loc_C079E2: MemLdStr global_140
  loc_C079E5: FLdPr Me
  loc_C079E8: MemLdI2 global_136
  loc_C079EB: CI4UI1
  loc_C079EC: FLdPr Me
  loc_C079EF: MemLdStr global_132
  loc_C079F2: AryLock
  loc_C079F5: Ary1LdPr
  loc_C079F6: MemLdStr global_0
  loc_C079F9: AryLock
  loc_C079FC: Ary1LdPr
  loc_C079FD: MemLdRfVar from_stack_1.global_84
  loc_C07A00: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07A05: AryUnlock
  loc_C07A08: AryUnlock
  loc_C07A0B: FFree1Var var_DC = ""
  loc_C07A0E: LitI2_Byte 0
  loc_C07A10: LitVar_Missing var_DC
  loc_C07A13: LitI2_Byte 0
  loc_C07A15: LitVarStr var_98, "&nbsp;"
  loc_C07A1A: PopAdLdVar
  loc_C07A1B: FLdPr Me
  loc_C07A1E: MemLdStr global_140
  loc_C07A21: FLdPr Me
  loc_C07A24: MemLdI2 global_136
  loc_C07A27: CI4UI1
  loc_C07A28: FLdPr Me
  loc_C07A2B: MemLdStr global_132
  loc_C07A2E: AryLock
  loc_C07A31: Ary1LdPr
  loc_C07A32: MemLdStr global_0
  loc_C07A35: AryLock
  loc_C07A38: Ary1LdPr
  loc_C07A39: MemLdRfVar from_stack_1.global_88
  loc_C07A3C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07A41: AryUnlock
  loc_C07A44: AryUnlock
  loc_C07A47: FFree1Var var_DC = ""
  loc_C07A4A: LitI2_Byte 0
  loc_C07A4C: LitVar_Missing var_DC
  loc_C07A4F: LitI2_Byte 0
  loc_C07A51: LitVarStr var_98, "&nbsp;"
  loc_C07A56: PopAdLdVar
  loc_C07A57: FLdPr Me
  loc_C07A5A: MemLdStr global_140
  loc_C07A5D: FLdPr Me
  loc_C07A60: MemLdI2 global_136
  loc_C07A63: CI4UI1
  loc_C07A64: FLdPr Me
  loc_C07A67: MemLdStr global_132
  loc_C07A6A: AryLock
  loc_C07A6D: Ary1LdPr
  loc_C07A6E: MemLdStr global_0
  loc_C07A71: AryLock
  loc_C07A74: Ary1LdPr
  loc_C07A75: MemLdRfVar from_stack_1.global_92
  loc_C07A78: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07A7D: AryUnlock
  loc_C07A80: AryUnlock
  loc_C07A83: FFree1Var var_DC = ""
  loc_C07A86: Branch loc_C07C32
  loc_C07A89: FLdI2 var_292
  loc_C07A8C: LitI2_Byte 4
  loc_C07A8E: EqI2
  loc_C07A8F: BranchF loc_C07B5F
  loc_C07A92: LitI2_Byte 0
  loc_C07A94: FLdPr Me
  loc_C07A97: MemLdI2 global_136
  loc_C07A9A: CI4UI1
  loc_C07A9B: FLdPr Me
  loc_C07A9E: MemLdStr global_132
  loc_C07AA1: AryLock
  loc_C07AA4: Ary1LdPr
  loc_C07AA5: MemLdRfVar from_stack_1.global_4
  loc_C07AA8: CVarRef
  loc_C07AAD: LitI2_Byte &HFF
  loc_C07AAF: LitVarStr var_98, "0"
  loc_C07AB4: PopAdLdVar
  loc_C07AB5: FLdPr Me
  loc_C07AB8: MemLdStr global_140
  loc_C07ABB: FLdPr Me
  loc_C07ABE: MemLdI2 global_136
  loc_C07AC1: CI4UI1
  loc_C07AC2: FLdPr Me
  loc_C07AC5: MemLdStr global_132
  loc_C07AC8: AryLock
  loc_C07ACB: Ary1LdPr
  loc_C07ACC: MemLdStr global_0
  loc_C07ACF: AryLock
  loc_C07AD2: Ary1LdPr
  loc_C07AD3: MemLdRfVar from_stack_1.ePart
  loc_C07AD6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07ADB: AryUnlock
  loc_C07ADE: AryUnlock
  loc_C07AE1: AryUnlock
  loc_C07AE4: LitI2_Byte 0
  loc_C07AE6: LitVar_Missing var_DC
  loc_C07AE9: LitI2_Byte 0
  loc_C07AEB: LitVarStr var_98, "&nbsp;"
  loc_C07AF0: PopAdLdVar
  loc_C07AF1: FLdPr Me
  loc_C07AF4: MemLdStr global_140
  loc_C07AF7: FLdPr Me
  loc_C07AFA: MemLdI2 global_136
  loc_C07AFD: CI4UI1
  loc_C07AFE: FLdPr Me
  loc_C07B01: MemLdStr global_132
  loc_C07B04: AryLock
  loc_C07B07: Ary1LdPr
  loc_C07B08: MemLdStr global_0
  loc_C07B0B: AryLock
  loc_C07B0E: Ary1LdPr
  loc_C07B0F: MemLdRfVar from_stack_1.global_96
  loc_C07B12: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07B17: AryUnlock
  loc_C07B1A: AryUnlock
  loc_C07B1D: FFree1Var var_DC = ""
  loc_C07B20: LitI2_Byte 0
  loc_C07B22: LitVar_Missing var_DC
  loc_C07B25: LitI2_Byte 0
  loc_C07B27: LitVarStr var_98, "&nbsp;"
  loc_C07B2C: PopAdLdVar
  loc_C07B2D: FLdPr Me
  loc_C07B30: MemLdStr global_140
  loc_C07B33: FLdPr Me
  loc_C07B36: MemLdI2 global_136
  loc_C07B39: CI4UI1
  loc_C07B3A: FLdPr Me
  loc_C07B3D: MemLdStr global_132
  loc_C07B40: AryLock
  loc_C07B43: Ary1LdPr
  loc_C07B44: MemLdStr global_0
  loc_C07B47: AryLock
  loc_C07B4A: Ary1LdPr
  loc_C07B4B: MemLdRfVar from_stack_1.global_92
  loc_C07B4E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07B53: AryUnlock
  loc_C07B56: AryUnlock
  loc_C07B59: FFree1Var var_DC = ""
  loc_C07B5C: Branch loc_C07C32
  loc_C07B5F: FLdI2 var_292
  loc_C07B62: LitI2_Byte 5
  loc_C07B64: EqI2
  loc_C07B65: BranchF loc_C07C32
  loc_C07B68: LitI2_Byte 0
  loc_C07B6A: FLdPr Me
  loc_C07B6D: MemLdI2 global_136
  loc_C07B70: CI4UI1
  loc_C07B71: FLdPr Me
  loc_C07B74: MemLdStr global_132
  loc_C07B77: AryLock
  loc_C07B7A: Ary1LdPr
  loc_C07B7B: MemLdRfVar from_stack_1.global_4
  loc_C07B7E: CVarRef
  loc_C07B83: LitI2_Byte &HFF
  loc_C07B85: LitVarStr var_98, "0"
  loc_C07B8A: PopAdLdVar
  loc_C07B8B: FLdPr Me
  loc_C07B8E: MemLdStr global_140
  loc_C07B91: FLdPr Me
  loc_C07B94: MemLdI2 global_136
  loc_C07B97: CI4UI1
  loc_C07B98: FLdPr Me
  loc_C07B9B: MemLdStr global_132
  loc_C07B9E: AryLock
  loc_C07BA1: Ary1LdPr
  loc_C07BA2: MemLdStr global_0
  loc_C07BA5: AryLock
  loc_C07BA8: Ary1LdPr
  loc_C07BA9: MemLdRfVar from_stack_1.ePart
  loc_C07BAC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07BB1: AryUnlock
  loc_C07BB4: AryUnlock
  loc_C07BB7: AryUnlock
  loc_C07BBA: LitI2_Byte 0
  loc_C07BBC: LitVar_Missing var_DC
  loc_C07BBF: LitI2_Byte 0
  loc_C07BC1: LitVarStr var_98, "&nbsp;"
  loc_C07BC6: PopAdLdVar
  loc_C07BC7: FLdPr Me
  loc_C07BCA: MemLdStr global_140
  loc_C07BCD: FLdPr Me
  loc_C07BD0: MemLdI2 global_136
  loc_C07BD3: CI4UI1
  loc_C07BD4: FLdPr Me
  loc_C07BD7: MemLdStr global_132
  loc_C07BDA: AryLock
  loc_C07BDD: Ary1LdPr
  loc_C07BDE: MemLdStr global_0
  loc_C07BE1: AryLock
  loc_C07BE4: Ary1LdPr
  loc_C07BE5: MemLdRfVar from_stack_1.global_96
  loc_C07BE8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07BED: AryUnlock
  loc_C07BF0: AryUnlock
  loc_C07BF3: FFree1Var var_DC = ""
  loc_C07BF6: LitI2_Byte 0
  loc_C07BF8: LitVar_Missing var_DC
  loc_C07BFB: LitI2_Byte 0
  loc_C07BFD: LitVarStr var_98, "&nbsp;"
  loc_C07C02: PopAdLdVar
  loc_C07C03: FLdPr Me
  loc_C07C06: MemLdStr global_140
  loc_C07C09: FLdPr Me
  loc_C07C0C: MemLdI2 global_136
  loc_C07C0F: CI4UI1
  loc_C07C10: FLdPr Me
  loc_C07C13: MemLdStr global_132
  loc_C07C16: AryLock
  loc_C07C19: Ary1LdPr
  loc_C07C1A: MemLdStr global_0
  loc_C07C1D: AryLock
  loc_C07C20: Ary1LdPr
  loc_C07C21: MemLdRfVar from_stack_1.global_100
  loc_C07C24: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C07C29: AryUnlock
  loc_C07C2C: AryUnlock
  loc_C07C2F: FFree1Var var_DC = ""
  loc_C07C32: LitI4 1
  loc_C07C37: PopTmpLdAdStr var_194
  loc_C07C3A: FLdPr Me
  loc_C07C3D: MemLdI2 global_136
  loc_C07C40: CI4UI1
  loc_C07C41: FLdPr Me
  loc_C07C44: MemLdRfVar from_stack_1.global_100
  loc_C07C47: Ary1LdRf
  loc_C07C48: NewIfNullPr clsimputacion
  loc_C07C4B: Call clsimputacion.Mover(from_stack_1v)
  loc_C07C50: LitNothing
  loc_C07C52: FStAd var_1B0 
  loc_C07C56: FLdPr Me
  loc_C07C59: MemLdRfVar from_stack_1.global_140
  loc_C07C5C: NextI4 var_1AC, loc_C06314
  loc_C07C61: FLdPr Me
  loc_C07C64: MemLdRfVar from_stack_1.global_136
  loc_C07C67: NextI2 var_1A4, loc_C062BA
  loc_C07C6C: LitI2_Byte &HFF
  loc_C07C6E: FLdPr Me
  loc_C07C71: MemStI2 bGenerado
  loc_C07C74: LitI4 0
  loc_C07C79: CI2I4
  loc_C07C7A: FLdPr Me
  loc_C07C7D: Me.MousePointer = from_stack_1
  loc_C07C82: LitVarStr var_98, vbNullString
  loc_C07C87: PopAdLdVar
  loc_C07C88: FLdPr Me
  loc_C07C8B: VCallAd Control_ID_statusBar
  loc_C07C8E: FStAdFunc var_AC
  loc_C07C91: FLdPr var_AC
  loc_C07C94: LateIdSt
  loc_C07C99: FFree1Ad var_AC
  loc_C07C9C: ExitProcHresult
End Sub

Public Sub GeneraXLS() '95185C
  'Data Table: 4F340C
  loc_951844: LitI2_Byte 0
  loc_951846: FLdPr Me
  loc_951849: MemStI2 bLogos
  loc_95184C: Call GeneraHTML()
  loc_951851: LitI2_Byte &HFF
  loc_951853: FLdPr Me
  loc_951856: MemStI2 bLogos
  loc_951859: ExitProcHresult
  loc_95185A: FStAdFunc var_6BAC
End Sub

Public Sub GeneraHTML() 'BD3628
  'Data Table: 4F340C
  loc_BD2124: FLdRfVar var_88
  loc_BD2127: LitI2_Byte 0
  loc_BD2129: LitI2_Byte &HFF
  loc_BD212B: ImpAdLdI4 MemVar_C3D83C
  loc_BD212E: FLdPr Me
  loc_BD2131: MemLdRfVar from_stack_1.global_128
  loc_BD2134: NewIfNullPr IFileSystem3
  loc_BD2137: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BD213C: ILdRf var_88
  loc_BD213F: FLdPr Me
  loc_BD2142: MemStVarAd
  loc_BD2146: FFree1Ad var_88
  loc_BD2149: Call Proc_252_53_B24C9C()
  loc_BD214E: LitI2_Byte 1
  loc_BD2150: FLdPr Me
  loc_BD2153: MemLdRfVar from_stack_1.global_136
  loc_BD2156: LitI2_Byte 5
  loc_BD2158: ForI2 var_8C
  loc_BD215E: FLdPr Me
  loc_BD2161: MemLdI2 global_136
  loc_BD2164: CI4UI1
  loc_BD2165: FLdPr Me
  loc_BD2168: MemLdStr global_132
  loc_BD216B: Ary1LdPr
  loc_BD216C: MemLdStr global_0
  loc_BD216F: LitI2_Byte 1
  loc_BD2171: FnUBound
  loc_BD2173: LitI4 0
  loc_BD2178: GtI4
  loc_BD2179: BranchF loc_BD2BDB
  loc_BD217C: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BD2181: PopAdLdVar
  loc_BD2182: FLdPr Me
  loc_BD2185: MemLdRfVar from_stack_1.htmFile
  loc_BD2188: LdPrVar
  loc_BD218A: LateMemCall
  loc_BD2190: FLdPr Me
  loc_BD2193: MemLdI2 global_136
  loc_BD2196: FStI2 var_AE
  loc_BD2199: FLdI2 var_AE
  loc_BD219C: LitI2_Byte 1
  loc_BD219E: EqI2
  loc_BD219F: BranchF loc_BD21F3
  loc_BD21A2: LitStr "   <td colspan=""1"" align=""left"" class=""Titulo2"">Etapa:&nbsp;"
  loc_BD21A5: LitStr "Preventiva"
  loc_BD21A8: ConcatStr
  loc_BD21A9: FStStrNoPop var_B4
  loc_BD21AC: LitStr "</td>"
  loc_BD21AF: ConcatStr
  loc_BD21B0: CVarStr var_C4
  loc_BD21B3: PopAdLdVar
  loc_BD21B4: FLdPr Me
  loc_BD21B7: MemLdRfVar from_stack_1.htmFile
  loc_BD21BA: LdPrVar
  loc_BD21BC: LateMemCall
  loc_BD21C2: FFree1Str var_B4
  loc_BD21C5: FFree1Var var_C4 = ""
  loc_BD21C8: LitVarStr var_9C, "   <td colspan=""5"">&nbsp;</td>"
  loc_BD21CD: PopAdLdVar
  loc_BD21CE: FLdPr Me
  loc_BD21D1: MemLdRfVar from_stack_1.htmFile
  loc_BD21D4: LdPrVar
  loc_BD21D6: LateMemCall
  loc_BD21DC: LitVarStr var_9C, "   <td class=""Encabezado"" colspan=""1"" align=""center"">N.P./It.</td>"
  loc_BD21E1: PopAdLdVar
  loc_BD21E2: FLdPr Me
  loc_BD21E5: MemLdRfVar from_stack_1.htmFile
  loc_BD21E8: LdPrVar
  loc_BD21EA: LateMemCall
  loc_BD21F0: Branch loc_BD2358
  loc_BD21F3: FLdI2 var_AE
  loc_BD21F6: LitI2_Byte 2
  loc_BD21F8: EqI2
  loc_BD21F9: BranchF loc_BD224D
  loc_BD21FC: LitStr "   <td colspan=""1"" align=""left"" class=""Titulo2"">Etapa:&nbsp;"
  loc_BD21FF: LitStr "Definitiva"
  loc_BD2202: ConcatStr
  loc_BD2203: FStStrNoPop var_B4
  loc_BD2206: LitStr "</td>"
  loc_BD2209: ConcatStr
  loc_BD220A: CVarStr var_C4
  loc_BD220D: PopAdLdVar
  loc_BD220E: FLdPr Me
  loc_BD2211: MemLdRfVar from_stack_1.htmFile
  loc_BD2214: LdPrVar
  loc_BD2216: LateMemCall
  loc_BD221C: FFree1Str var_B4
  loc_BD221F: FFree1Var var_C4 = ""
  loc_BD2222: LitVarStr var_9C, "   <td colspan=""5"">&nbsp;</td>"
  loc_BD2227: PopAdLdVar
  loc_BD2228: FLdPr Me
  loc_BD222B: MemLdRfVar from_stack_1.htmFile
  loc_BD222E: LdPrVar
  loc_BD2230: LateMemCall
  loc_BD2236: LitVarStr var_9C, "   <td class=""Encabezado"" colspan=""1"" align=""center"">O.C./It./Al.</td>"
  loc_BD223B: PopAdLdVar
  loc_BD223C: FLdPr Me
  loc_BD223F: MemLdRfVar from_stack_1.htmFile
  loc_BD2242: LdPrVar
  loc_BD2244: LateMemCall
  loc_BD224A: Branch loc_BD2358
  loc_BD224D: FLdI2 var_AE
  loc_BD2250: LitI2_Byte 3
  loc_BD2252: EqI2
  loc_BD2253: BranchF loc_BD22A7
  loc_BD2256: LitStr "   <td colspan=""1"" align=""left"" class=""Titulo2"">Etapa:&nbsp;"
  loc_BD2259: LitStr "Devengado"
  loc_BD225C: ConcatStr
  loc_BD225D: FStStrNoPop var_B4
  loc_BD2260: LitStr "</td>"
  loc_BD2263: ConcatStr
  loc_BD2264: CVarStr var_C4
  loc_BD2267: PopAdLdVar
  loc_BD2268: FLdPr Me
  loc_BD226B: MemLdRfVar from_stack_1.htmFile
  loc_BD226E: LdPrVar
  loc_BD2270: LateMemCall
  loc_BD2276: FFree1Str var_B4
  loc_BD2279: FFree1Var var_C4 = ""
  loc_BD227C: LitVarStr var_9C, "   <td colspan=""5"">&nbsp;</td>"
  loc_BD2281: PopAdLdVar
  loc_BD2282: FLdPr Me
  loc_BD2285: MemLdRfVar from_stack_1.htmFile
  loc_BD2288: LdPrVar
  loc_BD228A: LateMemCall
  loc_BD2290: LitVarStr var_9C, "   <td class=""Encabezado"" colspan=""1"" align=""center"">O.C./It./Al./Rec.<br>Factura</td>"
  loc_BD2295: PopAdLdVar
  loc_BD2296: FLdPr Me
  loc_BD2299: MemLdRfVar from_stack_1.htmFile
  loc_BD229C: LdPrVar
  loc_BD229E: LateMemCall
  loc_BD22A4: Branch loc_BD2358
  loc_BD22A7: FLdI2 var_AE
  loc_BD22AA: LitI2_Byte 4
  loc_BD22AC: EqI2
  loc_BD22AD: BranchF loc_BD2301
  loc_BD22B0: LitStr "   <td colspan=""1"" align=""left"" class=""Titulo2"">Etapa:&nbsp;"
  loc_BD22B3: LitStr "Mandado a Pagar"
  loc_BD22B6: ConcatStr
  loc_BD22B7: FStStrNoPop var_B4
  loc_BD22BA: LitStr "</td>"
  loc_BD22BD: ConcatStr
  loc_BD22BE: CVarStr var_C4
  loc_BD22C1: PopAdLdVar
  loc_BD22C2: FLdPr Me
  loc_BD22C5: MemLdRfVar from_stack_1.htmFile
  loc_BD22C8: LdPrVar
  loc_BD22CA: LateMemCall
  loc_BD22D0: FFree1Str var_B4
  loc_BD22D3: FFree1Var var_C4 = ""
  loc_BD22D6: LitVarStr var_9C, "   <td colspan=""5"">&nbsp;</td>"
  loc_BD22DB: PopAdLdVar
  loc_BD22DC: FLdPr Me
  loc_BD22DF: MemLdRfVar from_stack_1.htmFile
  loc_BD22E2: LdPrVar
  loc_BD22E4: LateMemCall
  loc_BD22EA: LitVarStr var_9C, "   <td class=""Encabezado"" colspan=""1"" align=""center"">O.P.<br>Fecha Remisión</td>"
  loc_BD22EF: PopAdLdVar
  loc_BD22F0: FLdPr Me
  loc_BD22F3: MemLdRfVar from_stack_1.htmFile
  loc_BD22F6: LdPrVar
  loc_BD22F8: LateMemCall
  loc_BD22FE: Branch loc_BD2358
  loc_BD2301: FLdI2 var_AE
  loc_BD2304: LitI2_Byte 5
  loc_BD2306: EqI2
  loc_BD2307: BranchF loc_BD2358
  loc_BD230A: LitStr "   <td colspan=""1"" align=""left"" class=""Titulo2"">Etapa:&nbsp;"
  loc_BD230D: LitStr "Pagado"
  loc_BD2310: ConcatStr
  loc_BD2311: FStStrNoPop var_B4
  loc_BD2314: LitStr "</td>"
  loc_BD2317: ConcatStr
  loc_BD2318: CVarStr var_C4
  loc_BD231B: PopAdLdVar
  loc_BD231C: FLdPr Me
  loc_BD231F: MemLdRfVar from_stack_1.htmFile
  loc_BD2322: LdPrVar
  loc_BD2324: LateMemCall
  loc_BD232A: FFree1Str var_B4
  loc_BD232D: FFree1Var var_C4 = ""
  loc_BD2330: LitVarStr var_9C, "   <td colspan=""5"">&nbsp;</td>"
  loc_BD2335: PopAdLdVar
  loc_BD2336: FLdPr Me
  loc_BD2339: MemLdRfVar from_stack_1.htmFile
  loc_BD233C: LdPrVar
  loc_BD233E: LateMemCall
  loc_BD2344: LitVarStr var_9C, "   <td class=""Encabezado"" colspan=""1"" align=""center"">O.P.<br>Arch.</td>"
  loc_BD2349: PopAdLdVar
  loc_BD234A: FLdPr Me
  loc_BD234D: MemLdRfVar from_stack_1.htmFile
  loc_BD2350: LdPrVar
  loc_BD2352: LateMemCall
  loc_BD2358: LitVarStr var_9C, "   <td colspan=""8"">&nbsp;</td>"
  loc_BD235D: PopAdLdVar
  loc_BD235E: FLdPr Me
  loc_BD2361: MemLdRfVar from_stack_1.htmFile
  loc_BD2364: LdPrVar
  loc_BD2366: LateMemCall
  loc_BD236C: LitVarStr var_9C, " </tr>"
  loc_BD2371: PopAdLdVar
  loc_BD2372: FLdPr Me
  loc_BD2375: MemLdRfVar from_stack_1.htmFile
  loc_BD2378: LdPrVar
  loc_BD237A: LateMemCall
  loc_BD2380: FLdRfVar var_C6
  loc_BD2383: FLdPr Me
  loc_BD2386: VCallAd Control_ID_SinteticoChk
  loc_BD2389: FStAdFunc var_88
  loc_BD238C: FLdPr var_88
  loc_BD238F:  = Me.Value
  loc_BD2394: FLdI2 var_C6
  loc_BD2397: CI4UI1
  loc_BD2398: LitI4 0
  loc_BD239D: EqI4
  loc_BD239E: FFree1Ad var_88
  loc_BD23A1: BranchF loc_BD29E1
  loc_BD23A4: LitI4 1
  loc_BD23A9: FLdPr Me
  loc_BD23AC: MemLdRfVar from_stack_1.global_140
  loc_BD23AF: FLdPr Me
  loc_BD23B2: MemLdI2 global_136
  loc_BD23B5: CI4UI1
  loc_BD23B6: FLdPr Me
  loc_BD23B9: MemLdStr global_132
  loc_BD23BC: Ary1LdPr
  loc_BD23BD: MemLdStr global_0
  loc_BD23C0: LitI2_Byte 1
  loc_BD23C2: FnUBound
  loc_BD23C4: ForI4 var_D0
  loc_BD23CA: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BD23CF: PopAdLdVar
  loc_BD23D0: FLdPr Me
  loc_BD23D3: MemLdRfVar from_stack_1.htmFile
  loc_BD23D6: LdPrVar
  loc_BD23D8: LateMemCall
  loc_BD23DE: FLdPr Me
  loc_BD23E1: MemLdStr global_140
  loc_BD23E4: FLdPr Me
  loc_BD23E7: MemLdI2 global_136
  loc_BD23EA: CI4UI1
  loc_BD23EB: FLdPr Me
  loc_BD23EE: MemLdStr global_132
  loc_BD23F1: AryLock
  loc_BD23F4: Ary1LdPr
  loc_BD23F5: MemLdStr global_0
  loc_BD23F8: AryLock
  loc_BD23FB: Ary1LdRf
  loc_BD23FC: FStR4 var_DC
  loc_BD23FF: LitStr "Municipalidad de Guaymallén"
  loc_BD2402: LitStr "Municipalidad de Lavalle"
  loc_BD2405: EqStr
  loc_BD2407: BranchF loc_BD2545
  loc_BD240A: FLdRfVar var_B4
  loc_BD240D: FLdPr Me
  loc_BD2410: VCallAd Control_ID_cboPeriodo
  loc_BD2413: FStAdFunc var_88
  loc_BD2416: FLdPr var_88
  loc_BD2419:  = Me.Text
  loc_BD241E: ILdRf var_B4
  loc_BD2421: CI2Str
  loc_BD2423: LitI2 2011
  loc_BD2426: GtI2
  loc_BD2427: FFree1Str var_B4
  loc_BD242A: FFree1Ad var_88
  loc_BD242D: BranchF loc_BD24FD
  loc_BD2430: FLdRfVar var_B4
  loc_BD2433: FLdPr Me
  loc_BD2436: VCallAd Control_ID_cboPeriodo
  loc_BD2439: FStAdFunc var_88
  loc_BD243C: FLdPr var_88
  loc_BD243F:  = Me.Text
  loc_BD2444: LitI4 3
  loc_BD2449: FMemLdRf E4
  loc_BD244E: CVarRef
  loc_BD2453: FLdRfVar var_C4
  loc_BD2456: ImpAdCallFPR4  = Left(, )
  loc_BD245B: FLdPr Me
  loc_BD245E: MemLdRfVar from_stack_1.ePart
  loc_BD2461: NewIfNullRf
  loc_BD2465: FLdRfVar var_C4
  loc_BD2468: LitVarStr var_AC, "00000"
  loc_BD246D: ConcatVar var_EC
  loc_BD2471: CStrVarVal var_F0
  loc_BD2475: ILdRf var_B4
  loc_BD2478: CI2Str
  loc_BD247A: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_BD247F: FFreeStr var_B4 = ""
  loc_BD2486: FFree1Ad var_88
  loc_BD2489: FFreeVar var_C4 = ""
  loc_BD2490: FLdRfVar var_B4
  loc_BD2493: FLdPr Me
  loc_BD2496: MemLdRfVar from_stack_1.ePart
  loc_BD2499: NewIfNullPr tblpartida
  loc_BD249C: from_stack_1v = tblpartida.DetaPartGet()
  loc_BD24A1: LitI4 0
  loc_BD24A6: LitI4 0
  loc_BD24AB: LitI2_Byte 0
  loc_BD24AD: LitStr "left"
  loc_BD24B0: ILdRf var_B4
  loc_BD24B3: LitStr "<br>"
  loc_BD24B6: ConcatStr
  loc_BD24B7: FStStrNoPop var_F0
  loc_BD24BA: FMemLdR4 var_DC(0)
  loc_BD24BF: ConcatStr
  loc_BD24C0: FStStrNoPop var_F4
  loc_BD24C3: LitStr " - "
  loc_BD24C6: ConcatStr
  loc_BD24C7: FStStrNoPop var_F8
  loc_BD24CA: FMemLdR4 var_DC(4)
  loc_BD24CF: ConcatStr
  loc_BD24D0: FStStrNoPop var_FC
  loc_BD24D3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD24D8: CVarStr var_C4
  loc_BD24DB: PopAdLdVar
  loc_BD24DC: FLdPr Me
  loc_BD24DF: MemLdRfVar from_stack_1.htmFile
  loc_BD24E2: LdPrVar
  loc_BD24E4: LateMemCall
  loc_BD24EA: FFreeStr var_B4 = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_BD24F7: FFree1Var var_C4 = ""
  loc_BD24FA: Branch loc_BD2542
  loc_BD24FD: LitI4 0
  loc_BD2502: LitI4 0
  loc_BD2507: LitI2_Byte 0
  loc_BD2509: LitStr "left"
  loc_BD250C: FMemLdR4 var_DC(0)
  loc_BD2511: LitStr "<br>"
  loc_BD2514: ConcatStr
  loc_BD2515: FStStrNoPop var_B4
  loc_BD2518: FMemLdR4 var_DC(4)
  loc_BD251D: ConcatStr
  loc_BD251E: FStStrNoPop var_F0
  loc_BD2521: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD2526: CVarStr var_C4
  loc_BD2529: PopAdLdVar
  loc_BD252A: FLdPr Me
  loc_BD252D: MemLdRfVar from_stack_1.htmFile
  loc_BD2530: LdPrVar
  loc_BD2532: LateMemCall
  loc_BD2538: FFreeStr var_B4 = ""
  loc_BD253F: FFree1Var var_C4 = ""
  loc_BD2542: Branch loc_BD258A
  loc_BD2545: LitI4 0
  loc_BD254A: LitI4 0
  loc_BD254F: LitI2_Byte 0
  loc_BD2551: LitStr "left"
  loc_BD2554: FMemLdR4 var_DC(0)
  loc_BD2559: LitStr "<br>"
  loc_BD255C: ConcatStr
  loc_BD255D: FStStrNoPop var_B4
  loc_BD2560: FMemLdR4 var_DC(4)
  loc_BD2565: ConcatStr
  loc_BD2566: FStStrNoPop var_F0
  loc_BD2569: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD256E: CVarStr var_C4
  loc_BD2571: PopAdLdVar
  loc_BD2572: FLdPr Me
  loc_BD2575: MemLdRfVar from_stack_1.htmFile
  loc_BD2578: LdPrVar
  loc_BD257A: LateMemCall
  loc_BD2580: FFreeStr var_B4 = ""
  loc_BD2587: FFree1Var var_C4 = ""
  loc_BD258A: LitI4 0
  loc_BD258F: LitI4 0
  loc_BD2594: LitI2_Byte 0
  loc_BD2596: LitStr "left"
  loc_BD2599: FMemLdR4 var_DC(8)
  loc_BD259E: LitStr "<br>"
  loc_BD25A1: ConcatStr
  loc_BD25A2: FStStrNoPop var_B4
  loc_BD25A5: FMemLdR4 var_DC(12)
  loc_BD25AA: ConcatStr
  loc_BD25AB: FStStrNoPop var_F0
  loc_BD25AE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD25B3: CVarStr var_C4
  loc_BD25B6: PopAdLdVar
  loc_BD25B7: FLdPr Me
  loc_BD25BA: MemLdRfVar from_stack_1.htmFile
  loc_BD25BD: LdPrVar
  loc_BD25BF: LateMemCall
  loc_BD25C5: FFreeStr var_B4 = ""
  loc_BD25CC: FFree1Var var_C4 = ""
  loc_BD25CF: LitI4 0
  loc_BD25D4: LitI4 0
  loc_BD25D9: LitI2_Byte 0
  loc_BD25DB: LitStr "left"
  loc_BD25DE: FMemLdR4 var_DC(16)
  loc_BD25E3: LitStr "<br>"
  loc_BD25E6: ConcatStr
  loc_BD25E7: FStStrNoPop var_B4
  loc_BD25EA: FMemLdR4 var_DC(20)
  loc_BD25EF: ConcatStr
  loc_BD25F0: FStStrNoPop var_F0
  loc_BD25F3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD25F8: CVarStr var_C4
  loc_BD25FB: PopAdLdVar
  loc_BD25FC: FLdPr Me
  loc_BD25FF: MemLdRfVar from_stack_1.htmFile
  loc_BD2602: LdPrVar
  loc_BD2604: LateMemCall
  loc_BD260A: FFreeStr var_B4 = ""
  loc_BD2611: FFree1Var var_C4 = ""
  loc_BD2614: LitI4 0
  loc_BD2619: LitI4 0
  loc_BD261E: LitI2_Byte 0
  loc_BD2620: LitStr "left"
  loc_BD2623: FMemLdR4 var_DC(24)
  loc_BD2628: LitStr "<br>"
  loc_BD262B: ConcatStr
  loc_BD262C: FStStrNoPop var_B4
  loc_BD262F: FMemLdR4 var_DC(28)
  loc_BD2634: ConcatStr
  loc_BD2635: FStStrNoPop var_F0
  loc_BD2638: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD263D: CVarStr var_C4
  loc_BD2640: PopAdLdVar
  loc_BD2641: FLdPr Me
  loc_BD2644: MemLdRfVar from_stack_1.htmFile
  loc_BD2647: LdPrVar
  loc_BD2649: LateMemCall
  loc_BD264F: FFreeStr var_B4 = ""
  loc_BD2656: FFree1Var var_C4 = ""
  loc_BD2659: LitI4 0
  loc_BD265E: LitI4 0
  loc_BD2663: LitI2_Byte 0
  loc_BD2665: LitStr "left"
  loc_BD2668: FMemLdR4 var_DC(32)
  loc_BD266D: LitStr "<br>"
  loc_BD2670: ConcatStr
  loc_BD2671: FStStrNoPop var_B4
  loc_BD2674: FMemLdR4 var_DC(36)
  loc_BD2679: ConcatStr
  loc_BD267A: FStStrNoPop var_F0
  loc_BD267D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD2682: CVarStr var_C4
  loc_BD2685: PopAdLdVar
  loc_BD2686: FLdPr Me
  loc_BD2689: MemLdRfVar from_stack_1.htmFile
  loc_BD268C: LdPrVar
  loc_BD268E: LateMemCall
  loc_BD2694: FFreeStr var_B4 = ""
  loc_BD269B: FFree1Var var_C4 = ""
  loc_BD269E: LitI4 0
  loc_BD26A3: LitI4 0
  loc_BD26A8: LitI2_Byte 0
  loc_BD26AA: LitStr "left"
  loc_BD26AD: FMemLdR4 var_DC(40)
  loc_BD26B2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD26B7: CVarStr var_C4
  loc_BD26BA: PopAdLdVar
  loc_BD26BB: FLdPr Me
  loc_BD26BE: MemLdRfVar from_stack_1.htmFile
  loc_BD26C1: LdPrVar
  loc_BD26C3: LateMemCall
  loc_BD26C9: FFree1Var var_C4 = ""
  loc_BD26CC: FLdPr Me
  loc_BD26CF: MemLdI2 global_136
  loc_BD26D2: FStI2 var_FE
  loc_BD26D5: FLdI2 var_FE
  loc_BD26D8: LitI2_Byte 1
  loc_BD26DA: EqI2
  loc_BD26DB: BranchF loc_BD2726
  loc_BD26DE: LitI4 0
  loc_BD26E3: LitI4 0
  loc_BD26E8: LitI2_Byte 0
  loc_BD26EA: LitStr "center"
  loc_BD26ED: FMemLdR4 var_DC(68)
  loc_BD26F2: LitStr "/"
  loc_BD26F5: ConcatStr
  loc_BD26F6: FStStrNoPop var_B4
  loc_BD26F9: FMemLdR4 var_DC(72)
  loc_BD26FE: ConcatStr
  loc_BD26FF: FStStrNoPop var_F0
  loc_BD2702: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD2707: CVarStr var_C4
  loc_BD270A: PopAdLdVar
  loc_BD270B: FLdPr Me
  loc_BD270E: MemLdRfVar from_stack_1.htmFile
  loc_BD2711: LdPrVar
  loc_BD2713: LateMemCall
  loc_BD2719: FFreeStr var_B4 = ""
  loc_BD2720: FFree1Var var_C4 = ""
  loc_BD2723: Branch loc_BD28B7
  loc_BD2726: FLdI2 var_FE
  loc_BD2729: LitI2_Byte 2
  loc_BD272B: EqI2
  loc_BD272C: BranchF loc_BD278B
  loc_BD272F: LitI4 0
  loc_BD2734: LitI4 0
  loc_BD2739: LitI2_Byte 0
  loc_BD273B: LitStr "center"
  loc_BD273E: FMemLdR4 var_DC(76)
  loc_BD2743: LitStr "/"
  loc_BD2746: ConcatStr
  loc_BD2747: FStStrNoPop var_B4
  loc_BD274A: FMemLdR4 var_DC(80)
  loc_BD274F: ConcatStr
  loc_BD2750: FStStrNoPop var_F0
  loc_BD2753: LitStr "/"
  loc_BD2756: ConcatStr
  loc_BD2757: FStStrNoPop var_F4
  loc_BD275A: FMemLdR4 var_DC(84)
  loc_BD275F: ConcatStr
  loc_BD2760: FStStrNoPop var_F8
  loc_BD2763: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD2768: CVarStr var_C4
  loc_BD276B: PopAdLdVar
  loc_BD276C: FLdPr Me
  loc_BD276F: MemLdRfVar from_stack_1.htmFile
  loc_BD2772: LdPrVar
  loc_BD2774: LateMemCall
  loc_BD277A: FFreeStr var_B4 = "": var_F0 = "": var_F4 = ""
  loc_BD2785: FFree1Var var_C4 = ""
  loc_BD2788: Branch loc_BD28B7
  loc_BD278B: FLdI2 var_FE
  loc_BD278E: LitI2_Byte 3
  loc_BD2790: EqI2
  loc_BD2791: BranchF loc_BD2818
  loc_BD2794: LitI4 0
  loc_BD2799: LitI4 0
  loc_BD279E: LitI2_Byte 0
  loc_BD27A0: LitStr "center"
  loc_BD27A3: FMemLdR4 var_DC(76)
  loc_BD27A8: LitStr "/"
  loc_BD27AB: ConcatStr
  loc_BD27AC: FStStrNoPop var_B4
  loc_BD27AF: FMemLdR4 var_DC(80)
  loc_BD27B4: ConcatStr
  loc_BD27B5: FStStrNoPop var_F0
  loc_BD27B8: LitStr "/"
  loc_BD27BB: ConcatStr
  loc_BD27BC: FStStrNoPop var_F4
  loc_BD27BF: FMemLdR4 var_DC(84)
  loc_BD27C4: ConcatStr
  loc_BD27C5: FStStrNoPop var_F8
  loc_BD27C8: LitStr "/"
  loc_BD27CB: ConcatStr
  loc_BD27CC: FStStrNoPop var_FC
  loc_BD27CF: FMemLdR4 var_DC(88)
  loc_BD27D4: ConcatStr
  loc_BD27D5: FStStrNoPop var_104
  loc_BD27D8: LitStr "<br>"
  loc_BD27DB: ConcatStr
  loc_BD27DC: FStStrNoPop var_108
  loc_BD27DF: FMemLdR4 var_DC(92)
  loc_BD27E4: ConcatStr
  loc_BD27E5: FStStrNoPop var_10C
  loc_BD27E8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD27ED: CVarStr var_C4
  loc_BD27F0: PopAdLdVar
  loc_BD27F1: FLdPr Me
  loc_BD27F4: MemLdRfVar from_stack_1.htmFile
  loc_BD27F7: LdPrVar
  loc_BD27F9: LateMemCall
  loc_BD27FF: FFreeStr var_B4 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = ""
  loc_BD2812: FFree1Var var_C4 = ""
  loc_BD2815: Branch loc_BD28B7
  loc_BD2818: FLdI2 var_FE
  loc_BD281B: LitI2_Byte 4
  loc_BD281D: EqI2
  loc_BD281E: BranchF loc_BD2869
  loc_BD2821: LitI4 0
  loc_BD2826: LitI4 0
  loc_BD282B: LitI2_Byte 0
  loc_BD282D: LitStr "center"
  loc_BD2830: FMemLdR4 var_DC(96)
  loc_BD2835: LitStr "<br>"
  loc_BD2838: ConcatStr
  loc_BD2839: FStStrNoPop var_B4
  loc_BD283C: FMemLdR4 var_DC(92)
  loc_BD2841: ConcatStr
  loc_BD2842: FStStrNoPop var_F0
  loc_BD2845: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD284A: CVarStr var_C4
  loc_BD284D: PopAdLdVar
  loc_BD284E: FLdPr Me
  loc_BD2851: MemLdRfVar from_stack_1.htmFile
  loc_BD2854: LdPrVar
  loc_BD2856: LateMemCall
  loc_BD285C: FFreeStr var_B4 = ""
  loc_BD2863: FFree1Var var_C4 = ""
  loc_BD2866: Branch loc_BD28B7
  loc_BD2869: FLdI2 var_FE
  loc_BD286C: LitI2_Byte 5
  loc_BD286E: EqI2
  loc_BD286F: BranchF loc_BD28B7
  loc_BD2872: LitI4 0
  loc_BD2877: LitI4 0
  loc_BD287C: LitI2_Byte 0
  loc_BD287E: LitStr "center"
  loc_BD2881: FMemLdR4 var_DC(96)
  loc_BD2886: LitStr "<br>"
  loc_BD2889: ConcatStr
  loc_BD288A: FStStrNoPop var_B4
  loc_BD288D: FMemLdR4 var_DC(100)
  loc_BD2892: ConcatStr
  loc_BD2893: FStStrNoPop var_F0
  loc_BD2896: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD289B: CVarStr var_C4
  loc_BD289E: PopAdLdVar
  loc_BD289F: FLdPr Me
  loc_BD28A2: MemLdRfVar from_stack_1.htmFile
  loc_BD28A5: LdPrVar
  loc_BD28A7: LateMemCall
  loc_BD28AD: FFreeStr var_B4 = ""
  loc_BD28B4: FFree1Var var_C4 = ""
  loc_BD28B7: LitI4 0
  loc_BD28BC: LitI4 0
  loc_BD28C1: LitI2_Byte 0
  loc_BD28C3: LitStr "left"
  loc_BD28C6: FMemLdR4 var_DC(44)
  loc_BD28CB: LitStr "<br>"
  loc_BD28CE: ConcatStr
  loc_BD28CF: FStStrNoPop var_B4
  loc_BD28D2: FMemLdR4 var_DC(48)
  loc_BD28D7: ConcatStr
  loc_BD28D8: FStStrNoPop var_F0
  loc_BD28DB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD28E0: CVarStr var_C4
  loc_BD28E3: PopAdLdVar
  loc_BD28E4: FLdPr Me
  loc_BD28E7: MemLdRfVar from_stack_1.htmFile
  loc_BD28EA: LdPrVar
  loc_BD28EC: LateMemCall
  loc_BD28F2: FFreeStr var_B4 = ""
  loc_BD28F9: FFree1Var var_C4 = ""
  loc_BD28FC: LitI4 0
  loc_BD2901: LitI4 0
  loc_BD2906: LitI2_Byte 0
  loc_BD2908: LitStr "right"
  loc_BD290B: FMemLdR4 var_DC(52)
  loc_BD2910: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD2915: CVarStr var_C4
  loc_BD2918: PopAdLdVar
  loc_BD2919: FLdPr Me
  loc_BD291C: MemLdRfVar from_stack_1.htmFile
  loc_BD291F: LdPrVar
  loc_BD2921: LateMemCall
  loc_BD2927: FFree1Var var_C4 = ""
  loc_BD292A: LitI4 0
  loc_BD292F: LitI4 0
  loc_BD2934: LitI2_Byte 0
  loc_BD2936: LitStr "center"
  loc_BD2939: FMemLdR4 var_DC(56)
  loc_BD293E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD2943: CVarStr var_C4
  loc_BD2946: PopAdLdVar
  loc_BD2947: FLdPr Me
  loc_BD294A: MemLdRfVar from_stack_1.htmFile
  loc_BD294D: LdPrVar
  loc_BD294F: LateMemCall
  loc_BD2955: FFree1Var var_C4 = ""
  loc_BD2958: LitI4 0
  loc_BD295D: LitI4 0
  loc_BD2962: LitI2_Byte 0
  loc_BD2964: LitStr "left"
  loc_BD2967: FMemLdR4 var_DC(60)
  loc_BD296C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD2971: CVarStr var_C4
  loc_BD2974: PopAdLdVar
  loc_BD2975: FLdPr Me
  loc_BD2978: MemLdRfVar from_stack_1.htmFile
  loc_BD297B: LdPrVar
  loc_BD297D: LateMemCall
  loc_BD2983: FFree1Var var_C4 = ""
  loc_BD2986: LitI4 0
  loc_BD298B: LitI4 0
  loc_BD2990: LitI2_Byte 0
  loc_BD2992: LitStr "left"
  loc_BD2995: FMemLdR4 var_DC(64)
  loc_BD299A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BD299F: CVarStr var_C4
  loc_BD29A2: PopAdLdVar
  loc_BD29A3: FLdPr Me
  loc_BD29A6: MemLdRfVar from_stack_1.htmFile
  loc_BD29A9: LdPrVar
  loc_BD29AB: LateMemCall
  loc_BD29B1: FFree1Var var_C4 = ""
  loc_BD29B4: LitI4 0
  loc_BD29B9: FStR4 var_DC
  loc_BD29BC: AryUnlock
  loc_BD29BF: AryUnlock
  loc_BD29C2: LitVarStr var_9C, "     </tr>"
  loc_BD29C7: PopAdLdVar
  loc_BD29C8: FLdPr Me
  loc_BD29CB: MemLdRfVar from_stack_1.htmFile
  loc_BD29CE: LdPrVar
  loc_BD29D0: LateMemCall
  loc_BD29D6: FLdPr Me
  loc_BD29D9: MemLdRfVar from_stack_1.global_140
  loc_BD29DC: NextI4 var_D0, loc_BD23CA
  loc_BD29E1: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BD29E6: PopAdLdVar
  loc_BD29E7: FLdPr Me
  loc_BD29EA: MemLdRfVar from_stack_1.htmFile
  loc_BD29ED: LdPrVar
  loc_BD29EF: LateMemCall
  loc_BD29F5: LitVarStr var_9C, "     <th colspan=""9"" align=""left"">&nbsp;</th>"
  loc_BD29FA: PopAdLdVar
  loc_BD29FB: FLdPr Me
  loc_BD29FE: MemLdRfVar from_stack_1.htmFile
  loc_BD2A01: LdPrVar
  loc_BD2A03: LateMemCall
  loc_BD2A09: FLdPr Me
  loc_BD2A0C: MemLdI2 global_136
  loc_BD2A0F: FStI2 var_10E
  loc_BD2A12: FLdI2 var_10E
  loc_BD2A15: LitI2_Byte 1
  loc_BD2A17: EqI2
  loc_BD2A18: BranchF loc_BD2A66
  loc_BD2A1B: LitVarStr var_9C, "     <td class=""Totales"">Total Preventiva:</td>"
  loc_BD2A20: PopAdLdVar
  loc_BD2A21: FLdPr Me
  loc_BD2A24: MemLdRfVar from_stack_1.htmFile
  loc_BD2A27: LdPrVar
  loc_BD2A29: LateMemCall
  loc_BD2A2F: LitStr "        <td align=""right"" class=""Totales"">"
  loc_BD2A32: FLdPr Me
  loc_BD2A35: MemLdI2 global_136
  loc_BD2A38: CI4UI1
  loc_BD2A39: FLdPr Me
  loc_BD2A3C: MemLdStr global_132
  loc_BD2A3F: Ary1LdPr
  loc_BD2A40: MemLdStr global_4
  loc_BD2A43: ConcatStr
  loc_BD2A44: FStStrNoPop var_B4
  loc_BD2A47: LitStr "</td>"
  loc_BD2A4A: ConcatStr
  loc_BD2A4B: CVarStr var_C4
  loc_BD2A4E: PopAdLdVar
  loc_BD2A4F: FLdPr Me
  loc_BD2A52: MemLdRfVar from_stack_1.htmFile
  loc_BD2A55: LdPrVar
  loc_BD2A57: LateMemCall
  loc_BD2A5D: FFree1Str var_B4
  loc_BD2A60: FFree1Var var_C4 = ""
  loc_BD2A63: Branch loc_BD2BB3
  loc_BD2A66: FLdI2 var_10E
  loc_BD2A69: LitI2_Byte 2
  loc_BD2A6B: EqI2
  loc_BD2A6C: BranchF loc_BD2ABA
  loc_BD2A6F: LitVarStr var_9C, "     <td class=""Totales"">Total Definitiva:</td>"
  loc_BD2A74: PopAdLdVar
  loc_BD2A75: FLdPr Me
  loc_BD2A78: MemLdRfVar from_stack_1.htmFile
  loc_BD2A7B: LdPrVar
  loc_BD2A7D: LateMemCall
  loc_BD2A83: LitStr "        <td align=""right"" class=""Totales"">"
  loc_BD2A86: FLdPr Me
  loc_BD2A89: MemLdI2 global_136
  loc_BD2A8C: CI4UI1
  loc_BD2A8D: FLdPr Me
  loc_BD2A90: MemLdStr global_132
  loc_BD2A93: Ary1LdPr
  loc_BD2A94: MemLdStr global_4
  loc_BD2A97: ConcatStr
  loc_BD2A98: FStStrNoPop var_B4
  loc_BD2A9B: LitStr "</td>"
  loc_BD2A9E: ConcatStr
  loc_BD2A9F: CVarStr var_C4
  loc_BD2AA2: PopAdLdVar
  loc_BD2AA3: FLdPr Me
  loc_BD2AA6: MemLdRfVar from_stack_1.htmFile
  loc_BD2AA9: LdPrVar
  loc_BD2AAB: LateMemCall
  loc_BD2AB1: FFree1Str var_B4
  loc_BD2AB4: FFree1Var var_C4 = ""
  loc_BD2AB7: Branch loc_BD2BB3
  loc_BD2ABA: FLdI2 var_10E
  loc_BD2ABD: LitI2_Byte 3
  loc_BD2ABF: EqI2
  loc_BD2AC0: BranchF loc_BD2B0E
  loc_BD2AC3: LitVarStr var_9C, "     <td class=""Totales"">Total Devengado:</td>"
  loc_BD2AC8: PopAdLdVar
  loc_BD2AC9: FLdPr Me
  loc_BD2ACC: MemLdRfVar from_stack_1.htmFile
  loc_BD2ACF: LdPrVar
  loc_BD2AD1: LateMemCall
  loc_BD2AD7: LitStr "        <td align=""right"" class=""Totales"">"
  loc_BD2ADA: FLdPr Me
  loc_BD2ADD: MemLdI2 global_136
  loc_BD2AE0: CI4UI1
  loc_BD2AE1: FLdPr Me
  loc_BD2AE4: MemLdStr global_132
  loc_BD2AE7: Ary1LdPr
  loc_BD2AE8: MemLdStr global_4
  loc_BD2AEB: ConcatStr
  loc_BD2AEC: FStStrNoPop var_B4
  loc_BD2AEF: LitStr "</td>"
  loc_BD2AF2: ConcatStr
  loc_BD2AF3: CVarStr var_C4
  loc_BD2AF6: PopAdLdVar
  loc_BD2AF7: FLdPr Me
  loc_BD2AFA: MemLdRfVar from_stack_1.htmFile
  loc_BD2AFD: LdPrVar
  loc_BD2AFF: LateMemCall
  loc_BD2B05: FFree1Str var_B4
  loc_BD2B08: FFree1Var var_C4 = ""
  loc_BD2B0B: Branch loc_BD2BB3
  loc_BD2B0E: FLdI2 var_10E
  loc_BD2B11: LitI2_Byte 4
  loc_BD2B13: EqI2
  loc_BD2B14: BranchF loc_BD2B62
  loc_BD2B17: LitVarStr var_9C, "     <td class=""Totales"">Total Mandado a Pagar:</td>"
  loc_BD2B1C: PopAdLdVar
  loc_BD2B1D: FLdPr Me
  loc_BD2B20: MemLdRfVar from_stack_1.htmFile
  loc_BD2B23: LdPrVar
  loc_BD2B25: LateMemCall
  loc_BD2B2B: LitStr "        <td align=""right"" class=""Totales"">"
  loc_BD2B2E: FLdPr Me
  loc_BD2B31: MemLdI2 global_136
  loc_BD2B34: CI4UI1
  loc_BD2B35: FLdPr Me
  loc_BD2B38: MemLdStr global_132
  loc_BD2B3B: Ary1LdPr
  loc_BD2B3C: MemLdStr global_4
  loc_BD2B3F: ConcatStr
  loc_BD2B40: FStStrNoPop var_B4
  loc_BD2B43: LitStr "</td>"
  loc_BD2B46: ConcatStr
  loc_BD2B47: CVarStr var_C4
  loc_BD2B4A: PopAdLdVar
  loc_BD2B4B: FLdPr Me
  loc_BD2B4E: MemLdRfVar from_stack_1.htmFile
  loc_BD2B51: LdPrVar
  loc_BD2B53: LateMemCall
  loc_BD2B59: FFree1Str var_B4
  loc_BD2B5C: FFree1Var var_C4 = ""
  loc_BD2B5F: Branch loc_BD2BB3
  loc_BD2B62: FLdI2 var_10E
  loc_BD2B65: LitI2_Byte 5
  loc_BD2B67: EqI2
  loc_BD2B68: BranchF loc_BD2BB3
  loc_BD2B6B: LitVarStr var_9C, "     <td class=""Totales"">Total Pagado:</td>"
  loc_BD2B70: PopAdLdVar
  loc_BD2B71: FLdPr Me
  loc_BD2B74: MemLdRfVar from_stack_1.htmFile
  loc_BD2B77: LdPrVar
  loc_BD2B79: LateMemCall
  loc_BD2B7F: LitStr "        <td align=""right"" class=""Totales"">"
  loc_BD2B82: FLdPr Me
  loc_BD2B85: MemLdI2 global_136
  loc_BD2B88: CI4UI1
  loc_BD2B89: FLdPr Me
  loc_BD2B8C: MemLdStr global_132
  loc_BD2B8F: Ary1LdPr
  loc_BD2B90: MemLdStr global_4
  loc_BD2B93: ConcatStr
  loc_BD2B94: FStStrNoPop var_B4
  loc_BD2B97: LitStr "</td>"
  loc_BD2B9A: ConcatStr
  loc_BD2B9B: CVarStr var_C4
  loc_BD2B9E: PopAdLdVar
  loc_BD2B9F: FLdPr Me
  loc_BD2BA2: MemLdRfVar from_stack_1.htmFile
  loc_BD2BA5: LdPrVar
  loc_BD2BA7: LateMemCall
  loc_BD2BAD: FFree1Str var_B4
  loc_BD2BB0: FFree1Var var_C4 = ""
  loc_BD2BB3: LitVarStr var_9C, "        <th colspan=""3"">&nbsp;</th>"
  loc_BD2BB8: PopAdLdVar
  loc_BD2BB9: FLdPr Me
  loc_BD2BBC: MemLdRfVar from_stack_1.htmFile
  loc_BD2BBF: LdPrVar
  loc_BD2BC1: LateMemCall
  loc_BD2BC7: LitVarStr var_9C, "     </tr>"
  loc_BD2BCC: PopAdLdVar
  loc_BD2BCD: FLdPr Me
  loc_BD2BD0: MemLdRfVar from_stack_1.htmFile
  loc_BD2BD3: LdPrVar
  loc_BD2BD5: LateMemCall
  loc_BD2BDB: FLdPr Me
  loc_BD2BDE: MemLdRfVar from_stack_1.global_136
  loc_BD2BE1: NextI2 var_8C, loc_BD215E
  loc_BD2BE6: FLdRfVar var_C6
  loc_BD2BE9: FLdPr Me
  loc_BD2BEC: VCallAd Control_ID_ChkMostrarResumen
  loc_BD2BEF: FStAdFunc var_88
  loc_BD2BF2: FLdPr var_88
  loc_BD2BF5:  = Me.Value
  loc_BD2BFA: FLdI2 var_C6
  loc_BD2BFD: CI4UI1
  loc_BD2BFE: LitI4 1
  loc_BD2C03: EqI4
  loc_BD2C04: FFree1Ad var_88
  loc_BD2C07: BranchF loc_BD360D
  loc_BD2C0A: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BD2C0F: PopAdLdVar
  loc_BD2C10: FLdPr Me
  loc_BD2C13: MemLdRfVar from_stack_1.htmFile
  loc_BD2C16: LdPrVar
  loc_BD2C18: LateMemCall
  loc_BD2C1E: LitVarStr var_9C, "        <th colspan=""12"">&nbsp;</th>"
  loc_BD2C23: PopAdLdVar
  loc_BD2C24: FLdPr Me
  loc_BD2C27: MemLdRfVar from_stack_1.htmFile
  loc_BD2C2A: LdPrVar
  loc_BD2C2C: LateMemCall
  loc_BD2C32: LitVarStr var_9C, "     </tr>"
  loc_BD2C37: PopAdLdVar
  loc_BD2C38: FLdPr Me
  loc_BD2C3B: MemLdRfVar from_stack_1.htmFile
  loc_BD2C3E: LdPrVar
  loc_BD2C40: LateMemCall
  loc_BD2C46: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BD2C4B: PopAdLdVar
  loc_BD2C4C: FLdPr Me
  loc_BD2C4F: MemLdRfVar from_stack_1.htmFile
  loc_BD2C52: LdPrVar
  loc_BD2C54: LateMemCall
  loc_BD2C5A: LitVarStr var_9C, "     <td class=""Totales"">RESUMEN</td>"
  loc_BD2C5F: PopAdLdVar
  loc_BD2C60: FLdPr Me
  loc_BD2C63: MemLdRfVar from_stack_1.htmFile
  loc_BD2C66: LdPrVar
  loc_BD2C68: LateMemCall
  loc_BD2C6E: LitVarStr var_9C, "     <td class=""Totales"">Total</td>"
  loc_BD2C73: PopAdLdVar
  loc_BD2C74: FLdPr Me
  loc_BD2C77: MemLdRfVar from_stack_1.htmFile
  loc_BD2C7A: LdPrVar
  loc_BD2C7C: LateMemCall
  loc_BD2C82: LitVarStr var_9C, "     <td class=""Totales"">Saldo</td>"
  loc_BD2C87: PopAdLdVar
  loc_BD2C88: FLdPr Me
  loc_BD2C8B: MemLdRfVar from_stack_1.htmFile
  loc_BD2C8E: LdPrVar
  loc_BD2C90: LateMemCall
  loc_BD2C96: LitVarStr var_9C, "        <th colspan=""9"">&nbsp;</th>"
  loc_BD2C9B: PopAdLdVar
  loc_BD2C9C: FLdPr Me
  loc_BD2C9F: MemLdRfVar from_stack_1.htmFile
  loc_BD2CA2: LdPrVar
  loc_BD2CA4: LateMemCall
  loc_BD2CAA: LitVarStr var_9C, "     </tr>"
  loc_BD2CAF: PopAdLdVar
  loc_BD2CB0: FLdPr Me
  loc_BD2CB3: MemLdRfVar from_stack_1.htmFile
  loc_BD2CB6: LdPrVar
  loc_BD2CB8: LateMemCall
  loc_BD2CBE: FLdRfVar var_C6
  loc_BD2CC1: FLdRfVar var_114
  loc_BD2CC4: LitI2_Byte 1
  loc_BD2CC6: FLdPr Me
  loc_BD2CC9: VCallAd Control_ID_chkEtapa
  loc_BD2CCC: FStAdFunc var_88
  loc_BD2CCF: FLdPr var_88
  loc_BD2CD2: Set from_stack_2 = Me(from_stack_1)
  loc_BD2CD7: FLdPr var_114
  loc_BD2CDA:  = Me.Value
  loc_BD2CDF: FLdI2 var_C6
  loc_BD2CE2: CI4UI1
  loc_BD2CE3: LitI4 1
  loc_BD2CE8: EqI4
  loc_BD2CE9: FFreeAd var_88 = ""
  loc_BD2CF0: BranchF loc_BD2ECB
  loc_BD2CF3: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BD2CF8: PopAdLdVar
  loc_BD2CF9: FLdPr Me
  loc_BD2CFC: MemLdRfVar from_stack_1.htmFile
  loc_BD2CFF: LdPrVar
  loc_BD2D01: LateMemCall
  loc_BD2D07: LitVarStr var_9C, "     <td class=""Totales"">Preventiva</td>"
  loc_BD2D0C: PopAdLdVar
  loc_BD2D0D: FLdPr Me
  loc_BD2D10: MemLdRfVar from_stack_1.htmFile
  loc_BD2D13: LdPrVar
  loc_BD2D15: LateMemCall
  loc_BD2D1B: LitVarStr var_128, "0"
  loc_BD2D20: FStVarCopyObj var_C4
  loc_BD2D23: FLdRfVar var_C4
  loc_BD2D26: LitI4 1
  loc_BD2D2B: FLdPr Me
  loc_BD2D2E: MemLdStr global_132
  loc_BD2D31: AryLock
  loc_BD2D34: Ary1LdPr
  loc_BD2D35: MemLdRfVar from_stack_1.global_4
  loc_BD2D38: CVarRef
  loc_BD2D3D: LitI4 1
  loc_BD2D42: FLdPr Me
  loc_BD2D45: MemLdStr global_132
  loc_BD2D48: Ary1LdPr
  loc_BD2D49: MemLdStr global_4
  loc_BD2D4C: LitStr vbNullString
  loc_BD2D4F: NeStr
  loc_BD2D51: CVarBoolI2 var_9C
  loc_BD2D55: FLdRfVar var_EC
  loc_BD2D58: ImpAdCallFPR4  = IIf(, , )
  loc_BD2D5D: AryUnlock
  loc_BD2D60: LitStr "        <th align=""right"">"
  loc_BD2D63: LitI4 1
  loc_BD2D68: LitI4 1
  loc_BD2D6D: LitVarStr var_138, "currency"
  loc_BD2D72: FStVarCopyObj var_148
  loc_BD2D75: FLdRfVar var_148
  loc_BD2D78: FLdRfVar var_EC
  loc_BD2D7B: ImpAdCallI2 Format$(, )
  loc_BD2D80: FStStrNoPop var_B4
  loc_BD2D83: ConcatStr
  loc_BD2D84: FStStrNoPop var_F0
  loc_BD2D87: LitStr "</th>"
  loc_BD2D8A: ConcatStr
  loc_BD2D8B: CVarStr var_158
  loc_BD2D8E: PopAdLdVar
  loc_BD2D8F: FLdPr Me
  loc_BD2D92: MemLdRfVar from_stack_1.htmFile
  loc_BD2D95: LdPrVar
  loc_BD2D97: LateMemCall
  loc_BD2D9D: FFreeStr var_B4 = ""
  loc_BD2DA4: FFreeVar var_9C = "": var_C4 = "": var_EC = "": var_148 = ""
  loc_BD2DB1: LitVarI2 var_C4, 0
  loc_BD2DB6: LitI4 1
  loc_BD2DBB: FLdPr Me
  loc_BD2DBE: MemLdStr global_132
  loc_BD2DC1: AryLock
  loc_BD2DC4: Ary1LdPr
  loc_BD2DC5: MemLdRfVar from_stack_1.global_4
  loc_BD2DC8: CVarRef
  loc_BD2DCD: LitI4 1
  loc_BD2DD2: FLdPr Me
  loc_BD2DD5: MemLdStr global_132
  loc_BD2DD8: Ary1LdPr
  loc_BD2DD9: MemLdStr global_4
  loc_BD2DDC: LitStr vbNullString
  loc_BD2DDF: NeStr
  loc_BD2DE1: CVarBoolI2 var_9C
  loc_BD2DE5: FLdRfVar var_EC
  loc_BD2DE8: ImpAdCallFPR4  = IIf(, , )
  loc_BD2DED: AryUnlock
  loc_BD2DF0: LitVarI2 var_148, 0
  loc_BD2DF5: LitI4 2
  loc_BD2DFA: FLdPr Me
  loc_BD2DFD: MemLdStr global_132
  loc_BD2E00: AryLock
  loc_BD2E03: Ary1LdPr
  loc_BD2E04: MemLdRfVar from_stack_1.global_4
  loc_BD2E07: CVarRef
  loc_BD2E0C: LitI4 2
  loc_BD2E11: FLdPr Me
  loc_BD2E14: MemLdStr global_132
  loc_BD2E17: Ary1LdPr
  loc_BD2E18: MemLdStr global_4
  loc_BD2E1B: LitStr vbNullString
  loc_BD2E1E: NeStr
  loc_BD2E20: CVarBoolI2 var_138
  loc_BD2E24: FLdRfVar var_158
  loc_BD2E27: ImpAdCallFPR4  = IIf(, , )
  loc_BD2E2C: AryUnlock
  loc_BD2E2F: FLdRfVar var_1AC
  loc_BD2E32: FLdRfVar var_EC
  loc_BD2E35: FLdRfVar var_158
  loc_BD2E38: SubVar var_18C
  loc_BD2E3C: FStVar var_19C
  loc_BD2E40: FLdRfVar var_19C
  loc_BD2E43: ImpAdCallHresult  = CDec()
  loc_BD2E48: LitStr "        <th align=""right"">"
  loc_BD2E4B: LitI4 1
  loc_BD2E50: LitI4 1
  loc_BD2E55: LitVarStr var_1BC, "currency"
  loc_BD2E5A: FStVarCopyObj var_1CC
  loc_BD2E5D: FLdRfVar var_1CC
  loc_BD2E60: FLdRfVar var_1AC
  loc_BD2E63: ImpAdCallI2 Format$(, )
  loc_BD2E68: FStStrNoPop var_B4
  loc_BD2E6B: ConcatStr
  loc_BD2E6C: FStStrNoPop var_F0
  loc_BD2E6F: LitStr "</th>"
  loc_BD2E72: ConcatStr
  loc_BD2E73: CVarStr var_1DC
  loc_BD2E76: PopAdLdVar
  loc_BD2E77: FLdPr Me
  loc_BD2E7A: MemLdRfVar from_stack_1.htmFile
  loc_BD2E7D: LdPrVar
  loc_BD2E7F: LateMemCall
  loc_BD2E85: FFreeStr var_B4 = ""
  loc_BD2E8C: FFreeVar var_9C = "": var_C4 = "": var_138 = "": var_148 = "": var_EC = "": var_158 = "": var_19C = "": var_1AC = "": var_1CC = ""
  loc_BD2EA3: LitVarStr var_9C, "        <th colspan=""9"">&nbsp;</th>"
  loc_BD2EA8: PopAdLdVar
  loc_BD2EA9: FLdPr Me
  loc_BD2EAC: MemLdRfVar from_stack_1.htmFile
  loc_BD2EAF: LdPrVar
  loc_BD2EB1: LateMemCall
  loc_BD2EB7: LitVarStr var_9C, "     </tr>"
  loc_BD2EBC: PopAdLdVar
  loc_BD2EBD: FLdPr Me
  loc_BD2EC0: MemLdRfVar from_stack_1.htmFile
  loc_BD2EC3: LdPrVar
  loc_BD2EC5: LateMemCall
  loc_BD2ECB: FLdRfVar var_C6
  loc_BD2ECE: FLdRfVar var_114
  loc_BD2ED1: LitI2_Byte 2
  loc_BD2ED3: FLdPr Me
  loc_BD2ED6: VCallAd Control_ID_chkEtapa
  loc_BD2ED9: FStAdFunc var_88
  loc_BD2EDC: FLdPr var_88
  loc_BD2EDF: Set from_stack_2 = Me(from_stack_1)
  loc_BD2EE4: FLdPr var_114
  loc_BD2EE7:  = Me.Value
  loc_BD2EEC: FLdI2 var_C6
  loc_BD2EEF: CI4UI1
  loc_BD2EF0: LitI4 1
  loc_BD2EF5: EqI4
  loc_BD2EF6: FFreeAd var_88 = ""
  loc_BD2EFD: BranchF loc_BD30D8
  loc_BD2F00: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BD2F05: PopAdLdVar
  loc_BD2F06: FLdPr Me
  loc_BD2F09: MemLdRfVar from_stack_1.htmFile
  loc_BD2F0C: LdPrVar
  loc_BD2F0E: LateMemCall
  loc_BD2F14: LitVarStr var_9C, "     <td class=""Totales"">Definitiva</td>"
  loc_BD2F19: PopAdLdVar
  loc_BD2F1A: FLdPr Me
  loc_BD2F1D: MemLdRfVar from_stack_1.htmFile
  loc_BD2F20: LdPrVar
  loc_BD2F22: LateMemCall
  loc_BD2F28: LitVarStr var_128, "0"
  loc_BD2F2D: FStVarCopyObj var_C4
  loc_BD2F30: FLdRfVar var_C4
  loc_BD2F33: LitI4 2
  loc_BD2F38: FLdPr Me
  loc_BD2F3B: MemLdStr global_132
  loc_BD2F3E: AryLock
  loc_BD2F41: Ary1LdPr
  loc_BD2F42: MemLdRfVar from_stack_1.global_4
  loc_BD2F45: CVarRef
  loc_BD2F4A: LitI4 2
  loc_BD2F4F: FLdPr Me
  loc_BD2F52: MemLdStr global_132
  loc_BD2F55: Ary1LdPr
  loc_BD2F56: MemLdStr global_4
  loc_BD2F59: LitStr vbNullString
  loc_BD2F5C: NeStr
  loc_BD2F5E: CVarBoolI2 var_9C
  loc_BD2F62: FLdRfVar var_EC
  loc_BD2F65: ImpAdCallFPR4  = IIf(, , )
  loc_BD2F6A: AryUnlock
  loc_BD2F6D: LitStr "        <th align=""right"">"
  loc_BD2F70: LitI4 1
  loc_BD2F75: LitI4 1
  loc_BD2F7A: LitVarStr var_138, "currency"
  loc_BD2F7F: FStVarCopyObj var_148
  loc_BD2F82: FLdRfVar var_148
  loc_BD2F85: FLdRfVar var_EC
  loc_BD2F88: ImpAdCallI2 Format$(, )
  loc_BD2F8D: FStStrNoPop var_B4
  loc_BD2F90: ConcatStr
  loc_BD2F91: FStStrNoPop var_F0
  loc_BD2F94: LitStr "</th>"
  loc_BD2F97: ConcatStr
  loc_BD2F98: CVarStr var_158
  loc_BD2F9B: PopAdLdVar
  loc_BD2F9C: FLdPr Me
  loc_BD2F9F: MemLdRfVar from_stack_1.htmFile
  loc_BD2FA2: LdPrVar
  loc_BD2FA4: LateMemCall
  loc_BD2FAA: FFreeStr var_B4 = ""
  loc_BD2FB1: FFreeVar var_9C = "": var_C4 = "": var_EC = "": var_148 = ""
  loc_BD2FBE: LitVarI2 var_C4, 0
  loc_BD2FC3: LitI4 2
  loc_BD2FC8: FLdPr Me
  loc_BD2FCB: MemLdStr global_132
  loc_BD2FCE: AryLock
  loc_BD2FD1: Ary1LdPr
  loc_BD2FD2: MemLdRfVar from_stack_1.global_4
  loc_BD2FD5: CVarRef
  loc_BD2FDA: LitI4 2
  loc_BD2FDF: FLdPr Me
  loc_BD2FE2: MemLdStr global_132
  loc_BD2FE5: Ary1LdPr
  loc_BD2FE6: MemLdStr global_4
  loc_BD2FE9: LitStr vbNullString
  loc_BD2FEC: NeStr
  loc_BD2FEE: CVarBoolI2 var_9C
  loc_BD2FF2: FLdRfVar var_EC
  loc_BD2FF5: ImpAdCallFPR4  = IIf(, , )
  loc_BD2FFA: AryUnlock
  loc_BD2FFD: LitVarI2 var_148, 0
  loc_BD3002: LitI4 3
  loc_BD3007: FLdPr Me
  loc_BD300A: MemLdStr global_132
  loc_BD300D: AryLock
  loc_BD3010: Ary1LdPr
  loc_BD3011: MemLdRfVar from_stack_1.global_4
  loc_BD3014: CVarRef
  loc_BD3019: LitI4 3
  loc_BD301E: FLdPr Me
  loc_BD3021: MemLdStr global_132
  loc_BD3024: Ary1LdPr
  loc_BD3025: MemLdStr global_4
  loc_BD3028: LitStr vbNullString
  loc_BD302B: NeStr
  loc_BD302D: CVarBoolI2 var_138
  loc_BD3031: FLdRfVar var_158
  loc_BD3034: ImpAdCallFPR4  = IIf(, , )
  loc_BD3039: AryUnlock
  loc_BD303C: FLdRfVar var_1AC
  loc_BD303F: FLdRfVar var_EC
  loc_BD3042: FLdRfVar var_158
  loc_BD3045: SubVar var_18C
  loc_BD3049: FStVar var_19C
  loc_BD304D: FLdRfVar var_19C
  loc_BD3050: ImpAdCallHresult  = CDec()
  loc_BD3055: LitStr "        <th align=""right"">"
  loc_BD3058: LitI4 1
  loc_BD305D: LitI4 1
  loc_BD3062: LitVarStr var_1BC, "currency"
  loc_BD3067: FStVarCopyObj var_1CC
  loc_BD306A: FLdRfVar var_1CC
  loc_BD306D: FLdRfVar var_1AC
  loc_BD3070: ImpAdCallI2 Format$(, )
  loc_BD3075: FStStrNoPop var_B4
  loc_BD3078: ConcatStr
  loc_BD3079: FStStrNoPop var_F0
  loc_BD307C: LitStr "</th>"
  loc_BD307F: ConcatStr
  loc_BD3080: CVarStr var_1DC
  loc_BD3083: PopAdLdVar
  loc_BD3084: FLdPr Me
  loc_BD3087: MemLdRfVar from_stack_1.htmFile
  loc_BD308A: LdPrVar
  loc_BD308C: LateMemCall
  loc_BD3092: FFreeStr var_B4 = ""
  loc_BD3099: FFreeVar var_9C = "": var_C4 = "": var_138 = "": var_148 = "": var_EC = "": var_158 = "": var_19C = "": var_1AC = "": var_1CC = ""
  loc_BD30B0: LitVarStr var_9C, "        <th colspan=""9"">&nbsp;</th>"
  loc_BD30B5: PopAdLdVar
  loc_BD30B6: FLdPr Me
  loc_BD30B9: MemLdRfVar from_stack_1.htmFile
  loc_BD30BC: LdPrVar
  loc_BD30BE: LateMemCall
  loc_BD30C4: LitVarStr var_9C, "     </tr>"
  loc_BD30C9: PopAdLdVar
  loc_BD30CA: FLdPr Me
  loc_BD30CD: MemLdRfVar from_stack_1.htmFile
  loc_BD30D0: LdPrVar
  loc_BD30D2: LateMemCall
  loc_BD30D8: FLdRfVar var_C6
  loc_BD30DB: FLdRfVar var_114
  loc_BD30DE: LitI2_Byte 3
  loc_BD30E0: FLdPr Me
  loc_BD30E3: VCallAd Control_ID_chkEtapa
  loc_BD30E6: FStAdFunc var_88
  loc_BD30E9: FLdPr var_88
  loc_BD30EC: Set from_stack_2 = Me(from_stack_1)
  loc_BD30F1: FLdPr var_114
  loc_BD30F4:  = Me.Value
  loc_BD30F9: FLdI2 var_C6
  loc_BD30FC: CI4UI1
  loc_BD30FD: LitI4 1
  loc_BD3102: EqI4
  loc_BD3103: FFreeAd var_88 = ""
  loc_BD310A: BranchF loc_BD32E5
  loc_BD310D: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BD3112: PopAdLdVar
  loc_BD3113: FLdPr Me
  loc_BD3116: MemLdRfVar from_stack_1.htmFile
  loc_BD3119: LdPrVar
  loc_BD311B: LateMemCall
  loc_BD3121: LitVarStr var_9C, "     <td class=""Totales"">Devengado</td>"
  loc_BD3126: PopAdLdVar
  loc_BD3127: FLdPr Me
  loc_BD312A: MemLdRfVar from_stack_1.htmFile
  loc_BD312D: LdPrVar
  loc_BD312F: LateMemCall
  loc_BD3135: LitVarStr var_128, "0"
  loc_BD313A: FStVarCopyObj var_C4
  loc_BD313D: FLdRfVar var_C4
  loc_BD3140: LitI4 3
  loc_BD3145: FLdPr Me
  loc_BD3148: MemLdStr global_132
  loc_BD314B: AryLock
  loc_BD314E: Ary1LdPr
  loc_BD314F: MemLdRfVar from_stack_1.global_4
  loc_BD3152: CVarRef
  loc_BD3157: LitI4 3
  loc_BD315C: FLdPr Me
  loc_BD315F: MemLdStr global_132
  loc_BD3162: Ary1LdPr
  loc_BD3163: MemLdStr global_4
  loc_BD3166: LitStr vbNullString
  loc_BD3169: NeStr
  loc_BD316B: CVarBoolI2 var_9C
  loc_BD316F: FLdRfVar var_EC
  loc_BD3172: ImpAdCallFPR4  = IIf(, , )
  loc_BD3177: AryUnlock
  loc_BD317A: LitStr "        <th align=""right"">"
  loc_BD317D: LitI4 1
  loc_BD3182: LitI4 1
  loc_BD3187: LitVarStr var_138, "currency"
  loc_BD318C: FStVarCopyObj var_148
  loc_BD318F: FLdRfVar var_148
  loc_BD3192: FLdRfVar var_EC
  loc_BD3195: ImpAdCallI2 Format$(, )
  loc_BD319A: FStStrNoPop var_B4
  loc_BD319D: ConcatStr
  loc_BD319E: FStStrNoPop var_F0
  loc_BD31A1: LitStr "</th>"
  loc_BD31A4: ConcatStr
  loc_BD31A5: CVarStr var_158
  loc_BD31A8: PopAdLdVar
  loc_BD31A9: FLdPr Me
  loc_BD31AC: MemLdRfVar from_stack_1.htmFile
  loc_BD31AF: LdPrVar
  loc_BD31B1: LateMemCall
  loc_BD31B7: FFreeStr var_B4 = ""
  loc_BD31BE: FFreeVar var_9C = "": var_C4 = "": var_EC = "": var_148 = ""
  loc_BD31CB: LitVarI2 var_C4, 0
  loc_BD31D0: LitI4 3
  loc_BD31D5: FLdPr Me
  loc_BD31D8: MemLdStr global_132
  loc_BD31DB: AryLock
  loc_BD31DE: Ary1LdPr
  loc_BD31DF: MemLdRfVar from_stack_1.global_4
  loc_BD31E2: CVarRef
  loc_BD31E7: LitI4 3
  loc_BD31EC: FLdPr Me
  loc_BD31EF: MemLdStr global_132
  loc_BD31F2: Ary1LdPr
  loc_BD31F3: MemLdStr global_4
  loc_BD31F6: LitStr vbNullString
  loc_BD31F9: NeStr
  loc_BD31FB: CVarBoolI2 var_9C
  loc_BD31FF: FLdRfVar var_EC
  loc_BD3202: ImpAdCallFPR4  = IIf(, , )
  loc_BD3207: AryUnlock
  loc_BD320A: LitVarI2 var_148, 0
  loc_BD320F: LitI4 4
  loc_BD3214: FLdPr Me
  loc_BD3217: MemLdStr global_132
  loc_BD321A: AryLock
  loc_BD321D: Ary1LdPr
  loc_BD321E: MemLdRfVar from_stack_1.global_4
  loc_BD3221: CVarRef
  loc_BD3226: LitI4 4
  loc_BD322B: FLdPr Me
  loc_BD322E: MemLdStr global_132
  loc_BD3231: Ary1LdPr
  loc_BD3232: MemLdStr global_4
  loc_BD3235: LitStr vbNullString
  loc_BD3238: NeStr
  loc_BD323A: CVarBoolI2 var_138
  loc_BD323E: FLdRfVar var_158
  loc_BD3241: ImpAdCallFPR4  = IIf(, , )
  loc_BD3246: AryUnlock
  loc_BD3249: FLdRfVar var_1AC
  loc_BD324C: FLdRfVar var_EC
  loc_BD324F: FLdRfVar var_158
  loc_BD3252: SubVar var_18C
  loc_BD3256: FStVar var_19C
  loc_BD325A: FLdRfVar var_19C
  loc_BD325D: ImpAdCallHresult  = CDec()
  loc_BD3262: LitStr "        <th align=""right"">"
  loc_BD3265: LitI4 1
  loc_BD326A: LitI4 1
  loc_BD326F: LitVarStr var_1BC, "currency"
  loc_BD3274: FStVarCopyObj var_1CC
  loc_BD3277: FLdRfVar var_1CC
  loc_BD327A: FLdRfVar var_1AC
  loc_BD327D: ImpAdCallI2 Format$(, )
  loc_BD3282: FStStrNoPop var_B4
  loc_BD3285: ConcatStr
  loc_BD3286: FStStrNoPop var_F0
  loc_BD3289: LitStr "</th>"
  loc_BD328C: ConcatStr
  loc_BD328D: CVarStr var_1DC
  loc_BD3290: PopAdLdVar
  loc_BD3291: FLdPr Me
  loc_BD3294: MemLdRfVar from_stack_1.htmFile
  loc_BD3297: LdPrVar
  loc_BD3299: LateMemCall
  loc_BD329F: FFreeStr var_B4 = ""
  loc_BD32A6: FFreeVar var_9C = "": var_C4 = "": var_138 = "": var_148 = "": var_EC = "": var_158 = "": var_19C = "": var_1AC = "": var_1CC = ""
  loc_BD32BD: LitVarStr var_9C, "        <th colspan=""9"">&nbsp;</th>"
  loc_BD32C2: PopAdLdVar
  loc_BD32C3: FLdPr Me
  loc_BD32C6: MemLdRfVar from_stack_1.htmFile
  loc_BD32C9: LdPrVar
  loc_BD32CB: LateMemCall
  loc_BD32D1: LitVarStr var_9C, "     </tr>"
  loc_BD32D6: PopAdLdVar
  loc_BD32D7: FLdPr Me
  loc_BD32DA: MemLdRfVar from_stack_1.htmFile
  loc_BD32DD: LdPrVar
  loc_BD32DF: LateMemCall
  loc_BD32E5: FLdRfVar var_C6
  loc_BD32E8: FLdRfVar var_114
  loc_BD32EB: LitI2_Byte 4
  loc_BD32ED: FLdPr Me
  loc_BD32F0: VCallAd Control_ID_chkEtapa
  loc_BD32F3: FStAdFunc var_88
  loc_BD32F6: FLdPr var_88
  loc_BD32F9: Set from_stack_2 = Me(from_stack_1)
  loc_BD32FE: FLdPr var_114
  loc_BD3301:  = Me.Value
  loc_BD3306: FLdI2 var_C6
  loc_BD3309: CI4UI1
  loc_BD330A: LitI4 1
  loc_BD330F: EqI4
  loc_BD3310: FFreeAd var_88 = ""
  loc_BD3317: BranchF loc_BD34F2
  loc_BD331A: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BD331F: PopAdLdVar
  loc_BD3320: FLdPr Me
  loc_BD3323: MemLdRfVar from_stack_1.htmFile
  loc_BD3326: LdPrVar
  loc_BD3328: LateMemCall
  loc_BD332E: LitVarStr var_9C, "     <td class=""Totales"">Mandado a pagar</td>"
  loc_BD3333: PopAdLdVar
  loc_BD3334: FLdPr Me
  loc_BD3337: MemLdRfVar from_stack_1.htmFile
  loc_BD333A: LdPrVar
  loc_BD333C: LateMemCall
  loc_BD3342: LitVarStr var_128, "0"
  loc_BD3347: FStVarCopyObj var_C4
  loc_BD334A: FLdRfVar var_C4
  loc_BD334D: LitI4 4
  loc_BD3352: FLdPr Me
  loc_BD3355: MemLdStr global_132
  loc_BD3358: AryLock
  loc_BD335B: Ary1LdPr
  loc_BD335C: MemLdRfVar from_stack_1.global_4
  loc_BD335F: CVarRef
  loc_BD3364: LitI4 4
  loc_BD3369: FLdPr Me
  loc_BD336C: MemLdStr global_132
  loc_BD336F: Ary1LdPr
  loc_BD3370: MemLdStr global_4
  loc_BD3373: LitStr vbNullString
  loc_BD3376: NeStr
  loc_BD3378: CVarBoolI2 var_9C
  loc_BD337C: FLdRfVar var_EC
  loc_BD337F: ImpAdCallFPR4  = IIf(, , )
  loc_BD3384: AryUnlock
  loc_BD3387: LitStr "        <th align=""right"">"
  loc_BD338A: LitI4 1
  loc_BD338F: LitI4 1
  loc_BD3394: LitVarStr var_138, "currency"
  loc_BD3399: FStVarCopyObj var_148
  loc_BD339C: FLdRfVar var_148
  loc_BD339F: FLdRfVar var_EC
  loc_BD33A2: ImpAdCallI2 Format$(, )
  loc_BD33A7: FStStrNoPop var_B4
  loc_BD33AA: ConcatStr
  loc_BD33AB: FStStrNoPop var_F0
  loc_BD33AE: LitStr "</th>"
  loc_BD33B1: ConcatStr
  loc_BD33B2: CVarStr var_158
  loc_BD33B5: PopAdLdVar
  loc_BD33B6: FLdPr Me
  loc_BD33B9: MemLdRfVar from_stack_1.htmFile
  loc_BD33BC: LdPrVar
  loc_BD33BE: LateMemCall
  loc_BD33C4: FFreeStr var_B4 = ""
  loc_BD33CB: FFreeVar var_9C = "": var_C4 = "": var_EC = "": var_148 = ""
  loc_BD33D8: LitVarI2 var_C4, 0
  loc_BD33DD: LitI4 4
  loc_BD33E2: FLdPr Me
  loc_BD33E5: MemLdStr global_132
  loc_BD33E8: AryLock
  loc_BD33EB: Ary1LdPr
  loc_BD33EC: MemLdRfVar from_stack_1.global_4
  loc_BD33EF: CVarRef
  loc_BD33F4: LitI4 4
  loc_BD33F9: FLdPr Me
  loc_BD33FC: MemLdStr global_132
  loc_BD33FF: Ary1LdPr
  loc_BD3400: MemLdStr global_4
  loc_BD3403: LitStr vbNullString
  loc_BD3406: NeStr
  loc_BD3408: CVarBoolI2 var_9C
  loc_BD340C: FLdRfVar var_EC
  loc_BD340F: ImpAdCallFPR4  = IIf(, , )
  loc_BD3414: AryUnlock
  loc_BD3417: LitVarI2 var_148, 0
  loc_BD341C: LitI4 5
  loc_BD3421: FLdPr Me
  loc_BD3424: MemLdStr global_132
  loc_BD3427: AryLock
  loc_BD342A: Ary1LdPr
  loc_BD342B: MemLdRfVar from_stack_1.global_4
  loc_BD342E: CVarRef
  loc_BD3433: LitI4 5
  loc_BD3438: FLdPr Me
  loc_BD343B: MemLdStr global_132
  loc_BD343E: Ary1LdPr
  loc_BD343F: MemLdStr global_4
  loc_BD3442: LitStr vbNullString
  loc_BD3445: NeStr
  loc_BD3447: CVarBoolI2 var_138
  loc_BD344B: FLdRfVar var_158
  loc_BD344E: ImpAdCallFPR4  = IIf(, , )
  loc_BD3453: AryUnlock
  loc_BD3456: FLdRfVar var_1AC
  loc_BD3459: FLdRfVar var_EC
  loc_BD345C: FLdRfVar var_158
  loc_BD345F: SubVar var_18C
  loc_BD3463: FStVar var_19C
  loc_BD3467: FLdRfVar var_19C
  loc_BD346A: ImpAdCallHresult  = CDec()
  loc_BD346F: LitStr "        <th align=""right"">"
  loc_BD3472: LitI4 1
  loc_BD3477: LitI4 1
  loc_BD347C: LitVarStr var_1BC, "currency"
  loc_BD3481: FStVarCopyObj var_1CC
  loc_BD3484: FLdRfVar var_1CC
  loc_BD3487: FLdRfVar var_1AC
  loc_BD348A: ImpAdCallI2 Format$(, )
  loc_BD348F: FStStrNoPop var_B4
  loc_BD3492: ConcatStr
  loc_BD3493: FStStrNoPop var_F0
  loc_BD3496: LitStr "</th>"
  loc_BD3499: ConcatStr
  loc_BD349A: CVarStr var_1DC
  loc_BD349D: PopAdLdVar
  loc_BD349E: FLdPr Me
  loc_BD34A1: MemLdRfVar from_stack_1.htmFile
  loc_BD34A4: LdPrVar
  loc_BD34A6: LateMemCall
  loc_BD34AC: FFreeStr var_B4 = ""
  loc_BD34B3: FFreeVar var_9C = "": var_C4 = "": var_138 = "": var_148 = "": var_EC = "": var_158 = "": var_19C = "": var_1AC = "": var_1CC = ""
  loc_BD34CA: LitVarStr var_9C, "        <th colspan=""9"">&nbsp;</th>"
  loc_BD34CF: PopAdLdVar
  loc_BD34D0: FLdPr Me
  loc_BD34D3: MemLdRfVar from_stack_1.htmFile
  loc_BD34D6: LdPrVar
  loc_BD34D8: LateMemCall
  loc_BD34DE: LitVarStr var_9C, "     </tr>"
  loc_BD34E3: PopAdLdVar
  loc_BD34E4: FLdPr Me
  loc_BD34E7: MemLdRfVar from_stack_1.htmFile
  loc_BD34EA: LdPrVar
  loc_BD34EC: LateMemCall
  loc_BD34F2: FLdRfVar var_C6
  loc_BD34F5: FLdRfVar var_114
  loc_BD34F8: LitI2_Byte 5
  loc_BD34FA: FLdPr Me
  loc_BD34FD: VCallAd Control_ID_chkEtapa
  loc_BD3500: FStAdFunc var_88
  loc_BD3503: FLdPr var_88
  loc_BD3506: Set from_stack_2 = Me(from_stack_1)
  loc_BD350B: FLdPr var_114
  loc_BD350E:  = Me.Value
  loc_BD3513: FLdI2 var_C6
  loc_BD3516: CI4UI1
  loc_BD3517: LitI4 1
  loc_BD351C: EqI4
  loc_BD351D: FFreeAd var_88 = ""
  loc_BD3524: BranchF loc_BD360D
  loc_BD3527: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BD352C: PopAdLdVar
  loc_BD352D: FLdPr Me
  loc_BD3530: MemLdRfVar from_stack_1.htmFile
  loc_BD3533: LdPrVar
  loc_BD3535: LateMemCall
  loc_BD353B: LitVarStr var_9C, "     <td class=""Totales"">Pagado</td>"
  loc_BD3540: PopAdLdVar
  loc_BD3541: FLdPr Me
  loc_BD3544: MemLdRfVar from_stack_1.htmFile
  loc_BD3547: LdPrVar
  loc_BD3549: LateMemCall
  loc_BD354F: LitVarStr var_128, "0"
  loc_BD3554: FStVarCopyObj var_C4
  loc_BD3557: FLdRfVar var_C4
  loc_BD355A: LitI4 5
  loc_BD355F: FLdPr Me
  loc_BD3562: MemLdStr global_132
  loc_BD3565: AryLock
  loc_BD3568: Ary1LdPr
  loc_BD3569: MemLdRfVar from_stack_1.global_4
  loc_BD356C: CVarRef
  loc_BD3571: LitI4 5
  loc_BD3576: FLdPr Me
  loc_BD3579: MemLdStr global_132
  loc_BD357C: Ary1LdPr
  loc_BD357D: MemLdStr global_4
  loc_BD3580: LitStr vbNullString
  loc_BD3583: NeStr
  loc_BD3585: CVarBoolI2 var_9C
  loc_BD3589: FLdRfVar var_EC
  loc_BD358C: ImpAdCallFPR4  = IIf(, , )
  loc_BD3591: AryUnlock
  loc_BD3594: LitStr "        <th align=""right"">"
  loc_BD3597: LitI4 1
  loc_BD359C: LitI4 1
  loc_BD35A1: LitVarStr var_138, "currency"
  loc_BD35A6: FStVarCopyObj var_148
  loc_BD35A9: FLdRfVar var_148
  loc_BD35AC: FLdRfVar var_EC
  loc_BD35AF: ImpAdCallI2 Format$(, )
  loc_BD35B4: FStStrNoPop var_B4
  loc_BD35B7: ConcatStr
  loc_BD35B8: FStStrNoPop var_F0
  loc_BD35BB: LitStr "</th>"
  loc_BD35BE: ConcatStr
  loc_BD35BF: CVarStr var_158
  loc_BD35C2: PopAdLdVar
  loc_BD35C3: FLdPr Me
  loc_BD35C6: MemLdRfVar from_stack_1.htmFile
  loc_BD35C9: LdPrVar
  loc_BD35CB: LateMemCall
  loc_BD35D1: FFreeStr var_B4 = ""
  loc_BD35D8: FFreeVar var_9C = "": var_C4 = "": var_EC = "": var_148 = ""
  loc_BD35E5: LitVarStr var_9C, "        <th colspan=""10"">&nbsp;</th>"
  loc_BD35EA: PopAdLdVar
  loc_BD35EB: FLdPr Me
  loc_BD35EE: MemLdRfVar from_stack_1.htmFile
  loc_BD35F1: LdPrVar
  loc_BD35F3: LateMemCall
  loc_BD35F9: LitVarStr var_9C, "     </tr>"
  loc_BD35FE: PopAdLdVar
  loc_BD35FF: FLdPr Me
  loc_BD3602: MemLdRfVar from_stack_1.htmFile
  loc_BD3605: LdPrVar
  loc_BD3607: LateMemCall
  loc_BD360D: Call Proc_252_54_ABF984()
  loc_BD3612: FLdPr Me
  loc_BD3615: MemLdRfVar from_stack_1.htmFile
  loc_BD3618: LdPrVar
  loc_BD361A: LateMemCall
  loc_BD3620: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_BD3625: ExitProcHresult
End Sub

Private Function Proc_252_52_A2387C(arg_C) 'A2387C
  'Data Table: 4F340C
  loc_A236F0: ILdRf arg_C
  loc_A236F3: FStStrCopy var_88
  loc_A236F6: ILdRf var_88
  loc_A236F9: LitStr vbNullString
  loc_A236FC: NeStr
  loc_A236FE: BranchF loc_A23879
  loc_A23701: LitStr "SELECT IFNULL(Max(FechImpu),'') FechImpu"
  loc_A23704: LitStr " FROM imputacion"
  loc_A23707: ConcatStr
  loc_A23708: FStStrNoPop var_8C
  loc_A2370B: LitStr " WHERE PeriInfo = "
  loc_A2370E: ConcatStr
  loc_A2370F: FStStrNoPop var_98
  loc_A23712: FLdRfVar var_94
  loc_A23715: FLdPr Me
  loc_A23718: VCallAd Control_ID_cboPeriodo
  loc_A2371B: FStAdFunc var_90
  loc_A2371E: FLdPr var_90
  loc_A23721:  = Me.Text
  loc_A23726: ILdRf var_94
  loc_A23729: ConcatStr
  loc_A2372A: FStStrNoPop var_9C
  loc_A2372D: LitStr " AND ExorImpu = '"
  loc_A23730: ConcatStr
  loc_A23731: FStStrNoPop var_A0
  loc_A23734: ILdRf var_88
  loc_A23737: ConcatStr
  loc_A23738: FStStrNoPop var_A4
  loc_A2373B: LitStr "' LIMIT 1;"
  loc_A2373E: ConcatStr
  loc_A2373F: FStStrNoPop var_A8
  loc_A23742: FLdPr Me
  loc_A23745: MemLdRfVar from_stack_1.global_124
  loc_A23748: NewIfNullPr clsimputacion
  loc_A2374B: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A23750: FFreeStr var_8C = "": var_98 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A23761: FFree1Ad var_90
  loc_A23764: FLdRfVar var_AC
  loc_A23767: FLdPr Me
  loc_A2376A: MemLdRfVar from_stack_1.global_124
  loc_A2376D: NewIfNullPr clsimputacion
  loc_A23770: from_stack_1 = clsimputacion.RecordCount
  loc_A23775: ILdRf var_AC
  loc_A23778: LitI4 0
  loc_A2377D: GtI4
  loc_A2377E: BranchF loc_A23879
  loc_A23781: FLdPr Me
  loc_A23784: MemLdRfVar from_stack_1.global_124
  loc_A23787: NewIfNullPr clsimputacion
  loc_A2378A: Call clsimputacion.MoveFirst()
  loc_A2378F: FLdRfVar var_D4
  loc_A23792: FLdRfVar var_C4
  loc_A23795: LitVarStr var_C0, "FechImpu"
  loc_A2379A: PopAdLdVar
  loc_A2379B: FLdRfVar var_B0
  loc_A2379E: FLdRfVar var_90
  loc_A237A1: FLdPr Me
  loc_A237A4: MemLdRfVar from_stack_1.global_124
  loc_A237A7: NewIfNullPr clsimputacion
  loc_A237AA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A237AF: FLdPr var_90
  loc_A237B2:  = Me.Fields
  loc_A237B7: FLdPr var_B0
  loc_A237BA: from_stack_2 = Me.Item(from_stack_1)
  loc_A237BF: FLdPr var_C4
  loc_A237C2:  = Me.Value
  loc_A237C7: FLdRfVar var_D4
  loc_A237CA: LitVarStr var_E4, vbNullString
  loc_A237CF: HardType
  loc_A237D0: EqVarBool
  loc_A237D2: FFreeAd var_90 = "": var_B0 = ""
  loc_A237DB: FFree1Var var_D4 = ""
  loc_A237DE: BranchF loc_A23804
  loc_A237E1: ImpAdLdFPR8 MemVar_C3D04C
  loc_A237E4: CStrDate
  loc_A237E6: CVarStr var_D4
  loc_A237E9: PopAdLdVar
  loc_A237EA: FLdPr Me
  loc_A237ED: VCallAd Control_ID_mskHasta
  loc_A237F0: FStAdFunc var_90
  loc_A237F3: FLdPr var_90
  loc_A237F6: LateIdSt
  loc_A237FB: FFree1Ad var_90
  loc_A237FE: FFree1Var var_D4 = ""
  loc_A23801: Branch loc_A23879
  loc_A23804: FLdRfVar var_C4
  loc_A23807: LitVarStr var_C0, "FechImpu"
  loc_A2380C: PopAdLdVar
  loc_A2380D: FLdRfVar var_B0
  loc_A23810: FLdRfVar var_90
  loc_A23813: FLdPr Me
  loc_A23816: MemLdRfVar from_stack_1.global_124
  loc_A23819: NewIfNullPr clsimputacion
  loc_A2381C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A23821: FLdPr var_90
  loc_A23824:  = Me.Fields
  loc_A23829: FLdPr var_B0
  loc_A2382C: from_stack_2 = Me.Item(from_stack_1)
  loc_A23831: LitI4 1
  loc_A23836: LitI4 1
  loc_A2383B: LitVarStr var_E4, "dd-mm-yyyy"
  loc_A23840: FStVarCopyObj var_F4
  loc_A23843: FLdRfVar var_F4
  loc_A23846: FLdZeroAd var_C4
  loc_A23849: CVarAd
  loc_A2384D: ImpAdCallI2 Format$(, )
  loc_A23852: CVarStr var_104
  loc_A23855: PopAdLdVar
  loc_A23856: FLdPr Me
  loc_A23859: VCallAd Control_ID_mskHasta
  loc_A2385C: FStAdFunc var_118
  loc_A2385F: FLdPr var_118
  loc_A23862: LateIdSt
  loc_A23867: FFreeAd var_90 = "": var_B0 = ""
  loc_A23870: FFreeVar var_D4 = "": var_F4 = ""
  loc_A23879: ExitProcHresult
End Function

Private Function Proc_252_53_B24C9C() 'B24C9C
  'Data Table: 4F340C
  loc_B24390: LitVarStr var_94, "<html>"
  loc_B24395: PopAdLdVar
  loc_B24396: FLdPr Me
  loc_B24399: MemLdRfVar from_stack_1.htmFile
  loc_B2439C: LdPrVar
  loc_B2439E: LateMemCall
  loc_B243A4: LitVarStr var_94, "<head>"
  loc_B243A9: PopAdLdVar
  loc_B243AA: FLdPr Me
  loc_B243AD: MemLdRfVar from_stack_1.htmFile
  loc_B243B0: LdPrVar
  loc_B243B2: LateMemCall
  loc_B243B8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B243BD: PopAdLdVar
  loc_B243BE: FLdPr Me
  loc_B243C1: MemLdRfVar from_stack_1.htmFile
  loc_B243C4: LdPrVar
  loc_B243C6: LateMemCall
  loc_B243CC: LitStr "<title>"
  loc_B243CF: FLdRfVar var_A8
  loc_B243D2: FLdPr Me
  loc_B243D5:  = Me.Caption
  loc_B243DA: ILdRf var_A8
  loc_B243DD: ConcatStr
  loc_B243DE: FStStrNoPop var_AC
  loc_B243E1: LitStr "</title>"
  loc_B243E4: ConcatStr
  loc_B243E5: CVarStr var_BC
  loc_B243E8: PopAdLdVar
  loc_B243E9: FLdPr Me
  loc_B243EC: MemLdRfVar from_stack_1.htmFile
  loc_B243EF: LdPrVar
  loc_B243F1: LateMemCall
  loc_B243F7: FFreeStr var_A8 = ""
  loc_B243FE: FFree1Var var_BC = ""
  loc_B24401: LitStr vbNullString
  loc_B24404: ILdRf Me
  loc_B24407: CastAd
  loc_B2440A: FStAdFunc var_C0
  loc_B2440D: FLdRfVar var_C0
  loc_B24410: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_B24415: FFree1Ad var_C0
  loc_B24418: LitI4 0
  loc_B2441D: FStStrCopy var_AC
  loc_B24420: FLdRfVar var_AC
  loc_B24423: LitI4 0
  loc_B24428: FStStrCopy var_A8
  loc_B2442B: FLdRfVar var_A8
  loc_B2442E: LitI2_Byte &HFF
  loc_B24430: PopTmpLdAd2 var_C2
  loc_B24433: FLdPr Me
  loc_B24436: MemLdRfVar from_stack_1.htmFile
  loc_B24439: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_B2443E: FFreeStr var_A8 = ""
  loc_B24445: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B2444A: PopAdLdVar
  loc_B2444B: FLdPr Me
  loc_B2444E: MemLdRfVar from_stack_1.htmFile
  loc_B24451: LdPrVar
  loc_B24453: LateMemCall
  loc_B24459: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B2445E: PopAdLdVar
  loc_B2445F: FLdPr Me
  loc_B24462: MemLdRfVar from_stack_1.htmFile
  loc_B24465: LdPrVar
  loc_B24467: LateMemCall
  loc_B2446D: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_B24472: PopAdLdVar
  loc_B24473: FLdPr Me
  loc_B24476: MemLdRfVar from_stack_1.htmFile
  loc_B24479: LdPrVar
  loc_B2447B: LateMemCall
  loc_B24481: FLdPr Me
  loc_B24484: MemLdI2 bLogos
  loc_B24487: BranchF loc_B2449E
  loc_B2448A: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_B2448F: PopAdLdVar
  loc_B24490: FLdPr Me
  loc_B24493: MemLdRfVar from_stack_1.htmFile
  loc_B24496: LdPrVar
  loc_B24498: LateMemCall
  loc_B2449E: LitVarStr var_A4, "    <br><br>"
  loc_B244A3: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_B244A8: FStVarCopyObj var_BC
  loc_B244AB: FLdRfVar var_BC
  loc_B244AE: FLdRfVar var_D4
  loc_B244B1: ImpAdCallFPR4  = Ucase()
  loc_B244B6: FLdRfVar var_D4
  loc_B244B9: ConcatVar var_E4
  loc_B244BD: LitVarStr var_F4, "</p>"
  loc_B244C2: ConcatVar var_104
  loc_B244C6: PopAdLdVar
  loc_B244C7: FLdPr Me
  loc_B244CA: MemLdRfVar from_stack_1.htmFile
  loc_B244CD: LdPrVar
  loc_B244CF: LateMemCall
  loc_B244D5: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_B244E0: FLdRfVar var_C2
  loc_B244E3: FLdPr Me
  loc_B244E6: VCallAd Control_ID_SinteticoChk
  loc_B244E9: FStAdFunc var_C0
  loc_B244EC: FLdPr var_C0
  loc_B244EF:  = Me.Value
  loc_B244F4: LitStr "     <p align=""center"">"
  loc_B244F7: FLdRfVar var_A8
  loc_B244FA: FLdPr Me
  loc_B244FD:  = Me.Caption
  loc_B24502: ILdRf var_A8
  loc_B24505: ConcatStr
  loc_B24506: CVarStr var_104
  loc_B24509: LitVarStr var_F4, vbNullString
  loc_B2450E: FStVarCopyObj var_D4
  loc_B24511: FLdRfVar var_D4
  loc_B24514: LitVarStr var_A4, " Sintético"
  loc_B24519: FStVarCopyObj var_BC
  loc_B2451C: FLdRfVar var_BC
  loc_B2451F: FLdI2 var_C2
  loc_B24522: CI4UI1
  loc_B24523: LitI4 1
  loc_B24528: EqI4
  loc_B24529: CVarBoolI2 var_94
  loc_B2452D: FLdRfVar var_E4
  loc_B24530: ImpAdCallFPR4  = IIf(, , )
  loc_B24535: FLdRfVar var_E4
  loc_B24538: ConcatVar var_124
  loc_B2453C: LitVarStr var_114, "</p></th>"
  loc_B24541: ConcatVar var_134
  loc_B24545: PopAdLdVar
  loc_B24546: FLdPr Me
  loc_B24549: MemLdRfVar from_stack_1.htmFile
  loc_B2454C: LdPrVar
  loc_B2454E: LateMemCall
  loc_B24554: FFree1Str var_A8
  loc_B24557: FFree1Ad var_C0
  loc_B2455A: FFreeVar var_94 = "": var_BC = "": var_D4 = "": var_104 = "": var_E4 = "": var_124 = ""
  loc_B2456B: LitVarStr var_94, "  </tr>"
  loc_B24570: PopAdLdVar
  loc_B24571: FLdPr Me
  loc_B24574: MemLdRfVar from_stack_1.htmFile
  loc_B24577: LdPrVar
  loc_B24579: LateMemCall
  loc_B2457F: LitVarStr var_94, "  <tr><th colspan=""2""><hr></th></tr>"
  loc_B24584: PopAdLdVar
  loc_B24585: FLdPr Me
  loc_B24588: MemLdRfVar from_stack_1.htmFile
  loc_B2458B: LdPrVar
  loc_B2458D: LateMemCall
  loc_B24593: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B24598: PopAdLdVar
  loc_B24599: FLdPr Me
  loc_B2459C: MemLdRfVar from_stack_1.htmFile
  loc_B2459F: LdPrVar
  loc_B245A1: LateMemCall
  loc_B245A7: LitStr "    <th align=""right"" valign=""bottom"">Periodo: "
  loc_B245AA: FLdRfVar var_A8
  loc_B245AD: FLdPr Me
  loc_B245B0: VCallAd Control_ID_cboPeriodo
  loc_B245B3: FStAdFunc var_C0
  loc_B245B6: FLdPr var_C0
  loc_B245B9:  = Me.Text
  loc_B245BE: ILdRf var_A8
  loc_B245C1: ConcatStr
  loc_B245C2: FStStrNoPop var_AC
  loc_B245C5: LitStr "</th>"
  loc_B245C8: ConcatStr
  loc_B245C9: CVarStr var_BC
  loc_B245CC: PopAdLdVar
  loc_B245CD: FLdPr Me
  loc_B245D0: MemLdRfVar from_stack_1.htmFile
  loc_B245D3: LdPrVar
  loc_B245D5: LateMemCall
  loc_B245DB: FFreeStr var_A8 = ""
  loc_B245E2: FFree1Ad var_C0
  loc_B245E5: FFree1Var var_BC = ""
  loc_B245E8: LitVarStr var_94, "  </tr>"
  loc_B245ED: PopAdLdVar
  loc_B245EE: FLdPr Me
  loc_B245F1: MemLdRfVar from_stack_1.htmFile
  loc_B245F4: LdPrVar
  loc_B245F6: LateMemCall
  loc_B245FC: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B24601: PopAdLdVar
  loc_B24602: FLdPr Me
  loc_B24605: MemLdRfVar from_stack_1.htmFile
  loc_B24608: LdPrVar
  loc_B2460A: LateMemCall
  loc_B24610: LitStr "    <th align=""left"" valign=""bottom"">Expediente Original: "
  loc_B24613: FLdRfVar var_A8
  loc_B24616: FLdPr Me
  loc_B24619: VCallAd Control_ID_cboExorImpu
  loc_B2461C: FStAdFunc var_C0
  loc_B2461F: FLdPr var_C0
  loc_B24622:  = Me.Text
  loc_B24627: ILdRf var_A8
  loc_B2462A: ConcatStr
  loc_B2462B: FStStrNoPop var_AC
  loc_B2462E: LitStr "</th>"
  loc_B24631: ConcatStr
  loc_B24632: CVarStr var_BC
  loc_B24635: PopAdLdVar
  loc_B24636: FLdPr Me
  loc_B24639: MemLdRfVar from_stack_1.htmFile
  loc_B2463C: LdPrVar
  loc_B2463E: LateMemCall
  loc_B24644: FFreeStr var_A8 = ""
  loc_B2464B: FFree1Ad var_C0
  loc_B2464E: FFree1Var var_BC = ""
  loc_B24651: LitVarStr var_94, "  </tr>"
  loc_B24656: PopAdLdVar
  loc_B24657: FLdPr Me
  loc_B2465A: MemLdRfVar from_stack_1.htmFile
  loc_B2465D: LdPrVar
  loc_B2465F: LateMemCall
  loc_B24665: FLdPr Me
  loc_B24668: VCallAd Control_ID_CodiPartMsk
  loc_B2466B: FStAdFunc var_C0
  loc_B2466E: FLdPr var_C0
  loc_B24671: LateIdLdVar var_BC DispID_22 0
  loc_B24678: CStrVarTmp
  loc_B24679: FStStrNoPop var_A8
  loc_B2467C: LitStr vbNullString
  loc_B2467F: NeStr
  loc_B24681: FFree1Str var_A8
  loc_B24684: FFree1Ad var_C0
  loc_B24687: FFree1Var var_BC = ""
  loc_B2468A: BranchF loc_B24747
  loc_B2468D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B24692: PopAdLdVar
  loc_B24693: FLdPr Me
  loc_B24696: MemLdRfVar from_stack_1.htmFile
  loc_B24699: LdPrVar
  loc_B2469B: LateMemCall
  loc_B246A1: FLdPr Me
  loc_B246A4: VCallAd Control_ID_CodiPartMsk
  loc_B246A7: FStAdFunc var_148
  loc_B246AA: FLdPr var_148
  loc_B246AD: LateIdLdVar var_D4 DispID_22 0
  loc_B246B4: PopAd
  loc_B246B6: LitStr "    <th align=""left"" valign=""bottom"">Partida: "
  loc_B246B9: FLdPr Me
  loc_B246BC: VCallAd Control_ID_CodiPartMsk
  loc_B246BF: FStAdFunc var_C0
  loc_B246C2: FLdPr var_C0
  loc_B246C5: LateIdLdVar var_BC DispID_22 0
  loc_B246CC: CStrVarTmp
  loc_B246CD: FStStrNoPop var_A8
  loc_B246D0: ConcatStr
  loc_B246D1: CVarStr var_124
  loc_B246D4: LitVarStr var_94, "."
  loc_B246D9: FStVarCopyObj var_E4
  loc_B246DC: FLdRfVar var_E4
  loc_B246DF: LitI4 8
  loc_B246E4: FLdRfVar var_D4
  loc_B246E7: CStrVarTmp
  loc_B246E8: FStStrNoPop var_AC
  loc_B246EB: FnLenStr
  loc_B246EC: SubI4
  loc_B246ED: FLdRfVar var_104
  loc_B246F0: ImpAdCallFPR4  = String(, )
  loc_B246F5: FLdRfVar var_104
  loc_B246F8: ConcatVar var_134
  loc_B246FC: LitVarStr var_A4, "</th>"
  loc_B24701: ConcatVar var_158
  loc_B24705: PopAdLdVar
  loc_B24706: FLdPr Me
  loc_B24709: MemLdRfVar from_stack_1.htmFile
  loc_B2470C: LdPrVar
  loc_B2470E: LateMemCall
  loc_B24714: FFreeStr var_A8 = ""
  loc_B2471B: FFreeAd var_C0 = ""
  loc_B24722: FFreeVar var_BC = "": var_D4 = "": var_E4 = "": var_124 = "": var_104 = "": var_134 = ""
  loc_B24733: LitVarStr var_94, "  </tr>"
  loc_B24738: PopAdLdVar
  loc_B24739: FLdPr Me
  loc_B2473C: MemLdRfVar from_stack_1.htmFile
  loc_B2473F: LdPrVar
  loc_B24741: LateMemCall
  loc_B24747: FLdPr Me
  loc_B2474A: VCallAd Control_ID_CodiOrgaMsk
  loc_B2474D: FStAdFunc var_C0
  loc_B24750: FLdPr var_C0
  loc_B24753: LateIdLdVar var_BC DispID_22 0
  loc_B2475A: CStrVarTmp
  loc_B2475B: FStStrNoPop var_A8
  loc_B2475E: LitStr vbNullString
  loc_B24761: NeStr
  loc_B24763: FFree1Str var_A8
  loc_B24766: FFree1Ad var_C0
  loc_B24769: FFree1Var var_BC = ""
  loc_B2476C: BranchF loc_B24829
  loc_B2476F: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B24774: PopAdLdVar
  loc_B24775: FLdPr Me
  loc_B24778: MemLdRfVar from_stack_1.htmFile
  loc_B2477B: LdPrVar
  loc_B2477D: LateMemCall
  loc_B24783: FLdPr Me
  loc_B24786: VCallAd Control_ID_CodiOrgaMsk
  loc_B24789: FStAdFunc var_148
  loc_B2478C: FLdPr var_148
  loc_B2478F: LateIdLdVar var_D4 DispID_22 0
  loc_B24796: PopAd
  loc_B24798: LitStr "    <th align=""left"" valign=""bottom"">Organigrama: "
  loc_B2479B: FLdPr Me
  loc_B2479E: VCallAd Control_ID_CodiOrgaMsk
  loc_B247A1: FStAdFunc var_C0
  loc_B247A4: FLdPr var_C0
  loc_B247A7: LateIdLdVar var_BC DispID_22 0
  loc_B247AE: CStrVarTmp
  loc_B247AF: FStStrNoPop var_A8
  loc_B247B2: ConcatStr
  loc_B247B3: CVarStr var_124
  loc_B247B6: LitVarStr var_94, "."
  loc_B247BB: FStVarCopyObj var_E4
  loc_B247BE: FLdRfVar var_E4
  loc_B247C1: LitI4 6
  loc_B247C6: FLdRfVar var_D4
  loc_B247C9: CStrVarTmp
  loc_B247CA: FStStrNoPop var_AC
  loc_B247CD: FnLenStr
  loc_B247CE: SubI4
  loc_B247CF: FLdRfVar var_104
  loc_B247D2: ImpAdCallFPR4  = String(, )
  loc_B247D7: FLdRfVar var_104
  loc_B247DA: ConcatVar var_134
  loc_B247DE: LitVarStr var_A4, "</th>"
  loc_B247E3: ConcatVar var_158
  loc_B247E7: PopAdLdVar
  loc_B247E8: FLdPr Me
  loc_B247EB: MemLdRfVar from_stack_1.htmFile
  loc_B247EE: LdPrVar
  loc_B247F0: LateMemCall
  loc_B247F6: FFreeStr var_A8 = ""
  loc_B247FD: FFreeAd var_C0 = ""
  loc_B24804: FFreeVar var_BC = "": var_D4 = "": var_E4 = "": var_124 = "": var_104 = "": var_134 = ""
  loc_B24815: LitVarStr var_94, "  </tr>"
  loc_B2481A: PopAdLdVar
  loc_B2481B: FLdPr Me
  loc_B2481E: MemLdRfVar from_stack_1.htmFile
  loc_B24821: LdPrVar
  loc_B24823: LateMemCall
  loc_B24829: FLdPr Me
  loc_B2482C: VCallAd Control_ID_CodiNopeMsk
  loc_B2482F: FStAdFunc var_C0
  loc_B24832: FLdPr var_C0
  loc_B24835: LateIdLdVar var_BC DispID_22 0
  loc_B2483C: CStrVarTmp
  loc_B2483D: FStStrNoPop var_A8
  loc_B24840: LitStr vbNullString
  loc_B24843: NeStr
  loc_B24845: FFree1Str var_A8
  loc_B24848: FFree1Ad var_C0
  loc_B2484B: FFree1Var var_BC = ""
  loc_B2484E: BranchF loc_B248BE
  loc_B24851: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B24856: PopAdLdVar
  loc_B24857: FLdPr Me
  loc_B2485A: MemLdRfVar from_stack_1.htmFile
  loc_B2485D: LdPrVar
  loc_B2485F: LateMemCall
  loc_B24865: LitStr "    <th align=""left"" valign=""bottom"">Nota de Pedido Nº: "
  loc_B24868: FLdPr Me
  loc_B2486B: VCallAd Control_ID_CodiNopeMsk
  loc_B2486E: FStAdFunc var_C0
  loc_B24871: FLdPr var_C0
  loc_B24874: LateIdLdVar var_BC DispID_22 0
  loc_B2487B: CStrVarTmp
  loc_B2487C: FStStrNoPop var_A8
  loc_B2487F: ConcatStr
  loc_B24880: FStStrNoPop var_AC
  loc_B24883: LitStr "</th>"
  loc_B24886: ConcatStr
  loc_B24887: CVarStr var_D4
  loc_B2488A: PopAdLdVar
  loc_B2488B: FLdPr Me
  loc_B2488E: MemLdRfVar from_stack_1.htmFile
  loc_B24891: LdPrVar
  loc_B24893: LateMemCall
  loc_B24899: FFreeStr var_A8 = ""
  loc_B248A0: FFree1Ad var_C0
  loc_B248A3: FFreeVar var_BC = ""
  loc_B248AA: LitVarStr var_94, "  </tr>"
  loc_B248AF: PopAdLdVar
  loc_B248B0: FLdPr Me
  loc_B248B3: MemLdRfVar from_stack_1.htmFile
  loc_B248B6: LdPrVar
  loc_B248B8: LateMemCall
  loc_B248BE: FLdPr Me
  loc_B248C1: VCallAd Control_ID_mskDesde
  loc_B248C4: FStAdFunc var_C0
  loc_B248C7: FLdPr var_C0
  loc_B248CA: LateIdLdVar var_BC DispID_22 0
  loc_B248D1: CStrVarTmp
  loc_B248D2: FStStrNoPop var_A8
  loc_B248D5: LitStr vbNullString
  loc_B248D8: NeStr
  loc_B248DA: FFree1Str var_A8
  loc_B248DD: FFree1Ad var_C0
  loc_B248E0: FFree1Var var_BC = ""
  loc_B248E3: BranchF loc_B24953
  loc_B248E6: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B248EB: PopAdLdVar
  loc_B248EC: FLdPr Me
  loc_B248EF: MemLdRfVar from_stack_1.htmFile
  loc_B248F2: LdPrVar
  loc_B248F4: LateMemCall
  loc_B248FA: LitStr "    <th align=""left"" valign=""bottom"">Desde: "
  loc_B248FD: FLdPr Me
  loc_B24900: VCallAd Control_ID_mskDesde
  loc_B24903: FStAdFunc var_C0
  loc_B24906: FLdPr var_C0
  loc_B24909: LateIdLdVar var_BC DispID_15 0
  loc_B24910: CStrVarTmp
  loc_B24911: FStStrNoPop var_A8
  loc_B24914: ConcatStr
  loc_B24915: FStStrNoPop var_AC
  loc_B24918: LitStr "</th>"
  loc_B2491B: ConcatStr
  loc_B2491C: CVarStr var_D4
  loc_B2491F: PopAdLdVar
  loc_B24920: FLdPr Me
  loc_B24923: MemLdRfVar from_stack_1.htmFile
  loc_B24926: LdPrVar
  loc_B24928: LateMemCall
  loc_B2492E: FFreeStr var_A8 = ""
  loc_B24935: FFree1Ad var_C0
  loc_B24938: FFreeVar var_BC = ""
  loc_B2493F: LitVarStr var_94, "  </tr>"
  loc_B24944: PopAdLdVar
  loc_B24945: FLdPr Me
  loc_B24948: MemLdRfVar from_stack_1.htmFile
  loc_B2494B: LdPrVar
  loc_B2494D: LateMemCall
  loc_B24953: FLdPr Me
  loc_B24956: VCallAd Control_ID_mskHasta
  loc_B24959: FStAdFunc var_C0
  loc_B2495C: FLdPr var_C0
  loc_B2495F: LateIdLdVar var_BC DispID_22 0
  loc_B24966: CStrVarTmp
  loc_B24967: FStStrNoPop var_A8
  loc_B2496A: LitStr vbNullString
  loc_B2496D: NeStr
  loc_B2496F: FFree1Str var_A8
  loc_B24972: FFree1Ad var_C0
  loc_B24975: FFree1Var var_BC = ""
  loc_B24978: BranchF loc_B249E8
  loc_B2497B: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B24980: PopAdLdVar
  loc_B24981: FLdPr Me
  loc_B24984: MemLdRfVar from_stack_1.htmFile
  loc_B24987: LdPrVar
  loc_B24989: LateMemCall
  loc_B2498F: LitStr "    <th align=""left"" valign=""bottom"">Hasta: "
  loc_B24992: FLdPr Me
  loc_B24995: VCallAd Control_ID_mskHasta
  loc_B24998: FStAdFunc var_C0
  loc_B2499B: FLdPr var_C0
  loc_B2499E: LateIdLdVar var_BC DispID_15 0
  loc_B249A5: CStrVarTmp
  loc_B249A6: FStStrNoPop var_A8
  loc_B249A9: ConcatStr
  loc_B249AA: FStStrNoPop var_AC
  loc_B249AD: LitStr "</th>"
  loc_B249B0: ConcatStr
  loc_B249B1: CVarStr var_D4
  loc_B249B4: PopAdLdVar
  loc_B249B5: FLdPr Me
  loc_B249B8: MemLdRfVar from_stack_1.htmFile
  loc_B249BB: LdPrVar
  loc_B249BD: LateMemCall
  loc_B249C3: FFreeStr var_A8 = ""
  loc_B249CA: FFree1Ad var_C0
  loc_B249CD: FFreeVar var_BC = ""
  loc_B249D4: LitVarStr var_94, "  </tr>"
  loc_B249D9: PopAdLdVar
  loc_B249DA: FLdPr Me
  loc_B249DD: MemLdRfVar from_stack_1.htmFile
  loc_B249E0: LdPrVar
  loc_B249E2: LateMemCall
  loc_B249E8: FLdPr Me
  loc_B249EB: VCallAd Control_ID_CucuPersMsk
  loc_B249EE: FStAdFunc var_C0
  loc_B249F1: FLdPr var_C0
  loc_B249F4: LateIdLdVar var_BC DispID_22 0
  loc_B249FB: CStrVarTmp
  loc_B249FC: FStStrNoPop var_A8
  loc_B249FF: LitStr vbNullString
  loc_B24A02: NeStr
  loc_B24A04: FFree1Str var_A8
  loc_B24A07: FFree1Ad var_C0
  loc_B24A0A: FFree1Var var_BC = ""
  loc_B24A0D: BranchF loc_B24AA9
  loc_B24A10: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B24A15: PopAdLdVar
  loc_B24A16: FLdPr Me
  loc_B24A19: MemLdRfVar from_stack_1.htmFile
  loc_B24A1C: LdPrVar
  loc_B24A1E: LateMemCall
  loc_B24A24: LitStr "    <th align=""left"" valign=""bottom"">Proveedor: "
  loc_B24A27: FLdPr Me
  loc_B24A2A: VCallAd Control_ID_CucuPersMsk
  loc_B24A2D: FStAdFunc var_C0
  loc_B24A30: FLdPr var_C0
  loc_B24A33: LateIdLdVar var_BC DispID_22 0
  loc_B24A3A: CStrVarTmp
  loc_B24A3B: FStStrNoPop var_A8
  loc_B24A3E: ConcatStr
  loc_B24A3F: FStStrNoPop var_AC
  loc_B24A42: LitStr " - "
  loc_B24A45: ConcatStr
  loc_B24A46: FStStrNoPop var_160
  loc_B24A49: FLdRfVar var_15C
  loc_B24A4C: FLdPr Me
  loc_B24A4F: VCallAd Control_ID_lblDetaProv
  loc_B24A52: FStAdFunc var_148
  loc_B24A55: FLdPr var_148
  loc_B24A58:  = Me.Caption
  loc_B24A5D: ILdRf var_15C
  loc_B24A60: ConcatStr
  loc_B24A61: FStStrNoPop var_164
  loc_B24A64: LitStr "</th>"
  loc_B24A67: ConcatStr
  loc_B24A68: CVarStr var_D4
  loc_B24A6B: PopAdLdVar
  loc_B24A6C: FLdPr Me
  loc_B24A6F: MemLdRfVar from_stack_1.htmFile
  loc_B24A72: LdPrVar
  loc_B24A74: LateMemCall
  loc_B24A7A: FFreeStr var_A8 = "": var_AC = "": var_160 = "": var_15C = ""
  loc_B24A87: FFreeAd var_C0 = ""
  loc_B24A8E: FFreeVar var_BC = ""
  loc_B24A95: LitVarStr var_94, "  </tr>"
  loc_B24A9A: PopAdLdVar
  loc_B24A9B: FLdPr Me
  loc_B24A9E: MemLdRfVar from_stack_1.htmFile
  loc_B24AA1: LdPrVar
  loc_B24AA3: LateMemCall
  loc_B24AA9: FLdRfVar var_C2
  loc_B24AAC: FLdPr Me
  loc_B24AAF: VCallAd Control_ID_cboCodiUsua
  loc_B24AB2: FStAdFunc var_C0
  loc_B24AB5: FLdPr var_C0
  loc_B24AB8:  = Me.ListIndex
  loc_B24ABD: FLdI2 var_C2
  loc_B24AC0: LitI2_Byte 0
  loc_B24AC2: GtI2
  loc_B24AC3: FFree1Ad var_C0
  loc_B24AC6: BranchF loc_B24B32
  loc_B24AC9: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_B24ACE: PopAdLdVar
  loc_B24ACF: FLdPr Me
  loc_B24AD2: MemLdRfVar from_stack_1.htmFile
  loc_B24AD5: LdPrVar
  loc_B24AD7: LateMemCall
  loc_B24ADD: LitStr "    <th align=""left"" valign=""bottom"">Usuario: "
  loc_B24AE0: FLdRfVar var_A8
  loc_B24AE3: FLdPr Me
  loc_B24AE6: VCallAd Control_ID_cboCodiUsua
  loc_B24AE9: FStAdFunc var_C0
  loc_B24AEC: FLdPr var_C0
  loc_B24AEF:  = Me.Text
  loc_B24AF4: ILdRf var_A8
  loc_B24AF7: ConcatStr
  loc_B24AF8: FStStrNoPop var_AC
  loc_B24AFB: LitStr "</th>"
  loc_B24AFE: ConcatStr
  loc_B24AFF: CVarStr var_BC
  loc_B24B02: PopAdLdVar
  loc_B24B03: FLdPr Me
  loc_B24B06: MemLdRfVar from_stack_1.htmFile
  loc_B24B09: LdPrVar
  loc_B24B0B: LateMemCall
  loc_B24B11: FFreeStr var_A8 = ""
  loc_B24B18: FFree1Ad var_C0
  loc_B24B1B: FFree1Var var_BC = ""
  loc_B24B1E: LitVarStr var_94, "  </tr>"
  loc_B24B23: PopAdLdVar
  loc_B24B24: FLdPr Me
  loc_B24B27: MemLdRfVar from_stack_1.htmFile
  loc_B24B2A: LdPrVar
  loc_B24B2C: LateMemCall
  loc_B24B32: LitVarStr var_94, "</table>"
  loc_B24B37: PopAdLdVar
  loc_B24B38: FLdPr Me
  loc_B24B3B: MemLdRfVar from_stack_1.htmFile
  loc_B24B3E: LdPrVar
  loc_B24B40: LateMemCall
  loc_B24B46: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B24B4B: PopAdLdVar
  loc_B24B4C: FLdPr Me
  loc_B24B4F: MemLdRfVar from_stack_1.htmFile
  loc_B24B52: LdPrVar
  loc_B24B54: LateMemCall
  loc_B24B5A: LitVarStr var_94, "  <THEAD>"
  loc_B24B5F: PopAdLdVar
  loc_B24B60: FLdPr Me
  loc_B24B63: MemLdRfVar from_stack_1.htmFile
  loc_B24B66: LdPrVar
  loc_B24B68: LateMemCall
  loc_B24B6E: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_B24B73: PopAdLdVar
  loc_B24B74: FLdPr Me
  loc_B24B77: MemLdRfVar from_stack_1.htmFile
  loc_B24B7A: LdPrVar
  loc_B24B7C: LateMemCall
  loc_B24B82: LitVarStr var_94, "     <th>Partida</th>"
  loc_B24B87: PopAdLdVar
  loc_B24B88: FLdPr Me
  loc_B24B8B: MemLdRfVar from_stack_1.htmFile
  loc_B24B8E: LdPrVar
  loc_B24B90: LateMemCall
  loc_B24B96: LitVarStr var_94, "     <th>Organigrama</th>"
  loc_B24B9B: PopAdLdVar
  loc_B24B9C: FLdPr Me
  loc_B24B9F: MemLdRfVar from_stack_1.htmFile
  loc_B24BA2: LdPrVar
  loc_B24BA4: LateMemCall
  loc_B24BAA: LitVarStr var_94, "     <th>Unidad de Gasto</th>"
  loc_B24BAF: PopAdLdVar
  loc_B24BB0: FLdPr Me
  loc_B24BB3: MemLdRfVar from_stack_1.htmFile
  loc_B24BB6: LdPrVar
  loc_B24BB8: LateMemCall
  loc_B24BBE: LitVarStr var_94, "     <th>Finalidad</th>"
  loc_B24BC3: PopAdLdVar
  loc_B24BC4: FLdPr Me
  loc_B24BC7: MemLdRfVar from_stack_1.htmFile
  loc_B24BCA: LdPrVar
  loc_B24BCC: LateMemCall
  loc_B24BD2: LitVarStr var_94, "     <th>Insumo</th>"
  loc_B24BD7: PopAdLdVar
  loc_B24BD8: FLdPr Me
  loc_B24BDB: MemLdRfVar from_stack_1.htmFile
  loc_B24BDE: LdPrVar
  loc_B24BE0: LateMemCall
  loc_B24BE6: LitVarStr var_94, "     <th>Detalle</th>"
  loc_B24BEB: PopAdLdVar
  loc_B24BEC: FLdPr Me
  loc_B24BEF: MemLdRfVar from_stack_1.htmFile
  loc_B24BF2: LdPrVar
  loc_B24BF4: LateMemCall
  loc_B24BFA: LitVarStr var_94, "     <th colspan=""1"">&nbsp;</th>"
  loc_B24BFF: PopAdLdVar
  loc_B24C00: FLdPr Me
  loc_B24C03: MemLdRfVar from_stack_1.htmFile
  loc_B24C06: LdPrVar
  loc_B24C08: LateMemCall
  loc_B24C0E: LitVarStr var_94, "     <th>Proveedor</th>"
  loc_B24C13: PopAdLdVar
  loc_B24C14: FLdPr Me
  loc_B24C17: MemLdRfVar from_stack_1.htmFile
  loc_B24C1A: LdPrVar
  loc_B24C1C: LateMemCall
  loc_B24C22: LitVarStr var_94, "     <th>Importe</th>"
  loc_B24C27: PopAdLdVar
  loc_B24C28: FLdPr Me
  loc_B24C2B: MemLdRfVar from_stack_1.htmFile
  loc_B24C2E: LdPrVar
  loc_B24C30: LateMemCall
  loc_B24C36: LitVarStr var_94, "     <th>Fecha</th>"
  loc_B24C3B: PopAdLdVar
  loc_B24C3C: FLdPr Me
  loc_B24C3F: MemLdRfVar from_stack_1.htmFile
  loc_B24C42: LdPrVar
  loc_B24C44: LateMemCall
  loc_B24C4A: LitVarStr var_94, "     <th>Exp. Pago</th>"
  loc_B24C4F: PopAdLdVar
  loc_B24C50: FLdPr Me
  loc_B24C53: MemLdRfVar from_stack_1.htmFile
  loc_B24C56: LdPrVar
  loc_B24C58: LateMemCall
  loc_B24C5E: LitVarStr var_94, "     <th>Usuario</th>"
  loc_B24C63: PopAdLdVar
  loc_B24C64: FLdPr Me
  loc_B24C67: MemLdRfVar from_stack_1.htmFile
  loc_B24C6A: LdPrVar
  loc_B24C6C: LateMemCall
  loc_B24C72: LitVarStr var_94, "  </tr>"
  loc_B24C77: PopAdLdVar
  loc_B24C78: FLdPr Me
  loc_B24C7B: MemLdRfVar from_stack_1.htmFile
  loc_B24C7E: LdPrVar
  loc_B24C80: LateMemCall
  loc_B24C86: LitVarStr var_94, "  </THEAD>"
  loc_B24C8B: PopAdLdVar
  loc_B24C8C: FLdPr Me
  loc_B24C8F: MemLdRfVar from_stack_1.htmFile
  loc_B24C92: LdPrVar
  loc_B24C94: LateMemCall
  loc_B24C9A: ExitProcHresult
End Function

Private Function Proc_252_54_ABF984() 'ABF984
  'Data Table: 4F340C
  loc_ABF3AC: LitVarStr var_94, "</table>"
  loc_ABF3B1: PopAdLdVar
  loc_ABF3B2: FLdPr Me
  loc_ABF3B5: MemLdRfVar from_stack_1.htmFile
  loc_ABF3B8: LdPrVar
  loc_ABF3BA: LateMemCall
  loc_ABF3C0: LitStr "Municipalidad de Guaymallén"
  loc_ABF3C3: LitStr "Municipalidad de Lavalle"
  loc_ABF3C6: EqStr
  loc_ABF3C8: BranchF loc_ABF46A
  loc_ABF3CB: LitStr "Pase a COMPRAS - OBRAS PUBLICAS - ............... a sus efectos.- "
  loc_ABF3CE: ImpAdLdI4 MemVar_C3D03C
  loc_ABF3D1: ConcatStr
  loc_ABF3D2: CVarStr var_B4
  loc_ABF3D5: PopAdLdVar
  loc_ABF3D6: FLdPr Me
  loc_ABF3D9: MemLdRfVar from_stack_1.htmFile
  loc_ABF3DC: LdPrVar
  loc_ABF3DE: LateMemCall
  loc_ABF3E4: FFree1Var var_B4 = ""
  loc_ABF3E7: ImpAdLdI4 MemVar_C3D03C
  loc_ABF3EA: LitStr "LILIANA"
  loc_ABF3ED: EqStr
  loc_ABF3EF: BranchF loc_ABF46A
  loc_ABF3F2: LitVarStr var_94, "<br><br><br><br><br>"
  loc_ABF3F7: PopAdLdVar
  loc_ABF3F8: FLdPr Me
  loc_ABF3FB: MemLdRfVar from_stack_1.htmFile
  loc_ABF3FE: LdPrVar
  loc_ABF400: LateMemCall
  loc_ABF406: LitVarStr var_94, "<table border=""0"" align=""left"" cellspacing=""20"" class=""Normal"">"
  loc_ABF40B: PopAdLdVar
  loc_ABF40C: FLdPr Me
  loc_ABF40F: MemLdRfVar from_stack_1.htmFile
  loc_ABF412: LdPrVar
  loc_ABF414: LateMemCall
  loc_ABF41A: LitVarStr var_94, "  <tr align=""center"" valign=""top"">"
  loc_ABF41F: PopAdLdVar
  loc_ABF420: FLdPr Me
  loc_ABF423: MemLdRfVar from_stack_1.htmFile
  loc_ABF426: LdPrVar
  loc_ABF428: LateMemCall
  loc_ABF42E: LitVarStr var_94, "    <td ><hr>IRMA LILIANA CABRERA<br>Jefa de Sección Imputaciones<br>MUNICIPALIDAD DE LAVALLE</td>"
  loc_ABF433: PopAdLdVar
  loc_ABF434: FLdPr Me
  loc_ABF437: MemLdRfVar from_stack_1.htmFile
  loc_ABF43A: LdPrVar
  loc_ABF43C: LateMemCall
  loc_ABF442: LitVarStr var_94, "  </tr>"
  loc_ABF447: PopAdLdVar
  loc_ABF448: FLdPr Me
  loc_ABF44B: MemLdRfVar from_stack_1.htmFile
  loc_ABF44E: LdPrVar
  loc_ABF450: LateMemCall
  loc_ABF456: LitVarStr var_94, "</table>"
  loc_ABF45B: PopAdLdVar
  loc_ABF45C: FLdPr Me
  loc_ABF45F: MemLdRfVar from_stack_1.htmFile
  loc_ABF462: LdPrVar
  loc_ABF464: LateMemCall
  loc_ABF46A: LitStr "Municipalidad de Guaymallén"
  loc_ABF46D: LitStr "Municipalidad de La Paz"
  loc_ABF470: EqStr
  loc_ABF472: FLdRfVar var_BC
  loc_ABF475: FLdPr Me
  loc_ABF478: VCallAd Control_ID_cboPeriodo
  loc_ABF47B: FStAdFunc var_B8
  loc_ABF47E: FLdPr var_B8
  loc_ABF481:  = Me.Text
  loc_ABF486: ILdRf var_BC
  loc_ABF489: CI2Str
  loc_ABF48B: LitI2 2022
  loc_ABF48E: GeI2
  loc_ABF48F: AndI4
  loc_ABF490: FFree1Str var_BC
  loc_ABF493: FFree1Ad var_B8
  loc_ABF496: BranchF loc_ABF855
  loc_ABF499: FLdRfVar var_C2
  loc_ABF49C: FLdRfVar var_C0
  loc_ABF49F: LitI2_Byte 1
  loc_ABF4A1: FLdPr Me
  loc_ABF4A4: VCallAd Control_ID_chkEtapa
  loc_ABF4A7: FStAdFunc var_B8
  loc_ABF4AA: FLdPr var_B8
  loc_ABF4AD: Set from_stack_2 = Me(from_stack_1)
  loc_ABF4B2: FLdPr var_C0
  loc_ABF4B5:  = Me.Value
  loc_ABF4BA: FLdI2 var_C2
  loc_ABF4BD: CI4UI1
  loc_ABF4BE: LitI4 1
  loc_ABF4C3: EqI4
  loc_ABF4C4: FLdRfVar var_CE
  loc_ABF4C7: FLdRfVar var_CC
  loc_ABF4CA: LitI2_Byte 2
  loc_ABF4CC: FLdPr Me
  loc_ABF4CF: VCallAd Control_ID_chkEtapa
  loc_ABF4D2: FStAdFunc var_C8
  loc_ABF4D5: FLdPr var_C8
  loc_ABF4D8: Set from_stack_2 = Me(from_stack_1)
  loc_ABF4DD: FLdPr var_CC
  loc_ABF4E0:  = Me.Value
  loc_ABF4E5: FLdI2 var_CE
  loc_ABF4E8: CI4UI1
  loc_ABF4E9: LitI4 0
  loc_ABF4EE: EqI4
  loc_ABF4EF: AndI4
  loc_ABF4F0: FFreeAd var_B8 = "": var_C0 = "": var_C8 = ""
  loc_ABF4FB: BranchF loc_ABF576
  loc_ABF4FE: LitVarStr var_94, "<br><br><br><br>"
  loc_ABF503: PopAdLdVar
  loc_ABF504: FLdPr Me
  loc_ABF507: MemLdRfVar from_stack_1.htmFile
  loc_ABF50A: LdPrVar
  loc_ABF50C: LateMemCall
  loc_ABF512: LitVarStr var_94, "<table border=""0"" align=""center"" cellspacing=""20"" class=""Normal"">"
  loc_ABF517: PopAdLdVar
  loc_ABF518: FLdPr Me
  loc_ABF51B: MemLdRfVar from_stack_1.htmFile
  loc_ABF51E: LdPrVar
  loc_ABF520: LateMemCall
  loc_ABF526: LitVarStr var_94, "  <tr align=""center"" valign=""top"">"
  loc_ABF52B: PopAdLdVar
  loc_ABF52C: FLdPr Me
  loc_ABF52F: MemLdRfVar from_stack_1.htmFile
  loc_ABF532: LdPrVar
  loc_ABF534: LateMemCall
  loc_ABF53A: LitVarStr var_94, "    <td ><hr>Cdor. Juan Manuel Espín<br>Contador General</td>"
  loc_ABF53F: PopAdLdVar
  loc_ABF540: FLdPr Me
  loc_ABF543: MemLdRfVar from_stack_1.htmFile
  loc_ABF546: LdPrVar
  loc_ABF548: LateMemCall
  loc_ABF54E: LitVarStr var_94, "  </tr>"
  loc_ABF553: PopAdLdVar
  loc_ABF554: FLdPr Me
  loc_ABF557: MemLdRfVar from_stack_1.htmFile
  loc_ABF55A: LdPrVar
  loc_ABF55C: LateMemCall
  loc_ABF562: LitVarStr var_94, "</table>"
  loc_ABF567: PopAdLdVar
  loc_ABF568: FLdPr Me
  loc_ABF56B: MemLdRfVar from_stack_1.htmFile
  loc_ABF56E: LdPrVar
  loc_ABF570: LateMemCall
  loc_ABF576: FLdRfVar var_C2
  loc_ABF579: FLdRfVar var_C0
  loc_ABF57C: LitI2_Byte 1
  loc_ABF57E: FLdPr Me
  loc_ABF581: VCallAd Control_ID_chkEtapa
  loc_ABF584: FStAdFunc var_B8
  loc_ABF587: FLdPr var_B8
  loc_ABF58A: Set from_stack_2 = Me(from_stack_1)
  loc_ABF58F: FLdPr var_C0
  loc_ABF592:  = Me.Value
  loc_ABF597: FLdI2 var_C2
  loc_ABF59A: CI4UI1
  loc_ABF59B: LitI4 0
  loc_ABF5A0: EqI4
  loc_ABF5A1: FLdRfVar var_CE
  loc_ABF5A4: FLdRfVar var_CC
  loc_ABF5A7: LitI2_Byte 2
  loc_ABF5A9: FLdPr Me
  loc_ABF5AC: VCallAd Control_ID_chkEtapa
  loc_ABF5AF: FStAdFunc var_C8
  loc_ABF5B2: FLdPr var_C8
  loc_ABF5B5: Set from_stack_2 = Me(from_stack_1)
  loc_ABF5BA: FLdPr var_CC
  loc_ABF5BD:  = Me.Value
  loc_ABF5C2: FLdI2 var_CE
  loc_ABF5C5: CI4UI1
  loc_ABF5C6: LitI4 1
  loc_ABF5CB: EqI4
  loc_ABF5CC: AndI4
  loc_ABF5CD: FFreeAd var_B8 = "": var_C0 = "": var_C8 = ""
  loc_ABF5D8: BranchF loc_ABF67B
  loc_ABF5DB: LitVarStr var_94, "<br><br><br><br>"
  loc_ABF5E0: PopAdLdVar
  loc_ABF5E1: FLdPr Me
  loc_ABF5E4: MemLdRfVar from_stack_1.htmFile
  loc_ABF5E7: LdPrVar
  loc_ABF5E9: LateMemCall
  loc_ABF5EF: LitVarStr var_94, "<table border=""0"" align=""center"" cellspacing=""20"" class=""Normal"">"
  loc_ABF5F4: PopAdLdVar
  loc_ABF5F5: FLdPr Me
  loc_ABF5F8: MemLdRfVar from_stack_1.htmFile
  loc_ABF5FB: LdPrVar
  loc_ABF5FD: LateMemCall
  loc_ABF603: LitVarStr var_94, "  <tr align=""center"" valign=""top"">"
  loc_ABF608: PopAdLdVar
  loc_ABF609: FLdPr Me
  loc_ABF60C: MemLdRfVar from_stack_1.htmFile
  loc_ABF60F: LdPrVar
  loc_ABF611: LateMemCall
  loc_ABF617: LitVarStr var_94, "    <td width=""33" & Chr(37) & """><hr>Cdor. Juan Manuel Espín<br>Contador General</td>"
  loc_ABF61C: PopAdLdVar
  loc_ABF61D: FLdPr Me
  loc_ABF620: MemLdRfVar from_stack_1.htmFile
  loc_ABF623: LdPrVar
  loc_ABF625: LateMemCall
  loc_ABF62B: LitVarStr var_94, "    <td></td>"
  loc_ABF630: PopAdLdVar
  loc_ABF631: FLdPr Me
  loc_ABF634: MemLdRfVar from_stack_1.htmFile
  loc_ABF637: LdPrVar
  loc_ABF639: LateMemCall
  loc_ABF63F: LitVarStr var_94, "    <td width=""33" & Chr(37) & """><hr>Cdor. Exequiel Vespa<br>Secretario de Hacienda</td>"
  loc_ABF644: PopAdLdVar
  loc_ABF645: FLdPr Me
  loc_ABF648: MemLdRfVar from_stack_1.htmFile
  loc_ABF64B: LdPrVar
  loc_ABF64D: LateMemCall
  loc_ABF653: LitVarStr var_94, "  </tr>"
  loc_ABF658: PopAdLdVar
  loc_ABF659: FLdPr Me
  loc_ABF65C: MemLdRfVar from_stack_1.htmFile
  loc_ABF65F: LdPrVar
  loc_ABF661: LateMemCall
  loc_ABF667: LitVarStr var_94, "</table>"
  loc_ABF66C: PopAdLdVar
  loc_ABF66D: FLdPr Me
  loc_ABF670: MemLdRfVar from_stack_1.htmFile
  loc_ABF673: LdPrVar
  loc_ABF675: LateMemCall
  loc_ABF67B: FLdRfVar var_C2
  loc_ABF67E: FLdRfVar var_C0
  loc_ABF681: LitI2_Byte 1
  loc_ABF683: FLdPr Me
  loc_ABF686: VCallAd Control_ID_chkEtapa
  loc_ABF689: FStAdFunc var_B8
  loc_ABF68C: FLdPr var_B8
  loc_ABF68F: Set from_stack_2 = Me(from_stack_1)
  loc_ABF694: FLdPr var_C0
  loc_ABF697:  = Me.Value
  loc_ABF69C: FLdI2 var_C2
  loc_ABF69F: CI4UI1
  loc_ABF6A0: LitI4 1
  loc_ABF6A5: EqI4
  loc_ABF6A6: FLdRfVar var_CE
  loc_ABF6A9: FLdRfVar var_CC
  loc_ABF6AC: LitI2_Byte 2
  loc_ABF6AE: FLdPr Me
  loc_ABF6B1: VCallAd Control_ID_chkEtapa
  loc_ABF6B4: FStAdFunc var_C8
  loc_ABF6B7: FLdPr var_C8
  loc_ABF6BA: Set from_stack_2 = Me(from_stack_1)
  loc_ABF6BF: FLdPr var_CC
  loc_ABF6C2:  = Me.Value
  loc_ABF6C7: FLdI2 var_CE
  loc_ABF6CA: CI4UI1
  loc_ABF6CB: LitI4 1
  loc_ABF6D0: EqI4
  loc_ABF6D1: AndI4
  loc_ABF6D2: FFreeAd var_B8 = "": var_C0 = "": var_C8 = ""
  loc_ABF6DD: BranchF loc_ABF780
  loc_ABF6E0: LitVarStr var_94, "<br><br><br><br>"
  loc_ABF6E5: PopAdLdVar
  loc_ABF6E6: FLdPr Me
  loc_ABF6E9: MemLdRfVar from_stack_1.htmFile
  loc_ABF6EC: LdPrVar
  loc_ABF6EE: LateMemCall
  loc_ABF6F4: LitVarStr var_94, "<table border=""0"" align=""center"" cellspacing=""20"" class=""Normal"">"
  loc_ABF6F9: PopAdLdVar
  loc_ABF6FA: FLdPr Me
  loc_ABF6FD: MemLdRfVar from_stack_1.htmFile
  loc_ABF700: LdPrVar
  loc_ABF702: LateMemCall
  loc_ABF708: LitVarStr var_94, "  <tr align=""center"" valign=""top"">"
  loc_ABF70D: PopAdLdVar
  loc_ABF70E: FLdPr Me
  loc_ABF711: MemLdRfVar from_stack_1.htmFile
  loc_ABF714: LdPrVar
  loc_ABF716: LateMemCall
  loc_ABF71C: LitVarStr var_94, "    <td width=""33" & Chr(37) & """><hr>Cdor. Juan Manuel Espín<br>Contador General</td>"
  loc_ABF721: PopAdLdVar
  loc_ABF722: FLdPr Me
  loc_ABF725: MemLdRfVar from_stack_1.htmFile
  loc_ABF728: LdPrVar
  loc_ABF72A: LateMemCall
  loc_ABF730: LitVarStr var_94, "    <td></td>"
  loc_ABF735: PopAdLdVar
  loc_ABF736: FLdPr Me
  loc_ABF739: MemLdRfVar from_stack_1.htmFile
  loc_ABF73C: LdPrVar
  loc_ABF73E: LateMemCall
  loc_ABF744: LitVarStr var_94, "    <td width=""33" & Chr(37) & """><hr>Cdor. Exequiel Vespa<br>Secretario de Hacienda</td>"
  loc_ABF749: PopAdLdVar
  loc_ABF74A: FLdPr Me
  loc_ABF74D: MemLdRfVar from_stack_1.htmFile
  loc_ABF750: LdPrVar
  loc_ABF752: LateMemCall
  loc_ABF758: LitVarStr var_94, "  </tr>"
  loc_ABF75D: PopAdLdVar
  loc_ABF75E: FLdPr Me
  loc_ABF761: MemLdRfVar from_stack_1.htmFile
  loc_ABF764: LdPrVar
  loc_ABF766: LateMemCall
  loc_ABF76C: LitVarStr var_94, "</table>"
  loc_ABF771: PopAdLdVar
  loc_ABF772: FLdPr Me
  loc_ABF775: MemLdRfVar from_stack_1.htmFile
  loc_ABF778: LdPrVar
  loc_ABF77A: LateMemCall
  loc_ABF780: FLdRfVar var_C2
  loc_ABF783: FLdRfVar var_C0
  loc_ABF786: LitI2_Byte 3
  loc_ABF788: FLdPr Me
  loc_ABF78B: VCallAd Control_ID_chkEtapa
  loc_ABF78E: FStAdFunc var_B8
  loc_ABF791: FLdPr var_B8
  loc_ABF794: Set from_stack_2 = Me(from_stack_1)
  loc_ABF799: FLdPr var_C0
  loc_ABF79C:  = Me.Value
  loc_ABF7A1: FLdI2 var_C2
  loc_ABF7A4: CI4UI1
  loc_ABF7A5: LitI4 1
  loc_ABF7AA: EqI4
  loc_ABF7AB: FFreeAd var_B8 = ""
  loc_ABF7B2: BranchF loc_ABF855
  loc_ABF7B5: LitVarStr var_94, "<br><br><br><br>"
  loc_ABF7BA: PopAdLdVar
  loc_ABF7BB: FLdPr Me
  loc_ABF7BE: MemLdRfVar from_stack_1.htmFile
  loc_ABF7C1: LdPrVar
  loc_ABF7C3: LateMemCall
  loc_ABF7C9: LitVarStr var_94, "<table border=""0"" align=""center"" cellspacing=""20"" class=""Normal"">"
  loc_ABF7CE: PopAdLdVar
  loc_ABF7CF: FLdPr Me
  loc_ABF7D2: MemLdRfVar from_stack_1.htmFile
  loc_ABF7D5: LdPrVar
  loc_ABF7D7: LateMemCall
  loc_ABF7DD: LitVarStr var_94, "  <tr align=""center"" valign=""top"">"
  loc_ABF7E2: PopAdLdVar
  loc_ABF7E3: FLdPr Me
  loc_ABF7E6: MemLdRfVar from_stack_1.htmFile
  loc_ABF7E9: LdPrVar
  loc_ABF7EB: LateMemCall
  loc_ABF7F1: LitVarStr var_94, "    <td width=""33" & Chr(37) & """><hr>Cdor. Juan Manuel Espín<br>Contador General</td>"
  loc_ABF7F6: PopAdLdVar
  loc_ABF7F7: FLdPr Me
  loc_ABF7FA: MemLdRfVar from_stack_1.htmFile
  loc_ABF7FD: LdPrVar
  loc_ABF7FF: LateMemCall
  loc_ABF805: LitVarStr var_94, "    <td></td>"
  loc_ABF80A: PopAdLdVar
  loc_ABF80B: FLdPr Me
  loc_ABF80E: MemLdRfVar from_stack_1.htmFile
  loc_ABF811: LdPrVar
  loc_ABF813: LateMemCall
  loc_ABF819: LitVarStr var_94, "    <td width=""33" & Chr(37) & """><hr>Cdor. Exequiel Vespa<br>Secretario de Hacienda</td>"
  loc_ABF81E: PopAdLdVar
  loc_ABF81F: FLdPr Me
  loc_ABF822: MemLdRfVar from_stack_1.htmFile
  loc_ABF825: LdPrVar
  loc_ABF827: LateMemCall
  loc_ABF82D: LitVarStr var_94, "  </tr>"
  loc_ABF832: PopAdLdVar
  loc_ABF833: FLdPr Me
  loc_ABF836: MemLdRfVar from_stack_1.htmFile
  loc_ABF839: LdPrVar
  loc_ABF83B: LateMemCall
  loc_ABF841: LitVarStr var_94, "</table>"
  loc_ABF846: PopAdLdVar
  loc_ABF847: FLdPr Me
  loc_ABF84A: MemLdRfVar from_stack_1.htmFile
  loc_ABF84D: LdPrVar
  loc_ABF84F: LateMemCall
  loc_ABF855: LitStr "Municipalidad de Guaymallén"
  loc_ABF858: LitStr "Municipalidad de General Alvear"
  loc_ABF85B: EqStr
  loc_ABF85D: BranchF loc_ABF890
  loc_ABF860: LitVarStr var_94, "<br>"
  loc_ABF865: PopAdLdVar
  loc_ABF866: FLdPr Me
  loc_ABF869: MemLdRfVar from_stack_1.htmFile
  loc_ABF86C: LdPrVar
  loc_ABF86E: LateMemCall
  loc_ABF874: LitStr "Pase a .................................................................. a sus efectos.- "
  loc_ABF877: ImpAdLdI4 MemVar_C3D03C
  loc_ABF87A: ConcatStr
  loc_ABF87B: CVarStr var_B4
  loc_ABF87E: PopAdLdVar
  loc_ABF87F: FLdPr Me
  loc_ABF882: MemLdRfVar from_stack_1.htmFile
  loc_ABF885: LdPrVar
  loc_ABF887: LateMemCall
  loc_ABF88D: FFree1Var var_B4 = ""
  loc_ABF890: FLdRfVar var_BC
  loc_ABF893: FLdPr Me
  loc_ABF896: VCallAd Control_ID_txtPie
  loc_ABF899: FStAdFunc var_B8
  loc_ABF89C: FLdPr var_B8
  loc_ABF89F:  = Me.Text
  loc_ABF8A4: ILdRf var_BC
  loc_ABF8A7: LitStr vbNullString
  loc_ABF8AA: NeStr
  loc_ABF8AC: FFree1Str var_BC
  loc_ABF8AF: FFree1Ad var_B8
  loc_ABF8B2: BranchF loc_ABF95A
  loc_ABF8B5: LitVarStr var_94, "<br>"
  loc_ABF8BA: PopAdLdVar
  loc_ABF8BB: FLdPr Me
  loc_ABF8BE: MemLdRfVar from_stack_1.htmFile
  loc_ABF8C1: LdPrVar
  loc_ABF8C3: LateMemCall
  loc_ABF8C9: LitVarStr var_94, "<table border=""0"" align=""left"" cellspacing=""20"" class=""Normal"">"
  loc_ABF8CE: PopAdLdVar
  loc_ABF8CF: FLdPr Me
  loc_ABF8D2: MemLdRfVar from_stack_1.htmFile
  loc_ABF8D5: LdPrVar
  loc_ABF8D7: LateMemCall
  loc_ABF8DD: LitVarStr var_94, "  <tr align=""center"" valign=""top"">"
  loc_ABF8E2: PopAdLdVar
  loc_ABF8E3: FLdPr Me
  loc_ABF8E6: MemLdRfVar from_stack_1.htmFile
  loc_ABF8E9: LdPrVar
  loc_ABF8EB: LateMemCall
  loc_ABF8F1: LitStr "    <td>"
  loc_ABF8F4: FLdRfVar var_BC
  loc_ABF8F7: FLdPr Me
  loc_ABF8FA: VCallAd Control_ID_txtPie
  loc_ABF8FD: FStAdFunc var_B8
  loc_ABF900: FLdPr var_B8
  loc_ABF903:  = Me.Text
  loc_ABF908: ILdRf var_BC
  loc_ABF90B: ConcatStr
  loc_ABF90C: FStStrNoPop var_D4
  loc_ABF90F: LitStr "</td>"
  loc_ABF912: ConcatStr
  loc_ABF913: CVarStr var_B4
  loc_ABF916: PopAdLdVar
  loc_ABF917: FLdPr Me
  loc_ABF91A: MemLdRfVar from_stack_1.htmFile
  loc_ABF91D: LdPrVar
  loc_ABF91F: LateMemCall
  loc_ABF925: FFreeStr var_BC = ""
  loc_ABF92C: FFree1Ad var_B8
  loc_ABF92F: FFree1Var var_B4 = ""
  loc_ABF932: LitVarStr var_94, "  </tr>"
  loc_ABF937: PopAdLdVar
  loc_ABF938: FLdPr Me
  loc_ABF93B: MemLdRfVar from_stack_1.htmFile
  loc_ABF93E: LdPrVar
  loc_ABF940: LateMemCall
  loc_ABF946: LitVarStr var_94, "</table>"
  loc_ABF94B: PopAdLdVar
  loc_ABF94C: FLdPr Me
  loc_ABF94F: MemLdRfVar from_stack_1.htmFile
  loc_ABF952: LdPrVar
  loc_ABF954: LateMemCall
  loc_ABF95A: LitVarStr var_94, "</body>"
  loc_ABF95F: PopAdLdVar
  loc_ABF960: FLdPr Me
  loc_ABF963: MemLdRfVar from_stack_1.htmFile
  loc_ABF966: LdPrVar
  loc_ABF968: LateMemCall
  loc_ABF96E: LitVarStr var_94, "</html>"
  loc_ABF973: PopAdLdVar
  loc_ABF974: FLdPr Me
  loc_ABF977: MemLdRfVar from_stack_1.htmFile
  loc_ABF97A: LdPrVar
  loc_ABF97C: LateMemCall
  loc_ABF982: ExitProcHresult
End Function
