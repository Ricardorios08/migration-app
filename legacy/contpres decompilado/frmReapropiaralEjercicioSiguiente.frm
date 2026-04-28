VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmReapropiaralEjercicioSiguiente
  Caption = "Reapropiar al Ejercicio Siguiente"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmReapropiaralEjercicioSiguiente.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15885
  ClientHeight = 9135
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 2
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 3
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":08CA
    End
  End
  Begin VB.Frame Frame1
    Caption = " Reapropiar al Ejercicio Siguiente "
    Left = 120
    Top = 3720
    Width = 15255
    Height = 5655
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame FrameCoes
      Left = 9840
      Top = 480
      Width = 5295
      Height = 2895
      TabIndex = 26
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 13,5
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin MSMask.MaskEdBox CoesPartMsk
        Left = 120
        Top = 960
        Width = 1575
        Height = 360
        TabIndex = 27
        OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0952
        DataField = "CoesPart"
      End
      Begin MSMask.MaskEdBox CoesOrgaMsk
        Left = 240
        Top = 1440
        Width = 1455
        Height = 360
        TabIndex = 29
        OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":09DA
        DataField = "CoesOrga"
      End
      Begin MSMask.MaskEdBox CoesFifuMsk
        Left = 120
        Top = 2400
        Width = 1575
        Height = 360
        TabIndex = 31
        OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0A62
        DataField = "CoesFifu"
      End
      Begin VB.Label DeesPartLbl
        Left = 1800
        Top = 960
        Width = 3375
        Height = 360
        TabIndex = 28
        BorderStyle = 1 'Fixed Single
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8,25
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label DeesOrgaLbl
        Left = 1800
        Top = 1440
        Width = 3375
        Height = 360
        TabIndex = 30
        BorderStyle = 1 'Fixed Single
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8,25
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
      Begin VB.Label DeesFifuLbl
        Left = 1800
        Top = 2400
        Width = 3375
        Height = 360
        TabIndex = 32
        BorderStyle = 1 'Fixed Single
        BeginProperty Font
          Name = "MS Sans Serif"
          Size = 8,25
          Charset = 0
          Weight = 400
          Underline = 0 'False
          Italic = 0 'False
          Strikethrough = 0 'False
        EndProperty
      End
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 2280
      Top = 4440
      Width = 1815
      Height = 360
      TabIndex = 48
      OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0AEA
      DataField = "CucuPers"
    End
    Begin VB.TextBox ImpoImpuTxt
      Left = 9840
      Top = 3960
      Width = 1815
      Height = 360
      TabIndex = 44
      MaxLength = 14
      DataField = "ImpoImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox DetaImpuTxt
      Left = 2280
      Top = 5040
      Width = 10935
      Height = 360
      TabIndex = 51
      MaxLength = 100
      DataField = "DetaImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSMask.MaskEdBox ExorImpuMsk
      Left = 2280
      Top = 457
      Width = 2175
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0B60
      DataField = "ExorImpu"
    End
    Begin MSMask.MaskEdBox CodiInsuMsk
      Left = 2280
      Top = 960
      Width = 1335
      Height = 360
      TabIndex = 12
      OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0BC0
      DataField = "CodiInsu"
    End
    Begin VB.TextBox CantImpuTxt
      Left = 2280
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 40
      MaxLength = 14
      DataField = "CantImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox ImunImpuTxt
      Left = 6240
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 42
      MaxLength = 14
      DataField = "ImunImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 2280
      Top = 2880
      Width = 1575
      Height = 360
      TabIndex = 24
      OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0C30
      DataField = "CodiFifu"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2280
      Top = 1920
      Width = 1335
      Height = 360
      TabIndex = 18
      OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0CB8
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 2280
      Top = 1440
      Width = 1575
      Height = 360
      TabIndex = 15
      OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0D40
      DataField = "CodiPart"
    End
    Begin MSMask.MaskEdBox CodiUngaMsk
      Left = 2295
      Top = 2400
      Width = 1335
      Height = 360
      TabIndex = 21
      OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0DC8
      DataField = "CodiUnga"
    End
    Begin MSMask.MaskEdBox FechImpuMsk
      Left = 5760
      Top = 480
      Width = 1335
      Height = 360
      TabIndex = 10
      OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0E58
      Appearance = 0 'Flat
    End
    Begin VB.Label Label21
      Caption = "Item:"
      Left = 10200
      Top = 3480
      Width = 540
      Height = 300
      TabIndex = 37
      AutoSize = -1  'True
    End
    Begin VB.Label CodiItcoLbl
      Left = 10800
      Top = 3480
      Width = 975
      Height = 360
      TabIndex = 38
      BorderStyle = 1 'Fixed Single
      DataField = "Item"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label CodiOrcoLbl
      Left = 8880
      Top = 3480
      Width = 975
      Height = 360
      TabIndex = 36
      BorderStyle = 1 'Fixed Single
      DataField = "CodiOrco"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label16
      Caption = "O.C.:"
      Left = 8280
      Top = 3480
      Width = 525
      Height = 300
      TabIndex = 35
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "Fecha:"
      Left = 4920
      Top = 487
      Width = 735
      Height = 300
      TabIndex = 9
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
    Begin VB.Label LabelSaldAuto
      Caption = "Saldo Autorizado de la partida en el Ejercicio Siguiente:"
      Left = 240
      Top = 3480
      Width = 5835
      Height = 300
      TabIndex = 33
      AutoSize = -1  'True
    End
    Begin VB.Label SaldAutoLbl
      Left = 6120
      Top = 3450
      Width = 1935
      Height = 360
      TabIndex = 34
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
    End
    Begin VB.Label DetaUngaLbl
      Left = 3735
      Top = 2400
      Width = 6000
      Height = 360
      TabIndex = 22
      BorderStyle = 1 'Fixed Single
      DataField = "DetaUnga"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label19
      Caption = "Unidad de Gasto:"
      Left = 360
      Top = 2400
      Width = 1875
      Height = 300
      TabIndex = 20
      AutoSize = -1  'True
    End
    Begin VB.Label Label18
      Caption = "Detalle:"
      Left = 1380
      Top = 5040
      Width = 810
      Height = 300
      TabIndex = 50
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Importe Total:"
      Left = 8280
      Top = 3960
      Width = 1470
      Height = 300
      TabIndex = 43
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Expediente Original:"
      Left = 120
      Top = 480
      Width = 2115
      Height = 300
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label4
      Caption = "Partida:"
      Left = 1380
      Top = 1440
      Width = 810
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Insumo:"
      Left = 1335
      Top = 960
      Width = 855
      Height = 300
      TabIndex = 11
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Organigrama:"
      Left = 750
      Top = 1920
      Width = 1440
      Height = 300
      TabIndex = 17
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Finalidad-Función:"
      Left = 240
      Top = 2880
      Width = 1950
      Height = 300
      TabIndex = 23
      AutoSize = -1  'True
    End
    Begin VB.Label Label14
      Caption = "Saldo:"
      Left = 12000
      Top = 3960
      Width = 675
      Height = 300
      TabIndex = 45
      AutoSize = -1  'True
    End
    Begin VB.Label Label15
      Caption = "Proveedor:"
      Left = 1080
      Top = 4440
      Width = 1140
      Height = 300
      TabIndex = 47
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
    Begin VB.Label DetaPartLbl
      Left = 3960
      Top = 1440
      Width = 5775
      Height = 360
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
      DataField = "DetaPart"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaOrgaLbl
      Left = 3720
      Top = 1920
      Width = 6015
      Height = 360
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
      DataField = "DetaOrga"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaFifuLbl
      Left = 3960
      Top = 2880
      Width = 5775
      Height = 360
      TabIndex = 25
      BorderStyle = 1 'Fixed Single
      DataField = "DetaFifu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaProvLbl
      Left = 4200
      Top = 4440
      Width = 5655
      Height = 360
      TabIndex = 49
      BorderStyle = 1 'Fixed Single
      DataField = "DetaProv"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaInsuLbl
      Left = 3720
      Top = 960
      Width = 6015
      Height = 360
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
      DataField = "DetaInsu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label SaldImpuLbl
      Left = 12720
      Top = 3960
      Width = 1815
      Height = 360
      TabIndex = 46
      BorderStyle = 1 'Fixed Single
      DataField = "DefiImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
    End
    Begin VB.Label Label11
      Caption = "Cantidad:"
      Left = 1200
      Top = 3960
      Width = 1020
      Height = 300
      TabIndex = 39
      AutoSize = -1  'True
    End
    Begin VB.Label Label12
      Caption = "Importe Unitario:"
      Left = 4380
      Top = 3960
      Width = 1770
      Height = 300
      TabIndex = 41
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 15255
    Height = 1935
    TabIndex = 5
    OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":0F08
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":145E
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15885
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmReapropiaralEjercicioSiguiente.frx":8FDC
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmReapropiaralEjercicioSiguiente.frx":9538
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmReapropiaralEjercicioSiguiente"


Private Sub tlbABMS_ButtonClick(Button As Button) 'BA484C
  'Data Table: 4EA8B4
  loc_BA3980: ILdRf Button
  loc_BA3983: FStAd var_88 
  loc_BA3987: FLdRfVar var_8C
  loc_BA398A: FLdPr var_88
  loc_BA398D:  = Me.Key
  loc_BA3992: FLdZeroAd var_8C
  loc_BA3995: FStStr var_90
  loc_BA3998: ILdRf var_90
  loc_BA399B: LitStr "btnCrear"
  loc_BA399E: EqStr
  loc_BA39A0: BranchF loc_BA3E31
  loc_BA39A3: LitVar_TRUE var_A0
  loc_BA39A6: PopAdLdVar
  loc_BA39A7: FLdPr Me
  loc_BA39AA: VCallAd Control_ID_FechImpuMsk
  loc_BA39AD: FStAdFunc var_B4
  loc_BA39B0: FLdPr var_B4
  loc_BA39B3: LateIdSt
  loc_BA39B8: FFree1Ad var_B4
  loc_BA39BB: LitStr vbNullString
  loc_BA39BE: FLdPr Me
  loc_BA39C1: MemStStrCopy
  loc_BA39C5: FLdRfVar var_B8
  loc_BA39C8: FLdPr Me
  loc_BA39CB: MemLdRfVar from_stack_1.global_52
  loc_BA39CE: NewIfNullPr clsimputacion
  loc_BA39D1: from_stack_1 = clsimputacion.RecordCount
  loc_BA39D6: ILdRf var_B8
  loc_BA39D9: LitI4 0
  loc_BA39DE: GtI4
  loc_BA39DF: BranchF loc_BA3E2E
  loc_BA39E2: FLdPr Me
  loc_BA39E5: MemLdRfVar from_stack_1.global_52
  loc_BA39E8: NewIfNullPr clsimputacion
  loc_BA39EB: Call clsimputacion.MoveFirst()
  loc_BA39F0: FLdRfVar var_BA
  loc_BA39F3: FLdPr Me
  loc_BA39F6: MemLdRfVar from_stack_1.global_52
  loc_BA39F9: NewIfNullPr clsimputacion
  loc_BA39FC: from_stack_1 = clsimputacion.EOF
  loc_BA3A01: FLdI2 var_BA
  loc_BA3A04: NotI4
  loc_BA3A05: BranchF loc_BA3D9B
  loc_BA3A08: LitStr vbNullString
  loc_BA3A0B: FLdPr Me
  loc_BA3A0E: MemStStrCopy
  loc_BA3A12: FLdRfVar var_D4
  loc_BA3A15: FLdRfVar var_C4
  loc_BA3A18: LitVarStr var_A0, "CoesPart"
  loc_BA3A1D: PopAdLdVar
  loc_BA3A1E: FLdRfVar var_C0
  loc_BA3A21: FLdRfVar var_B4
  loc_BA3A24: FLdPr Me
  loc_BA3A27: MemLdRfVar from_stack_1.global_52
  loc_BA3A2A: NewIfNullPr clsimputacion
  loc_BA3A2D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA3A32: FLdPr var_B4
  loc_BA3A35:  = Me.Fields
  loc_BA3A3A: FLdPr var_C0
  loc_BA3A3D: from_stack_2 = Me.Item(from_stack_1)
  loc_BA3A42: FLdPr var_C4
  loc_BA3A45:  = Me.Value
  loc_BA3A4A: FLdRfVar var_8C
  loc_BA3A4D: FLdPr Me
  loc_BA3A50:  = Me.Name
  loc_BA3A55: FLdPr Me
  loc_BA3A58: MemLdRfVar from_stack_1.global_72
  loc_BA3A5B: NewIfNullRf
  loc_BA3A5F: ILdRf var_8C
  loc_BA3A62: LitI2_Byte 0
  loc_BA3A64: FLdRfVar var_D4
  loc_BA3A67: CStrVarTmp
  loc_BA3A68: FStStrNoPop var_D8
  loc_BA3A6B: ImpAdLdI2 MemVar_C3D064
  loc_BA3A6E: LitI2_Byte 1
  loc_BA3A70: AddI2
  loc_BA3A71: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_BA3A76: FStStrNoPop var_DC
  loc_BA3A79: FLdPr Me
  loc_BA3A7C: MemStStrCopy
  loc_BA3A80: FFreeStr var_D8 = "": var_8C = ""
  loc_BA3A89: FFreeAd var_B4 = "": var_C0 = ""
  loc_BA3A92: FFree1Var var_D4 = ""
  loc_BA3A95: FLdPr Me
  loc_BA3A98: MemLdStr global_60
  loc_BA3A9B: LitStr vbNullString
  loc_BA3A9E: NeStr
  loc_BA3AA0: BranchF loc_BA3AB4
  loc_BA3AA3: LitI4 0
  loc_BA3AA8: FLdPr Me
  loc_BA3AAB: MemLdStr global_60
  loc_BA3AAE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA3AB3: ExitProcHresult
  loc_BA3AB4: FLdRfVar var_D4
  loc_BA3AB7: FLdRfVar var_C4
  loc_BA3ABA: LitVarStr var_A0, "CoesOrga"
  loc_BA3ABF: PopAdLdVar
  loc_BA3AC0: FLdRfVar var_C0
  loc_BA3AC3: FLdRfVar var_B4
  loc_BA3AC6: FLdPr Me
  loc_BA3AC9: MemLdRfVar from_stack_1.global_52
  loc_BA3ACC: NewIfNullPr clsimputacion
  loc_BA3ACF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA3AD4: FLdPr var_B4
  loc_BA3AD7:  = Me.Fields
  loc_BA3ADC: FLdPr var_C0
  loc_BA3ADF: from_stack_2 = Me.Item(from_stack_1)
  loc_BA3AE4: FLdPr var_C4
  loc_BA3AE7:  = Me.Value
  loc_BA3AEC: FLdRfVar var_8C
  loc_BA3AEF: FLdPr Me
  loc_BA3AF2:  = Me.Name
  loc_BA3AF7: FLdPr Me
  loc_BA3AFA: MemLdRfVar from_stack_1.global_76
  loc_BA3AFD: NewIfNullRf
  loc_BA3B01: ILdRf var_8C
  loc_BA3B04: FLdRfVar var_D4
  loc_BA3B07: CStrVarTmp
  loc_BA3B08: FStStrNoPop var_D8
  loc_BA3B0B: ImpAdLdI2 MemVar_C3D064
  loc_BA3B0E: LitI2_Byte 1
  loc_BA3B10: AddI2
  loc_BA3B11: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_BA3B16: FStStrNoPop var_DC
  loc_BA3B19: FLdPr Me
  loc_BA3B1C: MemStStrCopy
  loc_BA3B20: FFreeStr var_D8 = "": var_8C = ""
  loc_BA3B29: FFreeAd var_B4 = "": var_C0 = ""
  loc_BA3B32: FFree1Var var_D4 = ""
  loc_BA3B35: FLdPr Me
  loc_BA3B38: MemLdStr global_60
  loc_BA3B3B: LitStr vbNullString
  loc_BA3B3E: NeStr
  loc_BA3B40: BranchF loc_BA3B54
  loc_BA3B43: LitI4 0
  loc_BA3B48: FLdPr Me
  loc_BA3B4B: MemLdStr global_60
  loc_BA3B4E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA3B53: ExitProcHresult
  loc_BA3B54: FLdRfVar var_D4
  loc_BA3B57: FLdRfVar var_C4
  loc_BA3B5A: LitVarStr var_A0, "CoesFifu"
  loc_BA3B5F: PopAdLdVar
  loc_BA3B60: FLdRfVar var_C0
  loc_BA3B63: FLdRfVar var_B4
  loc_BA3B66: FLdPr Me
  loc_BA3B69: MemLdRfVar from_stack_1.global_52
  loc_BA3B6C: NewIfNullPr clsimputacion
  loc_BA3B6F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA3B74: FLdPr var_B4
  loc_BA3B77:  = Me.Fields
  loc_BA3B7C: FLdPr var_C0
  loc_BA3B7F: from_stack_2 = Me.Item(from_stack_1)
  loc_BA3B84: FLdPr var_C4
  loc_BA3B87:  = Me.Value
  loc_BA3B8C: FLdPr Me
  loc_BA3B8F: MemLdRfVar from_stack_1.global_80
  loc_BA3B92: NewIfNullRf
  loc_BA3B96: FLdRfVar var_D4
  loc_BA3B99: CStrVarTmp
  loc_BA3B9A: FStStrNoPop var_8C
  loc_BA3B9D: ImpAdLdI2 MemVar_C3D064
  loc_BA3BA0: LitI2_Byte 1
  loc_BA3BA2: AddI2
  loc_BA3BA3: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_BA3BA8: FStStrNoPop var_D8
  loc_BA3BAB: FLdPr Me
  loc_BA3BAE: MemStStrCopy
  loc_BA3BB2: FFreeStr var_8C = ""
  loc_BA3BB9: FFreeAd var_B4 = "": var_C0 = ""
  loc_BA3BC2: FFree1Var var_D4 = ""
  loc_BA3BC5: FLdPr Me
  loc_BA3BC8: MemLdStr global_60
  loc_BA3BCB: LitStr vbNullString
  loc_BA3BCE: NeStr
  loc_BA3BD0: BranchF loc_BA3BE4
  loc_BA3BD3: LitI4 0
  loc_BA3BD8: FLdPr Me
  loc_BA3BDB: MemLdStr global_60
  loc_BA3BDE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA3BE3: ExitProcHresult
  loc_BA3BE4: Call Proc_136_16_A4F540()
  loc_BA3BE9: FLdRfVar var_8C
  loc_BA3BEC: FLdPr Me
  loc_BA3BEF: VCallAd Control_ID_SaldAutoLbl
  loc_BA3BF2: FStAdFunc var_B4
  loc_BA3BF5: FLdPr var_B4
  loc_BA3BF8:  = Me.Caption
  loc_BA3BFD: FLdZeroAd var_8C
  loc_BA3C00: CVarStr var_D4
  loc_BA3C03: ImpAdCallI2 IsNumeric()
  loc_BA3C08: FFree1Ad var_B4
  loc_BA3C0B: FFree1Var var_D4 = ""
  loc_BA3C0E: BranchF loc_BA3D36
  loc_BA3C11: FLdRfVar var_8C
  loc_BA3C14: FLdPr Me
  loc_BA3C17: VCallAd Control_ID_SaldAutoLbl
  loc_BA3C1A: FStAdFunc var_B4
  loc_BA3C1D: FLdPr var_B4
  loc_BA3C20:  = Me.Caption
  loc_BA3C25: ILdRf var_8C
  loc_BA3C28: CR8Str
  loc_BA3C2A: LitI2_Byte 0
  loc_BA3C2C: CR8I2
  loc_BA3C2D: LtR8
  loc_BA3C2E: FFree1Str var_8C
  loc_BA3C31: FFree1Ad var_B4
  loc_BA3C34: BranchF loc_BA3C5D
  loc_BA3C37: LitI4 0
  loc_BA3C3C: LitStr "Revise el Autorizado Presupuestario al "
  loc_BA3C3F: FLdPr Me
  loc_BA3C42: MemLdStr global_88
  loc_BA3C45: ConcatStr
  loc_BA3C46: FStStrNoPop var_8C
  loc_BA3C49: LitStr "..."
  loc_BA3C4C: ConcatStr
  loc_BA3C4D: FStStrNoPop var_D8
  loc_BA3C50: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA3C55: FFreeStr var_8C = ""
  loc_BA3C5C: ExitProcHresult
  loc_BA3C5D: FLdRfVar var_8C
  loc_BA3C60: FLdPr Me
  loc_BA3C63: VCallAd Control_ID_ImpoImpuTxt
  loc_BA3C66: FStAdFunc var_B4
  loc_BA3C69: FLdPr var_B4
  loc_BA3C6C:  = Me.Text
  loc_BA3C71: FLdRfVar var_D8
  loc_BA3C74: FLdPr Me
  loc_BA3C77: VCallAd Control_ID_SaldImpuLbl
  loc_BA3C7A: FStAdFunc var_C0
  loc_BA3C7D: FLdPr var_C0
  loc_BA3C80:  = Me.Caption
  loc_BA3C85: FLdRfVar var_DC
  loc_BA3C88: FLdPr Me
  loc_BA3C8B: VCallAd Control_ID_SaldImpuLbl
  loc_BA3C8E: FStAdFunc var_C4
  loc_BA3C91: FLdPr var_C4
  loc_BA3C94:  = Me.Caption
  loc_BA3C99: FLdZeroAd var_DC
  loc_BA3C9C: CVarStr var_EC
  loc_BA3C9F: LitVarI2 var_D4, 0
  loc_BA3CA4: ILdRf var_D8
  loc_BA3CA7: LitStr vbNullString
  loc_BA3CAA: EqStr
  loc_BA3CAC: CVarBoolI2 var_A0
  loc_BA3CB0: FLdRfVar var_FC
  loc_BA3CB3: ImpAdCallFPR4  = IIf(, , )
  loc_BA3CB8: FLdRfVar var_104
  loc_BA3CBB: ImpAdLdI2 MemVar_C3D064
  loc_BA3CBE: LitI2_Byte 1
  loc_BA3CC0: AddI2
  loc_BA3CC1: PopTmpLdAd2 var_BA
  loc_BA3CC4: FLdRfVar var_FC
  loc_BA3CC7: CStrVarVal var_100
  loc_BA3CCB: FLdPr Me
  loc_BA3CCE: MemLdStr global_88
  loc_BA3CD1: FLdPr Me
  loc_BA3CD4: MemLdRfVar from_stack_1.global_84
  loc_BA3CD7: NewIfNullRf
  loc_BA3CDB: FLdPr Me
  loc_BA3CDE: MemLdRfVar from_stack_1.global_80
  loc_BA3CE1: NewIfNullRf
  loc_BA3CE5: FLdPr Me
  loc_BA3CE8: MemLdRfVar from_stack_1.global_76
  loc_BA3CEB: NewIfNullRf
  loc_BA3CEF: FLdPr Me
  loc_BA3CF2: MemLdRfVar from_stack_1.global_72
  loc_BA3CF5: NewIfNullRf
  loc_BA3CF9: ILdRf var_8C
  loc_BA3CFC: FLdPr Me
  loc_BA3CFF: MemLdRfVar from_stack_1.global_52
  loc_BA3D02: NewIfNullPr clsimputacion
  loc_BA3D05: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BA3D0A: ILdRf var_104
  loc_BA3D0D: FLdPr Me
  loc_BA3D10: MemStStrCopy
  loc_BA3D14: FFreeStr var_D8 = "": var_8C = "": var_100 = ""
  loc_BA3D1F: FFreeAd var_B4 = "": var_C0 = ""
  loc_BA3D28: FFreeVar var_A0 = "": var_D4 = "": var_EC = ""
  loc_BA3D33: Branch loc_BA3D40
  loc_BA3D36: LitStr "Revise el Autorizado Presupuestario..."
  loc_BA3D39: FLdPr Me
  loc_BA3D3C: MemStStrCopy
  loc_BA3D40: FLdPr Me
  loc_BA3D43: MemLdStr global_60
  loc_BA3D46: LitStr vbNullString
  loc_BA3D49: NeStr
  loc_BA3D4B: BranchF loc_BA3D8A
  loc_BA3D4E: LitI4 0
  loc_BA3D53: FLdPr Me
  loc_BA3D56: MemLdStr global_60
  loc_BA3D59: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA3D5E: LitI4 &HB
  loc_BA3D63: FLdPr Me
  loc_BA3D66: MemLdStr global_60
  loc_BA3D69: ImpAdCallI2 Left$(, )
  loc_BA3D6E: FStStrNoPop var_8C
  loc_BA3D71: LitStr "Advertencia"
  loc_BA3D74: EqStr
  loc_BA3D76: FFree1Str var_8C
  loc_BA3D79: BranchF loc_BA3D89
  loc_BA3D7C: LitStr vbNullString
  loc_BA3D7F: FLdPr Me
  loc_BA3D82: MemStStrCopy
  loc_BA3D86: Branch loc_BA3D8A
  loc_BA3D89: ExitProcHresult
  loc_BA3D8A: FLdPr Me
  loc_BA3D8D: MemLdRfVar from_stack_1.global_52
  loc_BA3D90: NewIfNullPr clsimputacion
  loc_BA3D93: Call clsimputacion.MoveSiguiente()
  loc_BA3D98: Branch loc_BA39F0
  loc_BA3D9B: FLdPr Me
  loc_BA3D9E: MemLdRfVar from_stack_1.global_52
  loc_BA3DA1: NewIfNullPr clsimputacion
  loc_BA3DA4: Call clsimputacion.MoveFirst()
  loc_BA3DA9: LitI2_Byte &HFF
  loc_BA3DAB: PopTmpLdAd2 var_106
  loc_BA3DAE: LitI2_Byte &HFF
  loc_BA3DB0: PopTmpLdAd2 var_BA
  loc_BA3DB3: LitStr "¿REAPROPIA los expedientes FILTRADOS al Ejercicio siguiente?"
  loc_BA3DB6: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BA3DBB: CI4UI1
  loc_BA3DBC: LitI4 6
  loc_BA3DC1: EqI4
  loc_BA3DC2: BranchF loc_BA3E2E
  loc_BA3DC5: LitI2_Byte 1
  loc_BA3DC7: FLdPr Me
  loc_BA3DCA: MemStUI1
  loc_BA3DCE: ILdRf Me
  loc_BA3DD1: CastAd
  loc_BA3DD4: FStAdFunc var_B4
  loc_BA3DD7: FLdRfVar var_B4
  loc_BA3DDA: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BA3DDF: FFree1Ad var_B4
  loc_BA3DE2: LitI4 0
  loc_BA3DE7: LitI4 0
  loc_BA3DEC: FLdRfVar var_10C
  loc_BA3DEF: Redim
  loc_BA3DF9: FLdPr Me
  loc_BA3DFC: VCallAd Control_ID_dgdABMS
  loc_BA3DFF: CVarAd
  loc_BA3E03: ParmAry1St
  loc_BA3E09: FLdRfVar var_10C
  loc_BA3E0C: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BA3E11: FLdRfVar var_10C
  loc_BA3E14: Erase
  loc_BA3E15: LitVar_FALSE
  loc_BA3E19: PopAdLdVar
  loc_BA3E1A: FLdPr Me
  loc_BA3E1D: VCallAd Control_ID_FechImpuMsk
  loc_BA3E20: FStAdFunc var_B4
  loc_BA3E23: FLdPr var_B4
  loc_BA3E26: LateIdSt
  loc_BA3E2B: FFree1Ad var_B4
  loc_BA3E2E: Branch loc_BA4849
  loc_BA3E31: ILdRf var_90
  loc_BA3E34: LitStr "btnModificar"
  loc_BA3E37: EqStr
  loc_BA3E39: BranchF loc_BA3E3F
  loc_BA3E3C: Branch loc_BA4849
  loc_BA3E3F: ILdRf var_90
  loc_BA3E42: LitStr "btnEliminar"
  loc_BA3E45: EqStr
  loc_BA3E47: BranchF loc_BA3E4D
  loc_BA3E4A: Branch loc_BA4849
  loc_BA3E4D: ILdRf var_90
  loc_BA3E50: LitStr "btnGuardar"
  loc_BA3E53: EqStr
  loc_BA3E55: BranchF loc_BA46E1
  loc_BA3E58: LitI2_Byte 0
  loc_BA3E5A: PopTmpLdAd2 var_BA
  loc_BA3E5D: Call FechImpuMsk_UnknownEvent_8()
  loc_BA3E62: FLdPr Me
  loc_BA3E65: MemLdStr global_60
  loc_BA3E68: LitStr vbNullString
  loc_BA3E6B: NeStr
  loc_BA3E6D: BranchF loc_BA3E81
  loc_BA3E70: LitI4 0
  loc_BA3E75: FLdPr Me
  loc_BA3E78: MemLdStr global_60
  loc_BA3E7B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA3E80: ExitProcHresult
  loc_BA3E81: FLdPr Me
  loc_BA3E84: MemLdUI1 global_56
  loc_BA3E88: FStUI1 var_10E
  loc_BA3E8C: FLdUI1
  loc_BA3E90: LitI2_Byte 1
  loc_BA3E92: EqI2
  loc_BA3E93: BranchF loc_BA46BD
  loc_BA3E96: FLdPr Me
  loc_BA3E99: MemLdRfVar from_stack_1.global_52
  loc_BA3E9C: NewIfNullPr clsimputacion
  loc_BA3E9F: Call clsimputacion.MoveFirst()
  loc_BA3EA4: FLdRfVar var_BA
  loc_BA3EA7: FLdPr Me
  loc_BA3EAA: MemLdRfVar from_stack_1.global_52
  loc_BA3EAD: NewIfNullPr clsimputacion
  loc_BA3EB0: from_stack_1 = clsimputacion.EOF
  loc_BA3EB5: FLdI2 var_BA
  loc_BA3EB8: NotI4
  loc_BA3EB9: BranchF loc_BA461D
  loc_BA3EBC: Call Proc_136_16_A4F540()
  loc_BA3EC1: FLdRfVar var_8C
  loc_BA3EC4: FLdPr Me
  loc_BA3EC7: VCallAd Control_ID_SaldAutoLbl
  loc_BA3ECA: FStAdFunc var_B4
  loc_BA3ECD: FLdPr var_B4
  loc_BA3ED0:  = Me.Caption
  loc_BA3ED5: FLdZeroAd var_8C
  loc_BA3ED8: CVarStr var_D4
  loc_BA3EDB: ImpAdCallI2 IsNumeric()
  loc_BA3EE0: FFree1Ad var_B4
  loc_BA3EE3: FFree1Var var_D4 = ""
  loc_BA3EE6: BranchF loc_BA400D
  loc_BA3EE9: FLdRfVar var_8C
  loc_BA3EEC: FLdPr Me
  loc_BA3EEF: VCallAd Control_ID_SaldAutoLbl
  loc_BA3EF2: FStAdFunc var_B4
  loc_BA3EF5: FLdPr var_B4
  loc_BA3EF8:  = Me.Caption
  loc_BA3EFD: ILdRf var_8C
  loc_BA3F00: CR8Str
  loc_BA3F02: LitI2_Byte 0
  loc_BA3F04: CR8I2
  loc_BA3F05: LtR8
  loc_BA3F06: FFree1Str var_8C
  loc_BA3F09: FFree1Ad var_B4
  loc_BA3F0C: BranchF loc_BA3F34
  loc_BA3F0F: LitI4 0
  loc_BA3F14: LitStr "Revise el Autorizado Presupuestario al "
  loc_BA3F17: FLdPr Me
  loc_BA3F1A: MemLdStr global_88
  loc_BA3F1D: ConcatStr
  loc_BA3F1E: FStStrNoPop var_8C
  loc_BA3F21: LitStr "..."
  loc_BA3F24: ConcatStr
  loc_BA3F25: FStStrNoPop var_D8
  loc_BA3F28: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA3F2D: FFreeStr var_8C = ""
  loc_BA3F34: FLdRfVar var_8C
  loc_BA3F37: FLdPr Me
  loc_BA3F3A: VCallAd Control_ID_ImpoImpuTxt
  loc_BA3F3D: FStAdFunc var_B4
  loc_BA3F40: FLdPr var_B4
  loc_BA3F43:  = Me.Text
  loc_BA3F48: FLdRfVar var_D8
  loc_BA3F4B: FLdPr Me
  loc_BA3F4E: VCallAd Control_ID_SaldImpuLbl
  loc_BA3F51: FStAdFunc var_C0
  loc_BA3F54: FLdPr var_C0
  loc_BA3F57:  = Me.Caption
  loc_BA3F5C: FLdRfVar var_DC
  loc_BA3F5F: FLdPr Me
  loc_BA3F62: VCallAd Control_ID_SaldImpuLbl
  loc_BA3F65: FStAdFunc var_C4
  loc_BA3F68: FLdPr var_C4
  loc_BA3F6B:  = Me.Caption
  loc_BA3F70: FLdZeroAd var_DC
  loc_BA3F73: CVarStr var_EC
  loc_BA3F76: LitVarI2 var_D4, 0
  loc_BA3F7B: ILdRf var_D8
  loc_BA3F7E: LitStr vbNullString
  loc_BA3F81: EqStr
  loc_BA3F83: CVarBoolI2 var_A0
  loc_BA3F87: FLdRfVar var_FC
  loc_BA3F8A: ImpAdCallFPR4  = IIf(, , )
  loc_BA3F8F: FLdRfVar var_104
  loc_BA3F92: ImpAdLdI2 MemVar_C3D064
  loc_BA3F95: LitI2_Byte 1
  loc_BA3F97: AddI2
  loc_BA3F98: PopTmpLdAd2 var_BA
  loc_BA3F9B: FLdRfVar var_FC
  loc_BA3F9E: CStrVarVal var_100
  loc_BA3FA2: FLdPr Me
  loc_BA3FA5: MemLdStr global_88
  loc_BA3FA8: FLdPr Me
  loc_BA3FAB: MemLdRfVar from_stack_1.global_84
  loc_BA3FAE: NewIfNullRf
  loc_BA3FB2: FLdPr Me
  loc_BA3FB5: MemLdRfVar from_stack_1.global_80
  loc_BA3FB8: NewIfNullRf
  loc_BA3FBC: FLdPr Me
  loc_BA3FBF: MemLdRfVar from_stack_1.global_76
  loc_BA3FC2: NewIfNullRf
  loc_BA3FC6: FLdPr Me
  loc_BA3FC9: MemLdRfVar from_stack_1.global_72
  loc_BA3FCC: NewIfNullRf
  loc_BA3FD0: ILdRf var_8C
  loc_BA3FD3: FLdPr Me
  loc_BA3FD6: MemLdRfVar from_stack_1.global_52
  loc_BA3FD9: NewIfNullPr clsimputacion
  loc_BA3FDC: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BA3FE1: ILdRf var_104
  loc_BA3FE4: FLdPr Me
  loc_BA3FE7: MemStStrCopy
  loc_BA3FEB: FFreeStr var_D8 = "": var_8C = "": var_100 = ""
  loc_BA3FF6: FFreeAd var_B4 = "": var_C0 = ""
  loc_BA3FFF: FFreeVar var_A0 = "": var_D4 = "": var_EC = ""
  loc_BA400A: Branch loc_BA4017
  loc_BA400D: LitStr "Revise el Autorizado Presupuestario..."
  loc_BA4010: FLdPr Me
  loc_BA4013: MemStStrCopy
  loc_BA4017: LitI4 &HC
  loc_BA401C: FLdPr Me
  loc_BA401F: MemLdRfVar from_stack_1.global_60
  loc_BA4022: CVarRef
  loc_BA4027: FLdRfVar var_D4
  loc_BA402A: ImpAdCallFPR4  = Left(, )
  loc_BA402F: FLdRfVar var_D4
  loc_BA4032: LitVarStr var_B0, "Advertencia:"
  loc_BA4037: HardType
  loc_BA4038: EqVarBool
  loc_BA403A: FFree1Var var_D4 = ""
  loc_BA403D: BranchF loc_BA404A
  loc_BA4040: LitStr vbNullString
  loc_BA4043: FLdPr Me
  loc_BA4046: MemStStrCopy
  loc_BA404A: FLdPr Me
  loc_BA404D: MemLdStr global_60
  loc_BA4050: LitStr vbNullString
  loc_BA4053: EqStr
  loc_BA4055: BranchF loc_BA460C
  loc_BA4058: FLdRfVar var_194
  loc_BA405B: FLdRfVar var_C4
  loc_BA405E: LitVarStr var_A0, "CoesPart"
  loc_BA4063: PopAdLdVar
  loc_BA4064: FLdRfVar var_C0
  loc_BA4067: FLdRfVar var_B4
  loc_BA406A: FLdPr Me
  loc_BA406D: MemLdRfVar from_stack_1.global_52
  loc_BA4070: NewIfNullPr clsimputacion
  loc_BA4073: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA4078: FLdPr var_B4
  loc_BA407B:  = Me.Fields
  loc_BA4080: FLdPr var_C0
  loc_BA4083: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4088: FLdPr var_C4
  loc_BA408B:  = Me.Value
  loc_BA4090: FLdRfVar var_1A8
  loc_BA4093: FLdRfVar var_11C
  loc_BA4096: LitVarStr var_B0, "CoesOrga"
  loc_BA409B: PopAdLdVar
  loc_BA409C: FLdRfVar var_118
  loc_BA409F: FLdRfVar var_114
  loc_BA40A2: FLdPr Me
  loc_BA40A5: MemLdRfVar from_stack_1.global_52
  loc_BA40A8: NewIfNullPr clsimputacion
  loc_BA40AB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA40B0: FLdPr var_114
  loc_BA40B3:  = Me.Fields
  loc_BA40B8: FLdPr var_118
  loc_BA40BB: from_stack_2 = Me.Item(from_stack_1)
  loc_BA40C0: FLdPr var_11C
  loc_BA40C3:  = Me.Value
  loc_BA40C8: FLdPr Me
  loc_BA40CB: VCallAd Control_ID_CodiUngaMsk
  loc_BA40CE: FStAdFunc var_120
  loc_BA40D1: FLdPr var_120
  loc_BA40D4: LateIdLdVar var_D4 DispID_22 0
  loc_BA40DB: PopAd
  loc_BA40DD: FLdPr Me
  loc_BA40E0: VCallAd Control_ID_CodiInsuMsk
  loc_BA40E3: FStAdFunc var_124
  loc_BA40E6: FLdPr var_124
  loc_BA40E9: LateIdLdVar var_EC DispID_22 0
  loc_BA40F0: PopAd
  loc_BA40F2: FLdRfVar var_1C4
  loc_BA40F5: FLdRfVar var_140
  loc_BA40F8: LitVarStr var_13C, "CoesFifu"
  loc_BA40FD: PopAdLdVar
  loc_BA40FE: FLdRfVar var_12C
  loc_BA4101: FLdRfVar var_128
  loc_BA4104: FLdPr Me
  loc_BA4107: MemLdRfVar from_stack_1.global_52
  loc_BA410A: NewIfNullPr clsimputacion
  loc_BA410D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA4112: FLdPr var_128
  loc_BA4115:  = Me.Fields
  loc_BA411A: FLdPr var_12C
  loc_BA411D: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4122: FLdPr var_140
  loc_BA4125:  = Me.Value
  loc_BA412A: FLdPr Me
  loc_BA412D: VCallAd Control_ID_FechImpuMsk
  loc_BA4130: FStAdFunc var_144
  loc_BA4133: FLdPr var_144
  loc_BA4136: LateIdLdVar var_FC DispID_15 0
  loc_BA413D: PopAd
  loc_BA413F: FLdPr Me
  loc_BA4142: VCallAd Control_ID_ExorImpuMsk
  loc_BA4145: FStAdFunc var_148
  loc_BA4148: FLdPr var_148
  loc_BA414B: LateIdLdVar var_158 DispID_15 0
  loc_BA4152: CStrVarTmp
  loc_BA4153: FStStrNoPop var_8C
  loc_BA4156: ImpAdCallI2 Trim$()
  loc_BA415B: FStStr var_1E8
  loc_BA415E: FLdRfVar var_D8
  loc_BA4161: FLdPr Me
  loc_BA4164: VCallAd Control_ID_CantImpuTxt
  loc_BA4167: FStAdFunc var_15C
  loc_BA416A: FLdPr var_15C
  loc_BA416D:  = Me.Text
  loc_BA4172: FLdRfVar var_DC
  loc_BA4175: FLdPr Me
  loc_BA4178: VCallAd Control_ID_ImunImpuTxt
  loc_BA417B: FStAdFunc var_160
  loc_BA417E: FLdPr var_160
  loc_BA4181:  = Me.Text
  loc_BA4186: FLdRfVar var_100
  loc_BA4189: FLdPr Me
  loc_BA418C: VCallAd Control_ID_ImpoImpuTxt
  loc_BA418F: FStAdFunc var_164
  loc_BA4192: FLdPr var_164
  loc_BA4195:  = Me.Text
  loc_BA419A: FLdRfVar var_104
  loc_BA419D: FLdPr Me
  loc_BA41A0: VCallAd Control_ID_DetaImpuTxt
  loc_BA41A3: FStAdFunc var_168
  loc_BA41A6: FLdPr var_168
  loc_BA41A9:  = Me.Text
  loc_BA41AE: ILdRf var_104
  loc_BA41B1: ImpAdCallI2 Trim$()
  loc_BA41B6: FStStr var_1EC
  loc_BA41B9: FLdRfVar var_1E4
  loc_BA41BC: FLdRfVar var_184
  loc_BA41BF: LitVarStr var_180, "Item"
  loc_BA41C4: PopAdLdVar
  loc_BA41C5: FLdRfVar var_170
  loc_BA41C8: FLdRfVar var_16C
  loc_BA41CB: FLdPr Me
  loc_BA41CE: MemLdRfVar from_stack_1.global_52
  loc_BA41D1: NewIfNullPr clsimputacion
  loc_BA41D4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA41D9: FLdPr var_16C
  loc_BA41DC:  = Me.Fields
  loc_BA41E1: FLdPr var_170
  loc_BA41E4: from_stack_2 = Me.Item(from_stack_1)
  loc_BA41E9: FLdPr var_184
  loc_BA41EC:  = Me.Value
  loc_BA41F1: FLdRfVar var_B8
  loc_BA41F4: LitI2_Byte 0
  loc_BA41F6: LitI2_Byte &HFF
  loc_BA41F8: ImpAdLdI2 MemVar_C3D064
  loc_BA41FB: LitI4 0
  loc_BA4200: FLdRfVar var_1E4
  loc_BA4203: CI2Var
  loc_BA4204: LitI4 0
  loc_BA4209: FLdZeroAd var_1EC
  loc_BA420C: FStStrNoPop var_1D4
  loc_BA420F: ILdRf var_100
  loc_BA4212: CR8Str
  loc_BA4214: PopFPR8
  loc_BA4215: ILdRf var_DC
  loc_BA4218: CR8Str
  loc_BA421A: PopFPR8
  loc_BA421B: ILdRf var_D8
  loc_BA421E: CR8Str
  loc_BA4220: PopFPR8
  loc_BA4221: FLdZeroAd var_1E8
  loc_BA4224: FStStrNoPop var_1D0
  loc_BA4227: FLdRfVar var_FC
  loc_BA422A: CStrVarTmp
  loc_BA422B: FStStrNoPop var_1CC
  loc_BA422E: FLdRfVar var_1C4
  loc_BA4231: CStrVarTmp
  loc_BA4232: FStStrNoPop var_1C8
  loc_BA4235: FLdRfVar var_EC
  loc_BA4238: CStrVarTmp
  loc_BA4239: FStStrNoPop var_1B4
  loc_BA423C: CI4Str
  loc_BA423D: FLdRfVar var_D4
  loc_BA4240: CStrVarTmp
  loc_BA4241: FStStrNoPop var_1B0
  loc_BA4244: CI2Str
  loc_BA4246: FLdRfVar var_1A8
  loc_BA4249: CStrVarTmp
  loc_BA424A: FStStrNoPop var_1AC
  loc_BA424D: FLdRfVar var_194
  loc_BA4250: CStrVarTmp
  loc_BA4251: FStStrNoPop var_198
  loc_BA4254: FLdPr Me
  loc_BA4257: MemLdRfVar from_stack_1.global_52
  loc_BA425A: NewIfNullPr clsimputacion
  loc_BA425D: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BA4262: ILdRf var_B8
  loc_BA4265: FLdPr Me
  loc_BA4268: MemStI4 global_64
  loc_BA426B: FFreeStr var_8C = "": var_104 = "": var_198 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_D8 = "": var_DC = "": var_100 = "": var_1D4 = "": var_1E8 = ""
  loc_BA428C: FFreeAd var_B4 = "": var_C0 = "": var_114 = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_144 = "": var_148 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_C4 = "": var_11C = "": var_140 = ""
  loc_BA42B7: FFreeVar var_D4 = "": var_EC = "": var_FC = "": var_158 = "": var_194 = "": var_1A8 = "": var_1C4 = ""
  loc_BA42CA: FLdPr Me
  loc_BA42CD: MemLdStr global_64
  loc_BA42D0: LitI4 0
  loc_BA42D5: EqI4
  loc_BA42D6: BranchF loc_BA42E9
  loc_BA42D9: LitI4 0
  loc_BA42DE: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_BA42E1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA42E6: Branch loc_BA460C
  loc_BA42E9: FLdRfVar var_194
  loc_BA42EC: FLdRfVar var_C4
  loc_BA42EF: LitVarStr var_A0, "CoesPart"
  loc_BA42F4: PopAdLdVar
  loc_BA42F5: FLdRfVar var_C0
  loc_BA42F8: FLdRfVar var_B4
  loc_BA42FB: FLdPr Me
  loc_BA42FE: MemLdRfVar from_stack_1.global_52
  loc_BA4301: NewIfNullPr clsimputacion
  loc_BA4304: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA4309: FLdPr var_B4
  loc_BA430C:  = Me.Fields
  loc_BA4311: FLdPr var_C0
  loc_BA4314: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4319: FLdPr var_C4
  loc_BA431C:  = Me.Value
  loc_BA4321: FLdRfVar var_1A8
  loc_BA4324: FLdRfVar var_11C
  loc_BA4327: LitVarStr var_B0, "CoesOrga"
  loc_BA432C: PopAdLdVar
  loc_BA432D: FLdRfVar var_118
  loc_BA4330: FLdRfVar var_114
  loc_BA4333: FLdPr Me
  loc_BA4336: MemLdRfVar from_stack_1.global_52
  loc_BA4339: NewIfNullPr clsimputacion
  loc_BA433C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA4341: FLdPr var_114
  loc_BA4344:  = Me.Fields
  loc_BA4349: FLdPr var_118
  loc_BA434C: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4351: FLdPr var_11C
  loc_BA4354:  = Me.Value
  loc_BA4359: FLdPr Me
  loc_BA435C: VCallAd Control_ID_CodiUngaMsk
  loc_BA435F: FStAdFunc var_120
  loc_BA4362: FLdPr var_120
  loc_BA4365: LateIdLdVar var_D4 DispID_22 0
  loc_BA436C: PopAd
  loc_BA436E: FLdPr Me
  loc_BA4371: VCallAd Control_ID_CodiInsuMsk
  loc_BA4374: FStAdFunc var_124
  loc_BA4377: FLdPr var_124
  loc_BA437A: LateIdLdVar var_EC DispID_22 0
  loc_BA4381: PopAd
  loc_BA4383: FLdRfVar var_1C4
  loc_BA4386: FLdRfVar var_140
  loc_BA4389: LitVarStr var_13C, "CoesFifu"
  loc_BA438E: PopAdLdVar
  loc_BA438F: FLdRfVar var_12C
  loc_BA4392: FLdRfVar var_128
  loc_BA4395: FLdPr Me
  loc_BA4398: MemLdRfVar from_stack_1.global_52
  loc_BA439B: NewIfNullPr clsimputacion
  loc_BA439E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA43A3: FLdPr var_128
  loc_BA43A6:  = Me.Fields
  loc_BA43AB: FLdPr var_12C
  loc_BA43AE: from_stack_2 = Me.Item(from_stack_1)
  loc_BA43B3: FLdPr var_140
  loc_BA43B6:  = Me.Value
  loc_BA43BB: FLdPr Me
  loc_BA43BE: VCallAd Control_ID_FechImpuMsk
  loc_BA43C1: FStAdFunc var_144
  loc_BA43C4: FLdPr var_144
  loc_BA43C7: LateIdLdVar var_FC DispID_15 0
  loc_BA43CE: PopAd
  loc_BA43D0: FLdPr Me
  loc_BA43D3: VCallAd Control_ID_ExorImpuMsk
  loc_BA43D6: FStAdFunc var_148
  loc_BA43D9: FLdPr var_148
  loc_BA43DC: LateIdLdVar var_158 DispID_15 0
  loc_BA43E3: PopAd
  loc_BA43E5: FLdRfVar var_8C
  loc_BA43E8: FLdPr Me
  loc_BA43EB: VCallAd Control_ID_CantImpuTxt
  loc_BA43EE: FStAdFunc var_15C
  loc_BA43F1: FLdPr var_15C
  loc_BA43F4:  = Me.Text
  loc_BA43F9: FLdRfVar var_D8
  loc_BA43FC: FLdPr Me
  loc_BA43FF: VCallAd Control_ID_ImunImpuTxt
  loc_BA4402: FStAdFunc var_160
  loc_BA4405: FLdPr var_160
  loc_BA4408:  = Me.Text
  loc_BA440D: FLdRfVar var_DC
  loc_BA4410: FLdPr Me
  loc_BA4413: VCallAd Control_ID_ImpoImpuTxt
  loc_BA4416: FStAdFunc var_164
  loc_BA4419: FLdPr var_164
  loc_BA441C:  = Me.Text
  loc_BA4421: FLdRfVar var_100
  loc_BA4424: FLdPr Me
  loc_BA4427: VCallAd Control_ID_DetaImpuTxt
  loc_BA442A: FStAdFunc var_168
  loc_BA442D: FLdPr var_168
  loc_BA4430:  = Me.Text
  loc_BA4435: FLdRfVar var_1E4
  loc_BA4438: FLdRfVar var_184
  loc_BA443B: LitVarStr var_180, "Item"
  loc_BA4440: PopAdLdVar
  loc_BA4441: FLdRfVar var_170
  loc_BA4444: FLdRfVar var_16C
  loc_BA4447: FLdPr Me
  loc_BA444A: MemLdRfVar from_stack_1.global_52
  loc_BA444D: NewIfNullPr clsimputacion
  loc_BA4450: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA4455: FLdPr var_16C
  loc_BA4458:  = Me.Fields
  loc_BA445D: FLdPr var_170
  loc_BA4460: from_stack_2 = Me.Item(from_stack_1)
  loc_BA4465: FLdPr var_184
  loc_BA4468:  = Me.Value
  loc_BA446D: FLdRfVar var_218
  loc_BA4470: FLdRfVar var_208
  loc_BA4473: LitVarStr var_204, "CucuPers"
  loc_BA4478: PopAdLdVar
  loc_BA4479: FLdRfVar var_1F4
  loc_BA447C: FLdRfVar var_1F0
  loc_BA447F: FLdPr Me
  loc_BA4482: MemLdRfVar from_stack_1.global_52
  loc_BA4485: NewIfNullPr clsimputacion
  loc_BA4488: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA448D: FLdPr var_1F0
  loc_BA4490:  = Me.Fields
  loc_BA4495: FLdPr var_1F4
  loc_BA4498: from_stack_2 = Me.Item(from_stack_1)
  loc_BA449D: FLdPr var_208
  loc_BA44A0:  = Me.Value
  loc_BA44A5: FLdRfVar var_B8
  loc_BA44A8: LitI2_Byte 0
  loc_BA44AA: LitI2_Byte &HFF
  loc_BA44AC: ImpAdLdI2 MemVar_C3D064
  loc_BA44AF: LitI4 0
  loc_BA44B4: FLdRfVar var_218
  loc_BA44B7: CStrVarTmp
  loc_BA44B8: FStStrNoPop var_1D0
  loc_BA44BB: LitI2_Byte 0
  loc_BA44BD: CUI1I2
  loc_BA44BF: FLdRfVar var_1E4
  loc_BA44C2: CI2Var
  loc_BA44C3: LitI4 0
  loc_BA44C8: LitI4 0
  loc_BA44CD: ILdRf var_100
  loc_BA44D0: ILdRf var_DC
  loc_BA44D3: CR8Str
  loc_BA44D5: PopFPR8
  loc_BA44D6: ILdRf var_D8
  loc_BA44D9: CR8Str
  loc_BA44DB: PopFPR8
  loc_BA44DC: ILdRf var_8C
  loc_BA44DF: CR8Str
  loc_BA44E1: PopFPR8
  loc_BA44E2: FLdRfVar var_158
  loc_BA44E5: CStrVarTmp
  loc_BA44E6: FStStrNoPop var_1CC
  loc_BA44E9: FLdRfVar var_FC
  loc_BA44EC: CStrVarTmp
  loc_BA44ED: FStStrNoPop var_1C8
  loc_BA44F0: FLdRfVar var_1C4
  loc_BA44F3: CStrVarTmp
  loc_BA44F4: FStStrNoPop var_1B4
  loc_BA44F7: FLdRfVar var_EC
  loc_BA44FA: CStrVarTmp
  loc_BA44FB: FStStrNoPop var_1B0
  loc_BA44FE: CI4Str
  loc_BA44FF: FLdRfVar var_D4
  loc_BA4502: CStrVarTmp
  loc_BA4503: FStStrNoPop var_1AC
  loc_BA4506: CI2Str
  loc_BA4508: FLdRfVar var_1A8
  loc_BA450B: CStrVarTmp
  loc_BA450C: FStStrNoPop var_198
  loc_BA450F: FLdRfVar var_194
  loc_BA4512: CStrVarTmp
  loc_BA4513: FStStrNoPop var_104
  loc_BA4516: FLdPr Me
  loc_BA4519: MemLdRfVar from_stack_1.global_52
  loc_BA451C: NewIfNullPr clsimputacion
  loc_BA451F: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_BA4524: ILdRf var_B8
  loc_BA4527: FLdPr Me
  loc_BA452A: MemStI4 global_64
  loc_BA452D: FFreeStr var_104 = "": var_198 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1C8 = "": var_1CC = "": var_8C = "": var_D8 = "": var_DC = "": var_100 = ""
  loc_BA4548: FFreeAd var_B4 = "": var_C0 = "": var_114 = "": var_118 = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_144 = "": var_148 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_1F0 = "": var_1F4 = "": var_C4 = "": var_11C = "": var_140 = "": var_184 = ""
  loc_BA4579: FFreeVar var_D4 = "": var_EC = "": var_FC = "": var_158 = "": var_194 = "": var_1A8 = "": var_1C4 = "": var_1E4 = ""
  loc_BA458E: FLdPr Me
  loc_BA4591: MemLdStr global_64
  loc_BA4594: LitI4 0
  loc_BA4599: EqI4
  loc_BA459A: BranchF loc_BA45AD
  loc_BA459D: LitI4 0
  loc_BA45A2: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_BA45A5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA45AA: Branch loc_BA460C
  loc_BA45AD: FLdRfVar var_D4
  loc_BA45B0: FLdRfVar var_C4
  loc_BA45B3: LitVarStr var_A0, "idimpus"
  loc_BA45B8: PopAdLdVar
  loc_BA45B9: FLdRfVar var_C0
  loc_BA45BC: FLdRfVar var_B4
  loc_BA45BF: FLdPr Me
  loc_BA45C2: MemLdRfVar from_stack_1.global_52
  loc_BA45C5: NewIfNullPr clsimputacion
  loc_BA45C8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BA45CD: FLdPr var_B4
  loc_BA45D0:  = Me.Fields
  loc_BA45D5: FLdPr var_C0
  loc_BA45D8: from_stack_2 = Me.Item(from_stack_1)
  loc_BA45DD: FLdPr var_C4
  loc_BA45E0:  = Me.Value
  loc_BA45E5: FLdRfVar var_D4
  loc_BA45E8: CStrVarTmp
  loc_BA45E9: FStStrNoPop var_8C
  loc_BA45EC: ImpAdLdI2 MemVar_C3D064
  loc_BA45EF: FLdPr Me
  loc_BA45F2: MemLdRfVar from_stack_1.global_52
  loc_BA45F5: NewIfNullPr clsimputacion
  loc_BA45F8: Call clsimputacion.CierraExpedienteReapropiado(from_stack_1v, from_stack_2v)
  loc_BA45FD: FFree1Str var_8C
  loc_BA4600: FFreeAd var_B4 = "": var_C0 = ""
  loc_BA4609: FFree1Var var_D4 = ""
  loc_BA460C: FLdPr Me
  loc_BA460F: MemLdRfVar from_stack_1.global_52
  loc_BA4612: NewIfNullPr clsimputacion
  loc_BA4615: Call clsimputacion.MoveSiguiente()
  loc_BA461A: Branch loc_BA3EA4
  loc_BA461D: FLdPr Me
  loc_BA4620: MemLdRfVar from_stack_1.global_52
  loc_BA4623: NewIfNullPr clsimputacion
  loc_BA4626: Call clsimputacion.MoveFirst()
  loc_BA462B: FLdPr Me
  loc_BA462E: MemLdStr global_64
  loc_BA4631: LitI4 0
  loc_BA4636: GtI4
  loc_BA4637: BranchF loc_BA46BA
  loc_BA463A: LitI2_Byte 0
  loc_BA463C: PopTmpLdAd2 var_106
  loc_BA463F: LitI2_Byte 0
  loc_BA4641: PopTmpLdAd2 var_BA
  loc_BA4644: LitStr "¿Imprime el volante de imputaciones?"
  loc_BA4647: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BA464C: CI4UI1
  loc_BA464D: LitI4 6
  loc_BA4652: EqI4
  loc_BA4653: BranchF loc_BA46BA
  loc_BA4656: ImpAdLdRf MemVar_C3D9BC
  loc_BA4659: NewIfNullAd
  loc_BA465C: CastAd
  loc_BA465F: FStAdFuncNoPop
  loc_BA4662: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BA4667: FFree1Ad var_B4
  loc_BA466A: FLdPr Me
  loc_BA466D: VCallAd Control_ID_ExorImpuMsk
  loc_BA4670: FStAdFunc var_B4
  loc_BA4673: FLdPr var_B4
  loc_BA4676: LateIdLdVar var_D4 DispID_15 0
  loc_BA467D: CStrVarTmp
  loc_BA467E: FStStrNoPop var_8C
  loc_BA4681: ImpAdLdRf MemVar_C3D9BC
  loc_BA4684: NewIfNullPr rptVolantedeImputaciones
  loc_BA4687: VCallAd Control_ID_cboExorImpu
  loc_BA468A: FStAdFunc var_C0
  loc_BA468D: FLdPr var_C0
  loc_BA4690: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_BA4695: FFree1Str var_8C
  loc_BA4698: FFreeAd var_B4 = ""
  loc_BA469F: FFree1Var var_D4 = ""
  loc_BA46A2: LitVar_Missing var_B0
  loc_BA46A5: PopAdLdVar
  loc_BA46A6: LitVarI4
  loc_BA46AE: PopAdLdVar
  loc_BA46AF: ImpAdLdRf MemVar_C3D9BC
  loc_BA46B2: NewIfNullPr rptVolantedeImputaciones
  loc_BA46B5: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_BA46BA: Branch loc_BA46D4
  loc_BA46BD: FLdUI1
  loc_BA46C1: LitI2_Byte 2
  loc_BA46C3: EqI2
  loc_BA46C4: BranchF loc_BA46CA
  loc_BA46C7: Branch loc_BA46D4
  loc_BA46CA: FLdUI1
  loc_BA46CE: LitI2_Byte 3
  loc_BA46D0: EqI2
  loc_BA46D1: BranchF loc_BA46D4
  loc_BA46D4: Call Proc_136_17_A867A4()
  loc_BA46D9: Call cmdCancelar_Click()
  loc_BA46DE: Branch loc_BA4849
  loc_BA46E1: ILdRf var_90
  loc_BA46E4: LitStr "btnCancelar"
  loc_BA46E7: EqStr
  loc_BA46E9: BranchF loc_BA46F4
  loc_BA46EC: Call cmdCancelar_Click()
  loc_BA46F1: Branch loc_BA4849
  loc_BA46F4: ILdRf var_90
  loc_BA46F7: LitStr "btnPrimero"
  loc_BA46FA: EqStr
  loc_BA46FC: BranchF loc_BA4710
  loc_BA46FF: FLdPr Me
  loc_BA4702: MemLdRfVar from_stack_1.global_52
  loc_BA4705: NewIfNullPr clsimputacion
  loc_BA4708: Call clsimputacion.MoveFirst()
  loc_BA470D: Branch loc_BA4849
  loc_BA4710: ILdRf var_90
  loc_BA4713: LitStr "btnAnterior"
  loc_BA4716: EqStr
  loc_BA4718: BranchF loc_BA472C
  loc_BA471B: FLdPr Me
  loc_BA471E: MemLdRfVar from_stack_1.global_52
  loc_BA4721: NewIfNullPr clsimputacion
  loc_BA4724: Call clsimputacion.MovePrevious()
  loc_BA4729: Branch loc_BA4849
  loc_BA472C: ILdRf var_90
  loc_BA472F: LitStr "btnSiguiente"
  loc_BA4732: EqStr
  loc_BA4734: BranchF loc_BA4748
  loc_BA4737: FLdPr Me
  loc_BA473A: MemLdRfVar from_stack_1.global_52
  loc_BA473D: NewIfNullPr clsimputacion
  loc_BA4740: Call clsimputacion.MoveNext()
  loc_BA4745: Branch loc_BA4849
  loc_BA4748: ILdRf var_90
  loc_BA474B: LitStr "btnUltimo"
  loc_BA474E: EqStr
  loc_BA4750: BranchF loc_BA4764
  loc_BA4753: FLdPr Me
  loc_BA4756: MemLdRfVar from_stack_1.global_52
  loc_BA4759: NewIfNullPr clsimputacion
  loc_BA475C: Call clsimputacion.MoveLast()
  loc_BA4761: Branch loc_BA4849
  loc_BA4764: ILdRf var_90
  loc_BA4767: LitStr "btnFiltrar"
  loc_BA476A: EqStr
  loc_BA476C: BranchF loc_BA4772
  loc_BA476F: Branch loc_BA4849
  loc_BA4772: ILdRf var_90
  loc_BA4775: LitStr "btnBuscar"
  loc_BA4778: EqStr
  loc_BA477A: BranchF loc_BA4780
  loc_BA477D: Branch loc_BA4849
  loc_BA4780: ILdRf var_90
  loc_BA4783: LitStr "btnImprimir"
  loc_BA4786: EqStr
  loc_BA4788: BranchF loc_BA47F2
  loc_BA478B: ImpAdLdRf MemVar_C3D9BC
  loc_BA478E: NewIfNullAd
  loc_BA4791: CastAd
  loc_BA4794: FStAdFuncNoPop
  loc_BA4797: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BA479C: FFree1Ad var_B4
  loc_BA479F: FLdPr Me
  loc_BA47A2: VCallAd Control_ID_ExorImpuMsk
  loc_BA47A5: FStAdFunc var_B4
  loc_BA47A8: FLdPr var_B4
  loc_BA47AB: LateIdLdVar var_D4 DispID_15 0
  loc_BA47B2: CStrVarTmp
  loc_BA47B3: FStStrNoPop var_8C
  loc_BA47B6: ImpAdLdRf MemVar_C3D9BC
  loc_BA47B9: NewIfNullPr rptVolantedeImputaciones
  loc_BA47BC: VCallAd Control_ID_cboExorImpu
  loc_BA47BF: FStAdFunc var_C0
  loc_BA47C2: FLdPr var_C0
  loc_BA47C5: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_BA47CA: FFree1Str var_8C
  loc_BA47CD: FFreeAd var_B4 = ""
  loc_BA47D4: FFree1Var var_D4 = ""
  loc_BA47D7: LitVar_Missing var_B0
  loc_BA47DA: PopAdLdVar
  loc_BA47DB: LitVarI4
  loc_BA47E3: PopAdLdVar
  loc_BA47E4: ImpAdLdRf MemVar_C3D9BC
  loc_BA47E7: NewIfNullPr rptVolantedeImputaciones
  loc_BA47EA: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_BA47EF: Branch loc_BA4849
  loc_BA47F2: ILdRf var_90
  loc_BA47F5: LitStr "btnAyuda"
  loc_BA47F8: EqStr
  loc_BA47FA: BranchF loc_BA4829
  loc_BA47FD: LitVar_Missing var_158
  loc_BA4800: LitVar_Missing var_FC
  loc_BA4803: LitVar_Missing var_EC
  loc_BA4806: LitI4 0
  loc_BA480B: LitVarStr var_A0, "Opcion no disponible en esta version."
  loc_BA4810: FStVarCopyObj var_D4
  loc_BA4813: FLdRfVar var_D4
  loc_BA4816: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BA481B: FFreeVar var_D4 = "": var_EC = "": var_FC = ""
  loc_BA4826: Branch loc_BA4849
  loc_BA4829: ILdRf var_90
  loc_BA482C: LitStr "btnSalir"
  loc_BA482F: EqStr
  loc_BA4831: BranchF loc_BA4849
  loc_BA4834: ILdRf Me
  loc_BA4837: FStAdNoPop
  loc_BA483B: ImpAdLdRf MemVar_C44F9C
  loc_BA483E: NewIfNullPr Me
  loc_BA4841: Me.Global.Unload from_stack_1
  loc_BA4846: FFree1Ad var_B4
  loc_BA4849: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9FED7C
  'Data Table: 4EA8B4
  loc_9FEC30: LitI2_Byte 0
  loc_9FEC32: CUI1I2
  loc_9FEC34: FLdPr Me
  loc_9FEC37: MemStUI1
  loc_9FEC3B: ILdRf Me
  loc_9FEC3E: CastAd
  loc_9FEC41: FStAdFunc var_88
  loc_9FEC44: FLdRfVar var_88
  loc_9FEC47: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9FEC4C: FFree1Ad var_88
  loc_9FEC4F: LitI4 0
  loc_9FEC54: LitI4 0
  loc_9FEC59: FLdRfVar var_8C
  loc_9FEC5C: Redim
  loc_9FEC66: FLdPr Me
  loc_9FEC69: VCallAd Control_ID_dgdABMS
  loc_9FEC6C: CVarAd
  loc_9FEC70: ParmAry1St
  loc_9FEC76: FLdRfVar var_8C
  loc_9FEC79: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9FEC7E: FLdRfVar var_8C
  loc_9FEC81: Erase
  loc_9FEC82: FLdPr Me
  loc_9FEC85: MemLdRfVar from_stack_1.global_52
  loc_9FEC88: NewIfNullAd
  loc_9FEC8B: FStAd var_A0 
  loc_9FEC8F: FLdRfVar var_A0
  loc_9FEC92: CVarRef
  loc_9FEC97: ILdRf Me
  loc_9FEC9A: CastAd
  loc_9FEC9D: FStAdFunc var_88
  loc_9FECA0: FLdRfVar var_88
  loc_9FECA3: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9FECA8: ILdRf var_A0
  loc_9FECAB: CastAd
  loc_9FECAE: FLdPr Me
  loc_9FECB1: MemStAdFunc
  loc_9FECB5: FFreeAd var_88 = ""
  loc_9FECBC: FLdRfVar var_B4
  loc_9FECBF: FLdPr Me
  loc_9FECC2: MemLdRfVar from_stack_1.global_52
  loc_9FECC5: NewIfNullPr clsimputacion
  loc_9FECC8: from_stack_1 = clsimputacion.RecordCount
  loc_9FECCD: ILdRf var_B4
  loc_9FECD0: LitI4 0
  loc_9FECD5: EqI4
  loc_9FECD6: BranchF loc_9FED34
  loc_9FECD9: ILdRf Me
  loc_9FECDC: CastAd
  loc_9FECDF: FStAdFunc var_88
  loc_9FECE2: FLdRfVar var_88
  loc_9FECE5: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_9FECEA: FFree1Ad var_88
  loc_9FECED: ILdRf Me
  loc_9FECF0: CastAd
  loc_9FECF3: FStAdFunc var_88
  loc_9FECF6: FLdRfVar var_88
  loc_9FECF9: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_9FECFE: FFree1Ad var_88
  loc_9FED01: LitI4 0
  loc_9FED06: LitI4 0
  loc_9FED0B: FLdRfVar var_8C
  loc_9FED0E: Redim
  loc_9FED18: FLdPr Me
  loc_9FED1B: VCallAd Control_ID_dgdABMS
  loc_9FED1E: CVarAd
  loc_9FED22: ParmAry1St
  loc_9FED28: FLdRfVar var_8C
  loc_9FED2B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9FED30: FLdRfVar var_8C
  loc_9FED33: Erase
  loc_9FED34: ILdRf Me
  loc_9FED37: CastAd
  loc_9FED3A: FStAdFunc var_88
  loc_9FED3D: FLdRfVar var_88
  loc_9FED40: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9FED45: FFree1Ad var_88
  loc_9FED48: FLdPr Me
  loc_9FED4B: VCallAd Control_ID_dgdABMS
  loc_9FED4E: FStAdFunc var_A0
  loc_9FED51: LitI4 0
  loc_9FED56: FStStrCopy var_B8
  loc_9FED59: FLdRfVar var_B8
  loc_9FED5C: FLdPr Me
  loc_9FED5F: MemLdStr global_68
  loc_9FED62: FLdZeroAd var_A0
  loc_9FED65: FStAdFunc var_88
  loc_9FED68: FLdRfVar var_88
  loc_9FED6B: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9FED70: FFree1Str var_B8
  loc_9FED73: FFreeAd var_88 = ""
  loc_9FED7A: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '963090
  'Data Table: 4EA8B4
  loc_963078: FLdPr Me
  loc_96307B: VCallAd Control_ID_dgdABMS
  loc_96307E: FStAdFunc var_88
  loc_963081: FLdRfVar var_88
  loc_963084: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_963089: FFree1Ad var_88
  loc_96308C: ExitProcHresult
  loc_96308D: NeVarBool
End Sub

Private Sub dgdABMS_UnknownEvent_1 '963550
  'Data Table: 4EA8B4
  loc_963538: FLdPr Me
  loc_96353B: VCallAd Control_ID_dgdABMS
  loc_96353E: FStAdFunc var_88
  loc_963541: FLdRfVar var_88
  loc_963544: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_963549: FFree1Ad var_88
  loc_96354C: ExitProcHresult
  loc_96354D: VCallFPR8 0
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99C190
  'Data Table: 4EA8B4
  loc_99C134: FLdRfVar var_B4
  loc_99C137: FLdRfVar var_B0
  loc_99C13A: FLdI2 ColIndex
  loc_99C13D: CVarI2 var_A8
  loc_99C140: PopAdLdVar
  loc_99C141: FLdPr Me
  loc_99C144: VCallAd Control_ID_dgdABMS
  loc_99C147: FStAdFunc var_88
  loc_99C14A: FLdPr var_88
  loc_99C14D: LateIdLdVar var_98 DispID_105 0
  loc_99C154: CastAdVar Me
  loc_99C158: FStAdFunc var_AC
  loc_99C15B: FLdPr var_AC
  loc_99C15E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99C163: FLdPr var_B0
  loc_99C166:  = Me.DataField
  loc_99C16B: FLdZeroAd var_B4
  loc_99C16E: PopTmpLdAdStr
  loc_99C172: FLdPr Me
  loc_99C175: MemLdRfVar from_stack_1.global_52
  loc_99C178: NewIfNullPr clsimputacion
  loc_99C17B: Call clsimputacion.Sort(from_stack_1v)
  loc_99C180: FFree1Str var_B8
  loc_99C183: FFreeAd var_88 = "": var_AC = ""
  loc_99C18C: FFree1Var var_98 = ""
  loc_99C18F: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94CD40
  'Data Table: 4EA8B4
  loc_94CD2C: FLdPr Me
  loc_94CD2F: VCallAd Control_ID_FiltroMsk
  loc_94CD32: CVarAd
  loc_94CD36: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CD3B: FFree1Var var_94 = ""
  loc_94CD3E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() '9D7EF0
  'Data Table: 4EA8B4
  loc_9D7DF4: LitStr "Expediente que comience con: "
  loc_9D7DF7: FLdPr Me
  loc_9D7DFA: VCallAd Control_ID_FiltroMsk
  loc_9D7DFD: FStAdFunc var_88
  loc_9D7E00: FLdPr var_88
  loc_9D7E03: LateIdLdVar var_98 DispID_22 0
  loc_9D7E0A: CStrVarTmp
  loc_9D7E0B: FStStrNoPop var_9C
  loc_9D7E0E: ConcatStr
  loc_9D7E0F: FStStrNoPop var_A0
  loc_9D7E12: FLdPr Me
  loc_9D7E15: MemStStrCopy
  loc_9D7E19: FFreeStr var_9C = ""
  loc_9D7E20: FFree1Ad var_88
  loc_9D7E23: FFree1Var var_98 = ""
  loc_9D7E26: FLdPr Me
  loc_9D7E29: VCallAd Control_ID_FiltroMsk
  loc_9D7E2C: FStAdFunc var_88
  loc_9D7E2F: FLdPr var_88
  loc_9D7E32: LateIdLdVar var_98 DispID_22 0
  loc_9D7E39: CStrVarTmp
  loc_9D7E3A: FStStrNoPop var_9C
  loc_9D7E3D: LitStr vbNullString
  loc_9D7E40: EqStr
  loc_9D7E42: FFree1Str var_9C
  loc_9D7E45: FFree1Ad var_88
  loc_9D7E48: FFree1Var var_98 = ""
  loc_9D7E4B: BranchF loc_9D7E58
  loc_9D7E4E: Call Proc_136_17_A867A4()
  loc_9D7E53: Call cmdCancelar_Click()
  loc_9D7E58: FLdRfVar var_A2
  loc_9D7E5B: FLdPr Me
  loc_9D7E5E: VCallAd Control_ID_FiltroCbo
  loc_9D7E61: FStAdFunc var_88
  loc_9D7E64: FLdPr var_88
  loc_9D7E67:  = Me.ListIndex
  loc_9D7E6C: FLdI2 var_A2
  loc_9D7E6F: FStI2 var_A4
  loc_9D7E72: FFree1Ad var_88
  loc_9D7E75: FLdI2 var_A4
  loc_9D7E78: LitI2_Byte 0
  loc_9D7E7A: EqI2
  loc_9D7E7B: BranchF loc_9D7EB3
  loc_9D7E7E: LitStr "Expediente ORIGINAL que comience con: "
  loc_9D7E81: FLdPr Me
  loc_9D7E84: VCallAd Control_ID_FiltroMsk
  loc_9D7E87: FStAdFunc var_88
  loc_9D7E8A: FLdPr var_88
  loc_9D7E8D: LateIdLdVar var_98 DispID_22 0
  loc_9D7E94: CStrVarTmp
  loc_9D7E95: FStStrNoPop var_9C
  loc_9D7E98: ConcatStr
  loc_9D7E99: FStStrNoPop var_A0
  loc_9D7E9C: FLdPr Me
  loc_9D7E9F: MemStStrCopy
  loc_9D7EA3: FFreeStr var_9C = ""
  loc_9D7EAA: FFree1Ad var_88
  loc_9D7EAD: FFree1Var var_98 = ""
  loc_9D7EB0: Branch loc_9D7EEE
  loc_9D7EB3: FLdI2 var_A4
  loc_9D7EB6: LitI2_Byte 1
  loc_9D7EB8: EqI2
  loc_9D7EB9: BranchF loc_9D7EEE
  loc_9D7EBC: LitStr "Orden de Compra igual a: "
  loc_9D7EBF: FLdPr Me
  loc_9D7EC2: VCallAd Control_ID_FiltroMsk
  loc_9D7EC5: FStAdFunc var_88
  loc_9D7EC8: FLdPr var_88
  loc_9D7ECB: LateIdLdVar var_98 DispID_22 0
  loc_9D7ED2: CStrVarTmp
  loc_9D7ED3: FStStrNoPop var_9C
  loc_9D7ED6: ConcatStr
  loc_9D7ED7: FStStrNoPop var_A0
  loc_9D7EDA: FLdPr Me
  loc_9D7EDD: MemStStrCopy
  loc_9D7EE1: FFreeStr var_9C = ""
  loc_9D7EE8: FFree1Ad var_88
  loc_9D7EEB: FFree1Var var_98 = ""
  loc_9D7EEE: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '96DC04
  'Data Table: 4EA8B4
  loc_96DBDC: ILdI2 KeyAscii
  loc_96DBDF: LitI2_Byte &H27
  loc_96DBE1: EqI2
  loc_96DBE2: BranchF loc_96DBEA
  loc_96DBE5: LitI2_Byte 0
  loc_96DBE7: IStI2 KeyAscii
  loc_96DBEA: ILdI2 KeyAscii
  loc_96DBED: CI4UI1
  loc_96DBEE: LitI4 &HD
  loc_96DBF3: EqI4
  loc_96DBF4: BranchF loc_96DC01
  loc_96DBF7: Call Proc_136_17_A867A4()
  loc_96DBFC: Call cmdCancelar_Click()
  loc_96DC01: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_0 '94CBD8
  'Data Table: 4EA8B4
  loc_94CBC4: FLdPr Me
  loc_94CBC7: VCallAd Control_ID_FechImpuMsk
  loc_94CBCA: CVarAd
  loc_94CBCE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CBD3: FFree1Var var_94 = ""
  loc_94CBD6: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_8 '9DE13C
  'Data Table: 4EA8B4
  loc_9DE044: FLdRfVar var_8A
  loc_9DE047: FLdPr Me
  loc_9DE04A: VCallAd Control_ID_cmdCancelar
  loc_9DE04D: FStAdFunc var_88
  loc_9DE050: FLdPr var_88
  loc_9DE053:  = Me.Value
  loc_9DE058: FLdI2 var_8A
  loc_9DE05B: NotI4
  loc_9DE05C: FLdPr Me
  loc_9DE05F: VCallAd Control_ID_FechImpuMsk
  loc_9DE062: FStAdFunc var_90
  loc_9DE065: FLdPr var_90
  loc_9DE068: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DE06F: CBoolVar
  loc_9DE071: AndI4
  loc_9DE072: FFreeAd var_88 = ""
  loc_9DE079: FFree1Var var_A0 = ""
  loc_9DE07C: BranchF loc_9DE138
  loc_9DE07F: FLdPr Me
  loc_9DE082: VCallAd Control_ID_FechImpuMsk
  loc_9DE085: FStAdFunc var_88
  loc_9DE088: FLdPr var_88
  loc_9DE08B: LateIdLdVar var_A0 DispID_15 0
  loc_9DE092: PopAd
  loc_9DE094: FLdPr Me
  loc_9DE097: VCallAd Control_ID_FechImpuMsk
  loc_9DE09A: FStAdFunc var_90
  loc_9DE09D: FLdPr var_90
  loc_9DE0A0: LateIdLdVar var_B0 DispID_11 -32767
  loc_9DE0A7: PopAd
  loc_9DE0A9: FLdPr Me
  loc_9DE0AC: VCallAd Control_ID_FechImpuMsk
  loc_9DE0AF: FStAdFunc var_C4
  loc_9DE0B2: LitI2_Byte &HFF
  loc_9DE0B4: PopTmpLdAd2 var_8A
  loc_9DE0B7: FLdZeroAd var_C4
  loc_9DE0BA: FStAdFunc var_BC
  loc_9DE0BD: FLdRfVar var_BC
  loc_9DE0C0: FLdRfVar var_B0
  loc_9DE0C3: CStrVarTmp
  loc_9DE0C4: FStStrNoPop var_B8
  loc_9DE0C7: LitI2_Byte 0
  loc_9DE0C9: LitI2_Byte 0
  loc_9DE0CB: FLdRfVar var_A0
  loc_9DE0CE: CStrVarTmp
  loc_9DE0CF: FStStrNoPop var_B4
  loc_9DE0D2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DE0D7: FStStrNoPop var_C0
  loc_9DE0DA: FLdPr Me
  loc_9DE0DD: MemStStrCopy
  loc_9DE0E1: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DE0EA: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DE0F5: FFreeVar var_A0 = ""
  loc_9DE0FC: FLdPr Me
  loc_9DE0FF: VCallAd Control_ID_FechImpuMsk
  loc_9DE102: FStAdFunc var_C4
  loc_9DE105: LitNothing
  loc_9DE107: CastAd
  loc_9DE10A: FStAdFunc var_BC
  loc_9DE10D: FLdRfVar var_BC
  loc_9DE110: FLdZeroAd var_C4
  loc_9DE113: FStAdFuncNoPop
  loc_9DE116: CastAd
  loc_9DE119: FStAdFunc var_90
  loc_9DE11C: FLdRfVar var_90
  loc_9DE11F: FLdPr Me
  loc_9DE122: MemLdRfVar from_stack_1.global_60
  loc_9DE125: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DE12A: IStI2 KeyAscii
  loc_9DE12D: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DE138: ExitProcHresult
  loc_9DE139: FnLBound
End Sub

Private Sub FechImpuMsk_KeyPress(KeyAscii As Integer) '98A9E8
  'Data Table: 4EA8B4
  loc_98A9A4: ILdI2 KeyAscii
  loc_98A9A7: CI4UI1
  loc_98A9A8: LitI4 &H20
  loc_98A9AD: EqI4
  loc_98A9AE: BranchF loc_98A9E4
  loc_98A9B1: LitVar_Missing var_A4
  loc_98A9B4: PopAdLdVar
  loc_98A9B5: LitVarI4
  loc_98A9BD: PopAdLdVar
  loc_98A9BE: ImpAdLdRf MemVar_C3D9A8
  loc_98A9C1: NewIfNullPr frmCalendario
  loc_98A9C4: frmCalendario.Show from_stack_1, from_stack_2
  loc_98A9C9: ImpAdLdRf MemVar_C3D038
  loc_98A9CC: CDargRef
  loc_98A9D0: FLdPr Me
  loc_98A9D3: VCallAd Control_ID_FechImpuMsk
  loc_98A9D6: FStAdFunc var_A8
  loc_98A9D9: FLdPr var_A8
  loc_98A9DC: LateIdSt
  loc_98A9E1: FFree1Ad var_A8
  loc_98A9E4: ExitProcHresult
  loc_98A9E5: FStAdFunc var_98
End Sub

Private Sub Form_Load() 'A32948
  'Data Table: 4EA8B4
  loc_A32744: ImpAdLdI2 MemVar_C3D064
  loc_A32747: LitI2 2025
  loc_A3274A: LeI2
  loc_A3274B: BranchF loc_A3276B
  loc_A3274E: LitVarI4
  loc_A32756: PopAdLdVar
  loc_A32757: FLdPr Me
  loc_A3275A: VCallAd Control_ID_dgdABMS
  loc_A3275D: FStAdFunc var_A8
  loc_A32760: FLdPr var_A8
  loc_A32763: LateIdSt
  loc_A32768: FFree1Ad var_A8
  loc_A3276B: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A32770: PopAdLdVar
  loc_A32771: FLdPr Me
  loc_A32774: VCallAd Control_ID_CodiPartMsk
  loc_A32777: FStAdFunc var_A8
  loc_A3277A: FLdPr var_A8
  loc_A3277D: LateIdSt
  loc_A32782: FFree1Ad var_A8
  loc_A32785: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A3278A: PopAdLdVar
  loc_A3278B: FLdPr Me
  loc_A3278E: VCallAd Control_ID_CoesPartMsk
  loc_A32791: FStAdFunc var_A8
  loc_A32794: FLdPr var_A8
  loc_A32797: LateIdSt
  loc_A3279C: FFree1Ad var_A8
  loc_A3279F: LitVarStr var_94, "######"
  loc_A327A4: PopAdLdVar
  loc_A327A5: FLdPr Me
  loc_A327A8: VCallAd Control_ID_CodiOrgaMsk
  loc_A327AB: FStAdFunc var_A8
  loc_A327AE: FLdPr var_A8
  loc_A327B1: LateIdSt
  loc_A327B6: FFree1Ad var_A8
  loc_A327B9: LitVarStr var_94, "######"
  loc_A327BE: PopAdLdVar
  loc_A327BF: FLdPr Me
  loc_A327C2: VCallAd Control_ID_CoesOrgaMsk
  loc_A327C5: FStAdFunc var_A8
  loc_A327C8: FLdPr var_A8
  loc_A327CB: LateIdSt
  loc_A327D0: FFree1Ad var_A8
  loc_A327D3: LitVarStr var_94, "##.##.##"
  loc_A327D8: PopAdLdVar
  loc_A327D9: FLdPr Me
  loc_A327DC: VCallAd Control_ID_CodiFifuMsk
  loc_A327DF: FStAdFunc var_A8
  loc_A327E2: FLdPr var_A8
  loc_A327E5: LateIdSt
  loc_A327EA: FFree1Ad var_A8
  loc_A327ED: LitVarStr var_94, "##.##.##"
  loc_A327F2: PopAdLdVar
  loc_A327F3: FLdPr Me
  loc_A327F6: VCallAd Control_ID_CoesFifuMsk
  loc_A327F9: FStAdFunc var_A8
  loc_A327FC: FLdPr var_A8
  loc_A327FF: LateIdSt
  loc_A32804: FFree1Ad var_A8
  loc_A32807: LitVarStr var_94, vbNullString
  loc_A3280C: PopAdLdVar
  loc_A3280D: FLdPr Me
  loc_A32810: VCallAd Control_ID_ExorImpuMsk
  loc_A32813: FStAdFunc var_A8
  loc_A32816: FLdPr var_A8
  loc_A32819: LateIdSt
  loc_A3281E: FFree1Ad var_A8
  loc_A32821: ILdRf Me
  loc_A32824: CastAd
  loc_A32827: FStAdFunc var_A8
  loc_A3282A: FLdRfVar var_A8
  loc_A3282D: ImpAdCallFPR4 Proc_261_41_999BCC()
  loc_A32832: FFree1Ad var_A8
  loc_A32835: ILdRf Me
  loc_A32838: CastAd
  loc_A3283B: FStAdFunc var_A8
  loc_A3283E: FLdRfVar var_A8
  loc_A32841: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A32846: FFree1Ad var_A8
  loc_A32849: LitI2_Byte 0
  loc_A3284B: CR8I2
  loc_A3284C: PopFPR4
  loc_A3284D: FLdPr Me
  loc_A32850: Me.Left = from_stack_1s
  loc_A32855: LitI2_Byte 0
  loc_A32857: CR8I2
  loc_A32858: PopFPR4
  loc_A32859: FLdPr Me
  loc_A3285C: Me.Top = from_stack_1s
  loc_A32861: LitStr vbNullString
  loc_A32864: FLdPr Me
  loc_A32867: MemStStrCopy
  loc_A3286B: ImpAdLdI2 MemVar_C3D064
  loc_A3286E: LitI2_Byte 1
  loc_A32870: AddI2
  loc_A32871: CStrUI1
  loc_A32873: FStStrNoPop var_AC
  loc_A32876: FLdPr Me
  loc_A32879: VCallAd Control_ID_FrameCoes
  loc_A3287C: FStAdFunc var_A8
  loc_A3287F: FLdPr var_A8
  loc_A32882: Me.Caption = from_stack_1
  loc_A32887: FFree1Str var_AC
  loc_A3288A: FFree1Ad var_A8
  loc_A3288D: Call Proc_136_17_A867A4()
  loc_A32892: LitVarI2 var_94, 0
  loc_A32897: PopAdLdVar
  loc_A32898: LitStr "Expediente Original"
  loc_A3289B: FLdPr Me
  loc_A3289E: VCallAd Control_ID_FiltroCbo
  loc_A328A1: FStAdFunc var_A8
  loc_A328A4: FLdPr var_A8
  loc_A328A7: Me.AddItem from_stack_1, from_stack_2
  loc_A328AC: FFree1Ad var_A8
  loc_A328AF: LitVarI2 var_94, 1
  loc_A328B4: PopAdLdVar
  loc_A328B5: LitStr "Orden de Compra"
  loc_A328B8: FLdPr Me
  loc_A328BB: VCallAd Control_ID_FiltroCbo
  loc_A328BE: FStAdFunc var_A8
  loc_A328C1: FLdPr var_A8
  loc_A328C4: Me.AddItem from_stack_1, from_stack_2
  loc_A328C9: FFree1Ad var_A8
  loc_A328CC: LitI2_Byte 0
  loc_A328CE: FLdPr Me
  loc_A328D1: VCallAd Control_ID_FiltroCbo
  loc_A328D4: FStAdFunc var_A8
  loc_A328D7: FLdPr var_A8
  loc_A328DA: Me.ListIndex = from_stack_1
  loc_A328DF: FFree1Ad var_A8
  loc_A328E2: Call cmdCancelar_Click()
  loc_A328E7: LitI4 0
  loc_A328EC: LitI4 1
  loc_A328F1: FLdRfVar var_B0
  loc_A328F4: Redim
  loc_A328FE: FLdPr Me
  loc_A32901: MemLdRfVar from_stack_1.global_52
  loc_A32904: NewIfNullAd
  loc_A32907: FStAd var_A8 
  loc_A3290B: FLdRfVar var_A8
  loc_A3290E: CVarRef
  loc_A32913: ParmAry1St
  loc_A32919: FLdPr Me
  loc_A3291C: VCallAd Control_ID_dgdABMS
  loc_A3291F: CVarAd
  loc_A32923: ParmAry1St
  loc_A32929: FLdRfVar var_B0
  loc_A3292C: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A32931: ILdRf var_A8
  loc_A32934: CastAd
  loc_A32937: FLdPr Me
  loc_A3293A: MemStAdFunc
  loc_A3293E: FLdRfVar var_B0
  loc_A32941: Erase
  loc_A32942: FFree1Ad var_A8
  loc_A32945: ExitProcHresult
  loc_A32946: FLdPr arg_3C08
End Sub

Private Sub Form_Activate() '9A509C
  'Data Table: 4EA8B4
  loc_9A5024: FLdRfVar var_C2
  loc_9A5027: FLdRfVar var_C0
  loc_9A502A: LitVarI2 var_B8, 1
  loc_9A502F: FLdPr Me
  loc_9A5032: VCallAd Control_ID_tlbABMS
  loc_9A5035: FStAdFunc var_88
  loc_9A5038: FLdPr var_88
  loc_9A503B: LateIdLdVar var_98 DispID_3 0
  loc_9A5042: CastAdVar Me
  loc_9A5046: FStAdFunc var_BC
  loc_9A5049: FLdPr var_BC
  loc_9A504C:  = Me.Buttons.ControlDefault
  loc_9A5051: FLdPr var_C0
  loc_9A5054:  = Me.Enabled
  loc_9A5059: FLdI2 var_C2
  loc_9A505C: FFreeAd var_88 = "": var_BC = ""
  loc_9A5065: FFreeVar var_98 = ""
  loc_9A506C: BranchF loc_9A5074
  loc_9A506F: Call Proc_136_17_A867A4()
  loc_9A5074: ImpAdLdI2 MemVar_C3D064
  loc_9A5077: LitI2 2025
  loc_9A507A: LeI2
  loc_9A507B: BranchF loc_9A509B
  loc_9A507E: LitVarI4
  loc_9A5086: PopAdLdVar
  loc_9A5087: FLdPr Me
  loc_9A508A: VCallAd Control_ID_dgdABMS
  loc_9A508D: FStAdFunc var_88
  loc_9A5090: FLdPr var_88
  loc_9A5093: LateIdSt
  loc_9A5098: FFree1Ad var_88
  loc_9A509B: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '94878C
  'Data Table: 4EA8B4
  loc_948778: ILdI2 KeyAscii
  loc_94877B: CI4UI1
  loc_94877C: LitI4 &HD
  loc_948781: EqI4
  loc_948782: BranchF loc_94878A
  loc_948785: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94878A: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9638E0
  'Data Table: 4EA8B4
  loc_9638C8: ILdI2 KeyCode
  loc_9638CB: ILdRf Me
  loc_9638CE: CastAd
  loc_9638D1: FStAdFunc var_88
  loc_9638D4: FLdRfVar var_88
  loc_9638D7: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_9638DC: FFree1Ad var_88
  loc_9638DF: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9CE85C
  'Data Table: 4EA8B4
  loc_9CE770: LitVarStr var_94, vbNullString
  loc_9CE775: PopAdLdVar
  loc_9CE776: FLdPr Me
  loc_9CE779: VCallAd Control_ID_FiltroMsk
  loc_9CE77C: FStAdFunc var_A8
  loc_9CE77F: FLdPr var_A8
  loc_9CE782: LateIdSt
  loc_9CE787: FFree1Ad var_A8
  loc_9CE78A: FLdRfVar var_AA
  loc_9CE78D: FLdPr Me
  loc_9CE790: VCallAd Control_ID_FiltroCbo
  loc_9CE793: FStAdFunc var_A8
  loc_9CE796: FLdPr var_A8
  loc_9CE799:  = Me.ListIndex
  loc_9CE79E: FLdI2 var_AA
  loc_9CE7A1: FStI2 var_AC
  loc_9CE7A4: FFree1Ad var_A8
  loc_9CE7A7: FLdI2 var_AC
  loc_9CE7AA: LitI2_Byte 0
  loc_9CE7AC: EqI2
  loc_9CE7AD: BranchF loc_9CE801
  loc_9CE7B0: LitVarStr var_94, "&"
  loc_9CE7B5: PopAdLdVar
  loc_9CE7B6: FLdPr Me
  loc_9CE7B9: VCallAd Control_ID_FiltroMsk
  loc_9CE7BC: FStAdFunc var_A8
  loc_9CE7BF: FLdPr var_A8
  loc_9CE7C2: LateIdSt
  loc_9CE7C7: FFree1Ad var_A8
  loc_9CE7CA: LitVarStr var_94, vbNullString
  loc_9CE7CF: PopAdLdVar
  loc_9CE7D0: FLdPr Me
  loc_9CE7D3: VCallAd Control_ID_FiltroMsk
  loc_9CE7D6: FStAdFunc var_A8
  loc_9CE7D9: FLdPr var_A8
  loc_9CE7DC: LateIdSt
  loc_9CE7E1: FFree1Ad var_A8
  loc_9CE7E4: LitStr "ExorImpu"
  loc_9CE7E7: FStStrCopy var_B0
  loc_9CE7EA: FLdRfVar var_B0
  loc_9CE7ED: FLdPr Me
  loc_9CE7F0: MemLdRfVar from_stack_1.global_52
  loc_9CE7F3: NewIfNullPr clsimputacion
  loc_9CE7F6: Call clsimputacion.Sort(from_stack_1v)
  loc_9CE7FB: FFree1Str var_B0
  loc_9CE7FE: Branch loc_9CE858
  loc_9CE801: FLdI2 var_AC
  loc_9CE804: LitI2_Byte 1
  loc_9CE806: EqI2
  loc_9CE807: BranchF loc_9CE858
  loc_9CE80A: LitVarStr var_94, "&"
  loc_9CE80F: PopAdLdVar
  loc_9CE810: FLdPr Me
  loc_9CE813: VCallAd Control_ID_FiltroMsk
  loc_9CE816: FStAdFunc var_A8
  loc_9CE819: FLdPr var_A8
  loc_9CE81C: LateIdSt
  loc_9CE821: FFree1Ad var_A8
  loc_9CE824: LitVarStr var_94, "99999999"
  loc_9CE829: PopAdLdVar
  loc_9CE82A: FLdPr Me
  loc_9CE82D: VCallAd Control_ID_FiltroMsk
  loc_9CE830: FStAdFunc var_A8
  loc_9CE833: FLdPr var_A8
  loc_9CE836: LateIdSt
  loc_9CE83B: FFree1Ad var_A8
  loc_9CE83E: LitStr "CodiOrco"
  loc_9CE841: FStStrCopy var_B0
  loc_9CE844: FLdRfVar var_B0
  loc_9CE847: FLdPr Me
  loc_9CE84A: MemLdRfVar from_stack_1.global_52
  loc_9CE84D: NewIfNullPr clsimputacion
  loc_9CE850: Call clsimputacion.Sort(from_stack_1v)
  loc_9CE855: FFree1Str var_B0
  loc_9CE858: ExitProcHresult
  loc_9CE859: CExtInstUnk
End Sub

Private Function Proc_136_16_A4F540() 'A4F540
  'Data Table: 4EA8B4
  loc_A4F2A4: FLdRfVar var_CC
  loc_A4F2A7: FLdRfVar var_A0
  loc_A4F2AA: LitVarStr var_9C, "ExorImpu"
  loc_A4F2AF: PopAdLdVar
  loc_A4F2B0: FLdRfVar var_8C
  loc_A4F2B3: FLdRfVar var_88
  loc_A4F2B6: FLdPr Me
  loc_A4F2B9: MemLdRfVar from_stack_1.global_52
  loc_A4F2BC: NewIfNullPr clsimputacion
  loc_A4F2BF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4F2C4: FLdPr var_88
  loc_A4F2C7:  = Me.Fields
  loc_A4F2CC: FLdPr var_8C
  loc_A4F2CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F2D4: FLdPr var_A0
  loc_A4F2D7:  = Me.Value
  loc_A4F2DC: FLdRfVar var_E0
  loc_A4F2DF: FLdRfVar var_BC
  loc_A4F2E2: LitVarStr var_B8, "CodiRece"
  loc_A4F2E7: PopAdLdVar
  loc_A4F2E8: FLdRfVar var_A8
  loc_A4F2EB: FLdRfVar var_A4
  loc_A4F2EE: FLdPr Me
  loc_A4F2F1: MemLdRfVar from_stack_1.global_52
  loc_A4F2F4: NewIfNullPr clsimputacion
  loc_A4F2F7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4F2FC: FLdPr var_A4
  loc_A4F2FF:  = Me.Fields
  loc_A4F304: FLdPr var_A8
  loc_A4F307: from_stack_2 = Me.Item(from_stack_1)
  loc_A4F30C: FLdPr var_BC
  loc_A4F30F:  = Me.Value
  loc_A4F314: FLdRfVar var_E4
  loc_A4F317: LitStr vbNullString
  loc_A4F31A: LitStr vbNullString
  loc_A4F31D: FLdRfVar var_E0
  loc_A4F320: CI2Var
  loc_A4F321: LitI2_Byte 0
  loc_A4F323: LitI2_Byte 0
  loc_A4F325: LitI2_Byte 0
  loc_A4F327: LitI4 0
  loc_A4F32C: FLdRfVar var_CC
  loc_A4F32F: CStrVarTmp
  loc_A4F330: FStStrNoPop var_D0
  loc_A4F333: LitI2_Byte 1
  loc_A4F335: ImpAdLdI2 MemVar_C3D064
  loc_A4F338: LitI2_Byte 1
  loc_A4F33A: AddI2
  loc_A4F33B: FLdPr Me
  loc_A4F33E: MemLdRfVar from_stack_1.global_52
  loc_A4F341: NewIfNullPr clsimputacion
  loc_A4F344: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_A4F349: ILdRf var_E4
  loc_A4F34C: FLdPr Me
  loc_A4F34F: MemStStrCopy
  loc_A4F353: FFreeStr var_D0 = ""
  loc_A4F35A: FFreeAd var_88 = "": var_8C = "": var_A4 = "": var_A8 = "": var_A0 = ""
  loc_A4F369: FFreeVar var_CC = ""
  loc_A4F370: FLdPr Me
  loc_A4F373: VCallAd Control_ID_FechImpuMsk
  loc_A4F376: FStAdFunc var_88
  loc_A4F379: FLdPr var_88
  loc_A4F37C: LateIdLdVar var_CC DispID_15 0
  loc_A4F383: CStrVarTmp
  loc_A4F384: CVarStr var_E0
  loc_A4F387: ImpAdCallI2 IsDate()
  loc_A4F38C: FFree1Ad var_88
  loc_A4F38F: FFreeVar var_CC = ""
  loc_A4F396: BranchF loc_A4F40F
  loc_A4F399: FLdPr Me
  loc_A4F39C: VCallAd Control_ID_FechImpuMsk
  loc_A4F39F: FStAdFunc var_88
  loc_A4F3A2: FLdPr var_88
  loc_A4F3A5: LateIdLdVar var_CC DispID_15 0
  loc_A4F3AC: CStrVarTmp
  loc_A4F3AD: FStStrNoPop var_D0
  loc_A4F3B0: CDateStr
  loc_A4F3B2: FLdPr Me
  loc_A4F3B5: MemLdStr global_88
  loc_A4F3B8: CDateStr
  loc_A4F3BA: GtR4
  loc_A4F3BB: FFree1Str var_D0
  loc_A4F3BE: FFree1Ad var_88
  loc_A4F3C1: FFree1Var var_CC = ""
  loc_A4F3C4: BranchF loc_A4F3F1
  loc_A4F3C7: FLdPr Me
  loc_A4F3CA: VCallAd Control_ID_FechImpuMsk
  loc_A4F3CD: FStAdFunc var_88
  loc_A4F3D0: FLdPr var_88
  loc_A4F3D3: LateIdLdVar var_CC DispID_15 0
  loc_A4F3DA: CStrVarTmp
  loc_A4F3DB: FStStrNoPop var_D0
  loc_A4F3DE: FLdPr Me
  loc_A4F3E1: MemStStrCopy
  loc_A4F3E5: FFree1Str var_D0
  loc_A4F3E8: FFree1Ad var_88
  loc_A4F3EB: FFree1Var var_CC = ""
  loc_A4F3EE: Branch loc_A4F40F
  loc_A4F3F1: FLdPr Me
  loc_A4F3F4: MemLdRfVar from_stack_1.global_88
  loc_A4F3F7: CDargRef
  loc_A4F3FB: FLdPr Me
  loc_A4F3FE: VCallAd Control_ID_FechImpuMsk
  loc_A4F401: FStAdFunc var_88
  loc_A4F404: FLdPr var_88
  loc_A4F407: LateIdSt
  loc_A4F40C: FFree1Ad var_88
  loc_A4F40F: FLdRfVar var_EC
  loc_A4F412: FLdPr Me
  loc_A4F415: MemLdStr global_88
  loc_A4F418: FLdPr Me
  loc_A4F41B: MemLdRfVar from_stack_1.global_76
  loc_A4F41E: NewIfNullRf
  loc_A4F422: FLdPr Me
  loc_A4F425: MemLdRfVar from_stack_1.global_72
  loc_A4F428: NewIfNullRf
  loc_A4F42C: FLdPr Me
  loc_A4F42F: MemLdRfVar from_stack_1.global_52
  loc_A4F432: NewIfNullPr clsimputacion
  loc_A4F435: from_stack_4v = clsimputacion.BuscaSaldAuto(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A4F43A: LitI4 1
  loc_A4F43F: LitI4 1
  loc_A4F444: LitVarStr var_B8, "currency"
  loc_A4F449: FStVarCopyObj var_E0
  loc_A4F44C: FLdRfVar var_E0
  loc_A4F44F: FLdFPR8 var_EC
  loc_A4F452: CVarR8
  loc_A4F456: ImpAdCallI2 Format$(, )
  loc_A4F45B: FStStrNoPop var_D0
  loc_A4F45E: FLdPr Me
  loc_A4F461: VCallAd Control_ID_SaldAutoLbl
  loc_A4F464: FStAdFunc var_88
  loc_A4F467: FLdPr var_88
  loc_A4F46A: Me.Caption = from_stack_1
  loc_A4F46F: FFree1Str var_D0
  loc_A4F472: FFree1Ad var_88
  loc_A4F475: FFreeVar var_CC = ""
  loc_A4F47C: FLdRfVar var_D0
  loc_A4F47F: FLdPr Me
  loc_A4F482: VCallAd Control_ID_SaldAutoLbl
  loc_A4F485: FStAdFunc var_88
  loc_A4F488: FLdPr var_88
  loc_A4F48B:  = Me.Caption
  loc_A4F490: LitVarI4
  loc_A4F498: LitVarI2 var_CC, 255
  loc_A4F49D: ILdRf var_D0
  loc_A4F4A0: CR8Str
  loc_A4F4A2: LitI2_Byte 0
  loc_A4F4A4: CR8I2
  loc_A4F4A5: LtR8
  loc_A4F4A6: CVarBoolI2 var_9C
  loc_A4F4AA: FLdRfVar var_10C
  loc_A4F4AD: ImpAdCallFPR4  = IIf(, , )
  loc_A4F4B2: FLdRfVar var_10C
  loc_A4F4B5: CI4Var
  loc_A4F4B7: FLdPr Me
  loc_A4F4BA: VCallAd Control_ID_SaldAutoLbl
  loc_A4F4BD: FStAdFunc var_8C
  loc_A4F4C0: FLdPr var_8C
  loc_A4F4C3: Me.ForeColor = from_stack_1
  loc_A4F4C8: FFree1Str var_D0
  loc_A4F4CB: FFreeAd var_88 = ""
  loc_A4F4D2: FFreeVar var_9C = "": var_CC = "": var_E0 = ""
  loc_A4F4DD: FLdRfVar var_D0
  loc_A4F4E0: FLdPr Me
  loc_A4F4E3: VCallAd Control_ID_SaldAutoLbl
  loc_A4F4E6: FStAdFunc var_88
  loc_A4F4E9: FLdPr var_88
  loc_A4F4EC:  = Me.Caption
  loc_A4F4F1: LitVarI4
  loc_A4F4F9: LitVarI2 var_CC, 255
  loc_A4F4FE: ILdRf var_D0
  loc_A4F501: CR8Str
  loc_A4F503: LitI2_Byte 0
  loc_A4F505: CR8I2
  loc_A4F506: LtR8
  loc_A4F507: CVarBoolI2 var_9C
  loc_A4F50B: FLdRfVar var_10C
  loc_A4F50E: ImpAdCallFPR4  = IIf(, , )
  loc_A4F513: FLdRfVar var_10C
  loc_A4F516: CI4Var
  loc_A4F518: FLdPr Me
  loc_A4F51B: VCallAd Control_ID_LabelSaldAuto
  loc_A4F51E: FStAdFunc var_8C
  loc_A4F521: FLdPr var_8C
  loc_A4F524: Me.ForeColor = from_stack_1
  loc_A4F529: FFree1Str var_D0
  loc_A4F52C: FFreeAd var_88 = ""
  loc_A4F533: FFreeVar var_9C = "": var_CC = "": var_E0 = ""
  loc_A4F53E: ExitProcHresult
  loc_A4F53F: FnLBound
End Function

Private Function Proc_136_17_A867A4() 'A867A4
  'Data Table: 4EA8B4
  loc_A86398: LitI4 &HB
  loc_A8639D: CI2I4
  loc_A8639E: FLdPr Me
  loc_A863A1: Me.MousePointer = from_stack_1
  loc_A863A6: FLdPr Me
  loc_A863A9: VCallAd Control_ID_FiltroMsk
  loc_A863AC: FStAdFunc var_90
  loc_A863AF: FLdPr var_90
  loc_A863B2: LateIdLdVar var_A0 DispID_22 0
  loc_A863B9: PopAd
  loc_A863BB: LitVarI2 var_E4, 0
  loc_A863C0: ImpAdLdRf MemVar_C3D064
  loc_A863C3: CVarRef
  loc_A863C8: FLdRfVar var_A0
  loc_A863CB: CStrVarTmp
  loc_A863CC: FStStrNoPop var_A4
  loc_A863CF: LitStr vbNullString
  loc_A863D2: NeStr
  loc_A863D4: CVarBoolI2 var_B4
  loc_A863D8: FLdRfVar var_F4
  loc_A863DB: ImpAdCallFPR4  = IIf(, , )
  loc_A863E0: FLdPr Me
  loc_A863E3: VCallAd Control_ID_FiltroMsk
  loc_A863E6: FStAdFunc var_F8
  loc_A863E9: FLdPr var_F8
  loc_A863EC: LateIdLdVar var_108 DispID_22 0
  loc_A863F3: PopAd
  loc_A863F5: FLdPr Me
  loc_A863F8: VCallAd Control_ID_FiltroCbo
  loc_A863FB: FStAdFunc var_110
  loc_A863FE: FLdRfVar var_110
  loc_A86401: FLdRfVar var_108
  loc_A86404: CStrVarTmp
  loc_A86405: FStStrNoPop var_10C
  loc_A86408: FLdRfVar var_F4
  loc_A8640B: CI2Var
  loc_A8640C: FLdPr Me
  loc_A8640F: MemLdRfVar from_stack_1.global_52
  loc_A86412: NewIfNullPr clsimputacion
  loc_A86415: Call clsimputacion.ReapropiaralEjercicioSiguiente(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A8641A: FFreeStr var_A4 = ""
  loc_A86421: FFreeAd var_90 = "": var_F8 = ""
  loc_A8642A: FFreeVar var_A0 = "": var_B4 = "": var_E4 = "": var_108 = ""
  loc_A86437: FLdRfVar var_114
  loc_A8643A: FLdPr Me
  loc_A8643D: MemLdRfVar from_stack_1.global_52
  loc_A86440: NewIfNullPr clsimputacion
  loc_A86443: from_stack_1 = clsimputacion.RecordCount
  loc_A86448: ILdRf var_114
  loc_A8644B: LitI4 0
  loc_A86450: GtI4
  loc_A86451: BranchF loc_A86794
  loc_A86454: FLdPr Me
  loc_A86457: MemLdRfVar from_stack_1.global_52
  loc_A8645A: NewIfNullPr clsimputacion
  loc_A8645D: Call clsimputacion.MoveFirst()
  loc_A86462: LitI2_Byte 0
  loc_A86464: CR8I2
  loc_A86465: FStFPR8 var_8C
  loc_A86468: FLdRfVar var_116
  loc_A8646B: FLdPr Me
  loc_A8646E: MemLdRfVar from_stack_1.global_52
  loc_A86471: NewIfNullPr clsimputacion
  loc_A86474: from_stack_1 = clsimputacion.EOF
  loc_A86479: FLdI2 var_116
  loc_A8647C: NotI4
  loc_A8647D: BranchF loc_A86729
  loc_A86480: FLdRfVar var_A0
  loc_A86483: FLdRfVar var_110
  loc_A86486: LitVarStr var_B4, "ExorImpu"
  loc_A8648B: PopAdLdVar
  loc_A8648C: FLdRfVar var_F8
  loc_A8648F: FLdRfVar var_90
  loc_A86492: FLdPr Me
  loc_A86495: MemLdRfVar from_stack_1.global_52
  loc_A86498: NewIfNullPr clsimputacion
  loc_A8649B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A864A0: FLdPr var_90
  loc_A864A3:  = Me.Fields
  loc_A864A8: FLdPr var_F8
  loc_A864AB: from_stack_2 = Me.Item(from_stack_1)
  loc_A864B0: FLdPr var_110
  loc_A864B3:  = Me.Value
  loc_A864B8: FLdRfVar var_E4
  loc_A864BB: FLdRfVar var_124
  loc_A864BE: LitVarStr var_C4, "CodiPart"
  loc_A864C3: PopAdLdVar
  loc_A864C4: FLdRfVar var_120
  loc_A864C7: FLdRfVar var_11C
  loc_A864CA: FLdPr Me
  loc_A864CD: MemLdRfVar from_stack_1.global_52
  loc_A864D0: NewIfNullPr clsimputacion
  loc_A864D3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A864D8: FLdPr var_11C
  loc_A864DB:  = Me.Fields
  loc_A864E0: FLdPr var_120
  loc_A864E3: from_stack_2 = Me.Item(from_stack_1)
  loc_A864E8: FLdPr var_124
  loc_A864EB:  = Me.Value
  loc_A864F0: FLdRfVar var_F4
  loc_A864F3: FLdRfVar var_130
  loc_A864F6: LitVarStr var_D4, "CodiOrga"
  loc_A864FB: PopAdLdVar
  loc_A864FC: FLdRfVar var_12C
  loc_A864FF: FLdRfVar var_128
  loc_A86502: FLdPr Me
  loc_A86505: MemLdRfVar from_stack_1.global_52
  loc_A86508: NewIfNullPr clsimputacion
  loc_A8650B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A86510: FLdPr var_128
  loc_A86513:  = Me.Fields
  loc_A86518: FLdPr var_12C
  loc_A8651B: from_stack_2 = Me.Item(from_stack_1)
  loc_A86520: FLdPr var_130
  loc_A86523:  = Me.Value
  loc_A86528: FLdRfVar var_138
  loc_A8652B: FLdRfVar var_F4
  loc_A8652E: CStrVarTmp
  loc_A8652F: FStStrNoPop var_134
  loc_A86532: FLdRfVar var_E4
  loc_A86535: CStrVarTmp
  loc_A86536: FStStrNoPop var_10C
  loc_A86539: LitI2_Byte 0
  loc_A8653B: LitI2_Byte 0
  loc_A8653D: LitI2_Byte 0
  loc_A8653F: LitI2_Byte 0
  loc_A86541: LitI4 0
  loc_A86546: FLdRfVar var_A0
  loc_A86549: CStrVarTmp
  loc_A8654A: FStStrNoPop var_A4
  loc_A8654D: LitI2_Byte 1
  loc_A8654F: ImpAdLdI2 MemVar_C3D064
  loc_A86552: LitI2_Byte 1
  loc_A86554: AddI2
  loc_A86555: FLdPr Me
  loc_A86558: MemLdRfVar from_stack_1.global_52
  loc_A8655B: NewIfNullPr clsimputacion
  loc_A8655E: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_A86563: ILdRf var_138
  loc_A86566: FLdPr Me
  loc_A86569: MemStStrCopy
  loc_A8656D: FFreeStr var_A4 = "": var_10C = "": var_134 = ""
  loc_A86578: FFreeAd var_90 = "": var_F8 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_110 = "": var_124 = ""
  loc_A8658D: FFreeVar var_A0 = "": var_E4 = ""
  loc_A86596: FLdPr Me
  loc_A86599: VCallAd Control_ID_FechImpuMsk
  loc_A8659C: FStAdFunc var_90
  loc_A8659F: FLdPr var_90
  loc_A865A2: LateIdLdVar var_A0 DispID_15 0
  loc_A865A9: CStrVarTmp
  loc_A865AA: CVarStr var_E4
  loc_A865AD: ImpAdCallI2 IsDate()
  loc_A865B2: FFree1Ad var_90
  loc_A865B5: FFreeVar var_A0 = ""
  loc_A865BC: BranchF loc_A86669
  loc_A865BF: FLdPr Me
  loc_A865C2: VCallAd Control_ID_FechImpuMsk
  loc_A865C5: FStAdFunc var_90
  loc_A865C8: FLdPr var_90
  loc_A865CB: LateIdLdVar var_A0 DispID_15 0
  loc_A865D2: PopAd
  loc_A865D4: FLdPr Me
  loc_A865D7: MemLdStr global_88
  loc_A865DA: CDateStr
  loc_A865DC: FLdRfVar var_A0
  loc_A865DF: CStrVarTmp
  loc_A865E0: FStStrNoPop var_A4
  loc_A865E3: CDateStr
  loc_A865E5: GtR4
  loc_A865E6: FFree1Str var_A4
  loc_A865E9: FFree1Ad var_90
  loc_A865EC: FFree1Var var_A0 = ""
  loc_A865EF: BranchF loc_A86666
  loc_A865F2: LitVar_TRUE var_B4
  loc_A865F5: PopAdLdVar
  loc_A865F6: FLdPr Me
  loc_A865F9: VCallAd Control_ID_FechImpuMsk
  loc_A865FC: FStAdFunc var_90
  loc_A865FF: FLdPr var_90
  loc_A86602: LateIdSt
  loc_A86607: FFree1Ad var_90
  loc_A8660A: FLdPr Me
  loc_A8660D: MemLdStr global_88
  loc_A86610: CDateStr
  loc_A86612: CStrDate
  loc_A86614: CVarStr var_A0
  loc_A86617: PopAdLdVar
  loc_A86618: FLdPr Me
  loc_A8661B: VCallAd Control_ID_FechImpuMsk
  loc_A8661E: FStAdFunc var_90
  loc_A86621: FLdPr var_90
  loc_A86624: LateIdSt
  loc_A86629: FFree1Ad var_90
  loc_A8662C: FFree1Var var_A0 = ""
  loc_A8662F: FLdPr Me
  loc_A86632: VCallAd Control_ID_FechImpuMsk
  loc_A86635: FStAdFunc var_90
  loc_A86638: FLdPr var_90
  loc_A8663B: LateIdLdVar var_A0 DispID_15 0
  loc_A86642: CStrVarTmp
  loc_A86643: CVarStr var_E4
  loc_A86646: PopAdLdVar
  loc_A86647: FLdPr Me
  loc_A8664A: VCallAd Control_ID_FechImpuMsk
  loc_A8664D: FStAdFunc var_F8
  loc_A86650: FLdPr var_F8
  loc_A86653: LateIdSt
  loc_A86658: FFreeAd var_90 = ""
  loc_A8665F: FFreeVar var_A0 = ""
  loc_A86666: Branch loc_A866BE
  loc_A86669: FLdPr Me
  loc_A8666C: MemLdRfVar from_stack_1.global_88
  loc_A8666F: CDargRef
  loc_A86673: FLdPr Me
  loc_A86676: VCallAd Control_ID_FechImpuMsk
  loc_A86679: FStAdFunc var_90
  loc_A8667C: FLdPr var_90
  loc_A8667F: LateIdSt
  loc_A86684: FFree1Ad var_90
  loc_A86687: FLdPr Me
  loc_A8668A: VCallAd Control_ID_FechImpuMsk
  loc_A8668D: FStAdFunc var_90
  loc_A86690: FLdPr var_90
  loc_A86693: LateIdLdVar var_A0 DispID_15 0
  loc_A8669A: CStrVarTmp
  loc_A8669B: CVarStr var_E4
  loc_A8669E: PopAdLdVar
  loc_A8669F: FLdPr Me
  loc_A866A2: VCallAd Control_ID_FechImpuMsk
  loc_A866A5: FStAdFunc var_F8
  loc_A866A8: FLdPr var_F8
  loc_A866AB: LateIdSt
  loc_A866B0: FFreeAd var_90 = ""
  loc_A866B7: FFreeVar var_A0 = ""
  loc_A866BE: FLdFPR8 var_8C
  loc_A866C1: CVarR8
  loc_A866C5: FLdRfVar var_A0
  loc_A866C8: FLdRfVar var_110
  loc_A866CB: LitVarStr var_B4, "DefiImpu"
  loc_A866D0: PopAdLdVar
  loc_A866D1: FLdRfVar var_F8
  loc_A866D4: FLdRfVar var_90
  loc_A866D7: FLdPr Me
  loc_A866DA: MemLdRfVar from_stack_1.global_52
  loc_A866DD: NewIfNullPr clsimputacion
  loc_A866E0: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A866E5: FLdPr var_90
  loc_A866E8:  = Me.Fields
  loc_A866ED: FLdPr var_F8
  loc_A866F0: from_stack_2 = Me.Item(from_stack_1)
  loc_A866F5: FLdPr var_110
  loc_A866F8:  = Me.Value
  loc_A866FD: FLdRfVar var_A0
  loc_A86700: AddVar var_E4
  loc_A86704: CR4Var
  loc_A86705: FStFPR8 var_8C
  loc_A86708: FFreeAd var_90 = "": var_F8 = ""
  loc_A86711: FFreeVar var_A0 = ""
  loc_A86718: FLdPr Me
  loc_A8671B: MemLdRfVar from_stack_1.global_52
  loc_A8671E: NewIfNullPr clsimputacion
  loc_A86721: Call clsimputacion.MoveSiguiente()
  loc_A86726: Branch loc_A86468
  loc_A86729: ImpAdLdI2 MemVar_C3D064
  loc_A8672C: LitI2_Byte 1
  loc_A8672E: AddI2
  loc_A8672F: CStrUI1
  loc_A86731: FStStrNoPop var_A4
  loc_A86734: LitStr " >>> "
  loc_A86737: ConcatStr
  loc_A86738: FStStrNoPop var_10C
  loc_A8673B: LitI4 1
  loc_A86740: LitI4 1
  loc_A86745: LitVarStr var_C4, "currency"
  loc_A8674A: FStVarCopyObj var_A0
  loc_A8674D: FLdRfVar var_A0
  loc_A86750: FLdRfVar var_8C
  loc_A86753: CVarRef
  loc_A86758: ImpAdCallI2 Format$(, )
  loc_A8675D: FStStrNoPop var_134
  loc_A86760: ConcatStr
  loc_A86761: FStStrNoPop var_138
  loc_A86764: FLdPr Me
  loc_A86767: VCallAd Control_ID_FrameCoes
  loc_A8676A: FStAdFunc var_90
  loc_A8676D: FLdPr var_90
  loc_A86770: Me.Caption = from_stack_1
  loc_A86775: FFreeStr var_A4 = "": var_10C = "": var_134 = ""
  loc_A86780: FFree1Ad var_90
  loc_A86783: FFree1Var var_A0 = ""
  loc_A86786: FLdPr Me
  loc_A86789: MemLdRfVar from_stack_1.global_52
  loc_A8678C: NewIfNullPr clsimputacion
  loc_A8678F: Call clsimputacion.MoveFirst()
  loc_A86794: LitI4 0
  loc_A86799: CI2I4
  loc_A8679A: FLdPr Me
  loc_A8679D: Me.MousePointer = from_stack_1
  loc_A867A2: ExitProcHresult
End Function
