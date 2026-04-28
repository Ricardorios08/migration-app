VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptEstadisticadeFacilidaddePago
  Caption = "Estadistica de Facilidad de Pagos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptEstadisticadeFacilidaddePago.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10560
  ClientHeight = 7332
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 7080
    Width = 10560
    Height = 255
    TabIndex = 33
    OleObjectBlob = "rptEstadisticadeFacilidaddePago.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8400
    Top = 5640
    Width = 855
    Height = 735
    TabIndex = 31
    Cancel = -1  'True
    Picture = "rptEstadisticadeFacilidaddePago.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptEstadisticadeFacilidaddePago.frx":0B9C
    Left = 9360
    Top = 5760
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 5520
    Width = 3375
    Height = 1215
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
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 30
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
      TabIndex = 29
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
    Top = 5520
    Width = 4095
    Height = 1215
    TabIndex = 25
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
      TabIndex = 27
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
      TabIndex = 26
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
    Width = 10215
    Height = 5535
    TabIndex = 0
    Begin VB.Frame Frame4
      Caption = "Ordenado según:"
      Left = 6720
      Top = 2280
      Width = 3135
      Height = 1215
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
      Begin VB.OptionButton CuentaOpt
        Caption = "Código"
        Left = 600
        Top = 360
        Width = 2295
        Height = 375
        TabIndex = 15
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
      Begin VB.OptionButton NombreOpt
        Caption = "Apellido y Nombre"
        Left = 600
        Top = 720
        Width = 2295
        Height = 375
        TabIndex = 16
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
    Begin VB.CheckBox AtrasadosChk
      Caption = "Atrasados"
      Left = 2640
      Top = 3840
      Width = 1455
      Height = 375
      TabIndex = 20
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
    Begin VB.CheckBox AldiaChk
      Caption = "Al día"
      Left = 2640
      Top = 3480
      Width = 975
      Height = 375
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
    End
    Begin VB.CheckBox PagadosChk
      Caption = "Pagados"
      Left = 2640
      Top = 3120
      Width = 1455
      Height = 375
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
    Begin VB.CheckBox ActivosChk
      Caption = "Activos"
      Left = 2640
      Top = 2400
      Width = 1095
      Height = 375
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
    Begin VB.CheckBox AnuladosChk
      Caption = "Anulados"
      Left = 2640
      Top = 2760
      Width = 1455
      Height = 375
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8040
      Top = 360
      Width = 1575
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
    Begin MSMask.MaskEdBox CantCuotasMsk
      Left = 5400
      Top = 4920
      Width = 495
      Height = 360
      TabIndex = 23
      OleObjectBlob = "rptEstadisticadeFacilidaddePago.frx":0C00
      DataField = "CodiTise"
    End
    Begin MSMask.MaskEdBox DesdeMsk
      Left = 2640
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 2
      OleObjectBlob = "rptEstadisticadeFacilidaddePago.frx":0C8C
    End
    Begin MSMask.MaskEdBox HastaMsk
      Left = 2640
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "rptEstadisticadeFacilidaddePago.frx":0D3C
    End
    Begin MSMask.MaskEdBox CantDiasMsk
      Left = 5400
      Top = 4440
      Width = 615
      Height = 360
      TabIndex = 22
      OleObjectBlob = "rptEstadisticadeFacilidaddePago.frx":0DEC
      DataField = "CodiTise"
    End
    Begin MSMask.MaskEdBox CodiOficMsk
      Left = 2640
      Top = 1320
      Width = 375
      Height = 360
      TabIndex = 7
      OleObjectBlob = "rptEstadisticadeFacilidaddePago.frx":0E7A
      DataField = "CodiTise"
    End
    Begin MSMask.MaskEdBox CodiTifaMsk
      Left = 2640
      Top = 1800
      Width = 375
      Height = 360
      TabIndex = 10
      OleObjectBlob = "rptEstadisticadeFacilidaddePago.frx":0F04
      DataField = "CodiTise"
    End
    Begin VB.Label DetaTifaLbl
      ForeColor = &HFF0000&
      Left = 3120
      Top = 1800
      Width = 5295
      Height = 360
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
    Begin VB.Label Label3
      Caption = "Tipo de Facilidad:"
      Left = 720
      Top = 1800
      Width = 1845
      Height = 300
      TabIndex = 9
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
    Begin VB.Label DetaOficLbl
      ForeColor = &HFF0000&
      Left = 3120
      Top = 1320
      Width = 5295
      Height = 360
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
    Begin VB.Label Label2
      Caption = "Oficina:"
      Left = 1800
      Top = 1320
      Width = 795
      Height = 300
      TabIndex = 6
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
    Begin VB.Label Label1
      Caption = "Cantidad de días vencidas:"
      Left = 2400
      Top = 4440
      Width = 2895
      Height = 375
      TabIndex = 21
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
    Begin VB.Label ExcluyelasAnuladasLbl
      Caption = "(Excluye las anuladas y Caídas)"
      Left = 4200
      Top = 3600
      Width = 3315
      Height = 300
      TabIndex = 19
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
    Begin VB.Label Label6
      Caption = "Desde Fecha de Alta:"
      Left = 240
      Top = 360
      Width = 2310
      Height = 300
      TabIndex = 1
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
      Caption = "Hasta Fecha de Alta:"
      Left = 300
      Top = 885
      Width = 2250
      Height = 300
      TabIndex = 4
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
    Begin VB.Label CantidaddeCuotasLbl
      Caption = "Cantidad de Cuotas:"
      Left = 3120
      Top = 4920
      Width = 2295
      Height = 375
      TabIndex = 24
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
    Left = 8640
    Top = 6000
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 32
    OleObjectBlob = "rptEstadisticadeFacilidaddePago.frx":0F90
  End
End

Attribute VB_Name = "rptEstadisticadeFacilidaddePago"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00563A6C
  bStruc(68) As Byte ' String fields: 17
End Type

Private Type UDT_2_00563AC0
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_3_00560FDC
  bStruc(8) As Byte ' String fields: 2
End Type


Private Sub cmdSalir_Click() 'A011E0
  'Data Table: 4FBF24
  loc_A011B0: LitVarStr var_94, "Cerrando..."
  loc_A011B5: PopAdLdVar
  loc_A011B6: FLdPr Me
  loc_A011B9: VCallAd Control_ID_statusBar
  loc_A011BC: FStAdFunc var_A8
  loc_A011BF: FLdPr var_A8
  loc_A011C2: LateIdSt
  loc_A011C7: FFree1Ad var_A8
  loc_A011CA: ILdRf Me
  loc_A011CD: FStAdNoPop
  loc_A011D1: ImpAdLdRf MemVar_D9C5D8
  loc_A011D4: NewIfNullPr Global
  loc_A011D7: Global.Unload from_stack_1
  loc_A011DC: FFree1Ad var_A8
  loc_A011DF: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DE39C
  'Data Table: 4FBF24
  loc_9DE380: LitI2_Byte 0
  loc_9DE382: PopTmpLdAd2 var_8A
  loc_9DE385: ILdRf Me
  loc_9DE388: CastAd
  loc_9DE38B: FStAdFunc var_88
  loc_9DE38E: FLdRfVar var_88
  loc_9DE391: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE396: FFree1Ad var_88
  loc_9DE399: ExitProcHresult
  loc_9DE39A: FLdFPR8 var_5398
End Sub

Private Sub CantDiasMsk_UnknownEvent_0 '9BFE58
  'Data Table: 4FBF24
  loc_9BFE44: FLdPr Me
  loc_9BFE47: VCallAd Control_ID_CantDiasMsk
  loc_9BFE4A: CVarAd
  loc_9BFE4E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFE53: FFree1Var var_94 = ""
  loc_9BFE56: ExitProcHresult
End Sub

Private Function CantDiasMsk_UnknownEvent_8(arg_C) 'A724E4
  'Data Table: 4FBF24
  loc_A7247C: FLdPr Me
  loc_A7247F: VCallAd Control_ID_CantDiasMsk
  loc_A72482: FStAdFunc var_88
  loc_A72485: FLdPr var_88
  loc_A72488: LateIdLdVar var_98 DispID_22 0
  loc_A7248F: PopAd
  loc_A72491: LitI2_Byte &HFF
  loc_A72493: LitI2_Byte 0
  loc_A72495: FLdRfVar var_98
  loc_A72498: CStrVarTmp
  loc_A72499: FStStrNoPop var_9C
  loc_A7249C: LitStr "Cantidad de Días"
  loc_A7249F: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A724A4: FStStrNoPop var_A0
  loc_A724A7: FLdPr Me
  loc_A724AA: MemStStrCopy
  loc_A724AE: FFreeStr var_9C = ""
  loc_A724B5: FFree1Ad var_88
  loc_A724B8: FFree1Var var_98 = ""
  loc_A724BB: FLdPr Me
  loc_A724BE: VCallAd Control_ID_CantCuotasMsk
  loc_A724C1: FStAdFuncNoPop
  loc_A724C4: CastAd
  loc_A724C7: FStAdFunc var_A4
  loc_A724CA: FLdRfVar var_A4
  loc_A724CD: FLdPr Me
  loc_A724D0: MemLdStr global_108
  loc_A724D3: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A724D8: IStI2 arg_C
  loc_A724DB: FFreeAd var_88 = ""
  loc_A724E2: ExitProcHresult
End Function

Private Sub CodiTifaMsk_UnknownEvent_0 '9BFEE8
  'Data Table: 4FBF24
  loc_9BFED4: FLdPr Me
  loc_9BFED7: VCallAd Control_ID_CodiTifaMsk
  loc_9BFEDA: CVarAd
  loc_9BFEDE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFEE3: FFree1Var var_94 = ""
  loc_9BFEE6: ExitProcHresult
End Sub

Private Sub CodiTifaMsk_UnknownEvent_8 'A95778
  'Data Table: 4FBF24
  loc_A956D0: FLdPr Me
  loc_A956D3: VCallAd Control_ID_CodiTifaMsk
  loc_A956D6: FStAdFunc var_88
  loc_A956D9: FLdPr var_88
  loc_A956DC: LateIdLdVar var_98 DispID_13 -32767
  loc_A956E3: CBoolVar
  loc_A956E5: FFree1Ad var_88
  loc_A956E8: FFree1Var var_98 = ""
  loc_A956EB: BranchF loc_A95774
  loc_A956EE: FLdPr Me
  loc_A956F1: VCallAd Control_ID_CodiTifaMsk
  loc_A956F4: FStAdFunc var_88
  loc_A956F7: FLdPr var_88
  loc_A956FA: LateIdLdVar var_98 DispID_22 0
  loc_A95701: CStrVarTmp
  loc_A95702: FStStrNoPop var_9C
  loc_A95705: CR8Str
  loc_A95707: LitI2_Byte 0
  loc_A95709: CR8I2
  loc_A9570A: NeR8
  loc_A9570B: FFree1Str var_9C
  loc_A9570E: FFree1Ad var_88
  loc_A95711: FFree1Var var_98 = ""
  loc_A95714: BranchF loc_A9575D
  loc_A95717: FLdPr Me
  loc_A9571A: VCallAd Control_ID_CodiTifaMsk
  loc_A9571D: FStAdFunc var_88
  loc_A95720: FLdPr var_88
  loc_A95723: LateIdLdVar var_98 DispID_22 0
  loc_A9572A: CStrVarTmp
  loc_A9572B: FStStrNoPop var_9C
  loc_A9572E: CI2Str
  loc_A95730: ImpAdCallI2 Proc_270_32_A7ADF0()
  loc_A95735: FStStrNoPop var_A0
  loc_A95738: FLdPr Me
  loc_A9573B: VCallAd Control_ID_DetaTifaLbl
  loc_A9573E: FStAdFunc var_A4
  loc_A95741: FLdPr var_A4
  loc_A95744: Me.Caption = from_stack_1
  loc_A95749: FFreeStr var_9C = ""
  loc_A95750: FFreeAd var_88 = ""
  loc_A95757: FFree1Var var_98 = ""
  loc_A9575A: Branch loc_A95774
  loc_A9575D: LitStr "TODAS LOS TIPOS DE FACILIDAD"
  loc_A95760: FLdPr Me
  loc_A95763: VCallAd Control_ID_DetaTifaLbl
  loc_A95766: FStAdFunc var_88
  loc_A95769: FLdPr var_88
  loc_A9576C: Me.Caption = from_stack_1
  loc_A95771: FFree1Ad var_88
  loc_A95774: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'ADB6BC
  'Data Table: 4FBF24
  loc_ADB568: LitI2_Byte 0
  loc_ADB56A: FLdPr Me
  loc_ADB56D: MemStI2 bGenerado
  loc_ADB570: LitI2_Byte &HFF
  loc_ADB572: FLdPr Me
  loc_ADB575: MemStI2 bLogos
  loc_ADB578: LitI2_Byte 0
  loc_ADB57A: ILdRf Me
  loc_ADB57D: CastAd
  loc_ADB580: FStAdFunc var_88
  loc_ADB583: FLdRfVar var_88
  loc_ADB586: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_ADB58B: FFree1Ad var_88
  loc_ADB58E: LitI2_Byte 0
  loc_ADB590: CStrUI1
  loc_ADB592: CVarStr var_98
  loc_ADB595: PopAdLdVar
  loc_ADB596: FLdPr Me
  loc_ADB599: VCallAd Control_ID_CodiOficMsk
  loc_ADB59C: FStAdFunc var_88
  loc_ADB59F: FLdPr var_88
  loc_ADB5A2: LateIdSt
  loc_ADB5A7: FFree1Ad var_88
  loc_ADB5AA: FFree1Var var_98 = ""
  loc_ADB5AD: LitI2_Byte 0
  loc_ADB5AF: CStrUI1
  loc_ADB5B1: CVarStr var_98
  loc_ADB5B4: PopAdLdVar
  loc_ADB5B5: FLdPr Me
  loc_ADB5B8: VCallAd Control_ID_CodiTifaMsk
  loc_ADB5BB: FStAdFunc var_88
  loc_ADB5BE: FLdPr var_88
  loc_ADB5C1: LateIdSt
  loc_ADB5C6: FFree1Ad var_88
  loc_ADB5C9: FFree1Var var_98 = ""
  loc_ADB5CC: LitI4 1
  loc_ADB5D1: CI2I4
  loc_ADB5D2: FLdPr Me
  loc_ADB5D5: VCallAd Control_ID_AnuladosChk
  loc_ADB5D8: FStAdFunc var_88
  loc_ADB5DB: FLdPr var_88
  loc_ADB5DE: Me.Value = from_stack_1
  loc_ADB5E3: FFree1Ad var_88
  loc_ADB5E6: LitI4 1
  loc_ADB5EB: CI2I4
  loc_ADB5EC: FLdPr Me
  loc_ADB5EF: VCallAd Control_ID_ActivosChk
  loc_ADB5F2: FStAdFunc var_88
  loc_ADB5F5: FLdPr var_88
  loc_ADB5F8: Me.Value = from_stack_1
  loc_ADB5FD: FFree1Ad var_88
  loc_ADB600: LitI4 1
  loc_ADB605: CI2I4
  loc_ADB606: FLdPr Me
  loc_ADB609: VCallAd Control_ID_PagadosChk
  loc_ADB60C: FStAdFunc var_88
  loc_ADB60F: FLdPr var_88
  loc_ADB612: Me.Value = from_stack_1
  loc_ADB617: FFree1Ad var_88
  loc_ADB61A: LitI4 1
  loc_ADB61F: CI2I4
  loc_ADB620: FLdPr Me
  loc_ADB623: VCallAd Control_ID_AldiaChk
  loc_ADB626: FStAdFunc var_88
  loc_ADB629: FLdPr var_88
  loc_ADB62C: Me.Value = from_stack_1
  loc_ADB631: FFree1Ad var_88
  loc_ADB634: LitI4 1
  loc_ADB639: CI2I4
  loc_ADB63A: FLdPr Me
  loc_ADB63D: VCallAd Control_ID_AtrasadosChk
  loc_ADB640: FStAdFunc var_88
  loc_ADB643: FLdPr var_88
  loc_ADB646: Me.Value = from_stack_1
  loc_ADB64B: FFree1Ad var_88
  loc_ADB64E: LitI2_Byte 0
  loc_ADB650: CStrUI1
  loc_ADB652: CVarStr var_98
  loc_ADB655: PopAdLdVar
  loc_ADB656: FLdPr Me
  loc_ADB659: VCallAd Control_ID_CantCuotasMsk
  loc_ADB65C: FStAdFunc var_88
  loc_ADB65F: FLdPr var_88
  loc_ADB662: LateIdSt
  loc_ADB667: FFree1Ad var_88
  loc_ADB66A: FFree1Var var_98 = ""
  loc_ADB66D: LitI2_Byte 0
  loc_ADB66F: CStrUI1
  loc_ADB671: CVarStr var_98
  loc_ADB674: PopAdLdVar
  loc_ADB675: FLdPr Me
  loc_ADB678: VCallAd Control_ID_CantDiasMsk
  loc_ADB67B: FStAdFunc var_88
  loc_ADB67E: FLdPr var_88
  loc_ADB681: LateIdSt
  loc_ADB686: FFree1Ad var_88
  loc_ADB689: FFree1Var var_98 = ""
  loc_ADB68C: LitI2_Byte &HFF
  loc_ADB68E: FLdPr Me
  loc_ADB691: VCallAd Control_ID_CuentaOpt
  loc_ADB694: FStAdFunc var_88
  loc_ADB697: FLdPr var_88
  loc_ADB69A: Me.Value = from_stack_1b
  loc_ADB69F: FFree1Ad var_88
  loc_ADB6A2: Call HabilitarCriterio()
  loc_ADB6A7: ILdRf Me
  loc_ADB6AA: CastAd
  loc_ADB6AD: FStAdFunc var_88
  loc_ADB6B0: FLdRfVar var_88
  loc_ADB6B3: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_ADB6B8: FFree1Ad var_88
  loc_ADB6BB: ExitProcHresult
End Sub

Private Sub AtrasadosChk_Click() 'AAF674
  'Data Table: 4FBF24
  loc_AAF594: FLdRfVar var_8A
  loc_AAF597: FLdPr Me
  loc_AAF59A: VCallAd Control_ID_AtrasadosChk
  loc_AAF59D: FStAdFunc var_88
  loc_AAF5A0: FLdPr var_88
  loc_AAF5A3:  = Me.Value
  loc_AAF5A8: FLdI2 var_8A
  loc_AAF5AB: LitI2_Byte 1
  loc_AAF5AD: EqI2
  loc_AAF5AE: FFree1Ad var_88
  loc_AAF5B1: BranchF loc_AAF613
  loc_AAF5B4: LitI2_Byte &HFF
  loc_AAF5B6: FLdPr Me
  loc_AAF5B9: VCallAd Control_ID_ExcluyelasAnuladasLbl
  loc_AAF5BC: FStAdFunc var_88
  loc_AAF5BF: FLdPr var_88
  loc_AAF5C2: Me.Visible = from_stack_1b
  loc_AAF5C7: FFree1Ad var_88
  loc_AAF5CA: LitI2_Byte &HFF
  loc_AAF5CC: FLdPr Me
  loc_AAF5CF: VCallAd Control_ID_CantidaddeCuotasLbl
  loc_AAF5D2: FStAdFunc var_88
  loc_AAF5D5: FLdPr var_88
  loc_AAF5D8: Me.Visible = from_stack_1b
  loc_AAF5DD: FFree1Ad var_88
  loc_AAF5E0: LitVar_TRUE var_9C
  loc_AAF5E3: PopAdLdVar
  loc_AAF5E4: FLdPr Me
  loc_AAF5E7: VCallAd Control_ID_CantCuotasMsk
  loc_AAF5EA: FStAdFunc var_88
  loc_AAF5ED: FLdPr var_88
  loc_AAF5F0: LateIdSt
  loc_AAF5F5: FFree1Ad var_88
  loc_AAF5F8: LitVar_TRUE var_9C
  loc_AAF5FB: PopAdLdVar
  loc_AAF5FC: FLdPr Me
  loc_AAF5FF: VCallAd Control_ID_CantDiasMsk
  loc_AAF602: FStAdFunc var_88
  loc_AAF605: FLdPr var_88
  loc_AAF608: LateIdSt
  loc_AAF60D: FFree1Ad var_88
  loc_AAF610: Branch loc_AAF671
  loc_AAF613: LitI2_Byte 0
  loc_AAF615: FLdPr Me
  loc_AAF618: VCallAd Control_ID_ExcluyelasAnuladasLbl
  loc_AAF61B: FStAdFunc var_88
  loc_AAF61E: FLdPr var_88
  loc_AAF621: Me.Visible = from_stack_1b
  loc_AAF626: FFree1Ad var_88
  loc_AAF629: LitI2_Byte 0
  loc_AAF62B: FLdPr Me
  loc_AAF62E: VCallAd Control_ID_CantidaddeCuotasLbl
  loc_AAF631: FStAdFunc var_88
  loc_AAF634: FLdPr var_88
  loc_AAF637: Me.Visible = from_stack_1b
  loc_AAF63C: FFree1Ad var_88
  loc_AAF63F: LitVar_FALSE
  loc_AAF643: PopAdLdVar
  loc_AAF644: FLdPr Me
  loc_AAF647: VCallAd Control_ID_CantCuotasMsk
  loc_AAF64A: FStAdFunc var_88
  loc_AAF64D: FLdPr var_88
  loc_AAF650: LateIdSt
  loc_AAF655: FFree1Ad var_88
  loc_AAF658: LitVar_FALSE
  loc_AAF65C: PopAdLdVar
  loc_AAF65D: FLdPr Me
  loc_AAF660: VCallAd Control_ID_CantDiasMsk
  loc_AAF663: FStAdFunc var_88
  loc_AAF666: FLdPr var_88
  loc_AAF669: LateIdSt
  loc_AAF66E: FFree1Ad var_88
  loc_AAF671: ExitProcHresult
  loc_AAF672: PopTmpLdAd8 var_5301
End Sub

Private Sub cmdPredeterminada_Click() '9D0CAC
  'Data Table: 4FBF24
  loc_9D0C94: LitI2_Byte 0
  loc_9D0C96: ILdRf Me
  loc_9D0C99: CastAd
  loc_9D0C9C: FStAdFunc var_88
  loc_9D0C9F: FLdRfVar var_88
  loc_9D0CA2: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9D0CA7: FFree1Ad var_88
  loc_9D0CAA: ExitProcHresult
End Sub

Private Sub CantCuotasMsk_UnknownEvent_0 '9BFE10
  'Data Table: 4FBF24
  loc_9BFDFC: FLdPr Me
  loc_9BFDFF: VCallAd Control_ID_CantCuotasMsk
  loc_9BFE02: CVarAd
  loc_9BFE06: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFE0B: FFree1Var var_94 = ""
  loc_9BFE0E: ExitProcHresult
End Sub

Private Function CantCuotasMsk_UnknownEvent_8(arg_C) 'A71AD0
  'Data Table: 4FBF24
  loc_A71A68: FLdPr Me
  loc_A71A6B: VCallAd Control_ID_CantCuotasMsk
  loc_A71A6E: FStAdFunc var_88
  loc_A71A71: FLdPr var_88
  loc_A71A74: LateIdLdVar var_98 DispID_22 0
  loc_A71A7B: PopAd
  loc_A71A7D: LitI2_Byte &HFF
  loc_A71A7F: LitI2_Byte 0
  loc_A71A81: FLdRfVar var_98
  loc_A71A84: CStrVarTmp
  loc_A71A85: FStStrNoPop var_9C
  loc_A71A88: LitStr "Cantidad de Cuotas"
  loc_A71A8B: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A71A90: FStStrNoPop var_A0
  loc_A71A93: FLdPr Me
  loc_A71A96: MemStStrCopy
  loc_A71A9A: FFreeStr var_9C = ""
  loc_A71AA1: FFree1Ad var_88
  loc_A71AA4: FFree1Var var_98 = ""
  loc_A71AA7: FLdPr Me
  loc_A71AAA: VCallAd Control_ID_CantCuotasMsk
  loc_A71AAD: FStAdFuncNoPop
  loc_A71AB0: CastAd
  loc_A71AB3: FStAdFunc var_A4
  loc_A71AB6: FLdRfVar var_A4
  loc_A71AB9: FLdPr Me
  loc_A71ABC: MemLdStr global_108
  loc_A71ABF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A71AC4: IStI2 arg_C
  loc_A71AC7: FFreeAd var_88 = ""
  loc_A71ACE: ExitProcHresult
End Function

Private Sub DesdeMsk_UnknownEvent_0 '9BFF30
  'Data Table: 4FBF24
  loc_9BFF1C: FLdPr Me
  loc_9BFF1F: VCallAd Control_ID_DesdeMsk
  loc_9BFF22: CVarAd
  loc_9BFF26: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFF2B: FFree1Var var_94 = ""
  loc_9BFF2E: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A84F44
  'Data Table: 4FBF24
  loc_A84EC0: FLdPr Me
  loc_A84EC3: VCallAd Control_ID_DesdeMsk
  loc_A84EC6: FStAdFunc var_88
  loc_A84EC9: FLdPr var_88
  loc_A84ECC: LateIdLdVar var_98 DispID_15 0
  loc_A84ED3: CStrVarTmp
  loc_A84ED4: CVarStr var_A8
  loc_A84ED7: ImpAdCallI2 IsDate()
  loc_A84EDC: FFree1Ad var_88
  loc_A84EDF: FFreeVar var_98 = ""
  loc_A84EE6: BranchF loc_A84F43
  loc_A84EE9: FLdPr Me
  loc_A84EEC: VCallAd Control_ID_DesdeMsk
  loc_A84EEF: FStAdFunc var_88
  loc_A84EF2: FLdPr var_88
  loc_A84EF5: LateIdLdVar var_98 DispID_15 0
  loc_A84EFC: CStrVarTmp
  loc_A84EFD: FStStrNoPop var_AC
  loc_A84F00: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A84F05: FStStrNoPop var_B0
  loc_A84F08: FLdPr Me
  loc_A84F0B: MemStStrCopy
  loc_A84F0F: FFreeStr var_AC = ""
  loc_A84F16: FFree1Ad var_88
  loc_A84F19: FFree1Var var_98 = ""
  loc_A84F1C: FLdPr Me
  loc_A84F1F: VCallAd Control_ID_DesdeMsk
  loc_A84F22: FStAdFuncNoPop
  loc_A84F25: CastAd
  loc_A84F28: FStAdFunc var_B4
  loc_A84F2B: FLdRfVar var_B4
  loc_A84F2E: FLdPr Me
  loc_A84F31: MemLdStr global_108
  loc_A84F34: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A84F39: IStI2 arg_C
  loc_A84F3C: FFreeAd var_88 = ""
  loc_A84F43: ExitProcHresult
End Function

Private Sub DesdeMsk_KeyPress(KeyAscii As Integer) 'A20E44
  'Data Table: 4FBF24
  loc_A20DFC: ILdI2 KeyAscii
  loc_A20DFF: CI4UI1
  loc_A20E00: LitI4 &H20
  loc_A20E05: EqI4
  loc_A20E06: BranchF loc_A20E43
  loc_A20E09: LitVar_Missing var_A4
  loc_A20E0C: PopAdLdVar
  loc_A20E0D: LitVarI4
  loc_A20E15: PopAdLdVar
  loc_A20E16: ImpAdLdRf MemVar_D930A4
  loc_A20E19: NewIfNullPr frmCalendario
  loc_A20E1C: frmCalendario.Show from_stack_1, from_stack_2
  loc_A20E21: ImpAdLdRf MemVar_D93028
  loc_A20E24: CDargRef
  loc_A20E28: FLdPr Me
  loc_A20E2B: VCallAd Control_ID_DesdeMsk
  loc_A20E2E: FStAdFunc var_A8
  loc_A20E31: FLdPr var_A8
  loc_A20E34: LateIdSt
  loc_A20E39: FFree1Ad var_A8
  loc_A20E3C: LitStr vbNullString
  loc_A20E3F: ImpAdStStrCopy MemVar_D93028
  loc_A20E43: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DE75C
  'Data Table: 4FBF24
  loc_9DE740: LitI2_Byte &HFF
  loc_9DE742: LitI2_Byte 0
  loc_9DE744: ILdRf Me
  loc_9DE747: CastAd
  loc_9DE74A: FStAdFunc var_88
  loc_9DE74D: FLdRfVar var_88
  loc_9DE750: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DE755: FFree1Ad var_88
  loc_9DE758: ExitProcHresult
  loc_9DE759: DOC
End Sub

Private Sub Form_Load() '9DE61C
  'Data Table: 4FBF24
  loc_9DE600: ILdRf Me
  loc_9DE603: CastAd
  loc_9DE606: FStAdFunc var_88
  loc_9DE609: FLdRfVar var_88
  loc_9DE60C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DE611: FFree1Ad var_88
  loc_9DE614: Call cmdNueva_Click()
  loc_9DE619: ExitProcHresult
  loc_9DE61A: FLdRfVar var_53D0
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D0FF0
  'Data Table: 4FBF24
  loc_9D0FD8: FLdPr Me
  loc_9D0FDB: VCallAd Control_ID_wbbReporte
  loc_9D0FDE: FStAdFunc var_88
  loc_9D0FE1: FLdRfVar var_88
  loc_9D0FE4: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D0FE9: FFree1Ad var_88
  loc_9D0FEC: ExitProcHresult
  loc_9D0FED: MemLdPr global_1911
End Sub

Private Sub cmdPrevia_Click() '9C98E4
  'Data Table: 4FBF24
  loc_9C98CC: ILdRf Me
  loc_9C98CF: CastAd
  loc_9C98D2: FStAdFunc var_88
  loc_9C98D5: FLdRfVar var_88
  loc_9C98D8: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9C98DD: FFree1Ad var_88
  loc_9C98E0: ExitProcHresult
  loc_9C98E1: LargeBos
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9BFF78
  'Data Table: 4FBF24
  loc_9BFF64: FLdPr Me
  loc_9BFF67: VCallAd Control_ID_HastaMsk
  loc_9BFF6A: CVarAd
  loc_9BFF6E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFF73: FFree1Var var_94 = ""
  loc_9BFF76: ExitProcHresult
End Sub

Private Function HastaMsk_UnknownEvent_8(arg_C) 'A84DAC
  'Data Table: 4FBF24
  loc_A84D28: FLdPr Me
  loc_A84D2B: VCallAd Control_ID_DesdeMsk
  loc_A84D2E: FStAdFunc var_88
  loc_A84D31: FLdPr var_88
  loc_A84D34: LateIdLdVar var_98 DispID_15 0
  loc_A84D3B: CStrVarTmp
  loc_A84D3C: CVarStr var_A8
  loc_A84D3F: ImpAdCallI2 IsDate()
  loc_A84D44: FFree1Ad var_88
  loc_A84D47: FFreeVar var_98 = ""
  loc_A84D4E: BranchF loc_A84DAB
  loc_A84D51: FLdPr Me
  loc_A84D54: VCallAd Control_ID_DesdeMsk
  loc_A84D57: FStAdFunc var_88
  loc_A84D5A: FLdPr var_88
  loc_A84D5D: LateIdLdVar var_98 DispID_15 0
  loc_A84D64: CStrVarTmp
  loc_A84D65: FStStrNoPop var_AC
  loc_A84D68: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A84D6D: FStStrNoPop var_B0
  loc_A84D70: FLdPr Me
  loc_A84D73: MemStStrCopy
  loc_A84D77: FFreeStr var_AC = ""
  loc_A84D7E: FFree1Ad var_88
  loc_A84D81: FFree1Var var_98 = ""
  loc_A84D84: FLdPr Me
  loc_A84D87: VCallAd Control_ID_DesdeMsk
  loc_A84D8A: FStAdFuncNoPop
  loc_A84D8D: CastAd
  loc_A84D90: FStAdFunc var_B4
  loc_A84D93: FLdRfVar var_B4
  loc_A84D96: FLdPr Me
  loc_A84D99: MemLdStr global_108
  loc_A84D9C: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A84DA1: IStI2 arg_C
  loc_A84DA4: FFreeAd var_88 = ""
  loc_A84DAB: ExitProcHresult
End Function

Private Sub HastaMsk_KeyPress(KeyAscii As Integer) 'A2248C
  'Data Table: 4FBF24
  loc_A22444: ILdI2 KeyAscii
  loc_A22447: CI4UI1
  loc_A22448: LitI4 &H20
  loc_A2244D: EqI4
  loc_A2244E: BranchF loc_A2248B
  loc_A22451: LitVar_Missing var_A4
  loc_A22454: PopAdLdVar
  loc_A22455: LitVarI4
  loc_A2245D: PopAdLdVar
  loc_A2245E: ImpAdLdRf MemVar_D930A4
  loc_A22461: NewIfNullPr frmCalendario
  loc_A22464: frmCalendario.Show from_stack_1, from_stack_2
  loc_A22469: ImpAdLdRf MemVar_D93028
  loc_A2246C: CDargRef
  loc_A22470: FLdPr Me
  loc_A22473: VCallAd Control_ID_HastaMsk
  loc_A22476: FStAdFunc var_A8
  loc_A22479: FLdPr var_A8
  loc_A2247C: LateIdSt
  loc_A22481: FFree1Ad var_A8
  loc_A22484: LitStr vbNullString
  loc_A22487: ImpAdStStrCopy MemVar_D93028
  loc_A2248B: ExitProcHresult
End Sub

Private Sub CodiOficMsk_UnknownEvent_0 '9BFEA0
  'Data Table: 4FBF24
  loc_9BFE8C: FLdPr Me
  loc_9BFE8F: VCallAd Control_ID_CodiOficMsk
  loc_9BFE92: CVarAd
  loc_9BFE96: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BFE9B: FFree1Var var_94 = ""
  loc_9BFE9E: ExitProcHresult
End Sub

Private Sub CodiOficMsk_UnknownEvent_8 'AC742C
  'Data Table: 4FBF24
  loc_AC7320: FLdPr Me
  loc_AC7323: VCallAd Control_ID_CodiOficMsk
  loc_AC7326: FStAdFunc var_88
  loc_AC7329: FLdPr var_88
  loc_AC732C: LateIdLdVar var_98 DispID_13 -32767
  loc_AC7333: CBoolVar
  loc_AC7335: FFree1Ad var_88
  loc_AC7338: FFree1Var var_98 = ""
  loc_AC733B: BranchF loc_AC742A
  loc_AC733E: FLdPr Me
  loc_AC7341: VCallAd Control_ID_CodiOficMsk
  loc_AC7344: FStAdFunc var_88
  loc_AC7347: FLdPr var_88
  loc_AC734A: LateIdLdVar var_98 DispID_0 0
  loc_AC7351: CStrVarTmp
  loc_AC7352: FStStrNoPop var_9C
  loc_AC7355: CR8Str
  loc_AC7357: LitI2_Byte 0
  loc_AC7359: CR8I2
  loc_AC735A: NeR8
  loc_AC735B: FFree1Str var_9C
  loc_AC735E: FFree1Ad var_88
  loc_AC7361: FFree1Var var_98 = ""
  loc_AC7364: BranchF loc_AC7413
  loc_AC7367: FLdPr Me
  loc_AC736A: VCallAd Control_ID_CodiOficMsk
  loc_AC736D: FStAdFunc var_88
  loc_AC7370: FLdPr var_88
  loc_AC7373: LateIdLdVar var_98 DispID_22 0
  loc_AC737A: CStrVarTmp
  loc_AC737B: FStStrNoPop var_9C
  loc_AC737E: ImpAdCallI2 Proc_18_24_A57368()
  loc_AC7383: FStStrNoPop var_A0
  loc_AC7386: FLdPr Me
  loc_AC7389: MemStStrCopy
  loc_AC738D: FFreeStr var_9C = ""
  loc_AC7394: FFree1Ad var_88
  loc_AC7397: FFree1Var var_98 = ""
  loc_AC739A: FLdPr Me
  loc_AC739D: MemLdStr global_108
  loc_AC73A0: LitStr vbNullString
  loc_AC73A3: NeStr
  loc_AC73A5: BranchF loc_AC73CD
  loc_AC73A8: FLdPr Me
  loc_AC73AB: MemLdStr global_108
  loc_AC73AE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC73B3: FLdPr Me
  loc_AC73B6: VCallAd Control_ID_CodiOficMsk
  loc_AC73B9: CVarAd
  loc_AC73BD: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC73C2: FFree1Var var_98 = ""
  loc_AC73C5: LitI2_Byte &HFF
  loc_AC73C7: IStI2 KeyAscii
  loc_AC73CA: Branch loc_AC7410
  loc_AC73CD: FLdPr Me
  loc_AC73D0: VCallAd Control_ID_CodiOficMsk
  loc_AC73D3: FStAdFunc var_88
  loc_AC73D6: FLdPr var_88
  loc_AC73D9: LateIdLdVar var_98 DispID_22 0
  loc_AC73E0: CStrVarTmp
  loc_AC73E1: FStStrNoPop var_9C
  loc_AC73E4: CI2Str
  loc_AC73E6: ImpAdCallI2 Proc_270_20_A7A6C0()
  loc_AC73EB: FStStrNoPop var_A0
  loc_AC73EE: FLdPr Me
  loc_AC73F1: VCallAd Control_ID_DetaOficLbl
  loc_AC73F4: FStAdFunc var_A4
  loc_AC73F7: FLdPr var_A4
  loc_AC73FA: Me.Caption = from_stack_1
  loc_AC73FF: FFreeStr var_9C = ""
  loc_AC7406: FFreeAd var_88 = ""
  loc_AC740D: FFree1Var var_98 = ""
  loc_AC7410: Branch loc_AC742A
  loc_AC7413: LitStr "TODAS LAS OFICINAS"
  loc_AC7416: FLdPr Me
  loc_AC7419: VCallAd Control_ID_DetaOficLbl
  loc_AC741C: FStAdFunc var_88
  loc_AC741F: FLdPr var_88
  loc_AC7422: Me.Caption = from_stack_1
  loc_AC7427: FFree1Ad var_88
  loc_AC742A: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A20B60
  'Data Table: 4FBF24
  loc_A20B28: FLdPr Me
  loc_A20B2B: VCallAd Control_ID_statusBar
  loc_A20B2E: FStAdFunc var_88
  loc_A20B31: FLdPr var_88
  loc_A20B34: LateIdLdVar var_98 DispID_1 0
  loc_A20B3B: CStrVarTmp
  loc_A20B3C: CVarStr var_A8
  loc_A20B3F: PopAdLdVar
  loc_A20B40: FLdPr Me
  loc_A20B43: VCallAd Control_ID_statusBar
  loc_A20B46: FStAdFunc var_BC
  loc_A20B49: FLdPr var_BC
  loc_A20B4C: LateIdSt
  loc_A20B51: FFreeAd var_88 = ""
  loc_A20B58: FFreeVar var_98 = ""
  loc_A20B5F: ExitProcHresult
End Sub

Public Function bLogosGet() '4FD698
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4FD6A7
  bLogos = Value
End Sub

Public Function bGeneradoGet() '4FD6B6
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4FD6C5
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'ACD520
  'Data Table: 4FBF24
  loc_ACD42C: LitI4 0
  loc_ACD431: LitI4 &HC
  loc_ACD436: FLdRfVar var_88
  loc_ACD439: Redim
  loc_ACD443: FLdPr Me
  loc_ACD446: VCallAd Control_ID_DesdeMsk
  loc_ACD449: CVarAd
  loc_ACD44D: ParmAry1St
  loc_ACD453: FLdPr Me
  loc_ACD456: VCallAd Control_ID_HastaMsk
  loc_ACD459: CVarAd
  loc_ACD45D: ParmAry1St
  loc_ACD463: FLdPr Me
  loc_ACD466: VCallAd Control_ID_ActivosChk
  loc_ACD469: CVarAd
  loc_ACD46D: ParmAry1St
  loc_ACD473: FLdPr Me
  loc_ACD476: VCallAd Control_ID_CodiOficMsk
  loc_ACD479: CVarAd
  loc_ACD47D: ParmAry1St
  loc_ACD483: FLdPr Me
  loc_ACD486: VCallAd Control_ID_CodiTifaMsk
  loc_ACD489: CVarAd
  loc_ACD48D: ParmAry1St
  loc_ACD493: FLdPr Me
  loc_ACD496: VCallAd Control_ID_AnuladosChk
  loc_ACD499: CVarAd
  loc_ACD49D: ParmAry1St
  loc_ACD4A3: FLdPr Me
  loc_ACD4A6: VCallAd Control_ID_PagadosChk
  loc_ACD4A9: CVarAd
  loc_ACD4AD: ParmAry1St
  loc_ACD4B3: FLdPr Me
  loc_ACD4B6: VCallAd Control_ID_AldiaChk
  loc_ACD4B9: CVarAd
  loc_ACD4BD: ParmAry1St
  loc_ACD4C3: FLdPr Me
  loc_ACD4C6: VCallAd Control_ID_AtrasadosChk
  loc_ACD4C9: CVarAd
  loc_ACD4CD: ParmAry1St
  loc_ACD4D3: FLdPr Me
  loc_ACD4D6: VCallAd Control_ID_CantCuotasMsk
  loc_ACD4D9: CVarAd
  loc_ACD4DD: ParmAry1St
  loc_ACD4E3: FLdPr Me
  loc_ACD4E6: VCallAd Control_ID_CantDiasMsk
  loc_ACD4E9: CVarAd
  loc_ACD4ED: ParmAry1St
  loc_ACD4F3: FLdPr Me
  loc_ACD4F6: VCallAd Control_ID_CuentaOpt
  loc_ACD4F9: CVarAd
  loc_ACD4FD: ParmAry1St
  loc_ACD503: FLdPr Me
  loc_ACD506: VCallAd Control_ID_NombreOpt
  loc_ACD509: CVarAd
  loc_ACD50D: ParmAry1St
  loc_ACD513: FLdRfVar var_88
  loc_ACD516: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_ACD51B: FLdRfVar var_88
  loc_ACD51E: Erase
  loc_ACD51F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C4DE38
  'Data Table: 4FBF24
  loc_C4D078: FLdPr Me
  loc_C4D07B: MemLdI2 bGenerado
  loc_C4D07E: BranchF loc_C4D082
  loc_C4D081: ExitProcHresult
  loc_C4D082: LitVarStr var_B0, "Generando reporte..."
  loc_C4D087: PopAdLdVar
  loc_C4D088: FLdPr Me
  loc_C4D08B: VCallAd Control_ID_statusBar
  loc_C4D08E: FStAdFunc var_C4
  loc_C4D091: FLdPr var_C4
  loc_C4D094: LateIdSt
  loc_C4D099: FFree1Ad var_C4
  loc_C4D09C: LitI4 &HB
  loc_C4D0A1: CI2I4
  loc_C4D0A2: FLdPr Me
  loc_C4D0A5: Me.MousePointer = from_stack_1
  loc_C4D0AA: LitI2_Byte 0
  loc_C4D0AC: PopTmpLdAd2 var_C6
  loc_C4D0AF: from_stack_2v = DesdeMsk_UnknownEvent_8(from_stack_1v)
  loc_C4D0B4: FLdPr Me
  loc_C4D0B7: MemLdStr global_108
  loc_C4D0BA: LitStr vbNullString
  loc_C4D0BD: NeStr
  loc_C4D0BF: BranchF loc_C4D0C5
  loc_C4D0C2: Branch loc_C4DE0E
  loc_C4D0C5: LitI2_Byte 0
  loc_C4D0C7: PopTmpLdAd2 var_C6
  loc_C4D0CA: from_stack_2v = HastaMsk_UnknownEvent_8(from_stack_1v)
  loc_C4D0CF: FLdPr Me
  loc_C4D0D2: MemLdStr global_108
  loc_C4D0D5: LitStr vbNullString
  loc_C4D0D8: NeStr
  loc_C4D0DA: BranchF loc_C4D0E0
  loc_C4D0DD: Branch loc_C4DE0E
  loc_C4D0E0: LitI2_Byte 0
  loc_C4D0E2: PopTmpLdAd2 var_C6
  loc_C4D0E5: from_stack_2v = CantCuotasMsk_UnknownEvent_8(from_stack_1v)
  loc_C4D0EA: FLdPr Me
  loc_C4D0ED: MemLdStr global_108
  loc_C4D0F0: LitStr vbNullString
  loc_C4D0F3: NeStr
  loc_C4D0F5: BranchF loc_C4D0FB
  loc_C4D0F8: Branch loc_C4DE0E
  loc_C4D0FB: LitI2_Byte 0
  loc_C4D0FD: PopTmpLdAd2 var_C6
  loc_C4D100: from_stack_2v = CantDiasMsk_UnknownEvent_8(from_stack_1v)
  loc_C4D105: FLdPr Me
  loc_C4D108: MemLdStr global_108
  loc_C4D10B: LitStr vbNullString
  loc_C4D10E: NeStr
  loc_C4D110: BranchF loc_C4D116
  loc_C4D113: Branch loc_C4DE0E
  loc_C4D116: FLdRfVar var_C6
  loc_C4D119: FLdPr Me
  loc_C4D11C: VCallAd Control_ID_ActivosChk
  loc_C4D11F: FStAdFunc var_C4
  loc_C4D122: FLdPr var_C4
  loc_C4D125:  = Me.Value
  loc_C4D12A: FLdI2 var_C6
  loc_C4D12D: LitI2_Byte 0
  loc_C4D12F: EqI2
  loc_C4D130: FLdRfVar var_CE
  loc_C4D133: FLdPr Me
  loc_C4D136: VCallAd Control_ID_AnuladosChk
  loc_C4D139: FStAdFunc var_CC
  loc_C4D13C: FLdPr var_CC
  loc_C4D13F:  = Me.Value
  loc_C4D144: FLdI2 var_CE
  loc_C4D147: LitI2_Byte 0
  loc_C4D149: EqI2
  loc_C4D14A: AndI4
  loc_C4D14B: FLdRfVar var_D6
  loc_C4D14E: FLdPr Me
  loc_C4D151: VCallAd Control_ID_PagadosChk
  loc_C4D154: FStAdFunc var_D4
  loc_C4D157: FLdPr var_D4
  loc_C4D15A:  = Me.Value
  loc_C4D15F: FLdI2 var_D6
  loc_C4D162: LitI2_Byte 0
  loc_C4D164: EqI2
  loc_C4D165: AndI4
  loc_C4D166: FLdRfVar var_DE
  loc_C4D169: FLdPr Me
  loc_C4D16C: VCallAd Control_ID_AldiaChk
  loc_C4D16F: FStAdFunc var_DC
  loc_C4D172: FLdPr var_DC
  loc_C4D175:  = Me.Value
  loc_C4D17A: FLdI2 var_DE
  loc_C4D17D: LitI2_Byte 0
  loc_C4D17F: EqI2
  loc_C4D180: AndI4
  loc_C4D181: FLdRfVar var_E6
  loc_C4D184: FLdPr Me
  loc_C4D187: VCallAd Control_ID_AtrasadosChk
  loc_C4D18A: FStAdFunc var_E4
  loc_C4D18D: FLdPr var_E4
  loc_C4D190:  = Me.Value
  loc_C4D195: FLdI2 var_E6
  loc_C4D198: LitI2_Byte 0
  loc_C4D19A: EqI2
  loc_C4D19B: AndI4
  loc_C4D19C: FFreeAd var_C4 = "": var_CC = "": var_D4 = "": var_DC = ""
  loc_C4D1A9: BranchF loc_C4D1B7
  loc_C4D1AC: LitStr "Por lo menos debe seleccionar una de las opciones disponibles. Verifique..."
  loc_C4D1AF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4D1B4: Branch loc_C4DE0E
  loc_C4D1B7: FLdRfVar var_C6
  loc_C4D1BA: FLdPr Me
  loc_C4D1BD: VCallAd Control_ID_AtrasadosChk
  loc_C4D1C0: FStAdFunc var_C4
  loc_C4D1C3: FLdPr var_C4
  loc_C4D1C6:  = Me.Value
  loc_C4D1CB: FLdI2 var_C6
  loc_C4D1CE: LitI2_Byte 1
  loc_C4D1D0: EqI2
  loc_C4D1D1: FFree1Ad var_C4
  loc_C4D1D4: BranchF loc_C4D235
  loc_C4D1D7: FLdPr Me
  loc_C4D1DA: VCallAd Control_ID_CantCuotasMsk
  loc_C4D1DD: FStAdFunc var_C4
  loc_C4D1E0: FLdPr var_C4
  loc_C4D1E3: LateIdLdVar var_F8 DispID_22 0
  loc_C4D1EA: CStrVarTmp
  loc_C4D1EB: FStStrNoPop var_FC
  loc_C4D1EE: CR8Str
  loc_C4D1F0: LitI2_Byte 0
  loc_C4D1F2: CR8I2
  loc_C4D1F3: EqR4
  loc_C4D1F4: FLdPr Me
  loc_C4D1F7: VCallAd Control_ID_CantDiasMsk
  loc_C4D1FA: FStAdFunc var_CC
  loc_C4D1FD: FLdPr var_CC
  loc_C4D200: LateIdLdVar var_10C DispID_22 0
  loc_C4D207: CStrVarTmp
  loc_C4D208: FStStrNoPop var_110
  loc_C4D20B: CR8Str
  loc_C4D20D: LitI2_Byte 0
  loc_C4D20F: CR8I2
  loc_C4D210: EqR4
  loc_C4D211: AndI4
  loc_C4D212: FFreeStr var_FC = ""
  loc_C4D219: FFreeAd var_C4 = ""
  loc_C4D220: FFreeVar var_F8 = ""
  loc_C4D227: BranchF loc_C4D235
  loc_C4D22A: LitStr "Debe ingresar la cantidad de cuotas o la cantidad de días. Verifique..."
  loc_C4D22D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4D232: Branch loc_C4DE0E
  loc_C4D235: LitStr " WHERE facipago.EstaFapa IN ("
  loc_C4D238: FStStrCopy var_88
  loc_C4D23B: FLdRfVar var_C6
  loc_C4D23E: FLdPr Me
  loc_C4D241: VCallAd Control_ID_ActivosChk
  loc_C4D244: FStAdFunc var_C4
  loc_C4D247: FLdPr var_C4
  loc_C4D24A:  = Me.Value
  loc_C4D24F: FLdI2 var_C6
  loc_C4D252: LitI2_Byte 1
  loc_C4D254: EqI2
  loc_C4D255: FFree1Ad var_C4
  loc_C4D258: BranchF loc_C4D295
  loc_C4D25B: ILdRf var_88
  loc_C4D25E: LitStr ",'Activa'"
  loc_C4D261: ConcatStr
  loc_C4D262: CVarStr var_10C
  loc_C4D265: ILdRf var_88
  loc_C4D268: LitStr "'Activa'"
  loc_C4D26B: ConcatStr
  loc_C4D26C: CVarStr var_F8
  loc_C4D26F: ILdRf var_88
  loc_C4D272: LitStr " WHERE facipago.EstaFapa IN ("
  loc_C4D275: EqStr
  loc_C4D277: CVarBoolI2 var_B0
  loc_C4D27B: FLdRfVar var_120
  loc_C4D27E: ImpAdCallFPR4  = IIf(, , )
  loc_C4D283: FLdRfVar var_120
  loc_C4D286: CStrVarTmp
  loc_C4D287: FStStr var_88
  loc_C4D28A: FFreeVar var_B0 = "": var_F8 = "": var_10C = ""
  loc_C4D295: FLdRfVar var_C6
  loc_C4D298: FLdPr Me
  loc_C4D29B: VCallAd Control_ID_AnuladosChk
  loc_C4D29E: FStAdFunc var_C4
  loc_C4D2A1: FLdPr var_C4
  loc_C4D2A4:  = Me.Value
  loc_C4D2A9: FLdI2 var_C6
  loc_C4D2AC: LitI2_Byte 1
  loc_C4D2AE: EqI2
  loc_C4D2AF: FFree1Ad var_C4
  loc_C4D2B2: BranchF loc_C4D2EF
  loc_C4D2B5: ILdRf var_88
  loc_C4D2B8: LitStr ",'Anulada'"
  loc_C4D2BB: ConcatStr
  loc_C4D2BC: CVarStr var_10C
  loc_C4D2BF: ILdRf var_88
  loc_C4D2C2: LitStr "'Anulada'"
  loc_C4D2C5: ConcatStr
  loc_C4D2C6: CVarStr var_F8
  loc_C4D2C9: ILdRf var_88
  loc_C4D2CC: LitStr " WHERE facipago.EstaFapa IN ("
  loc_C4D2CF: EqStr
  loc_C4D2D1: CVarBoolI2 var_B0
  loc_C4D2D5: FLdRfVar var_120
  loc_C4D2D8: ImpAdCallFPR4  = IIf(, , )
  loc_C4D2DD: FLdRfVar var_120
  loc_C4D2E0: CStrVarTmp
  loc_C4D2E1: FStStr var_88
  loc_C4D2E4: FFreeVar var_B0 = "": var_F8 = "": var_10C = ""
  loc_C4D2EF: FLdRfVar var_C6
  loc_C4D2F2: FLdPr Me
  loc_C4D2F5: VCallAd Control_ID_PagadosChk
  loc_C4D2F8: FStAdFunc var_C4
  loc_C4D2FB: FLdPr var_C4
  loc_C4D2FE:  = Me.Value
  loc_C4D303: FLdI2 var_C6
  loc_C4D306: LitI2_Byte 1
  loc_C4D308: EqI2
  loc_C4D309: FFree1Ad var_C4
  loc_C4D30C: BranchF loc_C4D349
  loc_C4D30F: ILdRf var_88
  loc_C4D312: LitStr ",'Pagada'"
  loc_C4D315: ConcatStr
  loc_C4D316: CVarStr var_10C
  loc_C4D319: ILdRf var_88
  loc_C4D31C: LitStr "'Pagada'"
  loc_C4D31F: ConcatStr
  loc_C4D320: CVarStr var_F8
  loc_C4D323: ILdRf var_88
  loc_C4D326: LitStr " WHERE facipago.EstaFapa IN ("
  loc_C4D329: EqStr
  loc_C4D32B: CVarBoolI2 var_B0
  loc_C4D32F: FLdRfVar var_120
  loc_C4D332: ImpAdCallFPR4  = IIf(, , )
  loc_C4D337: FLdRfVar var_120
  loc_C4D33A: CStrVarTmp
  loc_C4D33B: FStStr var_88
  loc_C4D33E: FFreeVar var_B0 = "": var_F8 = "": var_10C = ""
  loc_C4D349: ILdRf var_88
  loc_C4D34C: LitStr ")"
  loc_C4D34F: ConcatStr
  loc_C4D350: FStStr var_88
  loc_C4D353: FLdPr Me
  loc_C4D356: VCallAd Control_ID_DesdeMsk
  loc_C4D359: FStAdFunc var_C4
  loc_C4D35C: FLdPr var_C4
  loc_C4D35F: LateIdLdVar var_F8 DispID_15 0
  loc_C4D366: CStrVarTmp
  loc_C4D367: CVarStr var_10C
  loc_C4D36A: ImpAdCallI2 IsDate()
  loc_C4D36F: FLdPr Me
  loc_C4D372: VCallAd Control_ID_HastaMsk
  loc_C4D375: FStAdFunc var_CC
  loc_C4D378: FLdPr var_CC
  loc_C4D37B: LateIdLdVar var_120 DispID_15 0
  loc_C4D382: CStrVarTmp
  loc_C4D383: CVarStr var_130
  loc_C4D386: ImpAdCallI2 IsDate()
  loc_C4D38B: AndI4
  loc_C4D38C: FFreeAd var_C4 = ""
  loc_C4D393: FFreeVar var_F8 = "": var_10C = "": var_120 = ""
  loc_C4D39E: BranchF loc_C4D450
  loc_C4D3A1: FLdPr Me
  loc_C4D3A4: VCallAd Control_ID_DesdeMsk
  loc_C4D3A7: FStAdFunc var_C4
  loc_C4D3AA: FLdPr var_C4
  loc_C4D3AD: LateIdLdVar var_F8 DispID_15 0
  loc_C4D3B4: PopAd
  loc_C4D3B6: FLdPr Me
  loc_C4D3B9: VCallAd Control_ID_HastaMsk
  loc_C4D3BC: FStAdFunc var_CC
  loc_C4D3BF: FLdPr var_CC
  loc_C4D3C2: LateIdLdVar var_130 DispID_15 0
  loc_C4D3C9: PopAd
  loc_C4D3CB: LitStr " AND facipago.FealFapa BETWEEN "
  loc_C4D3CE: LitI4 1
  loc_C4D3D3: LitI4 1
  loc_C4D3D8: LitVarStr var_B0, "'yyyy-mm-dd'"
  loc_C4D3DD: FStVarCopyObj var_120
  loc_C4D3E0: FLdRfVar var_120
  loc_C4D3E3: FLdRfVar var_F8
  loc_C4D3E6: CStrVarTmp
  loc_C4D3E7: CVarStr var_10C
  loc_C4D3EA: ImpAdCallI2 Format$(, )
  loc_C4D3EF: FStStrNoPop var_FC
  loc_C4D3F2: ConcatStr
  loc_C4D3F3: FStStrNoPop var_110
  loc_C4D3F6: LitStr " AND "
  loc_C4D3F9: ConcatStr
  loc_C4D3FA: FStStrNoPop var_154
  loc_C4D3FD: LitI4 1
  loc_C4D402: LitI4 1
  loc_C4D407: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_C4D40C: FStVarCopyObj var_150
  loc_C4D40F: FLdRfVar var_150
  loc_C4D412: FLdRfVar var_130
  loc_C4D415: CStrVarTmp
  loc_C4D416: CVarStr var_140
  loc_C4D419: ImpAdCallI2 Format$(, )
  loc_C4D41E: FStStrNoPop var_158
  loc_C4D421: ConcatStr
  loc_C4D422: FStStr var_8C
  loc_C4D425: FFreeStr var_FC = "": var_110 = "": var_154 = ""
  loc_C4D430: FFreeAd var_C4 = ""
  loc_C4D437: FFreeVar var_F8 = "": var_10C = "": var_120 = "": var_130 = "": var_140 = ""
  loc_C4D446: ILdRf var_88
  loc_C4D449: ILdRf var_8C
  loc_C4D44C: ConcatStr
  loc_C4D44D: FStStr var_88
  loc_C4D450: FLdPr Me
  loc_C4D453: VCallAd Control_ID_CodiOficMsk
  loc_C4D456: FStAdFunc var_C4
  loc_C4D459: FLdPr var_C4
  loc_C4D45C: LateIdLdVar var_F8 DispID_22 0
  loc_C4D463: CStrVarTmp
  loc_C4D464: FStStrNoPop var_FC
  loc_C4D467: CR8Str
  loc_C4D469: LitI2_Byte 0
  loc_C4D46B: CR8I2
  loc_C4D46C: NeR8
  loc_C4D46D: FFree1Str var_FC
  loc_C4D470: FFree1Ad var_C4
  loc_C4D473: FFree1Var var_F8 = ""
  loc_C4D476: BranchF loc_C4D4AA
  loc_C4D479: LitStr " AND facipago.CodiOfic = "
  loc_C4D47C: FLdPr Me
  loc_C4D47F: VCallAd Control_ID_CodiOficMsk
  loc_C4D482: FStAdFunc var_C4
  loc_C4D485: FLdPr var_C4
  loc_C4D488: LateIdLdVar var_F8 DispID_22 0
  loc_C4D48F: CStrVarTmp
  loc_C4D490: FStStrNoPop var_FC
  loc_C4D493: ConcatStr
  loc_C4D494: FStStr var_90
  loc_C4D497: FFree1Str var_FC
  loc_C4D49A: FFree1Ad var_C4
  loc_C4D49D: FFree1Var var_F8 = ""
  loc_C4D4A0: ILdRf var_88
  loc_C4D4A3: ILdRf var_90
  loc_C4D4A6: ConcatStr
  loc_C4D4A7: FStStr var_88
  loc_C4D4AA: FLdPr Me
  loc_C4D4AD: VCallAd Control_ID_CodiTifaMsk
  loc_C4D4B0: FStAdFunc var_C4
  loc_C4D4B3: FLdPr var_C4
  loc_C4D4B6: LateIdLdVar var_F8 DispID_22 0
  loc_C4D4BD: CStrVarTmp
  loc_C4D4BE: FStStrNoPop var_FC
  loc_C4D4C1: CR8Str
  loc_C4D4C3: LitI2_Byte 0
  loc_C4D4C5: CR8I2
  loc_C4D4C6: NeR8
  loc_C4D4C7: FFree1Str var_FC
  loc_C4D4CA: FFree1Ad var_C4
  loc_C4D4CD: FFree1Var var_F8 = ""
  loc_C4D4D0: BranchF loc_C4D504
  loc_C4D4D3: LitStr " AND facipago.CodiTifa = "
  loc_C4D4D6: FLdPr Me
  loc_C4D4D9: VCallAd Control_ID_CodiTifaMsk
  loc_C4D4DC: FStAdFunc var_C4
  loc_C4D4DF: FLdPr var_C4
  loc_C4D4E2: LateIdLdVar var_F8 DispID_22 0
  loc_C4D4E9: CStrVarTmp
  loc_C4D4EA: FStStrNoPop var_FC
  loc_C4D4ED: ConcatStr
  loc_C4D4EE: FStStr var_94
  loc_C4D4F1: FFree1Str var_FC
  loc_C4D4F4: FFree1Ad var_C4
  loc_C4D4F7: FFree1Var var_F8 = ""
  loc_C4D4FA: ILdRf var_88
  loc_C4D4FD: ILdRf var_94
  loc_C4D500: ConcatStr
  loc_C4D501: FStStr var_88
  loc_C4D504: LitStr vbNullString
  loc_C4D507: FStStrCopy var_98
  loc_C4D50A: FLdPr Me
  loc_C4D50D: MemLdRfVar from_stack_1.global_76
  loc_C4D510: NewIfNullAd
  loc_C4D513: FStAd var_15C 
  loc_C4D517: FLdRfVar var_C6
  loc_C4D51A: FLdPr Me
  loc_C4D51D: VCallAd Control_ID_AldiaChk
  loc_C4D520: FStAdFunc var_C4
  loc_C4D523: FLdPr var_C4
  loc_C4D526:  = Me.Value
  loc_C4D52B: FLdI2 var_C6
  loc_C4D52E: LitI2_Byte 1
  loc_C4D530: EqI2
  loc_C4D531: FFree1Ad var_C4
  loc_C4D534: BranchF loc_C4D5D6
  loc_C4D537: LitI2_Byte 0
  loc_C4D539: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C4D53E: FStFPR8 var_234
  loc_C4D541: LitVarStr var_16C, " (SELECT detafapa.CodiFapa, IF(FeveDefa<"
  loc_C4D546: LitI4 1
  loc_C4D54B: LitI4 1
  loc_C4D550: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_C4D555: FStVarCopyObj var_10C
  loc_C4D558: FLdRfVar var_10C
  loc_C4D55B: FLdFPR8 var_234
  loc_C4D55E: CVarDate var_F8
  loc_C4D562: FLdRfVar var_120
  loc_C4D565: ImpAdCallFPR4  = Format(, )
  loc_C4D56A: FLdRfVar var_120
  loc_C4D56D: ConcatVar var_130
  loc_C4D571: LitVarStr var_17C, ",1,0) as FeveCuot, 0 as CantImpa, 'Al dia' as EstaFapa, 0 as CantDias  FROM detafapa"
  loc_C4D576: ConcatVar var_140
  loc_C4D57A: LitVarStr var_18C, " INNER JOIN facipago ON facipago.CodiFapa = detafapa.CodiFapa "
  loc_C4D57F: ConcatVar var_150
  loc_C4D583: LitVarStr var_19C, " WHERE detafapa.FepaDefa IS NULL "
  loc_C4D588: ConcatVar var_1AC
  loc_C4D58C: ILdRf var_8C
  loc_C4D58F: CVarStr var_1BC
  loc_C4D592: ConcatVar var_1CC
  loc_C4D596: ILdRf var_90
  loc_C4D599: CVarStr var_1DC
  loc_C4D59C: ConcatVar var_1EC
  loc_C4D5A0: ILdRf var_94
  loc_C4D5A3: CVarStr var_1FC
  loc_C4D5A6: ConcatVar var_20C
  loc_C4D5AA: LitVarStr var_21C, "  GROUP BY detafapa.CodiFapa HAVING FeveCuot = 0)"
  loc_C4D5AF: ConcatVar var_22C
  loc_C4D5B3: CStrVarTmp
  loc_C4D5B4: FStStr var_9C
  loc_C4D5B7: FFreeVar var_F8 = "": var_10C = "": var_120 = "": var_130 = "": var_140 = "": var_150 = "": var_1AC = "": var_1CC = "": var_1EC = "": var_20C = ""
  loc_C4D5D0: LitStr " UNION ALL "
  loc_C4D5D3: FStStrCopy var_98
  loc_C4D5D6: FLdRfVar var_C6
  loc_C4D5D9: FLdPr Me
  loc_C4D5DC: VCallAd Control_ID_AtrasadosChk
  loc_C4D5DF: FStAdFunc var_C4
  loc_C4D5E2: FLdPr var_C4
  loc_C4D5E5:  = Me.Value
  loc_C4D5EA: FLdI2 var_C6
  loc_C4D5ED: LitI2_Byte 1
  loc_C4D5EF: EqI2
  loc_C4D5F0: FFree1Ad var_C4
  loc_C4D5F3: BranchF loc_C4D864
  loc_C4D5F6: FLdPr Me
  loc_C4D5F9: VCallAd Control_ID_CantCuotasMsk
  loc_C4D5FC: FStAdFunc var_C4
  loc_C4D5FF: FLdPr var_C4
  loc_C4D602: LateIdLdVar var_F8 DispID_22 0
  loc_C4D609: CStrVarTmp
  loc_C4D60A: FStStrNoPop var_FC
  loc_C4D60D: CR8Str
  loc_C4D60F: LitI2_Byte 0
  loc_C4D611: CR8I2
  loc_C4D612: GtR4
  loc_C4D613: FLdPr Me
  loc_C4D616: VCallAd Control_ID_CantDiasMsk
  loc_C4D619: FStAdFunc var_CC
  loc_C4D61C: FLdPr var_CC
  loc_C4D61F: LateIdLdVar var_10C DispID_22 0
  loc_C4D626: CStrVarTmp
  loc_C4D627: FStStrNoPop var_110
  loc_C4D62A: CR8Str
  loc_C4D62C: LitI2_Byte 0
  loc_C4D62E: CR8I2
  loc_C4D62F: EqR4
  loc_C4D630: AndI4
  loc_C4D631: FFreeStr var_FC = ""
  loc_C4D638: FFreeAd var_C4 = ""
  loc_C4D63F: FFreeVar var_F8 = ""
  loc_C4D646: BranchF loc_C4D670
  loc_C4D649: LitStr " CantImpa >= "
  loc_C4D64C: FLdPr Me
  loc_C4D64F: VCallAd Control_ID_CantCuotasMsk
  loc_C4D652: FStAdFunc var_C4
  loc_C4D655: FLdPr var_C4
  loc_C4D658: LateIdLdVar var_F8 DispID_22 0
  loc_C4D65F: CStrVarTmp
  loc_C4D660: FStStrNoPop var_FC
  loc_C4D663: ConcatStr
  loc_C4D664: FStStr var_A0
  loc_C4D667: FFree1Str var_FC
  loc_C4D66A: FFree1Ad var_C4
  loc_C4D66D: FFree1Var var_F8 = ""
  loc_C4D670: FLdPr Me
  loc_C4D673: VCallAd Control_ID_CantDiasMsk
  loc_C4D676: FStAdFunc var_C4
  loc_C4D679: FLdPr var_C4
  loc_C4D67C: LateIdLdVar var_F8 DispID_22 0
  loc_C4D683: CStrVarTmp
  loc_C4D684: FStStrNoPop var_FC
  loc_C4D687: CR8Str
  loc_C4D689: LitI2_Byte 0
  loc_C4D68B: CR8I2
  loc_C4D68C: GtR4
  loc_C4D68D: FLdPr Me
  loc_C4D690: VCallAd Control_ID_CantCuotasMsk
  loc_C4D693: FStAdFunc var_CC
  loc_C4D696: FLdPr var_CC
  loc_C4D699: LateIdLdVar var_10C DispID_22 0
  loc_C4D6A0: CStrVarTmp
  loc_C4D6A1: FStStrNoPop var_110
  loc_C4D6A4: CR8Str
  loc_C4D6A6: LitI2_Byte 0
  loc_C4D6A8: CR8I2
  loc_C4D6A9: EqR4
  loc_C4D6AA: AndI4
  loc_C4D6AB: FFreeStr var_FC = ""
  loc_C4D6B2: FFreeAd var_C4 = ""
  loc_C4D6B9: FFreeVar var_F8 = ""
  loc_C4D6C0: BranchF loc_C4D6EA
  loc_C4D6C3: LitStr " CantDias >= "
  loc_C4D6C6: FLdPr Me
  loc_C4D6C9: VCallAd Control_ID_CantDiasMsk
  loc_C4D6CC: FStAdFunc var_C4
  loc_C4D6CF: FLdPr var_C4
  loc_C4D6D2: LateIdLdVar var_F8 DispID_22 0
  loc_C4D6D9: CStrVarTmp
  loc_C4D6DA: FStStrNoPop var_FC
  loc_C4D6DD: ConcatStr
  loc_C4D6DE: FStStr var_A0
  loc_C4D6E1: FFree1Str var_FC
  loc_C4D6E4: FFree1Ad var_C4
  loc_C4D6E7: FFree1Var var_F8 = ""
  loc_C4D6EA: FLdPr Me
  loc_C4D6ED: VCallAd Control_ID_CantDiasMsk
  loc_C4D6F0: FStAdFunc var_C4
  loc_C4D6F3: FLdPr var_C4
  loc_C4D6F6: LateIdLdVar var_F8 DispID_22 0
  loc_C4D6FD: CStrVarTmp
  loc_C4D6FE: FStStrNoPop var_FC
  loc_C4D701: CR8Str
  loc_C4D703: LitI2_Byte 0
  loc_C4D705: CR8I2
  loc_C4D706: GtR4
  loc_C4D707: FLdPr Me
  loc_C4D70A: VCallAd Control_ID_CantCuotasMsk
  loc_C4D70D: FStAdFunc var_CC
  loc_C4D710: FLdPr var_CC
  loc_C4D713: LateIdLdVar var_10C DispID_22 0
  loc_C4D71A: CStrVarTmp
  loc_C4D71B: FStStrNoPop var_110
  loc_C4D71E: CR8Str
  loc_C4D720: LitI2_Byte 0
  loc_C4D722: CR8I2
  loc_C4D723: GtR4
  loc_C4D724: AndI4
  loc_C4D725: FFreeStr var_FC = ""
  loc_C4D72C: FFreeAd var_C4 = ""
  loc_C4D733: FFreeVar var_F8 = ""
  loc_C4D73A: BranchF loc_C4D796
  loc_C4D73D: LitStr " CantDias >= "
  loc_C4D740: FLdPr Me
  loc_C4D743: VCallAd Control_ID_CantDiasMsk
  loc_C4D746: FStAdFunc var_C4
  loc_C4D749: FLdPr var_C4
  loc_C4D74C: LateIdLdVar var_F8 DispID_22 0
  loc_C4D753: CStrVarTmp
  loc_C4D754: FStStrNoPop var_FC
  loc_C4D757: ConcatStr
  loc_C4D758: FStStrNoPop var_110
  loc_C4D75B: LitStr " AND CantImpa >= "
  loc_C4D75E: ConcatStr
  loc_C4D75F: FStStrNoPop var_154
  loc_C4D762: FLdPr Me
  loc_C4D765: VCallAd Control_ID_CantCuotasMsk
  loc_C4D768: FStAdFunc var_CC
  loc_C4D76B: FLdPr var_CC
  loc_C4D76E: LateIdLdVar var_10C DispID_22 0
  loc_C4D775: CStrVarTmp
  loc_C4D776: FStStrNoPop var_158
  loc_C4D779: ConcatStr
  loc_C4D77A: FStStr var_A0
  loc_C4D77D: FFreeStr var_FC = "": var_110 = "": var_154 = ""
  loc_C4D788: FFreeAd var_C4 = ""
  loc_C4D78F: FFreeVar var_F8 = ""
  loc_C4D796: LitI2_Byte 0
  loc_C4D798: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C4D79D: FStFPR8 var_234
  loc_C4D7A0: ILdRf var_9C
  loc_C4D7A3: ILdRf var_98
  loc_C4D7A6: ConcatStr
  loc_C4D7A7: FStStrNoPop var_FC
  loc_C4D7AA: LitStr " (SELECT detafapa.CodiFapa, 0 as FeveCuot, COUNT(detafapa.CodiFapa) as CantImpa,"
  loc_C4D7AD: ConcatStr
  loc_C4D7AE: FStStrNoPop var_110
  loc_C4D7B1: LitStr " 'Atrasados' as EstaFapa, datediff(current_date, FeveDefa) As CantDias FROM detafapa"
  loc_C4D7B4: ConcatStr
  loc_C4D7B5: FStStrNoPop var_154
  loc_C4D7B8: LitStr " INNER JOIN facipago ON facipago.CodiFapa = detafapa.CodiFapa "
  loc_C4D7BB: ConcatStr
  loc_C4D7BC: FStStrNoPop var_158
  loc_C4D7BF: LitStr " WHERE facipago.EstaFapa <> 'Anulada' AND facipago.EstaFapa <> 'Caida'  AND detafapa.FepaDefa IS NULL "
  loc_C4D7C2: ConcatStr
  loc_C4D7C3: FStStrNoPop var_238
  loc_C4D7C6: ILdRf var_8C
  loc_C4D7C9: ConcatStr
  loc_C4D7CA: FStStrNoPop var_23C
  loc_C4D7CD: ILdRf var_90
  loc_C4D7D0: ConcatStr
  loc_C4D7D1: FStStrNoPop var_240
  loc_C4D7D4: ILdRf var_94
  loc_C4D7D7: ConcatStr
  loc_C4D7D8: FStStrNoPop var_244
  loc_C4D7DB: LitStr " AND FeveDefa < "
  loc_C4D7DE: ConcatStr
  loc_C4D7DF: CVarStr var_130
  loc_C4D7E2: LitI4 1
  loc_C4D7E7: LitI4 1
  loc_C4D7EC: LitVarStr var_C0, "'yyyy-mm-dd'"
  loc_C4D7F1: FStVarCopyObj var_10C
  loc_C4D7F4: FLdRfVar var_10C
  loc_C4D7F7: FLdFPR8 var_234
  loc_C4D7FA: CVarDate var_F8
  loc_C4D7FE: FLdRfVar var_120
  loc_C4D801: ImpAdCallFPR4  = Format(, )
  loc_C4D806: FLdRfVar var_120
  loc_C4D809: ConcatVar var_140
  loc_C4D80D: LitVarStr var_16C, " GROUP BY detafapa.CodiFapa "
  loc_C4D812: ConcatVar var_150
  loc_C4D816: LitVarStr var_17C, " HAVING "
  loc_C4D81B: ConcatVar var_1AC
  loc_C4D81F: ILdRf var_A0
  loc_C4D822: CVarStr var_18C
  loc_C4D825: ConcatVar var_1CC
  loc_C4D829: LitVarStr var_19C, ")"
  loc_C4D82E: ConcatVar var_1EC
  loc_C4D832: CStrVarTmp
  loc_C4D833: FStStr var_9C
  loc_C4D836: FFreeStr var_FC = "": var_110 = "": var_154 = "": var_158 = "": var_238 = "": var_23C = "": var_240 = ""
  loc_C4D849: FFreeVar var_F8 = "": var_10C = "": var_130 = "": var_120 = "": var_140 = "": var_150 = "": var_1AC = "": var_1CC = ""
  loc_C4D85E: LitStr " UNION ALL "
  loc_C4D861: FStStrCopy var_98
  loc_C4D864: FLdRfVar var_C6
  loc_C4D867: FLdPr Me
  loc_C4D86A: VCallAd Control_ID_ActivosChk
  loc_C4D86D: FStAdFunc var_C4
  loc_C4D870: FLdPr var_C4
  loc_C4D873:  = Me.Value
  loc_C4D878: FLdI2 var_C6
  loc_C4D87B: LitI2_Byte 1
  loc_C4D87D: EqI2
  loc_C4D87E: FLdRfVar var_CE
  loc_C4D881: FLdPr Me
  loc_C4D884: VCallAd Control_ID_AnuladosChk
  loc_C4D887: FStAdFunc var_CC
  loc_C4D88A: FLdPr var_CC
  loc_C4D88D:  = Me.Value
  loc_C4D892: FLdI2 var_CE
  loc_C4D895: LitI2_Byte 1
  loc_C4D897: EqI2
  loc_C4D898: OrI4
  loc_C4D899: FLdRfVar var_D6
  loc_C4D89C: FLdPr Me
  loc_C4D89F: VCallAd Control_ID_PagadosChk
  loc_C4D8A2: FStAdFunc var_D4
  loc_C4D8A5: FLdPr var_D4
  loc_C4D8A8:  = Me.Value
  loc_C4D8AD: FLdI2 var_D6
  loc_C4D8B0: LitI2_Byte 1
  loc_C4D8B2: EqI2
  loc_C4D8B3: OrI4
  loc_C4D8B4: FFreeAd var_C4 = "": var_CC = ""
  loc_C4D8BD: BranchF loc_C4D8F1
  loc_C4D8C0: ILdRf var_9C
  loc_C4D8C3: ILdRf var_98
  loc_C4D8C6: ConcatStr
  loc_C4D8C7: FStStrNoPop var_FC
  loc_C4D8CA: LitStr " (SELECT CodiFapa, 0 as FeveCuot, 0 as CantImpa, EstaFapa, 0 as CantDias"
  loc_C4D8CD: ConcatStr
  loc_C4D8CE: FStStrNoPop var_110
  loc_C4D8D1: LitStr " FROM facipago"
  loc_C4D8D4: ConcatStr
  loc_C4D8D5: FStStrNoPop var_154
  loc_C4D8D8: ILdRf var_88
  loc_C4D8DB: ConcatStr
  loc_C4D8DC: FStStrNoPop var_158
  loc_C4D8DF: LitStr ")"
  loc_C4D8E2: ConcatStr
  loc_C4D8E3: FStStr var_9C
  loc_C4D8E6: FFreeStr var_FC = "": var_110 = "": var_154 = ""
  loc_C4D8F1: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_facipago;"
  loc_C4D8F4: LitStr " CREATE TEMPORARY TABLE tmp_facipago ("
  loc_C4D8F7: ConcatStr
  loc_C4D8F8: FStStrNoPop var_FC
  loc_C4D8FB: LitStr "odiFapa` integer(8) unsigned NOT NULL DEFAULT '0',"
  loc_C4D8FE: ConcatStr
  loc_C4D8FF: FStStrNoPop var_110
  loc_C4D902: LitStr "eveCuot` tinyint(1) unsigned NOT NULL DEFAULT '0',"
  loc_C4D905: ConcatStr
  loc_C4D906: FStStrNoPop var_154
  loc_C4D909: LitStr "antImpa` integer(8) unsigned NOT NULL DEFAULT '0',"
  loc_C4D90C: ConcatStr
  loc_C4D90D: FStStrNoPop var_158
  loc_C4D910: LitStr "staFapa` varchar(11) NOT NULL default ''"
  loc_C4D913: ConcatStr
  loc_C4D914: FStStrNoPop var_238
  loc_C4D917: LitStr ") ENGINE=memory DEFAULT CHARSET=latin1 "
  loc_C4D91A: ConcatStr
  loc_C4D91B: FStStrNoPop var_23C
  loc_C4D91E: ILdRf var_9C
  loc_C4D921: ConcatStr
  loc_C4D922: FStStrNoPop var_240
  loc_C4D925: FLdPr var_15C
  loc_C4D928: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_C4D92D: FFreeStr var_FC = "": var_110 = "": var_154 = "": var_158 = "": var_238 = "": var_23C = ""
  loc_C4D93E: FLdRfVar var_C6
  loc_C4D941: FLdPr Me
  loc_C4D944: VCallAd Control_ID_CuentaOpt
  loc_C4D947: FStAdFunc var_C4
  loc_C4D94A: FLdPr var_C4
  loc_C4D94D:  = Me.Value
  loc_C4D952: LitStr "SELECT tmp_facipago.EstaFapa, tmp_facipago.CodiFapa, CodiTifa, DetaPers, facipago.FealFapa, CacuFapa, CaapFapa, CodiOfic, CuenCtct,"
  loc_C4D955: LitStr " CapiFapa , DecaFapa, RecaFapa, DereFapa, ApreFapa, InteFapa, TotaFapa,"
  loc_C4D958: ConcatStr
  loc_C4D959: FStStrNoPop var_FC
  loc_C4D95C: LitStr " FirmFapa, facipago.AltaUsua"
  loc_C4D95F: ConcatStr
  loc_C4D960: FStStrNoPop var_110
  loc_C4D963: LitStr " FROM tmp_facipago"
  loc_C4D966: ConcatStr
  loc_C4D967: FStStrNoPop var_154
  loc_C4D96A: LitStr " INNER JOIN facipago ON facipago.CodiFapa = tmp_facipago.CodiFapa"
  loc_C4D96D: ConcatStr
  loc_C4D96E: FStStrNoPop var_158
  loc_C4D971: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = facipago.CucuPers"
  loc_C4D974: ConcatStr
  loc_C4D975: CVarStr var_130
  loc_C4D978: LitVarStr var_16C, " ORDER BY tmp_facipago.EstaFapa, DetaPers"
  loc_C4D97D: FStVarCopyObj var_10C
  loc_C4D980: FLdRfVar var_10C
  loc_C4D983: LitVarStr var_C0, " ORDER BY tmp_facipago.EstaFapa, CodiOfic, CuenCtct"
  loc_C4D988: FStVarCopyObj var_F8
  loc_C4D98B: FLdRfVar var_F8
  loc_C4D98E: FLdI2 var_C6
  loc_C4D991: CVarBoolI2 var_B0
  loc_C4D995: FLdRfVar var_120
  loc_C4D998: ImpAdCallFPR4  = IIf(, , )
  loc_C4D99D: FLdRfVar var_120
  loc_C4D9A0: ConcatVar var_140
  loc_C4D9A4: CStrVarVal var_238
  loc_C4D9A8: FLdPr var_15C
  loc_C4D9AB: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_C4D9B0: FFreeStr var_FC = "": var_110 = "": var_154 = "": var_158 = ""
  loc_C4D9BD: FFree1Ad var_C4
  loc_C4D9C0: FFreeVar var_B0 = "": var_F8 = "": var_10C = "": var_130 = "": var_120 = ""
  loc_C4D9CF: FLdRfVar var_248
  loc_C4D9D2: FLdPr var_15C
  loc_C4D9D5: from_stack_1 = clsfacipago.RecordCount
  loc_C4D9DA: ILdRf var_248
  loc_C4D9DD: LitI4 0
  loc_C4D9E2: EqI4
  loc_C4D9E3: BranchF loc_C4D9F1
  loc_C4D9E6: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C4D9E9: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4D9EE: Branch loc_C4DE0E
  loc_C4D9F1: FLdPr var_15C
  loc_C4D9F4: Call clsfacipago.MoveFirst()
  loc_C4D9F9: LitI2_Byte 0
  loc_C4D9FB: FLdPr Me
  loc_C4D9FE: MemStI2 global_84
  loc_C4DA01: LitI4 0
  loc_C4DA06: LitI4 0
  loc_C4DA0B: FLdPr Me
  loc_C4DA0E: MemLdRfVar from_stack_1.global_92
  loc_C4DA11: Redim
  loc_C4DA1B: LitI4 0
  loc_C4DA20: LitI4 0
  loc_C4DA25: FLdPr Me
  loc_C4DA28: MemLdRfVar from_stack_1.global_80
  loc_C4DA2B: Redim
  loc_C4DA35: Call Proc_358_33_A91E28()
  loc_C4DA3A: FLdRfVar var_C6
  loc_C4DA3D: FLdPr var_15C
  loc_C4DA40: from_stack_1 = clsfacipago.EOF
  loc_C4DA45: FLdI2 var_C6
  loc_C4DA48: NotI4
  loc_C4DA49: BranchF loc_C4DA83
  loc_C4DA4C: FLdRfVar var_FC
  loc_C4DA4F: FLdPr var_15C
  loc_C4DA52: from_stack_1 = clsfacipago.EstaFapa
  loc_C4DA57: ILdRf var_FC
  loc_C4DA5A: FLdPr Me
  loc_C4DA5D: MemLdI2 global_84
  loc_C4DA60: CI4UI1
  loc_C4DA61: FLdPr Me
  loc_C4DA64: MemLdStr global_80
  loc_C4DA67: Ary1LdPr
  loc_C4DA68: MemLdStr global_0
  loc_C4DA6B: NeStr
  loc_C4DA6D: FFree1Str var_FC
  loc_C4DA70: BranchF loc_C4DA7B
  loc_C4DA73: Call Proc_358_33_A91E28()
  loc_C4DA78: Branch loc_C4DA80
  loc_C4DA7B: Call Proc_358_34_B76F50()
  loc_C4DA80: Branch loc_C4DA3A
  loc_C4DA83: LitStr "SELECT tmp_facipago.EstaFapa, count(tmp_facipago.CodiFapa) as CodiFapa"
  loc_C4DA86: LitStr " FROM tmp_facipago"
  loc_C4DA89: ConcatStr
  loc_C4DA8A: FStStrNoPop var_FC
  loc_C4DA8D: LitStr " INNER JOIN facipago ON facipago.CodiFapa = tmp_facipago.CodiFapa"
  loc_C4DA90: ConcatStr
  loc_C4DA91: FStStrNoPop var_110
  loc_C4DA94: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = facipago.CucuPers"
  loc_C4DA97: ConcatStr
  loc_C4DA98: FStStrNoPop var_154
  loc_C4DA9B: LitStr " GROUP BY tmp_facipago.EstaFapa"
  loc_C4DA9E: ConcatStr
  loc_C4DA9F: FStStrNoPop var_158
  loc_C4DAA2: FLdPr var_15C
  loc_C4DAA5: Call clsfacipago.RedefineRS(from_stack_1v)
  loc_C4DAAA: FFreeStr var_FC = "": var_110 = "": var_154 = ""
  loc_C4DAB5: LitI4 0
  loc_C4DABA: FLdRfVar var_248
  loc_C4DABD: FLdPr var_15C
  loc_C4DAC0: from_stack_1 = clsfacipago.RecordCount
  loc_C4DAC5: ILdRf var_248
  loc_C4DAC8: FLdPr Me
  loc_C4DACB: MemLdRfVar from_stack_1.global_100
  loc_C4DACE: Redim
  loc_C4DAD8: FLdPr var_15C
  loc_C4DADB: Call clsfacipago.MoveFirst()
  loc_C4DAE0: LitI4 1
  loc_C4DAE5: FLdPr Me
  loc_C4DAE8: MemLdRfVar from_stack_1.global_104
  loc_C4DAEB: FLdPr Me
  loc_C4DAEE: MemLdStr global_100
  loc_C4DAF1: LitI2_Byte 1
  loc_C4DAF3: FnUBound
  loc_C4DAF5: ForI4 var_250
  loc_C4DAFB: FLdRfVar var_FC
  loc_C4DAFE: FLdPr Me
  loc_C4DB01: MemLdRfVar from_stack_1.global_76
  loc_C4DB04: NewIfNullPr clsfacipago
  loc_C4DB07: from_stack_1 = clsfacipago.EstaFapa
  loc_C4DB0C: LitI2_Byte 0
  loc_C4DB0E: LitVar_Missing var_10C
  loc_C4DB11: LitI2_Byte 0
  loc_C4DB13: FLdZeroAd var_FC
  loc_C4DB16: CVarStr var_F8
  loc_C4DB19: PopAdLdVar
  loc_C4DB1A: FLdPr Me
  loc_C4DB1D: MemLdStr global_104
  loc_C4DB20: FLdPr Me
  loc_C4DB23: MemLdStr global_100
  loc_C4DB26: AryLock
  loc_C4DB29: Ary1LdPr
  loc_C4DB2A: MemLdRfVar from_stack_1.global_0
  loc_C4DB2D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4DB32: AryUnlock
  loc_C4DB35: FFreeVar var_F8 = ""
  loc_C4DB3C: FLdRfVar var_248
  loc_C4DB3F: FLdPr Me
  loc_C4DB42: MemLdRfVar from_stack_1.global_76
  loc_C4DB45: NewIfNullPr clsfacipago
  loc_C4DB48: from_stack_1 = clsfacipago.CodiFapa
  loc_C4DB4D: LitI2_Byte 0
  loc_C4DB4F: LitVar_Missing var_F8
  loc_C4DB52: LitI2_Byte 0
  loc_C4DB54: ILdRf var_248
  loc_C4DB57: CVarI4
  loc_C4DB5B: PopAdLdVar
  loc_C4DB5C: FLdPr Me
  loc_C4DB5F: MemLdStr global_104
  loc_C4DB62: FLdPr Me
  loc_C4DB65: MemLdStr global_100
  loc_C4DB68: AryLock
  loc_C4DB6B: Ary1LdPr
  loc_C4DB6C: MemLdRfVar from_stack_1.global_4
  loc_C4DB6F: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4DB74: AryUnlock
  loc_C4DB77: FFree1Var var_F8 = ""
  loc_C4DB7A: LitI2_Byte 1
  loc_C4DB7C: PopTmpLdAd2 var_C6
  loc_C4DB7F: FLdPr var_15C
  loc_C4DB82: Call clsfacipago.Move(from_stack_1v)
  loc_C4DB87: FLdPr Me
  loc_C4DB8A: MemLdRfVar from_stack_1.global_104
  loc_C4DB8D: NextI4 var_250, loc_C4DAFB
  loc_C4DB92: LitNothing
  loc_C4DB94: FStAd var_15C 
  loc_C4DB98: LitStr vbNullString
  loc_C4DB9B: FLdPr Me
  loc_C4DB9E: MemStStrCopy
  loc_C4DBA2: LitI2_Byte 1
  loc_C4DBA4: FLdPr Me
  loc_C4DBA7: MemLdRfVar from_stack_1.global_84
  loc_C4DBAA: FLdPr Me
  loc_C4DBAD: MemLdStr global_80
  loc_C4DBB0: LitI2_Byte 1
  loc_C4DBB2: FnUBound
  loc_C4DBB4: CI2I4
  loc_C4DBB5: ForI2 var_25C
  loc_C4DBBB: FLdPr Me
  loc_C4DBBE: MemLdStr global_96
  loc_C4DBC1: FLdPr Me
  loc_C4DBC4: MemLdI2 global_84
  loc_C4DBC7: CI4UI1
  loc_C4DBC8: FLdPr Me
  loc_C4DBCB: MemLdStr global_80
  loc_C4DBCE: Ary1LdPr
  loc_C4DBCF: MemLdStr global_0
  loc_C4DBD2: ConcatStr
  loc_C4DBD3: FStStrNoPop var_FC
  loc_C4DBD6: LitStr ", "
  loc_C4DBD9: ConcatStr
  loc_C4DBDA: FStStrNoPop var_110
  loc_C4DBDD: FLdPr Me
  loc_C4DBE0: MemStStrCopy
  loc_C4DBE4: FFreeStr var_FC = ""
  loc_C4DBEB: LitI2_Byte 0
  loc_C4DBED: LitI4 0
  loc_C4DBF2: FLdPr Me
  loc_C4DBF5: MemLdStr global_92
  loc_C4DBF8: AryLock
  loc_C4DBFB: Ary1LdPr
  loc_C4DBFC: MemLdRfVar from_stack_1.global_40
  loc_C4DBFF: CVarRef
  loc_C4DC04: LitI2_Byte &HFF
  loc_C4DC06: LitI4 0
  loc_C4DC0B: FLdPr Me
  loc_C4DC0E: MemLdI2 global_84
  loc_C4DC11: CI4UI1
  loc_C4DC12: FLdPr Me
  loc_C4DC15: MemLdStr global_80
  loc_C4DC18: Ary1LdPr
  loc_C4DC19: MemLdStr global_8
  loc_C4DC1C: Ary1LdPr
  loc_C4DC1D: MemLdStr global_40
  loc_C4DC20: CVarStr var_B0
  loc_C4DC23: PopAdLdVar
  loc_C4DC24: FLdRfVar var_258
  loc_C4DC27: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4DC2C: AryUnlock
  loc_C4DC2F: LitI2_Byte 0
  loc_C4DC31: LitI4 0
  loc_C4DC36: FLdPr Me
  loc_C4DC39: MemLdStr global_92
  loc_C4DC3C: AryLock
  loc_C4DC3F: Ary1LdPr
  loc_C4DC40: MemLdRfVar from_stack_1.global_44
  loc_C4DC43: CVarRef
  loc_C4DC48: LitI2_Byte &HFF
  loc_C4DC4A: LitI4 0
  loc_C4DC4F: FLdPr Me
  loc_C4DC52: MemLdI2 global_84
  loc_C4DC55: CI4UI1
  loc_C4DC56: FLdPr Me
  loc_C4DC59: MemLdStr global_80
  loc_C4DC5C: Ary1LdPr
  loc_C4DC5D: MemLdStr global_8
  loc_C4DC60: Ary1LdPr
  loc_C4DC61: MemLdStr global_44
  loc_C4DC64: CVarStr var_B0
  loc_C4DC67: PopAdLdVar
  loc_C4DC68: FLdRfVar var_258
  loc_C4DC6B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4DC70: AryUnlock
  loc_C4DC73: LitI2_Byte 0
  loc_C4DC75: LitI4 0
  loc_C4DC7A: FLdPr Me
  loc_C4DC7D: MemLdStr global_92
  loc_C4DC80: AryLock
  loc_C4DC83: Ary1LdPr
  loc_C4DC84: MemLdRfVar from_stack_1.global_48
  loc_C4DC87: CVarRef
  loc_C4DC8C: LitI2_Byte &HFF
  loc_C4DC8E: LitI4 0
  loc_C4DC93: FLdPr Me
  loc_C4DC96: MemLdI2 global_84
  loc_C4DC99: CI4UI1
  loc_C4DC9A: FLdPr Me
  loc_C4DC9D: MemLdStr global_80
  loc_C4DCA0: Ary1LdPr
  loc_C4DCA1: MemLdStr global_8
  loc_C4DCA4: Ary1LdPr
  loc_C4DCA5: MemLdStr global_48
  loc_C4DCA8: CVarStr var_B0
  loc_C4DCAB: PopAdLdVar
  loc_C4DCAC: FLdRfVar var_258
  loc_C4DCAF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4DCB4: AryUnlock
  loc_C4DCB7: LitI2_Byte 0
  loc_C4DCB9: LitI4 0
  loc_C4DCBE: FLdPr Me
  loc_C4DCC1: MemLdStr global_92
  loc_C4DCC4: AryLock
  loc_C4DCC7: Ary1LdPr
  loc_C4DCC8: MemLdRfVar from_stack_1.bLogos
  loc_C4DCCB: CVarRef
  loc_C4DCD0: LitI2_Byte &HFF
  loc_C4DCD2: LitI4 0
  loc_C4DCD7: FLdPr Me
  loc_C4DCDA: MemLdI2 global_84
  loc_C4DCDD: CI4UI1
  loc_C4DCDE: FLdPr Me
  loc_C4DCE1: MemLdStr global_80
  loc_C4DCE4: Ary1LdPr
  loc_C4DCE5: MemLdStr global_8
  loc_C4DCE8: Ary1LdPr
  loc_C4DCE9: MemLdStr bLogos
  loc_C4DCEC: CVarStr var_B0
  loc_C4DCEF: PopAdLdVar
  loc_C4DCF0: FLdRfVar var_258
  loc_C4DCF3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4DCF8: AryUnlock
  loc_C4DCFB: LitI2_Byte 0
  loc_C4DCFD: LitI4 0
  loc_C4DD02: FLdPr Me
  loc_C4DD05: MemLdStr global_92
  loc_C4DD08: AryLock
  loc_C4DD0B: Ary1LdPr
  loc_C4DD0C: MemLdRfVar from_stack_1.global_56
  loc_C4DD0F: CVarRef
  loc_C4DD14: LitI2_Byte &HFF
  loc_C4DD16: LitI4 0
  loc_C4DD1B: FLdPr Me
  loc_C4DD1E: MemLdI2 global_84
  loc_C4DD21: CI4UI1
  loc_C4DD22: FLdPr Me
  loc_C4DD25: MemLdStr global_80
  loc_C4DD28: Ary1LdPr
  loc_C4DD29: MemLdStr global_8
  loc_C4DD2C: Ary1LdPr
  loc_C4DD2D: MemLdStr global_56
  loc_C4DD30: CVarStr var_B0
  loc_C4DD33: PopAdLdVar
  loc_C4DD34: FLdRfVar var_258
  loc_C4DD37: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4DD3C: AryUnlock
  loc_C4DD3F: LitI2_Byte 0
  loc_C4DD41: LitI4 0
  loc_C4DD46: FLdPr Me
  loc_C4DD49: MemLdStr global_92
  loc_C4DD4C: AryLock
  loc_C4DD4F: Ary1LdPr
  loc_C4DD50: MemLdRfVar from_stack_1.global_60
  loc_C4DD53: CVarRef
  loc_C4DD58: LitI2_Byte &HFF
  loc_C4DD5A: LitI4 0
  loc_C4DD5F: FLdPr Me
  loc_C4DD62: MemLdI2 global_84
  loc_C4DD65: CI4UI1
  loc_C4DD66: FLdPr Me
  loc_C4DD69: MemLdStr global_80
  loc_C4DD6C: Ary1LdPr
  loc_C4DD6D: MemLdStr global_8
  loc_C4DD70: Ary1LdPr
  loc_C4DD71: MemLdStr global_60
  loc_C4DD74: CVarStr var_B0
  loc_C4DD77: PopAdLdVar
  loc_C4DD78: FLdRfVar var_258
  loc_C4DD7B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4DD80: AryUnlock
  loc_C4DD83: LitI2_Byte 0
  loc_C4DD85: LitI4 0
  loc_C4DD8A: FLdPr Me
  loc_C4DD8D: MemLdStr global_92
  loc_C4DD90: AryLock
  loc_C4DD93: Ary1LdPr
  loc_C4DD94: MemLdRfVar from_stack_1.global_64
  loc_C4DD97: CVarRef
  loc_C4DD9C: LitI2_Byte &HFF
  loc_C4DD9E: LitI4 0
  loc_C4DDA3: FLdPr Me
  loc_C4DDA6: MemLdI2 global_84
  loc_C4DDA9: CI4UI1
  loc_C4DDAA: FLdPr Me
  loc_C4DDAD: MemLdStr global_80
  loc_C4DDB0: Ary1LdPr
  loc_C4DDB1: MemLdStr global_8
  loc_C4DDB4: Ary1LdPr
  loc_C4DDB5: MemLdStr global_64
  loc_C4DDB8: CVarStr var_B0
  loc_C4DDBB: PopAdLdVar
  loc_C4DDBC: FLdRfVar var_258
  loc_C4DDBF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_C4DDC4: AryUnlock
  loc_C4DDC7: FLdPr Me
  loc_C4DDCA: MemLdRfVar from_stack_1.global_84
  loc_C4DDCD: NextI2 var_25C, loc_C4DBBB
  loc_C4DDD2: FLdPr Me
  loc_C4DDD5: MemLdStr global_96
  loc_C4DDD8: FnLenStr
  loc_C4DDD9: LitI4 2
  loc_C4DDDE: SubI4
  loc_C4DDDF: FLdPr Me
  loc_C4DDE2: MemLdRfVar from_stack_1.global_96
  loc_C4DDE5: CVarRef
  loc_C4DDEA: FLdRfVar var_F8
  loc_C4DDED: ImpAdCallFPR4  = Left(, )
  loc_C4DDF2: FLdRfVar var_F8
  loc_C4DDF5: CStrVarTmp
  loc_C4DDF6: FStStrNoPop var_FC
  loc_C4DDF9: FLdPr Me
  loc_C4DDFC: MemStStrCopy
  loc_C4DE00: FFree1Str var_FC
  loc_C4DE03: FFree1Var var_F8 = ""
  loc_C4DE06: LitI2_Byte &HFF
  loc_C4DE08: FLdPr Me
  loc_C4DE0B: MemStI2 bGenerado
  loc_C4DE0E: LitI4 0
  loc_C4DE13: CI2I4
  loc_C4DE14: FLdPr Me
  loc_C4DE17: Me.MousePointer = from_stack_1
  loc_C4DE1C: LitVarStr var_B0, vbNullString
  loc_C4DE21: PopAdLdVar
  loc_C4DE22: FLdPr Me
  loc_C4DE25: VCallAd Control_ID_statusBar
  loc_C4DE28: FStAdFunc var_C4
  loc_C4DE2B: FLdPr var_C4
  loc_C4DE2E: LateIdSt
  loc_C4DE33: FFree1Ad var_C4
  loc_C4DE36: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'C03A58
  'Data Table: 4FBF24
  loc_C0311C: FLdRfVar var_8C
  loc_C0311F: LitI2_Byte 0
  loc_C03121: LitI2_Byte &HFF
  loc_C03123: ImpAdLdI4 MemVar_D93C84
  loc_C03126: FLdPr Me
  loc_C03129: MemLdRfVar from_stack_1.global_56
  loc_C0312C: NewIfNullPr IFileSystem3
  loc_C0312F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_C03134: ILdRf var_8C
  loc_C03137: FLdPr Me
  loc_C0313A: MemStVarAd
  loc_C0313E: FFree1Ad var_8C
  loc_C03141: LitI2_Byte &HFF
  loc_C03143: ImpAdStI2 MemVar_D93C8A
  loc_C03146: Call Proc_358_35_C17788()
  loc_C0314B: LitI2_Byte 1
  loc_C0314D: FLdPr Me
  loc_C03150: MemLdRfVar from_stack_1.global_84
  loc_C03153: FLdPr Me
  loc_C03156: MemLdStr global_80
  loc_C03159: LitI2_Byte 1
  loc_C0315B: FnUBound
  loc_C0315D: CI2I4
  loc_C0315E: ForI2 var_90
  loc_C03164: FLdPr Me
  loc_C03167: MemLdI2 global_84
  loc_C0316A: CI4UI1
  loc_C0316B: FLdPr Me
  loc_C0316E: MemLdStr global_80
  loc_C03171: AryLock
  loc_C03174: Ary1LdRf
  loc_C03175: FStR4 var_98
  loc_C03178: LitVarStr var_A8, "  <tr align=""left"" class=""Encabezado"">"
  loc_C0317D: PopAdLdVar
  loc_C0317E: FLdPr Me
  loc_C03181: MemLdRfVar from_stack_1.global_60
  loc_C03184: LdPrVar
  loc_C03186: LateMemCall
  loc_C0318C: LitStr "    <th colspan=""17""><strong>Estado: "
  loc_C0318F: FMemLdR4 var_98(0)
  loc_C03194: ConcatStr
  loc_C03195: FStStrNoPop var_BC
  loc_C03198: LitStr "</strong></th>"
  loc_C0319B: ConcatStr
  loc_C0319C: CVarStr var_CC
  loc_C0319F: PopAdLdVar
  loc_C031A0: FLdPr Me
  loc_C031A3: MemLdRfVar from_stack_1.global_60
  loc_C031A6: LdPrVar
  loc_C031A8: LateMemCall
  loc_C031AE: FFree1Str var_BC
  loc_C031B1: FFree1Var var_CC = ""
  loc_C031B4: LitVarStr var_A8, "  </tr>"
  loc_C031B9: PopAdLdVar
  loc_C031BA: FLdPr Me
  loc_C031BD: MemLdRfVar from_stack_1.global_60
  loc_C031C0: LdPrVar
  loc_C031C2: LateMemCall
  loc_C031C8: LitI4 1
  loc_C031CD: FLdPr Me
  loc_C031D0: MemLdRfVar from_stack_1.global_88
  loc_C031D3: FMemLdR4 var_98(4)
  loc_C031D8: LitI2_Byte 1
  loc_C031DA: FnUBound
  loc_C031DC: ForI4 var_D4
  loc_C031E2: FLdPr Me
  loc_C031E5: MemLdStr global_88
  loc_C031E8: FMemLdR4 var_98(4)
  loc_C031ED: AryLock
  loc_C031F0: Ary1LdRf
  loc_C031F1: FStR4 var_DC
  loc_C031F4: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C031F9: PopAdLdVar
  loc_C031FA: FLdPr Me
  loc_C031FD: MemLdRfVar from_stack_1.global_60
  loc_C03200: LdPrVar
  loc_C03202: LateMemCall
  loc_C03208: FLdRfVar var_DE
  loc_C0320B: FLdPr Me
  loc_C0320E: VCallAd Control_ID_CuentaOpt
  loc_C03211: FStAdFunc var_8C
  loc_C03214: FLdPr var_8C
  loc_C03217:  = Me.Value
  loc_C0321C: FLdI2 var_DE
  loc_C0321F: FFree1Ad var_8C
  loc_C03222: BranchF loc_C0327E
  loc_C03225: LitStr vbNullString
  loc_C03228: LitI2_Byte 0
  loc_C0322A: LitI2_Byte 0
  loc_C0322C: LitI2_Byte 0
  loc_C0322E: LitStr "right"
  loc_C03231: FMemLdR4 var_DC(0)
  loc_C03236: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0323B: CVarStr var_CC
  loc_C0323E: PopAdLdVar
  loc_C0323F: FLdPr Me
  loc_C03242: MemLdRfVar from_stack_1.global_60
  loc_C03245: LdPrVar
  loc_C03247: LateMemCall
  loc_C0324D: FFree1Var var_CC = ""
  loc_C03250: LitStr vbNullString
  loc_C03253: LitI2_Byte 0
  loc_C03255: LitI2_Byte 0
  loc_C03257: LitI2_Byte 0
  loc_C03259: LitStr "left"
  loc_C0325C: FMemLdR4 var_DC(4)
  loc_C03261: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03266: CVarStr var_CC
  loc_C03269: PopAdLdVar
  loc_C0326A: FLdPr Me
  loc_C0326D: MemLdRfVar from_stack_1.global_60
  loc_C03270: LdPrVar
  loc_C03272: LateMemCall
  loc_C03278: FFree1Var var_CC = ""
  loc_C0327B: Branch loc_C032D4
  loc_C0327E: LitStr vbNullString
  loc_C03281: LitI2_Byte 0
  loc_C03283: LitI2_Byte 0
  loc_C03285: LitI2_Byte 0
  loc_C03287: LitStr "left"
  loc_C0328A: FMemLdR4 var_DC(4)
  loc_C0328F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03294: CVarStr var_CC
  loc_C03297: PopAdLdVar
  loc_C03298: FLdPr Me
  loc_C0329B: MemLdRfVar from_stack_1.global_60
  loc_C0329E: LdPrVar
  loc_C032A0: LateMemCall
  loc_C032A6: FFree1Var var_CC = ""
  loc_C032A9: LitStr vbNullString
  loc_C032AC: LitI2_Byte 0
  loc_C032AE: LitI2_Byte 0
  loc_C032B0: LitI2_Byte 0
  loc_C032B2: LitStr "right"
  loc_C032B5: FMemLdR4 var_DC(0)
  loc_C032BA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C032BF: CVarStr var_CC
  loc_C032C2: PopAdLdVar
  loc_C032C3: FLdPr Me
  loc_C032C6: MemLdRfVar from_stack_1.global_60
  loc_C032C9: LdPrVar
  loc_C032CB: LateMemCall
  loc_C032D1: FFree1Var var_CC = ""
  loc_C032D4: LitStr vbNullString
  loc_C032D7: LitI2_Byte 0
  loc_C032D9: LitI2_Byte 0
  loc_C032DB: LitI2_Byte 0
  loc_C032DD: LitStr "left"
  loc_C032E0: FMemLdR4 var_DC(8)
  loc_C032E5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C032EA: CVarStr var_CC
  loc_C032ED: PopAdLdVar
  loc_C032EE: FLdPr Me
  loc_C032F1: MemLdRfVar from_stack_1.global_60
  loc_C032F4: LdPrVar
  loc_C032F6: LateMemCall
  loc_C032FC: FFree1Var var_CC = ""
  loc_C032FF: LitStr vbNullString
  loc_C03302: LitI2_Byte 0
  loc_C03304: LitI2_Byte 0
  loc_C03306: LitI2_Byte 0
  loc_C03308: LitStr "left"
  loc_C0330B: FMemLdR4 var_DC(12)
  loc_C03310: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03315: CVarStr var_CC
  loc_C03318: PopAdLdVar
  loc_C03319: FLdPr Me
  loc_C0331C: MemLdRfVar from_stack_1.global_60
  loc_C0331F: LdPrVar
  loc_C03321: LateMemCall
  loc_C03327: FFree1Var var_CC = ""
  loc_C0332A: LitStr vbNullString
  loc_C0332D: LitI2_Byte 0
  loc_C0332F: LitI2_Byte 0
  loc_C03331: LitI2_Byte 0
  loc_C03333: LitStr "right"
  loc_C03336: FMemLdR4 var_DC(28)
  loc_C0333B: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03340: CVarStr var_CC
  loc_C03343: PopAdLdVar
  loc_C03344: FLdPr Me
  loc_C03347: MemLdRfVar from_stack_1.global_60
  loc_C0334A: LdPrVar
  loc_C0334C: LateMemCall
  loc_C03352: FFree1Var var_CC = ""
  loc_C03355: LitStr vbNullString
  loc_C03358: LitI2_Byte 0
  loc_C0335A: LitI2_Byte 0
  loc_C0335C: LitI2_Byte 0
  loc_C0335E: LitStr "right"
  loc_C03361: FMemLdR4 var_DC(32)
  loc_C03366: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0336B: CVarStr var_CC
  loc_C0336E: PopAdLdVar
  loc_C0336F: FLdPr Me
  loc_C03372: MemLdRfVar from_stack_1.global_60
  loc_C03375: LdPrVar
  loc_C03377: LateMemCall
  loc_C0337D: FFree1Var var_CC = ""
  loc_C03380: LitStr vbNullString
  loc_C03383: LitI2_Byte 0
  loc_C03385: LitI2_Byte 0
  loc_C03387: LitI2_Byte 0
  loc_C03389: LitStr "right"
  loc_C0338C: FMemLdR4 var_DC(36)
  loc_C03391: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03396: CVarStr var_CC
  loc_C03399: PopAdLdVar
  loc_C0339A: FLdPr Me
  loc_C0339D: MemLdRfVar from_stack_1.global_60
  loc_C033A0: LdPrVar
  loc_C033A2: LateMemCall
  loc_C033A8: FFree1Var var_CC = ""
  loc_C033AB: LitStr vbNullString
  loc_C033AE: LitI2_Byte 0
  loc_C033B0: LitI2_Byte 0
  loc_C033B2: LitI2_Byte 0
  loc_C033B4: LitStr "center"
  loc_C033B7: FMemLdR4 var_DC(16)
  loc_C033BC: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C033C1: CVarStr var_CC
  loc_C033C4: PopAdLdVar
  loc_C033C5: FLdPr Me
  loc_C033C8: MemLdRfVar from_stack_1.global_60
  loc_C033CB: LdPrVar
  loc_C033CD: LateMemCall
  loc_C033D3: FFree1Var var_CC = ""
  loc_C033D6: LitStr vbNullString
  loc_C033D9: LitI2_Byte 0
  loc_C033DB: LitI2_Byte 0
  loc_C033DD: LitI2_Byte 0
  loc_C033DF: LitStr "right"
  loc_C033E2: FMemLdR4 var_DC(20)
  loc_C033E7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C033EC: CVarStr var_CC
  loc_C033EF: PopAdLdVar
  loc_C033F0: FLdPr Me
  loc_C033F3: MemLdRfVar from_stack_1.global_60
  loc_C033F6: LdPrVar
  loc_C033F8: LateMemCall
  loc_C033FE: FFree1Var var_CC = ""
  loc_C03401: LitStr vbNullString
  loc_C03404: LitI2_Byte 0
  loc_C03406: LitI2_Byte 0
  loc_C03408: LitI2_Byte 0
  loc_C0340A: LitStr "right"
  loc_C0340D: FMemLdR4 var_DC(24)
  loc_C03412: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03417: CVarStr var_CC
  loc_C0341A: PopAdLdVar
  loc_C0341B: FLdPr Me
  loc_C0341E: MemLdRfVar from_stack_1.global_60
  loc_C03421: LdPrVar
  loc_C03423: LateMemCall
  loc_C03429: FFree1Var var_CC = ""
  loc_C0342C: LitStr vbNullString
  loc_C0342F: LitI2_Byte 0
  loc_C03431: LitI2_Byte 0
  loc_C03433: LitI2_Byte 0
  loc_C03435: LitStr "right"
  loc_C03438: FMemLdR4 var_DC(40)
  loc_C0343D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03442: CVarStr var_CC
  loc_C03445: PopAdLdVar
  loc_C03446: FLdPr Me
  loc_C03449: MemLdRfVar from_stack_1.global_60
  loc_C0344C: LdPrVar
  loc_C0344E: LateMemCall
  loc_C03454: FFree1Var var_CC = ""
  loc_C03457: LitStr vbNullString
  loc_C0345A: LitI2_Byte 0
  loc_C0345C: LitI2_Byte 0
  loc_C0345E: LitI2_Byte 0
  loc_C03460: LitStr "right"
  loc_C03463: FMemLdR4 var_DC(44)
  loc_C03468: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0346D: CVarStr var_CC
  loc_C03470: PopAdLdVar
  loc_C03471: FLdPr Me
  loc_C03474: MemLdRfVar from_stack_1.global_60
  loc_C03477: LdPrVar
  loc_C03479: LateMemCall
  loc_C0347F: FFree1Var var_CC = ""
  loc_C03482: LitStr vbNullString
  loc_C03485: LitI2_Byte 0
  loc_C03487: LitI2_Byte 0
  loc_C03489: LitI2_Byte 0
  loc_C0348B: LitStr "right"
  loc_C0348E: FMemLdR4 var_DC(48)
  loc_C03493: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03498: CVarStr var_CC
  loc_C0349B: PopAdLdVar
  loc_C0349C: FLdPr Me
  loc_C0349F: MemLdRfVar from_stack_1.global_60
  loc_C034A2: LdPrVar
  loc_C034A4: LateMemCall
  loc_C034AA: FFree1Var var_CC = ""
  loc_C034AD: LitStr vbNullString
  loc_C034B0: LitI2_Byte 0
  loc_C034B2: LitI2_Byte 0
  loc_C034B4: LitI2_Byte 0
  loc_C034B6: LitStr "right"
  loc_C034B9: FMemLdR4 var_DC(52)
  loc_C034BE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C034C3: CVarStr var_CC
  loc_C034C6: PopAdLdVar
  loc_C034C7: FLdPr Me
  loc_C034CA: MemLdRfVar from_stack_1.global_60
  loc_C034CD: LdPrVar
  loc_C034CF: LateMemCall
  loc_C034D5: FFree1Var var_CC = ""
  loc_C034D8: LitStr vbNullString
  loc_C034DB: LitI2_Byte 0
  loc_C034DD: LitI2_Byte 0
  loc_C034DF: LitI2_Byte 0
  loc_C034E1: LitStr "right"
  loc_C034E4: FMemLdR4 var_DC(56)
  loc_C034E9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C034EE: CVarStr var_CC
  loc_C034F1: PopAdLdVar
  loc_C034F2: FLdPr Me
  loc_C034F5: MemLdRfVar from_stack_1.global_60
  loc_C034F8: LdPrVar
  loc_C034FA: LateMemCall
  loc_C03500: FFree1Var var_CC = ""
  loc_C03503: LitStr vbNullString
  loc_C03506: LitI2_Byte 0
  loc_C03508: LitI2_Byte 0
  loc_C0350A: LitI2_Byte 0
  loc_C0350C: LitStr "right"
  loc_C0350F: FMemLdR4 var_DC(60)
  loc_C03514: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03519: CVarStr var_CC
  loc_C0351C: PopAdLdVar
  loc_C0351D: FLdPr Me
  loc_C03520: MemLdRfVar from_stack_1.global_60
  loc_C03523: LdPrVar
  loc_C03525: LateMemCall
  loc_C0352B: FFree1Var var_CC = ""
  loc_C0352E: LitStr vbNullString
  loc_C03531: LitI2_Byte 0
  loc_C03533: LitI2_Byte 0
  loc_C03535: LitI2_Byte 0
  loc_C03537: LitStr "right"
  loc_C0353A: FMemLdR4 var_DC(64)
  loc_C0353F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03544: CVarStr var_CC
  loc_C03547: PopAdLdVar
  loc_C03548: FLdPr Me
  loc_C0354B: MemLdRfVar from_stack_1.global_60
  loc_C0354E: LdPrVar
  loc_C03550: LateMemCall
  loc_C03556: FFree1Var var_CC = ""
  loc_C03559: LitVarStr var_A8, "     </tr>"
  loc_C0355E: PopAdLdVar
  loc_C0355F: FLdPr Me
  loc_C03562: MemLdRfVar from_stack_1.global_60
  loc_C03565: LdPrVar
  loc_C03567: LateMemCall
  loc_C0356D: LitI4 0
  loc_C03572: FStR4 var_DC
  loc_C03575: AryUnlock
  loc_C03578: FLdPr Me
  loc_C0357B: MemLdRfVar from_stack_1.global_88
  loc_C0357E: NextI4 var_D4, loc_C031E2
  loc_C03583: LitI4 0
  loc_C03588: FMemLdR4 var_98(8)
  loc_C0358D: AryLock
  loc_C03590: Ary1LdRf
  loc_C03591: FStR4 var_E8
  loc_C03594: LitVarStr var_A8, "  <tr align=""right"" class=""SubTotales"">"
  loc_C03599: PopAdLdVar
  loc_C0359A: FLdPr Me
  loc_C0359D: MemLdRfVar from_stack_1.global_60
  loc_C035A0: LdPrVar
  loc_C035A2: LateMemCall
  loc_C035A8: LitStr "    <td colspan=""10"">Subtotales Estado: "
  loc_C035AB: FLdPr Me
  loc_C035AE: MemLdI2 global_84
  loc_C035B1: CI4UI1
  loc_C035B2: FLdPr Me
  loc_C035B5: MemLdStr global_80
  loc_C035B8: Ary1LdPr
  loc_C035B9: MemLdStr global_0
  loc_C035BC: ConcatStr
  loc_C035BD: FStStrNoPop var_BC
  loc_C035C0: LitStr "</td>"
  loc_C035C3: ConcatStr
  loc_C035C4: CVarStr var_CC
  loc_C035C7: PopAdLdVar
  loc_C035C8: FLdPr Me
  loc_C035CB: MemLdRfVar from_stack_1.global_60
  loc_C035CE: LdPrVar
  loc_C035D0: LateMemCall
  loc_C035D6: FFree1Str var_BC
  loc_C035D9: FFree1Var var_CC = ""
  loc_C035DC: LitStr vbNullString
  loc_C035DF: LitI2_Byte 0
  loc_C035E1: LitI2_Byte 0
  loc_C035E3: LitI2_Byte 0
  loc_C035E5: LitStr "right"
  loc_C035E8: FMemLdR4 var_E8(40)
  loc_C035ED: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C035F2: CVarStr var_CC
  loc_C035F5: PopAdLdVar
  loc_C035F6: FLdPr Me
  loc_C035F9: MemLdRfVar from_stack_1.global_60
  loc_C035FC: LdPrVar
  loc_C035FE: LateMemCall
  loc_C03604: FFree1Var var_CC = ""
  loc_C03607: LitStr vbNullString
  loc_C0360A: LitI2_Byte 0
  loc_C0360C: LitI2_Byte 0
  loc_C0360E: LitI2_Byte 0
  loc_C03610: LitStr "right"
  loc_C03613: FMemLdR4 var_E8(44)
  loc_C03618: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0361D: CVarStr var_CC
  loc_C03620: PopAdLdVar
  loc_C03621: FLdPr Me
  loc_C03624: MemLdRfVar from_stack_1.global_60
  loc_C03627: LdPrVar
  loc_C03629: LateMemCall
  loc_C0362F: FFree1Var var_CC = ""
  loc_C03632: LitStr vbNullString
  loc_C03635: LitI2_Byte 0
  loc_C03637: LitI2_Byte 0
  loc_C03639: LitI2_Byte 0
  loc_C0363B: LitStr "right"
  loc_C0363E: FMemLdR4 var_E8(48)
  loc_C03643: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03648: CVarStr var_CC
  loc_C0364B: PopAdLdVar
  loc_C0364C: FLdPr Me
  loc_C0364F: MemLdRfVar from_stack_1.global_60
  loc_C03652: LdPrVar
  loc_C03654: LateMemCall
  loc_C0365A: FFree1Var var_CC = ""
  loc_C0365D: LitStr vbNullString
  loc_C03660: LitI2_Byte 0
  loc_C03662: LitI2_Byte 0
  loc_C03664: LitI2_Byte 0
  loc_C03666: LitStr "right"
  loc_C03669: FMemLdR4 var_E8(52)
  loc_C0366E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03673: CVarStr var_CC
  loc_C03676: PopAdLdVar
  loc_C03677: FLdPr Me
  loc_C0367A: MemLdRfVar from_stack_1.global_60
  loc_C0367D: LdPrVar
  loc_C0367F: LateMemCall
  loc_C03685: FFree1Var var_CC = ""
  loc_C03688: LitStr vbNullString
  loc_C0368B: LitI2_Byte 0
  loc_C0368D: LitI2_Byte 0
  loc_C0368F: LitI2_Byte 0
  loc_C03691: LitStr "right"
  loc_C03694: FMemLdR4 var_E8(56)
  loc_C03699: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0369E: CVarStr var_CC
  loc_C036A1: PopAdLdVar
  loc_C036A2: FLdPr Me
  loc_C036A5: MemLdRfVar from_stack_1.global_60
  loc_C036A8: LdPrVar
  loc_C036AA: LateMemCall
  loc_C036B0: FFree1Var var_CC = ""
  loc_C036B3: LitStr vbNullString
  loc_C036B6: LitI2_Byte 0
  loc_C036B8: LitI2_Byte 0
  loc_C036BA: LitI2_Byte 0
  loc_C036BC: LitStr "right"
  loc_C036BF: FMemLdR4 var_E8(60)
  loc_C036C4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C036C9: CVarStr var_CC
  loc_C036CC: PopAdLdVar
  loc_C036CD: FLdPr Me
  loc_C036D0: MemLdRfVar from_stack_1.global_60
  loc_C036D3: LdPrVar
  loc_C036D5: LateMemCall
  loc_C036DB: FFree1Var var_CC = ""
  loc_C036DE: LitStr vbNullString
  loc_C036E1: LitI2_Byte 0
  loc_C036E3: LitI2_Byte 0
  loc_C036E5: LitI2_Byte 0
  loc_C036E7: LitStr "right"
  loc_C036EA: FMemLdR4 var_E8(64)
  loc_C036EF: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C036F4: CVarStr var_CC
  loc_C036F7: PopAdLdVar
  loc_C036F8: FLdPr Me
  loc_C036FB: MemLdRfVar from_stack_1.global_60
  loc_C036FE: LdPrVar
  loc_C03700: LateMemCall
  loc_C03706: FFree1Var var_CC = ""
  loc_C03709: LitVarStr var_A8, "  </tr>"
  loc_C0370E: PopAdLdVar
  loc_C0370F: FLdPr Me
  loc_C03712: MemLdRfVar from_stack_1.global_60
  loc_C03715: LdPrVar
  loc_C03717: LateMemCall
  loc_C0371D: LitVarStr var_A8, "  <tr class=""LineaDato""><td colspan=""17"">&nbsp;</td></tr>"
  loc_C03722: PopAdLdVar
  loc_C03723: FLdPr Me
  loc_C03726: MemLdRfVar from_stack_1.global_60
  loc_C03729: LdPrVar
  loc_C0372B: LateMemCall
  loc_C03731: LitI4 0
  loc_C03736: FStR4 var_E8
  loc_C03739: AryUnlock
  loc_C0373C: LitI4 0
  loc_C03741: FStR4 var_98
  loc_C03744: AryUnlock
  loc_C03747: FLdPr Me
  loc_C0374A: MemLdRfVar from_stack_1.global_84
  loc_C0374D: NextI2 var_90, loc_C03164
  loc_C03752: LitI4 0
  loc_C03757: FLdPr Me
  loc_C0375A: MemLdStr global_92
  loc_C0375D: AryLock
  loc_C03760: Ary1LdRf
  loc_C03761: FStR4 var_F0
  loc_C03764: LitVarStr var_A8, "  <tr align=""right"" class=""Totales"">"
  loc_C03769: PopAdLdVar
  loc_C0376A: FLdPr Me
  loc_C0376D: MemLdRfVar from_stack_1.global_60
  loc_C03770: LdPrVar
  loc_C03772: LateMemCall
  loc_C03778: LitVarStr var_A8, "    <td colspan=""10"">TOTALES:</td>"
  loc_C0377D: PopAdLdVar
  loc_C0377E: FLdPr Me
  loc_C03781: MemLdRfVar from_stack_1.global_60
  loc_C03784: LdPrVar
  loc_C03786: LateMemCall
  loc_C0378C: LitStr vbNullString
  loc_C0378F: LitI2_Byte 0
  loc_C03791: LitI2_Byte 0
  loc_C03793: LitI2_Byte 0
  loc_C03795: LitStr "right"
  loc_C03798: FMemLdR4 var_F0(40)
  loc_C0379D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C037A2: CVarStr var_CC
  loc_C037A5: PopAdLdVar
  loc_C037A6: FLdPr Me
  loc_C037A9: MemLdRfVar from_stack_1.global_60
  loc_C037AC: LdPrVar
  loc_C037AE: LateMemCall
  loc_C037B4: FFree1Var var_CC = ""
  loc_C037B7: LitStr vbNullString
  loc_C037BA: LitI2_Byte 0
  loc_C037BC: LitI2_Byte 0
  loc_C037BE: LitI2_Byte 0
  loc_C037C0: LitStr "right"
  loc_C037C3: FMemLdR4 var_F0(44)
  loc_C037C8: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C037CD: CVarStr var_CC
  loc_C037D0: PopAdLdVar
  loc_C037D1: FLdPr Me
  loc_C037D4: MemLdRfVar from_stack_1.global_60
  loc_C037D7: LdPrVar
  loc_C037D9: LateMemCall
  loc_C037DF: FFree1Var var_CC = ""
  loc_C037E2: LitStr vbNullString
  loc_C037E5: LitI2_Byte 0
  loc_C037E7: LitI2_Byte 0
  loc_C037E9: LitI2_Byte 0
  loc_C037EB: LitStr "right"
  loc_C037EE: FMemLdR4 var_F0(48)
  loc_C037F3: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C037F8: CVarStr var_CC
  loc_C037FB: PopAdLdVar
  loc_C037FC: FLdPr Me
  loc_C037FF: MemLdRfVar from_stack_1.global_60
  loc_C03802: LdPrVar
  loc_C03804: LateMemCall
  loc_C0380A: FFree1Var var_CC = ""
  loc_C0380D: LitStr vbNullString
  loc_C03810: LitI2_Byte 0
  loc_C03812: LitI2_Byte 0
  loc_C03814: LitI2_Byte 0
  loc_C03816: LitStr "right"
  loc_C03819: FMemLdR4 var_F0(52)
  loc_C0381E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03823: CVarStr var_CC
  loc_C03826: PopAdLdVar
  loc_C03827: FLdPr Me
  loc_C0382A: MemLdRfVar from_stack_1.global_60
  loc_C0382D: LdPrVar
  loc_C0382F: LateMemCall
  loc_C03835: FFree1Var var_CC = ""
  loc_C03838: LitStr vbNullString
  loc_C0383B: LitI2_Byte 0
  loc_C0383D: LitI2_Byte 0
  loc_C0383F: LitI2_Byte 0
  loc_C03841: LitStr "right"
  loc_C03844: FMemLdR4 var_F0(56)
  loc_C03849: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C0384E: CVarStr var_CC
  loc_C03851: PopAdLdVar
  loc_C03852: FLdPr Me
  loc_C03855: MemLdRfVar from_stack_1.global_60
  loc_C03858: LdPrVar
  loc_C0385A: LateMemCall
  loc_C03860: FFree1Var var_CC = ""
  loc_C03863: LitStr vbNullString
  loc_C03866: LitI2_Byte 0
  loc_C03868: LitI2_Byte 0
  loc_C0386A: LitI2_Byte 0
  loc_C0386C: LitStr "right"
  loc_C0386F: FMemLdR4 var_F0(60)
  loc_C03874: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C03879: CVarStr var_CC
  loc_C0387C: PopAdLdVar
  loc_C0387D: FLdPr Me
  loc_C03880: MemLdRfVar from_stack_1.global_60
  loc_C03883: LdPrVar
  loc_C03885: LateMemCall
  loc_C0388B: FFree1Var var_CC = ""
  loc_C0388E: LitStr vbNullString
  loc_C03891: LitI2_Byte 0
  loc_C03893: LitI2_Byte 0
  loc_C03895: LitI2_Byte 0
  loc_C03897: LitStr "right"
  loc_C0389A: FMemLdR4 var_F0(64)
  loc_C0389F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C038A4: CVarStr var_CC
  loc_C038A7: PopAdLdVar
  loc_C038A8: FLdPr Me
  loc_C038AB: MemLdRfVar from_stack_1.global_60
  loc_C038AE: LdPrVar
  loc_C038B0: LateMemCall
  loc_C038B6: FFree1Var var_CC = ""
  loc_C038B9: LitVarStr var_A8, "  </tr>"
  loc_C038BE: PopAdLdVar
  loc_C038BF: FLdPr Me
  loc_C038C2: MemLdRfVar from_stack_1.global_60
  loc_C038C5: LdPrVar
  loc_C038C7: LateMemCall
  loc_C038CD: LitI4 0
  loc_C038D2: FStR4 var_F0
  loc_C038D5: AryUnlock
  loc_C038D8: LitVarStr var_A8, "     </tr>"
  loc_C038DD: PopAdLdVar
  loc_C038DE: FLdPr Me
  loc_C038E1: MemLdRfVar from_stack_1.global_60
  loc_C038E4: LdPrVar
  loc_C038E6: LateMemCall
  loc_C038EC: LitVarStr var_A8, "</table>"
  loc_C038F1: PopAdLdVar
  loc_C038F2: FLdPr Me
  loc_C038F5: MemLdRfVar from_stack_1.global_60
  loc_C038F8: LdPrVar
  loc_C038FA: LateMemCall
  loc_C03900: LitVarStr var_A8, "<p>&nbsp;</p>"
  loc_C03905: PopAdLdVar
  loc_C03906: FLdPr Me
  loc_C03909: MemLdRfVar from_stack_1.global_60
  loc_C0390C: LdPrVar
  loc_C0390E: LateMemCall
  loc_C03914: LitVarStr var_A8, "<table border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C03919: PopAdLdVar
  loc_C0391A: FLdPr Me
  loc_C0391D: MemLdRfVar from_stack_1.global_60
  loc_C03920: LdPrVar
  loc_C03922: LateMemCall
  loc_C03928: LitVarStr var_A8, "  <tr align=""center"" class=""Encabezado"">"
  loc_C0392D: PopAdLdVar
  loc_C0392E: FLdPr Me
  loc_C03931: MemLdRfVar from_stack_1.global_60
  loc_C03934: LdPrVar
  loc_C03936: LateMemCall
  loc_C0393C: LitVarStr var_A8, "    <th>Estado </th>"
  loc_C03941: PopAdLdVar
  loc_C03942: FLdPr Me
  loc_C03945: MemLdRfVar from_stack_1.global_60
  loc_C03948: LdPrVar
  loc_C0394A: LateMemCall
  loc_C03950: LitVarStr var_A8, "    <th>Cant. Registros</th>"
  loc_C03955: PopAdLdVar
  loc_C03956: FLdPr Me
  loc_C03959: MemLdRfVar from_stack_1.global_60
  loc_C0395C: LdPrVar
  loc_C0395E: LateMemCall
  loc_C03964: LitVarStr var_A8, "  </tr>"
  loc_C03969: PopAdLdVar
  loc_C0396A: FLdPr Me
  loc_C0396D: MemLdRfVar from_stack_1.global_60
  loc_C03970: LdPrVar
  loc_C03972: LateMemCall
  loc_C03978: LitI4 1
  loc_C0397D: FLdPr Me
  loc_C03980: MemLdRfVar from_stack_1.global_104
  loc_C03983: FLdPr Me
  loc_C03986: MemLdStr global_100
  loc_C03989: LitI2_Byte 1
  loc_C0398B: FnUBound
  loc_C0398D: ForI4 var_F8
  loc_C03993: FLdPr Me
  loc_C03996: MemLdStr global_104
  loc_C03999: FLdPr Me
  loc_C0399C: MemLdStr global_100
  loc_C0399F: AryLock
  loc_C039A2: Ary1LdRf
  loc_C039A3: FStR4 var_100
  loc_C039A6: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_C039AB: PopAdLdVar
  loc_C039AC: FLdPr Me
  loc_C039AF: MemLdRfVar from_stack_1.global_60
  loc_C039B2: LdPrVar
  loc_C039B4: LateMemCall
  loc_C039BA: LitStr vbNullString
  loc_C039BD: LitI2_Byte 0
  loc_C039BF: LitI2_Byte 0
  loc_C039C1: LitI2_Byte 0
  loc_C039C3: LitStr "left"
  loc_C039C6: FMemLdR4 var_100(0)
  loc_C039CB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C039D0: CVarStr var_CC
  loc_C039D3: PopAdLdVar
  loc_C039D4: FLdPr Me
  loc_C039D7: MemLdRfVar from_stack_1.global_60
  loc_C039DA: LdPrVar
  loc_C039DC: LateMemCall
  loc_C039E2: FFree1Var var_CC = ""
  loc_C039E5: LitStr vbNullString
  loc_C039E8: LitI2_Byte 0
  loc_C039EA: LitI2_Byte 0
  loc_C039EC: LitI2_Byte 0
  loc_C039EE: LitStr "right"
  loc_C039F1: FMemLdR4 var_100(4)
  loc_C039F6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_C039FB: CVarStr var_CC
  loc_C039FE: PopAdLdVar
  loc_C039FF: FLdPr Me
  loc_C03A02: MemLdRfVar from_stack_1.global_60
  loc_C03A05: LdPrVar
  loc_C03A07: LateMemCall
  loc_C03A0D: FFree1Var var_CC = ""
  loc_C03A10: LitVarStr var_A8, "     </tr>"
  loc_C03A15: PopAdLdVar
  loc_C03A16: FLdPr Me
  loc_C03A19: MemLdRfVar from_stack_1.global_60
  loc_C03A1C: LdPrVar
  loc_C03A1E: LateMemCall
  loc_C03A24: LitI4 0
  loc_C03A29: FStR4 var_100
  loc_C03A2C: AryUnlock
  loc_C03A2F: FLdPr Me
  loc_C03A32: MemLdRfVar from_stack_1.global_104
  loc_C03A35: NextI4 var_F8, loc_C03993
  loc_C03A3A: Call Proc_358_36_A0FE78()
  loc_C03A3F: FLdPr Me
  loc_C03A42: MemLdRfVar from_stack_1.global_60
  loc_C03A45: LdPrVar
  loc_C03A47: LateMemCall
  loc_C03A4D: LitStr vbNullString
  loc_C03A50: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_C03A55: ExitProcHresult
  loc_C03A56: FStFPR8 var_53FD
End Sub

Public Sub GeneraXLS() '9C036C
  'Data Table: 4FBF24
  loc_9C0354: LitI2_Byte 0
  loc_9C0356: FLdPr Me
  loc_9C0359: MemStI2 bLogos
  loc_9C035C: Call GeneraHTML()
  loc_9C0361: LitI2_Byte &HFF
  loc_9C0363: FLdPr Me
  loc_9C0366: MemStI2 bLogos
  loc_9C0369: ExitProcHresult
  loc_9C036A: ImpAdLdCy MemVar_0
End Sub

Private Function Proc_358_32_A0E4A4() 'A0E4A4
  'Data Table: 4FBF24
  loc_A0E468: LitVar_Missing var_A4
  loc_A0E46B: PopAdLdVar
  loc_A0E46C: LitVarI4
  loc_A0E474: PopAdLdVar
  loc_A0E475: ImpAdLdRf MemVar_D930A4
  loc_A0E478: NewIfNullPr frmCalendario
  loc_A0E47B: frmCalendario.Show from_stack_1, from_stack_2
  loc_A0E480: ImpAdLdRf MemVar_D93028
  loc_A0E483: CDargRef
  loc_A0E487: FLdPr Me
  loc_A0E48A: VCallAd Control_ID_DesdeMsk
  loc_A0E48D: FStAdFunc var_A8
  loc_A0E490: FLdPr var_A8
  loc_A0E493: LateIdSt
  loc_A0E498: FFree1Ad var_A8
  loc_A0E49B: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A0E4A0: ExitProcHresult
End Function

Private Function Proc_358_33_A91E28() 'A91E28
  'Data Table: 4FBF24
  loc_A91D84: FLdPr Me
  loc_A91D87: MemLdI2 global_84
  loc_A91D8A: LitI2_Byte 1
  loc_A91D8C: AddI2
  loc_A91D8D: FLdPr Me
  loc_A91D90: MemStI2 global_84
  loc_A91D93: LitI4 0
  loc_A91D98: FLdPr Me
  loc_A91D9B: MemStI4 global_88
  loc_A91D9E: LitI4 0
  loc_A91DA3: FLdPr Me
  loc_A91DA6: MemLdI2 global_84
  loc_A91DA9: CI4UI1
  loc_A91DAA: FLdPr Me
  loc_A91DAD: MemLdRfVar from_stack_1.global_80
  loc_A91DB0: RedimPreserve
  loc_A91DBA: LitI4 0
  loc_A91DBF: LitI4 0
  loc_A91DC4: FLdPr Me
  loc_A91DC7: MemLdI2 global_84
  loc_A91DCA: CI4UI1
  loc_A91DCB: FLdPr Me
  loc_A91DCE: MemLdStr global_80
  loc_A91DD1: Ary1LdPr
  loc_A91DD2: MemLdRfVar from_stack_1.global_8
  loc_A91DD5: Redim
  loc_A91DDF: FLdRfVar var_88
  loc_A91DE2: FLdPr Me
  loc_A91DE5: MemLdRfVar from_stack_1.global_76
  loc_A91DE8: NewIfNullPr clsfacipago
  loc_A91DEB: from_stack_1 = clsfacipago.EstaFapa
  loc_A91DF0: LitI2_Byte 0
  loc_A91DF2: LitVar_Missing var_BC
  loc_A91DF5: LitI2_Byte 0
  loc_A91DF7: FLdZeroAd var_88
  loc_A91DFA: CVarStr var_9C
  loc_A91DFD: PopAdLdVar
  loc_A91DFE: FLdPr Me
  loc_A91E01: MemLdI2 global_84
  loc_A91E04: CI4UI1
  loc_A91E05: FLdPr Me
  loc_A91E08: MemLdStr global_80
  loc_A91E0B: AryLock
  loc_A91E0E: Ary1LdPr
  loc_A91E0F: MemLdRfVar from_stack_1.global_0
  loc_A91E12: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_A91E17: AryUnlock
  loc_A91E1A: FFreeVar var_9C = ""
  loc_A91E21: Call Proc_358_34_B76F50()
  loc_A91E26: ExitProcHresult
End Function

Private Function Proc_358_34_B76F50() 'B76F50
  'Data Table: 4FBF24
  loc_B76A84: FLdPr Me
  loc_B76A87: MemLdStr global_88
  loc_B76A8A: LitI4 1
  loc_B76A8F: AddI4
  loc_B76A90: FLdPr Me
  loc_B76A93: MemStI4 global_88
  loc_B76A96: LitI4 0
  loc_B76A9B: FLdPr Me
  loc_B76A9E: MemLdStr global_88
  loc_B76AA1: FLdPr Me
  loc_B76AA4: MemLdI2 global_84
  loc_B76AA7: CI4UI1
  loc_B76AA8: FLdPr Me
  loc_B76AAB: MemLdStr global_80
  loc_B76AAE: Ary1LdPr
  loc_B76AAF: MemLdRfVar from_stack_1.global_4
  loc_B76AB2: RedimPreserve
  loc_B76ABC: FLdPr Me
  loc_B76ABF: MemLdStr global_88
  loc_B76AC2: FLdPr Me
  loc_B76AC5: MemLdI2 global_84
  loc_B76AC8: CI4UI1
  loc_B76AC9: FLdPr Me
  loc_B76ACC: MemLdStr global_80
  loc_B76ACF: AryLock
  loc_B76AD2: Ary1LdPr
  loc_B76AD3: MemLdStr global_4
  loc_B76AD6: AryLock
  loc_B76AD9: Ary1LdRf
  loc_B76ADA: FStR4 var_90
  loc_B76ADD: FLdRfVar var_94
  loc_B76AE0: FLdPr Me
  loc_B76AE3: MemLdRfVar from_stack_1.global_76
  loc_B76AE6: NewIfNullPr clsfacipago
  loc_B76AE9: from_stack_1 = clsfacipago.CodiFapa
  loc_B76AEE: LitI2_Byte 0
  loc_B76AF0: LitVar_Missing var_C4
  loc_B76AF3: LitI2_Byte 0
  loc_B76AF5: ILdRf var_94
  loc_B76AF8: CVarI4
  loc_B76AFC: PopAdLdVar
  loc_B76AFD: FMemLdRf unk_4FBE95
  loc_B76B02: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76B07: FFree1Var var_C4 = ""
  loc_B76B0A: FLdRfVar var_C4
  loc_B76B0D: FLdPr Me
  loc_B76B10: MemLdRfVar from_stack_1.global_76
  loc_B76B13: NewIfNullPr clsfacipago
  loc_B76B16: from_stack_1 = clsfacipago.DetaPers
  loc_B76B1B: LitI2_Byte 0
  loc_B76B1D: LitVar_Missing var_D4
  loc_B76B20: LitI2_Byte 0
  loc_B76B22: FLdVar var_C4
  loc_B76B26: FMemLdRf unk_4FBE95
  loc_B76B2B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76B30: FFreeVar var_C4 = ""
  loc_B76B37: FLdRfVar var_E0
  loc_B76B3A: LitVarStr var_A4, "FirmFapa"
  loc_B76B3F: PopAdLdVar
  loc_B76B40: FLdRfVar var_DC
  loc_B76B43: FLdRfVar var_D8
  loc_B76B46: FLdPr Me
  loc_B76B49: MemLdRfVar from_stack_1.global_76
  loc_B76B4C: NewIfNullPr clsfacipago
  loc_B76B4F: from_stack_1v = clsfacipago.RsFrmGet()
  loc_B76B54: FLdPr var_D8
  loc_B76B57:  = Me.Fields
  loc_B76B5C: FLdPr var_DC
  loc_B76B5F: from_stack_2 = Me.Item(from_stack_1)
  loc_B76B64: LitI2_Byte 0
  loc_B76B66: LitVar_Missing var_D4
  loc_B76B69: LitI2_Byte 0
  loc_B76B6B: FLdZeroAd var_E0
  loc_B76B6E: CVarAd
  loc_B76B72: PopAdLdVar
  loc_B76B73: FMemLdRf unk_4FBE95
  loc_B76B78: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76B7D: FFreeAd var_D8 = ""
  loc_B76B84: FFreeVar var_C4 = ""
  loc_B76B8B: FLdRfVar var_E0
  loc_B76B8E: LitVarStr var_A4, "AltaUsua"
  loc_B76B93: PopAdLdVar
  loc_B76B94: FLdRfVar var_DC
  loc_B76B97: FLdRfVar var_D8
  loc_B76B9A: FLdPr Me
  loc_B76B9D: MemLdRfVar from_stack_1.global_76
  loc_B76BA0: NewIfNullPr clsfacipago
  loc_B76BA3: from_stack_1v = clsfacipago.RsFrmGet()
  loc_B76BA8: FLdPr var_D8
  loc_B76BAB:  = Me.Fields
  loc_B76BB0: FLdPr var_DC
  loc_B76BB3: from_stack_2 = Me.Item(from_stack_1)
  loc_B76BB8: LitI2_Byte 0
  loc_B76BBA: LitVar_Missing var_D4
  loc_B76BBD: LitI2_Byte 0
  loc_B76BBF: FLdZeroAd var_E0
  loc_B76BC2: CVarAd
  loc_B76BC6: PopAdLdVar
  loc_B76BC7: FMemLdRf unk_4FBE95
  loc_B76BCC: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76BD1: FFreeAd var_D8 = ""
  loc_B76BD8: FFreeVar var_C4 = ""
  loc_B76BDF: FLdRfVar var_C4
  loc_B76BE2: FLdPr Me
  loc_B76BE5: MemLdRfVar from_stack_1.global_76
  loc_B76BE8: NewIfNullPr clsfacipago
  loc_B76BEB: from_stack_1 = clsfacipago.FealFapa
  loc_B76BF0: LitI2_Byte 0
  loc_B76BF2: LitVar_Missing var_D4
  loc_B76BF5: LitI2_Byte 0
  loc_B76BF7: FLdVar var_C4
  loc_B76BFB: FMemLdRf unk_4FBE95
  loc_B76C00: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76C05: FFreeVar var_C4 = ""
  loc_B76C0C: FLdRfVar var_E2
  loc_B76C0F: FLdPr Me
  loc_B76C12: MemLdRfVar from_stack_1.global_76
  loc_B76C15: NewIfNullPr clsfacipago
  loc_B76C18: from_stack_1 = clsfacipago.CacuFapa
  loc_B76C1D: LitI2_Byte 0
  loc_B76C1F: LitVar_Missing var_C4
  loc_B76C22: LitI2_Byte 0
  loc_B76C24: FLdI2 var_E2
  loc_B76C27: CVarI2 var_A4
  loc_B76C2A: PopAdLdVar
  loc_B76C2B: FMemLdRf unk_4FBE95
  loc_B76C30: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76C35: FFree1Var var_C4 = ""
  loc_B76C38: FLdRfVar var_E2
  loc_B76C3B: FLdPr Me
  loc_B76C3E: MemLdRfVar from_stack_1.global_76
  loc_B76C41: NewIfNullPr clsfacipago
  loc_B76C44: from_stack_1 = clsfacipago.CaapFapa
  loc_B76C49: LitI2_Byte 0
  loc_B76C4B: LitVar_Missing var_C4
  loc_B76C4E: LitI2_Byte 0
  loc_B76C50: FLdI2 var_E2
  loc_B76C53: CVarI2 var_A4
  loc_B76C56: PopAdLdVar
  loc_B76C57: FMemLdRf unk_4FBE95
  loc_B76C5C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76C61: FFree1Var var_C4 = ""
  loc_B76C64: FLdRfVar var_E2
  loc_B76C67: FLdPr Me
  loc_B76C6A: MemLdRfVar from_stack_1.global_76
  loc_B76C6D: NewIfNullPr clsfacipago
  loc_B76C70: from_stack_1 = clsfacipago.CodiTifa
  loc_B76C75: LitI2_Byte 0
  loc_B76C77: LitVar_Missing var_C4
  loc_B76C7A: LitI2_Byte 0
  loc_B76C7C: FLdI2 var_E2
  loc_B76C7F: CVarI2 var_A4
  loc_B76C82: PopAdLdVar
  loc_B76C83: FMemLdRf unk_4FBE95
  loc_B76C88: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76C8D: FFree1Var var_C4 = ""
  loc_B76C90: FLdRfVar var_E2
  loc_B76C93: FLdPr Me
  loc_B76C96: MemLdRfVar from_stack_1.global_76
  loc_B76C99: NewIfNullPr clsfacipago
  loc_B76C9C: from_stack_1 = clsfacipago.CodiOfic
  loc_B76CA1: LitI2_Byte 0
  loc_B76CA3: LitVar_Missing var_C4
  loc_B76CA6: LitI2_Byte 0
  loc_B76CA8: FLdUI1
  loc_B76CAC: CVarUI1
  loc_B76CB0: PopAdLdVar
  loc_B76CB1: FMemLdRf unk_4FBE95
  loc_B76CB6: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76CBB: FFree1Var var_C4 = ""
  loc_B76CBE: FLdRfVar var_E8
  loc_B76CC1: FLdPr Me
  loc_B76CC4: MemLdRfVar from_stack_1.global_76
  loc_B76CC7: NewIfNullPr clsfacipago
  loc_B76CCA: from_stack_1 = clsfacipago.CuenCtct
  loc_B76CCF: LitI2_Byte 0
  loc_B76CD1: LitVar_Missing var_D4
  loc_B76CD4: LitI2_Byte 0
  loc_B76CD6: FLdZeroAd var_E8
  loc_B76CD9: CVarStr var_C4
  loc_B76CDC: PopAdLdVar
  loc_B76CDD: FMemLdRf unk_4FBE95
  loc_B76CE2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76CE7: FFreeVar var_C4 = ""
  loc_B76CEE: FLdRfVar var_F0
  loc_B76CF1: FLdPr Me
  loc_B76CF4: MemLdRfVar from_stack_1.global_76
  loc_B76CF7: NewIfNullPr clsfacipago
  loc_B76CFA: from_stack_1 = clsfacipago.CapiFapa
  loc_B76CFF: LitI2_Byte 0
  loc_B76D01: LitI4 0
  loc_B76D06: FLdPr Me
  loc_B76D09: MemLdI2 global_84
  loc_B76D0C: CI4UI1
  loc_B76D0D: FLdPr Me
  loc_B76D10: MemLdStr global_80
  loc_B76D13: AryLock
  loc_B76D16: Ary1LdPr
  loc_B76D17: MemLdStr global_8
  loc_B76D1A: AryLock
  loc_B76D1D: Ary1LdPr
  loc_B76D1E: MemLdRfVar from_stack_1.global_40
  loc_B76D21: CVarRef
  loc_B76D26: LitI2_Byte &HFF
  loc_B76D28: FLdFPR8 var_F0
  loc_B76D2B: CVarR8
  loc_B76D2F: PopAdLdVar
  loc_B76D30: FMemLdRf unk_4FBE95
  loc_B76D35: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76D3A: AryUnlock
  loc_B76D3D: AryUnlock
  loc_B76D40: FLdRfVar var_F0
  loc_B76D43: FLdPr Me
  loc_B76D46: MemLdRfVar from_stack_1.global_76
  loc_B76D49: NewIfNullPr clsfacipago
  loc_B76D4C: from_stack_1 = clsfacipago.DecaFapa
  loc_B76D51: LitI2_Byte 0
  loc_B76D53: LitI4 0
  loc_B76D58: FLdPr Me
  loc_B76D5B: MemLdI2 global_84
  loc_B76D5E: CI4UI1
  loc_B76D5F: FLdPr Me
  loc_B76D62: MemLdStr global_80
  loc_B76D65: AryLock
  loc_B76D68: Ary1LdPr
  loc_B76D69: MemLdStr global_8
  loc_B76D6C: AryLock
  loc_B76D6F: Ary1LdPr
  loc_B76D70: MemLdRfVar from_stack_1.global_44
  loc_B76D73: CVarRef
  loc_B76D78: LitI2_Byte &HFF
  loc_B76D7A: FLdFPR8 var_F0
  loc_B76D7D: CVarR8
  loc_B76D81: PopAdLdVar
  loc_B76D82: FMemLdRf unk_4FBE95
  loc_B76D87: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76D8C: AryUnlock
  loc_B76D8F: AryUnlock
  loc_B76D92: FLdRfVar var_F0
  loc_B76D95: FLdPr Me
  loc_B76D98: MemLdRfVar from_stack_1.global_76
  loc_B76D9B: NewIfNullPr clsfacipago
  loc_B76D9E: from_stack_1 = clsfacipago.RecaFapa
  loc_B76DA3: LitI2_Byte 0
  loc_B76DA5: LitI4 0
  loc_B76DAA: FLdPr Me
  loc_B76DAD: MemLdI2 global_84
  loc_B76DB0: CI4UI1
  loc_B76DB1: FLdPr Me
  loc_B76DB4: MemLdStr global_80
  loc_B76DB7: AryLock
  loc_B76DBA: Ary1LdPr
  loc_B76DBB: MemLdStr global_8
  loc_B76DBE: AryLock
  loc_B76DC1: Ary1LdPr
  loc_B76DC2: MemLdRfVar from_stack_1.global_48
  loc_B76DC5: CVarRef
  loc_B76DCA: LitI2_Byte &HFF
  loc_B76DCC: FLdFPR8 var_F0
  loc_B76DCF: CVarR8
  loc_B76DD3: PopAdLdVar
  loc_B76DD4: FMemLdRf unk_4FBE95
  loc_B76DD9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76DDE: AryUnlock
  loc_B76DE1: AryUnlock
  loc_B76DE4: FLdRfVar var_F0
  loc_B76DE7: FLdPr Me
  loc_B76DEA: MemLdRfVar from_stack_1.global_76
  loc_B76DED: NewIfNullPr clsfacipago
  loc_B76DF0: from_stack_1 = clsfacipago.DereFapa
  loc_B76DF5: LitI2_Byte 0
  loc_B76DF7: LitI4 0
  loc_B76DFC: FLdPr Me
  loc_B76DFF: MemLdI2 global_84
  loc_B76E02: CI4UI1
  loc_B76E03: FLdPr Me
  loc_B76E06: MemLdStr global_80
  loc_B76E09: AryLock
  loc_B76E0C: Ary1LdPr
  loc_B76E0D: MemLdStr global_8
  loc_B76E10: AryLock
  loc_B76E13: Ary1LdPr
  loc_B76E14: MemLdRfVar from_stack_1.bLogos
  loc_B76E17: CVarRef
  loc_B76E1C: LitI2_Byte &HFF
  loc_B76E1E: FLdFPR8 var_F0
  loc_B76E21: CVarR8
  loc_B76E25: PopAdLdVar
  loc_B76E26: FMemLdRf unk_4FBE95
  loc_B76E2B: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76E30: AryUnlock
  loc_B76E33: AryUnlock
  loc_B76E36: FLdRfVar var_F0
  loc_B76E39: FLdPr Me
  loc_B76E3C: MemLdRfVar from_stack_1.global_76
  loc_B76E3F: NewIfNullPr clsfacipago
  loc_B76E42: from_stack_1 = clsfacipago.ApreFapa
  loc_B76E47: LitI2_Byte 0
  loc_B76E49: LitI4 0
  loc_B76E4E: FLdPr Me
  loc_B76E51: MemLdI2 global_84
  loc_B76E54: CI4UI1
  loc_B76E55: FLdPr Me
  loc_B76E58: MemLdStr global_80
  loc_B76E5B: AryLock
  loc_B76E5E: Ary1LdPr
  loc_B76E5F: MemLdStr global_8
  loc_B76E62: AryLock
  loc_B76E65: Ary1LdPr
  loc_B76E66: MemLdRfVar from_stack_1.global_56
  loc_B76E69: CVarRef
  loc_B76E6E: LitI2_Byte &HFF
  loc_B76E70: FLdFPR8 var_F0
  loc_B76E73: CVarR8
  loc_B76E77: PopAdLdVar
  loc_B76E78: FMemLdRf unk_4FBE95
  loc_B76E7D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76E82: AryUnlock
  loc_B76E85: AryUnlock
  loc_B76E88: FLdRfVar var_F0
  loc_B76E8B: FLdPr Me
  loc_B76E8E: MemLdRfVar from_stack_1.global_76
  loc_B76E91: NewIfNullPr clsfacipago
  loc_B76E94: from_stack_1 = clsfacipago.InteFapa
  loc_B76E99: LitI2_Byte 0
  loc_B76E9B: LitI4 0
  loc_B76EA0: FLdPr Me
  loc_B76EA3: MemLdI2 global_84
  loc_B76EA6: CI4UI1
  loc_B76EA7: FLdPr Me
  loc_B76EAA: MemLdStr global_80
  loc_B76EAD: AryLock
  loc_B76EB0: Ary1LdPr
  loc_B76EB1: MemLdStr global_8
  loc_B76EB4: AryLock
  loc_B76EB7: Ary1LdPr
  loc_B76EB8: MemLdRfVar from_stack_1.global_60
  loc_B76EBB: CVarRef
  loc_B76EC0: LitI2_Byte &HFF
  loc_B76EC2: FLdFPR8 var_F0
  loc_B76EC5: CVarR8
  loc_B76EC9: PopAdLdVar
  loc_B76ECA: FMemLdRf unk_4FBE95
  loc_B76ECF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76ED4: AryUnlock
  loc_B76ED7: AryUnlock
  loc_B76EDA: FLdRfVar var_F0
  loc_B76EDD: FLdPr Me
  loc_B76EE0: MemLdRfVar from_stack_1.global_76
  loc_B76EE3: NewIfNullPr clsfacipago
  loc_B76EE6: from_stack_1 = clsfacipago.TotaFapa
  loc_B76EEB: LitI2_Byte 0
  loc_B76EED: LitI4 0
  loc_B76EF2: FLdPr Me
  loc_B76EF5: MemLdI2 global_84
  loc_B76EF8: CI4UI1
  loc_B76EF9: FLdPr Me
  loc_B76EFC: MemLdStr global_80
  loc_B76EFF: AryLock
  loc_B76F02: Ary1LdPr
  loc_B76F03: MemLdStr global_8
  loc_B76F06: AryLock
  loc_B76F09: Ary1LdPr
  loc_B76F0A: MemLdRfVar from_stack_1.global_64
  loc_B76F0D: CVarRef
  loc_B76F12: LitI2_Byte &HFF
  loc_B76F14: FLdFPR8 var_F0
  loc_B76F17: CVarR8
  loc_B76F1B: PopAdLdVar
  loc_B76F1C: FMemLdRf unk_4FBE95
  loc_B76F21: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B76F26: AryUnlock
  loc_B76F29: AryUnlock
  loc_B76F2C: LitI4 0
  loc_B76F31: FStR4 var_90
  loc_B76F34: AryUnlock
  loc_B76F37: AryUnlock
  loc_B76F3A: LitI2_Byte 1
  loc_B76F3C: PopTmpLdAd2 var_E2
  loc_B76F3F: FLdPr Me
  loc_B76F42: MemLdRfVar from_stack_1.global_76
  loc_B76F45: NewIfNullPr clsfacipago
  loc_B76F48: Call clsfacipago.Move(from_stack_1v)
  loc_B76F4D: ExitProcHresult
End Function

Private Function Proc_358_35_C17788() 'C17788
  'Data Table: 4FBF24
  loc_C16D80: LitVarStr var_98, "<html>"
  loc_C16D85: PopAdLdVar
  loc_C16D86: FLdPr Me
  loc_C16D89: MemLdRfVar from_stack_1.global_60
  loc_C16D8C: LdPrVar
  loc_C16D8E: LateMemCall
  loc_C16D94: LitVarStr var_98, "<head>"
  loc_C16D99: PopAdLdVar
  loc_C16D9A: FLdPr Me
  loc_C16D9D: MemLdRfVar from_stack_1.global_60
  loc_C16DA0: LdPrVar
  loc_C16DA2: LateMemCall
  loc_C16DA8: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_C16DAD: PopAdLdVar
  loc_C16DAE: FLdPr Me
  loc_C16DB1: MemLdRfVar from_stack_1.global_60
  loc_C16DB4: LdPrVar
  loc_C16DB6: LateMemCall
  loc_C16DBC: LitStr "<title>"
  loc_C16DBF: FLdRfVar var_AC
  loc_C16DC2: FLdPr Me
  loc_C16DC5:  = Me.Caption
  loc_C16DCA: ILdRf var_AC
  loc_C16DCD: ConcatStr
  loc_C16DCE: FStStrNoPop var_B0
  loc_C16DD1: LitStr "</title>"
  loc_C16DD4: ConcatStr
  loc_C16DD5: CVarStr var_C0
  loc_C16DD8: PopAdLdVar
  loc_C16DD9: FLdPr Me
  loc_C16DDC: MemLdRfVar from_stack_1.global_60
  loc_C16DDF: LdPrVar
  loc_C16DE1: LateMemCall
  loc_C16DE7: FFreeStr var_AC = ""
  loc_C16DEE: FFree1Var var_C0 = ""
  loc_C16DF1: LitVarStr var_98, "<style type=""text/css"">"
  loc_C16DF6: PopAdLdVar
  loc_C16DF7: FLdPr Me
  loc_C16DFA: MemLdRfVar from_stack_1.global_60
  loc_C16DFD: LdPrVar
  loc_C16DFF: LateMemCall
  loc_C16E05: LitVarStr var_98, ".Titulo1 {"
  loc_C16E0A: PopAdLdVar
  loc_C16E0B: FLdPr Me
  loc_C16E0E: MemLdRfVar from_stack_1.global_60
  loc_C16E11: LdPrVar
  loc_C16E13: LateMemCall
  loc_C16E19: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C16E1E: PopAdLdVar
  loc_C16E1F: FLdPr Me
  loc_C16E22: MemLdRfVar from_stack_1.global_60
  loc_C16E25: LdPrVar
  loc_C16E27: LateMemCall
  loc_C16E2D: LitVarStr var_98, " font-size: 18px;"
  loc_C16E32: PopAdLdVar
  loc_C16E33: FLdPr Me
  loc_C16E36: MemLdRfVar from_stack_1.global_60
  loc_C16E39: LdPrVar
  loc_C16E3B: LateMemCall
  loc_C16E41: LitVarStr var_98, " font-weight: bold;"
  loc_C16E46: PopAdLdVar
  loc_C16E47: FLdPr Me
  loc_C16E4A: MemLdRfVar from_stack_1.global_60
  loc_C16E4D: LdPrVar
  loc_C16E4F: LateMemCall
  loc_C16E55: LitVarStr var_98, "}"
  loc_C16E5A: PopAdLdVar
  loc_C16E5B: FLdPr Me
  loc_C16E5E: MemLdRfVar from_stack_1.global_60
  loc_C16E61: LdPrVar
  loc_C16E63: LateMemCall
  loc_C16E69: LitVarStr var_98, ".Titulo2 {"
  loc_C16E6E: PopAdLdVar
  loc_C16E6F: FLdPr Me
  loc_C16E72: MemLdRfVar from_stack_1.global_60
  loc_C16E75: LdPrVar
  loc_C16E77: LateMemCall
  loc_C16E7D: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C16E82: PopAdLdVar
  loc_C16E83: FLdPr Me
  loc_C16E86: MemLdRfVar from_stack_1.global_60
  loc_C16E89: LdPrVar
  loc_C16E8B: LateMemCall
  loc_C16E91: LitVarStr var_98, " font-size: 14px;"
  loc_C16E96: PopAdLdVar
  loc_C16E97: FLdPr Me
  loc_C16E9A: MemLdRfVar from_stack_1.global_60
  loc_C16E9D: LdPrVar
  loc_C16E9F: LateMemCall
  loc_C16EA5: LitVarStr var_98, " font-weight: bold;"
  loc_C16EAA: PopAdLdVar
  loc_C16EAB: FLdPr Me
  loc_C16EAE: MemLdRfVar from_stack_1.global_60
  loc_C16EB1: LdPrVar
  loc_C16EB3: LateMemCall
  loc_C16EB9: LitVarStr var_98, "}"
  loc_C16EBE: PopAdLdVar
  loc_C16EBF: FLdPr Me
  loc_C16EC2: MemLdRfVar from_stack_1.global_60
  loc_C16EC5: LdPrVar
  loc_C16EC7: LateMemCall
  loc_C16ECD: LitVarStr var_98, ".Normal {"
  loc_C16ED2: PopAdLdVar
  loc_C16ED3: FLdPr Me
  loc_C16ED6: MemLdRfVar from_stack_1.global_60
  loc_C16ED9: LdPrVar
  loc_C16EDB: LateMemCall
  loc_C16EE1: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_C16EE6: PopAdLdVar
  loc_C16EE7: FLdPr Me
  loc_C16EEA: MemLdRfVar from_stack_1.global_60
  loc_C16EED: LdPrVar
  loc_C16EEF: LateMemCall
  loc_C16EF5: LitVarStr var_98, " font-size: 12px;"
  loc_C16EFA: PopAdLdVar
  loc_C16EFB: FLdPr Me
  loc_C16EFE: MemLdRfVar from_stack_1.global_60
  loc_C16F01: LdPrVar
  loc_C16F03: LateMemCall
  loc_C16F09: LitVarStr var_98, " font-style: normal;"
  loc_C16F0E: PopAdLdVar
  loc_C16F0F: FLdPr Me
  loc_C16F12: MemLdRfVar from_stack_1.global_60
  loc_C16F15: LdPrVar
  loc_C16F17: LateMemCall
  loc_C16F1D: LitVarStr var_98, " font-weight: normal;"
  loc_C16F22: PopAdLdVar
  loc_C16F23: FLdPr Me
  loc_C16F26: MemLdRfVar from_stack_1.global_60
  loc_C16F29: LdPrVar
  loc_C16F2B: LateMemCall
  loc_C16F31: LitVarStr var_98, " font-variant: normal;"
  loc_C16F36: PopAdLdVar
  loc_C16F37: FLdPr Me
  loc_C16F3A: MemLdRfVar from_stack_1.global_60
  loc_C16F3D: LdPrVar
  loc_C16F3F: LateMemCall
  loc_C16F45: LitVarStr var_98, "}"
  loc_C16F4A: PopAdLdVar
  loc_C16F4B: FLdPr Me
  loc_C16F4E: MemLdRfVar from_stack_1.global_60
  loc_C16F51: LdPrVar
  loc_C16F53: LateMemCall
  loc_C16F59: LitVarStr var_98, ".Encabezado {"
  loc_C16F5E: PopAdLdVar
  loc_C16F5F: FLdPr Me
  loc_C16F62: MemLdRfVar from_stack_1.global_60
  loc_C16F65: LdPrVar
  loc_C16F67: LateMemCall
  loc_C16F6D: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_C16F72: PopAdLdVar
  loc_C16F73: FLdPr Me
  loc_C16F76: MemLdRfVar from_stack_1.global_60
  loc_C16F79: LdPrVar
  loc_C16F7B: LateMemCall
  loc_C16F81: LitVarStr var_98, " font-size: 11px;"
  loc_C16F86: PopAdLdVar
  loc_C16F87: FLdPr Me
  loc_C16F8A: MemLdRfVar from_stack_1.global_60
  loc_C16F8D: LdPrVar
  loc_C16F8F: LateMemCall
  loc_C16F95: LitVarStr var_98, " font-weight: bold;"
  loc_C16F9A: PopAdLdVar
  loc_C16F9B: FLdPr Me
  loc_C16F9E: MemLdRfVar from_stack_1.global_60
  loc_C16FA1: LdPrVar
  loc_C16FA3: LateMemCall
  loc_C16FA9: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_C16FAE: PopAdLdVar
  loc_C16FAF: FLdPr Me
  loc_C16FB2: MemLdRfVar from_stack_1.global_60
  loc_C16FB5: LdPrVar
  loc_C16FB7: LateMemCall
  loc_C16FBD: LitVarStr var_98, "}"
  loc_C16FC2: PopAdLdVar
  loc_C16FC3: FLdPr Me
  loc_C16FC6: MemLdRfVar from_stack_1.global_60
  loc_C16FC9: LdPrVar
  loc_C16FCB: LateMemCall
  loc_C16FD1: LitVarStr var_98, ".LineaDato {"
  loc_C16FD6: PopAdLdVar
  loc_C16FD7: FLdPr Me
  loc_C16FDA: MemLdRfVar from_stack_1.global_60
  loc_C16FDD: LdPrVar
  loc_C16FDF: LateMemCall
  loc_C16FE5: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C16FEA: PopAdLdVar
  loc_C16FEB: FLdPr Me
  loc_C16FEE: MemLdRfVar from_stack_1.global_60
  loc_C16FF1: LdPrVar
  loc_C16FF3: LateMemCall
  loc_C16FF9: LitVarStr var_98, " font-size: 10px;"
  loc_C16FFE: PopAdLdVar
  loc_C16FFF: FLdPr Me
  loc_C17002: MemLdRfVar from_stack_1.global_60
  loc_C17005: LdPrVar
  loc_C17007: LateMemCall
  loc_C1700D: LitVarStr var_98, "}"
  loc_C17012: PopAdLdVar
  loc_C17013: FLdPr Me
  loc_C17016: MemLdRfVar from_stack_1.global_60
  loc_C17019: LdPrVar
  loc_C1701B: LateMemCall
  loc_C17021: LitVarStr var_98, ".Totales {"
  loc_C17026: PopAdLdVar
  loc_C17027: FLdPr Me
  loc_C1702A: MemLdRfVar from_stack_1.global_60
  loc_C1702D: LdPrVar
  loc_C1702F: LateMemCall
  loc_C17035: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C1703A: PopAdLdVar
  loc_C1703B: FLdPr Me
  loc_C1703E: MemLdRfVar from_stack_1.global_60
  loc_C17041: LdPrVar
  loc_C17043: LateMemCall
  loc_C17049: LitVarStr var_98, " font-size: 12px;"
  loc_C1704E: PopAdLdVar
  loc_C1704F: FLdPr Me
  loc_C17052: MemLdRfVar from_stack_1.global_60
  loc_C17055: LdPrVar
  loc_C17057: LateMemCall
  loc_C1705D: LitVarStr var_98, " font-weight: bold;"
  loc_C17062: PopAdLdVar
  loc_C17063: FLdPr Me
  loc_C17066: MemLdRfVar from_stack_1.global_60
  loc_C17069: LdPrVar
  loc_C1706B: LateMemCall
  loc_C17071: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C17076: PopAdLdVar
  loc_C17077: FLdPr Me
  loc_C1707A: MemLdRfVar from_stack_1.global_60
  loc_C1707D: LdPrVar
  loc_C1707F: LateMemCall
  loc_C17085: LitVarStr var_98, "}"
  loc_C1708A: PopAdLdVar
  loc_C1708B: FLdPr Me
  loc_C1708E: MemLdRfVar from_stack_1.global_60
  loc_C17091: LdPrVar
  loc_C17093: LateMemCall
  loc_C17099: LitVarStr var_98, ".SubTotales {"
  loc_C1709E: PopAdLdVar
  loc_C1709F: FLdPr Me
  loc_C170A2: MemLdRfVar from_stack_1.global_60
  loc_C170A5: LdPrVar
  loc_C170A7: LateMemCall
  loc_C170AD: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_C170B2: PopAdLdVar
  loc_C170B3: FLdPr Me
  loc_C170B6: MemLdRfVar from_stack_1.global_60
  loc_C170B9: LdPrVar
  loc_C170BB: LateMemCall
  loc_C170C1: LitVarStr var_98, " font-size: 10px;"
  loc_C170C6: PopAdLdVar
  loc_C170C7: FLdPr Me
  loc_C170CA: MemLdRfVar from_stack_1.global_60
  loc_C170CD: LdPrVar
  loc_C170CF: LateMemCall
  loc_C170D5: LitVarStr var_98, " font-weight: bold;"
  loc_C170DA: PopAdLdVar
  loc_C170DB: FLdPr Me
  loc_C170DE: MemLdRfVar from_stack_1.global_60
  loc_C170E1: LdPrVar
  loc_C170E3: LateMemCall
  loc_C170E9: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_C170EE: PopAdLdVar
  loc_C170EF: FLdPr Me
  loc_C170F2: MemLdRfVar from_stack_1.global_60
  loc_C170F5: LdPrVar
  loc_C170F7: LateMemCall
  loc_C170FD: LitVarStr var_98, "}"
  loc_C17102: PopAdLdVar
  loc_C17103: FLdPr Me
  loc_C17106: MemLdRfVar from_stack_1.global_60
  loc_C17109: LdPrVar
  loc_C1710B: LateMemCall
  loc_C17111: LitVarStr var_98, ".Tilde {"
  loc_C17116: PopAdLdVar
  loc_C17117: FLdPr Me
  loc_C1711A: MemLdRfVar from_stack_1.global_60
  loc_C1711D: LdPrVar
  loc_C1711F: LateMemCall
  loc_C17125: LitVarStr var_98, " font-family: Wingdings;"
  loc_C1712A: PopAdLdVar
  loc_C1712B: FLdPr Me
  loc_C1712E: MemLdRfVar from_stack_1.global_60
  loc_C17131: LdPrVar
  loc_C17133: LateMemCall
  loc_C17139: LitVarStr var_98, " font-size: 12px;"
  loc_C1713E: PopAdLdVar
  loc_C1713F: FLdPr Me
  loc_C17142: MemLdRfVar from_stack_1.global_60
  loc_C17145: LdPrVar
  loc_C17147: LateMemCall
  loc_C1714D: LitVarStr var_98, "}"
  loc_C17152: PopAdLdVar
  loc_C17153: FLdPr Me
  loc_C17156: MemLdRfVar from_stack_1.global_60
  loc_C17159: LdPrVar
  loc_C1715B: LateMemCall
  loc_C17161: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_C17166: PopAdLdVar
  loc_C17167: FLdPr Me
  loc_C1716A: MemLdRfVar from_stack_1.global_60
  loc_C1716D: LdPrVar
  loc_C1716F: LateMemCall
  loc_C17175: LitVarStr var_98, "</style>"
  loc_C1717A: PopAdLdVar
  loc_C1717B: FLdPr Me
  loc_C1717E: MemLdRfVar from_stack_1.global_60
  loc_C17181: LdPrVar
  loc_C17183: LateMemCall
  loc_C17189: LitI4 0
  loc_C1718E: FStStrCopy var_B0
  loc_C17191: FLdRfVar var_B0
  loc_C17194: LitI4 0
  loc_C17199: FStStrCopy var_AC
  loc_C1719C: FLdRfVar var_AC
  loc_C1719F: LitI2_Byte &HFF
  loc_C171A1: PopTmpLdAd2 var_C2
  loc_C171A4: FLdPr Me
  loc_C171A7: MemLdRfVar from_stack_1.global_60
  loc_C171AA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_C171AF: FFreeStr var_AC = ""
  loc_C171B6: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_C171BB: PopAdLdVar
  loc_C171BC: FLdPr Me
  loc_C171BF: MemLdRfVar from_stack_1.global_60
  loc_C171C2: LdPrVar
  loc_C171C4: LateMemCall
  loc_C171CA: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_C171CF: PopAdLdVar
  loc_C171D0: FLdPr Me
  loc_C171D3: MemLdRfVar from_stack_1.global_60
  loc_C171D6: LdPrVar
  loc_C171D8: LateMemCall
  loc_C171DE: LitVarStr var_98, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p> "
  loc_C171E3: PopAdLdVar
  loc_C171E4: FLdPr Me
  loc_C171E7: MemLdRfVar from_stack_1.global_60
  loc_C171EA: LdPrVar
  loc_C171EC: LateMemCall
  loc_C171F2: FLdPr Me
  loc_C171F5: MemLdI2 bLogos
  loc_C171F8: BranchF loc_C17253
  loc_C171FB: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_C171FE: LitI2_Byte &H5F
  loc_C17200: CStrUI1
  loc_C17202: FStStrNoPop var_AC
  loc_C17205: ConcatStr
  loc_C17206: FStStrNoPop var_B0
  loc_C17209: LitStr """ height="""
  loc_C1720C: ConcatStr
  loc_C1720D: FStStrNoPop var_C8
  loc_C17210: LitI2_Byte &H3C
  loc_C17212: CStrUI1
  loc_C17214: FStStrNoPop var_CC
  loc_C17217: ConcatStr
  loc_C17218: FStStrNoPop var_D0
  loc_C1721B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_C1721E: ConcatStr
  loc_C1721F: FStStrNoPop var_D4
  loc_C17222: LitStr "Municipalidad de Guaymallén"
  loc_C17225: ConcatStr
  loc_C17226: FStStrNoPop var_D8
  loc_C17229: LitStr "</p>"
  loc_C1722C: ConcatStr
  loc_C1722D: CVarStr var_C0
  loc_C17230: PopAdLdVar
  loc_C17231: FLdPr Me
  loc_C17234: MemLdRfVar from_stack_1.global_60
  loc_C17237: LdPrVar
  loc_C17239: LateMemCall
  loc_C1723F: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_C17250: FFree1Var var_C0 = ""
  loc_C17253: LitStr "    <p>"
  loc_C17256: FLdRfVar var_AC
  loc_C17259: FLdPr Me
  loc_C1725C:  = Me.Caption
  loc_C17261: ILdRf var_AC
  loc_C17264: ConcatStr
  loc_C17265: FStStrNoPop var_B0
  loc_C17268: LitStr "</p></th>"
  loc_C1726B: ConcatStr
  loc_C1726C: CVarStr var_C0
  loc_C1726F: PopAdLdVar
  loc_C17270: FLdPr Me
  loc_C17273: MemLdRfVar from_stack_1.global_60
  loc_C17276: LdPrVar
  loc_C17278: LateMemCall
  loc_C1727E: FFreeStr var_AC = ""
  loc_C17285: FFree1Var var_C0 = ""
  loc_C17288: LitVarStr var_98, "  </tr>"
  loc_C1728D: PopAdLdVar
  loc_C1728E: FLdPr Me
  loc_C17291: MemLdRfVar from_stack_1.global_60
  loc_C17294: LdPrVar
  loc_C17296: LateMemCall
  loc_C1729C: LitVarStr var_98, "  <tr>"
  loc_C172A1: PopAdLdVar
  loc_C172A2: FLdPr Me
  loc_C172A5: MemLdRfVar from_stack_1.global_60
  loc_C172A8: LdPrVar
  loc_C172AA: LateMemCall
  loc_C172B0: LitVarStr var_98, "    <th colspan=""2""><hr></th>"
  loc_C172B5: PopAdLdVar
  loc_C172B6: FLdPr Me
  loc_C172B9: MemLdRfVar from_stack_1.global_60
  loc_C172BC: LdPrVar
  loc_C172BE: LateMemCall
  loc_C172C4: LitVarStr var_98, "  </tr>"
  loc_C172C9: PopAdLdVar
  loc_C172CA: FLdPr Me
  loc_C172CD: MemLdRfVar from_stack_1.global_60
  loc_C172D0: LdPrVar
  loc_C172D2: LateMemCall
  loc_C172D8: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_C172DD: PopAdLdVar
  loc_C172DE: FLdPr Me
  loc_C172E1: MemLdRfVar from_stack_1.global_60
  loc_C172E4: LdPrVar
  loc_C172E6: LateMemCall
  loc_C172EC: FLdPr Me
  loc_C172EF: VCallAd Control_ID_DesdeMsk
  loc_C172F2: FStAdFunc var_DC
  loc_C172F5: FLdPr var_DC
  loc_C172F8: LateIdLdVar var_C0 DispID_22 0
  loc_C172FF: CStrVarTmp
  loc_C17300: FStStrNoPop var_AC
  loc_C17303: LitStr vbNullString
  loc_C17306: EqStr
  loc_C17308: FFree1Str var_AC
  loc_C1730B: FFree1Ad var_DC
  loc_C1730E: FFree1Var var_C0 = ""
  loc_C17311: BranchF loc_C1732B
  loc_C17314: LitVarStr var_98, "    <td>&nbsp;</td>"
  loc_C17319: PopAdLdVar
  loc_C1731A: FLdPr Me
  loc_C1731D: MemLdRfVar from_stack_1.global_60
  loc_C17320: LdPrVar
  loc_C17322: LateMemCall
  loc_C17328: Branch loc_C17370
  loc_C1732B: LitStr "    <td align=""left""><strong>Desde: </strong>"
  loc_C1732E: FLdPr Me
  loc_C17331: VCallAd Control_ID_DesdeMsk
  loc_C17334: FStAdFunc var_DC
  loc_C17337: FLdPr var_DC
  loc_C1733A: LateIdLdVar var_C0 DispID_15 0
  loc_C17341: CStrVarTmp
  loc_C17342: FStStrNoPop var_AC
  loc_C17345: ConcatStr
  loc_C17346: FStStrNoPop var_B0
  loc_C17349: LitStr "</td>"
  loc_C1734C: ConcatStr
  loc_C1734D: CVarStr var_EC
  loc_C17350: PopAdLdVar
  loc_C17351: FLdPr Me
  loc_C17354: MemLdRfVar from_stack_1.global_60
  loc_C17357: LdPrVar
  loc_C17359: LateMemCall
  loc_C1735F: FFreeStr var_AC = ""
  loc_C17366: FFree1Ad var_DC
  loc_C17369: FFreeVar var_C0 = ""
  loc_C17370: FLdPr Me
  loc_C17373: VCallAd Control_ID_HastaMsk
  loc_C17376: FStAdFunc var_DC
  loc_C17379: FLdPr var_DC
  loc_C1737C: LateIdLdVar var_C0 DispID_22 0
  loc_C17383: CStrVarTmp
  loc_C17384: FStStrNoPop var_AC
  loc_C17387: LitStr vbNullString
  loc_C1738A: EqStr
  loc_C1738C: FFree1Str var_AC
  loc_C1738F: FFree1Ad var_DC
  loc_C17392: FFree1Var var_C0 = ""
  loc_C17395: BranchF loc_C173AF
  loc_C17398: LitVarStr var_98, "    <td>&nbsp;</td>"
  loc_C1739D: PopAdLdVar
  loc_C1739E: FLdPr Me
  loc_C173A1: MemLdRfVar from_stack_1.global_60
  loc_C173A4: LdPrVar
  loc_C173A6: LateMemCall
  loc_C173AC: Branch loc_C173F4
  loc_C173AF: LitStr "    <td align=""right""><strong>Hasta: </strong>"
  loc_C173B2: FLdPr Me
  loc_C173B5: VCallAd Control_ID_HastaMsk
  loc_C173B8: FStAdFunc var_DC
  loc_C173BB: FLdPr var_DC
  loc_C173BE: LateIdLdVar var_C0 DispID_15 0
  loc_C173C5: CStrVarTmp
  loc_C173C6: FStStrNoPop var_AC
  loc_C173C9: ConcatStr
  loc_C173CA: FStStrNoPop var_B0
  loc_C173CD: LitStr "</td>"
  loc_C173D0: ConcatStr
  loc_C173D1: CVarStr var_EC
  loc_C173D4: PopAdLdVar
  loc_C173D5: FLdPr Me
  loc_C173D8: MemLdRfVar from_stack_1.global_60
  loc_C173DB: LdPrVar
  loc_C173DD: LateMemCall
  loc_C173E3: FFreeStr var_AC = ""
  loc_C173EA: FFree1Ad var_DC
  loc_C173ED: FFreeVar var_C0 = ""
  loc_C173F4: LitVarStr var_98, "  </tr>"
  loc_C173F9: PopAdLdVar
  loc_C173FA: FLdPr Me
  loc_C173FD: MemLdRfVar from_stack_1.global_60
  loc_C17400: LdPrVar
  loc_C17402: LateMemCall
  loc_C17408: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_C1740D: PopAdLdVar
  loc_C1740E: FLdPr Me
  loc_C17411: MemLdRfVar from_stack_1.global_60
  loc_C17414: LdPrVar
  loc_C17416: LateMemCall
  loc_C1741C: LitStr "    <td align=""left""><strong>Estados considerados: </strong>"
  loc_C1741F: FLdPr Me
  loc_C17422: MemLdStr global_96
  loc_C17425: ConcatStr
  loc_C17426: FStStrNoPop var_AC
  loc_C17429: LitStr "</td>"
  loc_C1742C: ConcatStr
  loc_C1742D: CVarStr var_C0
  loc_C17430: PopAdLdVar
  loc_C17431: FLdPr Me
  loc_C17434: MemLdRfVar from_stack_1.global_60
  loc_C17437: LdPrVar
  loc_C17439: LateMemCall
  loc_C1743F: FFree1Str var_AC
  loc_C17442: FFree1Var var_C0 = ""
  loc_C17445: FLdRfVar var_C2
  loc_C17448: FLdPr Me
  loc_C1744B: VCallAd Control_ID_AtrasadosChk
  loc_C1744E: FStAdFunc var_DC
  loc_C17451: FLdPr var_DC
  loc_C17454:  = Me.Value
  loc_C17459: FLdI2 var_C2
  loc_C1745C: CI4UI1
  loc_C1745D: LitI4 1
  loc_C17462: EqI4
  loc_C17463: FFree1Ad var_DC
  loc_C17466: BranchF loc_C17548
  loc_C17469: FLdPr Me
  loc_C1746C: VCallAd Control_ID_CantCuotasMsk
  loc_C1746F: FStAdFunc var_DC
  loc_C17472: FLdPr var_DC
  loc_C17475: LateIdLdVar var_C0 DispID_22 0
  loc_C1747C: CStrVarTmp
  loc_C1747D: FStStrNoPop var_AC
  loc_C17480: CR8Str
  loc_C17482: LitI2_Byte 0
  loc_C17484: CR8I2
  loc_C17485: GtR4
  loc_C17486: FFree1Str var_AC
  loc_C17489: FFree1Ad var_DC
  loc_C1748C: FFree1Var var_C0 = ""
  loc_C1748F: BranchF loc_C174D7
  loc_C17492: LitStr "    <td align=""right""><strong>Cantidad de Cuotas: </strong>"
  loc_C17495: FLdPr Me
  loc_C17498: VCallAd Control_ID_CantCuotasMsk
  loc_C1749B: FStAdFunc var_DC
  loc_C1749E: FLdPr var_DC
  loc_C174A1: LateIdLdVar var_C0 DispID_22 0
  loc_C174A8: CStrVarTmp
  loc_C174A9: FStStrNoPop var_AC
  loc_C174AC: ConcatStr
  loc_C174AD: FStStrNoPop var_B0
  loc_C174B0: LitStr "</td>"
  loc_C174B3: ConcatStr
  loc_C174B4: CVarStr var_EC
  loc_C174B7: PopAdLdVar
  loc_C174B8: FLdPr Me
  loc_C174BB: MemLdRfVar from_stack_1.global_60
  loc_C174BE: LdPrVar
  loc_C174C0: LateMemCall
  loc_C174C6: FFreeStr var_AC = ""
  loc_C174CD: FFree1Ad var_DC
  loc_C174D0: FFreeVar var_C0 = ""
  loc_C174D7: FLdPr Me
  loc_C174DA: VCallAd Control_ID_CantDiasMsk
  loc_C174DD: FStAdFunc var_DC
  loc_C174E0: FLdPr var_DC
  loc_C174E3: LateIdLdVar var_C0 DispID_22 0
  loc_C174EA: CStrVarTmp
  loc_C174EB: FStStrNoPop var_AC
  loc_C174EE: CR8Str
  loc_C174F0: LitI2_Byte 0
  loc_C174F2: CR8I2
  loc_C174F3: GtR4
  loc_C174F4: FFree1Str var_AC
  loc_C174F7: FFree1Ad var_DC
  loc_C174FA: FFree1Var var_C0 = ""
  loc_C174FD: BranchF loc_C17545
  loc_C17500: LitStr "    <td align=""right""><strong>Cantidad de Días Vencidos: </strong>"
  loc_C17503: FLdPr Me
  loc_C17506: VCallAd Control_ID_CantDiasMsk
  loc_C17509: FStAdFunc var_DC
  loc_C1750C: FLdPr var_DC
  loc_C1750F: LateIdLdVar var_C0 DispID_22 0
  loc_C17516: CStrVarTmp
  loc_C17517: FStStrNoPop var_AC
  loc_C1751A: ConcatStr
  loc_C1751B: FStStrNoPop var_B0
  loc_C1751E: LitStr "</td>"
  loc_C17521: ConcatStr
  loc_C17522: CVarStr var_EC
  loc_C17525: PopAdLdVar
  loc_C17526: FLdPr Me
  loc_C17529: MemLdRfVar from_stack_1.global_60
  loc_C1752C: LdPrVar
  loc_C1752E: LateMemCall
  loc_C17534: FFreeStr var_AC = ""
  loc_C1753B: FFree1Ad var_DC
  loc_C1753E: FFreeVar var_C0 = ""
  loc_C17545: Branch loc_C1755C
  loc_C17548: LitVarStr var_98, "    <td>&nbsp;</td>"
  loc_C1754D: PopAdLdVar
  loc_C1754E: FLdPr Me
  loc_C17551: MemLdRfVar from_stack_1.global_60
  loc_C17554: LdPrVar
  loc_C17556: LateMemCall
  loc_C1755C: LitVarStr var_98, "  </tr>"
  loc_C17561: PopAdLdVar
  loc_C17562: FLdPr Me
  loc_C17565: MemLdRfVar from_stack_1.global_60
  loc_C17568: LdPrVar
  loc_C1756A: LateMemCall
  loc_C17570: LitVarStr var_98, "</table>"
  loc_C17575: PopAdLdVar
  loc_C17576: FLdPr Me
  loc_C17579: MemLdRfVar from_stack_1.global_60
  loc_C1757C: LdPrVar
  loc_C1757E: LateMemCall
  loc_C17584: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_C17589: PopAdLdVar
  loc_C1758A: FLdPr Me
  loc_C1758D: MemLdRfVar from_stack_1.global_60
  loc_C17590: LdPrVar
  loc_C17592: LateMemCall
  loc_C17598: LitVarStr var_98, "  <thead>"
  loc_C1759D: PopAdLdVar
  loc_C1759E: FLdPr Me
  loc_C175A1: MemLdRfVar from_stack_1.global_60
  loc_C175A4: LdPrVar
  loc_C175A6: LateMemCall
  loc_C175AC: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_C175B1: PopAdLdVar
  loc_C175B2: FLdPr Me
  loc_C175B5: MemLdRfVar from_stack_1.global_60
  loc_C175B8: LdPrVar
  loc_C175BA: LateMemCall
  loc_C175C0: FLdRfVar var_C2
  loc_C175C3: FLdPr Me
  loc_C175C6: VCallAd Control_ID_CuentaOpt
  loc_C175C9: FStAdFunc var_DC
  loc_C175CC: FLdPr var_DC
  loc_C175CF:  = Me.Value
  loc_C175D4: FLdI2 var_C2
  loc_C175D7: FFree1Ad var_DC
  loc_C175DA: BranchF loc_C17608
  loc_C175DD: LitVarStr var_98, "    <th>Facilidad</th>"
  loc_C175E2: PopAdLdVar
  loc_C175E3: FLdPr Me
  loc_C175E6: MemLdRfVar from_stack_1.global_60
  loc_C175E9: LdPrVar
  loc_C175EB: LateMemCall
  loc_C175F1: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_C175F6: PopAdLdVar
  loc_C175F7: FLdPr Me
  loc_C175FA: MemLdRfVar from_stack_1.global_60
  loc_C175FD: LdPrVar
  loc_C175FF: LateMemCall
  loc_C17605: Branch loc_C17630
  loc_C17608: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_C1760D: PopAdLdVar
  loc_C1760E: FLdPr Me
  loc_C17611: MemLdRfVar from_stack_1.global_60
  loc_C17614: LdPrVar
  loc_C17616: LateMemCall
  loc_C1761C: LitVarStr var_98, "    <th>Facilidad</th>"
  loc_C17621: PopAdLdVar
  loc_C17622: FLdPr Me
  loc_C17625: MemLdRfVar from_stack_1.global_60
  loc_C17628: LdPrVar
  loc_C1762A: LateMemCall
  loc_C17630: LitVarStr var_98, "    <th>Firmante</th>"
  loc_C17635: PopAdLdVar
  loc_C17636: FLdPr Me
  loc_C17639: MemLdRfVar from_stack_1.global_60
  loc_C1763C: LdPrVar
  loc_C1763E: LateMemCall
  loc_C17644: LitVarStr var_98, "    <th>Usuario Alta</th>"
  loc_C17649: PopAdLdVar
  loc_C1764A: FLdPr Me
  loc_C1764D: MemLdRfVar from_stack_1.global_60
  loc_C17650: LdPrVar
  loc_C17652: LateMemCall
  loc_C17658: LitVarStr var_98, "    <th>Tipo Fac.</th>"
  loc_C1765D: PopAdLdVar
  loc_C1765E: FLdPr Me
  loc_C17661: MemLdRfVar from_stack_1.global_60
  loc_C17664: LdPrVar
  loc_C17666: LateMemCall
  loc_C1766C: LitVarStr var_98, "    <th>Oficina</th>"
  loc_C17671: PopAdLdVar
  loc_C17672: FLdPr Me
  loc_C17675: MemLdRfVar from_stack_1.global_60
  loc_C17678: LdPrVar
  loc_C1767A: LateMemCall
  loc_C17680: LitVarStr var_98, "    <th>Cuenta</th>"
  loc_C17685: PopAdLdVar
  loc_C17686: FLdPr Me
  loc_C17689: MemLdRfVar from_stack_1.global_60
  loc_C1768C: LdPrVar
  loc_C1768E: LateMemCall
  loc_C17694: LitVarStr var_98, "    <th>Fecha de alta</th>"
  loc_C17699: PopAdLdVar
  loc_C1769A: FLdPr Me
  loc_C1769D: MemLdRfVar from_stack_1.global_60
  loc_C176A0: LdPrVar
  loc_C176A2: LateMemCall
  loc_C176A8: LitVarStr var_98, "    <th>Cant. Cuotas</th>"
  loc_C176AD: PopAdLdVar
  loc_C176AE: FLdPr Me
  loc_C176B1: MemLdRfVar from_stack_1.global_60
  loc_C176B4: LdPrVar
  loc_C176B6: LateMemCall
  loc_C176BC: LitVarStr var_98, "    <th>Cant. Cuotas<br>Apremio</th>"
  loc_C176C1: PopAdLdVar
  loc_C176C2: FLdPr Me
  loc_C176C5: MemLdRfVar from_stack_1.global_60
  loc_C176C8: LdPrVar
  loc_C176CA: LateMemCall
  loc_C176D0: LitVarStr var_98, "    <th width=""5" & Chr(37) & """>Capital</th>"
  loc_C176D5: PopAdLdVar
  loc_C176D6: FLdPr Me
  loc_C176D9: MemLdRfVar from_stack_1.global_60
  loc_C176DC: LdPrVar
  loc_C176DE: LateMemCall
  loc_C176E4: LitVarStr var_98, "    <th width=""5" & Chr(37) & """>Desc. Capital</th>"
  loc_C176E9: PopAdLdVar
  loc_C176EA: FLdPr Me
  loc_C176ED: MemLdRfVar from_stack_1.global_60
  loc_C176F0: LdPrVar
  loc_C176F2: LateMemCall
  loc_C176F8: LitVarStr var_98, "    <th width=""5" & Chr(37) & """>Recargo</th>"
  loc_C176FD: PopAdLdVar
  loc_C176FE: FLdPr Me
  loc_C17701: MemLdRfVar from_stack_1.global_60
  loc_C17704: LdPrVar
  loc_C17706: LateMemCall
  loc_C1770C: LitVarStr var_98, "    <th width=""5" & Chr(37) & """>Desc. Recargo</th>"
  loc_C17711: PopAdLdVar
  loc_C17712: FLdPr Me
  loc_C17715: MemLdRfVar from_stack_1.global_60
  loc_C17718: LdPrVar
  loc_C1771A: LateMemCall
  loc_C17720: LitVarStr var_98, "    <th width=""5" & Chr(37) & """>Apremio</th>"
  loc_C17725: PopAdLdVar
  loc_C17726: FLdPr Me
  loc_C17729: MemLdRfVar from_stack_1.global_60
  loc_C1772C: LdPrVar
  loc_C1772E: LateMemCall
  loc_C17734: LitVarStr var_98, "    <th width=""5" & Chr(37) & """>Interés</th>"
  loc_C17739: PopAdLdVar
  loc_C1773A: FLdPr Me
  loc_C1773D: MemLdRfVar from_stack_1.global_60
  loc_C17740: LdPrVar
  loc_C17742: LateMemCall
  loc_C17748: LitVarStr var_98, "    <th width=""5" & Chr(37) & """>Total</th>"
  loc_C1774D: PopAdLdVar
  loc_C1774E: FLdPr Me
  loc_C17751: MemLdRfVar from_stack_1.global_60
  loc_C17754: LdPrVar
  loc_C17756: LateMemCall
  loc_C1775C: LitVarStr var_98, "  </tr>"
  loc_C17761: PopAdLdVar
  loc_C17762: FLdPr Me
  loc_C17765: MemLdRfVar from_stack_1.global_60
  loc_C17768: LdPrVar
  loc_C1776A: LateMemCall
  loc_C17770: LitVarStr var_98, "  </thead>"
  loc_C17775: PopAdLdVar
  loc_C17776: FLdPr Me
  loc_C17779: MemLdRfVar from_stack_1.global_60
  loc_C1777C: LdPrVar
  loc_C1777E: LateMemCall
  loc_C17784: ExitProcHresult
  loc_C17785: CCyI2
  loc_C17786: ModI2
End Function

Private Function Proc_358_36_A0FE78() 'A0FE78
  'Data Table: 4FBF24
  loc_A0FE38: LitVarStr var_94, "</table>"
  loc_A0FE3D: PopAdLdVar
  loc_A0FE3E: FLdPr Me
  loc_A0FE41: MemLdRfVar from_stack_1.global_60
  loc_A0FE44: LdPrVar
  loc_A0FE46: LateMemCall
  loc_A0FE4C: LitVarStr var_94, "</body>"
  loc_A0FE51: PopAdLdVar
  loc_A0FE52: FLdPr Me
  loc_A0FE55: MemLdRfVar from_stack_1.global_60
  loc_A0FE58: LdPrVar
  loc_A0FE5A: LateMemCall
  loc_A0FE60: LitVarStr var_94, "</html>"
  loc_A0FE65: PopAdLdVar
  loc_A0FE66: FLdPr Me
  loc_A0FE69: MemLdRfVar from_stack_1.global_60
  loc_A0FE6C: LdPrVar
  loc_A0FE6E: LateMemCall
  loc_A0FE74: ExitProcHresult
  loc_A0FE75: SubR4
  loc_A0FE76: FFreeAd  = ""
End Function
