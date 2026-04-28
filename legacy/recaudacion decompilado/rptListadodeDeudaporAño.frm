VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeDeudaporAño
  Caption = "Listado de Deuda por Año"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeDeudaporAño.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 13272
  ClientHeight = 6600
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
    Top = 6345
    Width = 13275
    Height = 255
    TabIndex = 24
    OleObjectBlob = "rptListadodeDeudaporAño.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9000
    Top = 5280
    Width = 855
    Height = 735
    TabIndex = 22
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
    Picture = "rptListadodeDeudaporAño.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeDeudaporAño.frx":0B9C
    Left = 9720
    Top = 5040
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 5040
    Width = 3615
    Height = 1215
    TabIndex = 20
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1920
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 29
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 21
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 5040
    Width = 4095
    Height = 1215
    TabIndex = 17
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 19
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 12975
    Height = 3615
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
    Begin VB.CheckBox CodiFapaOpt
      Caption = "Sin Facilidad"
      Left = 5520
      Top = 2760
      Width = 1815
      Height = 375
      TabIndex = 27
    End
    Begin VB.CheckBox NumeApreOpt
      Caption = "Sin Apremio"
      Left = 7680
      Top = 2760
      Width = 1598
      Height = 375
      TabIndex = 26
    End
    Begin VB.CheckBox PeriodoOpt
      Caption = "Agrupar por periodo"
      Left = 5640
      Top = 1440
      Width = 3615
      Height = 375
      TabIndex = 9
    End
    Begin VB.TextBox ImporteTxt
      ForeColor = &HFF0000&
      Left = 2160
      Top = 2880
      Width = 2175
      Height = 360
      TabIndex = 13
      Alignment = 1 'Right Justify
      MaxLength = 12
    End
    Begin VB.ComboBox CodiOficCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1200
      Top = 360
      Width = 6615
      Height = 420
      TabIndex = 2
      List = "rptListadodeDeudaporAño.frx":0C00
      ItemData = "rptListadodeDeudaporAño.frx":0C74
    End
    Begin VB.Frame Frame4
      Caption = "Periodo"
      Left = 240
      Top = 960
      Width = 4695
      Height = 1095
      TabIndex = 4
      Begin MSMask.MaskEdBox PeriCtctDesdeMsk
        Left = 1320
        Top = 480
        Width = 735
        Height = 360
        TabIndex = 6
        OleObjectBlob = "rptListadodeDeudaporAño.frx":0C87
      End
      Begin MSMask.MaskEdBox PeriCtctHastaMsk
        Left = 3480
        Top = 480
        Width = 735
        Height = 360
        TabIndex = 8
        OleObjectBlob = "rptListadodeDeudaporAño.frx":0D17
      End
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 2700
        Top = 480
        Width = 705
        Height = 300
        TabIndex = 7
        AutoSize = -1  'True
      End
      Begin VB.Label Label3
        Caption = "Desde:"
        Left = 480
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 5
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 11040
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox ActiConcMsk
      Left = 2160
      Top = 2280
      Width = 1695
      Height = 360
      TabIndex = 11
      OleObjectBlob = "rptListadodeDeudaporAño.frx":0DA7
    End
    Begin VB.Label DetaActiLbl
      ForeColor = &HFF0000&
      Left = 3960
      Top = 2280
      Width = 6135
      Height = 360
      TabIndex = 28
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label12
      Caption = "Desde Importe:"
      Left = 450
      Top = 2880
      Width = 1650
      Height = 300
      TabIndex = 12
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Cuenta Contable:"
      Left = 240
      Top = 2280
      Width = 1860
      Height = 300
      TabIndex = 10
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
    Begin VB.Label Label1
      Caption = "Oficina:"
      Index = 0
      Left = 240
      Top = 360
      Width = 795
      Height = 300
      TabIndex = 1
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9120
    Top = 5520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 23
    OleObjectBlob = "rptListadodeDeudaporAño.frx":0E45
  End
  Begin MSMask.MaskEdBox CodiLocaMsk
    Left = 1920
    Top = 3840
    Width = 735
    Height = 375
    TabIndex = 15
    OleObjectBlob = "rptListadodeDeudaporAño.frx":0EF9
    DataField = "CodiLoca"
  End
  Begin VB.Label ObseLbl
    Caption = "ObservacionesLbl"
    ForeColor = &HFF0000&
    Left = 120
    Top = 4440
    Width = 10335
    Height = 435
    TabIndex = 25
    WordWrap = -1  'True
    DataField = "DetaLoca"
  End
  Begin VB.Label Label1
    Caption = "Cód.Localidad:"
    Index = 17
    Left = 240
    Top = 3840
    Width = 1590
    Height = 300
    TabIndex = 14
    Alignment = 2 'Center
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
  Begin VB.Label DetaLocaLbl
    Caption = "DetaLocaLbl"
    ForeColor = &HFF0000&
    Left = 2760
    Top = 3840
    Width = 6735
    Height = 435
    TabIndex = 16
    WordWrap = -1  'True
    DataField = "DetaLoca"
  End
End

Attribute VB_Name = "rptListadodeDeudaporAño"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_2_00565C88
  bStruc(16) As Byte ' String fields: 3
End Type

Private Type UDT_3_00565CC4
  bStruc(32) As Byte ' String fields: 7
End Type


Private Sub CodiLocaMsk_UnknownEvent_0 '9C2450
  'Data Table: 4ED718
  loc_9C243C: FLdPr Me
  loc_9C243F: VCallAd Control_ID_CodiLocaMsk
  loc_9C2442: CVarAd
  loc_9C2446: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C244B: FFree1Var var_94 = ""
  loc_9C244E: ExitProcHresult
End Sub

Private Sub CodiLocaMsk_UnknownEvent_1 'AE9204
  'Data Table: 4ED718
  loc_AE9088: FLdPr Me
  loc_AE908B: VCallAd Control_ID_CodiLocaMsk
  loc_AE908E: FStAdFunc var_88
  loc_AE9091: FLdPr var_88
  loc_AE9094: LateIdLdVar var_98 DispID_22 0
  loc_AE909B: CStrVarTmp
  loc_AE909C: FStStrNoPop var_9C
  loc_AE909F: CR8Str
  loc_AE90A1: LitI2_Byte 0
  loc_AE90A3: CR8I2
  loc_AE90A4: NeR8
  loc_AE90A5: FFree1Str var_9C
  loc_AE90A8: FFree1Ad var_88
  loc_AE90AB: FFree1Var var_98 = ""
  loc_AE90AE: BranchF loc_AE9202
  loc_AE90B1: FLdRfVar var_A8
  loc_AE90B4: FLdRfVar var_9E
  loc_AE90B7: FLdPr Me
  loc_AE90BA: VCallAd Control_ID_CodiOficCbo
  loc_AE90BD: FStAdFunc var_88
  loc_AE90C0: FLdPr var_88
  loc_AE90C3:  = Me.ListIndex
  loc_AE90C8: FLdI2 var_9E
  loc_AE90CB: FLdPr Me
  loc_AE90CE: VCallAd Control_ID_CodiOficCbo
  loc_AE90D1: FStAdFunc var_A4
  loc_AE90D4: FLdPr var_A4
  loc_AE90D7:  = Me.ItemData
  loc_AE90DC: ILdRf var_A8
  loc_AE90DF: FStR4 var_AC
  loc_AE90E2: FFreeAd var_88 = ""
  loc_AE90E9: ILdRf var_AC
  loc_AE90EC: LitI4 1
  loc_AE90F1: EqI4
  loc_AE90F2: BranchF loc_AE9138
  loc_AE90F5: LitStr " Busca todos los inmuebles que tienen código de localidad "
  loc_AE90F8: FLdPr Me
  loc_AE90FB: VCallAd Control_ID_CodiLocaMsk
  loc_AE90FE: FStAdFunc var_88
  loc_AE9101: FLdPr var_88
  loc_AE9104: LateIdLdVar var_98 DispID_22 0
  loc_AE910B: CStrVarTmp
  loc_AE910C: FStStrNoPop var_9C
  loc_AE910F: ConcatStr
  loc_AE9110: FStStrNoPop var_B0
  loc_AE9113: FLdPr Me
  loc_AE9116: VCallAd Control_ID_ObseLbl
  loc_AE9119: FStAdFunc var_A4
  loc_AE911C: FLdPr var_A4
  loc_AE911F: Me.Caption = from_stack_1
  loc_AE9124: FFreeStr var_9C = ""
  loc_AE912B: FFreeAd var_88 = ""
  loc_AE9132: FFree1Var var_98 = ""
  loc_AE9135: Branch loc_AE9202
  loc_AE9138: ILdRf var_AC
  loc_AE913B: LitI4 2
  loc_AE9140: EqI4
  loc_AE9141: BranchF loc_AE9187
  loc_AE9144: LitStr " Busca todos los comercios que tienen código de localidad "
  loc_AE9147: FLdPr Me
  loc_AE914A: VCallAd Control_ID_CodiLocaMsk
  loc_AE914D: FStAdFunc var_88
  loc_AE9150: FLdPr var_88
  loc_AE9153: LateIdLdVar var_98 DispID_22 0
  loc_AE915A: CStrVarTmp
  loc_AE915B: FStStrNoPop var_9C
  loc_AE915E: ConcatStr
  loc_AE915F: FStStrNoPop var_B0
  loc_AE9162: FLdPr Me
  loc_AE9165: VCallAd Control_ID_ObseLbl
  loc_AE9168: FStAdFunc var_A4
  loc_AE916B: FLdPr var_A4
  loc_AE916E: Me.Caption = from_stack_1
  loc_AE9173: FFreeStr var_9C = ""
  loc_AE917A: FFreeAd var_88 = ""
  loc_AE9181: FFree1Var var_98 = ""
  loc_AE9184: Branch loc_AE9202
  loc_AE9187: ILdRf var_AC
  loc_AE918A: LitI4 3
  loc_AE918F: EqI4
  loc_AE9190: BranchF loc_AE91AD
  loc_AE9193: LitStr " Para Deudores Varios no se tiene en cuenta la localidad"
  loc_AE9196: FLdPr Me
  loc_AE9199: VCallAd Control_ID_ObseLbl
  loc_AE919C: FStAdFunc var_88
  loc_AE919F: FLdPr var_88
  loc_AE91A2: Me.Caption = from_stack_1
  loc_AE91A7: FFree1Ad var_88
  loc_AE91AA: Branch loc_AE9202
  loc_AE91AD: ILdRf var_AC
  loc_AE91B0: LitI4 4
  loc_AE91B5: EqI4
  loc_AE91B6: BranchF loc_AE9202
  loc_AE91B9: LitStr " Busca todos los registro de difuntos que tienen código de localidad "
  loc_AE91BC: FLdPr Me
  loc_AE91BF: VCallAd Control_ID_CodiLocaMsk
  loc_AE91C2: FStAdFunc var_88
  loc_AE91C5: FLdPr var_88
  loc_AE91C8: LateIdLdVar var_98 DispID_22 0
  loc_AE91CF: CStrVarTmp
  loc_AE91D0: FStStrNoPop var_9C
  loc_AE91D3: ConcatStr
  loc_AE91D4: FStStrNoPop var_B0
  loc_AE91D7: LitStr ", en el domicilio postal"
  loc_AE91DA: ConcatStr
  loc_AE91DB: FStStrNoPop var_B4
  loc_AE91DE: FLdPr Me
  loc_AE91E1: VCallAd Control_ID_ObseLbl
  loc_AE91E4: FStAdFunc var_A4
  loc_AE91E7: FLdPr var_A4
  loc_AE91EA: Me.Caption = from_stack_1
  loc_AE91EF: FFreeStr var_9C = "": var_B0 = ""
  loc_AE91F8: FFreeAd var_88 = ""
  loc_AE91FF: FFree1Var var_98 = ""
  loc_AE9202: ExitProcHresult
End Sub

Private Sub CodiLocaMsk_UnknownEvent_8 'AED468
  'Data Table: 4ED718
  loc_AED2E0: FLdPr Me
  loc_AED2E3: VCallAd Control_ID_CodiLocaMsk
  loc_AED2E6: FStAdFunc var_98
  loc_AED2E9: FLdPr var_98
  loc_AED2EC: LateIdLdVar var_A8 DispID_13 -32767
  loc_AED2F3: CBoolVar
  loc_AED2F5: FLdPr Me
  loc_AED2F8: VCallAd Control_ID_CodiLocaMsk
  loc_AED2FB: FStAdFunc var_AC
  loc_AED2FE: FLdPr var_AC
  loc_AED301: LateIdLdVar var_BC DispID_22 0
  loc_AED308: CStrVarTmp
  loc_AED309: FStStrNoPop var_C0
  loc_AED30C: CR8Str
  loc_AED30E: LitI2_Byte 0
  loc_AED310: CR8I2
  loc_AED311: NeR8
  loc_AED312: AndI4
  loc_AED313: FFree1Str var_C0
  loc_AED316: FFreeAd var_98 = ""
  loc_AED31D: FFreeVar var_A8 = ""
  loc_AED324: BranchF loc_AED450
  loc_AED327: FLdPr Me
  loc_AED32A: VCallAd Control_ID_CodiLocaMsk
  loc_AED32D: FStAdFunc var_98
  loc_AED330: FLdPr var_98
  loc_AED333: LateIdLdVar var_A8 DispID_22 0
  loc_AED33A: CStrVarTmp
  loc_AED33B: FStStrNoPop var_C0
  loc_AED33E: ImpAdCallI2 Proc_18_22_A588CC()
  loc_AED343: FStStrNoPop var_C4
  loc_AED346: FLdPr Me
  loc_AED349: MemStStrCopy
  loc_AED34D: FFreeStr var_C0 = ""
  loc_AED354: FFree1Ad var_98
  loc_AED357: FFree1Var var_A8 = ""
  loc_AED35A: FLdPr Me
  loc_AED35D: MemLdStr global_104
  loc_AED360: LitStr vbNullString
  loc_AED363: NeStr
  loc_AED365: BranchF loc_AED3A5
  loc_AED368: FLdPr Me
  loc_AED36B: MemLdStr global_104
  loc_AED36E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AED373: LitStr vbNullString
  loc_AED376: FLdPr Me
  loc_AED379: VCallAd Control_ID_DetaLocaLbl
  loc_AED37C: FStAdFunc var_98
  loc_AED37F: FLdPr var_98
  loc_AED382: Me.Caption = from_stack_1
  loc_AED387: FFree1Ad var_98
  loc_AED38A: FLdPr Me
  loc_AED38D: VCallAd Control_ID_CodiLocaMsk
  loc_AED390: CVarAd
  loc_AED394: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AED399: FFree1Var var_A8 = ""
  loc_AED39C: LitI2_Byte &HFF
  loc_AED39E: IStI2 Button
  loc_AED3A1: ExitProcHresult
  loc_AED3A2: Branch loc_AED44D
  loc_AED3A5: FLdPr Me
  loc_AED3A8: VCallAd Control_ID_CodiLocaMsk
  loc_AED3AB: FStAdFunc var_98
  loc_AED3AE: FLdPr var_98
  loc_AED3B1: LateIdLdVar var_A8 DispID_22 0
  loc_AED3B8: CStrVarTmp
  loc_AED3B9: FStStrNoPop var_C0
  loc_AED3BC: CI2Str
  loc_AED3BE: FLdRfVar var_BC
  loc_AED3C1: ImpAdCallFPR4 Proc_270_67_AD14C8(, )
  loc_AED3C6: FLdRfVar var_BC
  loc_AED3C9: FStVar var_94
  loc_AED3CD: FFree1Str var_C0
  loc_AED3D0: FFree1Ad var_98
  loc_AED3D3: FFree1Var var_A8 = ""
  loc_AED3D6: LitVarI2 var_D4, 1
  loc_AED3DB: PopAdLdVar
  loc_AED3DC: FLdRfVar var_94
  loc_AED3DF: VarIndexLdVar
  loc_AED3E5: LitVarStr var_F4, "0"
  loc_AED3EA: HardType
  loc_AED3EB: EqVarBool
  loc_AED3ED: FFree1Var var_A8 = ""
  loc_AED3F0: BranchF loc_AED420
  loc_AED3F3: LitStr "La LOCALIDAD no EXISTE, verifique..."
  loc_AED3F6: FLdPr Me
  loc_AED3F9: MemStStrCopy
  loc_AED3FD: FLdPr Me
  loc_AED400: MemLdStr global_104
  loc_AED403: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AED408: FLdPr Me
  loc_AED40B: VCallAd Control_ID_CodiLocaMsk
  loc_AED40E: CVarAd
  loc_AED412: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AED417: FFree1Var var_A8 = ""
  loc_AED41A: LitI2_Byte &HFF
  loc_AED41C: IStI2 Button
  loc_AED41F: ExitProcHresult
  loc_AED420: LitVarI2 var_D4, 1
  loc_AED425: PopAdLdVar
  loc_AED426: FLdRfVar var_94
  loc_AED429: VarIndexLdVar
  loc_AED42F: CStrVarVal var_C0
  loc_AED433: FLdPr Me
  loc_AED436: VCallAd Control_ID_DetaLocaLbl
  loc_AED439: FStAdFunc var_98
  loc_AED43C: FLdPr var_98
  loc_AED43F: Me.Caption = from_stack_1
  loc_AED444: FFree1Str var_C0
  loc_AED447: FFree1Ad var_98
  loc_AED44A: FFree1Var var_A8 = ""
  loc_AED44D: Branch loc_AED467
  loc_AED450: LitStr "TODAS LAS LOCALIDADES"
  loc_AED453: FLdPr Me
  loc_AED456: VCallAd Control_ID_DetaLocaLbl
  loc_AED459: FStAdFunc var_98
  loc_AED45C: FLdPr var_98
  loc_AED45F: Me.Caption = from_stack_1
  loc_AED464: FFree1Ad var_98
  loc_AED467: ExitProcHresult
End Sub

Private Sub CodiLocaMsk_KeyPress(KeyAscii As Integer) 'AB1DB8
  'Data Table: 4ED718
  loc_AB1CDC: LitStr "0123456789 "
  loc_AB1CDF: FStStrCopy var_88
  loc_AB1CE2: FLdRfVar var_88
  loc_AB1CE5: ILdRf KeyAscii
  loc_AB1CE8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_AB1CED: IStI2 KeyAscii
  loc_AB1CF0: FFree1Str var_88
  loc_AB1CF3: ILdI2 KeyAscii
  loc_AB1CF6: LitI2_Byte &H20
  loc_AB1CF8: EqI2
  loc_AB1CF9: BranchF loc_AB1DB5
  loc_AB1CFC: LitI2_Byte 0
  loc_AB1CFE: IStI2 KeyAscii
  loc_AB1D01: LitVar_Missing var_A8
  loc_AB1D04: PopAdLdVar
  loc_AB1D05: LitVarI4
  loc_AB1D0D: PopAdLdVar
  loc_AB1D0E: ImpAdLdRf MemVar_D94228
  loc_AB1D11: NewIfNullPr dlgBuscarLocalidad
  loc_AB1D14: dlgBuscarLocalidad.Show from_stack_1, from_stack_2
  loc_AB1D19: FLdRfVar var_B0
  loc_AB1D1C: FLdRfVar var_AC
  loc_AB1D1F: ImpAdLdRf MemVar_D94228
  loc_AB1D22: NewIfNullPr dlgBuscarLocalidad
  loc_AB1D25: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AB1D2A: FLdPr var_AC
  loc_AB1D2D: from_stack_1 = clslocalidad.RecordCount
  loc_AB1D32: ILdRf var_B0
  loc_AB1D35: LitI4 0
  loc_AB1D3A: GtI4
  loc_AB1D3B: FFree1Ad var_AC
  loc_AB1D3E: BranchF loc_AB1DB5
  loc_AB1D41: FLdRfVar var_B2
  loc_AB1D44: FLdRfVar var_AC
  loc_AB1D47: ImpAdLdRf MemVar_D94228
  loc_AB1D4A: NewIfNullPr dlgBuscarLocalidad
  loc_AB1D4D: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AB1D52: FLdPr var_AC
  loc_AB1D55: from_stack_1 = clslocalidad.CodiLoca
  loc_AB1D5A: FLdI2 var_B2
  loc_AB1D5D: CStrUI1
  loc_AB1D5F: CVarStr var_C4
  loc_AB1D62: PopAdLdVar
  loc_AB1D63: FLdPr Me
  loc_AB1D66: VCallAd Control_ID_CodiLocaMsk
  loc_AB1D69: FStAdFunc var_C8
  loc_AB1D6C: FLdPr var_C8
  loc_AB1D6F: LateIdSt
  loc_AB1D74: FFreeAd var_AC = ""
  loc_AB1D7B: FFree1Var var_C4 = ""
  loc_AB1D7E: FLdRfVar var_88
  loc_AB1D81: FLdRfVar var_AC
  loc_AB1D84: ImpAdLdRf MemVar_D94228
  loc_AB1D87: NewIfNullPr dlgBuscarLocalidad
  loc_AB1D8A: from_stack_1v = dlgBuscarLocalidad.global_4338864Get()
  loc_AB1D8F: FLdPr var_AC
  loc_AB1D92: from_stack_1 = clslocalidad.DetaLoca
  loc_AB1D97: ILdRf var_88
  loc_AB1D9A: FLdPr Me
  loc_AB1D9D: VCallAd Control_ID_DetaLocaLbl
  loc_AB1DA0: FStAdFunc var_C8
  loc_AB1DA3: FLdPr var_C8
  loc_AB1DA6: Me.Caption = from_stack_1
  loc_AB1DAB: FFree1Str var_88
  loc_AB1DAE: FFreeAd var_AC = ""
  loc_AB1DB5: ExitProcHresult
End Sub

Private Sub PeriCtctDesdeMsk_UnknownEvent_0 '9C2408
  'Data Table: 4ED718
  loc_9C23F4: FLdPr Me
  loc_9C23F7: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_9C23FA: CVarAd
  loc_9C23FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2403: FFree1Var var_94 = ""
  loc_9C2406: ExitProcHresult
End Sub

Private Sub PeriCtctDesdeMsk_UnknownEvent_8 'A6ED20
  'Data Table: 4ED718
  loc_A6ECB8: FLdPr Me
  loc_A6ECBB: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_A6ECBE: FStAdFunc var_88
  loc_A6ECC1: FLdPr var_88
  loc_A6ECC4: LateIdLdVar var_98 DispID_22 0
  loc_A6ECCB: PopAd
  loc_A6ECCD: LitI2_Byte 0
  loc_A6ECCF: FLdRfVar var_98
  loc_A6ECD2: CStrVarTmp
  loc_A6ECD3: FStStrNoPop var_9C
  loc_A6ECD6: LitStr "Periodo"
  loc_A6ECD9: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6ECDE: FStStrNoPop var_A0
  loc_A6ECE1: FLdPr Me
  loc_A6ECE4: MemStStrCopy
  loc_A6ECE8: FFreeStr var_9C = ""
  loc_A6ECEF: FFree1Ad var_88
  loc_A6ECF2: FFree1Var var_98 = ""
  loc_A6ECF5: FLdPr Me
  loc_A6ECF8: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_A6ECFB: FStAdFuncNoPop
  loc_A6ECFE: CastAd
  loc_A6ED01: FStAdFunc var_A4
  loc_A6ED04: FLdRfVar var_A4
  loc_A6ED07: FLdPr Me
  loc_A6ED0A: MemLdStr global_104
  loc_A6ED0D: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6ED12: IStI2 KeyAscii
  loc_A6ED15: FFreeAd var_88 = ""
  loc_A6ED1C: ExitProcHresult
End Sub

Private Sub PeriCtctHastaMsk_UnknownEvent_0 '9C2138
  'Data Table: 4ED718
  loc_9C2124: FLdPr Me
  loc_9C2127: VCallAd Control_ID_PeriCtctHastaMsk
  loc_9C212A: CVarAd
  loc_9C212E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C2133: FFree1Var var_94 = ""
  loc_9C2136: ExitProcHresult
End Sub

Private Sub PeriCtctHastaMsk_UnknownEvent_8 'A6EC74
  'Data Table: 4ED718
  loc_A6EC0C: FLdPr Me
  loc_A6EC0F: VCallAd Control_ID_PeriCtctHastaMsk
  loc_A6EC12: FStAdFunc var_88
  loc_A6EC15: FLdPr var_88
  loc_A6EC18: LateIdLdVar var_98 DispID_22 0
  loc_A6EC1F: PopAd
  loc_A6EC21: LitI2_Byte 0
  loc_A6EC23: FLdRfVar var_98
  loc_A6EC26: CStrVarTmp
  loc_A6EC27: FStStrNoPop var_9C
  loc_A6EC2A: LitStr "Periodo"
  loc_A6EC2D: ImpAdCallI2 Proc_18_18_A41358(, , )
  loc_A6EC32: FStStrNoPop var_A0
  loc_A6EC35: FLdPr Me
  loc_A6EC38: MemStStrCopy
  loc_A6EC3C: FFreeStr var_9C = ""
  loc_A6EC43: FFree1Ad var_88
  loc_A6EC46: FFree1Var var_98 = ""
  loc_A6EC49: FLdPr Me
  loc_A6EC4C: VCallAd Control_ID_PeriCtctHastaMsk
  loc_A6EC4F: FStAdFuncNoPop
  loc_A6EC52: CastAd
  loc_A6EC55: FStAdFunc var_A4
  loc_A6EC58: FLdRfVar var_A4
  loc_A6EC5B: FLdPr Me
  loc_A6EC5E: MemLdStr global_104
  loc_A6EC61: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6EC66: IStI2 KeyAscii
  loc_A6EC69: FFreeAd var_88 = ""
  loc_A6EC70: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E03CC
  'Data Table: 4ED718
  loc_9E03B0: LitI2_Byte &HFF
  loc_9E03B2: LitI2_Byte 0
  loc_9E03B4: ILdRf Me
  loc_9E03B7: CastAd
  loc_9E03BA: FStAdFunc var_88
  loc_9E03BD: FLdRfVar var_88
  loc_9E03C0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E03C5: FFree1Ad var_88
  loc_9E03C8: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D0C60
  'Data Table: 4ED718
  loc_9D0C48: ILdRf Me
  loc_9D0C4B: CastAd
  loc_9D0C4E: FStAdFunc var_88
  loc_9D0C51: FLdRfVar var_88
  loc_9D0C54: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D0C59: FFree1Ad var_88
  loc_9D0C5C: ExitProcHresult
End Sub

Private Sub CodiOficCbo_LostFocus() 'A8B01C
  'Data Table: 4ED718
  loc_A8AF7C: FLdRfVar var_94
  loc_A8AF7F: FLdRfVar var_8A
  loc_A8AF82: FLdPr Me
  loc_A8AF85: VCallAd Control_ID_CodiOficCbo
  loc_A8AF88: FStAdFunc var_88
  loc_A8AF8B: FLdPr var_88
  loc_A8AF8E:  = Me.ListIndex
  loc_A8AF93: FLdI2 var_8A
  loc_A8AF96: FLdPr Me
  loc_A8AF99: VCallAd Control_ID_CodiOficCbo
  loc_A8AF9C: FStAdFunc var_90
  loc_A8AF9F: FLdPr var_90
  loc_A8AFA2:  = Me.ItemData
  loc_A8AFA7: ILdRf var_94
  loc_A8AFAA: LitI4 3
  loc_A8AFAF: EqI4
  loc_A8AFB0: FFreeAd var_88 = ""
  loc_A8AFB7: BranchF loc_A8B01B
  loc_A8AFBA: LitVar_FALSE
  loc_A8AFBE: PopAdLdVar
  loc_A8AFBF: FLdPr Me
  loc_A8AFC2: VCallAd Control_ID_CodiLocaMsk
  loc_A8AFC5: FStAdFunc var_88
  loc_A8AFC8: FLdPr var_88
  loc_A8AFCB: LateIdSt
  loc_A8AFD0: FFree1Ad var_88
  loc_A8AFD3: LitVarStr var_A4, "0"
  loc_A8AFD8: PopAdLdVar
  loc_A8AFD9: FLdPr Me
  loc_A8AFDC: VCallAd Control_ID_CodiLocaMsk
  loc_A8AFDF: FStAdFunc var_88
  loc_A8AFE2: FLdPr var_88
  loc_A8AFE5: LateIdSt
  loc_A8AFEA: FFree1Ad var_88
  loc_A8AFED: LitStr vbNullString
  loc_A8AFF0: FLdPr Me
  loc_A8AFF3: VCallAd Control_ID_DetaLocaLbl
  loc_A8AFF6: FStAdFunc var_88
  loc_A8AFF9: FLdPr var_88
  loc_A8AFFC: Me.Caption = from_stack_1
  loc_A8B001: FFree1Ad var_88
  loc_A8B004: LitStr vbNullString
  loc_A8B007: FLdPr Me
  loc_A8B00A: VCallAd Control_ID_ObseLbl
  loc_A8B00D: FStAdFunc var_88
  loc_A8B010: FLdPr var_88
  loc_A8B013: Me.Caption = from_stack_1
  loc_A8B018: FFree1Ad var_88
  loc_A8B01B: ExitProcHresult
End Sub

Private Sub ActiConcMsk_UnknownEvent_0 '9C21C8
  'Data Table: 4ED718
  loc_9C21B4: FLdPr Me
  loc_9C21B7: VCallAd Control_ID_ActiConcMsk
  loc_9C21BA: CVarAd
  loc_9C21BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C21C3: FFree1Var var_94 = ""
  loc_9C21C6: ExitProcHresult
End Sub

Private Function ActiConcMsk_UnknownEvent_8(arg_C) 'AC93DC
  'Data Table: 4ED718
  loc_AC92DC: FLdPr Me
  loc_AC92DF: VCallAd Control_ID_ActiConcMsk
  loc_AC92E2: FStAdFunc var_88
  loc_AC92E5: FLdPr var_88
  loc_AC92E8: LateIdLdVar var_98 DispID_22 0
  loc_AC92EF: PopAd
  loc_AC92F1: LitI4 0
  loc_AC92F6: LitI4 0
  loc_AC92FB: FLdRfVar var_A4
  loc_AC92FE: Redim
  loc_AC9308: LitVarStr var_B4, "1"
  loc_AC930D: LitI4 0
  loc_AC9312: ILdRf var_A4
  loc_AC9315: Ary1StVarCopy
  loc_AC9317: FLdRfVar var_A4
  loc_AC931A: FLdRfVar var_98
  loc_AC931D: CStrVarTmp
  loc_AC931E: FStStrNoPop var_A0
  loc_AC9321: ImpAdLdI2 MemVar_D93034
  loc_AC9324: CStrUI1
  loc_AC9326: FStStrNoPop var_9C
  loc_AC9329: ImpAdCallI2 Proc_18_132_AF3A7C(, , )
  loc_AC932E: FStStr var_B8
  loc_AC9331: FLdRfVar var_A4
  loc_AC9334: Erase
  loc_AC9335: ILdRf var_B8
  loc_AC9338: FLdPr Me
  loc_AC933B: MemStStrCopy
  loc_AC933F: FFreeStr var_9C = "": var_A0 = ""
  loc_AC9348: FFree1Ad var_88
  loc_AC934B: FFree1Var var_98 = ""
  loc_AC934E: FLdPr Me
  loc_AC9351: VCallAd Control_ID_ActiConcMsk
  loc_AC9354: FStAdFuncNoPop
  loc_AC9357: CastAd
  loc_AC935A: FStAdFunc var_BC
  loc_AC935D: FLdRfVar var_BC
  loc_AC9360: FLdPr Me
  loc_AC9363: MemLdStr global_104
  loc_AC9366: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AC936B: IStI2 arg_C
  loc_AC936E: FFreeAd var_88 = ""
  loc_AC9375: ILdI2 arg_C
  loc_AC9378: NotI4
  loc_AC9379: BranchF loc_AC93C3
  loc_AC937C: FLdPr Me
  loc_AC937F: VCallAd Control_ID_ActiConcMsk
  loc_AC9382: FStAdFunc var_88
  loc_AC9385: FLdPr var_88
  loc_AC9388: LateIdLdVar var_98 DispID_22 0
  loc_AC938F: CStrVarTmp
  loc_AC9390: FStStrNoPop var_9C
  loc_AC9393: ImpAdLdI2 MemVar_D93034
  loc_AC9396: ImpAdCallI2 Proc_270_69_A92C68(, )
  loc_AC939B: FStStrNoPop var_A0
  loc_AC939E: FLdPr Me
  loc_AC93A1: VCallAd Control_ID_DetaActiLbl
  loc_AC93A4: FStAdFunc var_BC
  loc_AC93A7: FLdPr var_BC
  loc_AC93AA: Me.Caption = from_stack_1
  loc_AC93AF: FFreeStr var_9C = ""
  loc_AC93B6: FFreeAd var_88 = ""
  loc_AC93BD: FFree1Var var_98 = ""
  loc_AC93C0: Branch loc_AC93DA
  loc_AC93C3: LitStr vbNullString
  loc_AC93C6: FLdPr Me
  loc_AC93C9: VCallAd Control_ID_DetaActiLbl
  loc_AC93CC: FStAdFunc var_88
  loc_AC93CF: FLdPr var_88
  loc_AC93D2: Me.Caption = from_stack_1
  loc_AC93D7: FFree1Ad var_88
  loc_AC93DA: ExitProcHresult
End Function

Private Sub ActiConcMsk_KeyPress(KeyAscii As Integer) 'AB0574
  'Data Table: 4ED718
  loc_AB04AC: ILdI2 KeyAscii
  loc_AB04AF: LitI2_Byte &H20
  loc_AB04B1: EqI2
  loc_AB04B2: BranchF loc_AB0571
  loc_AB04B5: ImpAdLdRf MemVar_D9468C
  loc_AB04B8: NewIfNullAd
  loc_AB04BB: FStAd var_88 
  loc_AB04BF: LitStr "SELECT DISTINCT(CodiCuco), cu.* FROM infogov.cuentacontable as cu"
  loc_AB04C2: LitStr " LEFT JOIN concepto as co ON co.PeriInfo = cu.PeriInfo AND co.ActiConc = cu.CodiCuco AND ActiConc <> ''"
  loc_AB04C5: ConcatStr
  loc_AB04C6: FStStrNoPop var_8C
  loc_AB04C9: LitStr " WHERE co.PeriInfo = "
  loc_AB04CC: ConcatStr
  loc_AB04CD: FStStrNoPop var_90
  loc_AB04D0: ImpAdLdI2 MemVar_D93034
  loc_AB04D3: CStrUI1
  loc_AB04D5: FStStrNoPop var_94
  loc_AB04D8: ConcatStr
  loc_AB04D9: FStStrNoPop var_98
  loc_AB04DC: LitStr " ORDER BY co.ActiConc"
  loc_AB04DF: ConcatStr
  loc_AB04E0: FStStrNoPop var_9C
  loc_AB04E3: FLdPr var_88
  loc_AB04E6: Call dlgBuscarCuentaContable.sPasaSelectPut(from_stack_1v)
  loc_AB04EB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_AB04F8: LitVar_Missing var_BC
  loc_AB04FB: PopAdLdVar
  loc_AB04FC: LitVarI4
  loc_AB0504: PopAdLdVar
  loc_AB0505: FLdPr var_88
  loc_AB0508: Me.Show from_stack_1, from_stack_2
  loc_AB050D: FLdRfVar var_8C
  loc_AB0510: FLdPr var_88
  loc_AB0513: from_stack_1v = dlgBuscarCuentaContable.sPasaCodigoGet()
  loc_AB0518: FLdZeroAd var_8C
  loc_AB051B: CVarStr var_CC
  loc_AB051E: PopAdLdVar
  loc_AB051F: FLdPr Me
  loc_AB0522: VCallAd Control_ID_ActiConcMsk
  loc_AB0525: FStAdFunc var_D0
  loc_AB0528: FLdPr var_D0
  loc_AB052B: LateIdSt
  loc_AB0530: FFree1Ad var_D0
  loc_AB0533: FFree1Var var_CC = ""
  loc_AB0536: LitStr vbNullString
  loc_AB0539: FLdPr var_88
  loc_AB053C: Call dlgBuscarCuentaContable.sPasaCodigoPut(from_stack_1v)
  loc_AB0541: FLdRfVar var_8C
  loc_AB0544: FLdPr var_88
  loc_AB0547: from_stack_1v = dlgBuscarCuentaContable.sPasaDetalleGet()
  loc_AB054C: ILdRf var_8C
  loc_AB054F: FLdPr Me
  loc_AB0552: VCallAd Control_ID_DetaActiLbl
  loc_AB0555: FStAdFunc var_D0
  loc_AB0558: FLdPr var_D0
  loc_AB055B: Me.Caption = from_stack_1
  loc_AB0560: FFree1Str var_8C
  loc_AB0563: FFree1Ad var_D0
  loc_AB0566: LitNothing
  loc_AB0568: FStAd var_88 
  loc_AB056C: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_AB0571: ExitProcHresult
  loc_AB0572: CStrDate
End Sub

Private Sub ImporteTxt_GotFocus() '9C2060
  'Data Table: 4ED718
  loc_9C204C: FLdPr Me
  loc_9C204F: VCallAd Control_ID_ImporteTxt
  loc_9C2052: CVarAd
  loc_9C2056: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C205B: FFree1Var var_94 = ""
  loc_9C205E: ExitProcHresult
End Sub

Private Sub ImporteTxt_KeyPress(KeyAscii As Integer) 'A08210
  'Data Table: 4ED718
  loc_A081DC: LitStr "1234567890,."
  loc_A081DF: FStStrCopy var_88
  loc_A081E2: FLdRfVar var_88
  loc_A081E5: ILdRf KeyAscii
  loc_A081E8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A081ED: IStI2 KeyAscii
  loc_A081F0: FFree1Str var_88
  loc_A081F3: ILdI2 KeyAscii
  loc_A081F6: LitStr "."
  loc_A081F9: ImpAdCallI2 Asc()
  loc_A081FE: EqI2
  loc_A081FF: BranchF loc_A0820D
  loc_A08202: LitStr ","
  loc_A08205: ImpAdCallI2 Asc()
  loc_A0820A: IStI2 KeyAscii
  loc_A0820D: ExitProcHresult
  loc_A0820E: Error
End Sub

Private Sub ImporteTxt_Validate(Cancel As Boolean) 'AAF0F8
  'Data Table: 4ED718
  loc_AAF030: FLdRfVar var_8C
  loc_AAF033: FLdPr Me
  loc_AAF036: VCallAd Control_ID_ImporteTxt
  loc_AAF039: FStAdFunc var_88
  loc_AAF03C: FLdPr var_88
  loc_AAF03F:  = Me.Text
  loc_AAF044: LitI2_Byte &HFF
  loc_AAF046: LitI2_Byte 0
  loc_AAF048: ILdRf var_8C
  loc_AAF04B: LitStr "el importe"
  loc_AAF04E: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_AAF053: FStStrNoPop var_90
  loc_AAF056: FLdPr Me
  loc_AAF059: MemStStrCopy
  loc_AAF05D: FFreeStr var_8C = ""
  loc_AAF064: FFree1Ad var_88
  loc_AAF067: FLdPr Me
  loc_AAF06A: VCallAd Control_ID_ImporteTxt
  loc_AAF06D: FStAdFuncNoPop
  loc_AAF070: CastAd
  loc_AAF073: FStAdFunc var_94
  loc_AAF076: FLdRfVar var_94
  loc_AAF079: FLdPr Me
  loc_AAF07C: MemLdStr global_104
  loc_AAF07F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_AAF084: IStI2 Cancel
  loc_AAF087: FFreeAd var_88 = ""
  loc_AAF08E: ILdI2 Cancel
  loc_AAF091: NotI4
  loc_AAF092: BranchF loc_AAF0F7
  loc_AAF095: FLdRfVar var_8C
  loc_AAF098: FLdPr Me
  loc_AAF09B: VCallAd Control_ID_ImporteTxt
  loc_AAF09E: FStAdFunc var_88
  loc_AAF0A1: FLdPr var_88
  loc_AAF0A4:  = Me.Text
  loc_AAF0A9: LitI4 1
  loc_AAF0AE: LitI4 1
  loc_AAF0B3: LitVarStr var_B4, "###,###,##0.00"
  loc_AAF0B8: FStVarCopyObj var_C4
  loc_AAF0BB: FLdRfVar var_C4
  loc_AAF0BE: FLdZeroAd var_8C
  loc_AAF0C1: CVarStr var_A4
  loc_AAF0C4: FLdRfVar var_D4
  loc_AAF0C7: ImpAdCallFPR4  = Format(, )
  loc_AAF0CC: FLdRfVar var_D4
  loc_AAF0CF: CStrVarVal var_90
  loc_AAF0D3: FLdPr Me
  loc_AAF0D6: VCallAd Control_ID_ImporteTxt
  loc_AAF0D9: FStAdFunc var_94
  loc_AAF0DC: FLdPr var_94
  loc_AAF0DF: Me.Text = from_stack_1
  loc_AAF0E4: FFree1Str var_90
  loc_AAF0E7: FFreeAd var_88 = ""
  loc_AAF0EE: FFreeVar var_A4 = "": var_C4 = ""
  loc_AAF0F7: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9D0F0C
  'Data Table: 4ED718
  loc_9D0EF4: LitI2_Byte 0
  loc_9D0EF6: ILdRf Me
  loc_9D0EF9: CastAd
  loc_9D0EFC: FStAdFunc var_88
  loc_9D0EFF: FLdRfVar var_88
  loc_9D0F02: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D0F07: FFree1Ad var_88
  loc_9D0F0A: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A18280
  'Data Table: 4ED718
  loc_A18248: FLdPr Me
  loc_A1824B: VCallAd Control_ID_statusBar
  loc_A1824E: FStAdFunc var_88
  loc_A18251: FLdPr var_88
  loc_A18254: LateIdLdVar var_98 DispID_1 0
  loc_A1825B: CStrVarTmp
  loc_A1825C: CVarStr var_A8
  loc_A1825F: PopAdLdVar
  loc_A18260: FLdPr Me
  loc_A18263: VCallAd Control_ID_statusBar
  loc_A18266: FStAdFunc var_BC
  loc_A18269: FLdPr var_BC
  loc_A1826C: LateIdSt
  loc_A18271: FFreeAd var_88 = ""
  loc_A18278: FFreeVar var_98 = ""
  loc_A1827F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E032C
  'Data Table: 4ED718
  loc_9E0310: LitI2_Byte 0
  loc_9E0312: PopTmpLdAd2 var_8A
  loc_9E0315: ILdRf Me
  loc_9E0318: CastAd
  loc_9E031B: FStAdFunc var_88
  loc_9E031E: FLdRfVar var_88
  loc_9E0321: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E0326: FFree1Ad var_88
  loc_9E0329: ExitProcHresult
  loc_9E032A: FStFPR8 var_5F01
End Sub

Private Sub cmdNueva_Click() 'AF17B0
  'Data Table: 4ED718
  loc_AF1608: LitI2_Byte 0
  loc_AF160A: FLdPr Me
  loc_AF160D: MemStI2 bGenerado
  loc_AF1610: LitI2_Byte &HFF
  loc_AF1612: FLdPr Me
  loc_AF1615: MemStI2 bLogos
  loc_AF1618: LitI2_Byte 0
  loc_AF161A: ILdRf Me
  loc_AF161D: CastAd
  loc_AF1620: FStAdFunc var_88
  loc_AF1623: FLdRfVar var_88
  loc_AF1626: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_AF162B: FFree1Ad var_88
  loc_AF162E: LitI2_Byte 0
  loc_AF1630: FLdPr Me
  loc_AF1633: VCallAd Control_ID_CodiOficCbo
  loc_AF1636: FStAdFunc var_88
  loc_AF1639: FLdPr var_88
  loc_AF163C: Me.ListIndex = from_stack_1
  loc_AF1641: FFree1Ad var_88
  loc_AF1644: LitI2_Byte 0
  loc_AF1646: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AF164B: CVarDate var_A8
  loc_AF164F: FLdRfVar var_B8
  loc_AF1652: ImpAdCallFPR4  = Year()
  loc_AF1657: FLdRfVar var_B8
  loc_AF165A: CStrVarTmp
  loc_AF165B: CVarStr var_C8
  loc_AF165E: PopAdLdVar
  loc_AF165F: FLdPr Me
  loc_AF1662: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_AF1665: FStAdFunc var_88
  loc_AF1668: FLdPr var_88
  loc_AF166B: LateIdSt
  loc_AF1670: FFree1Ad var_88
  loc_AF1673: FFreeVar var_A8 = "": var_B8 = ""
  loc_AF167C: FLdPr Me
  loc_AF167F: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_AF1682: FStAdFunc var_88
  loc_AF1685: FLdPr var_88
  loc_AF1688: LateIdLdVar var_A8 DispID_22 0
  loc_AF168F: CStrVarTmp
  loc_AF1690: CVarStr var_B8
  loc_AF1693: PopAdLdVar
  loc_AF1694: FLdPr Me
  loc_AF1697: VCallAd Control_ID_PeriCtctHastaMsk
  loc_AF169A: FStAdFunc var_DC
  loc_AF169D: FLdPr var_DC
  loc_AF16A0: LateIdSt
  loc_AF16A5: FFreeAd var_88 = ""
  loc_AF16AC: FFreeVar var_A8 = ""
  loc_AF16B3: LitI4 0
  loc_AF16B8: CI2I4
  loc_AF16B9: FLdPr Me
  loc_AF16BC: VCallAd Control_ID_PeriodoOpt
  loc_AF16BF: FStAdFunc var_88
  loc_AF16C2: FLdPr var_88
  loc_AF16C5: Me.Value = from_stack_1
  loc_AF16CA: FFree1Ad var_88
  loc_AF16CD: LitVarStr var_98, vbNullString
  loc_AF16D2: PopAdLdVar
  loc_AF16D3: FLdPr Me
  loc_AF16D6: VCallAd Control_ID_ActiConcMsk
  loc_AF16D9: FStAdFunc var_88
  loc_AF16DC: FLdPr var_88
  loc_AF16DF: LateIdSt
  loc_AF16E4: FFree1Ad var_88
  loc_AF16E7: LitStr vbNullString
  loc_AF16EA: FLdPr Me
  loc_AF16ED: VCallAd Control_ID_DetaActiLbl
  loc_AF16F0: FStAdFunc var_88
  loc_AF16F3: FLdPr var_88
  loc_AF16F6: Me.Caption = from_stack_1
  loc_AF16FB: FFree1Ad var_88
  loc_AF16FE: LitI4 1
  loc_AF1703: CI2I4
  loc_AF1704: FLdPr Me
  loc_AF1707: VCallAd Control_ID_CodiFapaOpt
  loc_AF170A: FStAdFunc var_88
  loc_AF170D: FLdPr var_88
  loc_AF1710: Me.Value = from_stack_1
  loc_AF1715: FFree1Ad var_88
  loc_AF1718: LitI4 1
  loc_AF171D: CI2I4
  loc_AF171E: FLdPr Me
  loc_AF1721: VCallAd Control_ID_NumeApreOpt
  loc_AF1724: FStAdFunc var_88
  loc_AF1727: FLdPr var_88
  loc_AF172A: Me.Value = from_stack_1
  loc_AF172F: FFree1Ad var_88
  loc_AF1732: LitStr "0,00"
  loc_AF1735: FLdPr Me
  loc_AF1738: VCallAd Control_ID_ImporteTxt
  loc_AF173B: FStAdFunc var_88
  loc_AF173E: FLdPr var_88
  loc_AF1741: Me.Text = from_stack_1
  loc_AF1746: FFree1Ad var_88
  loc_AF1749: LitI2_Byte 0
  loc_AF174B: CStrUI1
  loc_AF174D: CVarStr var_A8
  loc_AF1750: PopAdLdVar
  loc_AF1751: FLdPr Me
  loc_AF1754: VCallAd Control_ID_CodiLocaMsk
  loc_AF1757: FStAdFunc var_88
  loc_AF175A: FLdPr var_88
  loc_AF175D: LateIdSt
  loc_AF1762: FFree1Ad var_88
  loc_AF1765: FFree1Var var_A8 = ""
  loc_AF1768: LitStr vbNullString
  loc_AF176B: FLdPr Me
  loc_AF176E: VCallAd Control_ID_DetaLocaLbl
  loc_AF1771: FStAdFunc var_88
  loc_AF1774: FLdPr var_88
  loc_AF1777: Me.Caption = from_stack_1
  loc_AF177C: FFree1Ad var_88
  loc_AF177F: LitStr vbNullString
  loc_AF1782: FLdPr Me
  loc_AF1785: VCallAd Control_ID_ObseLbl
  loc_AF1788: FStAdFunc var_88
  loc_AF178B: FLdPr var_88
  loc_AF178E: Me.Caption = from_stack_1
  loc_AF1793: FFree1Ad var_88
  loc_AF1796: Call HabilitarCriterio()
  loc_AF179B: ILdRf Me
  loc_AF179E: CastAd
  loc_AF17A1: FStAdFunc var_88
  loc_AF17A4: FLdRfVar var_88
  loc_AF17A7: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_AF17AC: FFree1Ad var_88
  loc_AF17AF: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB2C38
  'Data Table: 4ED718
  loc_AB2B5C: ILdRf Me
  loc_AB2B5F: CastAd
  loc_AB2B62: FStAdFunc var_88
  loc_AB2B65: FLdRfVar var_88
  loc_AB2B68: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AB2B6D: FFree1Ad var_88
  loc_AB2B70: FLdRfVar var_8C
  loc_AB2B73: NewIfNullAd
  loc_AB2B76: FStAd var_90 
  loc_AB2B7A: LitStr "SELECT CodiOfic, DetaOfic FROM oficina ORDER BY CodiOfic"
  loc_AB2B7D: FLdPr var_90
  loc_AB2B80: Call clsoficina.RedefineRS(from_stack_1v)
  loc_AB2B85: FLdPr var_90
  loc_AB2B88: Call clsoficina.MoveFirst()
  loc_AB2B8D: FLdPr Me
  loc_AB2B90: VCallAd Control_ID_CodiOficCbo
  loc_AB2B93: FStAdFunc var_88
  loc_AB2B96: FLdPr var_88
  loc_AB2B99: Me.Clear
  loc_AB2B9E: FFree1Ad var_88
  loc_AB2BA1: FLdRfVar var_92
  loc_AB2BA4: FLdPr var_90
  loc_AB2BA7: from_stack_1 = clsoficina.EOF
  loc_AB2BAC: FLdI2 var_92
  loc_AB2BAF: NotI4
  loc_AB2BB0: BranchF loc_AB2C2A
  loc_AB2BB3: LitVar_Missing var_A8
  loc_AB2BB6: PopAdLdVar
  loc_AB2BB7: FLdRfVar var_98
  loc_AB2BBA: FLdPr var_90
  loc_AB2BBD: from_stack_1 = clsoficina.DetaOfic
  loc_AB2BC2: ILdRf var_98
  loc_AB2BC5: FLdPr Me
  loc_AB2BC8: VCallAd Control_ID_CodiOficCbo
  loc_AB2BCB: FStAdFunc var_88
  loc_AB2BCE: FLdPr var_88
  loc_AB2BD1: Me.AddItem from_stack_1, from_stack_2
  loc_AB2BD6: FFree1Str var_98
  loc_AB2BD9: FFree1Ad var_88
  loc_AB2BDC: FLdRfVar var_92
  loc_AB2BDF: FLdPr var_90
  loc_AB2BE2: from_stack_1 = clsoficina.CodiOfic
  loc_AB2BE7: FLdI2 var_92
  loc_AB2BEA: CI4UI1
  loc_AB2BEB: FLdRfVar var_AA
  loc_AB2BEE: FLdPr Me
  loc_AB2BF1: VCallAd Control_ID_CodiOficCbo
  loc_AB2BF4: FStAdFunc var_88
  loc_AB2BF7: FLdPr var_88
  loc_AB2BFA:  = Me.NewIndex
  loc_AB2BFF: FLdI2 var_AA
  loc_AB2C02: FLdPr Me
  loc_AB2C05: VCallAd Control_ID_CodiOficCbo
  loc_AB2C08: FStAdFunc var_B0
  loc_AB2C0B: FLdPr var_B0
  loc_AB2C0E: Me.ItemData = from_stack_1
  loc_AB2C13: FFreeAd var_88 = ""
  loc_AB2C1A: LitI2_Byte 1
  loc_AB2C1C: PopTmpLdAd2 var_92
  loc_AB2C1F: FLdPr var_90
  loc_AB2C22: Call clsoficina.Move(from_stack_1v)
  loc_AB2C27: Branch loc_AB2BA1
  loc_AB2C2A: LitNothing
  loc_AB2C2C: FStAd var_90 
  loc_AB2C30: Call cmdNueva_Click()
  loc_AB2C35: ExitProcHresult
  loc_AB2C36: LitNothing
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D1924
  'Data Table: 4ED718
  loc_9D190C: FLdPr Me
  loc_9D190F: VCallAd Control_ID_wbbReporte
  loc_9D1912: FStAdFunc var_88
  loc_9D1915: FLdRfVar var_88
  loc_9D1918: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D191D: FFree1Ad var_88
  loc_9D1920: ExitProcHresult
  loc_9D1921: LargeBos
End Sub

Private Sub cmdSalir_Click() 'A0162C
  'Data Table: 4ED718
  loc_A015FC: LitVarStr var_94, "Cerrando..."
  loc_A01601: PopAdLdVar
  loc_A01602: FLdPr Me
  loc_A01605: VCallAd Control_ID_statusBar
  loc_A01608: FStAdFunc var_A8
  loc_A0160B: FLdPr var_A8
  loc_A0160E: LateIdSt
  loc_A01613: FFree1Ad var_A8
  loc_A01616: ILdRf Me
  loc_A01619: FStAdNoPop
  loc_A0161D: ImpAdLdRf MemVar_D9C5D8
  loc_A01620: NewIfNullPr Global
  loc_A01623: Global.Unload from_stack_1
  loc_A01628: FFree1Ad var_A8
  loc_A0162B: ExitProcHresult
End Sub

Public Function bLogosGet() '4EECA4
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4EECB3
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4EECC2
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4EECD1
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'AB68BC
  'Data Table: 4ED718
  loc_AB67F8: LitI4 0
  loc_AB67FD: LitI4 9
  loc_AB6802: FLdRfVar var_88
  loc_AB6805: Redim
  loc_AB680F: FLdPr Me
  loc_AB6812: VCallAd Control_ID_CodiOficCbo
  loc_AB6815: CVarAd
  loc_AB6819: ParmAry1St
  loc_AB681F: FLdPr Me
  loc_AB6822: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_AB6825: CVarAd
  loc_AB6829: ParmAry1St
  loc_AB682F: FLdPr Me
  loc_AB6832: VCallAd Control_ID_PeriCtctHastaMsk
  loc_AB6835: CVarAd
  loc_AB6839: ParmAry1St
  loc_AB683F: FLdPr Me
  loc_AB6842: VCallAd Control_ID_PeriodoOpt
  loc_AB6845: CVarAd
  loc_AB6849: ParmAry1St
  loc_AB684F: FLdPr Me
  loc_AB6852: VCallAd Control_ID_CodiFapaOpt
  loc_AB6855: CVarAd
  loc_AB6859: ParmAry1St
  loc_AB685F: FLdPr Me
  loc_AB6862: VCallAd Control_ID_NumeApreOpt
  loc_AB6865: CVarAd
  loc_AB6869: ParmAry1St
  loc_AB686F: FLdPr Me
  loc_AB6872: VCallAd Control_ID_ActiConcMsk
  loc_AB6875: CVarAd
  loc_AB6879: ParmAry1St
  loc_AB687F: FLdPr Me
  loc_AB6882: VCallAd Control_ID_DetaActiLbl
  loc_AB6885: CVarAd
  loc_AB6889: ParmAry1St
  loc_AB688F: FLdPr Me
  loc_AB6892: VCallAd Control_ID_ImporteTxt
  loc_AB6895: CVarAd
  loc_AB6899: ParmAry1St
  loc_AB689F: FLdPr Me
  loc_AB68A2: VCallAd Control_ID_CodiLocaMsk
  loc_AB68A5: CVarAd
  loc_AB68A9: ParmAry1St
  loc_AB68AF: FLdRfVar var_88
  loc_AB68B2: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AB68B7: FLdRfVar var_88
  loc_AB68BA: Erase
  loc_AB68BB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C3AECC
  'Data Table: 4ED718
  loc_C3A3A4: FLdPr Me
  loc_C3A3A7: MemLdI2 bGenerado
  loc_C3A3AA: BranchF loc_C3A3AE
  loc_C3A3AD: ExitProcHresult
  loc_C3A3AE: LitVarStr var_C8, "Generando reporte..."
  loc_C3A3B3: PopAdLdVar
  loc_C3A3B4: FLdPr Me
  loc_C3A3B7: VCallAd Control_ID_statusBar
  loc_C3A3BA: FStAdFunc var_DC
  loc_C3A3BD: FLdPr var_DC
  loc_C3A3C0: LateIdSt
  loc_C3A3C5: FFree1Ad var_DC
  loc_C3A3C8: LitI4 &HB
  loc_C3A3CD: CI2I4
  loc_C3A3CE: FLdPr Me
  loc_C3A3D1: Me.MousePointer = from_stack_1
  loc_C3A3D6: LitI2_Byte 0
  loc_C3A3D8: PopTmpLdAd2 var_DE
  loc_C3A3DB: Call PeriCtctDesdeMsk_UnknownEvent_8()
  loc_C3A3E0: FLdPr Me
  loc_C3A3E3: MemLdStr global_104
  loc_C3A3E6: LitStr vbNullString
  loc_C3A3E9: NeStr
  loc_C3A3EB: BranchF loc_C3A3F1
  loc_C3A3EE: Branch loc_C3AEA0
  loc_C3A3F1: LitI2_Byte 0
  loc_C3A3F3: PopTmpLdAd2 var_DE
  loc_C3A3F6: Call PeriCtctHastaMsk_UnknownEvent_8()
  loc_C3A3FB: FLdPr Me
  loc_C3A3FE: MemLdStr global_104
  loc_C3A401: LitStr vbNullString
  loc_C3A404: NeStr
  loc_C3A406: BranchF loc_C3A40C
  loc_C3A409: Branch loc_C3AEA0
  loc_C3A40C: LitI2_Byte 0
  loc_C3A40E: PopTmpLdAd2 var_DE
  loc_C3A411: from_stack_2v = ActiConcMsk_UnknownEvent_8(from_stack_1v)
  loc_C3A416: FLdPr Me
  loc_C3A419: MemLdStr global_104
  loc_C3A41C: LitStr vbNullString
  loc_C3A41F: NeStr
  loc_C3A421: BranchF loc_C3A427
  loc_C3A424: Branch loc_C3AEA0
  loc_C3A427: LitI2_Byte 0
  loc_C3A429: PopTmpLdAd2 var_DE
  loc_C3A42C: Call ImporteTxt_Validate(from_stack_1v)
  loc_C3A431: FLdPr Me
  loc_C3A434: MemLdStr global_104
  loc_C3A437: LitStr vbNullString
  loc_C3A43A: NeStr
  loc_C3A43C: BranchF loc_C3A442
  loc_C3A43F: Branch loc_C3AEA0
  loc_C3A442: FLdRfVar var_DE
  loc_C3A445: FLdPr Me
  loc_C3A448: VCallAd Control_ID_CodiFapaOpt
  loc_C3A44B: FStAdFunc var_DC
  loc_C3A44E: FLdPr var_DC
  loc_C3A451:  = Me.Value
  loc_C3A456: LitVarStr var_100, vbNullString
  loc_C3A45B: FStVarCopyObj var_110
  loc_C3A45E: FLdRfVar var_110
  loc_C3A461: LitVarStr var_D8, " AND ctacte.CodiFapa = 0 "
  loc_C3A466: FStVarCopyObj var_F0
  loc_C3A469: FLdRfVar var_F0
  loc_C3A46C: FLdI2 var_DE
  loc_C3A46F: CI4UI1
  loc_C3A470: LitI4 1
  loc_C3A475: EqI4
  loc_C3A476: CVarBoolI2 var_C8
  loc_C3A47A: FLdRfVar var_120
  loc_C3A47D: ImpAdCallFPR4  = IIf(, , )
  loc_C3A482: FLdRfVar var_120
  loc_C3A485: CStrVarTmp
  loc_C3A486: FStStr var_A0
  loc_C3A489: FFree1Ad var_DC
  loc_C3A48C: FFreeVar var_C8 = "": var_F0 = "": var_110 = ""
  loc_C3A497: FLdRfVar var_DE
  loc_C3A49A: FLdPr Me
  loc_C3A49D: VCallAd Control_ID_NumeApreOpt
  loc_C3A4A0: FStAdFunc var_DC
  loc_C3A4A3: FLdPr var_DC
  loc_C3A4A6:  = Me.Value
  loc_C3A4AB: LitVarStr var_100, vbNullString
  loc_C3A4B0: FStVarCopyObj var_110
  loc_C3A4B3: FLdRfVar var_110
  loc_C3A4B6: LitVarStr var_D8, " AND ctacte.NumeApre = 0 "
  loc_C3A4BB: FStVarCopyObj var_F0
  loc_C3A4BE: FLdRfVar var_F0
  loc_C3A4C1: FLdI2 var_DE
  loc_C3A4C4: CI4UI1
  loc_C3A4C5: LitI4 1
  loc_C3A4CA: EqI4
  loc_C3A4CB: CVarBoolI2 var_C8
  loc_C3A4CF: FLdRfVar var_120
  loc_C3A4D2: ImpAdCallFPR4  = IIf(, , )
  loc_C3A4D7: FLdRfVar var_120
  loc_C3A4DA: CStrVarTmp
  loc_C3A4DB: FStStr var_A4
  loc_C3A4DE: FFree1Ad var_DC
  loc_C3A4E1: FFreeVar var_C8 = "": var_F0 = "": var_110 = ""
  loc_C3A4EC: FLdRfVar var_DE
  loc_C3A4EF: FLdPr Me
  loc_C3A4F2: VCallAd Control_ID_PeriodoOpt
  loc_C3A4F5: FStAdFunc var_DC
  loc_C3A4F8: FLdPr var_DC
  loc_C3A4FB:  = Me.Value
  loc_C3A500: FLdI2 var_DE
  loc_C3A503: CI4UI1
  loc_C3A504: LitI4 1
  loc_C3A509: EqI4
  loc_C3A50A: FFree1Ad var_DC
  loc_C3A50D: BranchF loc_C3A525
  loc_C3A510: LitStr "sum(SaldCtct) as "
  loc_C3A513: FStStrCopy var_8C
  loc_C3A516: LitStr " GROUP BY cc.CuenCtct, PeriCtct"
  loc_C3A519: FStStrCopy var_90
  loc_C3A51C: LitStr vbNullString
  loc_C3A51F: FStStrCopy var_94
  loc_C3A522: Branch loc_C3A537
  loc_C3A525: LitStr vbNullString
  loc_C3A528: FStStrCopy var_8C
  loc_C3A52B: LitStr vbNullString
  loc_C3A52E: FStStrCopy var_90
  loc_C3A531: LitStr ", BimeCtct"
  loc_C3A534: FStStrCopy var_94
  loc_C3A537: LitStr vbNullString
  loc_C3A53A: FStStrCopy var_9C
  loc_C3A53D: LitStr vbNullString
  loc_C3A540: FStStrCopy var_98
  loc_C3A543: LitStr vbNullString
  loc_C3A546: FStStrCopy var_88
  loc_C3A549: LitStr vbNullString
  loc_C3A54C: FLdPr Me
  loc_C3A54F: MemStStrCopy
  loc_C3A553: FLdRfVar var_128
  loc_C3A556: FLdRfVar var_DE
  loc_C3A559: FLdPr Me
  loc_C3A55C: VCallAd Control_ID_CodiOficCbo
  loc_C3A55F: FStAdFunc var_DC
  loc_C3A562: FLdPr var_DC
  loc_C3A565:  = Me.ListIndex
  loc_C3A56A: FLdI2 var_DE
  loc_C3A56D: FLdPr Me
  loc_C3A570: VCallAd Control_ID_CodiOficCbo
  loc_C3A573: FStAdFunc var_124
  loc_C3A576: FLdPr var_124
  loc_C3A579:  = Me.ItemData
  loc_C3A57E: ILdRf var_128
  loc_C3A581: FStR4 var_12C
  loc_C3A584: FFreeAd var_DC = ""
  loc_C3A58B: ILdRf var_12C
  loc_C3A58E: LitI4 1
  loc_C3A593: EqI4
  loc_C3A594: BranchF loc_C3A603
  loc_C3A597: LitStr ", NomeInmu, inmueble.CodiCall, IFNULL(DetaCall,'') DetaCall "
  loc_C3A59A: FLdPr Me
  loc_C3A59D: MemStStrCopy
  loc_C3A5A1: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = cc.CuenCtct "
  loc_C3A5A4: LitStr " LEFT JOIN infogov.calle ON infogov.calle.CodiCall = inmueble.CodiCall"
  loc_C3A5A7: ConcatStr
  loc_C3A5A8: FStStr var_98
  loc_C3A5AB: FLdPr Me
  loc_C3A5AE: VCallAd Control_ID_CodiLocaMsk
  loc_C3A5B1: FStAdFunc var_DC
  loc_C3A5B4: FLdPr var_DC
  loc_C3A5B7: LateIdLdVar var_F0 DispID_22 0
  loc_C3A5BE: CStrVarTmp
  loc_C3A5BF: FStStrNoPop var_130
  loc_C3A5C2: CI2Str
  loc_C3A5C4: LitI2_Byte 0
  loc_C3A5C6: GtI2
  loc_C3A5C7: FFree1Str var_130
  loc_C3A5CA: FFree1Ad var_DC
  loc_C3A5CD: FFree1Var var_F0 = ""
  loc_C3A5D0: BranchF loc_C3A600
  loc_C3A5D3: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = ctacte.CuenCtct "
  loc_C3A5D6: FStStrCopy var_9C
  loc_C3A5D9: LitStr " AND inmueble.CodiLoca = "
  loc_C3A5DC: FLdPr Me
  loc_C3A5DF: VCallAd Control_ID_CodiLocaMsk
  loc_C3A5E2: FStAdFunc var_DC
  loc_C3A5E5: FLdPr var_DC
  loc_C3A5E8: LateIdLdVar var_F0 DispID_22 0
  loc_C3A5EF: CStrVarTmp
  loc_C3A5F0: FStStrNoPop var_130
  loc_C3A5F3: ConcatStr
  loc_C3A5F4: FStStr var_88
  loc_C3A5F7: FFree1Str var_130
  loc_C3A5FA: FFree1Ad var_DC
  loc_C3A5FD: FFree1Var var_F0 = ""
  loc_C3A600: Branch loc_C3A792
  loc_C3A603: ILdRf var_12C
  loc_C3A606: LitI4 2
  loc_C3A60B: EqI4
  loc_C3A60C: BranchF loc_C3A67B
  loc_C3A60F: LitStr ", comercio.CodiCall, IFNULL(DetaCall,'') DetaCall "
  loc_C3A612: FLdPr Me
  loc_C3A615: MemStStrCopy
  loc_C3A619: LitStr " LEFT JOIN comercio ON comercio.CodiCome = cc.CuenCtct "
  loc_C3A61C: LitStr " LEFT JOIN infogov.calle ON infogov.calle.CodiCall = comercio.CodiCall"
  loc_C3A61F: ConcatStr
  loc_C3A620: FStStr var_98
  loc_C3A623: FLdPr Me
  loc_C3A626: VCallAd Control_ID_CodiLocaMsk
  loc_C3A629: FStAdFunc var_DC
  loc_C3A62C: FLdPr var_DC
  loc_C3A62F: LateIdLdVar var_F0 DispID_22 0
  loc_C3A636: CStrVarTmp
  loc_C3A637: FStStrNoPop var_130
  loc_C3A63A: CI2Str
  loc_C3A63C: LitI2_Byte 0
  loc_C3A63E: GtI2
  loc_C3A63F: FFree1Str var_130
  loc_C3A642: FFree1Ad var_DC
  loc_C3A645: FFree1Var var_F0 = ""
  loc_C3A648: BranchF loc_C3A678
  loc_C3A64B: LitStr " LEFT JOIN comercio ON comercio.CodiCome = ctacte.CuenCtct "
  loc_C3A64E: FStStrCopy var_9C
  loc_C3A651: LitStr " AND comercio.CodiLoca = "
  loc_C3A654: FLdPr Me
  loc_C3A657: VCallAd Control_ID_CodiLocaMsk
  loc_C3A65A: FStAdFunc var_DC
  loc_C3A65D: FLdPr var_DC
  loc_C3A660: LateIdLdVar var_F0 DispID_22 0
  loc_C3A667: CStrVarTmp
  loc_C3A668: FStStrNoPop var_130
  loc_C3A66B: ConcatStr
  loc_C3A66C: FStStr var_88
  loc_C3A66F: FFree1Str var_130
  loc_C3A672: FFree1Ad var_DC
  loc_C3A675: FFree1Var var_F0 = ""
  loc_C3A678: Branch loc_C3A792
  loc_C3A67B: ILdRf var_12C
  loc_C3A67E: LitI4 3
  loc_C3A683: EqI4
  loc_C3A684: BranchF loc_C3A6CE
  loc_C3A687: LitStr ", 0 CodiCall, '' DetaCall"
  loc_C3A68A: FLdPr Me
  loc_C3A68D: MemStStrCopy
  loc_C3A691: LitStr " LEFT JOIN deudvari ON deudvari.CodiDeva = cc.CuenCtct "
  loc_C3A694: FStStrCopy var_98
  loc_C3A697: FLdPr Me
  loc_C3A69A: VCallAd Control_ID_CodiLocaMsk
  loc_C3A69D: FStAdFunc var_DC
  loc_C3A6A0: FLdPr var_DC
  loc_C3A6A3: LateIdLdVar var_F0 DispID_22 0
  loc_C3A6AA: CStrVarTmp
  loc_C3A6AB: FStStrNoPop var_130
  loc_C3A6AE: CI2Str
  loc_C3A6B0: LitI2_Byte 0
  loc_C3A6B2: GtI2
  loc_C3A6B3: FFree1Str var_130
  loc_C3A6B6: FFree1Ad var_DC
  loc_C3A6B9: FFree1Var var_F0 = ""
  loc_C3A6BC: BranchF loc_C3A6CB
  loc_C3A6BF: LitStr " "
  loc_C3A6C2: FStStrCopy var_88
  loc_C3A6C5: LitStr " "
  loc_C3A6C8: FStStrCopy var_9C
  loc_C3A6CB: Branch loc_C3A792
  loc_C3A6CE: ILdRf var_12C
  loc_C3A6D1: LitI4 4
  loc_C3A6D6: EqI4
  loc_C3A6D7: BranchF loc_C3A742
  loc_C3A6DA: LitStr ", difunto.CocpDifu CodiCall, difunto.DecpDifu DetaCall"
  loc_C3A6DD: FLdPr Me
  loc_C3A6E0: MemStStrCopy
  loc_C3A6E4: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = cc.CuenCtct "
  loc_C3A6E7: FStStrCopy var_98
  loc_C3A6EA: FLdPr Me
  loc_C3A6ED: VCallAd Control_ID_CodiLocaMsk
  loc_C3A6F0: FStAdFunc var_DC
  loc_C3A6F3: FLdPr var_DC
  loc_C3A6F6: LateIdLdVar var_F0 DispID_22 0
  loc_C3A6FD: CStrVarTmp
  loc_C3A6FE: FStStrNoPop var_130
  loc_C3A701: CI2Str
  loc_C3A703: LitI2_Byte 0
  loc_C3A705: GtI2
  loc_C3A706: FFree1Str var_130
  loc_C3A709: FFree1Ad var_DC
  loc_C3A70C: FFree1Var var_F0 = ""
  loc_C3A70F: BranchF loc_C3A73F
  loc_C3A712: LitStr " AND difunto.ColpDifu = "
  loc_C3A715: FLdPr Me
  loc_C3A718: VCallAd Control_ID_CodiLocaMsk
  loc_C3A71B: FStAdFunc var_DC
  loc_C3A71E: FLdPr var_DC
  loc_C3A721: LateIdLdVar var_F0 DispID_22 0
  loc_C3A728: CStrVarTmp
  loc_C3A729: FStStrNoPop var_130
  loc_C3A72C: ConcatStr
  loc_C3A72D: FStStr var_88
  loc_C3A730: FFree1Str var_130
  loc_C3A733: FFree1Ad var_DC
  loc_C3A736: FFree1Var var_F0 = ""
  loc_C3A739: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = ctacte.CuenCtct "
  loc_C3A73C: FStStrCopy var_9C
  loc_C3A73F: Branch loc_C3A792
  loc_C3A742: ILdRf var_12C
  loc_C3A745: LitI4 5
  loc_C3A74A: EqI4
  loc_C3A74B: BranchF loc_C3A792
  loc_C3A74E: LitStr ", 0 CodiCall, '' DetaCall"
  loc_C3A751: FLdPr Me
  loc_C3A754: MemStStrCopy
  loc_C3A758: LitStr " LEFT JOIN transito ON transito.CodiTran = cc.CuenCtct "
  loc_C3A75B: FStStrCopy var_98
  loc_C3A75E: FLdPr Me
  loc_C3A761: VCallAd Control_ID_CodiLocaMsk
  loc_C3A764: FStAdFunc var_DC
  loc_C3A767: FLdPr var_DC
  loc_C3A76A: LateIdLdVar var_F0 DispID_22 0
  loc_C3A771: CStrVarTmp
  loc_C3A772: FStStrNoPop var_130
  loc_C3A775: CI2Str
  loc_C3A777: LitI2_Byte 0
  loc_C3A779: GtI2
  loc_C3A77A: FFree1Str var_130
  loc_C3A77D: FFree1Ad var_DC
  loc_C3A780: FFree1Var var_F0 = ""
  loc_C3A783: BranchF loc_C3A792
  loc_C3A786: LitStr " "
  loc_C3A789: FStStrCopy var_88
  loc_C3A78C: LitStr " "
  loc_C3A78F: FStStrCopy var_9C
  loc_C3A792: FLdRfVar var_128
  loc_C3A795: FLdRfVar var_DE
  loc_C3A798: FLdPr Me
  loc_C3A79B: VCallAd Control_ID_CodiOficCbo
  loc_C3A79E: FStAdFunc var_DC
  loc_C3A7A1: FLdPr var_DC
  loc_C3A7A4:  = Me.ListIndex
  loc_C3A7A9: FLdI2 var_DE
  loc_C3A7AC: FLdPr Me
  loc_C3A7AF: VCallAd Control_ID_CodiOficCbo
  loc_C3A7B2: FStAdFunc var_124
  loc_C3A7B5: FLdPr var_124
  loc_C3A7B8:  = Me.ItemData
  loc_C3A7BD: ILdRf var_128
  loc_C3A7C0: LitI4 1
  loc_C3A7C5: EqI4
  loc_C3A7C6: FLdRfVar var_140
  loc_C3A7C9: FLdRfVar var_136
  loc_C3A7CC: FLdPr Me
  loc_C3A7CF: VCallAd Control_ID_CodiOficCbo
  loc_C3A7D2: FStAdFunc var_134
  loc_C3A7D5: FLdPr var_134
  loc_C3A7D8:  = Me.ListIndex
  loc_C3A7DD: FLdI2 var_136
  loc_C3A7E0: FLdPr Me
  loc_C3A7E3: VCallAd Control_ID_CodiOficCbo
  loc_C3A7E6: FStAdFunc var_13C
  loc_C3A7E9: FLdPr var_13C
  loc_C3A7EC:  = Me.ItemData
  loc_C3A7F1: ILdRf var_140
  loc_C3A7F4: LitI4 2
  loc_C3A7F9: EqI4
  loc_C3A7FA: OrI4
  loc_C3A7FB: FLdRfVar var_150
  loc_C3A7FE: FLdRfVar var_146
  loc_C3A801: FLdPr Me
  loc_C3A804: VCallAd Control_ID_CodiOficCbo
  loc_C3A807: FStAdFunc var_144
  loc_C3A80A: FLdPr var_144
  loc_C3A80D:  = Me.ListIndex
  loc_C3A812: FLdI2 var_146
  loc_C3A815: FLdPr Me
  loc_C3A818: VCallAd Control_ID_CodiOficCbo
  loc_C3A81B: FStAdFunc var_14C
  loc_C3A81E: FLdPr var_14C
  loc_C3A821:  = Me.ItemData
  loc_C3A826: ILdRf var_150
  loc_C3A829: LitI4 4
  loc_C3A82E: EqI4
  loc_C3A82F: OrI4
  loc_C3A830: FFreeAd var_DC = "": var_124 = "": var_134 = "": var_13C = "": var_144 = ""
  loc_C3A83F: BranchF loc_C3A84F
  loc_C3A842: LitStr " ORDER BY cast(cc.CuenCtct as unsigned integer), PeriCtct"
  loc_C3A845: ILdRf var_94
  loc_C3A848: ConcatStr
  loc_C3A849: FStStr var_B8
  loc_C3A84C: Branch loc_C3A859
  loc_C3A84F: LitStr " ORDER BY cc.CuenCtct, PeriCtct"
  loc_C3A852: ILdRf var_94
  loc_C3A855: ConcatStr
  loc_C3A856: FStStr var_B8
  loc_C3A859: FLdPr Me
  loc_C3A85C: MemLdRfVar from_stack_1.global_76
  loc_C3A85F: NewIfNullAd
  loc_C3A862: FStAd var_154 
  loc_C3A866: FLdRfVar var_DE
  loc_C3A869: FLdPr Me
  loc_C3A86C: VCallAd Control_ID_CodiOficCbo
  loc_C3A86F: FStAdFunc var_DC
  loc_C3A872: FLdPr var_DC
  loc_C3A875:  = Me.ListIndex
  loc_C3A87A: FLdRfVar var_1A8
  loc_C3A87D: FLdPr Me
  loc_C3A880: VCallAd Control_ID_ImporteTxt
  loc_C3A883: FStAdFunc var_14C
  loc_C3A886: FLdPr var_14C
  loc_C3A889:  = Me.Text
  loc_C3A88E: LitStr "DROP TEMPORARY TABLE IF EXISTS saldos;"
  loc_C3A891: LitStr " CREATE TEMPORARY TABLE saldos "
  loc_C3A894: ConcatStr
  loc_C3A895: FStStrNoPop var_130
  loc_C3A898: LitStr " SELECT ctacte.CodiOfic, ctacte.CuenCtct FROM ctacte "
  loc_C3A89B: ConcatStr
  loc_C3A89C: FStStrNoPop var_158
  loc_C3A89F: ILdRf var_9C
  loc_C3A8A2: ConcatStr
  loc_C3A8A3: FStStrNoPop var_15C
  loc_C3A8A6: LitStr " WHERE ctacte.CodiOfic = "
  loc_C3A8A9: ConcatStr
  loc_C3A8AA: FStStrNoPop var_160
  loc_C3A8AD: FLdRfVar var_128
  loc_C3A8B0: FLdI2 var_DE
  loc_C3A8B3: FLdPr Me
  loc_C3A8B6: VCallAd Control_ID_CodiOficCbo
  loc_C3A8B9: FStAdFunc var_124
  loc_C3A8BC: FLdPr var_124
  loc_C3A8BF:  = Me.ItemData
  loc_C3A8C4: ILdRf var_128
  loc_C3A8C7: CStrI4
  loc_C3A8C9: FStStrNoPop var_164
  loc_C3A8CC: ConcatStr
  loc_C3A8CD: FStStrNoPop var_168
  loc_C3A8D0: LitStr " AND PeriCtct BETWEEN "
  loc_C3A8D3: ConcatStr
  loc_C3A8D4: FStStrNoPop var_16C
  loc_C3A8D7: FLdPr Me
  loc_C3A8DA: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_C3A8DD: FStAdFunc var_134
  loc_C3A8E0: FLdPr var_134
  loc_C3A8E3: LateIdLdVar var_F0 DispID_22 0
  loc_C3A8EA: CStrVarTmp
  loc_C3A8EB: FStStrNoPop var_170
  loc_C3A8EE: ConcatStr
  loc_C3A8EF: FStStrNoPop var_174
  loc_C3A8F2: LitStr " AND "
  loc_C3A8F5: ConcatStr
  loc_C3A8F6: FStStrNoPop var_178
  loc_C3A8F9: FLdPr Me
  loc_C3A8FC: VCallAd Control_ID_PeriCtctHastaMsk
  loc_C3A8FF: FStAdFunc var_13C
  loc_C3A902: FLdPr var_13C
  loc_C3A905: LateIdLdVar var_110 DispID_22 0
  loc_C3A90C: CStrVarTmp
  loc_C3A90D: FStStrNoPop var_17C
  loc_C3A910: ConcatStr
  loc_C3A911: FStStrNoPop var_180
  loc_C3A914: LitStr " AND CodiConc in "
  loc_C3A917: ConcatStr
  loc_C3A918: FStStrNoPop var_184
  loc_C3A91B: LitStr " (SELECT CodiConc FROM concepto WHERE PeriInfo = "
  loc_C3A91E: ConcatStr
  loc_C3A91F: FStStrNoPop var_188
  loc_C3A922: ImpAdLdI2 MemVar_D93034
  loc_C3A925: CStrUI1
  loc_C3A927: FStStrNoPop var_18C
  loc_C3A92A: ConcatStr
  loc_C3A92B: FStStrNoPop var_190
  loc_C3A92E: LitStr " AND ActiConc = '"
  loc_C3A931: ConcatStr
  loc_C3A932: FStStrNoPop var_194
  loc_C3A935: FLdPr Me
  loc_C3A938: VCallAd Control_ID_ActiConcMsk
  loc_C3A93B: FStAdFunc var_144
  loc_C3A93E: FLdPr var_144
  loc_C3A941: LateIdLdVar var_120 DispID_22 0
  loc_C3A948: CStrVarTmp
  loc_C3A949: FStStrNoPop var_198
  loc_C3A94C: ConcatStr
  loc_C3A94D: FStStrNoPop var_19C
  loc_C3A950: LitStr "')"
  loc_C3A953: ConcatStr
  loc_C3A954: FStStrNoPop var_1A0
  loc_C3A957: ILdRf var_88
  loc_C3A95A: ConcatStr
  loc_C3A95B: FStStrNoPop var_1A4
  loc_C3A95E: LitStr " GROUP BY CuenCtct HAVING sum(DebeCtct)-sum(CredCtct) > "
  loc_C3A961: ConcatStr
  loc_C3A962: FStStrNoPop var_1B0
  loc_C3A965: LitI4 0
  loc_C3A96A: LitI4 -1
  loc_C3A96F: LitI4 1
  loc_C3A974: LitStr "."
  loc_C3A977: LitStr ","
  loc_C3A97A: ILdRf var_1A8
  loc_C3A97D: CR8Str
  loc_C3A97F: CStrR8
  loc_C3A981: FStStrNoPop var_1AC
  loc_C3A984: ImpAdCallI2 Replace(, , , , , )
  loc_C3A989: FStStrNoPop var_1B4
  loc_C3A98C: ConcatStr
  loc_C3A98D: FStStrNoPop var_1B8
  loc_C3A990: LitStr ";"
  loc_C3A993: ConcatStr
  loc_C3A994: FStStrNoPop var_1BC
  loc_C3A997: FLdPr var_154
  loc_C3A99A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C3A99F: FFreeStr var_130 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = ""
  loc_C3A9D8: FFreeAd var_DC = "": var_124 = "": var_134 = "": var_13C = "": var_144 = ""
  loc_C3A9E7: FFreeVar var_F0 = "": var_110 = ""
  loc_C3A9F0: LitStr " DROP TEMPORARY TABLE IF EXISTS cc1;"
  loc_C3A9F3: LitStr " CREATE TEMPORARY TABLE cc1"
  loc_C3A9F6: ConcatStr
  loc_C3A9F7: FStStrNoPop var_130
  loc_C3A9FA: LitStr " SELECT ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct"
  loc_C3A9FD: ConcatStr
  loc_C3A9FE: FStStrNoPop var_158
  loc_C3AA01: LitStr " FROM ctacte"
  loc_C3AA04: ConcatStr
  loc_C3AA05: FStStrNoPop var_15C
  loc_C3AA08: LitStr " INNER JOIN saldos ON saldos.CodiOfic = ctacte.CodiOfic AND saldos.CuenCtct = ctacte.CuenCtct"
  loc_C3AA0B: ConcatStr
  loc_C3AA0C: FStStrNoPop var_160
  loc_C3AA0F: LitStr " AND ctacte.PeriCtct BETWEEN "
  loc_C3AA12: ConcatStr
  loc_C3AA13: FStStrNoPop var_164
  loc_C3AA16: FLdPr Me
  loc_C3AA19: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_C3AA1C: FStAdFunc var_DC
  loc_C3AA1F: FLdPr var_DC
  loc_C3AA22: LateIdLdVar var_F0 DispID_22 0
  loc_C3AA29: CStrVarTmp
  loc_C3AA2A: FStStrNoPop var_168
  loc_C3AA2D: ConcatStr
  loc_C3AA2E: FStStrNoPop var_16C
  loc_C3AA31: LitStr " AND "
  loc_C3AA34: ConcatStr
  loc_C3AA35: FStStrNoPop var_170
  loc_C3AA38: FLdPr Me
  loc_C3AA3B: VCallAd Control_ID_PeriCtctHastaMsk
  loc_C3AA3E: FStAdFunc var_124
  loc_C3AA41: FLdPr var_124
  loc_C3AA44: LateIdLdVar var_110 DispID_22 0
  loc_C3AA4B: CStrVarTmp
  loc_C3AA4C: FStStrNoPop var_174
  loc_C3AA4F: ConcatStr
  loc_C3AA50: FStStrNoPop var_178
  loc_C3AA53: LitStr " AND CodiConc in "
  loc_C3AA56: ConcatStr
  loc_C3AA57: FStStrNoPop var_17C
  loc_C3AA5A: LitStr " (SELECT CodiConc FROM concepto WHERE PeriInfo = "
  loc_C3AA5D: ConcatStr
  loc_C3AA5E: FStStrNoPop var_180
  loc_C3AA61: ImpAdLdI2 MemVar_D93034
  loc_C3AA64: CStrUI1
  loc_C3AA66: FStStrNoPop var_184
  loc_C3AA69: ConcatStr
  loc_C3AA6A: FStStrNoPop var_188
  loc_C3AA6D: LitStr " AND ActiConc = '"
  loc_C3AA70: ConcatStr
  loc_C3AA71: FStStrNoPop var_18C
  loc_C3AA74: FLdPr Me
  loc_C3AA77: VCallAd Control_ID_ActiConcMsk
  loc_C3AA7A: FStAdFunc var_134
  loc_C3AA7D: FLdPr var_134
  loc_C3AA80: LateIdLdVar var_120 DispID_22 0
  loc_C3AA87: CStrVarTmp
  loc_C3AA88: FStStrNoPop var_190
  loc_C3AA8B: ConcatStr
  loc_C3AA8C: FStStrNoPop var_194
  loc_C3AA8F: LitStr "')"
  loc_C3AA92: ConcatStr
  loc_C3AA93: FStStrNoPop var_198
  loc_C3AA96: ILdRf var_A0
  loc_C3AA99: ConcatStr
  loc_C3AA9A: FStStrNoPop var_19C
  loc_C3AA9D: ILdRf var_A4
  loc_C3AAA0: ConcatStr
  loc_C3AAA1: FStStrNoPop var_1A0
  loc_C3AAA4: LitStr " AND ctacte.MoviCtct = 1"
  loc_C3AAA7: ConcatStr
  loc_C3AAA8: FStStrNoPop var_1A4
  loc_C3AAAB: LitStr " GROUP BY ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct"
  loc_C3AAAE: ConcatStr
  loc_C3AAAF: FStStrNoPop var_1A8
  loc_C3AAB2: LitStr " ORDER BY ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct;"
  loc_C3AAB5: ConcatStr
  loc_C3AAB6: FStStrNoPop var_1AC
  loc_C3AAB9: FLdPr var_154
  loc_C3AABC: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C3AAC1: FFreeStr var_130 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = ""
  loc_C3AAF2: FFreeAd var_DC = "": var_124 = ""
  loc_C3AAFB: FFreeVar var_F0 = "": var_110 = ""
  loc_C3AB04: LitStr " DROP TEMPORARY TABLE IF EXISTS cc;"
  loc_C3AB07: LitStr " CREATE TEMPORARY TABLE cc"
  loc_C3AB0A: ConcatStr
  loc_C3AB0B: FStStrNoPop var_130
  loc_C3AB0E: LitStr " SELECT cc1.*, SUM(DebeCtct)- SUM(CredCtct) AS SaldCtct, ctacte.PeriInfo, ctacte.CodiConc"
  loc_C3AB11: ConcatStr
  loc_C3AB12: FStStrNoPop var_158
  loc_C3AB15: LitStr " FROM cc1"
  loc_C3AB18: ConcatStr
  loc_C3AB19: FStStrNoPop var_15C
  loc_C3AB1C: LitStr " INNER JOIN ctacte  ON ctacte.CodiOfic = cc1.CodiOfic"
  loc_C3AB1F: ConcatStr
  loc_C3AB20: FStStrNoPop var_160
  loc_C3AB23: LitStr " AND ctacte.CuenCtct = cc1.CuenCtct"
  loc_C3AB26: ConcatStr
  loc_C3AB27: FStStrNoPop var_164
  loc_C3AB2A: LitStr " AND ctacte.PeriCtct = cc1.PeriCtct"
  loc_C3AB2D: ConcatStr
  loc_C3AB2E: FStStrNoPop var_168
  loc_C3AB31: LitStr " AND ctacte.BimeCtct = cc1.BimeCtct"
  loc_C3AB34: ConcatStr
  loc_C3AB35: FStStrNoPop var_16C
  loc_C3AB38: LitStr " AND ctacte.NumeCtct = cc1.NumeCtct"
  loc_C3AB3B: ConcatStr
  loc_C3AB3C: FStStrNoPop var_170
  loc_C3AB3F: LitStr " GROUP BY ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct"
  loc_C3AB42: ConcatStr
  loc_C3AB43: FStStrNoPop var_174
  loc_C3AB46: LitStr " Having SaldCtct > 0"
  loc_C3AB49: ConcatStr
  loc_C3AB4A: FStStrNoPop var_178
  loc_C3AB4D: FLdPr var_154
  loc_C3AB50: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C3AB55: FFreeStr var_130 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_C3AB6C: LitStr "SELECT cc.CuenCtct, ifnull(DetaPers,'&nbsp;') as DetaPers "
  loc_C3AB6F: FLdPr Me
  loc_C3AB72: MemLdStr global_100
  loc_C3AB75: ConcatStr
  loc_C3AB76: FStStrNoPop var_130
  loc_C3AB79: LitStr ", PeriCtct, BimeCtct, "
  loc_C3AB7C: ConcatStr
  loc_C3AB7D: FStStrNoPop var_158
  loc_C3AB80: ILdRf var_8C
  loc_C3AB83: ConcatStr
  loc_C3AB84: FStStrNoPop var_15C
  loc_C3AB87: LitStr "SaldCtct, cc.CodiConc, DetaConc FROM cc"
  loc_C3AB8A: ConcatStr
  loc_C3AB8B: FStStrNoPop var_160
  loc_C3AB8E: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = cc.CodiOfic AND relacion.CuenCtct = cc.CuenCtct AND relacion.TipoRela = 'Titular'"
  loc_C3AB91: ConcatStr
  loc_C3AB92: FStStrNoPop var_164
  loc_C3AB95: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_C3AB98: ConcatStr
  loc_C3AB99: FStStrNoPop var_168
  loc_C3AB9C: LitStr " LEFT JOIN concepto ON concepto.PeriInfo = cc.PeriInfo AND concepto.CodiConc = cc.CodiConc"
  loc_C3AB9F: ConcatStr
  loc_C3ABA0: FStStrNoPop var_16C
  loc_C3ABA3: ILdRf var_98
  loc_C3ABA6: ConcatStr
  loc_C3ABA7: FStStrNoPop var_170
  loc_C3ABAA: ILdRf var_90
  loc_C3ABAD: ConcatStr
  loc_C3ABAE: FStStrNoPop var_174
  loc_C3ABB1: ILdRf var_B8
  loc_C3ABB4: ConcatStr
  loc_C3ABB5: FStStrNoPop var_178
  loc_C3ABB8: FLdPr var_154
  loc_C3ABBB: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C3ABC0: FFreeStr var_130 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_174 = ""
  loc_C3ABD7: FLdRfVar var_128
  loc_C3ABDA: FLdPr var_154
  loc_C3ABDD: from_stack_1 = clsctacte.RecordCount
  loc_C3ABE2: ILdRf var_128
  loc_C3ABE5: LitI4 0
  loc_C3ABEA: EqI4
  loc_C3ABEB: BranchF loc_C3ABF9
  loc_C3ABEE: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C3ABF1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C3ABF6: Branch loc_C3AEA0
  loc_C3ABF9: LitI4 0
  loc_C3ABFE: FLdPr Me
  loc_C3AC01: MemStI4 global_88
  loc_C3AC04: LitI2_Byte 0
  loc_C3AC06: CStrUI1
  loc_C3AC08: FStStrNoPop var_130
  loc_C3AC0B: FLdPr Me
  loc_C3AC0E: MemStStrCopy
  loc_C3AC12: FFree1Str var_130
  loc_C3AC15: LitI4 0
  loc_C3AC1A: FLdPr Me
  loc_C3AC1D: MemLdStr global_88
  loc_C3AC20: FLdPr Me
  loc_C3AC23: MemLdRfVar from_stack_1.global_80
  loc_C3AC26: Redim
  loc_C3AC30: FLdPr var_154
  loc_C3AC33: Call clsctacte.MoveFirst()
  loc_C3AC38: Call AgregaCuen()
  loc_C3AC3D: FLdRfVar var_DE
  loc_C3AC40: FLdPr var_154
  loc_C3AC43: from_stack_1 = clsctacte.EOF
  loc_C3AC48: FLdI2 var_DE
  loc_C3AC4B: NotI4
  loc_C3AC4C: BranchF loc_C3ACBD
  loc_C3AC4F: FLdRfVar var_130
  loc_C3AC52: FLdPr var_154
  loc_C3AC55: from_stack_1 = clsctacte.CuenCtct
  loc_C3AC5A: ILdRf var_130
  loc_C3AC5D: FLdPr Me
  loc_C3AC60: MemLdStr global_88
  loc_C3AC63: FLdPr Me
  loc_C3AC66: MemLdStr global_80
  loc_C3AC69: Ary1LdPr
  loc_C3AC6A: MemLdStr global_0
  loc_C3AC6D: NeStr
  loc_C3AC6F: FFree1Str var_130
  loc_C3AC72: BranchF loc_C3AC7D
  loc_C3AC75: Call AgregaCuen()
  loc_C3AC7A: Branch loc_C3ACBA
  loc_C3AC7D: FLdRfVar var_DE
  loc_C3AC80: FLdPr var_154
  loc_C3AC83: from_stack_1 = clsctacte.PeriCtct
  loc_C3AC88: FLdI2 var_DE
  loc_C3AC8B: CR8I2
  loc_C3AC8C: FLdPr Me
  loc_C3AC8F: MemLdI2 global_92
  loc_C3AC92: CI4UI1
  loc_C3AC93: FLdPr Me
  loc_C3AC96: MemLdStr global_88
  loc_C3AC99: FLdPr Me
  loc_C3AC9C: MemLdStr global_80
  loc_C3AC9F: Ary1LdPr
  loc_C3ACA0: MemLdStr global_24
  loc_C3ACA3: Ary1LdPr
  loc_C3ACA4: MemLdStr global_0
  loc_C3ACA7: CR8Str
  loc_C3ACA9: NeR8
  loc_C3ACAA: BranchF loc_C3ACB5
  loc_C3ACAD: Call AgregaPeri()
  loc_C3ACB2: Branch loc_C3ACBA
  loc_C3ACB5: Call AgregaBime()
  loc_C3ACBA: Branch loc_C3AC3D
  loc_C3ACBD: LitNothing
  loc_C3ACBF: FStAd var_154 
  loc_C3ACC3: LitI4 1
  loc_C3ACC8: FLdPr Me
  loc_C3ACCB: MemLdRfVar from_stack_1.global_88
  loc_C3ACCE: FLdPr Me
  loc_C3ACD1: MemLdStr global_80
  loc_C3ACD4: LitI2_Byte 1
  loc_C3ACD6: FnUBound
  loc_C3ACD8: ForI4 var_1C4
  loc_C3ACDE: LitI2_Byte 1
  loc_C3ACE0: FLdPr Me
  loc_C3ACE3: MemLdRfVar from_stack_1.global_92
  loc_C3ACE6: FLdPr Me
  loc_C3ACE9: MemLdStr global_88
  loc_C3ACEC: FLdPr Me
  loc_C3ACEF: MemLdStr global_80
  loc_C3ACF2: Ary1LdPr
  loc_C3ACF3: MemLdStr global_24
  loc_C3ACF6: LitI2_Byte 1
  loc_C3ACF8: FnUBound
  loc_C3ACFA: CI2I4
  loc_C3ACFB: ForI2 var_1C8
  loc_C3AD01: FLdPr Me
  loc_C3AD04: MemLdI2 global_92
  loc_C3AD07: CI4UI1
  loc_C3AD08: FLdPr Me
  loc_C3AD0B: MemLdStr global_88
  loc_C3AD0E: FLdPr Me
  loc_C3AD11: MemLdStr global_80
  loc_C3AD14: Ary1LdPr
  loc_C3AD15: MemLdStr global_24
  loc_C3AD18: Ary1LdPr
  loc_C3AD19: MemLdStr global_8
  loc_C3AD1C: LitI2_Byte 1
  loc_C3AD1E: FnUBound
  loc_C3AD20: CVarI4
  loc_C3AD24: LitVarI2 var_110, 0
  loc_C3AD29: LitVarI2 var_F0, 1
  loc_C3AD2E: FLdPr Me
  loc_C3AD31: MemLdI2 global_92
  loc_C3AD34: CI4UI1
  loc_C3AD35: FLdPr Me
  loc_C3AD38: MemLdStr global_88
  loc_C3AD3B: FLdPr Me
  loc_C3AD3E: MemLdStr global_80
  loc_C3AD41: Ary1LdPr
  loc_C3AD42: MemLdStr global_24
  loc_C3AD45: Ary1LdPr
  loc_C3AD46: MemLdStr global_8
  loc_C3AD49: LitI2_Byte 1
  loc_C3AD4B: FnUBound
  loc_C3AD4D: LitI4 1
  loc_C3AD52: GtI4
  loc_C3AD53: CVarBoolI2 var_C8
  loc_C3AD57: FLdRfVar var_120
  loc_C3AD5A: ImpAdCallFPR4  = IIf(, , )
  loc_C3AD5F: FLdRfVar var_120
  loc_C3AD62: AddVar var_1E8
  loc_C3AD66: CI2Var
  loc_C3AD67: FLdPr Me
  loc_C3AD6A: MemLdI2 global_92
  loc_C3AD6D: CI4UI1
  loc_C3AD6E: FLdPr Me
  loc_C3AD71: MemLdStr global_88
  loc_C3AD74: FLdPr Me
  loc_C3AD77: MemLdStr global_80
  loc_C3AD7A: Ary1LdPr
  loc_C3AD7B: MemLdStr global_24
  loc_C3AD7E: Ary1LdPr
  loc_C3AD7F: MemStI2 global_4
  loc_C3AD82: FFreeVar var_C8 = "": var_F0 = "": var_110 = "": var_120 = ""
  loc_C3AD8F: FLdPr Me
  loc_C3AD92: MemLdStr global_88
  loc_C3AD95: FLdPr Me
  loc_C3AD98: MemLdStr global_80
  loc_C3AD9B: Ary1LdPr
  loc_C3AD9C: MemLdI2 global_20
  loc_C3AD9F: FLdPr Me
  loc_C3ADA2: MemLdI2 global_92
  loc_C3ADA5: CI4UI1
  loc_C3ADA6: FLdPr Me
  loc_C3ADA9: MemLdStr global_88
  loc_C3ADAC: FLdPr Me
  loc_C3ADAF: MemLdStr global_80
  loc_C3ADB2: Ary1LdPr
  loc_C3ADB3: MemLdStr global_24
  loc_C3ADB6: Ary1LdPr
  loc_C3ADB7: MemLdI2 global_4
  loc_C3ADBA: AddI2
  loc_C3ADBB: FLdPr Me
  loc_C3ADBE: MemLdStr global_88
  loc_C3ADC1: FLdPr Me
  loc_C3ADC4: MemLdStr global_80
  loc_C3ADC7: Ary1LdPr
  loc_C3ADC8: MemStI2 global_20
  loc_C3ADCB: LitI2_Byte 0
  loc_C3ADCD: FLdPr Me
  loc_C3ADD0: MemLdStr global_88
  loc_C3ADD3: FLdPr Me
  loc_C3ADD6: MemLdStr global_80
  loc_C3ADD9: AryLock
  loc_C3ADDC: Ary1LdPr
  loc_C3ADDD: MemLdRfVar from_stack_1.global_28
  loc_C3ADE0: CVarRef
  loc_C3ADE5: LitI2_Byte &HFF
  loc_C3ADE7: FLdPr Me
  loc_C3ADEA: MemLdI2 global_92
  loc_C3ADED: CI4UI1
  loc_C3ADEE: FLdPr Me
  loc_C3ADF1: MemLdStr global_88
  loc_C3ADF4: FLdPr Me
  loc_C3ADF7: MemLdStr global_80
  loc_C3ADFA: Ary1LdPr
  loc_C3ADFB: MemLdStr global_24
  loc_C3ADFE: Ary1LdPr
  loc_C3ADFF: MemLdStr global_12
  loc_C3AE02: CVarStr var_C8
  loc_C3AE05: PopAdLdVar
  loc_C3AE06: FLdPr Me
  loc_C3AE09: MemLdRfVar from_stack_1.global_96
  loc_C3AE0C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C3AE11: AryUnlock
  loc_C3AE14: FLdPr Me
  loc_C3AE17: MemLdRfVar from_stack_1.global_92
  loc_C3AE1A: NextI2 var_1C8, loc_C3AD01
  loc_C3AE1F: FLdPr Me
  loc_C3AE22: MemLdStr global_88
  loc_C3AE25: FLdPr Me
  loc_C3AE28: MemLdStr global_80
  loc_C3AE2B: Ary1LdPr
  loc_C3AE2C: MemLdStr global_24
  loc_C3AE2F: LitI2_Byte 1
  loc_C3AE31: FnUBound
  loc_C3AE33: LitI4 1
  loc_C3AE38: GtI4
  loc_C3AE39: BranchF loc_C3AE5F
  loc_C3AE3C: FLdPr Me
  loc_C3AE3F: MemLdStr global_88
  loc_C3AE42: FLdPr Me
  loc_C3AE45: MemLdStr global_80
  loc_C3AE48: Ary1LdPr
  loc_C3AE49: MemLdI2 global_20
  loc_C3AE4C: LitI2_Byte 1
  loc_C3AE4E: AddI2
  loc_C3AE4F: FLdPr Me
  loc_C3AE52: MemLdStr global_88
  loc_C3AE55: FLdPr Me
  loc_C3AE58: MemLdStr global_80
  loc_C3AE5B: Ary1LdPr
  loc_C3AE5C: MemStI2 global_20
  loc_C3AE5F: LitI2_Byte 0
  loc_C3AE61: FLdPr Me
  loc_C3AE64: MemLdRfVar from_stack_1.global_84
  loc_C3AE67: CVarRef
  loc_C3AE6C: LitI2_Byte &HFF
  loc_C3AE6E: FLdPr Me
  loc_C3AE71: MemLdStr global_88
  loc_C3AE74: FLdPr Me
  loc_C3AE77: MemLdStr global_80
  loc_C3AE7A: Ary1LdPr
  loc_C3AE7B: MemLdStr global_28
  loc_C3AE7E: CVarStr var_C8
  loc_C3AE81: PopAdLdVar
  loc_C3AE82: FLdPr Me
  loc_C3AE85: MemLdRfVar from_stack_1.global_96
  loc_C3AE88: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C3AE8D: FLdPr Me
  loc_C3AE90: MemLdRfVar from_stack_1.global_88
  loc_C3AE93: NextI4 var_1C4, loc_C3ACDE
  loc_C3AE98: LitI2_Byte &HFF
  loc_C3AE9A: FLdPr Me
  loc_C3AE9D: MemStI2 bGenerado
  loc_C3AEA0: LitI4 0
  loc_C3AEA5: CI2I4
  loc_C3AEA6: FLdPr Me
  loc_C3AEA9: Me.MousePointer = from_stack_1
  loc_C3AEAE: LitVarStr var_C8, vbNullString
  loc_C3AEB3: PopAdLdVar
  loc_C3AEB4: FLdPr Me
  loc_C3AEB7: VCallAd Control_ID_statusBar
  loc_C3AEBA: FStAdFunc var_DC
  loc_C3AEBD: FLdPr var_DC
  loc_C3AEC0: LateIdSt
  loc_C3AEC5: FFree1Ad var_DC
  loc_C3AEC8: ExitProcHresult
End Sub

Public Sub AgregaCuen() 'B0C804
  'Data Table: 4ED718
  loc_B0C5DC: FLdPr Me
  loc_B0C5DF: MemLdStr global_88
  loc_B0C5E2: LitI4 1
  loc_B0C5E7: AddI4
  loc_B0C5E8: FLdPr Me
  loc_B0C5EB: MemStI4 global_88
  loc_B0C5EE: LitI2_Byte 0
  loc_B0C5F0: FLdPr Me
  loc_B0C5F3: MemStI2 global_92
  loc_B0C5F6: LitI4 0
  loc_B0C5FB: FLdPr Me
  loc_B0C5FE: MemLdStr global_88
  loc_B0C601: FLdPr Me
  loc_B0C604: MemLdRfVar from_stack_1.global_80
  loc_B0C607: RedimPreserve
  loc_B0C611: FLdRfVar var_88
  loc_B0C614: FLdPr Me
  loc_B0C617: MemLdRfVar from_stack_1.global_76
  loc_B0C61A: NewIfNullPr clsctacte
  loc_B0C61D: from_stack_1 = clsctacte.CuenCtct
  loc_B0C622: LitI2_Byte 0
  loc_B0C624: LitVar_Missing var_BC
  loc_B0C627: LitI2_Byte 0
  loc_B0C629: FLdZeroAd var_88
  loc_B0C62C: CVarStr var_9C
  loc_B0C62F: PopAdLdVar
  loc_B0C630: FLdPr Me
  loc_B0C633: MemLdStr global_88
  loc_B0C636: FLdPr Me
  loc_B0C639: MemLdStr global_80
  loc_B0C63C: AryLock
  loc_B0C63F: Ary1LdPr
  loc_B0C640: MemLdRfVar from_stack_1.global_0
  loc_B0C643: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0C648: AryUnlock
  loc_B0C64B: FFreeVar var_9C = ""
  loc_B0C652: FLdRfVar var_9C
  loc_B0C655: FLdPr Me
  loc_B0C658: MemLdRfVar from_stack_1.global_76
  loc_B0C65B: NewIfNullPr clsctacte
  loc_B0C65E: from_stack_1 = clsctacte.DetaPers
  loc_B0C663: LitI2_Byte 0
  loc_B0C665: LitVar_Missing var_BC
  loc_B0C668: LitI2_Byte 0
  loc_B0C66A: FLdVar var_9C
  loc_B0C66E: FLdPr Me
  loc_B0C671: MemLdStr global_88
  loc_B0C674: FLdPr Me
  loc_B0C677: MemLdStr global_80
  loc_B0C67A: AryLock
  loc_B0C67D: Ary1LdPr
  loc_B0C67E: MemLdRfVar from_stack_1.global_4
  loc_B0C681: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0C686: AryUnlock
  loc_B0C689: FFreeVar var_9C = ""
  loc_B0C690: FLdRfVar var_C8
  loc_B0C693: LitVarStr var_AC, "CodiCall"
  loc_B0C698: PopAdLdVar
  loc_B0C699: FLdRfVar var_C4
  loc_B0C69C: FLdRfVar var_C0
  loc_B0C69F: FLdPr Me
  loc_B0C6A2: MemLdRfVar from_stack_1.global_76
  loc_B0C6A5: NewIfNullPr clsctacte
  loc_B0C6A8: from_stack_1v = clsctacte.RsFrmGet()
  loc_B0C6AD: FLdPr var_C0
  loc_B0C6B0:  = Me.Fields
  loc_B0C6B5: FLdPr var_C4
  loc_B0C6B8: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C6BD: LitI2_Byte 0
  loc_B0C6BF: LitVar_Missing var_BC
  loc_B0C6C2: LitI2_Byte 0
  loc_B0C6C4: FLdZeroAd var_C8
  loc_B0C6C7: CVarAd
  loc_B0C6CB: PopAdLdVar
  loc_B0C6CC: FLdPr Me
  loc_B0C6CF: MemLdStr global_88
  loc_B0C6D2: FLdPr Me
  loc_B0C6D5: MemLdStr global_80
  loc_B0C6D8: AryLock
  loc_B0C6DB: Ary1LdPr
  loc_B0C6DC: MemLdRfVar from_stack_1.global_12
  loc_B0C6DF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0C6E4: AryUnlock
  loc_B0C6E7: FFreeAd var_C0 = ""
  loc_B0C6EE: FFreeVar var_9C = ""
  loc_B0C6F5: FLdRfVar var_C8
  loc_B0C6F8: LitVarStr var_AC, "DetaCall"
  loc_B0C6FD: PopAdLdVar
  loc_B0C6FE: FLdRfVar var_C4
  loc_B0C701: FLdRfVar var_C0
  loc_B0C704: FLdPr Me
  loc_B0C707: MemLdRfVar from_stack_1.global_76
  loc_B0C70A: NewIfNullPr clsctacte
  loc_B0C70D: from_stack_1v = clsctacte.RsFrmGet()
  loc_B0C712: FLdPr var_C0
  loc_B0C715:  = Me.Fields
  loc_B0C71A: FLdPr var_C4
  loc_B0C71D: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C722: LitI2_Byte 0
  loc_B0C724: LitVar_Missing var_BC
  loc_B0C727: LitI2_Byte 0
  loc_B0C729: FLdZeroAd var_C8
  loc_B0C72C: CVarAd
  loc_B0C730: PopAdLdVar
  loc_B0C731: FLdPr Me
  loc_B0C734: MemLdStr global_88
  loc_B0C737: FLdPr Me
  loc_B0C73A: MemLdStr global_80
  loc_B0C73D: AryLock
  loc_B0C740: Ary1LdPr
  loc_B0C741: MemLdRfVar from_stack_1.global_16
  loc_B0C744: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0C749: AryUnlock
  loc_B0C74C: FFreeAd var_C0 = ""
  loc_B0C753: FFreeVar var_9C = ""
  loc_B0C75A: FLdRfVar var_E0
  loc_B0C75D: FLdRfVar var_DA
  loc_B0C760: FLdPr Me
  loc_B0C763: VCallAd Control_ID_CodiOficCbo
  loc_B0C766: FStAdFunc var_C0
  loc_B0C769: FLdPr var_C0
  loc_B0C76C:  = Me.ListIndex
  loc_B0C771: FLdI2 var_DA
  loc_B0C774: FLdPr Me
  loc_B0C777: VCallAd Control_ID_CodiOficCbo
  loc_B0C77A: FStAdFunc var_C4
  loc_B0C77D: FLdPr var_C4
  loc_B0C780:  = Me.ItemData
  loc_B0C785: ILdRf var_E0
  loc_B0C788: LitI4 1
  loc_B0C78D: EqI4
  loc_B0C78E: FFreeAd var_C0 = ""
  loc_B0C795: BranchF loc_B0C7FD
  loc_B0C798: FLdRfVar var_C8
  loc_B0C79B: LitVarStr var_AC, "NomeInmu"
  loc_B0C7A0: PopAdLdVar
  loc_B0C7A1: FLdRfVar var_C4
  loc_B0C7A4: FLdRfVar var_C0
  loc_B0C7A7: FLdPr Me
  loc_B0C7AA: MemLdRfVar from_stack_1.global_76
  loc_B0C7AD: NewIfNullPr clsctacte
  loc_B0C7B0: from_stack_1v = clsctacte.RsFrmGet()
  loc_B0C7B5: FLdPr var_C0
  loc_B0C7B8:  = Me.Fields
  loc_B0C7BD: FLdPr var_C4
  loc_B0C7C0: from_stack_2 = Me.Item(from_stack_1)
  loc_B0C7C5: LitI2_Byte 0
  loc_B0C7C7: LitVar_Missing var_BC
  loc_B0C7CA: LitI2_Byte 0
  loc_B0C7CC: FLdZeroAd var_C8
  loc_B0C7CF: CVarAd
  loc_B0C7D3: PopAdLdVar
  loc_B0C7D4: FLdPr Me
  loc_B0C7D7: MemLdStr global_88
  loc_B0C7DA: FLdPr Me
  loc_B0C7DD: MemLdStr global_80
  loc_B0C7E0: AryLock
  loc_B0C7E3: Ary1LdPr
  loc_B0C7E4: MemLdRfVar from_stack_1.global_8
  loc_B0C7E7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0C7EC: AryUnlock
  loc_B0C7EF: FFreeAd var_C0 = ""
  loc_B0C7F6: FFreeVar var_9C = ""
  loc_B0C7FD: Call AgregaPeri()
  loc_B0C802: ExitProcHresult
End Sub

Public Sub AgregaPeri() 'A8739C
  'Data Table: 4ED718
  loc_A87308: FLdPr Me
  loc_A8730B: MemLdI2 global_92
  loc_A8730E: LitI2_Byte 1
  loc_A87310: AddI2
  loc_A87311: FLdPr Me
  loc_A87314: MemStI2 global_92
  loc_A87317: LitI2_Byte 0
  loc_A87319: FLdPr Me
  loc_A8731C: MemStI2 global_94
  loc_A8731F: LitI4 0
  loc_A87324: FLdPr Me
  loc_A87327: MemLdI2 global_92
  loc_A8732A: CI4UI1
  loc_A8732B: FLdPr Me
  loc_A8732E: MemLdStr global_88
  loc_A87331: FLdPr Me
  loc_A87334: MemLdStr global_80
  loc_A87337: Ary1LdPr
  loc_A87338: MemLdRfVar from_stack_1.global_24
  loc_A8733B: RedimPreserve
  loc_A87345: FLdRfVar var_86
  loc_A87348: FLdPr Me
  loc_A8734B: MemLdRfVar from_stack_1.global_76
  loc_A8734E: NewIfNullPr clsctacte
  loc_A87351: from_stack_1 = clsctacte.PeriCtct
  loc_A87356: LitI2_Byte 0
  loc_A87358: LitVar_Missing var_C0
  loc_A8735B: LitI2_Byte 0
  loc_A8735D: FLdI2 var_86
  loc_A87360: CVarI2 var_A0
  loc_A87363: PopAdLdVar
  loc_A87364: FLdPr Me
  loc_A87367: MemLdI2 global_92
  loc_A8736A: CI4UI1
  loc_A8736B: FLdPr Me
  loc_A8736E: MemLdStr global_88
  loc_A87371: FLdPr Me
  loc_A87374: MemLdStr global_80
  loc_A87377: AryLock
  loc_A8737A: Ary1LdPr
  loc_A8737B: MemLdStr global_24
  loc_A8737E: AryLock
  loc_A87381: Ary1LdPr
  loc_A87382: MemLdRfVar from_stack_1.global_0
  loc_A87385: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_A8738A: AryUnlock
  loc_A8738D: AryUnlock
  loc_A87390: FFree1Var var_C0 = ""
  loc_A87393: Call AgregaBime()
  loc_A87398: ExitProcHresult
End Sub

Public Sub AgregaBime() 'B05844
  'Data Table: 4ED718
  loc_B05648: FLdPr Me
  loc_B0564B: MemLdI2 global_94
  loc_B0564E: LitI2_Byte 1
  loc_B05650: AddI2
  loc_B05651: FLdPr Me
  loc_B05654: MemStI2 global_94
  loc_B05657: LitI4 0
  loc_B0565C: FLdPr Me
  loc_B0565F: MemLdI2 global_94
  loc_B05662: CI4UI1
  loc_B05663: FLdPr Me
  loc_B05666: MemLdI2 global_92
  loc_B05669: CI4UI1
  loc_B0566A: FLdPr Me
  loc_B0566D: MemLdStr global_88
  loc_B05670: FLdPr Me
  loc_B05673: MemLdStr global_80
  loc_B05676: Ary1LdPr
  loc_B05677: MemLdStr global_24
  loc_B0567A: Ary1LdPr
  loc_B0567B: MemLdRfVar from_stack_1.global_8
  loc_B0567E: RedimPreserve
  loc_B05688: FLdRfVar var_86
  loc_B0568B: FLdPr Me
  loc_B0568E: MemLdRfVar from_stack_1.global_76
  loc_B05691: NewIfNullPr clsctacte
  loc_B05694: from_stack_1 = clsctacte.BimeCtct
  loc_B05699: LitI2_Byte 0
  loc_B0569B: LitVar_Missing var_C4
  loc_B0569E: LitI2_Byte 0
  loc_B056A0: FLdI2 var_86
  loc_B056A3: CVarI2 var_A4
  loc_B056A6: PopAdLdVar
  loc_B056A7: FLdPr Me
  loc_B056AA: MemLdI2 global_94
  loc_B056AD: CI4UI1
  loc_B056AE: FLdPr Me
  loc_B056B1: MemLdI2 global_92
  loc_B056B4: CI4UI1
  loc_B056B5: FLdPr Me
  loc_B056B8: MemLdStr global_88
  loc_B056BB: FLdPr Me
  loc_B056BE: MemLdStr global_80
  loc_B056C1: AryLock
  loc_B056C4: Ary1LdPr
  loc_B056C5: MemLdStr global_24
  loc_B056C8: AryLock
  loc_B056CB: Ary1LdPr
  loc_B056CC: MemLdStr global_8
  loc_B056CF: AryLock
  loc_B056D2: Ary1LdPr
  loc_B056D3: MemLdRfVar from_stack_1.global_0
  loc_B056D6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B056DB: AryUnlock
  loc_B056DE: AryUnlock
  loc_B056E1: AryUnlock
  loc_B056E4: FFree1Var var_C4 = ""
  loc_B056E7: FLdRfVar var_CC
  loc_B056EA: FLdPr Me
  loc_B056ED: MemLdRfVar from_stack_1.global_76
  loc_B056F0: NewIfNullPr clsctacte
  loc_B056F3: from_stack_1 = clsctacte.SaldCtct
  loc_B056F8: LitI2_Byte 0
  loc_B056FA: FLdPr Me
  loc_B056FD: MemLdI2 global_92
  loc_B05700: CI4UI1
  loc_B05701: FLdPr Me
  loc_B05704: MemLdStr global_88
  loc_B05707: FLdPr Me
  loc_B0570A: MemLdStr global_80
  loc_B0570D: AryLock
  loc_B05710: Ary1LdPr
  loc_B05711: MemLdStr global_24
  loc_B05714: AryLock
  loc_B05717: Ary1LdPr
  loc_B05718: MemLdRfVar from_stack_1.global_12
  loc_B0571B: CVarRef
  loc_B05720: LitI2_Byte &HFF
  loc_B05722: FLdFPR8 var_CC
  loc_B05725: CVarR8
  loc_B05729: PopAdLdVar
  loc_B0572A: FLdPr Me
  loc_B0572D: MemLdI2 global_94
  loc_B05730: CI4UI1
  loc_B05731: FLdPr Me
  loc_B05734: MemLdI2 global_92
  loc_B05737: CI4UI1
  loc_B05738: FLdPr Me
  loc_B0573B: MemLdStr global_88
  loc_B0573E: FLdPr Me
  loc_B05741: MemLdStr global_80
  loc_B05744: AryLock
  loc_B05747: Ary1LdPr
  loc_B05748: MemLdStr global_24
  loc_B0574B: AryLock
  loc_B0574E: Ary1LdPr
  loc_B0574F: MemLdStr global_8
  loc_B05752: AryLock
  loc_B05755: Ary1LdPr
  loc_B05756: MemLdRfVar from_stack_1.global_4
  loc_B05759: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0575E: AryUnlock
  loc_B05761: AryUnlock
  loc_B05764: AryUnlock
  loc_B05767: AryUnlock
  loc_B0576A: AryUnlock
  loc_B0576D: FLdRfVar var_D8
  loc_B05770: FLdPr Me
  loc_B05773: MemLdRfVar from_stack_1.global_76
  loc_B05776: NewIfNullPr clsctacte
  loc_B05779: from_stack_1 = clsctacte.CodiConc
  loc_B0577E: LitI2_Byte 0
  loc_B05780: LitVar_Missing var_E8
  loc_B05783: LitI2_Byte 0
  loc_B05785: FLdZeroAd var_D8
  loc_B05788: CVarStr var_C4
  loc_B0578B: PopAdLdVar
  loc_B0578C: FLdPr Me
  loc_B0578F: MemLdI2 global_94
  loc_B05792: CI4UI1
  loc_B05793: FLdPr Me
  loc_B05796: MemLdI2 global_92
  loc_B05799: CI4UI1
  loc_B0579A: FLdPr Me
  loc_B0579D: MemLdStr global_88
  loc_B057A0: FLdPr Me
  loc_B057A3: MemLdStr global_80
  loc_B057A6: AryLock
  loc_B057A9: Ary1LdPr
  loc_B057AA: MemLdStr global_24
  loc_B057AD: AryLock
  loc_B057B0: Ary1LdPr
  loc_B057B1: MemLdStr global_8
  loc_B057B4: AryLock
  loc_B057B7: Ary1LdPr
  loc_B057B8: MemLdRfVar from_stack_1.global_8
  loc_B057BB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B057C0: AryUnlock
  loc_B057C3: AryUnlock
  loc_B057C6: AryUnlock
  loc_B057C9: FFreeVar var_C4 = ""
  loc_B057D0: FLdRfVar var_C4
  loc_B057D3: FLdPr Me
  loc_B057D6: MemLdRfVar from_stack_1.global_76
  loc_B057D9: NewIfNullPr clsctacte
  loc_B057DC: from_stack_1 = clsctacte.DetaConc
  loc_B057E1: LitI2_Byte 0
  loc_B057E3: LitVar_Missing var_E8
  loc_B057E6: LitI2_Byte 0
  loc_B057E8: FLdVar var_C4
  loc_B057EC: FLdPr Me
  loc_B057EF: MemLdI2 global_94
  loc_B057F2: CI4UI1
  loc_B057F3: FLdPr Me
  loc_B057F6: MemLdI2 global_92
  loc_B057F9: CI4UI1
  loc_B057FA: FLdPr Me
  loc_B057FD: MemLdStr global_88
  loc_B05800: FLdPr Me
  loc_B05803: MemLdStr global_80
  loc_B05806: AryLock
  loc_B05809: Ary1LdPr
  loc_B0580A: MemLdStr global_24
  loc_B0580D: AryLock
  loc_B05810: Ary1LdPr
  loc_B05811: MemLdStr global_8
  loc_B05814: AryLock
  loc_B05817: Ary1LdPr
  loc_B05818: MemLdRfVar from_stack_1.global_12
  loc_B0581B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B05820: AryUnlock
  loc_B05823: AryUnlock
  loc_B05826: AryUnlock
  loc_B05829: FFreeVar var_C4 = ""
  loc_B05830: LitI2_Byte 1
  loc_B05832: PopTmpLdAd2 var_86
  loc_B05835: FLdPr Me
  loc_B05838: MemLdRfVar from_stack_1.global_76
  loc_B0583B: NewIfNullPr clsctacte
  loc_B0583E: Call clsctacte.Move(from_stack_1v)
  loc_B05843: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'BB8C60
  'Data Table: 4ED718
  loc_BB85E4: FLdRfVar var_88
  loc_BB85E7: LitI2_Byte 0
  loc_BB85E9: LitI2_Byte &HFF
  loc_BB85EB: ImpAdLdI4 MemVar_D93C84
  loc_BB85EE: FLdPr Me
  loc_BB85F1: MemLdRfVar from_stack_1.global_56
  loc_BB85F4: NewIfNullPr IFileSystem3
  loc_BB85F7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BB85FC: ILdRf var_88
  loc_BB85FF: FLdPr Me
  loc_BB8602: MemStVarAd
  loc_BB8606: FFree1Ad var_88
  loc_BB8609: LitI2_Byte &HFF
  loc_BB860B: ImpAdStI2 MemVar_D93C8A
  loc_BB860E: Call Proc_161_35_C18C74()
  loc_BB8613: LitI4 1
  loc_BB8618: FLdPr Me
  loc_BB861B: MemLdRfVar from_stack_1.global_88
  loc_BB861E: FLdPr Me
  loc_BB8621: MemLdStr global_80
  loc_BB8624: LitI2_Byte 1
  loc_BB8626: FnUBound
  loc_BB8628: ForI4 var_90
  loc_BB862E: FLdPr Me
  loc_BB8631: MemLdStr global_88
  loc_BB8634: FLdPr Me
  loc_BB8637: MemLdStr global_80
  loc_BB863A: AryLock
  loc_BB863D: Ary1LdRf
  loc_BB863E: FStR4 var_98
  loc_BB8641: LitVarStr var_A8, "  <tr valign=""top"" class=""LineaDato"">"
  loc_BB8646: PopAdLdVar
  loc_BB8647: FLdPr Me
  loc_BB864A: MemLdRfVar from_stack_1.global_60
  loc_BB864D: LdPrVar
  loc_BB864F: LateMemCall
  loc_BB8655: LitStr "    <td align=""right"" rowspan="""
  loc_BB8658: FMemLdI2 var_98(20)
  loc_BB865D: CStrUI1
  loc_BB865F: FStStrNoPop var_BC
  loc_BB8662: ConcatStr
  loc_BB8663: FStStrNoPop var_C0
  loc_BB8666: LitStr """>"
  loc_BB8669: ConcatStr
  loc_BB866A: FStStrNoPop var_C4
  loc_BB866D: FMemLdR4 var_98(0)
  loc_BB8672: ConcatStr
  loc_BB8673: FStStrNoPop var_C8
  loc_BB8676: LitStr "</td>"
  loc_BB8679: ConcatStr
  loc_BB867A: CVarStr var_D8
  loc_BB867D: PopAdLdVar
  loc_BB867E: FLdPr Me
  loc_BB8681: MemLdRfVar from_stack_1.global_60
  loc_BB8684: LdPrVar
  loc_BB8686: LateMemCall
  loc_BB868C: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB8697: FFree1Var var_D8 = ""
  loc_BB869A: LitStr "    <td align=""left"" rowspan="""
  loc_BB869D: FMemLdI2 var_98(20)
  loc_BB86A2: CStrUI1
  loc_BB86A4: FStStrNoPop var_BC
  loc_BB86A7: ConcatStr
  loc_BB86A8: FStStrNoPop var_C0
  loc_BB86AB: LitStr """>"
  loc_BB86AE: ConcatStr
  loc_BB86AF: FStStrNoPop var_C4
  loc_BB86B2: FMemLdR4 var_98(4)
  loc_BB86B7: ConcatStr
  loc_BB86B8: FStStrNoPop var_C8
  loc_BB86BB: LitStr "</td>"
  loc_BB86BE: ConcatStr
  loc_BB86BF: CVarStr var_D8
  loc_BB86C2: PopAdLdVar
  loc_BB86C3: FLdPr Me
  loc_BB86C6: MemLdRfVar from_stack_1.global_60
  loc_BB86C9: LdPrVar
  loc_BB86CB: LateMemCall
  loc_BB86D1: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB86DC: FFree1Var var_D8 = ""
  loc_BB86DF: FLdRfVar var_E4
  loc_BB86E2: FLdRfVar var_DA
  loc_BB86E5: FLdPr Me
  loc_BB86E8: VCallAd Control_ID_CodiOficCbo
  loc_BB86EB: FStAdFunc var_88
  loc_BB86EE: FLdPr var_88
  loc_BB86F1:  = Me.ListIndex
  loc_BB86F6: FLdI2 var_DA
  loc_BB86F9: FLdPr Me
  loc_BB86FC: VCallAd Control_ID_CodiOficCbo
  loc_BB86FF: FStAdFunc var_E0
  loc_BB8702: FLdPr var_E0
  loc_BB8705:  = Me.ItemData
  loc_BB870A: ILdRf var_E4
  loc_BB870D: LitI4 1
  loc_BB8712: EqI4
  loc_BB8713: FFreeAd var_88 = ""
  loc_BB871A: BranchF loc_BB8762
  loc_BB871D: LitStr "    <td align=""left"" rowspan="""
  loc_BB8720: FMemLdI2 var_98(20)
  loc_BB8725: CStrUI1
  loc_BB8727: FStStrNoPop var_BC
  loc_BB872A: ConcatStr
  loc_BB872B: FStStrNoPop var_C0
  loc_BB872E: LitStr """>"
  loc_BB8731: ConcatStr
  loc_BB8732: FStStrNoPop var_C4
  loc_BB8735: FMemLdR4 var_98(8)
  loc_BB873A: ConcatStr
  loc_BB873B: FStStrNoPop var_C8
  loc_BB873E: LitStr "</td>"
  loc_BB8741: ConcatStr
  loc_BB8742: CVarStr var_D8
  loc_BB8745: PopAdLdVar
  loc_BB8746: FLdPr Me
  loc_BB8749: MemLdRfVar from_stack_1.global_60
  loc_BB874C: LdPrVar
  loc_BB874E: LateMemCall
  loc_BB8754: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB875F: FFree1Var var_D8 = ""
  loc_BB8762: LitStr "    <td align=""left"" rowspan="""
  loc_BB8765: FMemLdI2 var_98(20)
  loc_BB876A: CStrUI1
  loc_BB876C: FStStrNoPop var_BC
  loc_BB876F: ConcatStr
  loc_BB8770: FStStrNoPop var_C0
  loc_BB8773: LitStr """>"
  loc_BB8776: ConcatStr
  loc_BB8777: FStStrNoPop var_C4
  loc_BB877A: FMemLdR4 var_98(12)
  loc_BB877F: ConcatStr
  loc_BB8780: FStStrNoPop var_C8
  loc_BB8783: LitStr "</td>"
  loc_BB8786: ConcatStr
  loc_BB8787: CVarStr var_D8
  loc_BB878A: PopAdLdVar
  loc_BB878B: FLdPr Me
  loc_BB878E: MemLdRfVar from_stack_1.global_60
  loc_BB8791: LdPrVar
  loc_BB8793: LateMemCall
  loc_BB8799: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB87A4: FFree1Var var_D8 = ""
  loc_BB87A7: LitStr "    <td align=""left"" rowspan="""
  loc_BB87AA: FMemLdI2 var_98(20)
  loc_BB87AF: CStrUI1
  loc_BB87B1: FStStrNoPop var_BC
  loc_BB87B4: ConcatStr
  loc_BB87B5: FStStrNoPop var_C0
  loc_BB87B8: LitStr """>"
  loc_BB87BB: ConcatStr
  loc_BB87BC: FStStrNoPop var_C4
  loc_BB87BF: FMemLdR4 var_98(16)
  loc_BB87C4: ConcatStr
  loc_BB87C5: FStStrNoPop var_C8
  loc_BB87C8: LitStr "</td>"
  loc_BB87CB: ConcatStr
  loc_BB87CC: CVarStr var_D8
  loc_BB87CF: PopAdLdVar
  loc_BB87D0: FLdPr Me
  loc_BB87D3: MemLdRfVar from_stack_1.global_60
  loc_BB87D6: LdPrVar
  loc_BB87D8: LateMemCall
  loc_BB87DE: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB87E9: FFree1Var var_D8 = ""
  loc_BB87EC: LitI2_Byte 1
  loc_BB87EE: FLdPr Me
  loc_BB87F1: MemLdRfVar from_stack_1.global_92
  loc_BB87F4: FMemLdR4 var_98(24)
  loc_BB87F9: LitI2_Byte 1
  loc_BB87FB: FnUBound
  loc_BB87FD: CI2I4
  loc_BB87FE: ForI2 var_E8
  loc_BB8804: FLdPr Me
  loc_BB8807: MemLdI2 global_92
  loc_BB880A: CI4UI1
  loc_BB880B: FMemLdR4 var_98(24)
  loc_BB8810: AryLock
  loc_BB8813: Ary1LdRf
  loc_BB8814: FStR4 var_F0
  loc_BB8817: FLdPr Me
  loc_BB881A: MemLdI2 global_92
  loc_BB881D: LitI2_Byte 1
  loc_BB881F: GtI2
  loc_BB8820: BranchF loc_BB8837
  loc_BB8823: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BB8828: PopAdLdVar
  loc_BB8829: FLdPr Me
  loc_BB882C: MemLdRfVar from_stack_1.global_60
  loc_BB882F: LdPrVar
  loc_BB8831: LateMemCall
  loc_BB8837: LitStr "    <td align=""right"" rowspan="""
  loc_BB883A: FMemLdI2 var_F0(4)
  loc_BB883F: CStrUI1
  loc_BB8841: FStStrNoPop var_BC
  loc_BB8844: ConcatStr
  loc_BB8845: FStStrNoPop var_C0
  loc_BB8848: LitStr """>"
  loc_BB884B: ConcatStr
  loc_BB884C: FStStrNoPop var_C4
  loc_BB884F: FMemLdR4 var_F0(0)
  loc_BB8854: ConcatStr
  loc_BB8855: FStStrNoPop var_C8
  loc_BB8858: LitStr "</td>"
  loc_BB885B: ConcatStr
  loc_BB885C: CVarStr var_D8
  loc_BB885F: PopAdLdVar
  loc_BB8860: FLdPr Me
  loc_BB8863: MemLdRfVar from_stack_1.global_60
  loc_BB8866: LdPrVar
  loc_BB8868: LateMemCall
  loc_BB886E: FFreeStr var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB8879: FFree1Var var_D8 = ""
  loc_BB887C: LitI2_Byte 1
  loc_BB887E: FLdPr Me
  loc_BB8881: MemLdRfVar from_stack_1.global_94
  loc_BB8884: FMemLdR4 var_F0(8)
  loc_BB8889: LitI2_Byte 1
  loc_BB888B: FnUBound
  loc_BB888D: CI2I4
  loc_BB888E: ForI2 var_F4
  loc_BB8894: FLdPr Me
  loc_BB8897: MemLdI2 global_94
  loc_BB889A: CI4UI1
  loc_BB889B: FMemLdR4 var_F0(8)
  loc_BB88A0: AryLock
  loc_BB88A3: Ary1LdRf
  loc_BB88A4: FStR4 var_FC
  loc_BB88A7: FLdPr Me
  loc_BB88AA: MemLdI2 global_94
  loc_BB88AD: LitI2_Byte 1
  loc_BB88AF: GtI2
  loc_BB88B0: BranchF loc_BB88C7
  loc_BB88B3: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BB88B8: PopAdLdVar
  loc_BB88B9: FLdPr Me
  loc_BB88BC: MemLdRfVar from_stack_1.global_60
  loc_BB88BF: LdPrVar
  loc_BB88C1: LateMemCall
  loc_BB88C7: FLdRfVar var_DA
  loc_BB88CA: FLdPr Me
  loc_BB88CD: VCallAd Control_ID_PeriodoOpt
  loc_BB88D0: FStAdFunc var_88
  loc_BB88D3: FLdPr var_88
  loc_BB88D6:  = Me.Value
  loc_BB88DB: FLdI2 var_DA
  loc_BB88DE: CI4UI1
  loc_BB88DF: LitI4 0
  loc_BB88E4: EqI4
  loc_BB88E5: FFree1Ad var_88
  loc_BB88E8: BranchF loc_BB8916
  loc_BB88EB: LitStr vbNullString
  loc_BB88EE: LitI2_Byte 0
  loc_BB88F0: LitI2_Byte 0
  loc_BB88F2: LitI2_Byte 0
  loc_BB88F4: LitStr "right"
  loc_BB88F7: FMemLdR4 var_FC(0)
  loc_BB88FC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB8901: CVarStr var_D8
  loc_BB8904: PopAdLdVar
  loc_BB8905: FLdPr Me
  loc_BB8908: MemLdRfVar from_stack_1.global_60
  loc_BB890B: LdPrVar
  loc_BB890D: LateMemCall
  loc_BB8913: FFree1Var var_D8 = ""
  loc_BB8916: LitStr vbNullString
  loc_BB8919: LitI2_Byte 0
  loc_BB891B: LitI2_Byte 0
  loc_BB891D: LitI2_Byte 0
  loc_BB891F: LitStr "right"
  loc_BB8922: FMemLdR4 var_FC(4)
  loc_BB8927: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB892C: CVarStr var_D8
  loc_BB892F: PopAdLdVar
  loc_BB8930: FLdPr Me
  loc_BB8933: MemLdRfVar from_stack_1.global_60
  loc_BB8936: LdPrVar
  loc_BB8938: LateMemCall
  loc_BB893E: FFree1Var var_D8 = ""
  loc_BB8941: LitStr vbNullString
  loc_BB8944: LitI2_Byte 0
  loc_BB8946: LitI2_Byte 0
  loc_BB8948: LitI2_Byte 0
  loc_BB894A: LitStr "left"
  loc_BB894D: FMemLdR4 var_FC(8)
  loc_BB8952: LitStr " - "
  loc_BB8955: ConcatStr
  loc_BB8956: FStStrNoPop var_BC
  loc_BB8959: FMemLdR4 var_FC(12)
  loc_BB895E: ConcatStr
  loc_BB895F: FStStrNoPop var_C0
  loc_BB8962: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BB8967: CVarStr var_D8
  loc_BB896A: PopAdLdVar
  loc_BB896B: FLdPr Me
  loc_BB896E: MemLdRfVar from_stack_1.global_60
  loc_BB8971: LdPrVar
  loc_BB8973: LateMemCall
  loc_BB8979: FFreeStr var_BC = ""
  loc_BB8980: FFree1Var var_D8 = ""
  loc_BB8983: LitVarStr var_A8, "     </tr>"
  loc_BB8988: PopAdLdVar
  loc_BB8989: FLdPr Me
  loc_BB898C: MemLdRfVar from_stack_1.global_60
  loc_BB898F: LdPrVar
  loc_BB8991: LateMemCall
  loc_BB8997: LitI4 0
  loc_BB899C: FStR4 var_FC
  loc_BB899F: AryUnlock
  loc_BB89A2: FLdPr Me
  loc_BB89A5: MemLdRfVar from_stack_1.global_94
  loc_BB89A8: NextI2 var_F4, loc_BB8894
  loc_BB89AD: FMemLdR4 var_F0(8)
  loc_BB89B2: LitI2_Byte 1
  loc_BB89B4: FnUBound
  loc_BB89B6: LitI4 1
  loc_BB89BB: GtI4
  loc_BB89BC: BranchF loc_BB8A37
  loc_BB89BF: LitVarStr var_A8, "  <tr valign=""top"">"
  loc_BB89C4: PopAdLdVar
  loc_BB89C5: FLdPr Me
  loc_BB89C8: MemLdRfVar from_stack_1.global_60
  loc_BB89CB: LdPrVar
  loc_BB89CD: LateMemCall
  loc_BB89D3: LitVarStr var_A8, "    <td align=""center"" class=""SubTotales2"">SubTot.</td>"
  loc_BB89D8: PopAdLdVar
  loc_BB89D9: FLdPr Me
  loc_BB89DC: MemLdRfVar from_stack_1.global_60
  loc_BB89DF: LdPrVar
  loc_BB89E1: LateMemCall
  loc_BB89E7: LitStr "    <td align=""right"" class=""SubTotales2"">"
  loc_BB89EA: FMemLdR4 var_F0(12)
  loc_BB89EF: ConcatStr
  loc_BB89F0: FStStrNoPop var_BC
  loc_BB89F3: LitStr "</td>"
  loc_BB89F6: ConcatStr
  loc_BB89F7: CVarStr var_D8
  loc_BB89FA: PopAdLdVar
  loc_BB89FB: FLdPr Me
  loc_BB89FE: MemLdRfVar from_stack_1.global_60
  loc_BB8A01: LdPrVar
  loc_BB8A03: LateMemCall
  loc_BB8A09: FFree1Str var_BC
  loc_BB8A0C: FFree1Var var_D8 = ""
  loc_BB8A0F: LitVarStr var_A8, "    <td class=""LineaDato"">&nbsp;</td>"
  loc_BB8A14: PopAdLdVar
  loc_BB8A15: FLdPr Me
  loc_BB8A18: MemLdRfVar from_stack_1.global_60
  loc_BB8A1B: LdPrVar
  loc_BB8A1D: LateMemCall
  loc_BB8A23: LitVarStr var_A8, "     </tr>"
  loc_BB8A28: PopAdLdVar
  loc_BB8A29: FLdPr Me
  loc_BB8A2C: MemLdRfVar from_stack_1.global_60
  loc_BB8A2F: LdPrVar
  loc_BB8A31: LateMemCall
  loc_BB8A37: LitI4 0
  loc_BB8A3C: FStR4 var_F0
  loc_BB8A3F: AryUnlock
  loc_BB8A42: FLdPr Me
  loc_BB8A45: MemLdRfVar from_stack_1.global_92
  loc_BB8A48: NextI2 var_E8, loc_BB8804
  loc_BB8A4D: FLdPr Me
  loc_BB8A50: MemLdStr global_88
  loc_BB8A53: FLdPr Me
  loc_BB8A56: MemLdStr global_80
  loc_BB8A59: Ary1LdPr
  loc_BB8A5A: MemLdStr global_24
  loc_BB8A5D: LitI2_Byte 1
  loc_BB8A5F: FnUBound
  loc_BB8A61: LitI4 1
  loc_BB8A66: GtI4
  loc_BB8A67: BranchF loc_BB8B51
  loc_BB8A6A: LitVarStr var_A8, "  <tr valign=""top"" align=""left"">"
  loc_BB8A6F: PopAdLdVar
  loc_BB8A70: FLdPr Me
  loc_BB8A73: MemLdRfVar from_stack_1.global_60
  loc_BB8A76: LdPrVar
  loc_BB8A78: LateMemCall
  loc_BB8A7E: FLdRfVar var_DA
  loc_BB8A81: FLdPr Me
  loc_BB8A84: VCallAd Control_ID_PeriodoOpt
  loc_BB8A87: FStAdFunc var_88
  loc_BB8A8A: FLdPr var_88
  loc_BB8A8D:  = Me.Value
  loc_BB8A92: LitVarStr var_13C, "    <td colspan="""
  loc_BB8A97: LitVarI2 var_11C, 2
  loc_BB8A9C: LitVarI2 var_D8, 1
  loc_BB8AA1: FLdI2 var_DA
  loc_BB8AA4: CI4UI1
  loc_BB8AA5: LitI4 1
  loc_BB8AAA: EqI4
  loc_BB8AAB: CVarBoolI2 var_A8
  loc_BB8AAF: FLdRfVar var_12C
  loc_BB8AB2: ImpAdCallFPR4  = IIf(, , )
  loc_BB8AB7: FLdRfVar var_12C
  loc_BB8ABA: ConcatVar var_14C
  loc_BB8ABE: LitVarStr var_15C, """ class=""SubTotales"" nowrap>SubTot. Cta: "
  loc_BB8AC3: ConcatVar var_16C
  loc_BB8AC7: FMemLdR4 var_98(0)
  loc_BB8ACC: CVarStr var_17C
  loc_BB8ACF: ConcatVar var_18C
  loc_BB8AD3: LitVarStr var_19C, "</td>"
  loc_BB8AD8: ConcatVar var_1AC
  loc_BB8ADC: PopAdLdVar
  loc_BB8ADD: FLdPr Me
  loc_BB8AE0: MemLdRfVar from_stack_1.global_60
  loc_BB8AE3: LdPrVar
  loc_BB8AE5: LateMemCall
  loc_BB8AEB: FFree1Ad var_88
  loc_BB8AEE: FFreeVar var_A8 = "": var_D8 = "": var_11C = "": var_12C = "": var_14C = "": var_16C = "": var_18C = ""
  loc_BB8B01: LitStr "    <td align=""right"" class=""SubTotales"">"
  loc_BB8B04: FMemLdR4 var_98(28)
  loc_BB8B09: ConcatStr
  loc_BB8B0A: FStStrNoPop var_BC
  loc_BB8B0D: LitStr " </td>"
  loc_BB8B10: ConcatStr
  loc_BB8B11: CVarStr var_D8
  loc_BB8B14: PopAdLdVar
  loc_BB8B15: FLdPr Me
  loc_BB8B18: MemLdRfVar from_stack_1.global_60
  loc_BB8B1B: LdPrVar
  loc_BB8B1D: LateMemCall
  loc_BB8B23: FFree1Str var_BC
  loc_BB8B26: FFree1Var var_D8 = ""
  loc_BB8B29: LitVarStr var_A8, "    <td class=""LineaDato"">&nbsp;</td>"
  loc_BB8B2E: PopAdLdVar
  loc_BB8B2F: FLdPr Me
  loc_BB8B32: MemLdRfVar from_stack_1.global_60
  loc_BB8B35: LdPrVar
  loc_BB8B37: LateMemCall
  loc_BB8B3D: LitVarStr var_A8, "     </tr>"
  loc_BB8B42: PopAdLdVar
  loc_BB8B43: FLdPr Me
  loc_BB8B46: MemLdRfVar from_stack_1.global_60
  loc_BB8B49: LdPrVar
  loc_BB8B4B: LateMemCall
  loc_BB8B51: LitI4 0
  loc_BB8B56: FStR4 var_98
  loc_BB8B59: AryUnlock
  loc_BB8B5C: FLdPr Me
  loc_BB8B5F: MemLdRfVar from_stack_1.global_88
  loc_BB8B62: NextI4 var_90, loc_BB862E
  loc_BB8B67: LitVarStr var_A8, "  <tr valign=""top"" align=""right"">"
  loc_BB8B6C: PopAdLdVar
  loc_BB8B6D: FLdPr Me
  loc_BB8B70: MemLdRfVar from_stack_1.global_60
  loc_BB8B73: LdPrVar
  loc_BB8B75: LateMemCall
  loc_BB8B7B: FLdRfVar var_DA
  loc_BB8B7E: FLdPr Me
  loc_BB8B81: VCallAd Control_ID_PeriodoOpt
  loc_BB8B84: FStAdFunc var_88
  loc_BB8B87: FLdPr var_88
  loc_BB8B8A:  = Me.Value
  loc_BB8B8F: LitVarStr var_13C, "    <td colspan="""
  loc_BB8B94: LitVarStr var_10C, "6"
  loc_BB8B99: FStVarCopyObj var_11C
  loc_BB8B9C: FLdRfVar var_11C
  loc_BB8B9F: LitVarStr var_B8, "5"
  loc_BB8BA4: FStVarCopyObj var_D8
  loc_BB8BA7: FLdRfVar var_D8
  loc_BB8BAA: FLdI2 var_DA
  loc_BB8BAD: CI4UI1
  loc_BB8BAE: LitI4 1
  loc_BB8BB3: EqI4
  loc_BB8BB4: CVarBoolI2 var_A8
  loc_BB8BB8: FLdRfVar var_12C
  loc_BB8BBB: ImpAdCallFPR4  = IIf(, , )
  loc_BB8BC0: FLdRfVar var_12C
  loc_BB8BC3: ConcatVar var_14C
  loc_BB8BC7: LitVarStr var_15C, """ class=""Totales"">Total</td>"
  loc_BB8BCC: ConcatVar var_16C
  loc_BB8BD0: PopAdLdVar
  loc_BB8BD1: FLdPr Me
  loc_BB8BD4: MemLdRfVar from_stack_1.global_60
  loc_BB8BD7: LdPrVar
  loc_BB8BD9: LateMemCall
  loc_BB8BDF: FFree1Ad var_88
  loc_BB8BE2: FFreeVar var_A8 = "": var_D8 = "": var_11C = "": var_12C = "": var_14C = ""
  loc_BB8BF1: LitStr "    <td class=""Totales"">"
  loc_BB8BF4: FLdPr Me
  loc_BB8BF7: MemLdStr global_84
  loc_BB8BFA: ConcatStr
  loc_BB8BFB: FStStrNoPop var_BC
  loc_BB8BFE: LitStr "</td>"
  loc_BB8C01: ConcatStr
  loc_BB8C02: CVarStr var_D8
  loc_BB8C05: PopAdLdVar
  loc_BB8C06: FLdPr Me
  loc_BB8C09: MemLdRfVar from_stack_1.global_60
  loc_BB8C0C: LdPrVar
  loc_BB8C0E: LateMemCall
  loc_BB8C14: FFree1Str var_BC
  loc_BB8C17: FFree1Var var_D8 = ""
  loc_BB8C1A: LitVarStr var_A8, "    <td class=""LineaDato"">&nbsp;</td>"
  loc_BB8C1F: PopAdLdVar
  loc_BB8C20: FLdPr Me
  loc_BB8C23: MemLdRfVar from_stack_1.global_60
  loc_BB8C26: LdPrVar
  loc_BB8C28: LateMemCall
  loc_BB8C2E: LitVarStr var_A8, "     </tr>"
  loc_BB8C33: PopAdLdVar
  loc_BB8C34: FLdPr Me
  loc_BB8C37: MemLdRfVar from_stack_1.global_60
  loc_BB8C3A: LdPrVar
  loc_BB8C3C: LateMemCall
  loc_BB8C42: Call Proc_161_36_A0AF48()
  loc_BB8C47: FLdPr Me
  loc_BB8C4A: MemLdRfVar from_stack_1.global_60
  loc_BB8C4D: LdPrVar
  loc_BB8C4F: LateMemCall
  loc_BB8C55: LitStr vbNullString
  loc_BB8C58: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_BB8C5D: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C1FD4
  'Data Table: 4ED718
  loc_9C1FBC: LitI2_Byte 0
  loc_9C1FBE: FLdPr Me
  loc_9C1FC1: MemStI2 bLogos
  loc_9C1FC4: Call GeneraHTML()
  loc_9C1FC9: LitI2_Byte &HFF
  loc_9C1FCB: FLdPr Me
  loc_9C1FCE: MemStI2 bLogos
  loc_9C1FD1: ExitProcHresult
  loc_9C1FD2: FLdPr var_5FFB
End Sub

Private Function Proc_161_35_C18C74() 'C18C74
  'Data Table: 4ED718
  loc_C18248: LitVarStr var_94, "<html>"
  loc_C1824D: PopAdLdVar
  loc_C1824E: FLdPr Me
  loc_C18251: MemLdRfVar from_stack_1.global_60
  loc_C18254: LdPrVar
  loc_C18256: LateMemCall
  loc_C1825C: LitVarStr var_94, "<head>"
  loc_C18261: PopAdLdVar
  loc_C18262: FLdPr Me
  loc_C18265: MemLdRfVar from_stack_1.global_60
  loc_C18268: LdPrVar
  loc_C1826A: LateMemCall
  loc_C18270: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C18275: PopAdLdVar
  loc_C18276: FLdPr Me
  loc_C18279: MemLdRfVar from_stack_1.global_60
  loc_C1827C: LdPrVar
  loc_C1827E: LateMemCall
  loc_C18284: LitStr "<title>"
  loc_C18287: FLdRfVar var_A8
  loc_C1828A: FLdPr Me
  loc_C1828D:  = Me.Caption
  loc_C18292: ILdRf var_A8
  loc_C18295: ConcatStr
  loc_C18296: FStStrNoPop var_AC
  loc_C18299: LitStr "</title>"
  loc_C1829C: ConcatStr
  loc_C1829D: CVarStr var_BC
  loc_C182A0: PopAdLdVar
  loc_C182A1: FLdPr Me
  loc_C182A4: MemLdRfVar from_stack_1.global_60
  loc_C182A7: LdPrVar
  loc_C182A9: LateMemCall
  loc_C182AF: FFreeStr var_A8 = ""
  loc_C182B6: FFree1Var var_BC = ""
  loc_C182B9: LitVarStr var_94, "<style type=""text/css"">"
  loc_C182BE: PopAdLdVar
  loc_C182BF: FLdPr Me
  loc_C182C2: MemLdRfVar from_stack_1.global_60
  loc_C182C5: LdPrVar
  loc_C182C7: LateMemCall
  loc_C182CD: LitVarStr var_94, ".Titulo1 {"
  loc_C182D2: PopAdLdVar
  loc_C182D3: FLdPr Me
  loc_C182D6: MemLdRfVar from_stack_1.global_60
  loc_C182D9: LdPrVar
  loc_C182DB: LateMemCall
  loc_C182E1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C182E6: PopAdLdVar
  loc_C182E7: FLdPr Me
  loc_C182EA: MemLdRfVar from_stack_1.global_60
  loc_C182ED: LdPrVar
  loc_C182EF: LateMemCall
  loc_C182F5: LitVarStr var_94, " font-size: 18px;"
  loc_C182FA: PopAdLdVar
  loc_C182FB: FLdPr Me
  loc_C182FE: MemLdRfVar from_stack_1.global_60
  loc_C18301: LdPrVar
  loc_C18303: LateMemCall
  loc_C18309: LitVarStr var_94, " font-weight: bold;"
  loc_C1830E: PopAdLdVar
  loc_C1830F: FLdPr Me
  loc_C18312: MemLdRfVar from_stack_1.global_60
  loc_C18315: LdPrVar
  loc_C18317: LateMemCall
  loc_C1831D: LitVarStr var_94, "}"
  loc_C18322: PopAdLdVar
  loc_C18323: FLdPr Me
  loc_C18326: MemLdRfVar from_stack_1.global_60
  loc_C18329: LdPrVar
  loc_C1832B: LateMemCall
  loc_C18331: LitVarStr var_94, ".Titulo2 {"
  loc_C18336: PopAdLdVar
  loc_C18337: FLdPr Me
  loc_C1833A: MemLdRfVar from_stack_1.global_60
  loc_C1833D: LdPrVar
  loc_C1833F: LateMemCall
  loc_C18345: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C1834A: PopAdLdVar
  loc_C1834B: FLdPr Me
  loc_C1834E: MemLdRfVar from_stack_1.global_60
  loc_C18351: LdPrVar
  loc_C18353: LateMemCall
  loc_C18359: LitVarStr var_94, " font-size: 14px;"
  loc_C1835E: PopAdLdVar
  loc_C1835F: FLdPr Me
  loc_C18362: MemLdRfVar from_stack_1.global_60
  loc_C18365: LdPrVar
  loc_C18367: LateMemCall
  loc_C1836D: LitVarStr var_94, " font-weight: bold;"
  loc_C18372: PopAdLdVar
  loc_C18373: FLdPr Me
  loc_C18376: MemLdRfVar from_stack_1.global_60
  loc_C18379: LdPrVar
  loc_C1837B: LateMemCall
  loc_C18381: LitVarStr var_94, "}"
  loc_C18386: PopAdLdVar
  loc_C18387: FLdPr Me
  loc_C1838A: MemLdRfVar from_stack_1.global_60
  loc_C1838D: LdPrVar
  loc_C1838F: LateMemCall
  loc_C18395: LitVarStr var_94, ".Normal {"
  loc_C1839A: PopAdLdVar
  loc_C1839B: FLdPr Me
  loc_C1839E: MemLdRfVar from_stack_1.global_60
  loc_C183A1: LdPrVar
  loc_C183A3: LateMemCall
  loc_C183A9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C183AE: PopAdLdVar
  loc_C183AF: FLdPr Me
  loc_C183B2: MemLdRfVar from_stack_1.global_60
  loc_C183B5: LdPrVar
  loc_C183B7: LateMemCall
  loc_C183BD: LitVarStr var_94, " font-size: 12px;"
  loc_C183C2: PopAdLdVar
  loc_C183C3: FLdPr Me
  loc_C183C6: MemLdRfVar from_stack_1.global_60
  loc_C183C9: LdPrVar
  loc_C183CB: LateMemCall
  loc_C183D1: LitVarStr var_94, " font-style: normal;"
  loc_C183D6: PopAdLdVar
  loc_C183D7: FLdPr Me
  loc_C183DA: MemLdRfVar from_stack_1.global_60
  loc_C183DD: LdPrVar
  loc_C183DF: LateMemCall
  loc_C183E5: LitVarStr var_94, " font-weight: normal;"
  loc_C183EA: PopAdLdVar
  loc_C183EB: FLdPr Me
  loc_C183EE: MemLdRfVar from_stack_1.global_60
  loc_C183F1: LdPrVar
  loc_C183F3: LateMemCall
  loc_C183F9: LitVarStr var_94, " font-variant: normal;"
  loc_C183FE: PopAdLdVar
  loc_C183FF: FLdPr Me
  loc_C18402: MemLdRfVar from_stack_1.global_60
  loc_C18405: LdPrVar
  loc_C18407: LateMemCall
  loc_C1840D: LitVarStr var_94, "}"
  loc_C18412: PopAdLdVar
  loc_C18413: FLdPr Me
  loc_C18416: MemLdRfVar from_stack_1.global_60
  loc_C18419: LdPrVar
  loc_C1841B: LateMemCall
  loc_C18421: LitVarStr var_94, ".Encabezado {"
  loc_C18426: PopAdLdVar
  loc_C18427: FLdPr Me
  loc_C1842A: MemLdRfVar from_stack_1.global_60
  loc_C1842D: LdPrVar
  loc_C1842F: LateMemCall
  loc_C18435: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_C1843A: PopAdLdVar
  loc_C1843B: FLdPr Me
  loc_C1843E: MemLdRfVar from_stack_1.global_60
  loc_C18441: LdPrVar
  loc_C18443: LateMemCall
  loc_C18449: LitVarStr var_94, " font-size: 11px;"
  loc_C1844E: PopAdLdVar
  loc_C1844F: FLdPr Me
  loc_C18452: MemLdRfVar from_stack_1.global_60
  loc_C18455: LdPrVar
  loc_C18457: LateMemCall
  loc_C1845D: LitVarStr var_94, " font-weight: bold;"
  loc_C18462: PopAdLdVar
  loc_C18463: FLdPr Me
  loc_C18466: MemLdRfVar from_stack_1.global_60
  loc_C18469: LdPrVar
  loc_C1846B: LateMemCall
  loc_C18471: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_C18476: PopAdLdVar
  loc_C18477: FLdPr Me
  loc_C1847A: MemLdRfVar from_stack_1.global_60
  loc_C1847D: LdPrVar
  loc_C1847F: LateMemCall
  loc_C18485: LitVarStr var_94, "}"
  loc_C1848A: PopAdLdVar
  loc_C1848B: FLdPr Me
  loc_C1848E: MemLdRfVar from_stack_1.global_60
  loc_C18491: LdPrVar
  loc_C18493: LateMemCall
  loc_C18499: LitVarStr var_94, ".LineaDato {"
  loc_C1849E: PopAdLdVar
  loc_C1849F: FLdPr Me
  loc_C184A2: MemLdRfVar from_stack_1.global_60
  loc_C184A5: LdPrVar
  loc_C184A7: LateMemCall
  loc_C184AD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C184B2: PopAdLdVar
  loc_C184B3: FLdPr Me
  loc_C184B6: MemLdRfVar from_stack_1.global_60
  loc_C184B9: LdPrVar
  loc_C184BB: LateMemCall
  loc_C184C1: LitVarStr var_94, " font-size: 10px;"
  loc_C184C6: PopAdLdVar
  loc_C184C7: FLdPr Me
  loc_C184CA: MemLdRfVar from_stack_1.global_60
  loc_C184CD: LdPrVar
  loc_C184CF: LateMemCall
  loc_C184D5: LitVarStr var_94, "}"
  loc_C184DA: PopAdLdVar
  loc_C184DB: FLdPr Me
  loc_C184DE: MemLdRfVar from_stack_1.global_60
  loc_C184E1: LdPrVar
  loc_C184E3: LateMemCall
  loc_C184E9: LitVarStr var_94, ".Totales {"
  loc_C184EE: PopAdLdVar
  loc_C184EF: FLdPr Me
  loc_C184F2: MemLdRfVar from_stack_1.global_60
  loc_C184F5: LdPrVar
  loc_C184F7: LateMemCall
  loc_C184FD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C18502: PopAdLdVar
  loc_C18503: FLdPr Me
  loc_C18506: MemLdRfVar from_stack_1.global_60
  loc_C18509: LdPrVar
  loc_C1850B: LateMemCall
  loc_C18511: LitVarStr var_94, " font-size: 12px;"
  loc_C18516: PopAdLdVar
  loc_C18517: FLdPr Me
  loc_C1851A: MemLdRfVar from_stack_1.global_60
  loc_C1851D: LdPrVar
  loc_C1851F: LateMemCall
  loc_C18525: LitVarStr var_94, " font-weight: bold;"
  loc_C1852A: PopAdLdVar
  loc_C1852B: FLdPr Me
  loc_C1852E: MemLdRfVar from_stack_1.global_60
  loc_C18531: LdPrVar
  loc_C18533: LateMemCall
  loc_C18539: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_C1853E: PopAdLdVar
  loc_C1853F: FLdPr Me
  loc_C18542: MemLdRfVar from_stack_1.global_60
  loc_C18545: LdPrVar
  loc_C18547: LateMemCall
  loc_C1854D: LitVarStr var_94, "}"
  loc_C18552: PopAdLdVar
  loc_C18553: FLdPr Me
  loc_C18556: MemLdRfVar from_stack_1.global_60
  loc_C18559: LdPrVar
  loc_C1855B: LateMemCall
  loc_C18561: LitVarStr var_94, ".SubTotales {"
  loc_C18566: PopAdLdVar
  loc_C18567: FLdPr Me
  loc_C1856A: MemLdRfVar from_stack_1.global_60
  loc_C1856D: LdPrVar
  loc_C1856F: LateMemCall
  loc_C18575: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C1857A: PopAdLdVar
  loc_C1857B: FLdPr Me
  loc_C1857E: MemLdRfVar from_stack_1.global_60
  loc_C18581: LdPrVar
  loc_C18583: LateMemCall
  loc_C18589: LitVarStr var_94, " font-size: 10px;"
  loc_C1858E: PopAdLdVar
  loc_C1858F: FLdPr Me
  loc_C18592: MemLdRfVar from_stack_1.global_60
  loc_C18595: LdPrVar
  loc_C18597: LateMemCall
  loc_C1859D: LitVarStr var_94, " font-weight: bold;"
  loc_C185A2: PopAdLdVar
  loc_C185A3: FLdPr Me
  loc_C185A6: MemLdRfVar from_stack_1.global_60
  loc_C185A9: LdPrVar
  loc_C185AB: LateMemCall
  loc_C185B1: LitVarStr var_94, " background-color: #C1E2F4;"
  loc_C185B6: PopAdLdVar
  loc_C185B7: FLdPr Me
  loc_C185BA: MemLdRfVar from_stack_1.global_60
  loc_C185BD: LdPrVar
  loc_C185BF: LateMemCall
  loc_C185C5: LitVarStr var_94, "}"
  loc_C185CA: PopAdLdVar
  loc_C185CB: FLdPr Me
  loc_C185CE: MemLdRfVar from_stack_1.global_60
  loc_C185D1: LdPrVar
  loc_C185D3: LateMemCall
  loc_C185D9: LitVarStr var_94, ".SubTotales2 {"
  loc_C185DE: PopAdLdVar
  loc_C185DF: FLdPr Me
  loc_C185E2: MemLdRfVar from_stack_1.global_60
  loc_C185E5: LdPrVar
  loc_C185E7: LateMemCall
  loc_C185ED: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_C185F2: PopAdLdVar
  loc_C185F3: FLdPr Me
  loc_C185F6: MemLdRfVar from_stack_1.global_60
  loc_C185F9: LdPrVar
  loc_C185FB: LateMemCall
  loc_C18601: LitVarStr var_94, " font-size: 10px;"
  loc_C18606: PopAdLdVar
  loc_C18607: FLdPr Me
  loc_C1860A: MemLdRfVar from_stack_1.global_60
  loc_C1860D: LdPrVar
  loc_C1860F: LateMemCall
  loc_C18615: LitVarStr var_94, " font-weight: bold;"
  loc_C1861A: PopAdLdVar
  loc_C1861B: FLdPr Me
  loc_C1861E: MemLdRfVar from_stack_1.global_60
  loc_C18621: LdPrVar
  loc_C18623: LateMemCall
  loc_C18629: LitVarStr var_94, " background-color: #DEEFFA;"
  loc_C1862E: PopAdLdVar
  loc_C1862F: FLdPr Me
  loc_C18632: MemLdRfVar from_stack_1.global_60
  loc_C18635: LdPrVar
  loc_C18637: LateMemCall
  loc_C1863D: LitVarStr var_94, "}"
  loc_C18642: PopAdLdVar
  loc_C18643: FLdPr Me
  loc_C18646: MemLdRfVar from_stack_1.global_60
  loc_C18649: LdPrVar
  loc_C1864B: LateMemCall
  loc_C18651: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_C18656: PopAdLdVar
  loc_C18657: FLdPr Me
  loc_C1865A: MemLdRfVar from_stack_1.global_60
  loc_C1865D: LdPrVar
  loc_C1865F: LateMemCall
  loc_C18665: LitVarStr var_94, "</style>"
  loc_C1866A: PopAdLdVar
  loc_C1866B: FLdPr Me
  loc_C1866E: MemLdRfVar from_stack_1.global_60
  loc_C18671: LdPrVar
  loc_C18673: LateMemCall
  loc_C18679: LitI4 0
  loc_C1867E: FStStrCopy var_AC
  loc_C18681: FLdRfVar var_AC
  loc_C18684: LitI4 0
  loc_C18689: FStStrCopy var_A8
  loc_C1868C: FLdRfVar var_A8
  loc_C1868F: LitI2_Byte 0
  loc_C18691: PopTmpLdAd2 var_BE
  loc_C18694: FLdPr Me
  loc_C18697: MemLdRfVar from_stack_1.global_60
  loc_C1869A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C1869F: FFreeStr var_A8 = ""
  loc_C186A6: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C186AB: PopAdLdVar
  loc_C186AC: FLdPr Me
  loc_C186AF: MemLdRfVar from_stack_1.global_60
  loc_C186B2: LdPrVar
  loc_C186B4: LateMemCall
  loc_C186BA: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_C186BF: PopAdLdVar
  loc_C186C0: FLdPr Me
  loc_C186C3: MemLdRfVar from_stack_1.global_60
  loc_C186C6: LdPrVar
  loc_C186C8: LateMemCall
  loc_C186CE: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p> "
  loc_C186D3: PopAdLdVar
  loc_C186D4: FLdPr Me
  loc_C186D7: MemLdRfVar from_stack_1.global_60
  loc_C186DA: LdPrVar
  loc_C186DC: LateMemCall
  loc_C186E2: FLdPr Me
  loc_C186E5: MemLdI2 bLogos
  loc_C186E8: BranchF loc_C18743
  loc_C186EB: LitStr "  <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C186EE: LitI2_Byte &H5F
  loc_C186F0: CStrUI1
  loc_C186F2: FStStrNoPop var_A8
  loc_C186F5: ConcatStr
  loc_C186F6: FStStrNoPop var_AC
  loc_C186F9: LitStr """ height="""
  loc_C186FC: ConcatStr
  loc_C186FD: FStStrNoPop var_C4
  loc_C18700: LitI2_Byte &H3C
  loc_C18702: CStrUI1
  loc_C18704: FStStrNoPop var_C8
  loc_C18707: ConcatStr
  loc_C18708: FStStrNoPop var_CC
  loc_C1870B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C1870E: ConcatStr
  loc_C1870F: FStStrNoPop var_D0
  loc_C18712: LitStr "Municipalidad de Guaymallén"
  loc_C18715: ConcatStr
  loc_C18716: FStStrNoPop var_D4
  loc_C18719: LitStr "</p>"
  loc_C1871C: ConcatStr
  loc_C1871D: CVarStr var_BC
  loc_C18720: PopAdLdVar
  loc_C18721: FLdPr Me
  loc_C18724: MemLdRfVar from_stack_1.global_60
  loc_C18727: LdPrVar
  loc_C18729: LateMemCall
  loc_C1872F: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_C18740: FFree1Var var_BC = ""
  loc_C18743: LitStr "    <p>"
  loc_C18746: FLdRfVar var_A8
  loc_C18749: FLdPr Me
  loc_C1874C:  = Me.Caption
  loc_C18751: ILdRf var_A8
  loc_C18754: ConcatStr
  loc_C18755: FStStrNoPop var_AC
  loc_C18758: LitStr "</p></th>"
  loc_C1875B: ConcatStr
  loc_C1875C: CVarStr var_BC
  loc_C1875F: PopAdLdVar
  loc_C18760: FLdPr Me
  loc_C18763: MemLdRfVar from_stack_1.global_60
  loc_C18766: LdPrVar
  loc_C18768: LateMemCall
  loc_C1876E: FFreeStr var_A8 = ""
  loc_C18775: FFree1Var var_BC = ""
  loc_C18778: LitVarStr var_94, "  </tr>"
  loc_C1877D: PopAdLdVar
  loc_C1877E: FLdPr Me
  loc_C18781: MemLdRfVar from_stack_1.global_60
  loc_C18784: LdPrVar
  loc_C18786: LateMemCall
  loc_C1878C: LitVarStr var_94, "  <tr>"
  loc_C18791: PopAdLdVar
  loc_C18792: FLdPr Me
  loc_C18795: MemLdRfVar from_stack_1.global_60
  loc_C18798: LdPrVar
  loc_C1879A: LateMemCall
  loc_C187A0: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_C187A5: PopAdLdVar
  loc_C187A6: FLdPr Me
  loc_C187A9: MemLdRfVar from_stack_1.global_60
  loc_C187AC: LdPrVar
  loc_C187AE: LateMemCall
  loc_C187B4: LitVarStr var_94, "  </tr>"
  loc_C187B9: PopAdLdVar
  loc_C187BA: FLdPr Me
  loc_C187BD: MemLdRfVar from_stack_1.global_60
  loc_C187C0: LdPrVar
  loc_C187C2: LateMemCall
  loc_C187C8: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_C187CD: PopAdLdVar
  loc_C187CE: FLdPr Me
  loc_C187D1: MemLdRfVar from_stack_1.global_60
  loc_C187D4: LdPrVar
  loc_C187D6: LateMemCall
  loc_C187DC: LitStr "    <td align=""left""><strong>Oficina: </strong>"
  loc_C187DF: FLdRfVar var_A8
  loc_C187E2: FLdPr Me
  loc_C187E5: VCallAd Control_ID_CodiOficCbo
  loc_C187E8: FStAdFunc var_D8
  loc_C187EB: FLdPr var_D8
  loc_C187EE:  = Me.Text
  loc_C187F3: ILdRf var_A8
  loc_C187F6: ConcatStr
  loc_C187F7: CVarStr var_BC
  loc_C187FA: PopAdLdVar
  loc_C187FB: FLdPr Me
  loc_C187FE: MemLdRfVar from_stack_1.global_60
  loc_C18801: LdPrVar
  loc_C18803: LateMemCall
  loc_C18809: FFree1Str var_A8
  loc_C1880C: FFree1Ad var_D8
  loc_C1880F: FFree1Var var_BC = ""
  loc_C18812: FLdRfVar var_A8
  loc_C18815: FLdPr Me
  loc_C18818: VCallAd Control_ID_ImporteTxt
  loc_C1881B: FStAdFunc var_D8
  loc_C1881E: FLdPr var_D8
  loc_C18821:  = Me.Text
  loc_C18826: ILdRf var_A8
  loc_C18829: CR8Str
  loc_C1882B: LitI2_Byte 0
  loc_C1882D: CR8I2
  loc_C1882E: GtR4
  loc_C1882F: FFree1Str var_A8
  loc_C18832: FFree1Ad var_D8
  loc_C18835: BranchF loc_C1886E
  loc_C18838: LitStr "     <br><strong>Desde Importe: </strong>"
  loc_C1883B: FLdRfVar var_A8
  loc_C1883E: FLdPr Me
  loc_C18841: VCallAd Control_ID_ImporteTxt
  loc_C18844: FStAdFunc var_D8
  loc_C18847: FLdPr var_D8
  loc_C1884A:  = Me.Text
  loc_C1884F: ILdRf var_A8
  loc_C18852: ConcatStr
  loc_C18853: CVarStr var_BC
  loc_C18856: PopAdLdVar
  loc_C18857: FLdPr Me
  loc_C1885A: MemLdRfVar from_stack_1.global_60
  loc_C1885D: LdPrVar
  loc_C1885F: LateMemCall
  loc_C18865: FFree1Str var_A8
  loc_C18868: FFree1Ad var_D8
  loc_C1886B: FFree1Var var_BC = ""
  loc_C1886E: LitVarStr var_94, "    </td>"
  loc_C18873: PopAdLdVar
  loc_C18874: FLdPr Me
  loc_C18877: MemLdRfVar from_stack_1.global_60
  loc_C1887A: LdPrVar
  loc_C1887C: LateMemCall
  loc_C18882: LitVarStr var_94, "    <td align=""center"">"
  loc_C18887: PopAdLdVar
  loc_C18888: FLdPr Me
  loc_C1888B: MemLdRfVar from_stack_1.global_60
  loc_C1888E: LdPrVar
  loc_C18890: LateMemCall
  loc_C18896: FLdRfVar var_BE
  loc_C18899: FLdPr Me
  loc_C1889C: VCallAd Control_ID_CodiFapaOpt
  loc_C1889F: FStAdFunc var_D8
  loc_C188A2: FLdPr var_D8
  loc_C188A5:  = Me.Value
  loc_C188AA: FLdI2 var_BE
  loc_C188AD: CI4UI1
  loc_C188AE: LitI4 1
  loc_C188B3: EqI4
  loc_C188B4: FFree1Ad var_D8
  loc_C188B7: BranchF loc_C188CE
  loc_C188BA: LitVarStr var_94, "      <strong>Sin Facilidad</strong><br>"
  loc_C188BF: PopAdLdVar
  loc_C188C0: FLdPr Me
  loc_C188C3: MemLdRfVar from_stack_1.global_60
  loc_C188C6: LdPrVar
  loc_C188C8: LateMemCall
  loc_C188CE: FLdRfVar var_BE
  loc_C188D1: FLdPr Me
  loc_C188D4: VCallAd Control_ID_NumeApreOpt
  loc_C188D7: FStAdFunc var_D8
  loc_C188DA: FLdPr var_D8
  loc_C188DD:  = Me.Value
  loc_C188E2: FLdI2 var_BE
  loc_C188E5: CI4UI1
  loc_C188E6: LitI4 1
  loc_C188EB: EqI4
  loc_C188EC: FFree1Ad var_D8
  loc_C188EF: BranchF loc_C18906
  loc_C188F2: LitVarStr var_94, "      <strong>Sin Apremio</strong>"
  loc_C188F7: PopAdLdVar
  loc_C188F8: FLdPr Me
  loc_C188FB: MemLdRfVar from_stack_1.global_60
  loc_C188FE: LdPrVar
  loc_C18900: LateMemCall
  loc_C18906: LitVarStr var_94, "    &nbsp;</td>"
  loc_C1890B: PopAdLdVar
  loc_C1890C: FLdPr Me
  loc_C1890F: MemLdRfVar from_stack_1.global_60
  loc_C18912: LdPrVar
  loc_C18914: LateMemCall
  loc_C1891A: LitStr "    <td align=""right""><strong>Desde: </strong>"
  loc_C1891D: FLdPr Me
  loc_C18920: VCallAd Control_ID_PeriCtctDesdeMsk
  loc_C18923: FStAdFunc var_D8
  loc_C18926: FLdPr var_D8
  loc_C18929: LateIdLdVar var_BC DispID_22 0
  loc_C18930: CStrVarTmp
  loc_C18931: FStStrNoPop var_A8
  loc_C18934: ConcatStr
  loc_C18935: FStStrNoPop var_AC
  loc_C18938: LitStr "<br>"
  loc_C1893B: ConcatStr
  loc_C1893C: CVarStr var_E8
  loc_C1893F: PopAdLdVar
  loc_C18940: FLdPr Me
  loc_C18943: MemLdRfVar from_stack_1.global_60
  loc_C18946: LdPrVar
  loc_C18948: LateMemCall
  loc_C1894E: FFreeStr var_A8 = ""
  loc_C18955: FFree1Ad var_D8
  loc_C18958: FFreeVar var_BC = ""
  loc_C1895F: LitStr "                        <strong>Hasta: </strong>"
  loc_C18962: FLdPr Me
  loc_C18965: VCallAd Control_ID_PeriCtctHastaMsk
  loc_C18968: FStAdFunc var_D8
  loc_C1896B: FLdPr var_D8
  loc_C1896E: LateIdLdVar var_BC DispID_22 0
  loc_C18975: CStrVarTmp
  loc_C18976: FStStrNoPop var_A8
  loc_C18979: ConcatStr
  loc_C1897A: FStStrNoPop var_AC
  loc_C1897D: LitStr "</td>"
  loc_C18980: ConcatStr
  loc_C18981: CVarStr var_E8
  loc_C18984: PopAdLdVar
  loc_C18985: FLdPr Me
  loc_C18988: MemLdRfVar from_stack_1.global_60
  loc_C1898B: LdPrVar
  loc_C1898D: LateMemCall
  loc_C18993: FFreeStr var_A8 = ""
  loc_C1899A: FFree1Ad var_D8
  loc_C1899D: FFreeVar var_BC = ""
  loc_C189A4: LitVarStr var_94, "  </tr>"
  loc_C189A9: PopAdLdVar
  loc_C189AA: FLdPr Me
  loc_C189AD: MemLdRfVar from_stack_1.global_60
  loc_C189B0: LdPrVar
  loc_C189B2: LateMemCall
  loc_C189B8: FLdPr Me
  loc_C189BB: VCallAd Control_ID_CodiLocaMsk
  loc_C189BE: FStAdFunc var_D8
  loc_C189C1: FLdPr var_D8
  loc_C189C4: LateIdLdVar var_BC DispID_22 0
  loc_C189CB: CStrVarTmp
  loc_C189CC: FStStrNoPop var_A8
  loc_C189CF: LitStr "0"
  loc_C189D2: NeStr
  loc_C189D4: FFree1Str var_A8
  loc_C189D7: FFree1Ad var_D8
  loc_C189DA: FFree1Var var_BC = ""
  loc_C189DD: BranchF loc_C18A49
  loc_C189E0: LitVarStr var_94, "  <tr>"
  loc_C189E5: PopAdLdVar
  loc_C189E6: FLdPr Me
  loc_C189E9: MemLdRfVar from_stack_1.global_60
  loc_C189EC: LdPrVar
  loc_C189EE: LateMemCall
  loc_C189F4: LitStr "    <td align=""left""><strong>Localidad: </strong>"
  loc_C189F7: FLdRfVar var_A8
  loc_C189FA: FLdPr Me
  loc_C189FD: VCallAd Control_ID_DetaLocaLbl
  loc_C18A00: FStAdFunc var_D8
  loc_C18A03: FLdPr var_D8
  loc_C18A06:  = Me.Caption
  loc_C18A0B: ILdRf var_A8
  loc_C18A0E: ConcatStr
  loc_C18A0F: FStStrNoPop var_AC
  loc_C18A12: LitStr "</td>"
  loc_C18A15: ConcatStr
  loc_C18A16: CVarStr var_BC
  loc_C18A19: PopAdLdVar
  loc_C18A1A: FLdPr Me
  loc_C18A1D: MemLdRfVar from_stack_1.global_60
  loc_C18A20: LdPrVar
  loc_C18A22: LateMemCall
  loc_C18A28: FFreeStr var_A8 = ""
  loc_C18A2F: FFree1Ad var_D8
  loc_C18A32: FFree1Var var_BC = ""
  loc_C18A35: LitVarStr var_94, "  </tr>"
  loc_C18A3A: PopAdLdVar
  loc_C18A3B: FLdPr Me
  loc_C18A3E: MemLdRfVar from_stack_1.global_60
  loc_C18A41: LdPrVar
  loc_C18A43: LateMemCall
  loc_C18A49: LitVarStr var_94, "  <tr>"
  loc_C18A4E: PopAdLdVar
  loc_C18A4F: FLdPr Me
  loc_C18A52: MemLdRfVar from_stack_1.global_60
  loc_C18A55: LdPrVar
  loc_C18A57: LateMemCall
  loc_C18A5D: LitStr "    <td colspan=""3"" align=""left""><strong>Cuenta Contable: </strong>"
  loc_C18A60: FLdPr Me
  loc_C18A63: VCallAd Control_ID_ActiConcMsk
  loc_C18A66: FStAdFunc var_D8
  loc_C18A69: FLdPr var_D8
  loc_C18A6C: LateIdLdVar var_BC DispID_22 0
  loc_C18A73: CStrVarTmp
  loc_C18A74: FStStrNoPop var_A8
  loc_C18A77: ConcatStr
  loc_C18A78: FStStrNoPop var_AC
  loc_C18A7B: LitStr " - "
  loc_C18A7E: ConcatStr
  loc_C18A7F: FStStrNoPop var_C8
  loc_C18A82: FLdRfVar var_C4
  loc_C18A85: FLdPr Me
  loc_C18A88: VCallAd Control_ID_DetaActiLbl
  loc_C18A8B: FStAdFunc var_EC
  loc_C18A8E: FLdPr var_EC
  loc_C18A91:  = Me.Caption
  loc_C18A96: ILdRf var_C4
  loc_C18A99: ConcatStr
  loc_C18A9A: FStStrNoPop var_CC
  loc_C18A9D: LitStr "</td>"
  loc_C18AA0: ConcatStr
  loc_C18AA1: CVarStr var_E8
  loc_C18AA4: PopAdLdVar
  loc_C18AA5: FLdPr Me
  loc_C18AA8: MemLdRfVar from_stack_1.global_60
  loc_C18AAB: LdPrVar
  loc_C18AAD: LateMemCall
  loc_C18AB3: FFreeStr var_A8 = "": var_AC = "": var_C8 = "": var_C4 = ""
  loc_C18AC0: FFreeAd var_D8 = ""
  loc_C18AC7: FFreeVar var_BC = ""
  loc_C18ACE: LitVarStr var_94, "  </tr>"
  loc_C18AD3: PopAdLdVar
  loc_C18AD4: FLdPr Me
  loc_C18AD7: MemLdRfVar from_stack_1.global_60
  loc_C18ADA: LdPrVar
  loc_C18ADC: LateMemCall
  loc_C18AE2: LitVarStr var_94, "</table>"
  loc_C18AE7: PopAdLdVar
  loc_C18AE8: FLdPr Me
  loc_C18AEB: MemLdRfVar from_stack_1.global_60
  loc_C18AEE: LdPrVar
  loc_C18AF0: LateMemCall
  loc_C18AF6: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C18AFB: PopAdLdVar
  loc_C18AFC: FLdPr Me
  loc_C18AFF: MemLdRfVar from_stack_1.global_60
  loc_C18B02: LdPrVar
  loc_C18B04: LateMemCall
  loc_C18B0A: LitVarStr var_94, "  <thead>"
  loc_C18B0F: PopAdLdVar
  loc_C18B10: FLdPr Me
  loc_C18B13: MemLdRfVar from_stack_1.global_60
  loc_C18B16: LdPrVar
  loc_C18B18: LateMemCall
  loc_C18B1E: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_C18B23: PopAdLdVar
  loc_C18B24: FLdPr Me
  loc_C18B27: MemLdRfVar from_stack_1.global_60
  loc_C18B2A: LdPrVar
  loc_C18B2C: LateMemCall
  loc_C18B32: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_C18B37: PopAdLdVar
  loc_C18B38: FLdPr Me
  loc_C18B3B: MemLdRfVar from_stack_1.global_60
  loc_C18B3E: LdPrVar
  loc_C18B40: LateMemCall
  loc_C18B46: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_C18B4B: PopAdLdVar
  loc_C18B4C: FLdPr Me
  loc_C18B4F: MemLdRfVar from_stack_1.global_60
  loc_C18B52: LdPrVar
  loc_C18B54: LateMemCall
  loc_C18B5A: FLdRfVar var_F0
  loc_C18B5D: FLdRfVar var_BE
  loc_C18B60: FLdPr Me
  loc_C18B63: VCallAd Control_ID_CodiOficCbo
  loc_C18B66: FStAdFunc var_D8
  loc_C18B69: FLdPr var_D8
  loc_C18B6C:  = Me.ListIndex
  loc_C18B71: FLdI2 var_BE
  loc_C18B74: FLdPr Me
  loc_C18B77: VCallAd Control_ID_CodiOficCbo
  loc_C18B7A: FStAdFunc var_EC
  loc_C18B7D: FLdPr var_EC
  loc_C18B80:  = Me.ItemData
  loc_C18B85: ILdRf var_F0
  loc_C18B88: LitI4 1
  loc_C18B8D: EqI4
  loc_C18B8E: FFreeAd var_D8 = ""
  loc_C18B95: BranchF loc_C18BAC
  loc_C18B98: LitVarStr var_94, "    <th>Nomenclatura</th>"
  loc_C18B9D: PopAdLdVar
  loc_C18B9E: FLdPr Me
  loc_C18BA1: MemLdRfVar from_stack_1.global_60
  loc_C18BA4: LdPrVar
  loc_C18BA6: LateMemCall
  loc_C18BAC: LitVarStr var_94, "    <th>Cod. Calle</th>"
  loc_C18BB1: PopAdLdVar
  loc_C18BB2: FLdPr Me
  loc_C18BB5: MemLdRfVar from_stack_1.global_60
  loc_C18BB8: LdPrVar
  loc_C18BBA: LateMemCall
  loc_C18BC0: LitVarStr var_94, "    <th>Detalle de Calle</th>"
  loc_C18BC5: PopAdLdVar
  loc_C18BC6: FLdPr Me
  loc_C18BC9: MemLdRfVar from_stack_1.global_60
  loc_C18BCC: LdPrVar
  loc_C18BCE: LateMemCall
  loc_C18BD4: LitVarStr var_94, "    <th>Periodo</th>"
  loc_C18BD9: PopAdLdVar
  loc_C18BDA: FLdPr Me
  loc_C18BDD: MemLdRfVar from_stack_1.global_60
  loc_C18BE0: LdPrVar
  loc_C18BE2: LateMemCall
  loc_C18BE8: FLdRfVar var_BE
  loc_C18BEB: FLdPr Me
  loc_C18BEE: VCallAd Control_ID_PeriodoOpt
  loc_C18BF1: FStAdFunc var_D8
  loc_C18BF4: FLdPr var_D8
  loc_C18BF7:  = Me.Value
  loc_C18BFC: FLdI2 var_BE
  loc_C18BFF: CI4UI1
  loc_C18C00: LitI4 0
  loc_C18C05: EqI4
  loc_C18C06: FFree1Ad var_D8
  loc_C18C09: BranchF loc_C18C20
  loc_C18C0C: LitVarStr var_94, "    <th>Bimestre</th>"
  loc_C18C11: PopAdLdVar
  loc_C18C12: FLdPr Me
  loc_C18C15: MemLdRfVar from_stack_1.global_60
  loc_C18C18: LdPrVar
  loc_C18C1A: LateMemCall
  loc_C18C20: LitVarStr var_94, "    <th>Saldo</th>"
  loc_C18C25: PopAdLdVar
  loc_C18C26: FLdPr Me
  loc_C18C29: MemLdRfVar from_stack_1.global_60
  loc_C18C2C: LdPrVar
  loc_C18C2E: LateMemCall
  loc_C18C34: LitVarStr var_94, "    <th>Concepto</th>"
  loc_C18C39: PopAdLdVar
  loc_C18C3A: FLdPr Me
  loc_C18C3D: MemLdRfVar from_stack_1.global_60
  loc_C18C40: LdPrVar
  loc_C18C42: LateMemCall
  loc_C18C48: LitVarStr var_94, "  </tr>"
  loc_C18C4D: PopAdLdVar
  loc_C18C4E: FLdPr Me
  loc_C18C51: MemLdRfVar from_stack_1.global_60
  loc_C18C54: LdPrVar
  loc_C18C56: LateMemCall
  loc_C18C5C: LitVarStr var_94, "  </thead>"
  loc_C18C61: PopAdLdVar
  loc_C18C62: FLdPr Me
  loc_C18C65: MemLdRfVar from_stack_1.global_60
  loc_C18C68: LdPrVar
  loc_C18C6A: LateMemCall
  loc_C18C70: ExitProcHresult
  loc_C18C71: StAryRecCopy
End Function

Private Function Proc_161_36_A0AF48() 'A0AF48
  'Data Table: 4ED718
  loc_A0AF08: LitVarStr var_94, "</table>"
  loc_A0AF0D: PopAdLdVar
  loc_A0AF0E: FLdPr Me
  loc_A0AF11: MemLdRfVar from_stack_1.global_60
  loc_A0AF14: LdPrVar
  loc_A0AF16: LateMemCall
  loc_A0AF1C: LitVarStr var_94, "</body>"
  loc_A0AF21: PopAdLdVar
  loc_A0AF22: FLdPr Me
  loc_A0AF25: MemLdRfVar from_stack_1.global_60
  loc_A0AF28: LdPrVar
  loc_A0AF2A: LateMemCall
  loc_A0AF30: LitVarStr var_94, "</html>"
  loc_A0AF35: PopAdLdVar
  loc_A0AF36: FLdPr Me
  loc_A0AF39: MemLdRfVar from_stack_1.global_60
  loc_A0AF3C: LdPrVar
  loc_A0AF3E: LateMemCall
  loc_A0AF44: ExitProcHresult
  loc_A0AF45: FStAdFunc var_88
End Function
