VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmLiquidacion
  Caption = "Liquidación del Gasto"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmLiquidacion.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15300
  ClientHeight = 9240
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Moveable = 0   'False
  Begin VB.CheckBox chkGeneRete
    Caption = "Genera Retenciones"
    Left = 2880
    Top = 4200
    Width = 2535
    Height = 300
    TabIndex = 20
  End
  Begin VB.CheckBox ChkRetieneImportesFijos
    Caption = "Retiene Importes Fijos"
    Left = 5760
    Top = 4163
    Width = 2775
    Height = 375
    TabIndex = 21
  End
  Begin VB.CheckBox chkSeleTodo
    Caption = "Selecciona Todo"
    Left = 9480
    Top = 4200
    Width = 2175
    Height = 300
    TabIndex = 22
  End
  Begin VB.CheckBox chkSeleCBU
    Caption = "Selecciona CBU"
    Left = 12000
    Top = 4200
    Width = 2175
    Height = 300
    TabIndex = 23
  End
  Begin VB.TextBox txtDetalleAmpliado
    Left = 1080
    Top = 5640
    Width = 9855
    Height = 855
    TabIndex = 14
    MultiLine = -1  'True
    ScrollBars = 2
  End
  Begin VB.CommandButton cmdAgregarDA
    Caption = "Agregar Detalle O.C."
    Left = 11280
    Top = 5880
    Width = 2895
    Height = 375
    TabIndex = 15
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton cmdVerRetenciones
    Caption = "Ver retenciones"
    Left = 12600
    Top = 4680
    Width = 1575
    Height = 375
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 120
    Top = 3120
    Width = 14175
    Height = 495
    Visible = 0   'False
    TabIndex = 6
    OleObjectBlob = "frmLiquidacion.frx":08CA
  End
  Begin VB.TextBox DetaLiquTxt
    ForeColor = &HC00000&
    Left = 1080
    Top = 4680
    Width = 11415
    Height = 855
    TabIndex = 13
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 200
  End
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
      OleObjectBlob = "frmLiquidacion.frx":0932
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 14175
    Height = 1935
    TabIndex = 5
    OleObjectBlob = "frmLiquidacion.frx":09BA
  End
  Begin MSFlexGridLib.MSFlexGrid DevengadoFlex
    Left = 120
    Top = 6600
    Width = 14175
    Height = 2895
    TabIndex = 16
    OleObjectBlob = "frmLiquidacion.frx":0DEE
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmLiquidacion.frx":0EDA
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15300
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmLiquidacion.frx":8A58
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmLiquidacion.frx":8FB4
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin MSMask.MaskEdBox FechLiquMsk
    Left = 1080
    Top = 4200
    Width = 1455
    Height = 360
    TabIndex = 19
    OleObjectBlob = "frmLiquidacion.frx":987E
  End
  Begin VB.Label Label5
    Caption = "Total seleccionado:"
    Left = 9480
    Top = 3720
    Width = 2040
    Height = 300
    TabIndex = 18
    AutoSize = -1  'True
  End
  Begin VB.Label lblTotalSeleccionado
    Left = 11640
    Top = 3720
    Width = 360
    Height = 360
    TabIndex = 17
    BorderStyle = 1 'Fixed Single
    AutoSize = -1  'True
  End
  Begin VB.Label Label7
    Caption = "Liquidación del Gasto"
    Left = 120
    Top = 3720
    Width = 2625
    Height = 300
    TabIndex = 7
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label lblTotalExpeImpu
    Left = 7440
    Top = 3720
    Width = 360
    Height = 360
    TabIndex = 9
    BorderStyle = 1 'Fixed Single
    AutoSize = -1  'True
  End
  Begin VB.Label Label3
    Caption = "Total del Exp. de Pago:"
    Left = 4920
    Top = 3720
    Width = 2430
    Height = 300
    TabIndex = 8
    AutoSize = -1  'True
  End
  Begin VB.Label Label2
    Caption = "Detalle:"
    Index = 0
    Left = 180
    Top = 4680
    Width = 810
    Height = 300
    TabIndex = 12
    AutoSize = -1  'True
  End
  Begin VB.Label Label1
    Caption = "Fecha:"
    Left = 240
    Top = 4200
    Width = 735
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
End

Attribute VB_Name = "frmLiquidacion"


Private Sub DevengadoFlex_UnknownEvent_8 'AFAE34
  'Data Table: 4AE690
  loc_AFA6E0: FLdRfVar var_C2
  loc_AFA6E3: FLdRfVar var_C0
  loc_AFA6E6: LitVarI2 var_B8, 1
  loc_AFA6EB: FLdPr Me
  loc_AFA6EE: VCallAd Control_ID_tlbABMS
  loc_AFA6F1: FStAdFunc var_88
  loc_AFA6F4: FLdPr var_88
  loc_AFA6F7: LateIdLdVar var_98 DispID_3 0
  loc_AFA6FE: CastAdVar Me
  loc_AFA702: FStAdFunc var_BC
  loc_AFA705: FLdPr var_BC
  loc_AFA708:  = Me.Buttons.ControlDefault
  loc_AFA70D: FLdPr var_C0
  loc_AFA710:  = Me.Enabled
  loc_AFA715: FLdI2 var_C2
  loc_AFA718: LitI2_Byte 0
  loc_AFA71A: EqI2
  loc_AFA71B: FFreeAd var_88 = "": var_BC = ""
  loc_AFA724: FFreeVar var_98 = ""
  loc_AFA72B: BranchF loc_AFAE32
  loc_AFA72E: FLdPr Me
  loc_AFA731: VCallAd Control_ID_DevengadoFlex
  loc_AFA734: FStAdFunc var_88
  loc_AFA737: FLdPr var_88
  loc_AFA73A: LateIdLdVar var_98 DispID_11 0
  loc_AFA741: CI4Var
  loc_AFA743: LitI4 8
  loc_AFA748: EqI4
  loc_AFA749: FFree1Ad var_88
  loc_AFA74C: FFree1Var var_98 = ""
  loc_AFA74F: BranchF loc_AFAC6B
  loc_AFA752: FLdPr Me
  loc_AFA755: VCallAd Control_ID_DevengadoFlex
  loc_AFA758: FStAdFunc var_88
  loc_AFA75B: FLdPr var_88
  loc_AFA75E: LateIdLdVar var_98 DispID_10 0
  loc_AFA765: CI4Var
  loc_AFA767: CVarI4
  loc_AFA76B: PopAdLdVar
  loc_AFA76C: LitVarI4
  loc_AFA774: PopAdLdVar
  loc_AFA775: FLdPr Me
  loc_AFA778: VCallAd Control_ID_DevengadoFlex
  loc_AFA77B: FStAdFunc var_BC
  loc_AFA77E: FLdPr var_BC
  loc_AFA781: LateIdCallLdVar
  loc_AFA78B: CStrVarTmp
  loc_AFA78C: CVarStr var_104
  loc_AFA78F: ImpAdCallI2 IsNumeric()
  loc_AFA794: FFreeAd var_88 = ""
  loc_AFA79B: FFreeVar var_98 = "": var_B8 = ""
  loc_AFA7A4: BranchF loc_AFAAA3
  loc_AFA7A7: FLdPr Me
  loc_AFA7AA: VCallAd Control_ID_DevengadoFlex
  loc_AFA7AD: FStAdFunc var_88
  loc_AFA7B0: FLdPr var_88
  loc_AFA7B3: LateIdLdVar var_98 DispID_10 0
  loc_AFA7BA: CI4Var
  loc_AFA7BC: CVarI4
  loc_AFA7C0: PopAdLdVar
  loc_AFA7C1: LitVarI4
  loc_AFA7C9: PopAdLdVar
  loc_AFA7CA: FLdPr Me
  loc_AFA7CD: VCallAd Control_ID_DevengadoFlex
  loc_AFA7D0: FStAdFunc var_BC
  loc_AFA7D3: FLdPr var_BC
  loc_AFA7D6: LateIdCallLdVar
  loc_AFA7E0: PopAd
  loc_AFA7E2: LitStr "0"
  loc_AFA7E5: LitI2_Byte &HFF
  loc_AFA7E7: LitI2_Byte 0
  loc_AFA7E9: LitI2_Byte 0
  loc_AFA7EB: FLdRfVar var_B8
  loc_AFA7EE: CStrVarTmp
  loc_AFA7EF: FStStrNoPop var_108
  loc_AFA7F2: LitStr "importe"
  loc_AFA7F5: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_AFA7FA: FStStrNoPop var_10C
  loc_AFA7FD: FLdPr Me
  loc_AFA800: MemStStrCopy
  loc_AFA804: FFreeStr var_108 = ""
  loc_AFA80B: FFreeAd var_88 = ""
  loc_AFA812: FFreeVar var_98 = ""
  loc_AFA819: FLdPr Me
  loc_AFA81C: MemLdStr global_64
  loc_AFA81F: LitStr vbNullString
  loc_AFA822: NeStr
  loc_AFA824: BranchF loc_AFA854
  loc_AFA827: LitI4 0
  loc_AFA82C: FLdPr Me
  loc_AFA82F: MemLdStr global_64
  loc_AFA832: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFA837: FLdPr Me
  loc_AFA83A: VCallAd Control_ID_DevengadoFlex
  loc_AFA83D: FStAdFunc var_88
  loc_AFA840: FLdPr var_88
  loc_AFA843: LateIdCall
  loc_AFA84B: FFree1Ad var_88
  loc_AFA84E: LitI2_Byte &HFF
  loc_AFA850: IStI2 Cancel
  loc_AFA853: ExitProcHresult
  loc_AFA854: FLdPr Me
  loc_AFA857: VCallAd Control_ID_DevengadoFlex
  loc_AFA85A: FStAdFunc var_C0
  loc_AFA85D: FLdPr var_C0
  loc_AFA860: LateIdLdVar var_104 DispID_10 0
  loc_AFA867: CI4Var
  loc_AFA869: CVarI4
  loc_AFA86D: PopAdLdVar
  loc_AFA86E: LitVarI4
  loc_AFA876: PopAdLdVar
  loc_AFA877: FLdPr Me
  loc_AFA87A: VCallAd Control_ID_DevengadoFlex
  loc_AFA87D: FStAdFunc var_150
  loc_AFA880: FLdPr var_150
  loc_AFA883: LateIdCallLdVar
  loc_AFA88D: PopAd
  loc_AFA88F: FLdPr Me
  loc_AFA892: VCallAd Control_ID_DevengadoFlex
  loc_AFA895: FStAdFunc var_88
  loc_AFA898: FLdPr var_88
  loc_AFA89B: LateIdLdVar var_98 DispID_10 0
  loc_AFA8A2: CI4Var
  loc_AFA8A4: CVarI4
  loc_AFA8A8: PopAdLdVar
  loc_AFA8A9: LitVarI4
  loc_AFA8B1: PopAdLdVar
  loc_AFA8B2: FLdPr Me
  loc_AFA8B5: VCallAd Control_ID_DevengadoFlex
  loc_AFA8B8: FStAdFunc var_BC
  loc_AFA8BB: FLdPr var_BC
  loc_AFA8BE: LateIdCallLdVar
  loc_AFA8C8: CStrVarTmp
  loc_AFA8C9: FStStrNoPop var_108
  loc_AFA8CC: CR8Str
  loc_AFA8CE: FLdRfVar var_160
  loc_AFA8D1: CStrVarTmp
  loc_AFA8D2: FStStrNoPop var_10C
  loc_AFA8D5: CR8Str
  loc_AFA8D7: GtR4
  loc_AFA8D8: FFreeStr var_108 = ""
  loc_AFA8DF: FFreeAd var_88 = "": var_BC = "": var_C0 = ""
  loc_AFA8EA: FFreeVar var_98 = "": var_B8 = "": var_104 = ""
  loc_AFA8F5: BranchF loc_AFAAA0
  loc_AFA8F8: FLdPr Me
  loc_AFA8FB: VCallAd Control_ID_DevengadoFlex
  loc_AFA8FE: FStAdFunc var_88
  loc_AFA901: FLdPr var_88
  loc_AFA904: LateIdLdVar var_98 DispID_10 0
  loc_AFA90B: CI4Var
  loc_AFA90D: CVarI4
  loc_AFA911: PopAdLdVar
  loc_AFA912: LitVarI4
  loc_AFA91A: PopAdLdVar
  loc_AFA91B: FLdPr Me
  loc_AFA91E: VCallAd Control_ID_DevengadoFlex
  loc_AFA921: FStAdFunc var_BC
  loc_AFA924: FLdPr var_BC
  loc_AFA927: LateIdCallLdVar
  loc_AFA931: PopAd
  loc_AFA933: LitVarStr var_13C, "El importe no debe ser mayor al valor inicial: "
  loc_AFA938: LitI4 1
  loc_AFA93D: LitI4 1
  loc_AFA942: LitVarStr var_12C, "0.00"
  loc_AFA947: FStVarCopyObj var_160
  loc_AFA94A: FLdRfVar var_160
  loc_AFA94D: FLdRfVar var_B8
  loc_AFA950: CStrVarTmp
  loc_AFA951: FStStrNoPop var_108
  loc_AFA954: CR8Str
  loc_AFA956: CVarR8
  loc_AFA95A: FLdRfVar var_170
  loc_AFA95D: ImpAdCallFPR4  = Format(, )
  loc_AFA962: FLdRfVar var_170
  loc_AFA965: ConcatVar var_180
  loc_AFA969: LitVarStr var_14C, ". Verifique..."
  loc_AFA96E: ConcatVar var_190
  loc_AFA972: CStrVarTmp
  loc_AFA973: FStStrNoPop var_10C
  loc_AFA976: FLdPr Me
  loc_AFA979: MemStStrCopy
  loc_AFA97D: FFreeStr var_108 = ""
  loc_AFA984: FFreeAd var_88 = ""
  loc_AFA98B: FFreeVar var_98 = "": var_B8 = "": var_104 = "": var_160 = "": var_170 = "": var_180 = ""
  loc_AFA99C: LitI4 0
  loc_AFA9A1: FLdPr Me
  loc_AFA9A4: MemLdStr global_64
  loc_AFA9A7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFA9AC: FLdPr Me
  loc_AFA9AF: VCallAd Control_ID_DevengadoFlex
  loc_AFA9B2: FStAdFunc var_88
  loc_AFA9B5: FLdPr var_88
  loc_AFA9B8: LateIdLdVar var_98 DispID_10 0
  loc_AFA9BF: CI4Var
  loc_AFA9C1: CVarI4
  loc_AFA9C5: PopAdLdVar
  loc_AFA9C6: LitVarI4
  loc_AFA9CE: PopAdLdVar
  loc_AFA9CF: FLdPr Me
  loc_AFA9D2: VCallAd Control_ID_DevengadoFlex
  loc_AFA9D5: FStAdFunc var_BC
  loc_AFA9D8: FLdPr var_BC
  loc_AFA9DB: LateIdCallLdVar
  loc_AFA9E5: PopAd
  loc_AFA9E7: FLdPr Me
  loc_AFA9EA: VCallAd Control_ID_DevengadoFlex
  loc_AFA9ED: FStAdFunc var_C0
  loc_AFA9F0: FLdPr var_C0
  loc_AFA9F3: LateIdLdVar var_180 DispID_10 0
  loc_AFA9FA: CI4Var
  loc_AFA9FC: CVarI4
  loc_AFAA00: PopAdLdVar
  loc_AFAA01: LitVarI4
  loc_AFAA09: PopAdLdVar
  loc_AFAA0A: LitI4 1
  loc_AFAA0F: LitI4 1
  loc_AFAA14: LitVarStr var_11C, "0.00"
  loc_AFAA19: FStVarCopyObj var_160
  loc_AFAA1C: FLdRfVar var_160
  loc_AFAA1F: FLdRfVar var_B8
  loc_AFAA22: CStrVarTmp
  loc_AFAA23: CVarStr var_104
  loc_AFAA26: FLdRfVar var_170
  loc_AFAA29: ImpAdCallFPR4  = Format(, )
  loc_AFAA2E: FLdRfVar var_170
  loc_AFAA31: CStrVarTmp
  loc_AFAA32: CVarStr var_190
  loc_AFAA35: PopAdLdVar
  loc_AFAA36: FLdPr Me
  loc_AFAA39: VCallAd Control_ID_DevengadoFlex
  loc_AFAA3C: FStAdFunc var_150
  loc_AFAA3F: FLdPr var_150
  loc_AFAA42: LateIdCallSt
  loc_AFAA4A: FFreeAd var_88 = "": var_BC = "": var_C0 = ""
  loc_AFAA55: FFreeVar var_98 = "": var_B8 = "": var_104 = "": var_160 = "": var_180 = "": var_170 = ""
  loc_AFAA66: LitVarI4
  loc_AFAA6E: PopAdLdVar
  loc_AFAA6F: FLdPr Me
  loc_AFAA72: VCallAd Control_ID_DevengadoFlex
  loc_AFAA75: FStAdFunc var_88
  loc_AFAA78: FLdPr var_88
  loc_AFAA7B: LateIdSt
  loc_AFAA80: FFree1Ad var_88
  loc_AFAA83: FLdPr Me
  loc_AFAA86: VCallAd Control_ID_DevengadoFlex
  loc_AFAA89: FStAdFunc var_88
  loc_AFAA8C: FLdPr var_88
  loc_AFAA8F: LateIdCall
  loc_AFAA97: FFree1Ad var_88
  loc_AFAA9A: LitI2_Byte &HFF
  loc_AFAA9C: IStI2 Cancel
  loc_AFAA9F: ExitProcHresult
  loc_AFAAA0: Branch loc_AFABB1
  loc_AFAAA3: LitStr "Ingrese un importe valido. Verifique..."
  loc_AFAAA6: FLdPr Me
  loc_AFAAA9: MemStStrCopy
  loc_AFAAAD: LitI4 0
  loc_AFAAB2: FLdPr Me
  loc_AFAAB5: MemLdStr global_64
  loc_AFAAB8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFAABD: FLdPr Me
  loc_AFAAC0: VCallAd Control_ID_DevengadoFlex
  loc_AFAAC3: FStAdFunc var_88
  loc_AFAAC6: FLdPr var_88
  loc_AFAAC9: LateIdLdVar var_98 DispID_10 0
  loc_AFAAD0: CI4Var
  loc_AFAAD2: CVarI4
  loc_AFAAD6: PopAdLdVar
  loc_AFAAD7: LitVarI4
  loc_AFAADF: PopAdLdVar
  loc_AFAAE0: FLdPr Me
  loc_AFAAE3: VCallAd Control_ID_DevengadoFlex
  loc_AFAAE6: FStAdFunc var_BC
  loc_AFAAE9: FLdPr var_BC
  loc_AFAAEC: LateIdCallLdVar
  loc_AFAAF6: PopAd
  loc_AFAAF8: FLdPr Me
  loc_AFAAFB: VCallAd Control_ID_DevengadoFlex
  loc_AFAAFE: FStAdFunc var_C0
  loc_AFAB01: FLdPr var_C0
  loc_AFAB04: LateIdLdVar var_180 DispID_10 0
  loc_AFAB0B: CI4Var
  loc_AFAB0D: CVarI4
  loc_AFAB11: PopAdLdVar
  loc_AFAB12: LitVarI4
  loc_AFAB1A: PopAdLdVar
  loc_AFAB1B: LitI4 1
  loc_AFAB20: LitI4 1
  loc_AFAB25: LitVarStr var_11C, "0.00"
  loc_AFAB2A: FStVarCopyObj var_160
  loc_AFAB2D: FLdRfVar var_160
  loc_AFAB30: FLdRfVar var_B8
  loc_AFAB33: CStrVarTmp
  loc_AFAB34: CVarStr var_104
  loc_AFAB37: FLdRfVar var_170
  loc_AFAB3A: ImpAdCallFPR4  = Format(, )
  loc_AFAB3F: FLdRfVar var_170
  loc_AFAB42: CStrVarTmp
  loc_AFAB43: CVarStr var_190
  loc_AFAB46: PopAdLdVar
  loc_AFAB47: FLdPr Me
  loc_AFAB4A: VCallAd Control_ID_DevengadoFlex
  loc_AFAB4D: FStAdFunc var_150
  loc_AFAB50: FLdPr var_150
  loc_AFAB53: LateIdCallSt
  loc_AFAB5B: FFreeAd var_88 = "": var_BC = "": var_C0 = ""
  loc_AFAB66: FFreeVar var_98 = "": var_B8 = "": var_104 = "": var_160 = "": var_180 = "": var_170 = ""
  loc_AFAB77: LitVarI4
  loc_AFAB7F: PopAdLdVar
  loc_AFAB80: FLdPr Me
  loc_AFAB83: VCallAd Control_ID_DevengadoFlex
  loc_AFAB86: FStAdFunc var_88
  loc_AFAB89: FLdPr var_88
  loc_AFAB8C: LateIdSt
  loc_AFAB91: FFree1Ad var_88
  loc_AFAB94: FLdPr Me
  loc_AFAB97: VCallAd Control_ID_DevengadoFlex
  loc_AFAB9A: FStAdFunc var_88
  loc_AFAB9D: FLdPr var_88
  loc_AFABA0: LateIdCall
  loc_AFABA8: FFree1Ad var_88
  loc_AFABAB: LitI2_Byte &HFF
  loc_AFABAD: IStI2 Cancel
  loc_AFABB0: ExitProcHresult
  loc_AFABB1: FLdPr Me
  loc_AFABB4: VCallAd Control_ID_DevengadoFlex
  loc_AFABB7: FStAdFunc var_88
  loc_AFABBA: FLdPr var_88
  loc_AFABBD: LateIdLdVar var_98 DispID_10 0
  loc_AFABC4: CI4Var
  loc_AFABC6: CVarI4
  loc_AFABCA: PopAdLdVar
  loc_AFABCB: LitVarI4
  loc_AFABD3: PopAdLdVar
  loc_AFABD4: FLdPr Me
  loc_AFABD7: VCallAd Control_ID_DevengadoFlex
  loc_AFABDA: FStAdFunc var_BC
  loc_AFABDD: FLdPr var_BC
  loc_AFABE0: LateIdCallLdVar
  loc_AFABEA: PopAd
  loc_AFABEC: FLdPr Me
  loc_AFABEF: VCallAd Control_ID_DevengadoFlex
  loc_AFABF2: FStAdFunc var_C0
  loc_AFABF5: FLdPr var_C0
  loc_AFABF8: LateIdLdVar var_180 DispID_10 0
  loc_AFABFF: CI4Var
  loc_AFAC01: CVarI4
  loc_AFAC05: PopAdLdVar
  loc_AFAC06: LitVarI4
  loc_AFAC0E: PopAdLdVar
  loc_AFAC0F: LitI4 1
  loc_AFAC14: LitI4 1
  loc_AFAC19: LitVarStr var_11C, "###,###,##0.00"
  loc_AFAC1E: FStVarCopyObj var_160
  loc_AFAC21: FLdRfVar var_160
  loc_AFAC24: FLdRfVar var_B8
  loc_AFAC27: CStrVarTmp
  loc_AFAC28: CVarStr var_104
  loc_AFAC2B: FLdRfVar var_170
  loc_AFAC2E: ImpAdCallFPR4  = Format(, )
  loc_AFAC33: FLdRfVar var_170
  loc_AFAC36: CStrVarTmp
  loc_AFAC37: CVarStr var_190
  loc_AFAC3A: PopAdLdVar
  loc_AFAC3B: FLdPr Me
  loc_AFAC3E: VCallAd Control_ID_DevengadoFlex
  loc_AFAC41: FStAdFunc var_150
  loc_AFAC44: FLdPr var_150
  loc_AFAC47: LateIdCallSt
  loc_AFAC4F: FFreeAd var_88 = "": var_BC = "": var_C0 = ""
  loc_AFAC5A: FFreeVar var_98 = "": var_B8 = "": var_104 = "": var_160 = "": var_180 = "": var_170 = ""
  loc_AFAC6B: LitI2_Byte 1
  loc_AFAC6D: FLdPr Me
  loc_AFAC70: MemLdRfVar from_stack_1.global_68
  loc_AFAC73: FLdPr Me
  loc_AFAC76: VCallAd Control_ID_DevengadoFlex
  loc_AFAC79: FStAdFunc var_88
  loc_AFAC7C: FLdPr var_88
  loc_AFAC7F: LateIdLdVar var_98 DispID_4 0
  loc_AFAC86: CI4Var
  loc_AFAC88: LitI4 1
  loc_AFAC8D: SubI4
  loc_AFAC8E: CI2I4
  loc_AFAC8F: FFree1Ad var_88
  loc_AFAC92: FFree1Var var_98 = ""
  loc_AFAC95: ForI2 var_1B4
  loc_AFAC9B: FLdPr Me
  loc_AFAC9E: MemLdI2 global_68
  loc_AFACA1: CI4UI1
  loc_AFACA2: CVarI4
  loc_AFACA6: PopAdLdVar
  loc_AFACA7: LitVarI4
  loc_AFACAF: PopAdLdVar
  loc_AFACB0: FLdPr Me
  loc_AFACB3: VCallAd Control_ID_DevengadoFlex
  loc_AFACB6: FStAdFunc var_88
  loc_AFACB9: FLdPr var_88
  loc_AFACBC: LateIdCallLdVar
  loc_AFACC6: CStrVarTmp
  loc_AFACC7: FStStrNoPop var_108
  loc_AFACCA: LitStr "Si"
  loc_AFACCD: EqStr
  loc_AFACCF: FFree1Str var_108
  loc_AFACD2: FFree1Ad var_88
  loc_AFACD5: FFree1Var var_98 = ""
  loc_AFACD8: BranchF loc_AFAE27
  loc_AFACDB: FLdPr Me
  loc_AFACDE: MemLdI2 global_68
  loc_AFACE1: CI4UI1
  loc_AFACE2: CVarI4
  loc_AFACE6: PopAdLdVar
  loc_AFACE7: LitVarI4
  loc_AFACEF: PopAdLdVar
  loc_AFACF0: FLdPr Me
  loc_AFACF3: VCallAd Control_ID_DevengadoFlex
  loc_AFACF6: FStAdFunc var_BC
  loc_AFACF9: FLdPr var_BC
  loc_AFACFC: LateIdCallLdVar
  loc_AFAD06: PopAd
  loc_AFAD08: FLdPr Me
  loc_AFAD0B: MemLdI2 global_68
  loc_AFAD0E: CI4UI1
  loc_AFAD0F: CVarI4
  loc_AFAD13: PopAdLdVar
  loc_AFAD14: LitVarI4
  loc_AFAD1C: PopAdLdVar
  loc_AFAD1D: FLdPr Me
  loc_AFAD20: VCallAd Control_ID_DevengadoFlex
  loc_AFAD23: FStAdFunc var_88
  loc_AFAD26: FLdPr var_88
  loc_AFAD29: LateIdCallLdVar
  loc_AFAD33: CStrVarTmp
  loc_AFAD34: FStStrNoPop var_108
  loc_AFAD37: CR8Str
  loc_AFAD39: FLdRfVar var_B8
  loc_AFAD3C: CStrVarTmp
  loc_AFAD3D: FStStrNoPop var_10C
  loc_AFAD40: CR8Str
  loc_AFAD42: GtR4
  loc_AFAD43: FFreeStr var_108 = ""
  loc_AFAD4A: FFreeAd var_88 = ""
  loc_AFAD51: FFreeVar var_98 = ""
  loc_AFAD58: BranchF loc_AFAE27
  loc_AFAD5B: FLdPr Me
  loc_AFAD5E: MemLdI2 global_68
  loc_AFAD61: CI4UI1
  loc_AFAD62: CVarI4
  loc_AFAD66: PopAdLdVar
  loc_AFAD67: LitVarI4
  loc_AFAD6F: PopAdLdVar
  loc_AFAD70: FLdPr Me
  loc_AFAD73: VCallAd Control_ID_DevengadoFlex
  loc_AFAD76: FStAdFunc var_88
  loc_AFAD79: FLdPr var_88
  loc_AFAD7C: LateIdCallLdVar
  loc_AFAD86: PopAd
  loc_AFAD88: LitStr "El importe no debe ser mayor al valor inicial: "
  loc_AFAD8B: LitI4 1
  loc_AFAD90: LitI4 1
  loc_AFAD95: LitVarStr var_12C, "0.00"
  loc_AFAD9A: FStVarCopyObj var_104
  loc_AFAD9D: FLdRfVar var_104
  loc_AFADA0: FLdRfVar var_98
  loc_AFADA3: CStrVarTmp
  loc_AFADA4: FStStrNoPop var_108
  loc_AFADA7: CR8Str
  loc_AFADA9: CVarR8
  loc_AFADAD: ImpAdCallI2 Format$(, )
  loc_AFADB2: FStStrNoPop var_10C
  loc_AFADB5: ConcatStr
  loc_AFADB6: FStStrNoPop var_1B8
  loc_AFADB9: LitStr ". En la fila Numero: "
  loc_AFADBC: ConcatStr
  loc_AFADBD: FStStrNoPop var_1BC
  loc_AFADC0: FLdPr Me
  loc_AFADC3: MemLdI2 global_68
  loc_AFADC6: CStrUI1
  loc_AFADC8: FStStrNoPop var_1C0
  loc_AFADCB: ConcatStr
  loc_AFADCC: FStStrNoPop var_1C4
  loc_AFADCF: LitStr ". Verifique..."
  loc_AFADD2: ConcatStr
  loc_AFADD3: FStStrNoPop var_1C8
  loc_AFADD6: FLdPr Me
  loc_AFADD9: MemStStrCopy
  loc_AFADDD: FFreeStr var_108 = "": var_10C = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1C4 = ""
  loc_AFADEE: FFree1Ad var_88
  loc_AFADF1: FFreeVar var_98 = "": var_B8 = ""
  loc_AFADFA: LitI4 0
  loc_AFADFF: FLdPr Me
  loc_AFAE02: MemLdStr global_64
  loc_AFAE05: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AFAE0A: FLdPr Me
  loc_AFAE0D: VCallAd Control_ID_DevengadoFlex
  loc_AFAE10: FStAdFunc var_88
  loc_AFAE13: FLdPr var_88
  loc_AFAE16: LateIdCall
  loc_AFAE1E: FFree1Ad var_88
  loc_AFAE21: LitI2_Byte &HFF
  loc_AFAE23: IStI2 Cancel
  loc_AFAE26: ExitProcHresult
  loc_AFAE27: FLdPr Me
  loc_AFAE2A: MemLdRfVar from_stack_1.global_68
  loc_AFAE2D: NextI2 var_1B4, loc_AFAC9B
  loc_AFAE32: ExitProcHresult
End Sub

Private Sub DevengadoFlex_Click() '9EE328
  'Data Table: 4AE690
  loc_9EE1FC: FLdRfVar var_C2
  loc_9EE1FF: FLdRfVar var_C0
  loc_9EE202: LitVarI2 var_B8, 1
  loc_9EE207: FLdPr Me
  loc_9EE20A: VCallAd Control_ID_tlbABMS
  loc_9EE20D: FStAdFunc var_88
  loc_9EE210: FLdPr var_88
  loc_9EE213: LateIdLdVar var_98 DispID_3 0
  loc_9EE21A: CastAdVar Me
  loc_9EE21E: FStAdFunc var_BC
  loc_9EE221: FLdPr var_BC
  loc_9EE224:  = Me.Buttons.ControlDefault
  loc_9EE229: FLdPr var_C0
  loc_9EE22C:  = Me.Enabled
  loc_9EE231: FLdI2 var_C2
  loc_9EE234: LitI2_Byte 0
  loc_9EE236: EqI2
  loc_9EE237: FFreeAd var_88 = "": var_BC = ""
  loc_9EE240: FFreeVar var_98 = ""
  loc_9EE247: BranchF loc_9EE327
  loc_9EE24A: FLdPr Me
  loc_9EE24D: VCallAd Control_ID_DevengadoFlex
  loc_9EE250: FStAdFunc var_88
  loc_9EE253: FLdPr var_88
  loc_9EE256: LateIdLdVar var_98 DispID_11 0
  loc_9EE25D: CI4Var
  loc_9EE25F: LitI4 8
  loc_9EE264: NeI4
  loc_9EE265: FFree1Ad var_88
  loc_9EE268: FFree1Var var_98 = ""
  loc_9EE26B: BranchF loc_9EE327
  loc_9EE26E: FLdPr Me
  loc_9EE271: VCallAd Control_ID_DevengadoFlex
  loc_9EE274: FStAdFunc var_88
  loc_9EE277: FLdPr var_88
  loc_9EE27A: LateIdLdVar var_98 DispID_10 0
  loc_9EE281: CI4Var
  loc_9EE283: CVarI4
  loc_9EE287: PopAdLdVar
  loc_9EE288: LitVarI4
  loc_9EE290: PopAdLdVar
  loc_9EE291: FLdPr Me
  loc_9EE294: VCallAd Control_ID_DevengadoFlex
  loc_9EE297: FStAdFunc var_BC
  loc_9EE29A: FLdPr var_BC
  loc_9EE29D: LateIdCallLdVar
  loc_9EE2A7: CStrVarTmp
  loc_9EE2A8: FStStrNoPop var_F8
  loc_9EE2AB: LitStr "No"
  loc_9EE2AE: EqStr
  loc_9EE2B0: FFree1Str var_F8
  loc_9EE2B3: FFreeAd var_88 = ""
  loc_9EE2BA: FFreeVar var_98 = ""
  loc_9EE2C1: BranchF loc_9EE2CC
  loc_9EE2C4: Call Proc_119_30_B4BDA8()
  loc_9EE2C9: Branch loc_9EE327
  loc_9EE2CC: FLdPr Me
  loc_9EE2CF: VCallAd Control_ID_DevengadoFlex
  loc_9EE2D2: FStAdFunc var_88
  loc_9EE2D5: FLdPr var_88
  loc_9EE2D8: LateIdLdVar var_98 DispID_10 0
  loc_9EE2DF: CI4Var
  loc_9EE2E1: CVarI4
  loc_9EE2E5: PopAdLdVar
  loc_9EE2E6: LitVarI4
  loc_9EE2EE: PopAdLdVar
  loc_9EE2EF: FLdPr Me
  loc_9EE2F2: VCallAd Control_ID_DevengadoFlex
  loc_9EE2F5: FStAdFunc var_BC
  loc_9EE2F8: FLdPr var_BC
  loc_9EE2FB: LateIdCallLdVar
  loc_9EE305: CStrVarTmp
  loc_9EE306: FStStrNoPop var_F8
  loc_9EE309: LitStr "Si"
  loc_9EE30C: EqStr
  loc_9EE30E: FFree1Str var_F8
  loc_9EE311: FFreeAd var_88 = ""
  loc_9EE318: FFreeVar var_98 = ""
  loc_9EE31F: BranchF loc_9EE327
  loc_9EE322: Call Proc_119_31_A38E14()
  loc_9EE327: ExitProcHresult
End Sub

Private Sub DevengadoFlex_KeyPress(KeyAscii As Integer) 'A42810
  'Data Table: 4AE690
  loc_A425C0: FLdRfVar var_C2
  loc_A425C3: FLdRfVar var_C0
  loc_A425C6: LitVarI2 var_B8, 1
  loc_A425CB: FLdPr Me
  loc_A425CE: VCallAd Control_ID_tlbABMS
  loc_A425D1: FStAdFunc var_88
  loc_A425D4: FLdPr var_88
  loc_A425D7: LateIdLdVar var_98 DispID_3 0
  loc_A425DE: CastAdVar Me
  loc_A425E2: FStAdFunc var_BC
  loc_A425E5: FLdPr var_BC
  loc_A425E8:  = Me.Buttons.ControlDefault
  loc_A425ED: FLdPr var_C0
  loc_A425F0:  = Me.Enabled
  loc_A425F5: FLdI2 var_C2
  loc_A425F8: LitI2_Byte 0
  loc_A425FA: EqI2
  loc_A425FB: FFreeAd var_88 = "": var_BC = ""
  loc_A42604: FFreeVar var_98 = ""
  loc_A4260B: BranchF loc_A4280E
  loc_A4260E: ILdI2 KeyAscii
  loc_A42611: CI4UI1
  loc_A42612: LitI4 &H20
  loc_A42617: EqI4
  loc_A42618: BranchF loc_A42620
  loc_A4261B: Call DevengadoFlex_Click()
  loc_A42620: FLdPr Me
  loc_A42623: VCallAd Control_ID_DevengadoFlex
  loc_A42626: FStAdFunc var_88
  loc_A42629: FLdPr var_88
  loc_A4262C: LateIdLdVar var_98 DispID_10 0
  loc_A42633: CI4Var
  loc_A42635: CVarI4
  loc_A42639: PopAdLdVar
  loc_A4263A: LitVarI4
  loc_A42642: PopAdLdVar
  loc_A42643: FLdPr Me
  loc_A42646: VCallAd Control_ID_DevengadoFlex
  loc_A42649: FStAdFunc var_BC
  loc_A4264C: FLdPr var_BC
  loc_A4264F: LateIdCallLdVar
  loc_A42659: CStrVarTmp
  loc_A4265A: FStStrNoPop var_F8
  loc_A4265D: LitStr "Si"
  loc_A42660: EqStr
  loc_A42662: FFree1Str var_F8
  loc_A42665: FFreeAd var_88 = ""
  loc_A4266C: FFreeVar var_98 = ""
  loc_A42673: BranchF loc_A4280E
  loc_A42676: ILdI2 KeyAscii
  loc_A42679: LitI2_Byte 8
  loc_A4267B: EqI2
  loc_A4267C: BranchF loc_A4273B
  loc_A4267F: FLdPr Me
  loc_A42682: VCallAd Control_ID_DevengadoFlex
  loc_A42685: FStAdFunc var_88
  loc_A42688: FLdPr var_88
  loc_A4268B: LateIdLdVar var_98 DispID_11 0
  loc_A42692: CI4Var
  loc_A42694: LitI4 8
  loc_A42699: EqI4
  loc_A4269A: FFree1Ad var_88
  loc_A4269D: FFree1Var var_98 = ""
  loc_A426A0: BranchF loc_A42738
  loc_A426A3: FLdPr Me
  loc_A426A6: VCallAd Control_ID_DevengadoFlex
  loc_A426A9: FStAdFunc var_88
  loc_A426AC: FLdPr var_88
  loc_A426AF: LateIdLdVar var_98 DispID_0 0
  loc_A426B6: CStrVarTmp
  loc_A426B7: FStStrNoPop var_F8
  loc_A426BA: LitStr vbNullString
  loc_A426BD: NeStr
  loc_A426BF: FFree1Str var_F8
  loc_A426C2: FFree1Ad var_88
  loc_A426C5: FFree1Var var_98 = ""
  loc_A426C8: BranchF loc_A42738
  loc_A426CB: FLdPr Me
  loc_A426CE: VCallAd Control_ID_DevengadoFlex
  loc_A426D1: FStAdFunc var_88
  loc_A426D4: FLdPr var_88
  loc_A426D7: LateIdLdVar var_98 DispID_0 0
  loc_A426DE: PopAd
  loc_A426E0: FLdPr Me
  loc_A426E3: VCallAd Control_ID_DevengadoFlex
  loc_A426E6: FStAdFunc var_BC
  loc_A426E9: FLdPr var_BC
  loc_A426EC: LateIdLdVar var_B8 DispID_0 0
  loc_A426F3: CStrVarTmp
  loc_A426F4: FStStrNoPop var_F8
  loc_A426F7: FnLenStr
  loc_A426F8: LitI4 1
  loc_A426FD: SubI4
  loc_A426FE: FLdRfVar var_98
  loc_A42701: CStrVarTmp
  loc_A42702: FStStrNoPop var_FC
  loc_A42705: ImpAdCallI2 Left$(, )
  loc_A4270A: CVarStr var_10C
  loc_A4270D: PopAdLdVar
  loc_A4270E: FLdPr Me
  loc_A42711: VCallAd Control_ID_DevengadoFlex
  loc_A42714: FStAdFunc var_C0
  loc_A42717: FLdPr var_C0
  loc_A4271A: LateIdSt
  loc_A4271F: FFreeStr var_F8 = ""
  loc_A42726: FFreeAd var_88 = "": var_BC = ""
  loc_A4272F: FFreeVar var_98 = "": var_B8 = ""
  loc_A42738: Branch loc_A4280E
  loc_A4273B: FLdPr Me
  loc_A4273E: VCallAd Control_ID_DevengadoFlex
  loc_A42741: FStAdFunc var_88
  loc_A42744: FLdPr var_88
  loc_A42747: LateIdLdVar var_98 DispID_11 0
  loc_A4274E: CI4Var
  loc_A42750: LitI4 8
  loc_A42755: EqI4
  loc_A42756: FFree1Ad var_88
  loc_A42759: FFree1Var var_98 = ""
  loc_A4275C: BranchF loc_A4280E
  loc_A4275F: FLdPr Me
  loc_A42762: VCallAd Control_ID_DevengadoFlex
  loc_A42765: FStAdFunc var_88
  loc_A42768: FLdPr var_88
  loc_A4276B: LateIdLdVar var_98 DispID_0 0
  loc_A42772: CStrVarTmp
  loc_A42773: FStStrNoPop var_F8
  loc_A42776: FnLenStr
  loc_A42777: LitI4 &HC
  loc_A4277C: LeI4
  loc_A4277D: FFree1Str var_F8
  loc_A42780: FFree1Ad var_88
  loc_A42783: FFree1Var var_98 = ""
  loc_A42786: BranchF loc_A4280E
  loc_A42789: ILdI2 KeyAscii
  loc_A4278C: LitStr "."
  loc_A4278F: ImpAdCallI2 Asc()
  loc_A42794: EqI2
  loc_A42795: BranchF loc_A427A3
  loc_A42798: LitStr ","
  loc_A4279B: ImpAdCallI2 Asc()
  loc_A427A0: IStI2 KeyAscii
  loc_A427A3: LitStr "1234567890.,"
  loc_A427A6: FStStrCopy var_F8
  loc_A427A9: FLdRfVar var_F8
  loc_A427AC: ILdRf KeyAscii
  loc_A427AF: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_A427B4: IStI2 KeyAscii
  loc_A427B7: FFree1Str var_F8
  loc_A427BA: FLdPr Me
  loc_A427BD: VCallAd Control_ID_DevengadoFlex
  loc_A427C0: FStAdFunc var_88
  loc_A427C3: FLdPr var_88
  loc_A427C6: LateIdLdVar var_98 DispID_0 0
  loc_A427CD: CStrVarTmp
  loc_A427CE: CVarStr var_10C
  loc_A427D1: ILdI2 KeyAscii
  loc_A427D4: CI4UI1
  loc_A427D5: FLdRfVar var_B8
  loc_A427D8: ImpAdCallFPR4  = Chr()
  loc_A427DD: FLdRfVar var_B8
  loc_A427E0: AddVar var_11C
  loc_A427E4: CStrVarTmp
  loc_A427E5: CVarStr var_12C
  loc_A427E8: PopAdLdVar
  loc_A427E9: FLdPr Me
  loc_A427EC: VCallAd Control_ID_DevengadoFlex
  loc_A427EF: FStAdFunc var_BC
  loc_A427F2: FLdPr var_BC
  loc_A427F5: LateIdSt
  loc_A427FA: FFreeAd var_88 = ""
  loc_A42801: FFreeVar var_98 = "": var_10C = "": var_B8 = "": var_11C = ""
  loc_A4280E: ExitProcHresult
End Sub

Private Sub DevengadoFlex_LeaveCell() 'B117D4
  'Data Table: 4AE690
  loc_B10F78: FLdRfVar var_C2
  loc_B10F7B: FLdRfVar var_C0
  loc_B10F7E: LitVarI2 var_B8, 1
  loc_B10F83: FLdPr Me
  loc_B10F86: VCallAd Control_ID_tlbABMS
  loc_B10F89: FStAdFunc var_88
  loc_B10F8C: FLdPr var_88
  loc_B10F8F: LateIdLdVar var_98 DispID_3 0
  loc_B10F96: CastAdVar Me
  loc_B10F9A: FStAdFunc var_BC
  loc_B10F9D: FLdPr var_BC
  loc_B10FA0:  = Me.Buttons.ControlDefault
  loc_B10FA5: FLdPr var_C0
  loc_B10FA8:  = Me.Enabled
  loc_B10FAD: FLdI2 var_C2
  loc_B10FB0: LitI2_Byte 0
  loc_B10FB2: EqI2
  loc_B10FB3: FFreeAd var_88 = "": var_BC = ""
  loc_B10FBC: FFreeVar var_98 = ""
  loc_B10FC3: BranchF loc_B117D3
  loc_B10FC6: FLdPr Me
  loc_B10FC9: VCallAd Control_ID_DevengadoFlex
  loc_B10FCC: FStAdFunc var_88
  loc_B10FCF: FLdPr var_88
  loc_B10FD2: LateIdLdVar var_98 DispID_10 0
  loc_B10FD9: CI4Var
  loc_B10FDB: CVarI4
  loc_B10FDF: PopAdLdVar
  loc_B10FE0: LitVarI4
  loc_B10FE8: PopAdLdVar
  loc_B10FE9: FLdPr Me
  loc_B10FEC: VCallAd Control_ID_DevengadoFlex
  loc_B10FEF: FStAdFunc var_BC
  loc_B10FF2: FLdPr var_BC
  loc_B10FF5: LateIdCallLdVar
  loc_B10FFF: CStrVarTmp
  loc_B11000: FStStrNoPop var_F8
  loc_B11003: LitStr "Si"
  loc_B11006: EqStr
  loc_B11008: FFree1Str var_F8
  loc_B1100B: FFreeAd var_88 = ""
  loc_B11012: FFreeVar var_98 = ""
  loc_B11019: BranchF loc_B117D3
  loc_B1101C: FLdPr Me
  loc_B1101F: VCallAd Control_ID_DevengadoFlex
  loc_B11022: FStAdFunc var_88
  loc_B11025: FLdPr var_88
  loc_B11028: LateIdLdVar var_98 DispID_11 0
  loc_B1102F: CI4Var
  loc_B11031: LitI4 8
  loc_B11036: EqI4
  loc_B11037: FFree1Ad var_88
  loc_B1103A: FFree1Var var_98 = ""
  loc_B1103D: BranchF loc_B117D3
  loc_B11040: FLdPr Me
  loc_B11043: VCallAd Control_ID_DevengadoFlex
  loc_B11046: FStAdFunc var_88
  loc_B11049: FLdPr var_88
  loc_B1104C: LateIdLdVar var_98 DispID_10 0
  loc_B11053: CI4Var
  loc_B11055: CVarI4
  loc_B11059: PopAdLdVar
  loc_B1105A: LitVarI4
  loc_B11062: PopAdLdVar
  loc_B11063: FLdPr Me
  loc_B11066: VCallAd Control_ID_DevengadoFlex
  loc_B11069: FStAdFunc var_BC
  loc_B1106C: FLdPr var_BC
  loc_B1106F: LateIdCallLdVar
  loc_B11079: CStrVarTmp
  loc_B1107A: CVarStr var_108
  loc_B1107D: ImpAdCallI2 IsNumeric()
  loc_B11082: FFreeAd var_88 = ""
  loc_B11089: FFreeVar var_98 = "": var_B8 = ""
  loc_B11092: BranchF loc_B11420
  loc_B11095: FLdPr Me
  loc_B11098: VCallAd Control_ID_DevengadoFlex
  loc_B1109B: FStAdFunc var_88
  loc_B1109E: FLdPr var_88
  loc_B110A1: LateIdLdVar var_98 DispID_10 0
  loc_B110A8: CI4Var
  loc_B110AA: CVarI4
  loc_B110AE: PopAdLdVar
  loc_B110AF: LitVarI4
  loc_B110B7: PopAdLdVar
  loc_B110B8: FLdPr Me
  loc_B110BB: VCallAd Control_ID_DevengadoFlex
  loc_B110BE: FStAdFunc var_BC
  loc_B110C1: FLdPr var_BC
  loc_B110C4: LateIdCallLdVar
  loc_B110CE: PopAd
  loc_B110D0: LitStr "0"
  loc_B110D3: LitI2_Byte &HFF
  loc_B110D5: LitI2_Byte 0
  loc_B110D7: LitI2_Byte 0
  loc_B110D9: FLdRfVar var_B8
  loc_B110DC: CStrVarTmp
  loc_B110DD: FStStrNoPop var_F8
  loc_B110E0: LitStr "Importe"
  loc_B110E3: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B110E8: FStStrNoPop var_10C
  loc_B110EB: FLdPr Me
  loc_B110EE: MemStStrCopy
  loc_B110F2: FFreeStr var_F8 = ""
  loc_B110F9: FFreeAd var_88 = ""
  loc_B11100: FFreeVar var_98 = ""
  loc_B11107: FLdPr Me
  loc_B1110A: MemLdStr global_64
  loc_B1110D: LitStr vbNullString
  loc_B11110: NeStr
  loc_B11112: BranchF loc_B111ED
  loc_B11115: LitI4 0
  loc_B1111A: FLdPr Me
  loc_B1111D: MemLdStr global_64
  loc_B11120: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B11125: FLdPr Me
  loc_B11128: VCallAd Control_ID_DevengadoFlex
  loc_B1112B: FStAdFunc var_88
  loc_B1112E: FLdPr var_88
  loc_B11131: LateIdLdVar var_98 DispID_10 0
  loc_B11138: CI4Var
  loc_B1113A: CVarI4
  loc_B1113E: PopAdLdVar
  loc_B1113F: LitVarI4
  loc_B11147: PopAdLdVar
  loc_B11148: FLdPr Me
  loc_B1114B: VCallAd Control_ID_DevengadoFlex
  loc_B1114E: FStAdFunc var_BC
  loc_B11151: FLdPr var_BC
  loc_B11154: LateIdCallLdVar
  loc_B1115E: PopAd
  loc_B11160: FLdPr Me
  loc_B11163: VCallAd Control_ID_DevengadoFlex
  loc_B11166: FStAdFunc var_C0
  loc_B11169: FLdPr var_C0
  loc_B1116C: LateIdLdVar var_13C DispID_10 0
  loc_B11173: CI4Var
  loc_B11175: CVarI4
  loc_B11179: PopAdLdVar
  loc_B1117A: LitVarI4
  loc_B11182: PopAdLdVar
  loc_B11183: LitI4 1
  loc_B11188: LitI4 1
  loc_B1118D: LitVarStr var_11C, "###,###,##0.00"
  loc_B11192: FStVarCopyObj var_12C
  loc_B11195: FLdRfVar var_12C
  loc_B11198: FLdRfVar var_B8
  loc_B1119B: CStrVarTmp
  loc_B1119C: CVarStr var_108
  loc_B1119F: ImpAdCallI2 Format$(, )
  loc_B111A4: CVarStr var_18C
  loc_B111A7: PopAdLdVar
  loc_B111A8: FLdPr Me
  loc_B111AB: VCallAd Control_ID_DevengadoFlex
  loc_B111AE: FStAdFunc var_1A0
  loc_B111B1: FLdPr var_1A0
  loc_B111B4: LateIdCallSt
  loc_B111BC: FFreeAd var_88 = "": var_BC = "": var_C0 = ""
  loc_B111C7: FFreeVar var_98 = "": var_B8 = "": var_108 = "": var_12C = "": var_13C = ""
  loc_B111D6: FLdPr Me
  loc_B111D9: VCallAd Control_ID_DevengadoFlex
  loc_B111DC: FStAdFunc var_88
  loc_B111DF: FLdPr var_88
  loc_B111E2: LateIdCall
  loc_B111EA: FFree1Ad var_88
  loc_B111ED: FLdPr Me
  loc_B111F0: VCallAd Control_ID_DevengadoFlex
  loc_B111F3: FStAdFunc var_C0
  loc_B111F6: FLdPr var_C0
  loc_B111F9: LateIdLdVar var_108 DispID_10 0
  loc_B11200: CI4Var
  loc_B11202: CVarI4
  loc_B11206: PopAdLdVar
  loc_B11207: LitVarI4
  loc_B1120F: PopAdLdVar
  loc_B11210: FLdPr Me
  loc_B11213: VCallAd Control_ID_DevengadoFlex
  loc_B11216: FStAdFunc var_1A0
  loc_B11219: FLdPr var_1A0
  loc_B1121C: LateIdCallLdVar
  loc_B11226: PopAd
  loc_B11228: FLdPr Me
  loc_B1122B: VCallAd Control_ID_DevengadoFlex
  loc_B1122E: FStAdFunc var_88
  loc_B11231: FLdPr var_88
  loc_B11234: LateIdLdVar var_98 DispID_10 0
  loc_B1123B: CI4Var
  loc_B1123D: CVarI4
  loc_B11241: PopAdLdVar
  loc_B11242: LitVarI4
  loc_B1124A: PopAdLdVar
  loc_B1124B: FLdPr Me
  loc_B1124E: VCallAd Control_ID_DevengadoFlex
  loc_B11251: FStAdFunc var_BC
  loc_B11254: FLdPr var_BC
  loc_B11257: LateIdCallLdVar
  loc_B11261: CStrVarTmp
  loc_B11262: FStStrNoPop var_F8
  loc_B11265: CR8Str
  loc_B11267: FLdRfVar var_12C
  loc_B1126A: CStrVarTmp
  loc_B1126B: FStStrNoPop var_10C
  loc_B1126E: CR8Str
  loc_B11270: GtR4
  loc_B11271: FFreeStr var_F8 = ""
  loc_B11278: FFreeAd var_88 = "": var_BC = "": var_C0 = ""
  loc_B11283: FFreeVar var_98 = "": var_B8 = "": var_108 = ""
  loc_B1128E: BranchF loc_B1141D
  loc_B11291: FLdPr Me
  loc_B11294: VCallAd Control_ID_DevengadoFlex
  loc_B11297: FStAdFunc var_88
  loc_B1129A: FLdPr var_88
  loc_B1129D: LateIdLdVar var_98 DispID_10 0
  loc_B112A4: CI4Var
  loc_B112A6: CVarI4
  loc_B112AA: PopAdLdVar
  loc_B112AB: LitVarI4
  loc_B112B3: PopAdLdVar
  loc_B112B4: FLdPr Me
  loc_B112B7: VCallAd Control_ID_DevengadoFlex
  loc_B112BA: FStAdFunc var_BC
  loc_B112BD: FLdPr var_BC
  loc_B112C0: LateIdCallLdVar
  loc_B112CA: PopAd
  loc_B112CC: LitI4 1
  loc_B112D1: LitI4 1
  loc_B112D6: LitVarStr var_14C, "0.00"
  loc_B112DB: FStVarCopyObj var_12C
  loc_B112DE: FLdRfVar var_12C
  loc_B112E1: FLdRfVar var_B8
  loc_B112E4: CStrVarTmp
  loc_B112E5: FStStrNoPop var_F8
  loc_B112E8: CR8Str
  loc_B112EA: CVarR8
  loc_B112EE: FLdRfVar var_13C
  loc_B112F1: ImpAdCallFPR4  = Format(, )
  loc_B112F6: LitI4 0
  loc_B112FB: LitVarStr var_15C, "El importe no debe ser mayor al valor inicial: "
  loc_B11300: FLdRfVar var_13C
  loc_B11303: ConcatVar var_18C
  loc_B11307: LitVarStr var_16C, ". Verifique..."
  loc_B1130C: ConcatVar var_1B0
  loc_B11310: CStrVarVal var_10C
  loc_B11314: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B11319: FFreeStr var_F8 = ""
  loc_B11320: FFreeAd var_88 = ""
  loc_B11327: FFreeVar var_98 = "": var_B8 = "": var_108 = "": var_12C = "": var_13C = "": var_18C = ""
  loc_B11338: FLdPr Me
  loc_B1133B: VCallAd Control_ID_DevengadoFlex
  loc_B1133E: FStAdFunc var_88
  loc_B11341: FLdPr var_88
  loc_B11344: LateIdLdVar var_98 DispID_10 0
  loc_B1134B: CI4Var
  loc_B1134D: CVarI4
  loc_B11351: PopAdLdVar
  loc_B11352: LitVarI4
  loc_B1135A: PopAdLdVar
  loc_B1135B: FLdPr Me
  loc_B1135E: VCallAd Control_ID_DevengadoFlex
  loc_B11361: FStAdFunc var_BC
  loc_B11364: FLdPr var_BC
  loc_B11367: LateIdCallLdVar
  loc_B11371: PopAd
  loc_B11373: FLdPr Me
  loc_B11376: VCallAd Control_ID_DevengadoFlex
  loc_B11379: FStAdFunc var_C0
  loc_B1137C: FLdPr var_C0
  loc_B1137F: LateIdLdVar var_13C DispID_10 0
  loc_B11386: CI4Var
  loc_B11388: CVarI4
  loc_B1138C: PopAdLdVar
  loc_B1138D: LitVarI4
  loc_B11395: PopAdLdVar
  loc_B11396: LitI4 1
  loc_B1139B: LitI4 1
  loc_B113A0: LitVarStr var_11C, "###,###,##0.00"
  loc_B113A5: FStVarCopyObj var_12C
  loc_B113A8: FLdRfVar var_12C
  loc_B113AB: FLdRfVar var_B8
  loc_B113AE: CStrVarTmp
  loc_B113AF: CVarStr var_108
  loc_B113B2: ImpAdCallI2 Format$(, )
  loc_B113B7: CVarStr var_18C
  loc_B113BA: PopAdLdVar
  loc_B113BB: FLdPr Me
  loc_B113BE: VCallAd Control_ID_DevengadoFlex
  loc_B113C1: FStAdFunc var_1A0
  loc_B113C4: FLdPr var_1A0
  loc_B113C7: LateIdCallSt
  loc_B113CF: FFreeAd var_88 = "": var_BC = "": var_C0 = ""
  loc_B113DA: FFreeVar var_98 = "": var_B8 = "": var_108 = "": var_12C = "": var_13C = ""
  loc_B113E9: LitVarI4
  loc_B113F1: PopAdLdVar
  loc_B113F2: FLdPr Me
  loc_B113F5: VCallAd Control_ID_DevengadoFlex
  loc_B113F8: FStAdFunc var_88
  loc_B113FB: FLdPr var_88
  loc_B113FE: LateIdSt
  loc_B11403: FFree1Ad var_88
  loc_B11406: FLdPr Me
  loc_B11409: VCallAd Control_ID_DevengadoFlex
  loc_B1140C: FStAdFunc var_88
  loc_B1140F: FLdPr var_88
  loc_B11412: LateIdCall
  loc_B1141A: FFree1Ad var_88
  loc_B1141D: Branch loc_B11512
  loc_B11420: LitI4 0
  loc_B11425: LitStr "Ingrese un importe valido. Verifique..."
  loc_B11428: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1142D: FLdPr Me
  loc_B11430: VCallAd Control_ID_DevengadoFlex
  loc_B11433: FStAdFunc var_88
  loc_B11436: FLdPr var_88
  loc_B11439: LateIdLdVar var_98 DispID_10 0
  loc_B11440: CI4Var
  loc_B11442: CVarI4
  loc_B11446: PopAdLdVar
  loc_B11447: LitVarI4
  loc_B1144F: PopAdLdVar
  loc_B11450: FLdPr Me
  loc_B11453: VCallAd Control_ID_DevengadoFlex
  loc_B11456: FStAdFunc var_BC
  loc_B11459: FLdPr var_BC
  loc_B1145C: LateIdCallLdVar
  loc_B11466: PopAd
  loc_B11468: FLdPr Me
  loc_B1146B: VCallAd Control_ID_DevengadoFlex
  loc_B1146E: FStAdFunc var_C0
  loc_B11471: FLdPr var_C0
  loc_B11474: LateIdLdVar var_13C DispID_10 0
  loc_B1147B: CI4Var
  loc_B1147D: CVarI4
  loc_B11481: PopAdLdVar
  loc_B11482: LitVarI4
  loc_B1148A: PopAdLdVar
  loc_B1148B: LitI4 1
  loc_B11490: LitI4 1
  loc_B11495: LitVarStr var_11C, "###,###,##0.00"
  loc_B1149A: FStVarCopyObj var_12C
  loc_B1149D: FLdRfVar var_12C
  loc_B114A0: FLdRfVar var_B8
  loc_B114A3: CStrVarTmp
  loc_B114A4: CVarStr var_108
  loc_B114A7: ImpAdCallI2 Format$(, )
  loc_B114AC: CVarStr var_18C
  loc_B114AF: PopAdLdVar
  loc_B114B0: FLdPr Me
  loc_B114B3: VCallAd Control_ID_DevengadoFlex
  loc_B114B6: FStAdFunc var_1A0
  loc_B114B9: FLdPr var_1A0
  loc_B114BC: LateIdCallSt
  loc_B114C4: FFreeAd var_88 = "": var_BC = "": var_C0 = ""
  loc_B114CF: FFreeVar var_98 = "": var_B8 = "": var_108 = "": var_12C = "": var_13C = ""
  loc_B114DE: LitVarI4
  loc_B114E6: PopAdLdVar
  loc_B114E7: FLdPr Me
  loc_B114EA: VCallAd Control_ID_DevengadoFlex
  loc_B114ED: FStAdFunc var_88
  loc_B114F0: FLdPr var_88
  loc_B114F3: LateIdSt
  loc_B114F8: FFree1Ad var_88
  loc_B114FB: FLdPr Me
  loc_B114FE: VCallAd Control_ID_DevengadoFlex
  loc_B11501: FStAdFunc var_88
  loc_B11504: FLdPr var_88
  loc_B11507: LateIdCall
  loc_B1150F: FFree1Ad var_88
  loc_B11512: FLdPr Me
  loc_B11515: VCallAd Control_ID_DevengadoFlex
  loc_B11518: FStAdFunc var_88
  loc_B1151B: FLdPr var_88
  loc_B1151E: LateIdLdVar var_98 DispID_10 0
  loc_B11525: CI4Var
  loc_B11527: CVarI4
  loc_B1152B: PopAdLdVar
  loc_B1152C: LitVarI4
  loc_B11534: PopAdLdVar
  loc_B11535: FLdPr Me
  loc_B11538: VCallAd Control_ID_DevengadoFlex
  loc_B1153B: FStAdFunc var_BC
  loc_B1153E: FLdPr var_BC
  loc_B11541: LateIdCallLdVar
  loc_B1154B: PopAd
  loc_B1154D: FLdPr Me
  loc_B11550: VCallAd Control_ID_DevengadoFlex
  loc_B11553: FStAdFunc var_C0
  loc_B11556: FLdPr var_C0
  loc_B11559: LateIdLdVar var_13C DispID_10 0
  loc_B11560: CI4Var
  loc_B11562: CVarI4
  loc_B11566: PopAdLdVar
  loc_B11567: LitVarI4
  loc_B1156F: PopAdLdVar
  loc_B11570: LitI4 1
  loc_B11575: LitI4 1
  loc_B1157A: LitVarStr var_11C, "###,###,##0.00"
  loc_B1157F: FStVarCopyObj var_12C
  loc_B11582: FLdRfVar var_12C
  loc_B11585: FLdRfVar var_B8
  loc_B11588: CStrVarTmp
  loc_B11589: CVarStr var_108
  loc_B1158C: ImpAdCallI2 Format$(, )
  loc_B11591: CVarStr var_18C
  loc_B11594: PopAdLdVar
  loc_B11595: FLdPr Me
  loc_B11598: VCallAd Control_ID_DevengadoFlex
  loc_B1159B: FStAdFunc var_1A0
  loc_B1159E: FLdPr var_1A0
  loc_B115A1: LateIdCallSt
  loc_B115A9: FFreeAd var_88 = "": var_BC = "": var_C0 = ""
  loc_B115B4: FFreeVar var_98 = "": var_B8 = "": var_108 = "": var_12C = "": var_13C = ""
  loc_B115C3: FLdPr Me
  loc_B115C6: VCallAd Control_ID_DevengadoFlex
  loc_B115C9: FStAdFunc var_C0
  loc_B115CC: FLdPr var_C0
  loc_B115CF: LateIdLdVar var_108 DispID_10 0
  loc_B115D6: CI4Var
  loc_B115D8: CVarI4
  loc_B115DC: PopAdLdVar
  loc_B115DD: LitVarI4
  loc_B115E5: PopAdLdVar
  loc_B115E6: FLdPr Me
  loc_B115E9: VCallAd Control_ID_DevengadoFlex
  loc_B115EC: FStAdFunc var_1A0
  loc_B115EF: FLdPr var_1A0
  loc_B115F2: LateIdCallLdVar
  loc_B115FC: PopAd
  loc_B115FE: FLdPr Me
  loc_B11601: VCallAd Control_ID_DevengadoFlex
  loc_B11604: FStAdFunc var_88
  loc_B11607: FLdPr var_88
  loc_B1160A: LateIdLdVar var_98 DispID_10 0
  loc_B11611: CI4Var
  loc_B11613: CVarI4
  loc_B11617: PopAdLdVar
  loc_B11618: LitVarI4
  loc_B11620: PopAdLdVar
  loc_B11621: FLdPr Me
  loc_B11624: VCallAd Control_ID_DevengadoFlex
  loc_B11627: FStAdFunc var_BC
  loc_B1162A: FLdPr var_BC
  loc_B1162D: LateIdCallLdVar
  loc_B11637: CStrVarTmp
  loc_B11638: FStStrNoPop var_F8
  loc_B1163B: CR8Str
  loc_B1163D: FLdRfVar var_12C
  loc_B11640: CStrVarTmp
  loc_B11641: FStStrNoPop var_10C
  loc_B11644: CR8Str
  loc_B11646: LtR8
  loc_B11647: FFreeStr var_F8 = ""
  loc_B1164E: FFreeAd var_88 = "": var_BC = "": var_C0 = ""
  loc_B11659: FFreeVar var_98 = "": var_B8 = "": var_108 = ""
  loc_B11664: BranchF loc_B117B6
  loc_B11667: LitVarI4
  loc_B1166F: PopAdLdVar
  loc_B11670: FLdPr Me
  loc_B11673: VCallAd Control_ID_DevengadoFlex
  loc_B11676: FStAdFunc var_88
  loc_B11679: FLdPr var_88
  loc_B1167C: LateIdSt
  loc_B11681: FFree1Ad var_88
  loc_B11684: LitStr "0"
  loc_B11687: FLdPr Me
  loc_B1168A: VCallAd Control_ID_lblTotalSeleccionado
  loc_B1168D: FStAdFunc var_88
  loc_B11690: FLdPr var_88
  loc_B11693: Me.Caption = from_stack_1
  loc_B11698: FFree1Ad var_88
  loc_B1169B: LitI2_Byte 1
  loc_B1169D: FLdPr Me
  loc_B116A0: MemLdRfVar from_stack_1.global_68
  loc_B116A3: FLdPr Me
  loc_B116A6: VCallAd Control_ID_DevengadoFlex
  loc_B116A9: FStAdFunc var_88
  loc_B116AC: FLdPr var_88
  loc_B116AF: LateIdLdVar var_98 DispID_4 0
  loc_B116B6: CI4Var
  loc_B116B8: LitI4 1
  loc_B116BD: SubI4
  loc_B116BE: CI2I4
  loc_B116BF: FFree1Ad var_88
  loc_B116C2: FFree1Var var_98 = ""
  loc_B116C5: ForI2 var_1B4
  loc_B116CB: FLdPr Me
  loc_B116CE: MemLdI2 global_68
  loc_B116D1: CI4UI1
  loc_B116D2: CVarI4
  loc_B116D6: PopAdLdVar
  loc_B116D7: LitVarI4
  loc_B116DF: PopAdLdVar
  loc_B116E0: FLdPr Me
  loc_B116E3: VCallAd Control_ID_DevengadoFlex
  loc_B116E6: FStAdFunc var_88
  loc_B116E9: FLdPr var_88
  loc_B116EC: LateIdCallLdVar
  loc_B116F6: CStrVarTmp
  loc_B116F7: FStStrNoPop var_F8
  loc_B116FA: LitStr "Si"
  loc_B116FD: EqStr
  loc_B116FF: FFree1Str var_F8
  loc_B11702: FFree1Ad var_88
  loc_B11705: FFree1Var var_98 = ""
  loc_B11708: BranchF loc_B117A8
  loc_B1170B: FLdRfVar var_F8
  loc_B1170E: FLdPr Me
  loc_B11711: VCallAd Control_ID_lblTotalSeleccionado
  loc_B11714: FStAdFunc var_88
  loc_B11717: FLdPr var_88
  loc_B1171A:  = Me.Caption
  loc_B1171F: FLdPr Me
  loc_B11722: MemLdI2 global_68
  loc_B11725: CI4UI1
  loc_B11726: CVarI4
  loc_B1172A: PopAdLdVar
  loc_B1172B: LitVarI4
  loc_B11733: PopAdLdVar
  loc_B11734: FLdPr Me
  loc_B11737: VCallAd Control_ID_DevengadoFlex
  loc_B1173A: FStAdFunc var_BC
  loc_B1173D: FLdPr var_BC
  loc_B11740: LateIdCallLdVar
  loc_B1174A: PopAd
  loc_B1174C: LitI4 1
  loc_B11751: LitI4 1
  loc_B11756: LitVarStr var_14C, "currency"
  loc_B1175B: FStVarCopyObj var_108
  loc_B1175E: FLdRfVar var_108
  loc_B11761: ILdRf var_F8
  loc_B11764: CR8Str
  loc_B11766: FLdRfVar var_98
  loc_B11769: CStrVarTmp
  loc_B1176A: FStStrNoPop var_10C
  loc_B1176D: CR8Str
  loc_B1176F: AddR8
  loc_B11770: CVarR8
  loc_B11774: ImpAdCallI2 Format$(, )
  loc_B11779: FStStrNoPop var_1B8
  loc_B1177C: FLdPr Me
  loc_B1177F: VCallAd Control_ID_lblTotalSeleccionado
  loc_B11782: FStAdFunc var_C0
  loc_B11785: FLdPr var_C0
  loc_B11788: Me.Caption = from_stack_1
  loc_B1178D: FFreeStr var_F8 = "": var_10C = ""
  loc_B11796: FFreeAd var_88 = "": var_BC = ""
  loc_B1179F: FFreeVar var_98 = "": var_B8 = ""
  loc_B117A8: FLdPr Me
  loc_B117AB: MemLdRfVar from_stack_1.global_68
  loc_B117AE: NextI2 var_1B4, loc_B116CB
  loc_B117B3: Branch loc_B117D3
  loc_B117B6: LitVarI4
  loc_B117BE: PopAdLdVar
  loc_B117BF: FLdPr Me
  loc_B117C2: VCallAd Control_ID_DevengadoFlex
  loc_B117C5: FStAdFunc var_88
  loc_B117C8: FLdPr var_88
  loc_B117CB: LateIdSt
  loc_B117D0: FFree1Ad var_88
  loc_B117D3: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B1DC94
  'Data Table: 4AE690
  loc_B1D41C: ILdRf Button
  loc_B1D41F: FStAd var_88 
  loc_B1D423: FLdRfVar var_8C
  loc_B1D426: FLdPr var_88
  loc_B1D429:  = Me.Key
  loc_B1D42E: FLdZeroAd var_8C
  loc_B1D431: FStStr var_90
  loc_B1D434: ILdRf var_90
  loc_B1D437: LitStr "btnCrear"
  loc_B1D43A: EqStr
  loc_B1D43C: BranchF loc_B1D66C
  loc_B1D43F: FLdRfVar var_94
  loc_B1D442: FLdPr Me
  loc_B1D445: MemLdRfVar from_stack_1.global_52
  loc_B1D448: NewIfNullPr clsimputacion
  loc_B1D44B: from_stack_1 = clsimputacion.RecordCount
  loc_B1D450: ILdRf var_94
  loc_B1D453: LitI4 0
  loc_B1D458: GtI4
  loc_B1D459: BranchF loc_B1D65C
  loc_B1D45C: LitI2_Byte 1
  loc_B1D45E: FLdPr Me
  loc_B1D461: MemStUI1
  loc_B1D465: ILdRf Me
  loc_B1D468: CastAd
  loc_B1D46B: FStAdFunc var_98
  loc_B1D46E: FLdRfVar var_98
  loc_B1D471: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B1D476: FFree1Ad var_98
  loc_B1D479: LitI4 0
  loc_B1D47E: LitI4 0
  loc_B1D483: FLdRfVar var_9C
  loc_B1D486: Redim
  loc_B1D490: FLdPr Me
  loc_B1D493: VCallAd Control_ID_dgdABMS
  loc_B1D496: CVarAd
  loc_B1D49A: ParmAry1St
  loc_B1D4A0: FLdRfVar var_9C
  loc_B1D4A3: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B1D4A8: FLdRfVar var_9C
  loc_B1D4AB: Erase
  loc_B1D4AC: LitI4 0
  loc_B1D4B1: LitI4 0
  loc_B1D4B6: FLdRfVar var_9C
  loc_B1D4B9: Redim
  loc_B1D4C3: FLdPr Me
  loc_B1D4C6: VCallAd Control_ID_DevengadoFlex
  loc_B1D4C9: CVarAd
  loc_B1D4CD: ParmAry1St
  loc_B1D4D3: FLdRfVar var_9C
  loc_B1D4D6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B1D4DB: FLdRfVar var_9C
  loc_B1D4DE: Erase
  loc_B1D4DF: FLdRfVar var_94
  loc_B1D4E2: FLdPr Me
  loc_B1D4E5: MemLdRfVar from_stack_1.global_52
  loc_B1D4E8: NewIfNullPr clsimputacion
  loc_B1D4EB: from_stack_1 = clsimputacion.RecordCount
  loc_B1D4F0: ILdRf var_94
  loc_B1D4F3: LitI4 0
  loc_B1D4F8: GtI4
  loc_B1D4F9: BranchF loc_B1D5FE
  loc_B1D4FC: FLdRfVar var_AC
  loc_B1D4FF: FLdRfVar var_C4
  loc_B1D502: LitVarStr var_C0, "ExpeImpu"
  loc_B1D507: PopAdLdVar
  loc_B1D508: FLdRfVar var_B0
  loc_B1D50B: FLdRfVar var_98
  loc_B1D50E: FLdPr Me
  loc_B1D511: MemLdRfVar from_stack_1.global_52
  loc_B1D514: NewIfNullPr clsimputacion
  loc_B1D517: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1D51C: FLdPr var_98
  loc_B1D51F:  = Me.Fields
  loc_B1D524: FLdPr var_B0
  loc_B1D527: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D52C: FLdPr var_C4
  loc_B1D52F:  = Me.Value
  loc_B1D534: FLdRfVar var_F0
  loc_B1D537: FLdRfVar var_E0
  loc_B1D53A: LitVarStr var_DC, "Tipo"
  loc_B1D53F: PopAdLdVar
  loc_B1D540: FLdRfVar var_CC
  loc_B1D543: FLdRfVar var_C8
  loc_B1D546: FLdPr Me
  loc_B1D549: MemLdRfVar from_stack_1.global_52
  loc_B1D54C: NewIfNullPr clsimputacion
  loc_B1D54F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1D554: FLdPr var_C8
  loc_B1D557:  = Me.Fields
  loc_B1D55C: FLdPr var_CC
  loc_B1D55F: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D564: FLdPr var_E0
  loc_B1D567:  = Me.Value
  loc_B1D56C: FLdRfVar var_F8
  loc_B1D56F: FLdRfVar var_F0
  loc_B1D572: CStrVarTmp
  loc_B1D573: FStStrNoPop var_F4
  loc_B1D576: FLdRfVar var_AC
  loc_B1D579: CStrVarTmp
  loc_B1D57A: FStStrNoPop var_8C
  loc_B1D57D: ImpAdLdI2 MemVar_C3D064
  loc_B1D580: FLdPr Me
  loc_B1D583: MemLdRfVar from_stack_1.global_56
  loc_B1D586: NewIfNullPr clsliquidacion
  loc_B1D589: from_stack_4v = clsliquidacion.UltimaFechLiqu(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B1D58E: FLdZeroAd var_F8
  loc_B1D591: CVarStr var_108
  loc_B1D594: PopAdLdVar
  loc_B1D595: FLdPr Me
  loc_B1D598: VCallAd Control_ID_FechLiquMsk
  loc_B1D59B: FStAdFunc var_11C
  loc_B1D59E: FLdPr var_11C
  loc_B1D5A1: LateIdSt
  loc_B1D5A6: FFreeStr var_8C = ""
  loc_B1D5AD: FFreeAd var_98 = "": var_B0 = "": var_C8 = "": var_CC = "": var_C4 = "": var_E0 = ""
  loc_B1D5BE: FFreeVar var_AC = "": var_F0 = ""
  loc_B1D5C7: FLdPr Me
  loc_B1D5CA: VCallAd Control_ID_FechLiquMsk
  loc_B1D5CD: FStAdFunc var_98
  loc_B1D5D0: FLdPr var_98
  loc_B1D5D3: LateIdLdVar var_AC DispID_11 -32767
  loc_B1D5DA: CStrVarTmp
  loc_B1D5DB: CVarStr var_F0
  loc_B1D5DE: PopAdLdVar
  loc_B1D5DF: FLdPr Me
  loc_B1D5E2: VCallAd Control_ID_FechLiquMsk
  loc_B1D5E5: FStAdFunc var_B0
  loc_B1D5E8: FLdPr var_B0
  loc_B1D5EB: LateIdSt
  loc_B1D5F0: FFreeAd var_98 = ""
  loc_B1D5F7: FFreeVar var_AC = ""
  loc_B1D5FE: ImpAdLdFPR8 MemVar_C3D04C
  loc_B1D601: CStrDate
  loc_B1D603: CVarStr var_AC
  loc_B1D606: PopAdLdVar
  loc_B1D607: FLdPr Me
  loc_B1D60A: VCallAd Control_ID_FechLiquMsk
  loc_B1D60D: FStAdFunc var_98
  loc_B1D610: FLdPr var_98
  loc_B1D613: LateIdSt
  loc_B1D618: FFree1Ad var_98
  loc_B1D61B: FFree1Var var_AC = ""
  loc_B1D61E: ILdRf Me
  loc_B1D621: CastAd
  loc_B1D624: FStAdFunc var_98
  loc_B1D627: FLdRfVar var_98
  loc_B1D62A: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_B1D62F: FFree1Ad var_98
  loc_B1D632: LitStr vbNullString
  loc_B1D635: FLdPr Me
  loc_B1D638: MemStStrCopy
  loc_B1D63C: LitI4 0
  loc_B1D641: FLdPr Me
  loc_B1D644: MemStI4 global_84
  loc_B1D647: FLdPr Me
  loc_B1D64A: VCallAd Control_ID_FechLiquMsk
  loc_B1D64D: CVarAd
  loc_B1D651: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_B1D656: FFree1Var var_AC = ""
  loc_B1D659: Branch loc_B1D669
  loc_B1D65C: LitI4 0
  loc_B1D661: LitStr "Seleccionar un expediente. Verifique..."
  loc_B1D664: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1D669: Branch loc_B1DC92
  loc_B1D66C: ILdRf var_90
  loc_B1D66F: LitStr "btnModificar"
  loc_B1D672: EqStr
  loc_B1D674: BranchF loc_B1D67A
  loc_B1D677: Branch loc_B1DC92
  loc_B1D67A: ILdRf var_90
  loc_B1D67D: LitStr "btnEliminar"
  loc_B1D680: EqStr
  loc_B1D682: BranchF loc_B1D688
  loc_B1D685: Branch loc_B1DC92
  loc_B1D688: ILdRf var_90
  loc_B1D68B: LitStr "btnGuardar"
  loc_B1D68E: EqStr
  loc_B1D690: BranchF loc_B1DAE1
  loc_B1D693: FLdPr Me
  loc_B1D696: MemLdStr global_84
  loc_B1D699: LitI4 0
  loc_B1D69E: GtI4
  loc_B1D69F: FLdRfVar var_8C
  loc_B1D6A2: FLdPr Me
  loc_B1D6A5: VCallAd Control_ID_txtDetalleAmpliado
  loc_B1D6A8: FStAdFunc var_98
  loc_B1D6AB: FLdPr var_98
  loc_B1D6AE:  = Me.Text
  loc_B1D6B3: ILdRf var_8C
  loc_B1D6B6: LitStr vbNullString
  loc_B1D6B9: EqStr
  loc_B1D6BB: AndI4
  loc_B1D6BC: FFree1Str var_8C
  loc_B1D6BF: FFree1Ad var_98
  loc_B1D6C2: BranchF loc_B1D6D3
  loc_B1D6C5: LitI4 0
  loc_B1D6CA: LitStr "Recuerde Agregar el Detalle Ampliado..."
  loc_B1D6CD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1D6D2: ExitProcHresult
  loc_B1D6D3: LitStr vbNullString
  loc_B1D6D6: FLdPr Me
  loc_B1D6D9: MemStStrCopy
  loc_B1D6DD: LitI2_Byte 0
  loc_B1D6DF: PopTmpLdAd2 var_11E
  loc_B1D6E2: Call FechLiquMsk_UnknownEvent_8()
  loc_B1D6E7: FLdPr Me
  loc_B1D6EA: MemLdStr global_64
  loc_B1D6ED: LitStr vbNullString
  loc_B1D6F0: NeStr
  loc_B1D6F2: BranchF loc_B1D6F6
  loc_B1D6F5: ExitProcHresult
  loc_B1D6F6: LitI2_Byte 0
  loc_B1D6F8: PopTmpLdAd2 var_11E
  loc_B1D6FB: Call DetaLiquTxt_Validate(from_stack_1v)
  loc_B1D700: FLdPr Me
  loc_B1D703: MemLdStr global_64
  loc_B1D706: LitStr vbNullString
  loc_B1D709: NeStr
  loc_B1D70B: BranchF loc_B1D70F
  loc_B1D70E: ExitProcHresult
  loc_B1D70F: LitStr vbNullString
  loc_B1D712: FLdPr Me
  loc_B1D715: MemStStrCopy
  loc_B1D719: LitI2_Byte 0
  loc_B1D71B: PopTmpLdAd2 var_11E
  loc_B1D71E: Call DevengadoFlex_UnknownEvent_8()
  loc_B1D723: FLdPr Me
  loc_B1D726: MemLdStr global_64
  loc_B1D729: LitStr vbNullString
  loc_B1D72C: NeStr
  loc_B1D72E: BranchF loc_B1D732
  loc_B1D731: ExitProcHresult
  loc_B1D732: FLdPr Me
  loc_B1D735: MemLdUI1 global_60
  loc_B1D739: FStUI1 var_120
  loc_B1D73D: FLdUI1
  loc_B1D741: LitI2_Byte 2
  loc_B1D743: EqI2
  loc_B1D744: BranchF loc_B1D74A
  loc_B1D747: Branch loc_B1DA9E
  loc_B1D74A: FLdUI1
  loc_B1D74E: LitI2_Byte 1
  loc_B1D750: EqI2
  loc_B1D751: BranchF loc_B1DA9E
  loc_B1D754: LitI2_Byte 0
  loc_B1D756: FStI2 var_124
  loc_B1D759: LitI2_Byte 1
  loc_B1D75B: FLdPr Me
  loc_B1D75E: MemLdRfVar from_stack_1.global_68
  loc_B1D761: FLdPr Me
  loc_B1D764: VCallAd Control_ID_DevengadoFlex
  loc_B1D767: FStAdFunc var_98
  loc_B1D76A: FLdPr var_98
  loc_B1D76D: LateIdLdVar var_AC DispID_4 0
  loc_B1D774: CI4Var
  loc_B1D776: LitI4 1
  loc_B1D77B: SubI4
  loc_B1D77C: CI2I4
  loc_B1D77D: FFree1Ad var_98
  loc_B1D780: FFree1Var var_AC = ""
  loc_B1D783: ForI2 var_128
  loc_B1D789: FLdPr Me
  loc_B1D78C: MemLdI2 global_68
  loc_B1D78F: CI4UI1
  loc_B1D790: CVarI4
  loc_B1D794: PopAdLdVar
  loc_B1D795: LitVarI4
  loc_B1D79D: PopAdLdVar
  loc_B1D79E: FLdPr Me
  loc_B1D7A1: VCallAd Control_ID_DevengadoFlex
  loc_B1D7A4: FStAdFunc var_98
  loc_B1D7A7: FLdPr var_98
  loc_B1D7AA: LateIdCallLdVar
  loc_B1D7B4: CStrVarTmp
  loc_B1D7B5: FStStrNoPop var_8C
  loc_B1D7B8: LitStr "Si"
  loc_B1D7BB: EqStr
  loc_B1D7BD: FFree1Str var_8C
  loc_B1D7C0: FFree1Ad var_98
  loc_B1D7C3: FFree1Var var_AC = ""
  loc_B1D7C6: BranchF loc_B1D7D1
  loc_B1D7C9: LitI2_Byte &HFF
  loc_B1D7CB: FStI2 var_124
  loc_B1D7CE: Branch loc_B1D7DC
  loc_B1D7D1: FLdPr Me
  loc_B1D7D4: MemLdRfVar from_stack_1.global_68
  loc_B1D7D7: NextI2 var_128, loc_B1D789
  loc_B1D7DC: FLdI2 var_124
  loc_B1D7DF: LitI2_Byte 0
  loc_B1D7E1: EqI2
  loc_B1D7E2: BranchF loc_B1D7F3
  loc_B1D7E5: LitI4 0
  loc_B1D7EA: LitStr "Debe Seleccionar al menos un Devengado. Verifique..."
  loc_B1D7ED: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1D7F2: ExitProcHresult
  loc_B1D7F3: LitVar_TRUE var_C0
  loc_B1D7F6: PopAdLdVar
  loc_B1D7F7: FLdPr Me
  loc_B1D7FA: VCallAd Control_ID_ProgressBar
  loc_B1D7FD: FStAdFunc var_98
  loc_B1D800: FLdPr var_98
  loc_B1D803: LateIdSt
  loc_B1D808: FFree1Ad var_98
  loc_B1D80B: FLdRfVar var_F0
  loc_B1D80E: FLdRfVar var_C4
  loc_B1D811: LitVarStr var_C0, "ExpeImpu"
  loc_B1D816: PopAdLdVar
  loc_B1D817: FLdRfVar var_B0
  loc_B1D81A: FLdRfVar var_98
  loc_B1D81D: FLdPr Me
  loc_B1D820: MemLdRfVar from_stack_1.global_52
  loc_B1D823: NewIfNullPr clsimputacion
  loc_B1D826: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1D82B: FLdPr var_98
  loc_B1D82E:  = Me.Fields
  loc_B1D833: FLdPr var_B0
  loc_B1D836: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D83B: FLdPr var_C4
  loc_B1D83E:  = Me.Value
  loc_B1D843: FLdPr Me
  loc_B1D846: VCallAd Control_ID_FechLiquMsk
  loc_B1D849: FStAdFunc var_C8
  loc_B1D84C: FLdPr var_C8
  loc_B1D84F: LateIdLdVar var_AC DispID_15 0
  loc_B1D856: PopAd
  loc_B1D858: FLdRfVar var_F4
  loc_B1D85B: FLdPr Me
  loc_B1D85E: VCallAd Control_ID_DetaLiquTxt
  loc_B1D861: FStAdFunc var_E0
  loc_B1D864: FLdPr var_E0
  loc_B1D867:  = Me.Text
  loc_B1D86C: FLdRfVar var_8C
  loc_B1D86F: FLdPr Me
  loc_B1D872: VCallAd Control_ID_txtDetalleAmpliado
  loc_B1D875: FStAdFunc var_CC
  loc_B1D878: FLdPr var_CC
  loc_B1D87B:  = Me.Text
  loc_B1D880: FLdRfVar var_108
  loc_B1D883: FLdRfVar var_140
  loc_B1D886: LitVarStr var_DC, "Tipo"
  loc_B1D88B: PopAdLdVar
  loc_B1D88C: FLdRfVar var_13C
  loc_B1D88F: FLdRfVar var_11C
  loc_B1D892: FLdPr Me
  loc_B1D895: MemLdRfVar from_stack_1.global_52
  loc_B1D898: NewIfNullPr clsimputacion
  loc_B1D89B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1D8A0: FLdPr var_11C
  loc_B1D8A3:  = Me.Fields
  loc_B1D8A8: FLdPr var_13C
  loc_B1D8AB: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D8B0: FLdPr var_140
  loc_B1D8B3:  = Me.Value
  loc_B1D8B8: FLdRfVar var_F8
  loc_B1D8BB: FLdPr Me
  loc_B1D8BE:  = Me.Name
  loc_B1D8C3: FLdPr Me
  loc_B1D8C6: VCallAd Control_ID_DevengadoFlex
  loc_B1D8C9: FStAdFunc var_158
  loc_B1D8CC: FLdRfVar var_11E
  loc_B1D8CF: FLdZeroAd var_158
  loc_B1D8D2: FStAdFunc var_154
  loc_B1D8D5: FLdRfVar var_154
  loc_B1D8D8: ILdRf var_F8
  loc_B1D8DB: FLdRfVar var_108
  loc_B1D8DE: CStrVarTmp
  loc_B1D8DF: FStStrNoPop var_150
  loc_B1D8E2: ILdRf var_F4
  loc_B1D8E5: ILdRf var_8C
  loc_B1D8E8: ConcatStr
  loc_B1D8E9: FStStrNoPop var_14C
  loc_B1D8EC: FLdRfVar var_AC
  loc_B1D8EF: CStrVarTmp
  loc_B1D8F0: FStStrNoPop var_148
  loc_B1D8F3: FLdRfVar var_F0
  loc_B1D8F6: CStrVarTmp
  loc_B1D8F7: FStStrNoPop var_144
  loc_B1D8FA: FLdPr Me
  loc_B1D8FD: MemLdRfVar from_stack_1.global_56
  loc_B1D900: NewIfNullPr clsliquidacion
  loc_B1D903: from_stack_7v = clsliquidacion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_B1D908: FLdI2 var_11E
  loc_B1D90B: FStI2 var_122
  loc_B1D90E: FFreeStr var_F4 = "": var_8C = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_B1D91F: FFreeAd var_98 = "": var_B0 = "": var_C8 = "": var_CC = "": var_E0 = "": var_11C = "": var_13C = "": var_C4 = "": var_140 = "": var_154 = ""
  loc_B1D938: FFreeVar var_AC = "": var_F0 = ""
  loc_B1D941: FLdI2 var_122
  loc_B1D944: LitI2_Byte 0
  loc_B1D946: GtI2
  loc_B1D947: BranchF loc_B1DA9E
  loc_B1D94A: FLdRfVar var_AC
  loc_B1D94D: FLdRfVar var_C4
  loc_B1D950: LitVarStr var_C0, "ExpeImpu"
  loc_B1D955: PopAdLdVar
  loc_B1D956: FLdRfVar var_B0
  loc_B1D959: FLdRfVar var_98
  loc_B1D95C: FLdPr Me
  loc_B1D95F: MemLdRfVar from_stack_1.global_52
  loc_B1D962: NewIfNullPr clsimputacion
  loc_B1D965: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1D96A: FLdPr var_98
  loc_B1D96D:  = Me.Fields
  loc_B1D972: FLdPr var_B0
  loc_B1D975: from_stack_2 = Me.Item(from_stack_1)
  loc_B1D97A: FLdPr var_C4
  loc_B1D97D:  = Me.Value
  loc_B1D982: LitI2_Byte &HFF
  loc_B1D984: PopTmpLdAd2 var_1AA
  loc_B1D987: LitI2_Byte 0
  loc_B1D989: PopTmpLdAd2 var_11E
  loc_B1D98C: LitVarStr var_DC, "Se generó la Liquidación: "
  loc_B1D991: FLdRfVar var_AC
  loc_B1D994: ConcatVar var_F0
  loc_B1D998: LitVarStr var_118, " - Número: "
  loc_B1D99D: ConcatVar var_108
  loc_B1D9A1: FLdI2 var_122
  loc_B1D9A4: CVarI2 var_138
  loc_B1D9A7: ConcatVar var_168
  loc_B1D9AB: LitVarStr var_178, vbCrLf
  loc_B1D9B0: ConcatVar var_188
  loc_B1D9B4: LitVarStr var_198, "¿Imprime el Volante de Liquidación del Gasto?"
  loc_B1D9B9: ConcatVar var_1A8
  loc_B1D9BD: CStrVarVal var_8C
  loc_B1D9C1: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B1D9C6: CI4UI1
  loc_B1D9C7: LitI4 6
  loc_B1D9CC: EqI4
  loc_B1D9CD: FFree1Str var_8C
  loc_B1D9D0: FFreeAd var_98 = "": var_B0 = ""
  loc_B1D9D9: FFreeVar var_AC = "": var_F0 = "": var_108 = "": var_168 = "": var_188 = ""
  loc_B1D9E8: BranchF loc_B1DA9E
  loc_B1D9EB: ImpAdLdRf MemVar_C3DAC0
  loc_B1D9EE: NewIfNullAd
  loc_B1D9F1: CastAd
  loc_B1D9F4: FStAdFuncNoPop
  loc_B1D9F7: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B1D9FC: FFree1Ad var_98
  loc_B1D9FF: FLdRfVar var_AC
  loc_B1DA02: FLdRfVar var_C4
  loc_B1DA05: LitVarStr var_C0, "ExpeImpu"
  loc_B1DA0A: PopAdLdVar
  loc_B1DA0B: FLdRfVar var_B0
  loc_B1DA0E: FLdRfVar var_98
  loc_B1DA11: FLdPr Me
  loc_B1DA14: MemLdRfVar from_stack_1.global_52
  loc_B1DA17: NewIfNullPr clsimputacion
  loc_B1DA1A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1DA1F: FLdPr var_98
  loc_B1DA22:  = Me.Fields
  loc_B1DA27: FLdPr var_B0
  loc_B1DA2A: from_stack_2 = Me.Item(from_stack_1)
  loc_B1DA2F: FLdPr var_C4
  loc_B1DA32:  = Me.Value
  loc_B1DA37: FLdRfVar var_AC
  loc_B1DA3A: CStrVarTmp
  loc_B1DA3B: FStStrNoPop var_8C
  loc_B1DA3E: ImpAdLdRf MemVar_C3DAC0
  loc_B1DA41: NewIfNullPr rptVolantedeLiquidacion
  loc_B1DA44: VCallAd Control_ID_cboExpeImpu
  loc_B1DA47: FStAdFunc var_C8
  loc_B1DA4A: FLdPr var_C8
  loc_B1DA4D: rptVolantedeLiquidacion.ComboBox.Text = from_stack_1
  loc_B1DA52: FFree1Str var_8C
  loc_B1DA55: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B1DA60: FFree1Var var_AC = ""
  loc_B1DA63: FLdI2 var_122
  loc_B1DA66: CStrUI1
  loc_B1DA68: CVarStr var_AC
  loc_B1DA6B: PopAdLdVar
  loc_B1DA6C: ImpAdLdRf MemVar_C3DAC0
  loc_B1DA6F: NewIfNullPr rptVolantedeLiquidacion
  loc_B1DA72: VCallAd Control_ID_NumeLiquMsk
  loc_B1DA75: FStAdFunc var_98
  loc_B1DA78: FLdPr var_98
  loc_B1DA7B: LateIdSt
  loc_B1DA80: FFree1Ad var_98
  loc_B1DA83: FFree1Var var_AC = ""
  loc_B1DA86: LitVar_Missing var_DC
  loc_B1DA89: PopAdLdVar
  loc_B1DA8A: LitVarI4
  loc_B1DA92: PopAdLdVar
  loc_B1DA93: ImpAdLdRf MemVar_C3DAC0
  loc_B1DA96: NewIfNullPr rptVolantedeLiquidacion
  loc_B1DA99: rptVolantedeLiquidacion.Show from_stack_1, from_stack_2
  loc_B1DA9E: LitVar_FALSE
  loc_B1DAA2: PopAdLdVar
  loc_B1DAA3: FLdPr Me
  loc_B1DAA6: VCallAd Control_ID_ProgressBar
  loc_B1DAA9: FStAdFunc var_98
  loc_B1DAAC: FLdPr var_98
  loc_B1DAAF: LateIdSt
  loc_B1DAB4: FFree1Ad var_98
  loc_B1DAB7: FLdPr Me
  loc_B1DABA: MemLdRfVar from_stack_1.global_52
  loc_B1DABD: NewIfNullPr clsimputacion
  loc_B1DAC0: Call clsimputacion.Requery()
  loc_B1DAC5: LitStr vbNullString
  loc_B1DAC8: FLdPr Me
  loc_B1DACB: MemStStrCopy
  loc_B1DACF: LitStr vbNullString
  loc_B1DAD2: FLdPr Me
  loc_B1DAD5: MemStStrCopy
  loc_B1DAD9: Call cmdCancelar_Click()
  loc_B1DADE: Branch loc_B1DC92
  loc_B1DAE1: ILdRf var_90
  loc_B1DAE4: LitStr "btnCancelar"
  loc_B1DAE7: EqStr
  loc_B1DAE9: BranchF loc_B1DAF4
  loc_B1DAEC: Call cmdCancelar_Click()
  loc_B1DAF1: Branch loc_B1DC92
  loc_B1DAF4: ILdRf var_90
  loc_B1DAF7: LitStr "btnPrimero"
  loc_B1DAFA: EqStr
  loc_B1DAFC: BranchF loc_B1DB10
  loc_B1DAFF: FLdPr Me
  loc_B1DB02: MemLdRfVar from_stack_1.global_52
  loc_B1DB05: NewIfNullPr clsimputacion
  loc_B1DB08: Call clsimputacion.MoveFirst()
  loc_B1DB0D: Branch loc_B1DC92
  loc_B1DB10: ILdRf var_90
  loc_B1DB13: LitStr "btnAnterior"
  loc_B1DB16: EqStr
  loc_B1DB18: BranchF loc_B1DB2C
  loc_B1DB1B: FLdPr Me
  loc_B1DB1E: MemLdRfVar from_stack_1.global_52
  loc_B1DB21: NewIfNullPr clsimputacion
  loc_B1DB24: Call clsimputacion.MovePrevious()
  loc_B1DB29: Branch loc_B1DC92
  loc_B1DB2C: ILdRf var_90
  loc_B1DB2F: LitStr "btnSiguiente"
  loc_B1DB32: EqStr
  loc_B1DB34: BranchF loc_B1DB48
  loc_B1DB37: FLdPr Me
  loc_B1DB3A: MemLdRfVar from_stack_1.global_52
  loc_B1DB3D: NewIfNullPr clsimputacion
  loc_B1DB40: Call clsimputacion.MoveNext()
  loc_B1DB45: Branch loc_B1DC92
  loc_B1DB48: ILdRf var_90
  loc_B1DB4B: LitStr "btnUltimo"
  loc_B1DB4E: EqStr
  loc_B1DB50: BranchF loc_B1DB64
  loc_B1DB53: FLdPr Me
  loc_B1DB56: MemLdRfVar from_stack_1.global_52
  loc_B1DB59: NewIfNullPr clsimputacion
  loc_B1DB5C: Call clsimputacion.MoveLast()
  loc_B1DB61: Branch loc_B1DC92
  loc_B1DB64: ILdRf var_90
  loc_B1DB67: LitStr "btnFiltrar"
  loc_B1DB6A: EqStr
  loc_B1DB6C: BranchF loc_B1DB72
  loc_B1DB6F: Branch loc_B1DC92
  loc_B1DB72: ILdRf var_90
  loc_B1DB75: LitStr "btnBuscar"
  loc_B1DB78: EqStr
  loc_B1DB7A: BranchF loc_B1DB80
  loc_B1DB7D: Branch loc_B1DC92
  loc_B1DB80: ILdRf var_90
  loc_B1DB83: LitStr "btnImprimir"
  loc_B1DB86: EqStr
  loc_B1DB88: BranchF loc_B1DC3B
  loc_B1DB8B: ImpAdLdRf MemVar_C3DAC0
  loc_B1DB8E: NewIfNullAd
  loc_B1DB91: CastAd
  loc_B1DB94: FStAdFuncNoPop
  loc_B1DB97: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B1DB9C: FFree1Ad var_98
  loc_B1DB9F: FLdRfVar var_94
  loc_B1DBA2: FLdPr Me
  loc_B1DBA5: MemLdRfVar from_stack_1.global_52
  loc_B1DBA8: NewIfNullPr clsimputacion
  loc_B1DBAB: from_stack_1 = clsimputacion.RecordCount
  loc_B1DBB0: ILdRf var_94
  loc_B1DBB3: LitI4 0
  loc_B1DBB8: GtI4
  loc_B1DBB9: BranchF loc_B1DC20
  loc_B1DBBC: FLdRfVar var_AC
  loc_B1DBBF: FLdRfVar var_C4
  loc_B1DBC2: LitVarStr var_C0, "ExpeImpu"
  loc_B1DBC7: PopAdLdVar
  loc_B1DBC8: FLdRfVar var_B0
  loc_B1DBCB: FLdRfVar var_98
  loc_B1DBCE: FLdPr Me
  loc_B1DBD1: MemLdRfVar from_stack_1.global_52
  loc_B1DBD4: NewIfNullPr clsimputacion
  loc_B1DBD7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B1DBDC: FLdPr var_98
  loc_B1DBDF:  = Me.Fields
  loc_B1DBE4: FLdPr var_B0
  loc_B1DBE7: from_stack_2 = Me.Item(from_stack_1)
  loc_B1DBEC: FLdPr var_C4
  loc_B1DBEF:  = Me.Value
  loc_B1DBF4: FLdRfVar var_AC
  loc_B1DBF7: CStrVarTmp
  loc_B1DBF8: FStStrNoPop var_8C
  loc_B1DBFB: ImpAdLdRf MemVar_C3DAC0
  loc_B1DBFE: NewIfNullPr rptVolantedeLiquidacion
  loc_B1DC01: VCallAd Control_ID_cboExpeImpu
  loc_B1DC04: FStAdFunc var_C8
  loc_B1DC07: FLdPr var_C8
  loc_B1DC0A: rptVolantedeLiquidacion.ComboBox.Text = from_stack_1
  loc_B1DC0F: FFree1Str var_8C
  loc_B1DC12: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B1DC1D: FFree1Var var_AC = ""
  loc_B1DC20: LitVar_Missing var_DC
  loc_B1DC23: PopAdLdVar
  loc_B1DC24: LitVarI4
  loc_B1DC2C: PopAdLdVar
  loc_B1DC2D: ImpAdLdRf MemVar_C3DAC0
  loc_B1DC30: NewIfNullPr rptVolantedeLiquidacion
  loc_B1DC33: rptVolantedeLiquidacion.Show from_stack_1, from_stack_2
  loc_B1DC38: Branch loc_B1DC92
  loc_B1DC3B: ILdRf var_90
  loc_B1DC3E: LitStr "btnAyuda"
  loc_B1DC41: EqStr
  loc_B1DC43: BranchF loc_B1DC72
  loc_B1DC46: LitVar_Missing var_168
  loc_B1DC49: LitVar_Missing var_108
  loc_B1DC4C: LitVar_Missing var_F0
  loc_B1DC4F: LitI4 0
  loc_B1DC54: LitVarStr var_C0, "Opcion no disponible en esta version."
  loc_B1DC59: FStVarCopyObj var_AC
  loc_B1DC5C: FLdRfVar var_AC
  loc_B1DC5F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B1DC64: FFreeVar var_AC = "": var_F0 = "": var_108 = ""
  loc_B1DC6F: Branch loc_B1DC92
  loc_B1DC72: ILdRf var_90
  loc_B1DC75: LitStr "btnSalir"
  loc_B1DC78: EqStr
  loc_B1DC7A: BranchF loc_B1DC92
  loc_B1DC7D: ILdRf Me
  loc_B1DC80: FStAdNoPop
  loc_B1DC84: ImpAdLdRf MemVar_C44F9C
  loc_B1DC87: NewIfNullPr Me
  loc_B1DC8A: Me.Global.Unload from_stack_1
  loc_B1DC8F: FFree1Ad var_98
  loc_B1DC92: ExitProcHresult
End Sub

Private Sub FechLiquMsk_UnknownEvent_0 '9524B8
  'Data Table: 4AE690
  loc_9524A4: FLdPr Me
  loc_9524A7: VCallAd Control_ID_FechLiquMsk
  loc_9524AA: CVarAd
  loc_9524AE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9524B3: FFree1Var var_94 = ""
  loc_9524B6: ExitProcHresult
End Sub

Private Sub FechLiquMsk_UnknownEvent_8 '9E2934
  'Data Table: 4AE690
  loc_9E2834: FLdRfVar var_8A
  loc_9E2837: FLdPr Me
  loc_9E283A: VCallAd Control_ID_cmdCancelar
  loc_9E283D: FStAdFunc var_88
  loc_9E2840: FLdPr var_88
  loc_9E2843:  = Me.Value
  loc_9E2848: FLdI2 var_8A
  loc_9E284B: NotI4
  loc_9E284C: FLdPr Me
  loc_9E284F: VCallAd Control_ID_FechLiquMsk
  loc_9E2852: FStAdFunc var_90
  loc_9E2855: FLdPr var_90
  loc_9E2858: LateIdLdVar var_A0 DispID_13 -32767
  loc_9E285F: CBoolVar
  loc_9E2861: AndI4
  loc_9E2862: FFreeAd var_88 = ""
  loc_9E2869: FFree1Var var_A0 = ""
  loc_9E286C: BranchF loc_9E2932
  loc_9E286F: LitStr vbNullString
  loc_9E2872: FLdPr Me
  loc_9E2875: MemStStrCopy
  loc_9E2879: FLdPr Me
  loc_9E287C: VCallAd Control_ID_FechLiquMsk
  loc_9E287F: FStAdFunc var_88
  loc_9E2882: FLdPr var_88
  loc_9E2885: LateIdLdVar var_A0 DispID_15 0
  loc_9E288C: PopAd
  loc_9E288E: FLdPr Me
  loc_9E2891: VCallAd Control_ID_FechLiquMsk
  loc_9E2894: FStAdFunc var_90
  loc_9E2897: FLdPr var_90
  loc_9E289A: LateIdLdVar var_B0 DispID_11 -32767
  loc_9E28A1: PopAd
  loc_9E28A3: FLdPr Me
  loc_9E28A6: VCallAd Control_ID_FechLiquMsk
  loc_9E28A9: FStAdFunc var_C4
  loc_9E28AC: LitI2_Byte &HFF
  loc_9E28AE: PopTmpLdAd2 var_8A
  loc_9E28B1: FLdZeroAd var_C4
  loc_9E28B4: FStAdFunc var_BC
  loc_9E28B7: FLdRfVar var_BC
  loc_9E28BA: FLdRfVar var_B0
  loc_9E28BD: CStrVarTmp
  loc_9E28BE: FStStrNoPop var_B8
  loc_9E28C1: LitI2_Byte &HFF
  loc_9E28C3: LitI2_Byte &HFF
  loc_9E28C5: FLdRfVar var_A0
  loc_9E28C8: CStrVarTmp
  loc_9E28C9: FStStrNoPop var_B4
  loc_9E28CC: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9E28D1: FStStrNoPop var_C0
  loc_9E28D4: FLdPr Me
  loc_9E28D7: MemStStrCopy
  loc_9E28DB: FFreeStr var_B4 = "": var_B8 = ""
  loc_9E28E4: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9E28EF: FFreeVar var_A0 = ""
  loc_9E28F6: FLdPr Me
  loc_9E28F9: VCallAd Control_ID_FechLiquMsk
  loc_9E28FC: FStAdFunc var_C4
  loc_9E28FF: LitNothing
  loc_9E2901: CastAd
  loc_9E2904: FStAdFunc var_BC
  loc_9E2907: FLdRfVar var_BC
  loc_9E290A: FLdZeroAd var_C4
  loc_9E290D: FStAdFuncNoPop
  loc_9E2910: CastAd
  loc_9E2913: FStAdFunc var_90
  loc_9E2916: FLdRfVar var_90
  loc_9E2919: FLdPr Me
  loc_9E291C: MemLdRfVar from_stack_1.global_64
  loc_9E291F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E2924: IStI2 Button
  loc_9E2927: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9E2932: ExitProcHresult
End Sub

Private Sub FechLiquMsk_KeyPress(KeyAscii As Integer) '98C8EC
  'Data Table: 4AE690
  loc_98C8A4: ILdI2 KeyAscii
  loc_98C8A7: CI4UI1
  loc_98C8A8: LitI4 &H20
  loc_98C8AD: EqI4
  loc_98C8AE: BranchF loc_98C8EB
  loc_98C8B1: LitVar_Missing var_A4
  loc_98C8B4: PopAdLdVar
  loc_98C8B5: LitVarI4
  loc_98C8BD: PopAdLdVar
  loc_98C8BE: ImpAdLdRf MemVar_C3D9A8
  loc_98C8C1: NewIfNullPr frmCalendario
  loc_98C8C4: frmCalendario.Show from_stack_1, from_stack_2
  loc_98C8C9: ImpAdLdRf MemVar_C3D038
  loc_98C8CC: CDargRef
  loc_98C8D0: FLdPr Me
  loc_98C8D3: VCallAd Control_ID_FechLiquMsk
  loc_98C8D6: FStAdFunc var_A8
  loc_98C8D9: FLdPr var_A8
  loc_98C8DC: LateIdSt
  loc_98C8E1: FFree1Ad var_A8
  loc_98C8E4: LitStr vbNullString
  loc_98C8E7: ImpAdStStrCopy MemVar_C3D038
  loc_98C8EB: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8204C
  'Data Table: 4AE690
  loc_A81C94: ImpAdLdI2 MemVar_C3D064
  loc_A81C97: LitI2 2025
  loc_A81C9A: LeI2
  loc_A81C9B: BranchF loc_A81CBB
  loc_A81C9E: LitVarI4
  loc_A81CA6: PopAdLdVar
  loc_A81CA7: FLdPr Me
  loc_A81CAA: VCallAd Control_ID_dgdABMS
  loc_A81CAD: FStAdFunc var_A8
  loc_A81CB0: FLdPr var_A8
  loc_A81CB3: LateIdSt
  loc_A81CB8: FFree1Ad var_A8
  loc_A81CBB: LitI2_Byte 0
  loc_A81CBD: CR8I2
  loc_A81CBE: PopFPR4
  loc_A81CBF: FLdPr Me
  loc_A81CC2: Me.Left = from_stack_1s
  loc_A81CC7: LitI2_Byte 0
  loc_A81CC9: CR8I2
  loc_A81CCA: PopFPR4
  loc_A81CCB: FLdPr Me
  loc_A81CCE: Me.Top = from_stack_1s
  loc_A81CD3: FLdPr Me
  loc_A81CD6: VCallAd Control_ID_DevengadoFlex
  loc_A81CD9: FStAdFunc var_AC
  loc_A81CDC: LitVarI4
  loc_A81CE4: PopAdLdVar
  loc_A81CE5: LitVarI4
  loc_A81CED: PopAdLdVar
  loc_A81CEE: FLdPr var_AC
  loc_A81CF1: LateIdCallSt
  loc_A81CF9: LitVarI4
  loc_A81D01: PopAdLdVar
  loc_A81D02: LitVarI4
  loc_A81D0A: PopAdLdVar
  loc_A81D0B: FLdPr var_AC
  loc_A81D0E: LateIdCallSt
  loc_A81D16: LitVarI4
  loc_A81D1E: PopAdLdVar
  loc_A81D1F: LitVarI4
  loc_A81D27: PopAdLdVar
  loc_A81D28: FLdPr var_AC
  loc_A81D2B: LateIdCallSt
  loc_A81D33: LitVarI4
  loc_A81D3B: PopAdLdVar
  loc_A81D3C: LitVarI4
  loc_A81D44: PopAdLdVar
  loc_A81D45: FLdPr var_AC
  loc_A81D48: LateIdCallSt
  loc_A81D50: LitVarI4
  loc_A81D58: PopAdLdVar
  loc_A81D59: LitVarI4
  loc_A81D61: PopAdLdVar
  loc_A81D62: FLdPr var_AC
  loc_A81D65: LateIdCallSt
  loc_A81D6D: LitVarI4
  loc_A81D75: PopAdLdVar
  loc_A81D76: LitVarI4
  loc_A81D7E: PopAdLdVar
  loc_A81D7F: FLdPr var_AC
  loc_A81D82: LateIdCallSt
  loc_A81D8A: LitVarI4
  loc_A81D92: PopAdLdVar
  loc_A81D93: LitVarI4
  loc_A81D9B: PopAdLdVar
  loc_A81D9C: FLdPr var_AC
  loc_A81D9F: LateIdCallSt
  loc_A81DA7: LitVarI4
  loc_A81DAF: PopAdLdVar
  loc_A81DB0: LitVarI4
  loc_A81DB8: PopAdLdVar
  loc_A81DB9: FLdPr var_AC
  loc_A81DBC: LateIdCallSt
  loc_A81DC4: LitVarI4
  loc_A81DCC: PopAdLdVar
  loc_A81DCD: LitVarI4
  loc_A81DD5: PopAdLdVar
  loc_A81DD6: FLdPr var_AC
  loc_A81DD9: LateIdCallSt
  loc_A81DE1: LitVarI4
  loc_A81DE9: PopAdLdVar
  loc_A81DEA: LitVarI4
  loc_A81DF2: PopAdLdVar
  loc_A81DF3: FLdPr var_AC
  loc_A81DF6: LateIdCallSt
  loc_A81DFE: LitVarI4
  loc_A81E06: PopAdLdVar
  loc_A81E07: LitVarI4
  loc_A81E0F: PopAdLdVar
  loc_A81E10: FLdPr var_AC
  loc_A81E13: LateIdCallSt
  loc_A81E1B: LitVarI4
  loc_A81E23: PopAdLdVar
  loc_A81E24: LitVarI4
  loc_A81E2C: PopAdLdVar
  loc_A81E2D: FLdPr var_AC
  loc_A81E30: LateIdCallSt
  loc_A81E38: LitVarI4
  loc_A81E40: PopAdLdVar
  loc_A81E41: LitVarI4
  loc_A81E49: PopAdLdVar
  loc_A81E4A: FLdPr var_AC
  loc_A81E4D: LateIdCallSt
  loc_A81E55: LitNothing
  loc_A81E57: FStAd var_AC 
  loc_A81E5B: Call Proc_119_28_A2ECB8()
  loc_A81E60: LitStr "SELECT 'Devengado' Tipo, i.PeriInfo, i.ExpeImpu, i.ExorImpu, i.CucuPers, DetaProv, Sum(DeveImpu-LiquImpu) SaldDeve, Max(NumeLiqu) UltLiq"
  loc_A81E63: LitStr " FROM imputacion i"
  loc_A81E66: ConcatStr
  loc_A81E67: FStStrNoPop var_D0
  loc_A81E6A: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = i.CucuPers"
  loc_A81E6D: ConcatStr
  loc_A81E6E: FStStrNoPop var_D4
  loc_A81E71: LitStr " WHERE i.PeriInfo = "
  loc_A81E74: ConcatStr
  loc_A81E75: FStStrNoPop var_D8
  loc_A81E78: ImpAdLdI2 MemVar_C3D064
  loc_A81E7B: CStrUI1
  loc_A81E7D: FStStrNoPop var_DC
  loc_A81E80: ConcatStr
  loc_A81E81: FStStrNoPop var_E0
  loc_A81E84: LitStr " AND (DeveImpu != 0 OR LiquImpu != 0)"
  loc_A81E87: ConcatStr
  loc_A81E88: FStStrNoPop var_E4
  loc_A81E8B: LitStr " GROUP BY ExpeImpu, ExorImpu, CucuPers"
  loc_A81E8E: ConcatStr
  loc_A81E8F: FStStrNoPop var_E8
  loc_A81E92: LitStr " HAVING SaldDeve > 0 "
  loc_A81E95: ConcatStr
  loc_A81E96: FStStrNoPop var_EC
  loc_A81E99: LitStr " UNION ALL"
  loc_A81E9C: ConcatStr
  loc_A81E9D: FStStrNoPop var_F0
  loc_A81EA0: LitStr " SELECT 'Debito' Tipo, d.PeriInfo, d.ExpeImpu, d.ExorImpu, d.CucuPers, DetaProv"
  loc_A81EA3: ConcatStr
  loc_A81EA4: FStStrNoPop var_F4
  loc_A81EA7: LitStr ", ImpoDebi-Sum(IF(ImpoImpu IS NULL,0,ImpoImpu)) saldo, IFNULL(Max(ld.NumeLiqu),0) UltLiq"
  loc_A81EAA: ConcatStr
  loc_A81EAB: FStStrNoPop var_F8
  loc_A81EAE: LitStr " FROM debito d USE INDEX (idxdebi02)"
  loc_A81EB1: ConcatStr
  loc_A81EB2: FStStrNoPop var_FC
  loc_A81EB5: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_A81EB8: ConcatStr
  loc_A81EB9: FStStrNoPop var_100
  loc_A81EBC: LitStr " LEFT JOIN liquidadeta ld USE INDEX (idxlide02) ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi"
  loc_A81EBF: ConcatStr
  loc_A81EC0: FStStrNoPop var_104
  loc_A81EC3: LitStr " AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu) IS NULL"
  loc_A81EC6: ConcatStr
  loc_A81EC7: FStStrNoPop var_108
  loc_A81ECA: LitStr " AND FeanLide IS NULL"
  loc_A81ECD: ConcatStr
  loc_A81ECE: FStStrNoPop var_10C
  loc_A81ED1: LitStr " WHERE d.PeriInfo = "
  loc_A81ED4: ConcatStr
  loc_A81ED5: FStStrNoPop var_110
  loc_A81ED8: ImpAdLdI2 MemVar_C3D064
  loc_A81EDB: CStrUI1
  loc_A81EDD: FStStrNoPop var_114
  loc_A81EE0: ConcatStr
  loc_A81EE1: FStStrNoPop var_118
  loc_A81EE4: LitStr " AND FeanDebi Is Null"
  loc_A81EE7: ConcatStr
  loc_A81EE8: FStStrNoPop var_11C
  loc_A81EEB: LitStr " GROUP BY d.NumeDebi /* ExpeImpu, ExorImpu, CucuPers */"
  loc_A81EEE: ConcatStr
  loc_A81EEF: FStStrNoPop var_120
  loc_A81EF2: LitStr " HAVING saldo > 0"
  loc_A81EF5: ConcatStr
  loc_A81EF6: FStStrNoPop var_124
  loc_A81EF9: LitStr " ORDER BY Tipo, ExpeImpu, ExorImpu, DetaProv;"
  loc_A81EFC: ConcatStr
  loc_A81EFD: FStStrNoPop var_128
  loc_A81F00: FLdPr Me
  loc_A81F03: MemLdRfVar from_stack_1.global_52
  loc_A81F06: NewIfNullPr clsimputacion
  loc_A81F09: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A81F0E: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_A81F3F: LitVarI2 var_94, 0
  loc_A81F44: PopAdLdVar
  loc_A81F45: LitStr "Expediente de Pago"
  loc_A81F48: FLdPr Me
  loc_A81F4B: VCallAd Control_ID_FiltroCbo
  loc_A81F4E: FStAdFunc var_A8
  loc_A81F51: FLdPr var_A8
  loc_A81F54: Me.AddItem from_stack_1, from_stack_2
  loc_A81F59: FFree1Ad var_A8
  loc_A81F5C: LitVarI2 var_94, 1
  loc_A81F61: PopAdLdVar
  loc_A81F62: LitStr "Expediente Original"
  loc_A81F65: FLdPr Me
  loc_A81F68: VCallAd Control_ID_FiltroCbo
  loc_A81F6B: FStAdFunc var_A8
  loc_A81F6E: FLdPr var_A8
  loc_A81F71: Me.AddItem from_stack_1, from_stack_2
  loc_A81F76: FFree1Ad var_A8
  loc_A81F79: LitVarI2 var_94, 2
  loc_A81F7E: PopAdLdVar
  loc_A81F7F: LitStr "Proveedor (Nombre)"
  loc_A81F82: FLdPr Me
  loc_A81F85: VCallAd Control_ID_FiltroCbo
  loc_A81F88: FStAdFunc var_A8
  loc_A81F8B: FLdPr var_A8
  loc_A81F8E: Me.AddItem from_stack_1, from_stack_2
  loc_A81F93: FFree1Ad var_A8
  loc_A81F96: LitVarI2 var_94, 3
  loc_A81F9B: PopAdLdVar
  loc_A81F9C: LitStr "Tipo: Devengado"
  loc_A81F9F: FLdPr Me
  loc_A81FA2: VCallAd Control_ID_FiltroCbo
  loc_A81FA5: FStAdFunc var_A8
  loc_A81FA8: FLdPr var_A8
  loc_A81FAB: Me.AddItem from_stack_1, from_stack_2
  loc_A81FB0: FFree1Ad var_A8
  loc_A81FB3: LitVarI2 var_94, 4
  loc_A81FB8: PopAdLdVar
  loc_A81FB9: LitStr "Tipo: Débito"
  loc_A81FBC: FLdPr Me
  loc_A81FBF: VCallAd Control_ID_FiltroCbo
  loc_A81FC2: FStAdFunc var_A8
  loc_A81FC5: FLdPr var_A8
  loc_A81FC8: Me.AddItem from_stack_1, from_stack_2
  loc_A81FCD: FFree1Ad var_A8
  loc_A81FD0: LitI2_Byte 0
  loc_A81FD2: FLdPr Me
  loc_A81FD5: VCallAd Control_ID_FiltroCbo
  loc_A81FD8: FStAdFunc var_A8
  loc_A81FDB: FLdPr var_A8
  loc_A81FDE: Me.ListIndex = from_stack_1
  loc_A81FE3: FFree1Ad var_A8
  loc_A81FE6: Call cmdCancelar_Click()
  loc_A81FEB: LitI4 0
  loc_A81FF0: LitI4 1
  loc_A81FF5: FLdRfVar var_12C
  loc_A81FF8: Redim
  loc_A82002: FLdPr Me
  loc_A82005: MemLdRfVar from_stack_1.global_52
  loc_A82008: NewIfNullAd
  loc_A8200B: FStAd var_A8 
  loc_A8200F: FLdRfVar var_A8
  loc_A82012: CVarRef
  loc_A82017: ParmAry1St
  loc_A8201D: FLdPr Me
  loc_A82020: VCallAd Control_ID_dgdABMS
  loc_A82023: CVarAd
  loc_A82027: ParmAry1St
  loc_A8202D: FLdRfVar var_12C
  loc_A82030: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A82035: ILdRf var_A8
  loc_A82038: CastAd
  loc_A8203B: FLdPr Me
  loc_A8203E: MemStAdFunc
  loc_A82042: FLdRfVar var_12C
  loc_A82045: Erase
  loc_A82046: FFree1Ad var_A8
  loc_A82049: ExitProcHresult
  loc_A8204A: DOC
End Sub

Private Sub Form_Activate() '9A2E6C
  'Data Table: 4AE690
  loc_9A2DFC: LitStr vbNullString
  loc_9A2DFF: FLdPr Me
  loc_9A2E02: MemStStrCopy
  loc_9A2E06: LitStr vbNullString
  loc_9A2E09: FLdPr Me
  loc_9A2E0C: MemStStrCopy
  loc_9A2E10: FLdRfVar var_C2
  loc_9A2E13: FLdRfVar var_C0
  loc_9A2E16: LitVarI2 var_B8, 1
  loc_9A2E1B: FLdPr Me
  loc_9A2E1E: VCallAd Control_ID_tlbABMS
  loc_9A2E21: FStAdFunc var_88
  loc_9A2E24: FLdPr var_88
  loc_9A2E27: LateIdLdVar var_98 DispID_3 0
  loc_9A2E2E: CastAdVar Me
  loc_9A2E32: FStAdFunc var_BC
  loc_9A2E35: FLdPr var_BC
  loc_9A2E38:  = Me.Buttons.ControlDefault
  loc_9A2E3D: FLdPr var_C0
  loc_9A2E40:  = Me.Enabled
  loc_9A2E45: FLdI2 var_C2
  loc_9A2E48: FFreeAd var_88 = "": var_BC = ""
  loc_9A2E51: FFreeVar var_98 = ""
  loc_9A2E58: BranchF loc_9A2E69
  loc_9A2E5B: FLdPr Me
  loc_9A2E5E: MemLdRfVar from_stack_1.global_52
  loc_9A2E61: NewIfNullPr clsimputacion
  loc_9A2E64: Call clsimputacion.Requery()
  loc_9A2E69: ExitProcHresult
  loc_9A2E6A: ThisVCall 30004
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '93FD24
  'Data Table: 4AE690
  loc_93FD20: ExitProcHresult
  loc_93FD21: ConcatStr
  loc_93FD22: FStStrNoPop arg_18A0
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95D014
  'Data Table: 4AE690
  loc_95CFFC: ILdI2 KeyCode
  loc_95CFFF: ILdRf Me
  loc_95D002: CastAd
  loc_95D005: FStAdFunc var_88
  loc_95D008: FLdRfVar var_88
  loc_95D00B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_95D010: FFree1Ad var_88
  loc_95D013: ExitProcHresult
End Sub

Private Sub chkSeleCBU_Click() 'A133F4
  'Data Table: 4AE690
  loc_A13270: LitI4 0
  loc_A13275: CI2I4
  loc_A13276: FLdPr Me
  loc_A13279: VCallAd Control_ID_chkSeleTodo
  loc_A1327C: FStAdFunc var_88
  loc_A1327F: FLdPr var_88
  loc_A13282: Me.Value = from_stack_1
  loc_A13287: FFree1Ad var_88
  loc_A1328A: FLdRfVar var_8A
  loc_A1328D: FLdPr Me
  loc_A13290: VCallAd Control_ID_chkSeleCBU
  loc_A13293: FStAdFunc var_88
  loc_A13296: FLdPr var_88
  loc_A13299:  = Me.Value
  loc_A1329E: FLdI2 var_8A
  loc_A132A1: CI4UI1
  loc_A132A2: LitI4 0
  loc_A132A7: EqI4
  loc_A132A8: FFree1Ad var_88
  loc_A132AB: BranchF loc_A13351
  loc_A132AE: LitI2_Byte 1
  loc_A132B0: FLdPr Me
  loc_A132B3: MemLdRfVar from_stack_1.global_68
  loc_A132B6: FLdPr Me
  loc_A132B9: VCallAd Control_ID_DevengadoFlex
  loc_A132BC: FStAdFunc var_88
  loc_A132BF: FLdPr var_88
  loc_A132C2: LateIdLdVar var_9C DispID_4 0
  loc_A132C9: CI4Var
  loc_A132CB: LitI4 1
  loc_A132D0: SubI4
  loc_A132D1: CI2I4
  loc_A132D2: FFree1Ad var_88
  loc_A132D5: FFree1Var var_9C = ""
  loc_A132D8: ForI2 var_A0
  loc_A132DE: FLdPr Me
  loc_A132E1: MemLdI2 global_68
  loc_A132E4: CI4UI1
  loc_A132E5: CVarI4
  loc_A132E9: PopAdLdVar
  loc_A132EA: FLdPr Me
  loc_A132ED: VCallAd Control_ID_DevengadoFlex
  loc_A132F0: FStAdFunc var_88
  loc_A132F3: FLdPr var_88
  loc_A132F6: LateIdSt
  loc_A132FB: FFree1Ad var_88
  loc_A132FE: FLdPr Me
  loc_A13301: MemLdI2 global_68
  loc_A13304: CI4UI1
  loc_A13305: CVarI4
  loc_A13309: PopAdLdVar
  loc_A1330A: LitVarI4
  loc_A13312: PopAdLdVar
  loc_A13313: FLdPr Me
  loc_A13316: VCallAd Control_ID_DevengadoFlex
  loc_A13319: FStAdFunc var_88
  loc_A1331C: FLdPr var_88
  loc_A1331F: LateIdCallLdVar
  loc_A13329: CStrVarTmp
  loc_A1332A: FStStrNoPop var_E4
  loc_A1332D: LitStr "Si"
  loc_A13330: EqStr
  loc_A13332: FFree1Str var_E4
  loc_A13335: FFree1Ad var_88
  loc_A13338: FFree1Var var_9C = ""
  loc_A1333B: BranchF loc_A13343
  loc_A1333E: Call Proc_119_31_A38E14()
  loc_A13343: FLdPr Me
  loc_A13346: MemLdRfVar from_stack_1.global_68
  loc_A13349: NextI2 var_A0, loc_A132DE
  loc_A1334E: Branch loc_A133F1
  loc_A13351: LitI2_Byte 1
  loc_A13353: FLdPr Me
  loc_A13356: MemLdRfVar from_stack_1.global_68
  loc_A13359: FLdPr Me
  loc_A1335C: VCallAd Control_ID_DevengadoFlex
  loc_A1335F: FStAdFunc var_88
  loc_A13362: FLdPr var_88
  loc_A13365: LateIdLdVar var_9C DispID_4 0
  loc_A1336C: CI4Var
  loc_A1336E: LitI4 1
  loc_A13373: SubI4
  loc_A13374: CI2I4
  loc_A13375: FFree1Ad var_88
  loc_A13378: FFree1Var var_9C = ""
  loc_A1337B: ForI2 var_E8
  loc_A13381: FLdPr Me
  loc_A13384: MemLdI2 global_68
  loc_A13387: CI4UI1
  loc_A13388: CVarI4
  loc_A1338C: PopAdLdVar
  loc_A1338D: FLdPr Me
  loc_A13390: VCallAd Control_ID_DevengadoFlex
  loc_A13393: FStAdFunc var_88
  loc_A13396: FLdPr var_88
  loc_A13399: LateIdSt
  loc_A1339E: FFree1Ad var_88
  loc_A133A1: FLdPr Me
  loc_A133A4: MemLdI2 global_68
  loc_A133A7: CI4UI1
  loc_A133A8: CVarI4
  loc_A133AC: PopAdLdVar
  loc_A133AD: LitVarI4
  loc_A133B5: PopAdLdVar
  loc_A133B6: FLdPr Me
  loc_A133B9: VCallAd Control_ID_DevengadoFlex
  loc_A133BC: FStAdFunc var_88
  loc_A133BF: FLdPr var_88
  loc_A133C2: LateIdCallLdVar
  loc_A133CC: CStrVarTmp
  loc_A133CD: FStStrNoPop var_E4
  loc_A133D0: LitStr "Si"
  loc_A133D3: EqStr
  loc_A133D5: FFree1Str var_E4
  loc_A133D8: FFree1Ad var_88
  loc_A133DB: FFree1Var var_9C = ""
  loc_A133DE: BranchF loc_A133E6
  loc_A133E1: Call Proc_119_30_B4BDA8()
  loc_A133E6: FLdPr Me
  loc_A133E9: MemLdRfVar from_stack_1.global_68
  loc_A133EC: NextI2 var_E8, loc_A13381
  loc_A133F1: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A1CC7C
  'Data Table: 4AE690
  loc_A1CAD0: LitVarStr var_94, vbNullString
  loc_A1CAD5: PopAdLdVar
  loc_A1CAD6: FLdPr Me
  loc_A1CAD9: VCallAd Control_ID_FiltroMsk
  loc_A1CADC: FStAdFunc var_A8
  loc_A1CADF: FLdPr var_A8
  loc_A1CAE2: LateIdSt
  loc_A1CAE7: FFree1Ad var_A8
  loc_A1CAEA: FLdRfVar var_AA
  loc_A1CAED: FLdPr Me
  loc_A1CAF0: VCallAd Control_ID_FiltroCbo
  loc_A1CAF3: FStAdFunc var_A8
  loc_A1CAF6: FLdPr var_A8
  loc_A1CAF9:  = Me.ListIndex
  loc_A1CAFE: FLdI2 var_AA
  loc_A1CB01: FStI2 var_AC
  loc_A1CB04: FFree1Ad var_A8
  loc_A1CB07: FLdI2 var_AC
  loc_A1CB0A: LitI2_Byte 0
  loc_A1CB0C: EqI2
  loc_A1CB0D: BranchF loc_A1CB47
  loc_A1CB10: LitVarStr var_94, vbNullString
  loc_A1CB15: PopAdLdVar
  loc_A1CB16: FLdPr Me
  loc_A1CB19: VCallAd Control_ID_FiltroMsk
  loc_A1CB1C: FStAdFunc var_A8
  loc_A1CB1F: FLdPr var_A8
  loc_A1CB22: LateIdSt
  loc_A1CB27: FFree1Ad var_A8
  loc_A1CB2A: LitStr "ExpeImpu"
  loc_A1CB2D: FStStrCopy var_B0
  loc_A1CB30: FLdRfVar var_B0
  loc_A1CB33: FLdPr Me
  loc_A1CB36: MemLdRfVar from_stack_1.global_52
  loc_A1CB39: NewIfNullPr clsimputacion
  loc_A1CB3C: Call clsimputacion.Sort(from_stack_1v)
  loc_A1CB41: FFree1Str var_B0
  loc_A1CB44: Branch loc_A1CC78
  loc_A1CB47: FLdI2 var_AC
  loc_A1CB4A: LitI2_Byte 1
  loc_A1CB4C: EqI2
  loc_A1CB4D: BranchF loc_A1CB87
  loc_A1CB50: LitVarStr var_94, vbNullString
  loc_A1CB55: PopAdLdVar
  loc_A1CB56: FLdPr Me
  loc_A1CB59: VCallAd Control_ID_FiltroMsk
  loc_A1CB5C: FStAdFunc var_A8
  loc_A1CB5F: FLdPr var_A8
  loc_A1CB62: LateIdSt
  loc_A1CB67: FFree1Ad var_A8
  loc_A1CB6A: LitStr "ExorImpu"
  loc_A1CB6D: FStStrCopy var_B0
  loc_A1CB70: FLdRfVar var_B0
  loc_A1CB73: FLdPr Me
  loc_A1CB76: MemLdRfVar from_stack_1.global_52
  loc_A1CB79: NewIfNullPr clsimputacion
  loc_A1CB7C: Call clsimputacion.Sort(from_stack_1v)
  loc_A1CB81: FFree1Str var_B0
  loc_A1CB84: Branch loc_A1CC78
  loc_A1CB87: FLdI2 var_AC
  loc_A1CB8A: LitI2_Byte 2
  loc_A1CB8C: EqI2
  loc_A1CB8D: BranchF loc_A1CBC7
  loc_A1CB90: LitVarStr var_94, vbNullString
  loc_A1CB95: PopAdLdVar
  loc_A1CB96: FLdPr Me
  loc_A1CB99: VCallAd Control_ID_FiltroMsk
  loc_A1CB9C: FStAdFunc var_A8
  loc_A1CB9F: FLdPr var_A8
  loc_A1CBA2: LateIdSt
  loc_A1CBA7: FFree1Ad var_A8
  loc_A1CBAA: LitStr "DetaProv"
  loc_A1CBAD: FStStrCopy var_B0
  loc_A1CBB0: FLdRfVar var_B0
  loc_A1CBB3: FLdPr Me
  loc_A1CBB6: MemLdRfVar from_stack_1.global_52
  loc_A1CBB9: NewIfNullPr clsimputacion
  loc_A1CBBC: Call clsimputacion.Sort(from_stack_1v)
  loc_A1CBC1: FFree1Str var_B0
  loc_A1CBC4: Branch loc_A1CC78
  loc_A1CBC7: FLdI2 var_AC
  loc_A1CBCA: LitI2_Byte 3
  loc_A1CBCC: EqI2
  loc_A1CBCD: BranchF loc_A1CC21
  loc_A1CBD0: LitVarStr var_94, vbNullString
  loc_A1CBD5: PopAdLdVar
  loc_A1CBD6: FLdPr Me
  loc_A1CBD9: VCallAd Control_ID_FiltroMsk
  loc_A1CBDC: FStAdFunc var_A8
  loc_A1CBDF: FLdPr var_A8
  loc_A1CBE2: LateIdSt
  loc_A1CBE7: FFree1Ad var_A8
  loc_A1CBEA: LitStr "Tipo"
  loc_A1CBED: FStStrCopy var_B0
  loc_A1CBF0: FLdRfVar var_B0
  loc_A1CBF3: FLdPr Me
  loc_A1CBF6: MemLdRfVar from_stack_1.global_52
  loc_A1CBF9: NewIfNullPr clsimputacion
  loc_A1CBFC: Call clsimputacion.Sort(from_stack_1v)
  loc_A1CC01: FFree1Str var_B0
  loc_A1CC04: LitVarStr var_94, "Devengado"
  loc_A1CC09: PopAdLdVar
  loc_A1CC0A: FLdPr Me
  loc_A1CC0D: VCallAd Control_ID_FiltroMsk
  loc_A1CC10: FStAdFunc var_A8
  loc_A1CC13: FLdPr var_A8
  loc_A1CC16: LateIdSt
  loc_A1CC1B: FFree1Ad var_A8
  loc_A1CC1E: Branch loc_A1CC78
  loc_A1CC21: FLdI2 var_AC
  loc_A1CC24: LitI2_Byte 4
  loc_A1CC26: EqI2
  loc_A1CC27: BranchF loc_A1CC78
  loc_A1CC2A: LitVarStr var_94, vbNullString
  loc_A1CC2F: PopAdLdVar
  loc_A1CC30: FLdPr Me
  loc_A1CC33: VCallAd Control_ID_FiltroMsk
  loc_A1CC36: FStAdFunc var_A8
  loc_A1CC39: FLdPr var_A8
  loc_A1CC3C: LateIdSt
  loc_A1CC41: FFree1Ad var_A8
  loc_A1CC44: LitStr "Tipo"
  loc_A1CC47: FStStrCopy var_B0
  loc_A1CC4A: FLdRfVar var_B0
  loc_A1CC4D: FLdPr Me
  loc_A1CC50: MemLdRfVar from_stack_1.global_52
  loc_A1CC53: NewIfNullPr clsimputacion
  loc_A1CC56: Call clsimputacion.Sort(from_stack_1v)
  loc_A1CC5B: FFree1Str var_B0
  loc_A1CC5E: LitVarStr var_94, "Débito"
  loc_A1CC63: PopAdLdVar
  loc_A1CC64: FLdPr Me
  loc_A1CC67: VCallAd Control_ID_FiltroMsk
  loc_A1CC6A: FStAdFunc var_A8
  loc_A1CC6D: FLdPr var_A8
  loc_A1CC70: LateIdSt
  loc_A1CC75: FFree1Ad var_A8
  loc_A1CC78: ExitProcHresult
End Sub

Private Sub cmdVerRetenciones_Click() 'B1C938
  'Data Table: 4AE690
  loc_B1C1FC: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B1C1FF: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_B1C202: ConcatStr
  loc_B1C203: FStStrNoPop var_88
  loc_B1C206: LitStr " SELECT rxp.PeriInfo, rxp.CodiRete, rxp.CodiDere, rxp.FedeRexp, rxp.FeheRexp, Max(FechEsca) FechEsca, CodiEsca"
  loc_B1C209: ConcatStr
  loc_B1C20A: FStStrNoPop var_8C
  loc_B1C20D: LitStr " FROM retexprov rxp"
  loc_B1C210: ConcatStr
  loc_B1C211: FStStrNoPop var_90
  loc_B1C214: LitStr " INNER JOIN escalas ON escalas.PeriInfo = rxp.PeriInfo AND escalas.CodiRete = rxp.CodiRete AND escalas.CodiDere = rxp.CodiDere"
  loc_B1C217: ConcatStr
  loc_B1C218: FStStrNoPop var_94
  loc_B1C21B: LitStr " WHERE rxp.PeriInfo = "
  loc_B1C21E: ConcatStr
  loc_B1C21F: FStStrNoPop var_98
  loc_B1C222: ImpAdLdI2 MemVar_C3D064
  loc_B1C225: CStrUI1
  loc_B1C227: FStStrNoPop var_9C
  loc_B1C22A: ConcatStr
  loc_B1C22B: FStStrNoPop var_A0
  loc_B1C22E: LitStr " And CucuPers = "
  loc_B1C231: ConcatStr
  loc_B1C232: FStStrNoPop var_10C
  loc_B1C235: FLdPr Me
  loc_B1C238: VCallAd Control_ID_DevengadoFlex
  loc_B1C23B: FStAdFunc var_A4
  loc_B1C23E: FLdPr var_A4
  loc_B1C241: LateIdLdVar var_B4 DispID_10 0
  loc_B1C248: CI4Var
  loc_B1C24A: CVarI4
  loc_B1C24E: PopAdLdVar
  loc_B1C24F: LitVarI4
  loc_B1C257: PopAdLdVar
  loc_B1C258: FLdPr Me
  loc_B1C25B: VCallAd Control_ID_DevengadoFlex
  loc_B1C25E: FStAdFunc var_F8
  loc_B1C261: FLdPr var_F8
  loc_B1C264: LateIdCallLdVar
  loc_B1C26E: CStrVarTmp
  loc_B1C26F: FStStrNoPop var_110
  loc_B1C272: ConcatStr
  loc_B1C273: FStStrNoPop var_114
  loc_B1C276: LitStr " GROUP BY rxp.PeriInfo, rxp.CodiRete, rxp.CodiDere;"
  loc_B1C279: ConcatStr
  loc_B1C27A: FStStrNoPop var_118
  loc_B1C27D: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_B1C282: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_B1C29B: FFreeAd var_A4 = ""
  loc_B1C2A2: FFreeVar var_B4 = ""
  loc_B1C2A9: LitStr "SELECT tmovi.PeriInfo, tmovi.CodiRete, tmovi.CodiDere, tmovi.FedeRexp, tmovi.FeheRexp, DetaRete, DetaDere, AcumDere, AcubDere, escalas.*"
  loc_B1C2AC: LitStr " FROM tmovi"
  loc_B1C2AF: ConcatStr
  loc_B1C2B0: FStStrNoPop var_88
  loc_B1C2B3: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = tmovi.PeriInfo AND retenciones.CodiRete = tmovi.CodiRete"
  loc_B1C2B6: ConcatStr
  loc_B1C2B7: FStStrNoPop var_8C
  loc_B1C2BA: LitStr " INNER JOIN deretenciones ON deretenciones.PeriInfo = tmovi.PeriInfo AND deretenciones.CodiRete = tmovi.CodiRete AND deretenciones.CodiDere = tmovi.CodiDere"
  loc_B1C2BD: ConcatStr
  loc_B1C2BE: FStStrNoPop var_90
  loc_B1C2C1: LitStr " INNER JOIN escalas ON escalas.PeriInfo = tmovi.PeriInfo AND escalas.FechEsca = tmovi.FechEsca AND escalas.CodiRete = tmovi.CodiRete AND escalas.CodiDere = tmovi.CodiDere AND escalas.CodiEsca = tmovi.CodiEsca"
  loc_B1C2C4: ConcatStr
  loc_B1C2C5: FStStrNoPop var_94
  loc_B1C2C8: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_B1C2CD: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_B1C2D8: FLdRfVar var_11C
  loc_B1C2DB: ImpAdLdPr unk_4AE69F
  loc_B1C2DE: MemLdPr global_0
  loc_B1C2E1:  = Me.RecordCount
  loc_B1C2E6: ILdRf var_11C
  loc_B1C2E9: LitI4 0
  loc_B1C2EE: GtI4
  loc_B1C2EF: BranchF loc_B1C927
  loc_B1C2F2: ImpAdLdPr unk_4AE69F
  loc_B1C2F5: MemLdPr global_0
  loc_B1C2F8: Me.MoveFirst
  loc_B1C2FD: FLdRfVar var_11E
  loc_B1C300: ImpAdLdPr unk_4AE69F
  loc_B1C303: MemLdPr global_0
  loc_B1C306:  = Me.EOF
  loc_B1C30B: FLdI2 var_11E
  loc_B1C30E: NotI4
  loc_B1C30F: BranchF loc_B1C81E
  loc_B1C312: FLdRfVar var_108
  loc_B1C315: FLdRfVar var_F8
  loc_B1C318: LitVarStr var_C4, "CodiRete"
  loc_B1C31D: PopAdLdVar
  loc_B1C31E: FLdRfVar var_A4
  loc_B1C321: ImpAdLdPr unk_4AE69F
  loc_B1C324: MemLdPr global_0
  loc_B1C327:  = Me.Fields
  loc_B1C32C: FLdPr var_A4
  loc_B1C32F: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C334: FLdPr var_F8
  loc_B1C337:  = Me.Value
  loc_B1C33C: FLdRfVar var_108
  loc_B1C33F: LitI4 9
  loc_B1C344: FLdRfVar var_B4
  loc_B1C347: ImpAdCallFPR4  = Chr()
  loc_B1C34C: FLdRfVar var_B4
  loc_B1C34F: ConcatVar var_130
  loc_B1C353: FLdRfVar var_148
  loc_B1C356: FLdRfVar var_138
  loc_B1C359: LitVarStr var_D4, "DetaRete"
  loc_B1C35E: PopAdLdVar
  loc_B1C35F: FLdRfVar var_134
  loc_B1C362: ImpAdLdPr unk_4AE69F
  loc_B1C365: MemLdPr global_0
  loc_B1C368:  = Me.Fields
  loc_B1C36D: FLdPr var_134
  loc_B1C370: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C375: FLdPr var_138
  loc_B1C378:  = Me.Value
  loc_B1C37D: FLdRfVar var_148
  loc_B1C380: ConcatVar var_158
  loc_B1C384: LitI4 9
  loc_B1C389: FLdRfVar var_168
  loc_B1C38C: ImpAdCallFPR4  = Chr()
  loc_B1C391: FLdRfVar var_168
  loc_B1C394: ConcatVar var_178
  loc_B1C398: FLdRfVar var_190
  loc_B1C39B: FLdRfVar var_180
  loc_B1C39E: LitVarStr var_E4, "CodiDere"
  loc_B1C3A3: PopAdLdVar
  loc_B1C3A4: FLdRfVar var_17C
  loc_B1C3A7: ImpAdLdPr unk_4AE69F
  loc_B1C3AA: MemLdPr global_0
  loc_B1C3AD:  = Me.Fields
  loc_B1C3B2: FLdPr var_17C
  loc_B1C3B5: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C3BA: FLdPr var_180
  loc_B1C3BD:  = Me.Value
  loc_B1C3C2: FLdRfVar var_190
  loc_B1C3C5: ConcatVar var_1A0
  loc_B1C3C9: LitI4 9
  loc_B1C3CE: FLdRfVar var_1B0
  loc_B1C3D1: ImpAdCallFPR4  = Chr()
  loc_B1C3D6: FLdRfVar var_1B0
  loc_B1C3D9: ConcatVar var_1C0
  loc_B1C3DD: FLdRfVar var_1D8
  loc_B1C3E0: FLdRfVar var_1C8
  loc_B1C3E3: LitVarStr var_F4, "DetaDere"
  loc_B1C3E8: PopAdLdVar
  loc_B1C3E9: FLdRfVar var_1C4
  loc_B1C3EC: ImpAdLdPr unk_4AE69F
  loc_B1C3EF: MemLdPr global_0
  loc_B1C3F2:  = Me.Fields
  loc_B1C3F7: FLdPr var_1C4
  loc_B1C3FA: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C3FF: FLdPr var_1C8
  loc_B1C402:  = Me.Value
  loc_B1C407: FLdRfVar var_1D8
  loc_B1C40A: ConcatVar var_1E8
  loc_B1C40E: LitI4 9
  loc_B1C413: FLdRfVar var_1F8
  loc_B1C416: ImpAdCallFPR4  = Chr()
  loc_B1C41B: FLdRfVar var_1F8
  loc_B1C41E: ConcatVar var_208
  loc_B1C422: FLdRfVar var_230
  loc_B1C425: FLdRfVar var_220
  loc_B1C428: LitVarStr var_21C, "FechEsca"
  loc_B1C42D: PopAdLdVar
  loc_B1C42E: FLdRfVar var_20C
  loc_B1C431: ImpAdLdPr unk_4AE69F
  loc_B1C434: MemLdPr global_0
  loc_B1C437:  = Me.Fields
  loc_B1C43C: FLdPr var_20C
  loc_B1C43F: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C444: FLdPr var_220
  loc_B1C447:  = Me.Value
  loc_B1C44C: FLdRfVar var_230
  loc_B1C44F: ConcatVar var_240
  loc_B1C453: LitI4 9
  loc_B1C458: FLdRfVar var_250
  loc_B1C45B: ImpAdCallFPR4  = Chr()
  loc_B1C460: FLdRfVar var_250
  loc_B1C463: ConcatVar var_260
  loc_B1C467: FLdRfVar var_288
  loc_B1C46A: FLdRfVar var_278
  loc_B1C46D: LitVarStr var_274, "AcumDere"
  loc_B1C472: PopAdLdVar
  loc_B1C473: FLdRfVar var_264
  loc_B1C476: ImpAdLdPr unk_4AE69F
  loc_B1C479: MemLdPr global_0
  loc_B1C47C:  = Me.Fields
  loc_B1C481: FLdPr var_264
  loc_B1C484: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C489: FLdPr var_278
  loc_B1C48C:  = Me.Value
  loc_B1C491: FLdRfVar var_288
  loc_B1C494: ConcatVar var_298
  loc_B1C498: LitI4 9
  loc_B1C49D: FLdRfVar var_2A8
  loc_B1C4A0: ImpAdCallFPR4  = Chr()
  loc_B1C4A5: FLdRfVar var_2A8
  loc_B1C4A8: ConcatVar var_2B8
  loc_B1C4AC: FLdRfVar var_2E0
  loc_B1C4AF: FLdRfVar var_2D0
  loc_B1C4B2: LitVarStr var_2CC, "AcubDere"
  loc_B1C4B7: PopAdLdVar
  loc_B1C4B8: FLdRfVar var_2BC
  loc_B1C4BB: ImpAdLdPr unk_4AE69F
  loc_B1C4BE: MemLdPr global_0
  loc_B1C4C1:  = Me.Fields
  loc_B1C4C6: FLdPr var_2BC
  loc_B1C4C9: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C4CE: FLdPr var_2D0
  loc_B1C4D1:  = Me.Value
  loc_B1C4D6: FLdRfVar var_2E0
  loc_B1C4D9: ConcatVar var_2F0
  loc_B1C4DD: LitI4 9
  loc_B1C4E2: FLdRfVar var_300
  loc_B1C4E5: ImpAdCallFPR4  = Chr()
  loc_B1C4EA: FLdRfVar var_300
  loc_B1C4ED: ConcatVar var_310
  loc_B1C4F1: FLdRfVar var_338
  loc_B1C4F4: FLdRfVar var_328
  loc_B1C4F7: LitVarStr var_324, "BaseEsca"
  loc_B1C4FC: PopAdLdVar
  loc_B1C4FD: FLdRfVar var_314
  loc_B1C500: ImpAdLdPr unk_4AE69F
  loc_B1C503: MemLdPr global_0
  loc_B1C506:  = Me.Fields
  loc_B1C50B: FLdPr var_314
  loc_B1C50E: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C513: FLdPr var_328
  loc_B1C516:  = Me.Value
  loc_B1C51B: FLdRfVar var_338
  loc_B1C51E: ConcatVar var_348
  loc_B1C522: LitI4 9
  loc_B1C527: FLdRfVar var_358
  loc_B1C52A: ImpAdCallFPR4  = Chr()
  loc_B1C52F: FLdRfVar var_358
  loc_B1C532: ConcatVar var_368
  loc_B1C536: FLdRfVar var_390
  loc_B1C539: FLdRfVar var_380
  loc_B1C53C: LitVarStr var_37C, "MiniEsca"
  loc_B1C541: PopAdLdVar
  loc_B1C542: FLdRfVar var_36C
  loc_B1C545: ImpAdLdPr unk_4AE69F
  loc_B1C548: MemLdPr global_0
  loc_B1C54B:  = Me.Fields
  loc_B1C550: FLdPr var_36C
  loc_B1C553: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C558: FLdPr var_380
  loc_B1C55B:  = Me.Value
  loc_B1C560: FLdRfVar var_390
  loc_B1C563: ConcatVar var_3A0
  loc_B1C567: LitI4 9
  loc_B1C56C: FLdRfVar var_3B0
  loc_B1C56F: ImpAdCallFPR4  = Chr()
  loc_B1C574: FLdRfVar var_3B0
  loc_B1C577: ConcatVar var_3C0
  loc_B1C57B: FLdRfVar var_3E8
  loc_B1C57E: FLdRfVar var_3D8
  loc_B1C581: LitVarStr var_3D4, "MaxiEsca"
  loc_B1C586: PopAdLdVar
  loc_B1C587: FLdRfVar var_3C4
  loc_B1C58A: ImpAdLdPr unk_4AE69F
  loc_B1C58D: MemLdPr global_0
  loc_B1C590:  = Me.Fields
  loc_B1C595: FLdPr var_3C4
  loc_B1C598: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C59D: FLdPr var_3D8
  loc_B1C5A0:  = Me.Value
  loc_B1C5A5: FLdRfVar var_3E8
  loc_B1C5A8: ConcatVar var_3F8
  loc_B1C5AC: LitI4 9
  loc_B1C5B1: FLdRfVar var_408
  loc_B1C5B4: ImpAdCallFPR4  = Chr()
  loc_B1C5B9: FLdRfVar var_408
  loc_B1C5BC: ConcatVar var_418
  loc_B1C5C0: FLdRfVar var_440
  loc_B1C5C3: FLdRfVar var_430
  loc_B1C5C6: LitVarStr var_42C, "ImfiEsca"
  loc_B1C5CB: PopAdLdVar
  loc_B1C5CC: FLdRfVar var_41C
  loc_B1C5CF: ImpAdLdPr unk_4AE69F
  loc_B1C5D2: MemLdPr global_0
  loc_B1C5D5:  = Me.Fields
  loc_B1C5DA: FLdPr var_41C
  loc_B1C5DD: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C5E2: FLdPr var_430
  loc_B1C5E5:  = Me.Value
  loc_B1C5EA: FLdRfVar var_440
  loc_B1C5ED: ConcatVar var_450
  loc_B1C5F1: LitI4 9
  loc_B1C5F6: FLdRfVar var_460
  loc_B1C5F9: ImpAdCallFPR4  = Chr()
  loc_B1C5FE: FLdRfVar var_460
  loc_B1C601: ConcatVar var_470
  loc_B1C605: FLdRfVar var_498
  loc_B1C608: FLdRfVar var_488
  loc_B1C60B: LitVarStr var_484, "AlicEsca"
  loc_B1C610: PopAdLdVar
  loc_B1C611: FLdRfVar var_474
  loc_B1C614: ImpAdLdPr unk_4AE69F
  loc_B1C617: MemLdPr global_0
  loc_B1C61A:  = Me.Fields
  loc_B1C61F: FLdPr var_474
  loc_B1C622: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C627: FLdPr var_488
  loc_B1C62A:  = Me.Value
  loc_B1C62F: FLdRfVar var_498
  loc_B1C632: ConcatVar var_4A8
  loc_B1C636: LitI4 9
  loc_B1C63B: FLdRfVar var_4B8
  loc_B1C63E: ImpAdCallFPR4  = Chr()
  loc_B1C643: FLdRfVar var_4B8
  loc_B1C646: ConcatVar var_4C8
  loc_B1C64A: FLdRfVar var_4F0
  loc_B1C64D: FLdRfVar var_4E0
  loc_B1C650: LitVarStr var_4DC, "ImnoEsca"
  loc_B1C655: PopAdLdVar
  loc_B1C656: FLdRfVar var_4CC
  loc_B1C659: ImpAdLdPr unk_4AE69F
  loc_B1C65C: MemLdPr global_0
  loc_B1C65F:  = Me.Fields
  loc_B1C664: FLdPr var_4CC
  loc_B1C667: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C66C: FLdPr var_4E0
  loc_B1C66F:  = Me.Value
  loc_B1C674: FLdRfVar var_4F0
  loc_B1C677: ConcatVar var_500
  loc_B1C67B: LitI4 9
  loc_B1C680: FLdRfVar var_510
  loc_B1C683: ImpAdCallFPR4  = Chr()
  loc_B1C688: FLdRfVar var_510
  loc_B1C68B: ConcatVar var_520
  loc_B1C68F: FLdRfVar var_548
  loc_B1C692: FLdRfVar var_538
  loc_B1C695: LitVarStr var_534, "RemiEsca"
  loc_B1C69A: PopAdLdVar
  loc_B1C69B: FLdRfVar var_524
  loc_B1C69E: ImpAdLdPr unk_4AE69F
  loc_B1C6A1: MemLdPr global_0
  loc_B1C6A4:  = Me.Fields
  loc_B1C6A9: FLdPr var_524
  loc_B1C6AC: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C6B1: FLdPr var_538
  loc_B1C6B4:  = Me.Value
  loc_B1C6B9: FLdRfVar var_548
  loc_B1C6BC: ConcatVar var_558
  loc_B1C6C0: LitVarStr var_568, "	"
  loc_B1C6C5: ConcatVar var_578
  loc_B1C6C9: FLdRfVar var_5A0
  loc_B1C6CC: FLdRfVar var_590
  loc_B1C6CF: LitVarStr var_58C, "FedeRexp"
  loc_B1C6D4: PopAdLdVar
  loc_B1C6D5: FLdRfVar var_57C
  loc_B1C6D8: ImpAdLdPr unk_4AE69F
  loc_B1C6DB: MemLdPr global_0
  loc_B1C6DE:  = Me.Fields
  loc_B1C6E3: FLdPr var_57C
  loc_B1C6E6: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C6EB: FLdPr var_590
  loc_B1C6EE:  = Me.Value
  loc_B1C6F3: FLdRfVar var_5A0
  loc_B1C6F6: ConcatVar var_5B0
  loc_B1C6FA: LitVarStr var_5C0, "	"
  loc_B1C6FF: ConcatVar var_5D0
  loc_B1C703: FLdRfVar var_5F8
  loc_B1C706: FLdRfVar var_5E8
  loc_B1C709: LitVarStr var_5E4, "FeheRexp"
  loc_B1C70E: PopAdLdVar
  loc_B1C70F: FLdRfVar var_5D4
  loc_B1C712: ImpAdLdPr unk_4AE69F
  loc_B1C715: MemLdPr global_0
  loc_B1C718:  = Me.Fields
  loc_B1C71D: FLdPr var_5D4
  loc_B1C720: from_stack_2 = Me.Item(from_stack_1)
  loc_B1C725: FLdPr var_5E8
  loc_B1C728:  = Me.Value
  loc_B1C72D: FLdRfVar var_5F8
  loc_B1C730: ConcatVar var_608
  loc_B1C734: CStrVarTmp
  loc_B1C735: CVarStr var_618
  loc_B1C738: PopAdLdVar
  loc_B1C739: ImpAdLdRf MemVar_C3D908
  loc_B1C73C: NewIfNullPr dlgRetenciones
  loc_B1C73F: VCallAd Control_ID_MSFlexGrid
  loc_B1C742: FStAdFunc var_62C
  loc_B1C745: FLdPr var_62C
  loc_B1C748: LateIdCall
  loc_B1C750: FFreeAd var_5D4 = "": var_5E8 = "": var_62C = "": var_A4 = "": var_F8 = "": var_134 = "": var_138 = "": var_17C = "": var_180 = "": var_1C4 = "": var_1C8 = "": var_20C = "": var_220 = "": var_264 = "": var_278 = "": var_2BC = "": var_2D0 = "": var_314 = "": var_328 = "": var_36C = "": var_380 = "": var_3C4 = "": var_3D8 = "": var_41C = "": var_430 = "": var_474 = "": var_488 = "": var_4CC = "": var_4E0 = "": var_524 = "": var_538 = "": var_57C = ""
  loc_B1C795: FFreeVar var_368 = "": var_390 = "": var_3A0 = "": var_3B0 = "": var_3C0 = "": var_3E8 = "": var_3F8 = "": var_408 = "": var_418 = "": var_440 = "": var_450 = "": var_460 = "": var_470 = "": var_498 = "": var_4A8 = "": var_4B8 = "": var_4C8 = "": var_4F0 = "": var_500 = "": var_510 = "": var_520 = "": var_548 = "": var_558 = "": var_578 = "": var_5A0 = "": var_5B0 = "": var_5D0 = "": var_5F8 = "": var_608 = "": var_618 = "": var_108 = "": var_B4 = "": var_130 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_190 = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_230 = "": var_240 = "": var_250 = "": var_260 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2E0 = "": var_2F0 = "": var_300 = "": var_310 = "": var_338 = "": var_348 = ""
  loc_B1C810: ImpAdLdPr unk_4AE69F
  loc_B1C813: MemLdPr global_0
  loc_B1C816: dlgRetenciones.Recordset15.MoveNext
  loc_B1C81B: Branch loc_B1C2FD
  loc_B1C81E: FLdPr Me
  loc_B1C821: VCallAd Control_ID_DevengadoFlex
  loc_B1C824: FStAdFunc var_A4
  loc_B1C827: FLdPr var_A4
  loc_B1C82A: LateIdLdVar var_B4 DispID_10 0
  loc_B1C831: CI4Var
  loc_B1C833: CVarI4
  loc_B1C837: PopAdLdVar
  loc_B1C838: LitVarI4
  loc_B1C840: PopAdLdVar
  loc_B1C841: FLdPr Me
  loc_B1C844: VCallAd Control_ID_DevengadoFlex
  loc_B1C847: FStAdFunc var_F8
  loc_B1C84A: FLdPr var_F8
  loc_B1C84D: LateIdCallLdVar
  loc_B1C857: PopAd
  loc_B1C859: LitI4 1
  loc_B1C85E: LitI4 1
  loc_B1C863: LitVarStr var_21C, "00-00000000-0"
  loc_B1C868: FStVarCopyObj var_148
  loc_B1C86B: FLdRfVar var_148
  loc_B1C86E: FLdRfVar var_108
  loc_B1C871: CStrVarTmp
  loc_B1C872: CVarStr var_130
  loc_B1C875: ImpAdCallI2 Format$(, )
  loc_B1C87A: FStStrNoPop var_88
  loc_B1C87D: ImpAdLdRf MemVar_C3D908
  loc_B1C880: NewIfNullPr dlgRetenciones
  loc_B1C883: VCallAd Control_ID_LabelCucuPers
  loc_B1C886: FStAdFunc var_134
  loc_B1C889: FLdPr var_134
  loc_B1C88C: dlgRetenciones.Label.Caption = from_stack_1
  loc_B1C891: FFree1Str var_88
  loc_B1C894: FFreeAd var_A4 = "": var_F8 = ""
  loc_B1C89D: FFreeVar var_B4 = "": var_108 = "": var_130 = ""
  loc_B1C8A8: FLdPr Me
  loc_B1C8AB: VCallAd Control_ID_DevengadoFlex
  loc_B1C8AE: FStAdFunc var_A4
  loc_B1C8B1: FLdPr var_A4
  loc_B1C8B4: LateIdLdVar var_B4 DispID_10 0
  loc_B1C8BB: CI4Var
  loc_B1C8BD: CVarI4
  loc_B1C8C1: PopAdLdVar
  loc_B1C8C2: LitVarI4
  loc_B1C8CA: PopAdLdVar
  loc_B1C8CB: FLdPr Me
  loc_B1C8CE: VCallAd Control_ID_DevengadoFlex
  loc_B1C8D1: FStAdFunc var_F8
  loc_B1C8D4: FLdPr var_F8
  loc_B1C8D7: LateIdCallLdVar
  loc_B1C8E1: CStrVarTmp
  loc_B1C8E2: FStStrNoPop var_88
  loc_B1C8E5: ImpAdLdRf MemVar_C3D908
  loc_B1C8E8: NewIfNullPr dlgRetenciones
  loc_B1C8EB: VCallAd Control_ID_LabelDetaProv
  loc_B1C8EE: FStAdFunc var_134
  loc_B1C8F1: FLdPr var_134
  loc_B1C8F4: dlgRetenciones.Label.Caption = from_stack_1
  loc_B1C8F9: FFree1Str var_88
  loc_B1C8FC: FFreeAd var_A4 = "": var_F8 = ""
  loc_B1C905: FFreeVar var_B4 = ""
  loc_B1C90C: LitVar_Missing var_D4
  loc_B1C90F: PopAdLdVar
  loc_B1C910: LitVarI4
  loc_B1C918: PopAdLdVar
  loc_B1C919: ImpAdLdRf MemVar_C3D908
  loc_B1C91C: NewIfNullPr dlgRetenciones
  loc_B1C91F: dlgRetenciones.Show from_stack_1, from_stack_2
  loc_B1C924: Branch loc_B1C934
  loc_B1C927: LitI4 0
  loc_B1C92C: LitStr "El Proveedor no tiene cargada las retenciones. Verifique..."
  loc_B1C92F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1C934: ExitProcHresult
End Sub

Private Sub chkSeleTodo_Click() '9D7A08
  'Data Table: 4AE690
  loc_9D7904: LitI4 0
  loc_9D7909: CI2I4
  loc_9D790A: FLdPr Me
  loc_9D790D: VCallAd Control_ID_chkSeleCBU
  loc_9D7910: FStAdFunc var_88
  loc_9D7913: FLdPr var_88
  loc_9D7916: Me.Value = from_stack_1
  loc_9D791B: FFree1Ad var_88
  loc_9D791E: FLdRfVar var_8A
  loc_9D7921: FLdPr Me
  loc_9D7924: VCallAd Control_ID_chkSeleTodo
  loc_9D7927: FStAdFunc var_88
  loc_9D792A: FLdPr var_88
  loc_9D792D:  = Me.Value
  loc_9D7932: FLdI2 var_8A
  loc_9D7935: CI4UI1
  loc_9D7936: LitI4 0
  loc_9D793B: EqI4
  loc_9D793C: FFree1Ad var_88
  loc_9D793F: BranchF loc_9D79A5
  loc_9D7942: LitI2_Byte 1
  loc_9D7944: FLdPr Me
  loc_9D7947: MemLdRfVar from_stack_1.global_68
  loc_9D794A: FLdPr Me
  loc_9D794D: VCallAd Control_ID_DevengadoFlex
  loc_9D7950: FStAdFunc var_88
  loc_9D7953: FLdPr var_88
  loc_9D7956: LateIdLdVar var_9C DispID_4 0
  loc_9D795D: CI4Var
  loc_9D795F: LitI4 1
  loc_9D7964: SubI4
  loc_9D7965: CI2I4
  loc_9D7966: FFree1Ad var_88
  loc_9D7969: FFree1Var var_9C = ""
  loc_9D796C: ForI2 var_A0
  loc_9D7972: FLdPr Me
  loc_9D7975: MemLdI2 global_68
  loc_9D7978: CI4UI1
  loc_9D7979: CVarI4
  loc_9D797D: PopAdLdVar
  loc_9D797E: FLdPr Me
  loc_9D7981: VCallAd Control_ID_DevengadoFlex
  loc_9D7984: FStAdFunc var_88
  loc_9D7987: FLdPr var_88
  loc_9D798A: LateIdSt
  loc_9D798F: FFree1Ad var_88
  loc_9D7992: Call Proc_119_31_A38E14()
  loc_9D7997: FLdPr Me
  loc_9D799A: MemLdRfVar from_stack_1.global_68
  loc_9D799D: NextI2 var_A0, loc_9D7972
  loc_9D79A2: Branch loc_9D7A05
  loc_9D79A5: LitI2_Byte 1
  loc_9D79A7: FLdPr Me
  loc_9D79AA: MemLdRfVar from_stack_1.global_68
  loc_9D79AD: FLdPr Me
  loc_9D79B0: VCallAd Control_ID_DevengadoFlex
  loc_9D79B3: FStAdFunc var_88
  loc_9D79B6: FLdPr var_88
  loc_9D79B9: LateIdLdVar var_9C DispID_4 0
  loc_9D79C0: CI4Var
  loc_9D79C2: LitI4 1
  loc_9D79C7: SubI4
  loc_9D79C8: CI2I4
  loc_9D79C9: FFree1Ad var_88
  loc_9D79CC: FFree1Var var_9C = ""
  loc_9D79CF: ForI2 var_C4
  loc_9D79D5: FLdPr Me
  loc_9D79D8: MemLdI2 global_68
  loc_9D79DB: CI4UI1
  loc_9D79DC: CVarI4
  loc_9D79E0: PopAdLdVar
  loc_9D79E1: FLdPr Me
  loc_9D79E4: VCallAd Control_ID_DevengadoFlex
  loc_9D79E7: FStAdFunc var_88
  loc_9D79EA: FLdPr var_88
  loc_9D79ED: LateIdSt
  loc_9D79F2: FFree1Ad var_88
  loc_9D79F5: Call Proc_119_30_B4BDA8()
  loc_9D79FA: FLdPr Me
  loc_9D79FD: MemLdRfVar from_stack_1.global_68
  loc_9D7A00: NextI2 var_C4, loc_9D79D5
  loc_9D7A05: ExitProcHresult
End Sub

Private Sub DetaLiquTxt_GotFocus() '94F848
  'Data Table: 4AE690
  loc_94F834: FLdPr Me
  loc_94F837: VCallAd Control_ID_DetaLiquTxt
  loc_94F83A: CVarAd
  loc_94F83E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94F843: FFree1Var var_94 = ""
  loc_94F846: ExitProcHresult
End Sub

Private Sub DetaLiquTxt_Validate(Cancel As Boolean) '9CE298
  'Data Table: 4AE690
  loc_9CE1BC: FLdRfVar var_8A
  loc_9CE1BF: FLdPr Me
  loc_9CE1C2: VCallAd Control_ID_cmdCancelar
  loc_9CE1C5: FStAdFunc var_88
  loc_9CE1C8: FLdPr var_88
  loc_9CE1CB:  = Me.Value
  loc_9CE1D0: FLdI2 var_8A
  loc_9CE1D3: NotI4
  loc_9CE1D4: FLdRfVar var_92
  loc_9CE1D7: FLdPr Me
  loc_9CE1DA: VCallAd Control_ID_DetaLiquTxt
  loc_9CE1DD: FStAdFunc var_90
  loc_9CE1E0: FLdPr var_90
  loc_9CE1E3:  = Me.Enabled
  loc_9CE1E8: FLdI2 var_92
  loc_9CE1EB: AndI4
  loc_9CE1EC: FLdRfVar var_9C
  loc_9CE1EF: FLdPr Me
  loc_9CE1F2: VCallAd Control_ID_txtDetalleAmpliado
  loc_9CE1F5: FStAdFunc var_98
  loc_9CE1F8: FLdPr var_98
  loc_9CE1FB:  = Me.Text
  loc_9CE200: ILdRf var_9C
  loc_9CE203: LitStr vbNullString
  loc_9CE206: EqStr
  loc_9CE208: AndI4
  loc_9CE209: FFree1Str var_9C
  loc_9CE20C: FFreeAd var_88 = "": var_90 = ""
  loc_9CE215: BranchF loc_9CE296
  loc_9CE218: FLdRfVar var_9C
  loc_9CE21B: FLdPr Me
  loc_9CE21E: VCallAd Control_ID_DetaLiquTxt
  loc_9CE221: FStAdFunc var_88
  loc_9CE224: FLdPr var_88
  loc_9CE227:  = Me.Text
  loc_9CE22C: LitI2_Byte 0
  loc_9CE22E: PopTmpLdAd2 var_9E
  loc_9CE231: LitI2_Byte 0
  loc_9CE233: PopTmpLdAd2 var_92
  loc_9CE236: LitI2_Byte 0
  loc_9CE238: PopTmpLdAd2 var_8A
  loc_9CE23B: ILdRf var_9C
  loc_9CE23E: LitStr "Detalle de Liquidación"
  loc_9CE241: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CE246: FStStrNoPop var_A4
  loc_9CE249: FLdPr Me
  loc_9CE24C: MemStStrCopy
  loc_9CE250: FFreeStr var_9C = ""
  loc_9CE257: FFree1Ad var_88
  loc_9CE25A: FLdPr Me
  loc_9CE25D: VCallAd Control_ID_DetaLiquTxt
  loc_9CE260: FStAdFunc var_A8
  loc_9CE263: LitNothing
  loc_9CE265: CastAd
  loc_9CE268: FStAdFunc var_98
  loc_9CE26B: FLdRfVar var_98
  loc_9CE26E: FLdZeroAd var_A8
  loc_9CE271: FStAdFuncNoPop
  loc_9CE274: CastAd
  loc_9CE277: FStAdFunc var_90
  loc_9CE27A: FLdRfVar var_90
  loc_9CE27D: FLdPr Me
  loc_9CE280: MemLdRfVar from_stack_1.global_64
  loc_9CE283: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CE288: IStI2 Cancel
  loc_9CE28B: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CE296: ExitProcHresult
End Sub

Private Sub cmdAgregarDA_Click() 'ADB6B4
  'Data Table: 4AE690
  loc_ADB048: LitStr vbNullString
  loc_ADB04B: FLdPr Me
  loc_ADB04E: VCallAd Control_ID_txtDetalleAmpliado
  loc_ADB051: FStAdFunc var_88
  loc_ADB054: FLdPr var_88
  loc_ADB057: Me.Text = from_stack_1
  loc_ADB05C: FFree1Ad var_88
  loc_ADB05F: FLdPr Me
  loc_ADB062: MemLdRfVar from_stack_1.global_80
  loc_ADB065: NewIfNullPr IDictionary
  loc_ADB068: IDictionary.RemoveAll
  loc_ADB06D: LitI2_Byte 1
  loc_ADB06F: FLdPr Me
  loc_ADB072: MemLdRfVar from_stack_1.global_68
  loc_ADB075: FLdPr Me
  loc_ADB078: VCallAd Control_ID_DevengadoFlex
  loc_ADB07B: FStAdFunc var_88
  loc_ADB07E: FLdPr var_88
  loc_ADB081: LateIdLdVar var_98 DispID_4 0
  loc_ADB088: CI4Var
  loc_ADB08A: LitI4 1
  loc_ADB08F: SubI4
  loc_ADB090: CI2I4
  loc_ADB091: FFree1Ad var_88
  loc_ADB094: FFree1Var var_98 = ""
  loc_ADB097: ForI2 var_9C
  loc_ADB09D: FLdPr Me
  loc_ADB0A0: MemLdI2 global_68
  loc_ADB0A3: CI4UI1
  loc_ADB0A4: CVarI4
  loc_ADB0A8: PopAdLdVar
  loc_ADB0A9: LitVarI4
  loc_ADB0B1: PopAdLdVar
  loc_ADB0B2: FLdPr Me
  loc_ADB0B5: VCallAd Control_ID_DevengadoFlex
  loc_ADB0B8: FStAdFunc var_88
  loc_ADB0BB: FLdPr var_88
  loc_ADB0BE: LateIdCallLdVar
  loc_ADB0C8: CStrVarTmp
  loc_ADB0C9: FStStrNoPop var_E0
  loc_ADB0CC: LitStr "Si"
  loc_ADB0CF: EqStr
  loc_ADB0D1: FFree1Str var_E0
  loc_ADB0D4: FFree1Ad var_88
  loc_ADB0D7: FFree1Var var_98 = ""
  loc_ADB0DA: BranchF loc_ADB1CC
  loc_ADB0DD: FLdPr Me
  loc_ADB0E0: MemLdI2 global_68
  loc_ADB0E3: CI4UI1
  loc_ADB0E4: CVarI4
  loc_ADB0E8: PopAdLdVar
  loc_ADB0E9: LitVarI4
  loc_ADB0F1: PopAdLdVar
  loc_ADB0F2: FLdPr Me
  loc_ADB0F5: VCallAd Control_ID_DevengadoFlex
  loc_ADB0F8: FStAdFunc var_88
  loc_ADB0FB: FLdPr var_88
  loc_ADB0FE: LateIdCallLdVar
  loc_ADB108: CStrVarTmp
  loc_ADB109: FStStrNoPop var_E0
  loc_ADB10C: LitStr "0"
  loc_ADB10F: NeStr
  loc_ADB111: FFree1Str var_E0
  loc_ADB114: FFree1Ad var_88
  loc_ADB117: FFree1Var var_98 = ""
  loc_ADB11A: BranchF loc_ADB1CC
  loc_ADB11D: FLdPr Me
  loc_ADB120: MemLdI2 global_68
  loc_ADB123: CI4UI1
  loc_ADB124: CVarI4
  loc_ADB128: PopAdLdVar
  loc_ADB129: LitVarI4
  loc_ADB131: PopAdLdVar
  loc_ADB132: FLdPr Me
  loc_ADB135: VCallAd Control_ID_DevengadoFlex
  loc_ADB138: FStAdFunc var_88
  loc_ADB13B: FLdPr var_88
  loc_ADB13E: LateIdCallLdVar
  loc_ADB148: PopAd
  loc_ADB14A: FLdRfVar var_F2
  loc_ADB14D: FLdRfVar var_98
  loc_ADB150: CStrVarTmp
  loc_ADB151: CVarStr var_F0
  loc_ADB154: FLdPr Me
  loc_ADB157: MemLdRfVar from_stack_1.global_80
  loc_ADB15A: NewIfNullPr IDictionary
  loc_ADB15D: IDictionary.Exists(from_stack_1v)
  loc_ADB162: FLdI2 var_F2
  loc_ADB165: NotI4
  loc_ADB166: FFree1Ad var_88
  loc_ADB169: FFreeVar var_98 = ""
  loc_ADB170: BranchF loc_ADB1CC
  loc_ADB173: FLdPr Me
  loc_ADB176: MemLdI2 global_68
  loc_ADB179: CI4UI1
  loc_ADB17A: CVarI4
  loc_ADB17E: PopAdLdVar
  loc_ADB17F: LitVarI4
  loc_ADB187: PopAdLdVar
  loc_ADB188: FLdPr Me
  loc_ADB18B: VCallAd Control_ID_DevengadoFlex
  loc_ADB18E: FStAdFunc var_88
  loc_ADB191: FLdPr var_88
  loc_ADB194: LateIdCallLdVar
  loc_ADB19E: PopAd
  loc_ADB1A0: LitVarStr var_104, vbNullString
  loc_ADB1A5: FStVarCopyObj var_114
  loc_ADB1A8: FLdRfVar var_114
  loc_ADB1AB: FLdRfVar var_98
  loc_ADB1AE: CStrVarTmp
  loc_ADB1AF: CVarStr var_F0
  loc_ADB1B2: FLdPr Me
  loc_ADB1B5: MemLdRfVar from_stack_1.global_80
  loc_ADB1B8: NewIfNullPr IDictionary
  loc_ADB1BB: IDictionary.Add(from_stack_1v, from_stack_2v)
  loc_ADB1C0: FFree1Ad var_88
  loc_ADB1C3: FFreeVar var_98 = "": var_F0 = ""
  loc_ADB1CC: FLdPr Me
  loc_ADB1CF: MemLdRfVar from_stack_1.global_68
  loc_ADB1D2: NextI2 var_9C, loc_ADB09D
  loc_ADB1D7: FLdRfVar var_118
  loc_ADB1DA: FLdPr Me
  loc_ADB1DD: MemLdRfVar from_stack_1.global_80
  loc_ADB1E0: NewIfNullPr IDictionary
  loc_ADB1E3:  = IDictionary.Count
  loc_ADB1E8: ILdRf var_118
  loc_ADB1EB: LitI4 0
  loc_ADB1F0: GtI4
  loc_ADB1F1: BranchF loc_ADB6B0
  loc_ADB1F4: LitI2_Byte 0
  loc_ADB1F6: FLdPr Me
  loc_ADB1F9: MemLdRfVar from_stack_1.global_68
  loc_ADB1FC: FLdRfVar var_118
  loc_ADB1FF: FLdPr Me
  loc_ADB202: MemLdRfVar from_stack_1.global_80
  loc_ADB205: NewIfNullPr IDictionary
  loc_ADB208:  = IDictionary.Count
  loc_ADB20D: ILdRf var_118
  loc_ADB210: LitI4 1
  loc_ADB215: SubI4
  loc_ADB216: CI2I4
  loc_ADB217: ForI2 var_11C
  loc_ADB21D: LitStr "Municipalidad de Guaymallén"
  loc_ADB220: LitStr "Municipalidad de Maipú"
  loc_ADB223: EqStr
  loc_ADB225: LitVarI4
  loc_ADB22D: PopAdLdVar
  loc_ADB22E: LitVarI4
  loc_ADB236: PopAdLdVar
  loc_ADB237: FLdPr Me
  loc_ADB23A: VCallAd Control_ID_DevengadoFlex
  loc_ADB23D: FStAdFunc var_88
  loc_ADB240: FLdPr var_88
  loc_ADB243: LateIdCallLdVar
  loc_ADB24D: CStrVarTmp
  loc_ADB24E: FStStrNoPop var_E0
  loc_ADB251: LitStr "62120400"
  loc_ADB254: EqStr
  loc_ADB256: AndI4
  loc_ADB257: FFree1Str var_E0
  loc_ADB25A: FFree1Ad var_88
  loc_ADB25D: FFree1Var var_98 = ""
  loc_ADB260: BranchF loc_ADB2CF
  loc_ADB263: LitStr "SELECT * FROM ordencompra WHERE PeriInfo = "
  loc_ADB266: ImpAdLdI2 MemVar_C3D064
  loc_ADB269: LitI2_Byte 1
  loc_ADB26B: SubI2
  loc_ADB26C: CStrUI1
  loc_ADB26E: FStStrNoPop var_E0
  loc_ADB271: ConcatStr
  loc_ADB272: FStStrNoPop var_120
  loc_ADB275: LitStr " AND CodiOrco = '"
  loc_ADB278: ConcatStr
  loc_ADB279: CVarStr var_F0
  loc_ADB27C: FLdPr Me
  loc_ADB27F: MemLdRfVar from_stack_1.global_68
  loc_ADB282: CDargRef
  loc_ADB286: FLdRfVar var_98
  loc_ADB289: FLdPr Me
  loc_ADB28C: MemLdRfVar from_stack_1.global_80
  loc_ADB28F: NewIfNullPr IDictionary
  loc_ADB292: IDictionary.Keys
  loc_ADB297: FLdRfVar var_98
  loc_ADB29A: VarIndexLdVar
  loc_ADB2A0: ConcatVar var_130
  loc_ADB2A4: LitVarStr var_BC, "'"
  loc_ADB2A9: ConcatVar var_140
  loc_ADB2AD: CStrVarVal var_144
  loc_ADB2B1: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_ADB2B6: FFreeStr var_E0 = "": var_120 = ""
  loc_ADB2BF: FFreeVar var_98 = "": var_F0 = "": var_114 = "": var_130 = ""
  loc_ADB2CC: Branch loc_ADB335
  loc_ADB2CF: LitStr "SELECT * FROM ordencompra WHERE PeriInfo = "
  loc_ADB2D2: ImpAdLdI2 MemVar_C3D064
  loc_ADB2D5: CStrUI1
  loc_ADB2D7: FStStrNoPop var_E0
  loc_ADB2DA: ConcatStr
  loc_ADB2DB: FStStrNoPop var_120
  loc_ADB2DE: LitStr " AND CodiOrco = '"
  loc_ADB2E1: ConcatStr
  loc_ADB2E2: CVarStr var_F0
  loc_ADB2E5: FLdPr Me
  loc_ADB2E8: MemLdRfVar from_stack_1.global_68
  loc_ADB2EB: CDargRef
  loc_ADB2EF: FLdRfVar var_98
  loc_ADB2F2: FLdPr Me
  loc_ADB2F5: MemLdRfVar from_stack_1.global_80
  loc_ADB2F8: NewIfNullPr IDictionary
  loc_ADB2FB: IDictionary.Keys
  loc_ADB300: FLdRfVar var_98
  loc_ADB303: VarIndexLdVar
  loc_ADB309: ConcatVar var_130
  loc_ADB30D: LitVarStr var_BC, "'"
  loc_ADB312: ConcatVar var_140
  loc_ADB316: CStrVarVal var_144
  loc_ADB31A: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_ADB31F: FFreeStr var_E0 = "": var_120 = ""
  loc_ADB328: FFreeVar var_98 = "": var_F0 = "": var_114 = "": var_130 = ""
  loc_ADB335: FLdRfVar var_118
  loc_ADB338: ImpAdLdPr unk_4AE69F
  loc_ADB33B: MemLdPr global_0
  loc_ADB33E:  = Me.RecordCount
  loc_ADB343: ILdRf var_118
  loc_ADB346: LitI4 0
  loc_ADB34B: GtI4
  loc_ADB34C: BranchF loc_ADB4E0
  loc_ADB34F: LitVarI4
  loc_ADB357: PopAdLdVar
  loc_ADB358: LitVarI4
  loc_ADB360: PopAdLdVar
  loc_ADB361: FLdPr Me
  loc_ADB364: VCallAd Control_ID_DevengadoFlex
  loc_ADB367: FStAdFunc var_88
  loc_ADB36A: FLdPr var_88
  loc_ADB36D: LateIdCallLdVar
  loc_ADB377: CStrVarTmp
  loc_ADB378: CVarStr var_114
  loc_ADB37B: HardType
  loc_ADB37C: FLdRfVar var_F0
  loc_ADB37F: FLdRfVar var_14C
  loc_ADB382: LitVarStr var_104, "CucuPers"
  loc_ADB387: PopAdLdVar
  loc_ADB388: FLdRfVar var_148
  loc_ADB38B: ImpAdLdPr unk_4AE69F
  loc_ADB38E: MemLdPr global_0
  loc_ADB391:  = Me.Fields
  loc_ADB396: FLdPr var_148
  loc_ADB399: from_stack_2 = Me.Item(from_stack_1)
  loc_ADB39E: FLdPr var_14C
  loc_ADB3A1:  = Me.Value
  loc_ADB3A6: FLdRfVar var_F0
  loc_ADB3A9: EqVarBool
  loc_ADB3AB: FFreeAd var_88 = "": var_148 = ""
  loc_ADB3B4: FFreeVar var_98 = "": var_114 = ""
  loc_ADB3BD: BranchF loc_ADB4C6
  loc_ADB3C0: FLdRfVar var_E0
  loc_ADB3C3: FLdPr Me
  loc_ADB3C6: VCallAd Control_ID_txtDetalleAmpliado
  loc_ADB3C9: FStAdFunc var_88
  loc_ADB3CC: FLdPr var_88
  loc_ADB3CF:  = Me.Text
  loc_ADB3D4: FLdRfVar var_120
  loc_ADB3D7: FLdPr Me
  loc_ADB3DA: VCallAd Control_ID_txtDetalleAmpliado
  loc_ADB3DD: FStAdFunc var_148
  loc_ADB3E0: FLdPr var_148
  loc_ADB3E3:  = Me.Text
  loc_ADB3E8: LitVarStr var_BC, " "
  loc_ADB3ED: FStVarCopyObj var_F0
  loc_ADB3F0: FLdRfVar var_F0
  loc_ADB3F3: ILdRf var_120
  loc_ADB3F6: LitStr vbCrLf
  loc_ADB3F9: ConcatStr
  loc_ADB3FA: CVarStr var_98
  loc_ADB3FD: ILdRf var_E0
  loc_ADB400: LitStr vbNullString
  loc_ADB403: NeStr
  loc_ADB405: CVarBoolI2 var_AC
  loc_ADB409: FLdRfVar var_114
  loc_ADB40C: ImpAdCallFPR4  = IIf(, , )
  loc_ADB411: FLdRfVar var_114
  loc_ADB414: LitVarStr var_CC, "O.C.: "
  loc_ADB419: ConcatVar var_130
  loc_ADB41D: FLdPr Me
  loc_ADB420: MemLdRfVar from_stack_1.global_68
  loc_ADB423: CDargRef
  loc_ADB427: FLdRfVar var_140
  loc_ADB42A: FLdPr Me
  loc_ADB42D: MemLdRfVar from_stack_1.global_80
  loc_ADB430: NewIfNullPr IDictionary
  loc_ADB433: IDictionary.Keys
  loc_ADB438: FLdRfVar var_140
  loc_ADB43B: VarIndexLdVar
  loc_ADB441: ConcatVar var_16C
  loc_ADB445: LitVarStr var_104, ", "
  loc_ADB44A: ConcatVar var_17C
  loc_ADB44E: FLdRfVar var_1A0
  loc_ADB451: FLdRfVar var_190
  loc_ADB454: LitVarStr var_18C, "DetaOrco"
  loc_ADB459: PopAdLdVar
  loc_ADB45A: FLdRfVar var_14C
  loc_ADB45D: ImpAdLdPr unk_4AE69F
  loc_ADB460: MemLdPr global_0
  loc_ADB463:  = Me.Fields
  loc_ADB468: FLdPr var_14C
  loc_ADB46B: from_stack_2 = Me.Item(from_stack_1)
  loc_ADB470: FLdPr var_190
  loc_ADB473:  = Me.Value
  loc_ADB478: FLdRfVar var_1A0
  loc_ADB47B: ConcatVar var_1B0
  loc_ADB47F: CStrVarVal var_144
  loc_ADB483: FLdPr Me
  loc_ADB486: VCallAd Control_ID_txtDetalleAmpliado
  loc_ADB489: FStAdFunc var_1B4
  loc_ADB48C: FLdPr var_1B4
  loc_ADB48F: Me.Text = from_stack_1
  loc_ADB494: FFreeStr var_E0 = "": var_120 = ""
  loc_ADB49D: FFreeAd var_88 = "": var_148 = "": var_14C = "": var_190 = ""
  loc_ADB4AA: FFreeVar var_AC = "": var_98 = "": var_F0 = "": var_114 = "": var_140 = "": var_130 = "": var_15C = "": var_16C = "": var_17C = "": var_1A0 = ""
  loc_ADB4C3: Branch loc_ADB4DD
  loc_ADB4C6: LitStr "..."
  loc_ADB4C9: FLdPr Me
  loc_ADB4CC: VCallAd Control_ID_txtDetalleAmpliado
  loc_ADB4CF: FStAdFunc var_88
  loc_ADB4D2: FLdPr var_88
  loc_ADB4D5: Me.Text = from_stack_1
  loc_ADB4DA: FFree1Ad var_88
  loc_ADB4DD: Branch loc_ADB6A5
  loc_ADB4E0: LitStr "SELECT * FROM ordencompra WHERE PeriInfo = "
  loc_ADB4E3: ImpAdLdI2 MemVar_C3D064
  loc_ADB4E6: LitI2_Byte 1
  loc_ADB4E8: SubI2
  loc_ADB4E9: CStrUI1
  loc_ADB4EB: FStStrNoPop var_E0
  loc_ADB4EE: ConcatStr
  loc_ADB4EF: FStStrNoPop var_120
  loc_ADB4F2: LitStr " AND CodiOrco = '"
  loc_ADB4F5: ConcatStr
  loc_ADB4F6: CVarStr var_F0
  loc_ADB4F9: FLdPr Me
  loc_ADB4FC: MemLdRfVar from_stack_1.global_68
  loc_ADB4FF: CDargRef
  loc_ADB503: FLdRfVar var_98
  loc_ADB506: FLdPr Me
  loc_ADB509: MemLdRfVar from_stack_1.global_80
  loc_ADB50C: NewIfNullPr IDictionary
  loc_ADB50F: IDictionary.Keys
  loc_ADB514: FLdRfVar var_98
  loc_ADB517: VarIndexLdVar
  loc_ADB51D: ConcatVar var_130
  loc_ADB521: LitVarStr var_BC, "'"
  loc_ADB526: ConcatVar var_140
  loc_ADB52A: CStrVarVal var_144
  loc_ADB52E: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_ADB533: FFreeStr var_E0 = "": var_120 = ""
  loc_ADB53C: FFreeVar var_98 = "": var_F0 = "": var_114 = "": var_130 = ""
  loc_ADB549: FLdRfVar var_118
  loc_ADB54C: ImpAdLdPr unk_4AE69F
  loc_ADB54F: MemLdPr global_0
  loc_ADB552:  = Me.RecordCount
  loc_ADB557: ILdRf var_118
  loc_ADB55A: LitI4 0
  loc_ADB55F: GtI4
  loc_ADB560: BranchF loc_ADB68E
  loc_ADB563: FLdRfVar var_E0
  loc_ADB566: FLdPr Me
  loc_ADB569: VCallAd Control_ID_txtDetalleAmpliado
  loc_ADB56C: FStAdFunc var_88
  loc_ADB56F: FLdPr var_88
  loc_ADB572:  = Me.Text
  loc_ADB577: FLdRfVar var_120
  loc_ADB57A: FLdPr Me
  loc_ADB57D: VCallAd Control_ID_txtDetalleAmpliado
  loc_ADB580: FStAdFunc var_148
  loc_ADB583: FLdPr var_148
  loc_ADB586:  = Me.Text
  loc_ADB58B: LitVarStr var_BC, " "
  loc_ADB590: FStVarCopyObj var_F0
  loc_ADB593: FLdRfVar var_F0
  loc_ADB596: ILdRf var_120
  loc_ADB599: LitStr vbCrLf
  loc_ADB59C: ConcatStr
  loc_ADB59D: CVarStr var_98
  loc_ADB5A0: ILdRf var_E0
  loc_ADB5A3: LitStr vbNullString
  loc_ADB5A6: NeStr
  loc_ADB5A8: CVarBoolI2 var_AC
  loc_ADB5AC: FLdRfVar var_114
  loc_ADB5AF: ImpAdCallFPR4  = IIf(, , )
  loc_ADB5B4: FLdRfVar var_114
  loc_ADB5B7: LitVarStr var_CC, "O.C.: "
  loc_ADB5BC: ConcatVar var_130
  loc_ADB5C0: FLdPr Me
  loc_ADB5C3: MemLdRfVar from_stack_1.global_68
  loc_ADB5C6: CDargRef
  loc_ADB5CA: FLdRfVar var_140
  loc_ADB5CD: FLdPr Me
  loc_ADB5D0: MemLdRfVar from_stack_1.global_80
  loc_ADB5D3: NewIfNullPr IDictionary
  loc_ADB5D6: IDictionary.Keys
  loc_ADB5DB: FLdRfVar var_140
  loc_ADB5DE: VarIndexLdVar
  loc_ADB5E4: ConcatVar var_16C
  loc_ADB5E8: LitVarStr var_104, "/"
  loc_ADB5ED: ConcatVar var_17C
  loc_ADB5F1: ImpAdLdI2 MemVar_C3D064
  loc_ADB5F4: LitI2_Byte 1
  loc_ADB5F6: SubI2
  loc_ADB5F7: CVarI2 var_18C
  loc_ADB5FA: ConcatVar var_1A0
  loc_ADB5FE: LitVarStr var_1C4, vbNullString
  loc_ADB603: ConcatVar var_1B0
  loc_ADB607: LitVarStr var_1D4, ", "
  loc_ADB60C: ConcatVar var_1E4
  loc_ADB610: FLdRfVar var_204
  loc_ADB613: FLdRfVar var_190
  loc_ADB616: LitVarStr var_1F4, "DetaOrco"
  loc_ADB61B: PopAdLdVar
  loc_ADB61C: FLdRfVar var_14C
  loc_ADB61F: ImpAdLdPr unk_4AE69F
  loc_ADB622: MemLdPr global_0
  loc_ADB625:  = Me.Fields
  loc_ADB62A: FLdPr var_14C
  loc_ADB62D: from_stack_2 = Me.Item(from_stack_1)
  loc_ADB632: FLdPr var_190
  loc_ADB635:  = Me.Value
  loc_ADB63A: FLdRfVar var_204
  loc_ADB63D: ConcatVar var_214
  loc_ADB641: CStrVarVal var_144
  loc_ADB645: FLdPr Me
  loc_ADB648: VCallAd Control_ID_txtDetalleAmpliado
  loc_ADB64B: FStAdFunc var_1B4
  loc_ADB64E: FLdPr var_1B4
  loc_ADB651: Me.Text = from_stack_1
  loc_ADB656: FFreeStr var_E0 = "": var_120 = ""
  loc_ADB65F: FFreeAd var_88 = "": var_148 = "": var_14C = "": var_190 = ""
  loc_ADB66C: FFreeVar var_AC = "": var_98 = "": var_F0 = "": var_114 = "": var_140 = "": var_130 = "": var_15C = "": var_16C = "": var_17C = "": var_1A0 = "": var_1B0 = "": var_1E4 = "": var_204 = ""
  loc_ADB68B: Branch loc_ADB6A5
  loc_ADB68E: LitStr "..."
  loc_ADB691: FLdPr Me
  loc_ADB694: VCallAd Control_ID_txtDetalleAmpliado
  loc_ADB697: FStAdFunc var_88
  loc_ADB69A: FLdPr var_88
  loc_ADB69D: Me.Text = from_stack_1
  loc_ADB6A2: FFree1Ad var_88
  loc_ADB6A5: FLdPr Me
  loc_ADB6A8: MemLdRfVar from_stack_1.global_68
  loc_ADB6AB: NextI2 var_11C, loc_ADB21D
  loc_ADB6B0: ExitProcHresult
  loc_ADB6B1: BranchTVar
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '952470
  'Data Table: 4AE690
  loc_95245C: FLdPr Me
  loc_95245F: VCallAd Control_ID_FiltroMsk
  loc_952462: CVarAd
  loc_952466: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95246B: FFree1Var var_94 = ""
  loc_95246E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A79870
  'Data Table: 4AE690
  loc_A794A0: ILdRf Me
  loc_A794A3: CastAd
  loc_A794A6: FStAdFunc var_88
  loc_A794A9: FLdRfVar var_88
  loc_A794AC: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A794B1: FFree1Ad var_88
  loc_A794B4: FLdPr Me
  loc_A794B7: VCallAd Control_ID_FiltroMsk
  loc_A794BA: FStAdFunc var_88
  loc_A794BD: FLdPr var_88
  loc_A794C0: LateIdLdVar var_98 DispID_22 0
  loc_A794C7: CStrVarTmp
  loc_A794C8: FStStrNoPop var_9C
  loc_A794CB: ImpAdCallI2 Trim$()
  loc_A794D0: FStStrNoPop var_A0
  loc_A794D3: LitStr vbNullString
  loc_A794D6: NeStr
  loc_A794D8: FFreeStr var_9C = ""
  loc_A794DF: FFree1Ad var_88
  loc_A794E2: FFree1Var var_98 = ""
  loc_A794E5: BranchF loc_A7973E
  loc_A794E8: FLdRfVar var_A2
  loc_A794EB: FLdPr Me
  loc_A794EE: VCallAd Control_ID_FiltroCbo
  loc_A794F1: FStAdFunc var_88
  loc_A794F4: FLdPr var_88
  loc_A794F7:  = Me.ListIndex
  loc_A794FC: FLdI2 var_A2
  loc_A794FF: LitI2_Byte 0
  loc_A79501: EqI2
  loc_A79502: FFree1Ad var_88
  loc_A79505: BranchF loc_A79580
  loc_A79508: LitStr "ExpeImpu LIKE '"
  loc_A7950B: FLdPr Me
  loc_A7950E: VCallAd Control_ID_FiltroMsk
  loc_A79511: FStAdFunc var_88
  loc_A79514: FLdPr var_88
  loc_A79517: LateIdLdVar var_98 DispID_22 0
  loc_A7951E: CStrVarTmp
  loc_A7951F: FStStrNoPop var_9C
  loc_A79522: ConcatStr
  loc_A79523: FStStrNoPop var_A0
  loc_A79526: LitStr Chr(37) & "'"
  loc_A79529: ConcatStr
  loc_A7952A: PopTmpLdAdStr
  loc_A7952E: FLdPr Me
  loc_A79531: MemLdRfVar from_stack_1.global_52
  loc_A79534: NewIfNullPr clsimputacion
  loc_A79537: Call clsimputacion.Filter(from_stack_1v)
  loc_A7953C: FFreeStr var_9C = "": var_A0 = ""
  loc_A79545: FFree1Ad var_88
  loc_A79548: FFree1Var var_98 = ""
  loc_A7954B: LitStr "Expediente de pago que comience con "
  loc_A7954E: FLdPr Me
  loc_A79551: VCallAd Control_ID_FiltroMsk
  loc_A79554: FStAdFunc var_88
  loc_A79557: FLdPr var_88
  loc_A7955A: LateIdLdVar var_98 DispID_22 0
  loc_A79561: CStrVarTmp
  loc_A79562: FStStrNoPop var_9C
  loc_A79565: ConcatStr
  loc_A79566: FStStrNoPop var_A0
  loc_A79569: FLdPr Me
  loc_A7956C: MemStStrCopy
  loc_A79570: FFreeStr var_9C = ""
  loc_A79577: FFree1Ad var_88
  loc_A7957A: FFree1Var var_98 = ""
  loc_A7957D: Branch loc_A7973B
  loc_A79580: FLdRfVar var_A2
  loc_A79583: FLdPr Me
  loc_A79586: VCallAd Control_ID_FiltroCbo
  loc_A79589: FStAdFunc var_88
  loc_A7958C: FLdPr var_88
  loc_A7958F:  = Me.ListIndex
  loc_A79594: FLdI2 var_A2
  loc_A79597: LitI2_Byte 1
  loc_A79599: EqI2
  loc_A7959A: FFree1Ad var_88
  loc_A7959D: BranchF loc_A79618
  loc_A795A0: LitStr "ExorImpu LIKE '"
  loc_A795A3: FLdPr Me
  loc_A795A6: VCallAd Control_ID_FiltroMsk
  loc_A795A9: FStAdFunc var_88
  loc_A795AC: FLdPr var_88
  loc_A795AF: LateIdLdVar var_98 DispID_22 0
  loc_A795B6: CStrVarTmp
  loc_A795B7: FStStrNoPop var_9C
  loc_A795BA: ConcatStr
  loc_A795BB: FStStrNoPop var_A0
  loc_A795BE: LitStr Chr(37) & "'"
  loc_A795C1: ConcatStr
  loc_A795C2: PopTmpLdAdStr
  loc_A795C6: FLdPr Me
  loc_A795C9: MemLdRfVar from_stack_1.global_52
  loc_A795CC: NewIfNullPr clsimputacion
  loc_A795CF: Call clsimputacion.Filter(from_stack_1v)
  loc_A795D4: FFreeStr var_9C = "": var_A0 = ""
  loc_A795DD: FFree1Ad var_88
  loc_A795E0: FFree1Var var_98 = ""
  loc_A795E3: LitStr "Expediente Original que comience con "
  loc_A795E6: FLdPr Me
  loc_A795E9: VCallAd Control_ID_FiltroMsk
  loc_A795EC: FStAdFunc var_88
  loc_A795EF: FLdPr var_88
  loc_A795F2: LateIdLdVar var_98 DispID_22 0
  loc_A795F9: CStrVarTmp
  loc_A795FA: FStStrNoPop var_9C
  loc_A795FD: ConcatStr
  loc_A795FE: FStStrNoPop var_A0
  loc_A79601: FLdPr Me
  loc_A79604: MemStStrCopy
  loc_A79608: FFreeStr var_9C = ""
  loc_A7960F: FFree1Ad var_88
  loc_A79612: FFree1Var var_98 = ""
  loc_A79615: Branch loc_A7973B
  loc_A79618: FLdRfVar var_A2
  loc_A7961B: FLdPr Me
  loc_A7961E: VCallAd Control_ID_FiltroCbo
  loc_A79621: FStAdFunc var_88
  loc_A79624: FLdPr var_88
  loc_A79627:  = Me.ListIndex
  loc_A7962C: FLdI2 var_A2
  loc_A7962F: LitI2_Byte 2
  loc_A79631: EqI2
  loc_A79632: FFree1Ad var_88
  loc_A79635: BranchF loc_A796B0
  loc_A79638: LitStr "DetaProv LIKE '" & Chr(37)
  loc_A7963B: FLdPr Me
  loc_A7963E: VCallAd Control_ID_FiltroMsk
  loc_A79641: FStAdFunc var_88
  loc_A79644: FLdPr var_88
  loc_A79647: LateIdLdVar var_98 DispID_22 0
  loc_A7964E: CStrVarTmp
  loc_A7964F: FStStrNoPop var_9C
  loc_A79652: ConcatStr
  loc_A79653: FStStrNoPop var_A0
  loc_A79656: LitStr Chr(37) & "'"
  loc_A79659: ConcatStr
  loc_A7965A: PopTmpLdAdStr
  loc_A7965E: FLdPr Me
  loc_A79661: MemLdRfVar from_stack_1.global_52
  loc_A79664: NewIfNullPr clsimputacion
  loc_A79667: Call clsimputacion.Filter(from_stack_1v)
  loc_A7966C: FFreeStr var_9C = "": var_A0 = ""
  loc_A79675: FFree1Ad var_88
  loc_A79678: FFree1Var var_98 = ""
  loc_A7967B: LitStr "nombre del Proveedor contiene: "
  loc_A7967E: FLdPr Me
  loc_A79681: VCallAd Control_ID_FiltroMsk
  loc_A79684: FStAdFunc var_88
  loc_A79687: FLdPr var_88
  loc_A7968A: LateIdLdVar var_98 DispID_22 0
  loc_A79691: CStrVarTmp
  loc_A79692: FStStrNoPop var_9C
  loc_A79695: ConcatStr
  loc_A79696: FStStrNoPop var_A0
  loc_A79699: FLdPr Me
  loc_A7969C: MemStStrCopy
  loc_A796A0: FFreeStr var_9C = ""
  loc_A796A7: FFree1Ad var_88
  loc_A796AA: FFree1Var var_98 = ""
  loc_A796AD: Branch loc_A7973B
  loc_A796B0: FLdRfVar var_A2
  loc_A796B3: FLdPr Me
  loc_A796B6: VCallAd Control_ID_FiltroCbo
  loc_A796B9: FStAdFunc var_88
  loc_A796BC: FLdPr var_88
  loc_A796BF:  = Me.ListIndex
  loc_A796C4: FLdI2 var_A2
  loc_A796C7: LitI2_Byte 3
  loc_A796C9: EqI2
  loc_A796CA: FFree1Ad var_88
  loc_A796CD: BranchF loc_A796F7
  loc_A796D0: LitStr "Tipo = 'Devengado'"
  loc_A796D3: FStStrCopy var_9C
  loc_A796D6: FLdRfVar var_9C
  loc_A796D9: FLdPr Me
  loc_A796DC: MemLdRfVar from_stack_1.global_52
  loc_A796DF: NewIfNullPr clsimputacion
  loc_A796E2: Call clsimputacion.Filter(from_stack_1v)
  loc_A796E7: FFree1Str var_9C
  loc_A796EA: LitStr "Tipo de Liq. igual a Devengado"
  loc_A796ED: FLdPr Me
  loc_A796F0: MemStStrCopy
  loc_A796F4: Branch loc_A7973B
  loc_A796F7: FLdRfVar var_A2
  loc_A796FA: FLdPr Me
  loc_A796FD: VCallAd Control_ID_FiltroCbo
  loc_A79700: FStAdFunc var_88
  loc_A79703: FLdPr var_88
  loc_A79706:  = Me.ListIndex
  loc_A7970B: FLdI2 var_A2
  loc_A7970E: LitI2_Byte 4
  loc_A79710: EqI2
  loc_A79711: FFree1Ad var_88
  loc_A79714: BranchF loc_A7973B
  loc_A79717: LitStr "Tipo = 'Debito'"
  loc_A7971A: FStStrCopy var_9C
  loc_A7971D: FLdRfVar var_9C
  loc_A79720: FLdPr Me
  loc_A79723: MemLdRfVar from_stack_1.global_52
  loc_A79726: NewIfNullPr clsimputacion
  loc_A79729: Call clsimputacion.Filter(from_stack_1v)
  loc_A7972E: FFree1Str var_9C
  loc_A79731: LitStr "Tipo de Liq. igual a Débito"
  loc_A79734: FLdPr Me
  loc_A79737: MemStStrCopy
  loc_A7973B: Branch loc_A79762
  loc_A7973E: LitStr vbNullString
  loc_A79741: FStStrCopy var_9C
  loc_A79744: FLdRfVar var_9C
  loc_A79747: FLdPr Me
  loc_A7974A: MemLdRfVar from_stack_1.global_52
  loc_A7974D: NewIfNullPr clsimputacion
  loc_A79750: Call clsimputacion.Filter(from_stack_1v)
  loc_A79755: FFree1Str var_9C
  loc_A79758: LitStr vbNullString
  loc_A7975B: FLdPr Me
  loc_A7975E: MemStStrCopy
  loc_A79762: FLdRfVar var_AC
  loc_A79765: FLdPr Me
  loc_A79768: MemLdRfVar from_stack_1.global_52
  loc_A7976B: NewIfNullPr clsimputacion
  loc_A7976E: from_stack_1 = clsimputacion.RecordCount
  loc_A79773: ILdRf var_AC
  loc_A79776: LitI4 0
  loc_A7977B: GtI4
  loc_A7977C: BranchF loc_A79829
  loc_A7977F: FLdPr Me
  loc_A79782: MemLdRfVar from_stack_1.global_52
  loc_A79785: NewIfNullAd
  loc_A79788: FStAd var_B0 
  loc_A7978C: FLdRfVar var_B0
  loc_A7978F: CVarRef
  loc_A79794: ILdRf Me
  loc_A79797: CastAd
  loc_A7979A: FStAdFunc var_88
  loc_A7979D: FLdRfVar var_88
  loc_A797A0: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A797A5: ILdRf var_B0
  loc_A797A8: CastAd
  loc_A797AB: FLdPr Me
  loc_A797AE: MemStAdFunc
  loc_A797B2: FFreeAd var_88 = ""
  loc_A797B9: LitI4 0
  loc_A797BE: LitI4 1
  loc_A797C3: FLdRfVar var_C4
  loc_A797C6: Redim
  loc_A797D0: FLdPr Me
  loc_A797D3: MemLdRfVar from_stack_1.global_52
  loc_A797D6: NewIfNullAd
  loc_A797D9: FStAd var_88 
  loc_A797DD: FLdRfVar var_88
  loc_A797E0: CVarRef
  loc_A797E5: ParmAry1St
  loc_A797EB: FLdPr Me
  loc_A797EE: VCallAd Control_ID_dgdABMS
  loc_A797F1: CVarAd
  loc_A797F5: ParmAry1St
  loc_A797FB: FLdRfVar var_C4
  loc_A797FE: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A79803: ILdRf var_88
  loc_A79806: CastAd
  loc_A79809: FLdPr Me
  loc_A7980C: MemStAdFunc
  loc_A79810: FLdRfVar var_C4
  loc_A79813: Erase
  loc_A79814: FFree1Ad var_88
  loc_A79817: LitI2_Byte 0
  loc_A79819: LitVarI2 var_98, 0
  loc_A7981E: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A79823: FFree1Var var_98 = ""
  loc_A79826: Branch loc_A7983D
  loc_A79829: ILdRf Me
  loc_A7982C: CastAd
  loc_A7982F: FStAdFunc var_88
  loc_A79832: FLdRfVar var_88
  loc_A79835: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A7983A: FFree1Ad var_88
  loc_A7983D: FLdPr Me
  loc_A79840: VCallAd Control_ID_dgdABMS
  loc_A79843: FStAdFunc var_B0
  loc_A79846: LitStr "Devengado/s pendiente/s de Liquidación"
  loc_A79849: FStStrCopy var_9C
  loc_A7984C: FLdRfVar var_9C
  loc_A7984F: FLdPr Me
  loc_A79852: MemLdStr global_72
  loc_A79855: FLdZeroAd var_B0
  loc_A79858: FStAdFunc var_88
  loc_A7985B: FLdRfVar var_88
  loc_A7985E: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A79863: FFree1Str var_9C
  loc_A79866: FFreeAd var_88 = ""
  loc_A7986D: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997944
  'Data Table: 4AE690
  loc_9978E0: ILdI2 KeyAscii
  loc_9978E3: LitI2_Byte &H27
  loc_9978E5: EqI2
  loc_9978E6: BranchF loc_9978EE
  loc_9978E9: LitI2_Byte 0
  loc_9978EB: IStI2 KeyAscii
  loc_9978EE: FLdRfVar var_88
  loc_9978F1: FLdPr Me
  loc_9978F4: MemLdRfVar from_stack_1.global_52
  loc_9978F7: NewIfNullPr clsimputacion
  loc_9978FA: from_stack_1 = clsimputacion.RecordCount
  loc_9978FF: ILdRf var_88
  loc_997902: LitI4 0
  loc_997907: EqI4
  loc_997908: ILdI2 KeyAscii
  loc_99790B: CI4UI1
  loc_99790C: LitI4 8
  loc_997911: NeI4
  loc_997912: AndI4
  loc_997913: FLdPr Me
  loc_997916: VCallAd Control_ID_FiltroMsk
  loc_997919: FStAdFunc var_8C
  loc_99791C: FLdPr var_8C
  loc_99791F: LateIdLdVar var_9C DispID_16 0
  loc_997926: CStrVarTmp
  loc_997927: FStStrNoPop var_A0
  loc_99792A: LitStr vbNullString
  loc_99792D: EqStr
  loc_99792F: AndI4
  loc_997930: FFree1Str var_A0
  loc_997933: FFree1Ad var_8C
  loc_997936: FFree1Var var_9C = ""
  loc_997939: BranchF loc_997941
  loc_99793C: LitI2_Byte 0
  loc_99793E: IStI2 KeyAscii
  loc_997941: ExitProcHresult
  loc_997942: FnStrComp3
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95D3A4
  'Data Table: 4AE690
  loc_95D38C: FLdPr Me
  loc_95D38F: VCallAd Control_ID_dgdABMS
  loc_95D392: FStAdFunc var_88
  loc_95D395: FLdRfVar var_88
  loc_95D398: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95D39D: FFree1Ad var_88
  loc_95D3A0: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95D30C
  'Data Table: 4AE690
  loc_95D2F4: FLdPr Me
  loc_95D2F7: VCallAd Control_ID_dgdABMS
  loc_95D2FA: FStAdFunc var_88
  loc_95D2FD: FLdRfVar var_88
  loc_95D300: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95D305: FFree1Ad var_88
  loc_95D308: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99BBCC
  'Data Table: 4AE690
  loc_99BB70: FLdRfVar var_B4
  loc_99BB73: FLdRfVar var_B0
  loc_99BB76: FLdI2 ColIndex
  loc_99BB79: CVarI2 var_A8
  loc_99BB7C: PopAdLdVar
  loc_99BB7D: FLdPr Me
  loc_99BB80: VCallAd Control_ID_dgdABMS
  loc_99BB83: FStAdFunc var_88
  loc_99BB86: FLdPr var_88
  loc_99BB89: LateIdLdVar var_98 DispID_105 0
  loc_99BB90: CastAdVar Me
  loc_99BB94: FStAdFunc var_AC
  loc_99BB97: FLdPr var_AC
  loc_99BB9A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99BB9F: FLdPr var_B0
  loc_99BBA2:  = Me.DataField
  loc_99BBA7: FLdZeroAd var_B4
  loc_99BBAA: PopTmpLdAdStr
  loc_99BBAE: FLdPr Me
  loc_99BBB1: MemLdRfVar from_stack_1.global_52
  loc_99BBB4: NewIfNullPr clsimputacion
  loc_99BBB7: Call clsimputacion.Sort(from_stack_1v)
  loc_99BBBC: FFree1Str var_B8
  loc_99BBBF: FFreeAd var_88 = "": var_AC = ""
  loc_99BBC8: FFree1Var var_98 = ""
  loc_99BBCB: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'BD09E0
  'Data Table: 4AE690
  loc_BCF69C: FLdRfVar var_94
  loc_BCF69F: FLdPr Me
  loc_BCF6A2: MemLdRfVar from_stack_1.global_52
  loc_BCF6A5: NewIfNullPr clsimputacion
  loc_BCF6A8: from_stack_1 = clsimputacion.RecordCount
  loc_BCF6AD: ILdRf var_94
  loc_BCF6B0: LitI4 0
  loc_BCF6B5: LeI4
  loc_BCF6B6: BranchF loc_BCF6C1
  loc_BCF6B9: Call Proc_119_28_A2ECB8()
  loc_BCF6BE: Branch loc_BD09DD
  loc_BCF6C1: FLdPr Me
  loc_BCF6C4: MemLdStr global_88
  loc_BCF6C7: CVarStr var_D0
  loc_BCF6CA: HardType
  loc_BCF6CB: FLdRfVar var_C0
  loc_BCF6CE: FLdRfVar var_B0
  loc_BCF6D1: LitVarStr var_AC, "ExpeImpu"
  loc_BCF6D6: PopAdLdVar
  loc_BCF6D7: FLdRfVar var_9C
  loc_BCF6DA: FLdRfVar var_98
  loc_BCF6DD: FLdPr Me
  loc_BCF6E0: MemLdRfVar from_stack_1.global_52
  loc_BCF6E3: NewIfNullPr clsimputacion
  loc_BCF6E6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BCF6EB: FLdPr var_98
  loc_BCF6EE:  = Me.Fields
  loc_BCF6F3: FLdPr var_9C
  loc_BCF6F6: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF6FB: FLdPr var_B0
  loc_BCF6FE:  = Me.Value
  loc_BCF703: FLdRfVar var_C0
  loc_BCF706: NeVar var_E0
  loc_BCF70A: FLdPr Me
  loc_BCF70D: MemLdStr global_92
  loc_BCF710: CVarStr var_11C
  loc_BCF713: HardType
  loc_BCF714: FLdRfVar var_10C
  loc_BCF717: FLdRfVar var_FC
  loc_BCF71A: LitVarStr var_F8, "Tipo"
  loc_BCF71F: PopAdLdVar
  loc_BCF720: FLdRfVar var_E8
  loc_BCF723: FLdRfVar var_E4
  loc_BCF726: FLdPr Me
  loc_BCF729: MemLdRfVar from_stack_1.global_52
  loc_BCF72C: NewIfNullPr clsimputacion
  loc_BCF72F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BCF734: FLdPr var_E4
  loc_BCF737:  = Me.Fields
  loc_BCF73C: FLdPr var_E8
  loc_BCF73F: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF744: FLdPr var_FC
  loc_BCF747:  = Me.Value
  loc_BCF74C: FLdRfVar var_10C
  loc_BCF74F: NeVar var_12C
  loc_BCF753: OrVar var_13C
  loc_BCF757: CBoolVarNull
  loc_BCF759: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_E4 = "": var_E8 = ""
  loc_BCF768: FFreeVar var_C0 = ""
  loc_BCF76F: BranchF loc_BD09DD
  loc_BCF772: Call Proc_119_28_A2ECB8()
  loc_BCF777: LitI2_Byte 0
  loc_BCF779: CR8I2
  loc_BCF77A: FStFPR8 var_8C
  loc_BCF77D: FLdRfVar var_94
  loc_BCF780: FLdPr Me
  loc_BCF783: MemLdRfVar from_stack_1.global_52
  loc_BCF786: NewIfNullPr clsimputacion
  loc_BCF789: from_stack_1 = clsimputacion.RecordCount
  loc_BCF78E: ILdRf var_94
  loc_BCF791: LitI4 0
  loc_BCF796: GtI4
  loc_BCF797: BranchF loc_BD0933
  loc_BCF79A: FLdRfVar var_13E
  loc_BCF79D: FLdPr Me
  loc_BCF7A0: MemLdRfVar from_stack_1.global_52
  loc_BCF7A3: NewIfNullPr clsimputacion
  loc_BCF7A6: from_stack_1 = clsimputacion.BOF
  loc_BCF7AB: FLdI2 var_13E
  loc_BCF7AE: BranchF loc_BCF7BF
  loc_BCF7B1: FLdPr Me
  loc_BCF7B4: MemLdRfVar from_stack_1.global_52
  loc_BCF7B7: NewIfNullPr clsimputacion
  loc_BCF7BA: Call clsimputacion.MoveFirst()
  loc_BCF7BF: FLdRfVar var_13E
  loc_BCF7C2: FLdPr Me
  loc_BCF7C5: MemLdRfVar from_stack_1.global_52
  loc_BCF7C8: NewIfNullPr clsimputacion
  loc_BCF7CB: from_stack_1 = clsimputacion.EOF
  loc_BCF7D0: FLdI2 var_13E
  loc_BCF7D3: BranchF loc_BCF7E4
  loc_BCF7D6: FLdPr Me
  loc_BCF7D9: MemLdRfVar from_stack_1.global_52
  loc_BCF7DC: NewIfNullPr clsimputacion
  loc_BCF7DF: Call clsimputacion.MoveLast()
  loc_BCF7E4: FLdRfVar var_C0
  loc_BCF7E7: FLdRfVar var_B0
  loc_BCF7EA: LitVarStr var_AC, "Tipo"
  loc_BCF7EF: PopAdLdVar
  loc_BCF7F0: FLdRfVar var_9C
  loc_BCF7F3: FLdRfVar var_98
  loc_BCF7F6: FLdPr Me
  loc_BCF7F9: MemLdRfVar from_stack_1.global_52
  loc_BCF7FC: NewIfNullPr clsimputacion
  loc_BCF7FF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BCF804: FLdPr var_98
  loc_BCF807:  = Me.Fields
  loc_BCF80C: FLdPr var_9C
  loc_BCF80F: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF814: FLdPr var_B0
  loc_BCF817:  = Me.Value
  loc_BCF81C: FLdRfVar var_C0
  loc_BCF81F: LitVarStr var_D0, "Devengado"
  loc_BCF824: HardType
  loc_BCF825: EqVarBool
  loc_BCF827: FFreeAd var_98 = "": var_9C = ""
  loc_BCF830: FFree1Var var_C0 = ""
  loc_BCF833: BranchF loc_BD00C8
  loc_BCF836: LitStr "SELECT IF( (SELECT r.CucuPers FROM retexprov r WHERE r.PeriInfo = i.PeriInfo AND r.CucuPers = i.CucuPers LIMIT 1) IS NULL,'No','Si') TieneRete"
  loc_BCF839: LitStr ", @id:=IF(DeveImpu!=0,IdImpu,0) IdImpu"
  loc_BCF83C: ConcatStr
  loc_BCF83D: FStStrNoPop var_144
  loc_BCF840: LitStr ", i.CodiPart, i.CodiOrga, i.DetaImpu, i.CucuPers, i.CodiOrco"
  loc_BCF843: ConcatStr
  loc_BCF844: FStStrNoPop var_148
  loc_BCF847: LitStr ", DetaProv, DetaImpu, CodiOrco"
  loc_BCF84A: ConcatStr
  loc_BCF84B: FStStrNoPop var_14C
  loc_BCF84E: LitStr ", Left(NumeFact,3) TifaDeve, Substr(NumeFact,4,4) SufaDeve, Right(NumeFact,8) NufaDeve"
  loc_BCF851: ConcatStr
  loc_BCF852: FStStrNoPop var_150
  loc_BCF855: LitStr ", Sum(DeveImpu-LiquImpu) SaldDeve"
  loc_BCF858: ConcatStr
  loc_BCF859: FStStrNoPop var_154
  loc_BCF85C: LitStr ", IF(LENGTH(p.CubaProv)=22,'Si','No') TieneCBU"
  loc_BCF85F: ConcatStr
  loc_BCF860: FStStrNoPop var_158
  loc_BCF863: LitStr " FROM imputacion i"
  loc_BCF866: ConcatStr
  loc_BCF867: FStStrNoPop var_15C
  loc_BCF86A: LitStr " INNER JOIN proveedor p ON p.CucuPers = i.CucuPers"
  loc_BCF86D: ConcatStr
  loc_BCF86E: FStStrNoPop var_160
  loc_BCF871: LitStr " WHERE i.PeriInfo = "
  loc_BCF874: ConcatStr
  loc_BCF875: FStStrNoPop var_164
  loc_BCF878: ImpAdLdI2 MemVar_C3D064
  loc_BCF87B: CStrUI1
  loc_BCF87D: FStStrNoPop var_168
  loc_BCF880: ConcatStr
  loc_BCF881: FStStrNoPop var_16C
  loc_BCF884: LitStr " AND i.ExpeImpu = '"
  loc_BCF887: ConcatStr
  loc_BCF888: CVarStr var_E0
  loc_BCF88B: FLdRfVar var_C0
  loc_BCF88E: FLdRfVar var_B0
  loc_BCF891: LitVarStr var_AC, "ExpeImpu"
  loc_BCF896: PopAdLdVar
  loc_BCF897: FLdRfVar var_9C
  loc_BCF89A: FLdRfVar var_98
  loc_BCF89D: FLdPr Me
  loc_BCF8A0: MemLdRfVar from_stack_1.global_52
  loc_BCF8A3: NewIfNullPr clsimputacion
  loc_BCF8A6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BCF8AB: FLdPr var_98
  loc_BCF8AE:  = Me.Fields
  loc_BCF8B3: FLdPr var_9C
  loc_BCF8B6: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF8BB: FLdPr var_B0
  loc_BCF8BE:  = Me.Value
  loc_BCF8C3: FLdRfVar var_C0
  loc_BCF8C6: ConcatVar var_10C
  loc_BCF8CA: LitVarStr var_D0, "' AND (DeveImpu != 0 OR LiquImpu != 0)"
  loc_BCF8CF: ConcatVar var_12C
  loc_BCF8D3: LitVarStr var_F8, " GROUP BY i.PeriInfo, i.CodiPart, i.CodiOrga, i.CodiFifu, i.CodiInsu, i.CodiUnga, i.ExorImpu, /*i.ExpeImpu,*/ i.CucuPers, i.CodiNope, i.Item, i.Altern, i.CodiOrco, /* i.CodiRece, */ i.NumeFact"
  loc_BCF8D8: ConcatVar var_13C
  loc_BCF8DC: LitVarStr var_11C, " HAVING SaldDeve > 0"
  loc_BCF8E1: ConcatVar var_17C
  loc_BCF8E5: LitVarStr var_18C, " ORDER BY DetaProv, i.CucuPers, i.CodiNope, i.Item, i.Altern, i.CodiOrco, i.CodiRece, i.ExorImpu, i.CodiPart, i.CodiOrga;"
  loc_BCF8EA: ConcatVar var_19C
  loc_BCF8EE: CStrVarVal var_1A0
  loc_BCF8F2: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BCF8F7: FFreeStr var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_BCF912: FFreeAd var_98 = "": var_9C = ""
  loc_BCF91B: FFreeVar var_E0 = "": var_C0 = "": var_10C = "": var_12C = "": var_13C = "": var_17C = ""
  loc_BCF92C: FLdRfVar var_94
  loc_BCF92F: ImpAdLdPr unk_4AE69F
  loc_BCF932: MemLdPr global_0
  loc_BCF935:  = Me.RecordCount
  loc_BCF93A: ILdRf var_94
  loc_BCF93D: LitI4 0
  loc_BCF942: GtI4
  loc_BCF943: BranchF loc_BD00C5
  loc_BCF946: FLdRfVar var_94
  loc_BCF949: ImpAdLdPr unk_4AE69F
  loc_BCF94C: MemLdPr global_0
  loc_BCF94F:  = Me.RecordCount
  loc_BCF954: ILdRf var_94
  loc_BCF957: CI2I4
  loc_BCF958: FLdPr Me
  loc_BCF95B: MemStI2 global_70
  loc_BCF95E: Call Proc_119_28_A2ECB8()
  loc_BCF963: LitI2_Byte 0
  loc_BCF965: CR8I2
  loc_BCF966: FStFPR8 var_8C
  loc_BCF969: LitStr vbNullString
  loc_BCF96C: FStStrCopy var_90
  loc_BCF96F: ImpAdLdPr unk_4AE69F
  loc_BCF972: MemLdPr global_0
  loc_BCF975: Me.MoveFirst
  loc_BCF97A: LitI2_Byte 1
  loc_BCF97C: FLdPr Me
  loc_BCF97F: MemLdRfVar from_stack_1.global_68
  loc_BCF982: FLdPr Me
  loc_BCF985: MemLdI2 global_70
  loc_BCF988: ForI2 var_1A4
  loc_BCF98E: FLdRfVar var_C0
  loc_BCF991: FLdRfVar var_9C
  loc_BCF994: LitVarStr var_AC, "DetaImpu"
  loc_BCF999: PopAdLdVar
  loc_BCF99A: FLdRfVar var_98
  loc_BCF99D: ImpAdLdPr unk_4AE69F
  loc_BCF9A0: MemLdPr global_0
  loc_BCF9A3:  = Me.Fields
  loc_BCF9A8: FLdPr var_98
  loc_BCF9AB: from_stack_2 = Me.Item(from_stack_1)
  loc_BCF9B0: FLdPr var_9C
  loc_BCF9B3:  = Me.Value
  loc_BCF9B8: LitI4 0
  loc_BCF9BD: LitI4 -1
  loc_BCF9C2: LitI4 1
  loc_BCF9C7: LitStr vbNullString
  loc_BCF9CA: LitStr "	"
  loc_BCF9CD: FLdRfVar var_C0
  loc_BCF9D0: CStrVarTmp
  loc_BCF9D1: FStStrNoPop var_144
  loc_BCF9D4: ImpAdCallI2 Replace(, , , , , )
  loc_BCF9D9: FStStr var_90
  loc_BCF9DC: FFree1Str var_144
  loc_BCF9DF: FFreeAd var_98 = ""
  loc_BCF9E6: FFree1Var var_C0 = ""
  loc_BCF9E9: LitI4 9
  loc_BCF9EE: FLdRfVar var_C0
  loc_BCF9F1: ImpAdCallFPR4  = Chr()
  loc_BCF9F6: LitI4 0
  loc_BCF9FB: LitI4 -1
  loc_BCFA00: LitI4 1
  loc_BCFA05: LitStr vbNullString
  loc_BCFA08: FLdRfVar var_C0
  loc_BCFA0B: CStrVarVal var_144
  loc_BCFA0F: ILdRf var_90
  loc_BCFA12: ImpAdCallI2 Replace(, , , , , )
  loc_BCFA17: FStStr var_90
  loc_BCFA1A: FFree1Str var_144
  loc_BCFA1D: FFree1Var var_C0 = ""
  loc_BCFA20: FLdRfVar var_26C
  loc_BCFA23: LitVarStr var_268, "SufaDeve"
  loc_BCFA28: PopAdLdVar
  loc_BCFA29: FLdRfVar var_258
  loc_BCFA2C: ImpAdLdPr unk_4AE69F
  loc_BCFA2F: MemLdPr global_0
  loc_BCFA32:  = Me.Fields
  loc_BCFA37: FLdPr var_258
  loc_BCFA3A: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFA3F: FLdRfVar var_2D4
  loc_BCFA42: LitVarStr var_2D0, "NufaDeve"
  loc_BCFA47: PopAdLdVar
  loc_BCFA48: FLdRfVar var_2C0
  loc_BCFA4B: ImpAdLdPr unk_4AE69F
  loc_BCFA4E: MemLdPr global_0
  loc_BCFA51:  = Me.Fields
  loc_BCFA56: FLdPr var_2C0
  loc_BCFA59: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFA5E: FLdRfVar var_44C
  loc_BCFA61: LitVarStr var_448, "SaldDeve"
  loc_BCFA66: PopAdLdVar
  loc_BCFA67: FLdRfVar var_438
  loc_BCFA6A: ImpAdLdPr unk_4AE69F
  loc_BCFA6D: MemLdPr global_0
  loc_BCFA70:  = Me.Fields
  loc_BCFA75: FLdPr var_438
  loc_BCFA78: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFA7D: FLdRfVar var_514
  loc_BCFA80: LitVarStr var_510, "SaldDeve"
  loc_BCFA85: PopAdLdVar
  loc_BCFA86: FLdRfVar var_500
  loc_BCFA89: ImpAdLdPr unk_4AE69F
  loc_BCFA8C: MemLdPr global_0
  loc_BCFA8F:  = Me.Fields
  loc_BCFA94: FLdPr var_500
  loc_BCFA97: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFA9C: FLdRfVar var_E0
  loc_BCFA9F: FLdRfVar var_9C
  loc_BCFAA2: LitVarStr var_AC, "TieneRete"
  loc_BCFAA7: PopAdLdVar
  loc_BCFAA8: FLdRfVar var_98
  loc_BCFAAB: ImpAdLdPr unk_4AE69F
  loc_BCFAAE: MemLdPr global_0
  loc_BCFAB1:  = Me.Fields
  loc_BCFAB6: FLdPr var_98
  loc_BCFAB9: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFABE: FLdPr var_9C
  loc_BCFAC1:  = Me.Value
  loc_BCFAC6: FLdRfVar var_E0
  loc_BCFAC9: LitI4 9
  loc_BCFACE: FLdRfVar var_C0
  loc_BCFAD1: ImpAdCallFPR4  = Chr()
  loc_BCFAD6: FLdRfVar var_C0
  loc_BCFAD9: ConcatVar var_10C
  loc_BCFADD: FLdRfVar var_12C
  loc_BCFAE0: FLdRfVar var_E4
  loc_BCFAE3: LitVarStr var_D0, "CodiPart"
  loc_BCFAE8: PopAdLdVar
  loc_BCFAE9: FLdRfVar var_B0
  loc_BCFAEC: ImpAdLdPr unk_4AE69F
  loc_BCFAEF: MemLdPr global_0
  loc_BCFAF2:  = Me.Fields
  loc_BCFAF7: FLdPr var_B0
  loc_BCFAFA: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFAFF: FLdPr var_E4
  loc_BCFB02:  = Me.Value
  loc_BCFB07: FLdRfVar var_12C
  loc_BCFB0A: ConcatVar var_13C
  loc_BCFB0E: LitI4 9
  loc_BCFB13: FLdRfVar var_17C
  loc_BCFB16: ImpAdCallFPR4  = Chr()
  loc_BCFB1B: FLdRfVar var_17C
  loc_BCFB1E: ConcatVar var_19C
  loc_BCFB22: FLdRfVar var_1B4
  loc_BCFB25: FLdRfVar var_FC
  loc_BCFB28: LitVarStr var_F8, "CodiOrga"
  loc_BCFB2D: PopAdLdVar
  loc_BCFB2E: FLdRfVar var_E8
  loc_BCFB31: ImpAdLdPr unk_4AE69F
  loc_BCFB34: MemLdPr global_0
  loc_BCFB37:  = Me.Fields
  loc_BCFB3C: FLdPr var_E8
  loc_BCFB3F: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFB44: FLdPr var_FC
  loc_BCFB47:  = Me.Value
  loc_BCFB4C: FLdRfVar var_1B4
  loc_BCFB4F: ConcatVar var_1C4
  loc_BCFB53: LitI4 9
  loc_BCFB58: FLdRfVar var_1D4
  loc_BCFB5B: ImpAdCallFPR4  = Chr()
  loc_BCFB60: FLdRfVar var_1D4
  loc_BCFB63: ConcatVar var_1E4
  loc_BCFB67: FLdRfVar var_1FC
  loc_BCFB6A: FLdRfVar var_1EC
  loc_BCFB6D: LitVarStr var_11C, "IdImpu"
  loc_BCFB72: PopAdLdVar
  loc_BCFB73: FLdRfVar var_1E8
  loc_BCFB76: ImpAdLdPr unk_4AE69F
  loc_BCFB79: MemLdPr global_0
  loc_BCFB7C:  = Me.Fields
  loc_BCFB81: FLdPr var_1E8
  loc_BCFB84: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFB89: FLdPr var_1EC
  loc_BCFB8C:  = Me.Value
  loc_BCFB91: FLdRfVar var_1FC
  loc_BCFB94: ConcatVar var_20C
  loc_BCFB98: LitI4 9
  loc_BCFB9D: FLdRfVar var_21C
  loc_BCFBA0: ImpAdCallFPR4  = Chr()
  loc_BCFBA5: FLdRfVar var_21C
  loc_BCFBA8: ConcatVar var_22C
  loc_BCFBAC: FLdRfVar var_244
  loc_BCFBAF: FLdRfVar var_234
  loc_BCFBB2: LitVarStr var_18C, "TifaDeve"
  loc_BCFBB7: PopAdLdVar
  loc_BCFBB8: FLdRfVar var_230
  loc_BCFBBB: ImpAdLdPr unk_4AE69F
  loc_BCFBBE: MemLdPr global_0
  loc_BCFBC1:  = Me.Fields
  loc_BCFBC6: FLdPr var_230
  loc_BCFBC9: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFBCE: FLdPr var_234
  loc_BCFBD1:  = Me.Value
  loc_BCFBD6: FLdRfVar var_244
  loc_BCFBD9: ConcatVar var_254
  loc_BCFBDD: LitI4 1
  loc_BCFBE2: LitI4 1
  loc_BCFBE7: LitVarStr var_28C, "0000"
  loc_BCFBEC: FStVarCopyObj var_29C
  loc_BCFBEF: FLdRfVar var_29C
  loc_BCFBF2: FLdZeroAd var_26C
  loc_BCFBF5: CVarAd
  loc_BCFBF9: ImpAdCallI2 Format$(, )
  loc_BCFBFE: CVarStr var_2AC
  loc_BCFC01: ConcatVar var_2BC
  loc_BCFC05: LitI4 1
  loc_BCFC0A: LitI4 1
  loc_BCFC0F: LitVarStr var_2F4, "00000000"
  loc_BCFC14: FStVarCopyObj var_304
  loc_BCFC17: FLdRfVar var_304
  loc_BCFC1A: FLdZeroAd var_2D4
  loc_BCFC1D: CVarAd
  loc_BCFC21: ImpAdCallI2 Format$(, )
  loc_BCFC26: CVarStr var_314
  loc_BCFC29: ConcatVar var_324
  loc_BCFC2D: LitI4 9
  loc_BCFC32: FLdRfVar var_334
  loc_BCFC35: ImpAdCallFPR4  = Chr()
  loc_BCFC3A: FLdRfVar var_334
  loc_BCFC3D: ConcatVar var_344
  loc_BCFC41: FLdRfVar var_36C
  loc_BCFC44: FLdRfVar var_35C
  loc_BCFC47: LitVarStr var_358, "CucuPers"
  loc_BCFC4C: PopAdLdVar
  loc_BCFC4D: FLdRfVar var_348
  loc_BCFC50: ImpAdLdPr unk_4AE69F
  loc_BCFC53: MemLdPr global_0
  loc_BCFC56:  = Me.Fields
  loc_BCFC5B: FLdPr var_348
  loc_BCFC5E: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFC63: FLdPr var_35C
  loc_BCFC66:  = Me.Value
  loc_BCFC6B: FLdRfVar var_36C
  loc_BCFC6E: ConcatVar var_37C
  loc_BCFC72: LitI4 9
  loc_BCFC77: FLdRfVar var_38C
  loc_BCFC7A: ImpAdCallFPR4  = Chr()
  loc_BCFC7F: FLdRfVar var_38C
  loc_BCFC82: ConcatVar var_39C
  loc_BCFC86: FLdRfVar var_3C4
  loc_BCFC89: FLdRfVar var_3B4
  loc_BCFC8C: LitVarStr var_3B0, "DetaProv"
  loc_BCFC91: PopAdLdVar
  loc_BCFC92: FLdRfVar var_3A0
  loc_BCFC95: ImpAdLdPr unk_4AE69F
  loc_BCFC98: MemLdPr global_0
  loc_BCFC9B:  = Me.Fields
  loc_BCFCA0: FLdPr var_3A0
  loc_BCFCA3: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFCA8: FLdPr var_3B4
  loc_BCFCAB:  = Me.Value
  loc_BCFCB0: FLdRfVar var_3C4
  loc_BCFCB3: ConcatVar var_3D4
  loc_BCFCB7: LitI4 9
  loc_BCFCBC: FLdRfVar var_3E4
  loc_BCFCBF: ImpAdCallFPR4  = Chr()
  loc_BCFCC4: FLdRfVar var_3E4
  loc_BCFCC7: ConcatVar var_3F4
  loc_BCFCCB: ILdRf var_90
  loc_BCFCCE: CVarStr var_404
  loc_BCFCD1: ConcatVar var_414
  loc_BCFCD5: LitI4 9
  loc_BCFCDA: FLdRfVar var_424
  loc_BCFCDD: ImpAdCallFPR4  = Chr()
  loc_BCFCE2: FLdRfVar var_424
  loc_BCFCE5: ConcatVar var_434
  loc_BCFCE9: LitI4 1
  loc_BCFCEE: LitI4 1
  loc_BCFCF3: LitVarStr var_46C, "###,###,##0.00"
  loc_BCFCF8: FStVarCopyObj var_47C
  loc_BCFCFB: FLdRfVar var_47C
  loc_BCFCFE: FLdZeroAd var_44C
  loc_BCFD01: CVarAd
  loc_BCFD05: ImpAdCallI2 Format$(, )
  loc_BCFD0A: CVarStr var_48C
  loc_BCFD0D: ConcatVar var_49C
  loc_BCFD11: LitI4 9
  loc_BCFD16: FLdRfVar var_4AC
  loc_BCFD19: ImpAdCallFPR4  = Chr()
  loc_BCFD1E: FLdRfVar var_4AC
  loc_BCFD21: ConcatVar var_4BC
  loc_BCFD25: LitVarStr var_4CC, "No"
  loc_BCFD2A: ConcatVar var_4DC
  loc_BCFD2E: LitI4 9
  loc_BCFD33: FLdRfVar var_4EC
  loc_BCFD36: ImpAdCallFPR4  = Chr()
  loc_BCFD3B: FLdRfVar var_4EC
  loc_BCFD3E: ConcatVar var_4FC
  loc_BCFD42: LitI4 1
  loc_BCFD47: LitI4 1
  loc_BCFD4C: LitVarStr var_534, "0.00"
  loc_BCFD51: FStVarCopyObj var_544
  loc_BCFD54: FLdRfVar var_544
  loc_BCFD57: FLdZeroAd var_514
  loc_BCFD5A: CVarAd
  loc_BCFD5E: ImpAdCallI2 Format$(, )
  loc_BCFD63: CVarStr var_554
  loc_BCFD66: ConcatVar var_564
  loc_BCFD6A: LitI4 9
  loc_BCFD6F: FLdRfVar var_574
  loc_BCFD72: ImpAdCallFPR4  = Chr()
  loc_BCFD77: FLdRfVar var_574
  loc_BCFD7A: ConcatVar var_584
  loc_BCFD7E: FLdRfVar var_5AC
  loc_BCFD81: FLdRfVar var_59C
  loc_BCFD84: LitVarStr var_598, "CodiOrco"
  loc_BCFD89: PopAdLdVar
  loc_BCFD8A: FLdRfVar var_588
  loc_BCFD8D: ImpAdLdPr unk_4AE69F
  loc_BCFD90: MemLdPr global_0
  loc_BCFD93:  = Me.Fields
  loc_BCFD98: FLdPr var_588
  loc_BCFD9B: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFDA0: FLdPr var_59C
  loc_BCFDA3:  = Me.Value
  loc_BCFDA8: FLdRfVar var_5AC
  loc_BCFDAB: ConcatVar var_5BC
  loc_BCFDAF: LitI4 9
  loc_BCFDB4: FLdRfVar var_5CC
  loc_BCFDB7: ImpAdCallFPR4  = Chr()
  loc_BCFDBC: FLdRfVar var_5CC
  loc_BCFDBF: ConcatVar var_5DC
  loc_BCFDC3: FLdRfVar var_604
  loc_BCFDC6: FLdRfVar var_5F4
  loc_BCFDC9: LitVarStr var_5F0, "TieneCBU"
  loc_BCFDCE: PopAdLdVar
  loc_BCFDCF: FLdRfVar var_5E0
  loc_BCFDD2: ImpAdLdPr unk_4AE69F
  loc_BCFDD5: MemLdPr global_0
  loc_BCFDD8:  = Me.Fields
  loc_BCFDDD: FLdPr var_5E0
  loc_BCFDE0: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFDE5: FLdPr var_5F4
  loc_BCFDE8:  = Me.Value
  loc_BCFDED: FLdRfVar var_604
  loc_BCFDF0: ConcatVar var_614
  loc_BCFDF4: CStrVarTmp
  loc_BCFDF5: CVarStr var_624
  loc_BCFDF8: PopAdLdVar
  loc_BCFDF9: FLdPr Me
  loc_BCFDFC: VCallAd Control_ID_DevengadoFlex
  loc_BCFDFF: FStAdFunc var_638
  loc_BCFE02: FLdPr var_638
  loc_BCFE05: LateIdCall
  loc_BCFE0D: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_E4 = "": var_E8 = "": var_FC = "": var_1E8 = "": var_1EC = "": var_230 = "": var_234 = "": var_258 = "": var_2C0 = "": var_348 = "": var_35C = "": var_3A0 = "": var_3B4 = "": var_438 = "": var_500 = "": var_588 = "": var_59C = "": var_5E0 = "": var_5F4 = ""
  loc_BCFE3E: FFreeVar var_39C = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_414 = "": var_424 = "": var_45C = "": var_47C = "": var_434 = "": var_48C = "": var_49C = "": var_4AC = "": var_4BC = "": var_4DC = "": var_4EC = "": var_524 = "": var_544 = "": var_4FC = "": var_554 = "": var_564 = "": var_574 = "": var_584 = "": var_5AC = "": var_5BC = "": var_5CC = "": var_5DC = "": var_604 = "": var_614 = "": var_624 = "": var_E0 = "": var_C0 = "": var_10C = "": var_12C = "": var_13C = "": var_17C = "": var_19C = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = "": var_244 = "": var_27C = "": var_29C = "": var_254 = "": var_2AC = "": var_2E4 = "": var_304 = "": var_2BC = "": var_314 = "": var_324 = "": var_334 = "": var_344 = "": var_36C = "": var_37C = ""
  loc_BCFEB9: FLdPr Me
  loc_BCFEBC: VCallAd Control_ID_DevengadoFlex
  loc_BCFEBF: FStAdFunc var_98
  loc_BCFEC2: FLdPr var_98
  loc_BCFEC5: LateIdLdVar var_C0 DispID_4 0
  loc_BCFECC: CI4Var
  loc_BCFECE: LitI4 1
  loc_BCFED3: SubI4
  loc_BCFED4: CVarI4
  loc_BCFED8: PopAdLdVar
  loc_BCFED9: FLdPr Me
  loc_BCFEDC: VCallAd Control_ID_DevengadoFlex
  loc_BCFEDF: FStAdFunc var_9C
  loc_BCFEE2: FLdPr var_9C
  loc_BCFEE5: LateIdSt
  loc_BCFEEA: FFreeAd var_98 = ""
  loc_BCFEF1: FFree1Var var_C0 = ""
  loc_BCFEF4: LitVarI4
  loc_BCFEFC: PopAdLdVar
  loc_BCFEFD: FLdPr Me
  loc_BCFF00: VCallAd Control_ID_DevengadoFlex
  loc_BCFF03: FStAdFunc var_98
  loc_BCFF06: FLdPr var_98
  loc_BCFF09: LateIdSt
  loc_BCFF0E: FFree1Ad var_98
  loc_BCFF11: FLdRfVar var_C0
  loc_BCFF14: FLdRfVar var_9C
  loc_BCFF17: LitVarStr var_AC, "TieneRete"
  loc_BCFF1C: PopAdLdVar
  loc_BCFF1D: FLdRfVar var_98
  loc_BCFF20: ImpAdLdPr unk_4AE69F
  loc_BCFF23: MemLdPr global_0
  loc_BCFF26:  = Me.Fields
  loc_BCFF2B: FLdPr var_98
  loc_BCFF2E: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFF33: FLdPr var_9C
  loc_BCFF36:  = Me.Value
  loc_BCFF3B: FLdRfVar var_C0
  loc_BCFF3E: LitVarStr var_D0, "Si"
  loc_BCFF43: HardType
  loc_BCFF44: EqVarBool
  loc_BCFF46: FFreeAd var_98 = ""
  loc_BCFF4D: FFree1Var var_C0 = ""
  loc_BCFF50: BranchF loc_BCFF73
  loc_BCFF53: LitVarI4
  loc_BCFF5B: PopAdLdVar
  loc_BCFF5C: FLdPr Me
  loc_BCFF5F: VCallAd Control_ID_DevengadoFlex
  loc_BCFF62: FStAdFunc var_98
  loc_BCFF65: FLdPr var_98
  loc_BCFF68: LateIdSt
  loc_BCFF6D: FFree1Ad var_98
  loc_BCFF70: Branch loc_BCFF90
  loc_BCFF73: LitVarI4
  loc_BCFF7B: PopAdLdVar
  loc_BCFF7C: FLdPr Me
  loc_BCFF7F: VCallAd Control_ID_DevengadoFlex
  loc_BCFF82: FStAdFunc var_98
  loc_BCFF85: FLdPr var_98
  loc_BCFF88: LateIdSt
  loc_BCFF8D: FFree1Ad var_98
  loc_BCFF90: LitVarI4
  loc_BCFF98: PopAdLdVar
  loc_BCFF99: FLdPr Me
  loc_BCFF9C: VCallAd Control_ID_DevengadoFlex
  loc_BCFF9F: FStAdFunc var_98
  loc_BCFFA2: FLdPr var_98
  loc_BCFFA5: LateIdSt
  loc_BCFFAA: FFree1Ad var_98
  loc_BCFFAD: FLdRfVar var_C0
  loc_BCFFB0: FLdRfVar var_9C
  loc_BCFFB3: LitVarStr var_AC, "TieneCBU"
  loc_BCFFB8: PopAdLdVar
  loc_BCFFB9: FLdRfVar var_98
  loc_BCFFBC: ImpAdLdPr unk_4AE69F
  loc_BCFFBF: MemLdPr global_0
  loc_BCFFC2:  = Me.Fields
  loc_BCFFC7: FLdPr var_98
  loc_BCFFCA: from_stack_2 = Me.Item(from_stack_1)
  loc_BCFFCF: FLdPr var_9C
  loc_BCFFD2:  = Me.Value
  loc_BCFFD7: FLdRfVar var_C0
  loc_BCFFDA: LitVarStr var_D0, "Si"
  loc_BCFFDF: HardType
  loc_BCFFE0: EqVarBool
  loc_BCFFE2: FFreeAd var_98 = ""
  loc_BCFFE9: FFree1Var var_C0 = ""
  loc_BCFFEC: BranchF loc_BD000F
  loc_BCFFEF: LitVarI4
  loc_BCFFF7: PopAdLdVar
  loc_BCFFF8: FLdPr Me
  loc_BCFFFB: VCallAd Control_ID_DevengadoFlex
  loc_BCFFFE: FStAdFunc var_98
  loc_BD0001: FLdPr var_98
  loc_BD0004: LateIdSt
  loc_BD0009: FFree1Ad var_98
  loc_BD000C: Branch loc_BD002C
  loc_BD000F: LitVarI4
  loc_BD0017: PopAdLdVar
  loc_BD0018: FLdPr Me
  loc_BD001B: VCallAd Control_ID_DevengadoFlex
  loc_BD001E: FStAdFunc var_98
  loc_BD0021: FLdPr var_98
  loc_BD0024: LateIdSt
  loc_BD0029: FFree1Ad var_98
  loc_BD002C: FLdFPR8 var_8C
  loc_BD002F: CVarR8
  loc_BD0033: FLdRfVar var_C0
  loc_BD0036: FLdRfVar var_9C
  loc_BD0039: LitVarStr var_AC, "SaldDeve"
  loc_BD003E: PopAdLdVar
  loc_BD003F: FLdRfVar var_98
  loc_BD0042: ImpAdLdPr unk_4AE69F
  loc_BD0045: MemLdPr global_0
  loc_BD0048:  = Me.Fields
  loc_BD004D: FLdPr var_98
  loc_BD0050: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0055: FLdPr var_9C
  loc_BD0058:  = Me.Value
  loc_BD005D: FLdRfVar var_C0
  loc_BD0060: AddVar var_E0
  loc_BD0064: CR4Var
  loc_BD0065: FStFPR8 var_8C
  loc_BD0068: FFreeAd var_98 = ""
  loc_BD006F: FFreeVar var_C0 = ""
  loc_BD0076: ImpAdCallFPR4 Proc_266_19_9414E0()
  loc_BD007B: FLdPr Me
  loc_BD007E: MemLdRfVar from_stack_1.global_68
  loc_BD0081: NextI2 var_1A4, loc_BCF98E
  loc_BD0086: LitI4 1
  loc_BD008B: LitI4 1
  loc_BD0090: LitVarStr var_D0, "currency"
  loc_BD0095: FStVarCopyObj var_C0
  loc_BD0098: FLdRfVar var_C0
  loc_BD009B: FLdRfVar var_8C
  loc_BD009E: CVarRef
  loc_BD00A3: ImpAdCallI2 Format$(, )
  loc_BD00A8: FStStrNoPop var_144
  loc_BD00AB: FLdPr Me
  loc_BD00AE: VCallAd Control_ID_lblTotalExpeImpu
  loc_BD00B1: FStAdFunc var_98
  loc_BD00B4: FLdPr var_98
  loc_BD00B7: Me.Caption = from_stack_1
  loc_BD00BC: FFree1Str var_144
  loc_BD00BF: FFree1Ad var_98
  loc_BD00C2: FFree1Var var_C0 = ""
  loc_BD00C5: Branch loc_BD0933
  loc_BD00C8: FLdRfVar var_C0
  loc_BD00CB: FLdRfVar var_B0
  loc_BD00CE: LitVarStr var_AC, "Tipo"
  loc_BD00D3: PopAdLdVar
  loc_BD00D4: FLdRfVar var_9C
  loc_BD00D7: FLdRfVar var_98
  loc_BD00DA: FLdPr Me
  loc_BD00DD: MemLdRfVar from_stack_1.global_52
  loc_BD00E0: NewIfNullPr clsimputacion
  loc_BD00E3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD00E8: FLdPr var_98
  loc_BD00EB:  = Me.Fields
  loc_BD00F0: FLdPr var_9C
  loc_BD00F3: from_stack_2 = Me.Item(from_stack_1)
  loc_BD00F8: FLdPr var_B0
  loc_BD00FB:  = Me.Value
  loc_BD0100: FLdRfVar var_C0
  loc_BD0103: LitVarStr var_D0, "Debito"
  loc_BD0108: HardType
  loc_BD0109: EqVarBool
  loc_BD010B: FFreeAd var_98 = "": var_9C = ""
  loc_BD0114: FFree1Var var_C0 = ""
  loc_BD0117: BranchF loc_BD0933
  loc_BD011A: LitStr "SELECT (SELECT IF(r.CucuPers IS NULL,'No','Si') FROM retexprov r WHERE r.PeriInfo = d.PeriInfo AND r.CucuPers = d.CucuPers GROUP BY r.CucuPers) TieneRete, d.*"
  loc_BD011D: LitStr ", Left(d.NumeFact,3) TifaDeve, Mid(d.NumeFact,4,4) SufaDeve, Right(d.NumeFact,8) NufaDeve"
  loc_BD0120: ConcatStr
  loc_BD0121: FStStrNoPop var_144
  loc_BD0124: LitStr ", DetaProv, 0 AS CodiOrco"
  loc_BD0127: ConcatStr
  loc_BD0128: FStStrNoPop var_148
  loc_BD012B: LitStr ", ImpoDebi-Sum(IF(ImpoImpu IS NULL,0,ImpoImpu)) saldo"
  loc_BD012E: ConcatStr
  loc_BD012F: FStStrNoPop var_14C
  loc_BD0132: LitStr ", IF(LENGTH(p.CubaProv)=22,'Si','No') TieneCBU"
  loc_BD0135: ConcatStr
  loc_BD0136: FStStrNoPop var_150
  loc_BD0139: LitStr " FROM debito d USE INDEX (idxdebi02)"
  loc_BD013C: ConcatStr
  loc_BD013D: FStStrNoPop var_154
  loc_BD0140: LitStr " INNER JOIN proveedor p ON p.CucuPers = d.CucuPers"
  loc_BD0143: ConcatStr
  loc_BD0144: FStStrNoPop var_158
  loc_BD0147: LitStr " LEFT JOIN liquidadeta ld USE INDEX (idxlide02) ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi"
  loc_BD014A: ConcatStr
  loc_BD014B: FStStrNoPop var_15C
  loc_BD014E: LitStr " AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu) IS NULL"
  loc_BD0151: ConcatStr
  loc_BD0152: FStStrNoPop var_160
  loc_BD0155: LitStr " AND FeanLide IS NULL"
  loc_BD0158: ConcatStr
  loc_BD0159: FStStrNoPop var_164
  loc_BD015C: LitStr " WHERE d.PeriInfo = "
  loc_BD015F: ConcatStr
  loc_BD0160: FStStrNoPop var_168
  loc_BD0163: ImpAdLdI2 MemVar_C3D064
  loc_BD0166: CStrUI1
  loc_BD0168: FStStrNoPop var_16C
  loc_BD016B: ConcatStr
  loc_BD016C: FStStrNoPop var_1A0
  loc_BD016F: LitStr " AND d.ExpeImpu = '"
  loc_BD0172: ConcatStr
  loc_BD0173: CVarStr var_E0
  loc_BD0176: FLdRfVar var_C0
  loc_BD0179: FLdRfVar var_B0
  loc_BD017C: LitVarStr var_AC, "ExpeImpu"
  loc_BD0181: PopAdLdVar
  loc_BD0182: FLdRfVar var_9C
  loc_BD0185: FLdRfVar var_98
  loc_BD0188: FLdPr Me
  loc_BD018B: MemLdRfVar from_stack_1.global_52
  loc_BD018E: NewIfNullPr clsimputacion
  loc_BD0191: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD0196: FLdPr var_98
  loc_BD0199:  = Me.Fields
  loc_BD019E: FLdPr var_9C
  loc_BD01A1: from_stack_2 = Me.Item(from_stack_1)
  loc_BD01A6: FLdPr var_B0
  loc_BD01A9:  = Me.Value
  loc_BD01AE: FLdRfVar var_C0
  loc_BD01B1: ConcatVar var_10C
  loc_BD01B5: LitVarStr var_D0, "'"
  loc_BD01BA: ConcatVar var_12C
  loc_BD01BE: LitVarStr var_F8, " AND FeanDebi Is Null"
  loc_BD01C3: ConcatVar var_13C
  loc_BD01C7: LitVarStr var_11C, " GROUP BY d.PeriInfo, d.NumeDebi"
  loc_BD01CC: ConcatVar var_17C
  loc_BD01D0: LitVarStr var_18C, " HAVING saldo > 0"
  loc_BD01D5: ConcatVar var_19C
  loc_BD01D9: LitVarStr var_268, " ORDER BY d.ExpeImpu, DetaProv, d.CucuPers, d.ExpeImpu, d.CodiCuco, d.NumeDebi;"
  loc_BD01DE: ConcatVar var_1B4
  loc_BD01E2: CStrVarVal var_63C
  loc_BD01E6: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BD01EB: FFreeStr var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_16C = "": var_1A0 = ""
  loc_BD0208: FFreeAd var_98 = "": var_9C = ""
  loc_BD0211: FFreeVar var_E0 = "": var_C0 = "": var_10C = "": var_12C = "": var_13C = "": var_17C = "": var_19C = ""
  loc_BD0224: FLdRfVar var_94
  loc_BD0227: ImpAdLdPr unk_4AE69F
  loc_BD022A: MemLdPr global_0
  loc_BD022D:  = Me.RecordCount
  loc_BD0232: ILdRf var_94
  loc_BD0235: LitI4 0
  loc_BD023A: GtI4
  loc_BD023B: BranchF loc_BD0933
  loc_BD023E: Call Proc_119_28_A2ECB8()
  loc_BD0243: LitI2_Byte 0
  loc_BD0245: CR8I2
  loc_BD0246: FStFPR8 var_8C
  loc_BD0249: ImpAdLdPr unk_4AE69F
  loc_BD024C: MemLdPr global_0
  loc_BD024F: Me.MoveFirst
  loc_BD0254: FLdRfVar var_13E
  loc_BD0257: ImpAdLdPr unk_4AE69F
  loc_BD025A: MemLdPr global_0
  loc_BD025D:  = Me.EOF
  loc_BD0262: FLdI2 var_13E
  loc_BD0265: NotI4
  loc_BD0266: BranchF loc_BD08F4
  loc_BD0269: FLdRfVar var_26C
  loc_BD026C: LitVarStr var_268, "SufaDeve"
  loc_BD0271: PopAdLdVar
  loc_BD0272: FLdRfVar var_258
  loc_BD0275: ImpAdLdPr unk_4AE69F
  loc_BD0278: MemLdPr global_0
  loc_BD027B:  = Me.Fields
  loc_BD0280: FLdPr var_258
  loc_BD0283: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0288: FLdRfVar var_2D4
  loc_BD028B: LitVarStr var_2D0, "NufaDeve"
  loc_BD0290: PopAdLdVar
  loc_BD0291: FLdRfVar var_2C0
  loc_BD0294: ImpAdLdPr unk_4AE69F
  loc_BD0297: MemLdPr global_0
  loc_BD029A:  = Me.Fields
  loc_BD029F: FLdPr var_2C0
  loc_BD02A2: from_stack_2 = Me.Item(from_stack_1)
  loc_BD02A7: FLdRfVar var_514
  loc_BD02AA: LitVarStr var_448, "Saldo"
  loc_BD02AF: PopAdLdVar
  loc_BD02B0: FLdRfVar var_500
  loc_BD02B3: ImpAdLdPr unk_4AE69F
  loc_BD02B6: MemLdPr global_0
  loc_BD02B9:  = Me.Fields
  loc_BD02BE: FLdPr var_500
  loc_BD02C1: from_stack_2 = Me.Item(from_stack_1)
  loc_BD02C6: FLdRfVar var_59C
  loc_BD02C9: LitVarStr var_510, "Saldo"
  loc_BD02CE: PopAdLdVar
  loc_BD02CF: FLdRfVar var_588
  loc_BD02D2: ImpAdLdPr unk_4AE69F
  loc_BD02D5: MemLdPr global_0
  loc_BD02D8:  = Me.Fields
  loc_BD02DD: FLdPr var_588
  loc_BD02E0: from_stack_2 = Me.Item(from_stack_1)
  loc_BD02E5: FLdRfVar var_E0
  loc_BD02E8: FLdRfVar var_9C
  loc_BD02EB: LitVarStr var_AC, "TieneRete"
  loc_BD02F0: PopAdLdVar
  loc_BD02F1: FLdRfVar var_98
  loc_BD02F4: ImpAdLdPr unk_4AE69F
  loc_BD02F7: MemLdPr global_0
  loc_BD02FA:  = Me.Fields
  loc_BD02FF: FLdPr var_98
  loc_BD0302: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0307: FLdPr var_9C
  loc_BD030A:  = Me.Value
  loc_BD030F: FLdRfVar var_E0
  loc_BD0312: LitI4 9
  loc_BD0317: FLdRfVar var_C0
  loc_BD031A: ImpAdCallFPR4  = Chr()
  loc_BD031F: FLdRfVar var_C0
  loc_BD0322: ConcatVar var_10C
  loc_BD0326: FLdRfVar var_12C
  loc_BD0329: FLdRfVar var_E4
  loc_BD032C: LitVarStr var_D0, "CodiCuco"
  loc_BD0331: PopAdLdVar
  loc_BD0332: FLdRfVar var_B0
  loc_BD0335: ImpAdLdPr unk_4AE69F
  loc_BD0338: MemLdPr global_0
  loc_BD033B:  = Me.Fields
  loc_BD0340: FLdPr var_B0
  loc_BD0343: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0348: FLdPr var_E4
  loc_BD034B:  = Me.Value
  loc_BD0350: FLdRfVar var_12C
  loc_BD0353: ConcatVar var_13C
  loc_BD0357: LitI4 9
  loc_BD035C: FLdRfVar var_17C
  loc_BD035F: ImpAdCallFPR4  = Chr()
  loc_BD0364: FLdRfVar var_17C
  loc_BD0367: ConcatVar var_19C
  loc_BD036B: FLdRfVar var_1B4
  loc_BD036E: FLdRfVar var_FC
  loc_BD0371: LitVarStr var_F8, "CodiOrga"
  loc_BD0376: PopAdLdVar
  loc_BD0377: FLdRfVar var_E8
  loc_BD037A: ImpAdLdPr unk_4AE69F
  loc_BD037D: MemLdPr global_0
  loc_BD0380:  = Me.Fields
  loc_BD0385: FLdPr var_E8
  loc_BD0388: from_stack_2 = Me.Item(from_stack_1)
  loc_BD038D: FLdPr var_FC
  loc_BD0390:  = Me.Value
  loc_BD0395: FLdRfVar var_1B4
  loc_BD0398: ConcatVar var_1C4
  loc_BD039C: LitI4 9
  loc_BD03A1: FLdRfVar var_1D4
  loc_BD03A4: ImpAdCallFPR4  = Chr()
  loc_BD03A9: FLdRfVar var_1D4
  loc_BD03AC: ConcatVar var_1E4
  loc_BD03B0: FLdRfVar var_1FC
  loc_BD03B3: FLdRfVar var_1EC
  loc_BD03B6: LitVarStr var_11C, "NumeDebi"
  loc_BD03BB: PopAdLdVar
  loc_BD03BC: FLdRfVar var_1E8
  loc_BD03BF: ImpAdLdPr unk_4AE69F
  loc_BD03C2: MemLdPr global_0
  loc_BD03C5:  = Me.Fields
  loc_BD03CA: FLdPr var_1E8
  loc_BD03CD: from_stack_2 = Me.Item(from_stack_1)
  loc_BD03D2: FLdPr var_1EC
  loc_BD03D5:  = Me.Value
  loc_BD03DA: FLdRfVar var_1FC
  loc_BD03DD: ConcatVar var_20C
  loc_BD03E1: LitI4 9
  loc_BD03E6: FLdRfVar var_21C
  loc_BD03E9: ImpAdCallFPR4  = Chr()
  loc_BD03EE: FLdRfVar var_21C
  loc_BD03F1: ConcatVar var_22C
  loc_BD03F5: FLdRfVar var_244
  loc_BD03F8: FLdRfVar var_234
  loc_BD03FB: LitVarStr var_18C, "TifaDeve"
  loc_BD0400: PopAdLdVar
  loc_BD0401: FLdRfVar var_230
  loc_BD0404: ImpAdLdPr unk_4AE69F
  loc_BD0407: MemLdPr global_0
  loc_BD040A:  = Me.Fields
  loc_BD040F: FLdPr var_230
  loc_BD0412: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0417: FLdPr var_234
  loc_BD041A:  = Me.Value
  loc_BD041F: FLdRfVar var_244
  loc_BD0422: ConcatVar var_254
  loc_BD0426: LitI4 1
  loc_BD042B: LitI4 1
  loc_BD0430: LitVarStr var_28C, "0000"
  loc_BD0435: FStVarCopyObj var_29C
  loc_BD0438: FLdRfVar var_29C
  loc_BD043B: FLdZeroAd var_26C
  loc_BD043E: CVarAd
  loc_BD0442: ImpAdCallI2 Format$(, )
  loc_BD0447: CVarStr var_2AC
  loc_BD044A: ConcatVar var_2BC
  loc_BD044E: LitI4 1
  loc_BD0453: LitI4 1
  loc_BD0458: LitVarStr var_2F4, "00000000"
  loc_BD045D: FStVarCopyObj var_304
  loc_BD0460: FLdRfVar var_304
  loc_BD0463: FLdZeroAd var_2D4
  loc_BD0466: CVarAd
  loc_BD046A: ImpAdCallI2 Format$(, )
  loc_BD046F: CVarStr var_314
  loc_BD0472: ConcatVar var_324
  loc_BD0476: LitI4 9
  loc_BD047B: FLdRfVar var_334
  loc_BD047E: ImpAdCallFPR4  = Chr()
  loc_BD0483: FLdRfVar var_334
  loc_BD0486: ConcatVar var_344
  loc_BD048A: FLdRfVar var_36C
  loc_BD048D: FLdRfVar var_35C
  loc_BD0490: LitVarStr var_358, "CucuPers"
  loc_BD0495: PopAdLdVar
  loc_BD0496: FLdRfVar var_348
  loc_BD0499: ImpAdLdPr unk_4AE69F
  loc_BD049C: MemLdPr global_0
  loc_BD049F:  = Me.Fields
  loc_BD04A4: FLdPr var_348
  loc_BD04A7: from_stack_2 = Me.Item(from_stack_1)
  loc_BD04AC: FLdPr var_35C
  loc_BD04AF:  = Me.Value
  loc_BD04B4: FLdRfVar var_36C
  loc_BD04B7: ConcatVar var_37C
  loc_BD04BB: LitI4 9
  loc_BD04C0: FLdRfVar var_38C
  loc_BD04C3: ImpAdCallFPR4  = Chr()
  loc_BD04C8: FLdRfVar var_38C
  loc_BD04CB: ConcatVar var_39C
  loc_BD04CF: FLdRfVar var_3C4
  loc_BD04D2: FLdRfVar var_3B4
  loc_BD04D5: LitVarStr var_3B0, "DetaProv"
  loc_BD04DA: PopAdLdVar
  loc_BD04DB: FLdRfVar var_3A0
  loc_BD04DE: ImpAdLdPr unk_4AE69F
  loc_BD04E1: MemLdPr global_0
  loc_BD04E4:  = Me.Fields
  loc_BD04E9: FLdPr var_3A0
  loc_BD04EC: from_stack_2 = Me.Item(from_stack_1)
  loc_BD04F1: FLdPr var_3B4
  loc_BD04F4:  = Me.Value
  loc_BD04F9: FLdRfVar var_3C4
  loc_BD04FC: ConcatVar var_3D4
  loc_BD0500: LitI4 9
  loc_BD0505: FLdRfVar var_3E4
  loc_BD0508: ImpAdCallFPR4  = Chr()
  loc_BD050D: FLdRfVar var_3E4
  loc_BD0510: ConcatVar var_3F4
  loc_BD0514: FLdRfVar var_414
  loc_BD0517: FLdRfVar var_44C
  loc_BD051A: LitVarStr var_404, "DetaDebi"
  loc_BD051F: PopAdLdVar
  loc_BD0520: FLdRfVar var_438
  loc_BD0523: ImpAdLdPr unk_4AE69F
  loc_BD0526: MemLdPr global_0
  loc_BD0529:  = Me.Fields
  loc_BD052E: FLdPr var_438
  loc_BD0531: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0536: FLdPr var_44C
  loc_BD0539:  = Me.Value
  loc_BD053E: FLdRfVar var_414
  loc_BD0541: ConcatVar var_424
  loc_BD0545: LitI4 9
  loc_BD054A: FLdRfVar var_434
  loc_BD054D: ImpAdCallFPR4  = Chr()
  loc_BD0552: FLdRfVar var_434
  loc_BD0555: ConcatVar var_45C
  loc_BD0559: LitI4 1
  loc_BD055E: LitI4 1
  loc_BD0563: LitVarStr var_46C, "0.00"
  loc_BD0568: FStVarCopyObj var_48C
  loc_BD056B: FLdRfVar var_48C
  loc_BD056E: FLdZeroAd var_514
  loc_BD0571: CVarAd
  loc_BD0575: ImpAdCallI2 Format$(, )
  loc_BD057A: CVarStr var_49C
  loc_BD057D: ConcatVar var_4AC
  loc_BD0581: LitI4 9
  loc_BD0586: FLdRfVar var_4BC
  loc_BD0589: ImpAdCallFPR4  = Chr()
  loc_BD058E: FLdRfVar var_4BC
  loc_BD0591: ConcatVar var_4DC
  loc_BD0595: LitVarStr var_4CC, "No"
  loc_BD059A: ConcatVar var_4EC
  loc_BD059E: LitI4 9
  loc_BD05A3: FLdRfVar var_4FC
  loc_BD05A6: ImpAdCallFPR4  = Chr()
  loc_BD05AB: FLdRfVar var_4FC
  loc_BD05AE: ConcatVar var_524
  loc_BD05B2: LitI4 1
  loc_BD05B7: LitI4 1
  loc_BD05BC: LitVarStr var_534, "0.00"
  loc_BD05C1: FStVarCopyObj var_554
  loc_BD05C4: FLdRfVar var_554
  loc_BD05C7: FLdZeroAd var_59C
  loc_BD05CA: CVarAd
  loc_BD05CE: ImpAdCallI2 Format$(, )
  loc_BD05D3: CVarStr var_564
  loc_BD05D6: ConcatVar var_574
  loc_BD05DA: LitI4 9
  loc_BD05DF: FLdRfVar var_584
  loc_BD05E2: ImpAdCallFPR4  = Chr()
  loc_BD05E7: FLdRfVar var_584
  loc_BD05EA: ConcatVar var_5AC
  loc_BD05EE: FLdRfVar var_5BC
  loc_BD05F1: FLdRfVar var_5F4
  loc_BD05F4: LitVarStr var_598, "CodiOrco"
  loc_BD05F9: PopAdLdVar
  loc_BD05FA: FLdRfVar var_5E0
  loc_BD05FD: ImpAdLdPr unk_4AE69F
  loc_BD0600: MemLdPr global_0
  loc_BD0603:  = Me.Fields
  loc_BD0608: FLdPr var_5E0
  loc_BD060B: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0610: FLdPr var_5F4
  loc_BD0613:  = Me.Value
  loc_BD0618: FLdRfVar var_5BC
  loc_BD061B: ConcatVar var_5CC
  loc_BD061F: LitI4 9
  loc_BD0624: FLdRfVar var_5DC
  loc_BD0627: ImpAdCallFPR4  = Chr()
  loc_BD062C: FLdRfVar var_5DC
  loc_BD062F: ConcatVar var_604
  loc_BD0633: FLdRfVar var_614
  loc_BD0636: FLdRfVar var_640
  loc_BD0639: LitVarStr var_5F0, "TieneCBU"
  loc_BD063E: PopAdLdVar
  loc_BD063F: FLdRfVar var_638
  loc_BD0642: ImpAdLdPr unk_4AE69F
  loc_BD0645: MemLdPr global_0
  loc_BD0648:  = Me.Fields
  loc_BD064D: FLdPr var_638
  loc_BD0650: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0655: FLdPr var_640
  loc_BD0658:  = Me.Value
  loc_BD065D: FLdRfVar var_614
  loc_BD0660: ConcatVar var_624
  loc_BD0664: CStrVarTmp
  loc_BD0665: CVarStr var_650
  loc_BD0668: PopAdLdVar
  loc_BD0669: FLdPr Me
  loc_BD066C: VCallAd Control_ID_DevengadoFlex
  loc_BD066F: FStAdFunc var_654
  loc_BD0672: FLdPr var_654
  loc_BD0675: LateIdCall
  loc_BD067D: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_E4 = "": var_E8 = "": var_FC = "": var_1E8 = "": var_1EC = "": var_230 = "": var_234 = "": var_258 = "": var_2C0 = "": var_348 = "": var_35C = "": var_3A0 = "": var_3B4 = "": var_438 = "": var_44C = "": var_500 = "": var_588 = "": var_5E0 = "": var_5F4 = "": var_638 = "": var_640 = ""
  loc_BD06B2: FFreeVar var_650 = "": var_39C = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_414 = "": var_424 = "": var_434 = "": var_47C = "": var_48C = "": var_45C = "": var_49C = "": var_4AC = "": var_4BC = "": var_4DC = "": var_4EC = "": var_4FC = "": var_544 = "": var_554 = "": var_524 = "": var_564 = "": var_574 = "": var_584 = "": var_5AC = "": var_5BC = "": var_5CC = "": var_5DC = "": var_604 = "": var_614 = "": var_624 = "": var_E0 = "": var_C0 = "": var_10C = "": var_12C = "": var_13C = "": var_17C = "": var_19C = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = "": var_244 = "": var_27C = "": var_29C = "": var_254 = "": var_2AC = "": var_2E4 = "": var_304 = "": var_2BC = "": var_314 = "": var_324 = "": var_334 = "": var_344 = "": var_36C = "": var_37C = ""
  loc_BD072F: FLdPr Me
  loc_BD0732: VCallAd Control_ID_DevengadoFlex
  loc_BD0735: FStAdFunc var_98
  loc_BD0738: FLdPr var_98
  loc_BD073B: LateIdLdVar var_C0 DispID_4 0
  loc_BD0742: CI4Var
  loc_BD0744: LitI4 1
  loc_BD0749: SubI4
  loc_BD074A: CVarI4
  loc_BD074E: PopAdLdVar
  loc_BD074F: FLdPr Me
  loc_BD0752: VCallAd Control_ID_DevengadoFlex
  loc_BD0755: FStAdFunc var_9C
  loc_BD0758: FLdPr var_9C
  loc_BD075B: LateIdSt
  loc_BD0760: FFreeAd var_98 = ""
  loc_BD0767: FFree1Var var_C0 = ""
  loc_BD076A: LitVarI4
  loc_BD0772: PopAdLdVar
  loc_BD0773: FLdPr Me
  loc_BD0776: VCallAd Control_ID_DevengadoFlex
  loc_BD0779: FStAdFunc var_98
  loc_BD077C: FLdPr var_98
  loc_BD077F: LateIdSt
  loc_BD0784: FFree1Ad var_98
  loc_BD0787: FLdRfVar var_C0
  loc_BD078A: FLdRfVar var_9C
  loc_BD078D: LitVarStr var_AC, "TieneRete"
  loc_BD0792: PopAdLdVar
  loc_BD0793: FLdRfVar var_98
  loc_BD0796: ImpAdLdPr unk_4AE69F
  loc_BD0799: MemLdPr global_0
  loc_BD079C:  = Me.Fields
  loc_BD07A1: FLdPr var_98
  loc_BD07A4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD07A9: FLdPr var_9C
  loc_BD07AC:  = Me.Value
  loc_BD07B1: FLdRfVar var_C0
  loc_BD07B4: LitVarStr var_D0, "Si"
  loc_BD07B9: HardType
  loc_BD07BA: EqVarBool
  loc_BD07BC: FFreeAd var_98 = ""
  loc_BD07C3: FFree1Var var_C0 = ""
  loc_BD07C6: BranchF loc_BD07E9
  loc_BD07C9: LitVarI4
  loc_BD07D1: PopAdLdVar
  loc_BD07D2: FLdPr Me
  loc_BD07D5: VCallAd Control_ID_DevengadoFlex
  loc_BD07D8: FStAdFunc var_98
  loc_BD07DB: FLdPr var_98
  loc_BD07DE: LateIdSt
  loc_BD07E3: FFree1Ad var_98
  loc_BD07E6: Branch loc_BD0806
  loc_BD07E9: LitVarI4
  loc_BD07F1: PopAdLdVar
  loc_BD07F2: FLdPr Me
  loc_BD07F5: VCallAd Control_ID_DevengadoFlex
  loc_BD07F8: FStAdFunc var_98
  loc_BD07FB: FLdPr var_98
  loc_BD07FE: LateIdSt
  loc_BD0803: FFree1Ad var_98
  loc_BD0806: LitVarI4
  loc_BD080E: PopAdLdVar
  loc_BD080F: FLdPr Me
  loc_BD0812: VCallAd Control_ID_DevengadoFlex
  loc_BD0815: FStAdFunc var_98
  loc_BD0818: FLdPr var_98
  loc_BD081B: LateIdSt
  loc_BD0820: FFree1Ad var_98
  loc_BD0823: FLdRfVar var_C0
  loc_BD0826: FLdRfVar var_9C
  loc_BD0829: LitVarStr var_AC, "TieneCBU"
  loc_BD082E: PopAdLdVar
  loc_BD082F: FLdRfVar var_98
  loc_BD0832: ImpAdLdPr unk_4AE69F
  loc_BD0835: MemLdPr global_0
  loc_BD0838:  = Me.Fields
  loc_BD083D: FLdPr var_98
  loc_BD0840: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0845: FLdPr var_9C
  loc_BD0848:  = Me.Value
  loc_BD084D: FLdRfVar var_C0
  loc_BD0850: LitVarStr var_D0, "Si"
  loc_BD0855: HardType
  loc_BD0856: EqVarBool
  loc_BD0858: FFreeAd var_98 = ""
  loc_BD085F: FFree1Var var_C0 = ""
  loc_BD0862: BranchF loc_BD0885
  loc_BD0865: LitVarI4
  loc_BD086D: PopAdLdVar
  loc_BD086E: FLdPr Me
  loc_BD0871: VCallAd Control_ID_DevengadoFlex
  loc_BD0874: FStAdFunc var_98
  loc_BD0877: FLdPr var_98
  loc_BD087A: LateIdSt
  loc_BD087F: FFree1Ad var_98
  loc_BD0882: Branch loc_BD08A2
  loc_BD0885: LitVarI4
  loc_BD088D: PopAdLdVar
  loc_BD088E: FLdPr Me
  loc_BD0891: VCallAd Control_ID_DevengadoFlex
  loc_BD0894: FStAdFunc var_98
  loc_BD0897: FLdPr var_98
  loc_BD089A: LateIdSt
  loc_BD089F: FFree1Ad var_98
  loc_BD08A2: FLdFPR8 var_8C
  loc_BD08A5: CVarR8
  loc_BD08A9: FLdRfVar var_C0
  loc_BD08AC: FLdRfVar var_9C
  loc_BD08AF: LitVarStr var_AC, "Saldo"
  loc_BD08B4: PopAdLdVar
  loc_BD08B5: FLdRfVar var_98
  loc_BD08B8: ImpAdLdPr unk_4AE69F
  loc_BD08BB: MemLdPr global_0
  loc_BD08BE:  = Me.Fields
  loc_BD08C3: FLdPr var_98
  loc_BD08C6: from_stack_2 = Me.Item(from_stack_1)
  loc_BD08CB: FLdPr var_9C
  loc_BD08CE:  = Me.Value
  loc_BD08D3: FLdRfVar var_C0
  loc_BD08D6: AddVar var_E0
  loc_BD08DA: CR4Var
  loc_BD08DB: FStFPR8 var_8C
  loc_BD08DE: FFreeAd var_98 = ""
  loc_BD08E5: FFreeVar var_C0 = ""
  loc_BD08EC: ImpAdCallFPR4 Proc_266_19_9414E0()
  loc_BD08F1: Branch loc_BD0254
  loc_BD08F4: LitI4 1
  loc_BD08F9: LitI4 1
  loc_BD08FE: LitVarStr var_D0, "currency"
  loc_BD0903: FStVarCopyObj var_C0
  loc_BD0906: FLdRfVar var_C0
  loc_BD0909: FLdRfVar var_8C
  loc_BD090C: CVarRef
  loc_BD0911: ImpAdCallI2 Format$(, )
  loc_BD0916: FStStrNoPop var_144
  loc_BD0919: FLdPr Me
  loc_BD091C: VCallAd Control_ID_lblTotalExpeImpu
  loc_BD091F: FStAdFunc var_98
  loc_BD0922: FLdPr var_98
  loc_BD0925: Me.Caption = from_stack_1
  loc_BD092A: FFree1Str var_144
  loc_BD092D: FFree1Ad var_98
  loc_BD0930: FFree1Var var_C0 = ""
  loc_BD0933: FLdRfVar var_C0
  loc_BD0936: FLdRfVar var_B0
  loc_BD0939: LitVarStr var_AC, "ExpeImpu"
  loc_BD093E: PopAdLdVar
  loc_BD093F: FLdRfVar var_9C
  loc_BD0942: FLdRfVar var_98
  loc_BD0945: FLdPr Me
  loc_BD0948: MemLdRfVar from_stack_1.global_52
  loc_BD094B: NewIfNullPr clsimputacion
  loc_BD094E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD0953: FLdPr var_98
  loc_BD0956:  = Me.Fields
  loc_BD095B: FLdPr var_9C
  loc_BD095E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD0963: FLdPr var_B0
  loc_BD0966:  = Me.Value
  loc_BD096B: FLdRfVar var_C0
  loc_BD096E: CStrVarTmp
  loc_BD096F: FStStrNoPop var_144
  loc_BD0972: FLdPr Me
  loc_BD0975: MemStStrCopy
  loc_BD0979: FFree1Str var_144
  loc_BD097C: FFreeAd var_98 = "": var_9C = ""
  loc_BD0985: FFree1Var var_C0 = ""
  loc_BD0988: FLdRfVar var_C0
  loc_BD098B: FLdRfVar var_B0
  loc_BD098E: LitVarStr var_AC, "Tipo"
  loc_BD0993: PopAdLdVar
  loc_BD0994: FLdRfVar var_9C
  loc_BD0997: FLdRfVar var_98
  loc_BD099A: FLdPr Me
  loc_BD099D: MemLdRfVar from_stack_1.global_52
  loc_BD09A0: NewIfNullPr clsimputacion
  loc_BD09A3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BD09A8: FLdPr var_98
  loc_BD09AB:  = Me.Fields
  loc_BD09B0: FLdPr var_9C
  loc_BD09B3: from_stack_2 = Me.Item(from_stack_1)
  loc_BD09B8: FLdPr var_B0
  loc_BD09BB:  = Me.Value
  loc_BD09C0: FLdRfVar var_C0
  loc_BD09C3: CStrVarTmp
  loc_BD09C4: FStStrNoPop var_144
  loc_BD09C7: FLdPr Me
  loc_BD09CA: MemStStrCopy
  loc_BD09CE: FFree1Str var_144
  loc_BD09D1: FFreeAd var_98 = "": var_9C = ""
  loc_BD09DA: FFree1Var var_C0 = ""
  loc_BD09DD: ExitProcHresult
  loc_BD09DE: CStr2Ansi
End Sub

Private Sub cmdCancelar_Click() 'A22304
  'Data Table: 4AE690
  loc_A2215C: LitI2_Byte 0
  loc_A2215E: CUI1I2
  loc_A22160: FLdPr Me
  loc_A22163: MemStUI1
  loc_A22167: ILdRf Me
  loc_A2216A: CastAd
  loc_A2216D: FStAdFunc var_88
  loc_A22170: FLdRfVar var_88
  loc_A22173: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A22178: FFree1Ad var_88
  loc_A2217B: LitI4 0
  loc_A22180: LitI4 0
  loc_A22185: FLdRfVar var_8C
  loc_A22188: Redim
  loc_A22192: FLdPr Me
  loc_A22195: VCallAd Control_ID_dgdABMS
  loc_A22198: CVarAd
  loc_A2219C: ParmAry1St
  loc_A221A2: FLdRfVar var_8C
  loc_A221A5: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A221AA: FLdRfVar var_8C
  loc_A221AD: Erase
  loc_A221AE: LitI2_Byte 0
  loc_A221B0: LitVarI2 var_9C, 0
  loc_A221B5: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A221BA: FFree1Var var_9C = ""
  loc_A221BD: LitVarStr var_AC, vbNullString
  loc_A221C2: PopAdLdVar
  loc_A221C3: FLdPr Me
  loc_A221C6: VCallAd Control_ID_FechLiquMsk
  loc_A221C9: FStAdFunc var_88
  loc_A221CC: FLdPr var_88
  loc_A221CF: LateIdSt
  loc_A221D4: FFree1Ad var_88
  loc_A221D7: LitStr vbNullString
  loc_A221DA: FLdPr Me
  loc_A221DD: VCallAd Control_ID_DetaLiquTxt
  loc_A221E0: FStAdFunc var_88
  loc_A221E3: FLdPr var_88
  loc_A221E6: Me.Text = from_stack_1
  loc_A221EB: FFree1Ad var_88
  loc_A221EE: LitStr vbNullString
  loc_A221F1: FLdPr Me
  loc_A221F4: VCallAd Control_ID_txtDetalleAmpliado
  loc_A221F7: FStAdFunc var_88
  loc_A221FA: FLdPr var_88
  loc_A221FD: Me.Text = from_stack_1
  loc_A22202: FFree1Ad var_88
  loc_A22205: LitI4 0
  loc_A2220A: CI2I4
  loc_A2220B: FLdPr Me
  loc_A2220E: VCallAd Control_ID_chkSeleTodo
  loc_A22211: FStAdFunc var_88
  loc_A22214: FLdPr var_88
  loc_A22217: Me.Value = from_stack_1
  loc_A2221C: FFree1Ad var_88
  loc_A2221F: LitI4 0
  loc_A22224: CI2I4
  loc_A22225: FLdPr Me
  loc_A22228: VCallAd Control_ID_chkSeleCBU
  loc_A2222B: FStAdFunc var_88
  loc_A2222E: FLdPr var_88
  loc_A22231: Me.Value = from_stack_1
  loc_A22236: FFree1Ad var_88
  loc_A22239: LitI4 1
  loc_A2223E: CI2I4
  loc_A2223F: FLdPr Me
  loc_A22242: VCallAd Control_ID_chkGeneRete
  loc_A22245: FStAdFunc var_88
  loc_A22248: FLdPr var_88
  loc_A2224B: Me.Value = from_stack_1
  loc_A22250: FFree1Ad var_88
  loc_A22253: LitI4 0
  loc_A22258: CI2I4
  loc_A22259: FLdPr Me
  loc_A2225C: VCallAd Control_ID_ChkRetieneImportesFijos
  loc_A2225F: FStAdFunc var_88
  loc_A22262: FLdPr var_88
  loc_A22265: Me.Value = from_stack_1
  loc_A2226A: FFree1Ad var_88
  loc_A2226D: LitStr vbNullString
  loc_A22270: FLdPr Me
  loc_A22273: VCallAd Control_ID_lblTotalExpeImpu
  loc_A22276: FStAdFunc var_88
  loc_A22279: FLdPr var_88
  loc_A2227C: Me.Caption = from_stack_1
  loc_A22281: FFree1Ad var_88
  loc_A22284: LitStr vbNullString
  loc_A22287: FLdPr Me
  loc_A2228A: VCallAd Control_ID_lblTotalSeleccionado
  loc_A2228D: FStAdFunc var_88
  loc_A22290: FLdPr var_88
  loc_A22293: Me.Caption = from_stack_1
  loc_A22298: FFree1Ad var_88
  loc_A2229B: ILdRf Me
  loc_A2229E: CastAd
  loc_A222A1: FStAdFunc var_88
  loc_A222A4: FLdRfVar var_88
  loc_A222A7: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A222AC: FFree1Ad var_88
  loc_A222AF: LitI2_Byte 0
  loc_A222B1: CUI1I2
  loc_A222B3: FLdPr Me
  loc_A222B6: MemStUI1
  loc_A222BA: FLdPr Me
  loc_A222BD: VCallAd Control_ID_dgdABMS
  loc_A222C0: FStAdFunc var_C4
  loc_A222C3: LitStr "Devengado/s pendiente/s de Liquidación"
  loc_A222C6: FStStrCopy var_C0
  loc_A222C9: FLdRfVar var_C0
  loc_A222CC: FLdPr Me
  loc_A222CF: MemLdStr global_72
  loc_A222D2: FLdZeroAd var_C4
  loc_A222D5: FStAdFunc var_88
  loc_A222D8: FLdRfVar var_88
  loc_A222DB: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A222E0: FFree1Str var_C0
  loc_A222E3: FFreeAd var_88 = ""
  loc_A222EA: LitVar_FALSE
  loc_A222EE: PopAdLdVar
  loc_A222EF: FLdPr Me
  loc_A222F2: VCallAd Control_ID_ProgressBar
  loc_A222F5: FStAdFunc var_88
  loc_A222F8: FLdPr var_88
  loc_A222FB: LateIdSt
  loc_A22300: FFree1Ad var_88
  loc_A22303: ExitProcHresult
End Sub

Private Function Proc_119_27_A69CE0() 'A69CE0
  'Data Table: 4AE690
  loc_A69998: FLdRfVar var_8E
  loc_A6999B: FLdPr Me
  loc_A6999E: VCallAd Control_ID_chkGeneRete
  loc_A699A1: FStAdFunc var_8C
  loc_A699A4: FLdPr var_8C
  loc_A699A7:  = Me.Value
  loc_A699AC: FLdI2 var_8E
  loc_A699AF: CI4UI1
  loc_A699B0: LitI4 1
  loc_A699B5: EqI4
  loc_A699B6: FFree1Ad var_8C
  loc_A699B9: BranchF loc_A69CD3
  loc_A699BC: LitStr "SELECT * FROM proveedor WHERE CucuPers = "
  loc_A699BF: FLdPr Me
  loc_A699C2: VCallAd Control_ID_DevengadoFlex
  loc_A699C5: FStAdFunc var_8C
  loc_A699C8: FLdPr var_8C
  loc_A699CB: LateIdLdVar var_A0 DispID_10 0
  loc_A699D2: CI4Var
  loc_A699D4: CVarI4
  loc_A699D8: PopAdLdVar
  loc_A699D9: LitVarI4
  loc_A699E1: PopAdLdVar
  loc_A699E2: FLdPr Me
  loc_A699E5: VCallAd Control_ID_DevengadoFlex
  loc_A699E8: FStAdFunc var_E4
  loc_A699EB: FLdPr var_E4
  loc_A699EE: LateIdCallLdVar
  loc_A699F8: CStrVarTmp
  loc_A699F9: FStStrNoPop var_F8
  loc_A699FC: ConcatStr
  loc_A699FD: FStStrNoPop var_FC
  loc_A69A00: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_A69A05: FFreeStr var_F8 = ""
  loc_A69A0C: FFreeAd var_8C = ""
  loc_A69A13: FFreeVar var_A0 = ""
  loc_A69A1A: FLdRfVar var_100
  loc_A69A1D: ImpAdLdPr unk_4AE69F
  loc_A69A20: MemLdPr global_0
  loc_A69A23:  = Me.RecordCount
  loc_A69A28: ILdRf var_100
  loc_A69A2B: LitI4 0
  loc_A69A30: GtI4
  loc_A69A31: BranchF loc_A69CCB
  loc_A69A34: FLdRfVar var_A0
  loc_A69A37: FLdRfVar var_E4
  loc_A69A3A: LitVarStr var_B0, "FactProv"
  loc_A69A3F: PopAdLdVar
  loc_A69A40: FLdRfVar var_8C
  loc_A69A43: ImpAdLdPr unk_4AE69F
  loc_A69A46: MemLdPr global_0
  loc_A69A49:  = Me.Fields
  loc_A69A4E: FLdPr var_8C
  loc_A69A51: from_stack_2 = Me.Item(from_stack_1)
  loc_A69A56: FLdPr var_E4
  loc_A69A59:  = Me.Value
  loc_A69A5E: FLdRfVar var_A0
  loc_A69A61: LitVarStr var_C0, "s/f"
  loc_A69A66: HardType
  loc_A69A67: EqVarBool
  loc_A69A69: FFreeAd var_8C = ""
  loc_A69A70: FFree1Var var_A0 = ""
  loc_A69A73: BranchF loc_A69A7E
  loc_A69A76: LitI2_Byte &HFF
  loc_A69A78: FStI2 var_86
  loc_A69A7B: Branch loc_A69CC8
  loc_A69A7E: LitStr "SELECT *"
  loc_A69A81: LitStr " FROM retexprov"
  loc_A69A84: ConcatStr
  loc_A69A85: FStStrNoPop var_F8
  loc_A69A88: LitStr " WHERE PeriInfo = "
  loc_A69A8B: ConcatStr
  loc_A69A8C: FStStrNoPop var_FC
  loc_A69A8F: ImpAdLdI2 MemVar_C3D064
  loc_A69A92: CStrUI1
  loc_A69A94: FStStrNoPop var_104
  loc_A69A97: ConcatStr
  loc_A69A98: FStStrNoPop var_108
  loc_A69A9B: LitStr " AND CucuPers = "
  loc_A69A9E: ConcatStr
  loc_A69A9F: FStStrNoPop var_10C
  loc_A69AA2: FLdPr Me
  loc_A69AA5: VCallAd Control_ID_DevengadoFlex
  loc_A69AA8: FStAdFunc var_8C
  loc_A69AAB: FLdPr var_8C
  loc_A69AAE: LateIdLdVar var_A0 DispID_10 0
  loc_A69AB5: CI4Var
  loc_A69AB7: CVarI4
  loc_A69ABB: PopAdLdVar
  loc_A69ABC: LitVarI4
  loc_A69AC4: PopAdLdVar
  loc_A69AC5: FLdPr Me
  loc_A69AC8: VCallAd Control_ID_DevengadoFlex
  loc_A69ACB: FStAdFunc var_E4
  loc_A69ACE: FLdPr var_E4
  loc_A69AD1: LateIdCallLdVar
  loc_A69ADB: CStrVarTmp
  loc_A69ADC: FStStrNoPop var_110
  loc_A69ADF: ConcatStr
  loc_A69AE0: FStStrNoPop var_114
  loc_A69AE3: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_A69AE8: FFreeStr var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_A69AF9: FFreeAd var_8C = ""
  loc_A69B00: FFreeVar var_A0 = ""
  loc_A69B07: FLdRfVar var_100
  loc_A69B0A: ImpAdLdPr unk_4AE69F
  loc_A69B0D: MemLdPr global_0
  loc_A69B10:  = Me.RecordCount
  loc_A69B15: ILdRf var_100
  loc_A69B18: LitI4 0
  loc_A69B1D: EqI4
  loc_A69B1E: BranchF loc_A69C4C
  loc_A69B21: LitStr "Municipalidad de Guaymallén"
  loc_A69B24: LitStr "Municipalidad de Rivadavia"
  loc_A69B27: EqStr
  loc_A69B29: BranchF loc_A69B41
  loc_A69B2C: LitI4 0
  loc_A69B31: LitStr "RECUERDE cargar las RETENCIONES del proveedor..."
  loc_A69B34: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A69B39: LitI2_Byte &HFF
  loc_A69B3B: FStI2 var_86
  loc_A69B3E: Branch loc_A69C49
  loc_A69B41: LitStr "Municipalidad de Guaymallén"
  loc_A69B44: LitStr "Municipalidad de Tunuyán"
  loc_A69B47: EqStr
  loc_A69B49: BranchF loc_A69C17
  loc_A69B4C: FLdPr Me
  loc_A69B4F: VCallAd Control_ID_DevengadoFlex
  loc_A69B52: FStAdFunc var_8C
  loc_A69B55: FLdPr var_8C
  loc_A69B58: LateIdLdVar var_A0 DispID_10 0
  loc_A69B5F: CI4Var
  loc_A69B61: CVarI4
  loc_A69B65: PopAdLdVar
  loc_A69B66: LitVarI4
  loc_A69B6E: PopAdLdVar
  loc_A69B6F: FLdPr Me
  loc_A69B72: VCallAd Control_ID_DevengadoFlex
  loc_A69B75: FStAdFunc var_E4
  loc_A69B78: FLdPr var_E4
  loc_A69B7B: LateIdCallLdVar
  loc_A69B85: PopAd
  loc_A69B87: FLdPr Me
  loc_A69B8A: VCallAd Control_ID_DevengadoFlex
  loc_A69B8D: FStAdFunc var_118
  loc_A69B90: FLdPr var_118
  loc_A69B93: LateIdLdVar var_128 DispID_10 0
  loc_A69B9A: CI4Var
  loc_A69B9C: CVarI4
  loc_A69BA0: PopAdLdVar
  loc_A69BA1: LitVarI4
  loc_A69BA9: PopAdLdVar
  loc_A69BAA: FLdPr Me
  loc_A69BAD: VCallAd Control_ID_DevengadoFlex
  loc_A69BB0: FStAdFunc var_16C
  loc_A69BB3: FLdPr var_16C
  loc_A69BB6: LateIdCallLdVar
  loc_A69BC0: PopAd
  loc_A69BC2: LitI4 0
  loc_A69BC7: LitStr "RECUERDE cargar las RETENCIONES del proveedor "
  loc_A69BCA: FLdRfVar var_F4
  loc_A69BCD: CStrVarTmp
  loc_A69BCE: FStStrNoPop var_F8
  loc_A69BD1: ConcatStr
  loc_A69BD2: FStStrNoPop var_FC
  loc_A69BD5: LitStr " - "
  loc_A69BD8: ConcatStr
  loc_A69BD9: FStStrNoPop var_104
  loc_A69BDC: FLdRfVar var_17C
  loc_A69BDF: CStrVarTmp
  loc_A69BE0: FStStrNoPop var_108
  loc_A69BE3: ConcatStr
  loc_A69BE4: FStStrNoPop var_10C
  loc_A69BE7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A69BEC: FFreeStr var_F8 = "": var_FC = "": var_104 = "": var_108 = ""
  loc_A69BF9: FFreeAd var_8C = "": var_E4 = "": var_118 = ""
  loc_A69C04: FFreeVar var_A0 = "": var_F4 = "": var_128 = ""
  loc_A69C0F: LitI2_Byte &HFF
  loc_A69C11: FStI2 var_86
  loc_A69C14: Branch loc_A69C49
  loc_A69C17: LitStr "Municipalidad de Guaymallén"
  loc_A69C1A: LitStr "Municipalidad de La Paz"
  loc_A69C1D: EqStr
  loc_A69C1F: BranchF loc_A69C37
  loc_A69C22: LitI4 0
  loc_A69C27: LitStr "Advertencia: El Proveedor NO tiene datos de retención. Verifique..."
  loc_A69C2A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A69C2F: LitI2_Byte &HFF
  loc_A69C31: FStI2 var_86
  loc_A69C34: Branch loc_A69C49
  loc_A69C37: LitI4 0
  loc_A69C3C: LitStr "El Proveedor NO tiene datos de retención. Verifique..."
  loc_A69C3F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A69C44: LitI2_Byte 0
  loc_A69C46: FStI2 var_86
  loc_A69C49: Branch loc_A69CC8
  loc_A69C4C: FLdPr Me
  loc_A69C4F: VCallAd Control_ID_DevengadoFlex
  loc_A69C52: FStAdFunc var_8C
  loc_A69C55: FLdPr var_8C
  loc_A69C58: LateIdLdVar var_A0 DispID_10 0
  loc_A69C5F: CI4Var
  loc_A69C61: CVarI4
  loc_A69C65: PopAdLdVar
  loc_A69C66: LitVarI4
  loc_A69C6E: PopAdLdVar
  loc_A69C6F: FLdPr Me
  loc_A69C72: VCallAd Control_ID_DevengadoFlex
  loc_A69C75: FStAdFunc var_E4
  loc_A69C78: FLdPr var_E4
  loc_A69C7B: LateIdCallLdVar
  loc_A69C85: PopAd
  loc_A69C87: LitI4 3
  loc_A69C8C: FLdRfVar var_F4
  loc_A69C8F: CStrVarTmp
  loc_A69C90: CVarStr var_128
  loc_A69C93: FLdRfVar var_17C
  loc_A69C96: ImpAdCallFPR4  = Left(, )
  loc_A69C9B: FLdRfVar var_17C
  loc_A69C9E: LitVarStr var_138, "s/f"
  loc_A69CA3: HardType
  loc_A69CA4: EqVarBool
  loc_A69CA6: FFreeAd var_8C = ""
  loc_A69CAD: FFreeVar var_A0 = "": var_F4 = "": var_128 = ""
  loc_A69CB8: BranchF loc_A69CC3
  loc_A69CBB: LitI2_Byte 0
  loc_A69CBD: FStI2 var_86
  loc_A69CC0: Branch loc_A69CC8
  loc_A69CC3: LitI2_Byte &HFF
  loc_A69CC5: FStI2 var_86
  loc_A69CC8: Branch loc_A69CD0
  loc_A69CCB: LitI2_Byte 0
  loc_A69CCD: FStI2 var_86
  loc_A69CD0: Branch loc_A69CD8
  loc_A69CD3: LitI2_Byte &HFF
  loc_A69CD5: FStI2 var_86
  loc_A69CD8: ExitProcCbHresult
End Function

Private Function Proc_119_28_A2ECB8(arg_18) 'A2ECB8
  'Data Table: 4AE690
  loc_A2EAB8: FLdPr Me
  loc_A2EABB: VCallAd Control_ID_DevengadoFlex
  loc_A2EABE: FStAdFunc var_88
  loc_A2EAC1: FLdPr var_88
  loc_A2EAC4: LateIdCall
  loc_A2EACC: LitVarI4
  loc_A2EAD4: PopAdLdVar
  loc_A2EAD5: FLdPr var_88
  loc_A2EAD8: LateIdSt
  loc_A2EADD: LitVarI4
  loc_A2EAE5: PopAdLdVar
  loc_A2EAE6: LitVarI4
  loc_A2EAEE: PopAdLdVar
  loc_A2EAEF: LitVarStr var_D8, "Ret."
  loc_A2EAF4: PopAdLdVar
  loc_A2EAF5: FLdPr var_88
  loc_A2EAF8: LateIdCallSt
  loc_A2EB00: LitVarI4
  loc_A2EB08: PopAdLdVar
  loc_A2EB09: LitVarI4
  loc_A2EB11: PopAdLdVar
  loc_A2EB12: LitVarStr var_D8, "Cuenta"
  loc_A2EB17: PopAdLdVar
  loc_A2EB18: FLdPr var_88
  loc_A2EB1B: LateIdCallSt
  loc_A2EB23: LitVarI4
  loc_A2EB2B: PopAdLdVar
  loc_A2EB2C: LitVarI4
  loc_A2EB34: PopAdLdVar
  loc_A2EB35: LitVarStr var_D8, "Organigr."
  loc_A2EB3A: PopAdLdVar
  loc_A2EB3B: FLdPr var_88
  loc_A2EB3E: LateIdCallSt
  loc_A2EB46: LitVarI4
  loc_A2EB4E: PopAdLdVar
  loc_A2EB4F: LitVarI4
  loc_A2EB57: PopAdLdVar
  loc_A2EB58: LitVarStr var_D8, "Nro."
  loc_A2EB5D: PopAdLdVar
  loc_A2EB5E: FLdPr var_88
  loc_A2EB61: LateIdCallSt
  loc_A2EB69: LitVarI4
  loc_A2EB71: PopAdLdVar
  loc_A2EB72: LitVarI4
  loc_A2EB7A: PopAdLdVar
  loc_A2EB7B: LitVarStr var_D8, "Nro. de Factura"
  loc_A2EB80: PopAdLdVar
  loc_A2EB81: FLdPr var_88
  loc_A2EB84: LateIdCallSt
  loc_A2EB8C: LitVarI4
  loc_A2EB94: PopAdLdVar
  loc_A2EB95: LitVarI4
  loc_A2EB9D: PopAdLdVar
  loc_A2EB9E: LitVarStr var_D8, "CUIT/CUIL"
  loc_A2EBA3: PopAdLdVar
  loc_A2EBA4: FLdPr var_88
  loc_A2EBA7: LateIdCallSt
  loc_A2EBAF: LitVarI4
  loc_A2EBB7: PopAdLdVar
  loc_A2EBB8: LitVarI4
  loc_A2EBC0: PopAdLdVar
  loc_A2EBC1: LitVarStr var_D8, "Proveedor"
  loc_A2EBC6: PopAdLdVar
  loc_A2EBC7: FLdPr var_88
  loc_A2EBCA: LateIdCallSt
  loc_A2EBD2: LitVarI4
  loc_A2EBDA: PopAdLdVar
  loc_A2EBDB: LitVarI4
  loc_A2EBE3: PopAdLdVar
  loc_A2EBE4: LitVarStr var_D8, "Detalle"
  loc_A2EBE9: PopAdLdVar
  loc_A2EBEA: FLdPr var_88
  loc_A2EBED: LateIdCallSt
  loc_A2EBF5: LitVarI4
  loc_A2EBFD: PopAdLdVar
  loc_A2EBFE: LitVarI4
  loc_A2EC06: PopAdLdVar
  loc_A2EC07: LitVarStr var_D8, "Importe"
  loc_A2EC0C: PopAdLdVar
  loc_A2EC0D: FLdPr var_88
  loc_A2EC10: LateIdCallSt
  loc_A2EC18: LitVarI4
  loc_A2EC20: PopAdLdVar
  loc_A2EC21: LitVarI4
  loc_A2EC29: PopAdLdVar
  loc_A2EC2A: LitVarStr var_D8, "Sel"
  loc_A2EC2F: PopAdLdVar
  loc_A2EC30: FLdPr var_88
  loc_A2EC33: LateIdCallSt
  loc_A2EC3B: LitVarI4
  loc_A2EC43: PopAdLdVar
  loc_A2EC44: LitVarI4
  loc_A2EC4C: PopAdLdVar
  loc_A2EC4D: LitVarStr var_D8, "Imp. Ini"
  loc_A2EC52: PopAdLdVar
  loc_A2EC53: FLdPr var_88
  loc_A2EC56: LateIdCallSt
  loc_A2EC5E: LitVarI4
  loc_A2EC66: PopAdLdVar
  loc_A2EC67: LitVarI4
  loc_A2EC6F: PopAdLdVar
  loc_A2EC70: LitVarStr var_D8, "O.C."
  loc_A2EC75: PopAdLdVar
  loc_A2EC76: FLdPr var_88
  loc_A2EC79: LateIdCallSt
  loc_A2EC81: LitVarI4
  loc_A2EC89: PopAdLdVar
  loc_A2EC8A: LitVarI4
  loc_A2EC92: PopAdLdVar
  loc_A2EC93: LitVarStr var_D8, "CBU"
  loc_A2EC98: PopAdLdVar
  loc_A2EC99: FLdPr var_88
  loc_A2EC9C: LateIdCallSt
  loc_A2ECA4: FLdPr var_88
  loc_A2ECA7: LateIdCall
  loc_A2ECAF: LitNothing
  loc_A2ECB1: FStAd var_88 
  loc_A2ECB5: ExitProcHresult
  loc_A2ECB6: FStAdFunc arg_1868
End Function

Private Function Proc_119_29_A27314() 'A27314
  'Data Table: 4AE690
  loc_A27150: FLdRfVar var_B4
  loc_A27153: FLdRfVar var_A4
  loc_A27156: LitVarStr var_A0, "Tipo"
  loc_A2715B: PopAdLdVar
  loc_A2715C: FLdRfVar var_90
  loc_A2715F: FLdRfVar var_8C
  loc_A27162: FLdPr Me
  loc_A27165: MemLdRfVar from_stack_1.global_52
  loc_A27168: NewIfNullPr clsimputacion
  loc_A2716B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A27170: FLdPr var_8C
  loc_A27173:  = Me.Fields
  loc_A27178: FLdPr var_90
  loc_A2717B: from_stack_2 = Me.Item(from_stack_1)
  loc_A27180: FLdPr var_A4
  loc_A27183:  = Me.Value
  loc_A27188: FLdRfVar var_B4
  loc_A2718B: LitVarStr var_C4, "Devengado"
  loc_A27190: HardType
  loc_A27191: EqVarBool
  loc_A27193: FFreeAd var_8C = "": var_90 = ""
  loc_A2719C: FFree1Var var_B4 = ""
  loc_A2719F: BranchF loc_A272BB
  loc_A271A2: FLdPr Me
  loc_A271A5: MemLdStr global_76
  loc_A271A8: LitStr vbNullString
  loc_A271AB: EqStr
  loc_A271AD: BranchF loc_A27225
  loc_A271B0: FLdPr Me
  loc_A271B3: VCallAd Control_ID_DevengadoFlex
  loc_A271B6: FStAdFunc var_8C
  loc_A271B9: FLdPr var_8C
  loc_A271BC: LateIdLdVar var_B4 DispID_10 0
  loc_A271C3: CI4Var
  loc_A271C5: CVarI4
  loc_A271C9: PopAdLdVar
  loc_A271CA: LitVarI4
  loc_A271D2: PopAdLdVar
  loc_A271D3: FLdPr Me
  loc_A271D6: VCallAd Control_ID_DevengadoFlex
  loc_A271D9: FStAdFunc var_90
  loc_A271DC: FLdPr var_90
  loc_A271DF: LateIdCallLdVar
  loc_A271E9: PopAd
  loc_A271EB: FLdRfVar var_FC
  loc_A271EE: FLdRfVar var_D4
  loc_A271F1: CStrVarTmp
  loc_A271F2: FStStrNoPop var_F8
  loc_A271F5: ImpAdLdI2 MemVar_C3D064
  loc_A271F8: FLdPr Me
  loc_A271FB: MemLdRfVar from_stack_1.global_52
  loc_A271FE: NewIfNullPr clsimputacion
  loc_A27201: from_stack_3v = clsimputacion.TipoPago(from_stack_1v, from_stack_2v)
  loc_A27206: ILdRf var_FC
  loc_A27209: FLdPr Me
  loc_A2720C: MemStStrCopy
  loc_A27210: FFreeStr var_F8 = ""
  loc_A27217: FFreeAd var_8C = ""
  loc_A2721E: FFreeVar var_B4 = ""
  loc_A27225: FLdPr Me
  loc_A27228: VCallAd Control_ID_DevengadoFlex
  loc_A2722B: FStAdFunc var_8C
  loc_A2722E: FLdPr var_8C
  loc_A27231: LateIdLdVar var_B4 DispID_10 0
  loc_A27238: CI4Var
  loc_A2723A: CVarI4
  loc_A2723E: PopAdLdVar
  loc_A2723F: LitVarI4
  loc_A27247: PopAdLdVar
  loc_A27248: FLdPr Me
  loc_A2724B: VCallAd Control_ID_DevengadoFlex
  loc_A2724E: FStAdFunc var_90
  loc_A27251: FLdPr var_90
  loc_A27254: LateIdCallLdVar
  loc_A2725E: PopAd
  loc_A27260: FLdPr Me
  loc_A27263: MemLdStr global_76
  loc_A27266: FLdRfVar var_FC
  loc_A27269: FLdRfVar var_D4
  loc_A2726C: CStrVarTmp
  loc_A2726D: FStStrNoPop var_F8
  loc_A27270: ImpAdLdI2 MemVar_C3D064
  loc_A27273: FLdPr Me
  loc_A27276: MemLdRfVar from_stack_1.global_52
  loc_A27279: NewIfNullPr clsimputacion
  loc_A2727C: from_stack_3v = clsimputacion.TipoPago(from_stack_1v, from_stack_2v)
  loc_A27281: ILdRf var_FC
  loc_A27284: EqStr
  loc_A27286: FFreeStr var_F8 = ""
  loc_A2728D: FFreeAd var_8C = ""
  loc_A27294: FFreeVar var_B4 = ""
  loc_A2729B: BranchF loc_A272A6
  loc_A2729E: LitI2_Byte &HFF
  loc_A272A0: FStI2 var_86
  loc_A272A3: Branch loc_A272B8
  loc_A272A6: LitI4 0
  loc_A272AB: LitStr "Debe seleccionar un solo tipo de pago (Presupuestario,Extrapresup.,Residuo presup,Residuo extrapresup.). Verifique..."
  loc_A272AE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A272B3: LitI2_Byte 0
  loc_A272B5: FStI2 var_86
  loc_A272B8: Branch loc_A2730D
  loc_A272BB: FLdRfVar var_B4
  loc_A272BE: FLdRfVar var_A4
  loc_A272C1: LitVarStr var_A0, "Tipo"
  loc_A272C6: PopAdLdVar
  loc_A272C7: FLdRfVar var_90
  loc_A272CA: FLdRfVar var_8C
  loc_A272CD: FLdPr Me
  loc_A272D0: MemLdRfVar from_stack_1.global_52
  loc_A272D3: NewIfNullPr clsimputacion
  loc_A272D6: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A272DB: FLdPr var_8C
  loc_A272DE:  = Me.Fields
  loc_A272E3: FLdPr var_90
  loc_A272E6: from_stack_2 = Me.Item(from_stack_1)
  loc_A272EB: FLdPr var_A4
  loc_A272EE:  = Me.Value
  loc_A272F3: FLdRfVar var_B4
  loc_A272F6: LitVarStr var_C4, "Debito"
  loc_A272FB: HardType
  loc_A272FC: EqVarBool
  loc_A272FE: FFreeAd var_8C = "": var_90 = ""
  loc_A27307: FFree1Var var_B4 = ""
  loc_A2730A: BranchF loc_A2730D
  loc_A2730D: ExitProcCbHresult
End Function

Private Function Proc_119_30_B4BDA8() 'B4BDA8
  'Data Table: 4AE690
  loc_B4B318: FLdRfVar var_B0
  loc_B4B31B: FLdRfVar var_A0
  loc_B4B31E: LitVarStr var_9C, "Tipo"
  loc_B4B323: PopAdLdVar
  loc_B4B324: FLdRfVar var_8C
  loc_B4B327: FLdRfVar var_88
  loc_B4B32A: FLdPr Me
  loc_B4B32D: MemLdRfVar from_stack_1.global_52
  loc_B4B330: NewIfNullPr clsimputacion
  loc_B4B333: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4B338: FLdPr var_88
  loc_B4B33B:  = Me.Fields
  loc_B4B340: FLdPr var_8C
  loc_B4B343: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B348: FLdPr var_A0
  loc_B4B34B:  = Me.Value
  loc_B4B350: FLdRfVar var_B0
  loc_B4B353: LitVarStr var_C0, "Devengado"
  loc_B4B358: HardType
  loc_B4B359: EqVarBool
  loc_B4B35B: FFreeAd var_88 = "": var_8C = ""
  loc_B4B364: FFree1Var var_B0 = ""
  loc_B4B367: BranchF loc_B4B723
  loc_B4B36A: FLdPr Me
  loc_B4B36D: VCallAd Control_ID_DevengadoFlex
  loc_B4B370: FStAdFunc var_88
  loc_B4B373: FLdPr var_88
  loc_B4B376: LateIdLdVar var_B0 DispID_10 0
  loc_B4B37D: CI4Var
  loc_B4B37F: CVarI4
  loc_B4B383: PopAdLdVar
  loc_B4B384: LitVarI4
  loc_B4B38C: PopAdLdVar
  loc_B4B38D: FLdPr Me
  loc_B4B390: VCallAd Control_ID_DevengadoFlex
  loc_B4B393: FStAdFunc var_8C
  loc_B4B396: FLdPr var_8C
  loc_B4B399: LateIdCallLdVar
  loc_B4B3A3: PopAd
  loc_B4B3A5: FLdPr Me
  loc_B4B3A8: VCallAd Control_ID_DevengadoFlex
  loc_B4B3AB: FStAdFunc var_A0
  loc_B4B3AE: FLdPr var_A0
  loc_B4B3B1: LateIdLdVar var_104 DispID_10 0
  loc_B4B3B8: CI4Var
  loc_B4B3BA: CVarI4
  loc_B4B3BE: PopAdLdVar
  loc_B4B3BF: LitVarI4
  loc_B4B3C7: PopAdLdVar
  loc_B4B3C8: FLdPr Me
  loc_B4B3CB: VCallAd Control_ID_DevengadoFlex
  loc_B4B3CE: FStAdFunc var_148
  loc_B4B3D1: FLdPr var_148
  loc_B4B3D4: LateIdCallLdVar
  loc_B4B3DE: PopAd
  loc_B4B3E0: FLdRfVar var_D2
  loc_B4B3E3: from_stack_1v = Proc_119_27_A69CE0()
  loc_B4B3E8: FLdI2 var_D2
  loc_B4B3EB: FLdRfVar var_162
  loc_B4B3EE: FLdRfVar var_158
  loc_B4B3F1: CStrVarTmp
  loc_B4B3F2: FStStrNoPop var_160
  loc_B4B3F5: CI4Str
  loc_B4B3F6: FLdRfVar var_D0
  loc_B4B3F9: CStrVarTmp
  loc_B4B3FA: FStStrNoPop var_15C
  loc_B4B3FD: FLdPr Me
  loc_B4B400: MemLdRfVar from_stack_1.global_52
  loc_B4B403: NewIfNullPr clsimputacion
  loc_B4B406: from_stack_3v = clsimputacion.ValidoElInventario(from_stack_1v, from_stack_2v)
  loc_B4B40B: FLdI2 var_162
  loc_B4B40E: AndI4
  loc_B4B40F: FLdRfVar var_164
  loc_B4B412: from_stack_1v = Proc_119_29_A27314()
  loc_B4B417: FLdI2 var_164
  loc_B4B41A: AndI4
  loc_B4B41B: FFreeStr var_15C = ""
  loc_B4B422: FFreeAd var_88 = "": var_8C = "": var_A0 = ""
  loc_B4B42D: FFreeVar var_B0 = "": var_D0 = "": var_104 = ""
  loc_B4B438: BranchF loc_B4B720
  loc_B4B43B: FLdPr Me
  loc_B4B43E: VCallAd Control_ID_DevengadoFlex
  loc_B4B441: FStAdFunc var_88
  loc_B4B444: FLdPr var_88
  loc_B4B447: LateIdLdVar var_B0 DispID_10 0
  loc_B4B44E: CI4Var
  loc_B4B450: CVarI4
  loc_B4B454: PopAdLdVar
  loc_B4B455: LitVarI4
  loc_B4B45D: PopAdLdVar
  loc_B4B45E: LitVarStr var_114, "Si"
  loc_B4B463: PopAdLdVar
  loc_B4B464: FLdPr Me
  loc_B4B467: VCallAd Control_ID_DevengadoFlex
  loc_B4B46A: FStAdFunc var_8C
  loc_B4B46D: FLdPr var_8C
  loc_B4B470: LateIdCallSt
  loc_B4B478: FFreeAd var_88 = ""
  loc_B4B47F: FFree1Var var_B0 = ""
  loc_B4B482: LitI2_Byte 1
  loc_B4B484: FLdPr Me
  loc_B4B487: MemLdRfVar from_stack_1.global_70
  loc_B4B48A: FLdPr Me
  loc_B4B48D: VCallAd Control_ID_DevengadoFlex
  loc_B4B490: FStAdFunc var_88
  loc_B4B493: FLdPr var_88
  loc_B4B496: LateIdLdVar var_B0 DispID_5 0
  loc_B4B49D: CI4Var
  loc_B4B49F: LitI4 2
  loc_B4B4A4: SubI4
  loc_B4B4A5: CI2I4
  loc_B4B4A6: FFree1Ad var_88
  loc_B4B4A9: FFree1Var var_B0 = ""
  loc_B4B4AC: ForI2 var_168
  loc_B4B4B2: FLdPr Me
  loc_B4B4B5: MemLdI2 global_70
  loc_B4B4B8: CI4UI1
  loc_B4B4B9: CVarI4
  loc_B4B4BD: PopAdLdVar
  loc_B4B4BE: FLdPr Me
  loc_B4B4C1: VCallAd Control_ID_DevengadoFlex
  loc_B4B4C4: FStAdFunc var_88
  loc_B4B4C7: FLdPr var_88
  loc_B4B4CA: LateIdSt
  loc_B4B4CF: FFree1Ad var_88
  loc_B4B4D2: LitVarI4
  loc_B4B4DA: PopAdLdVar
  loc_B4B4DB: FLdPr Me
  loc_B4B4DE: VCallAd Control_ID_DevengadoFlex
  loc_B4B4E1: FStAdFunc var_88
  loc_B4B4E4: FLdPr var_88
  loc_B4B4E7: LateIdSt
  loc_B4B4EC: FFree1Ad var_88
  loc_B4B4EF: FLdPr Me
  loc_B4B4F2: MemLdRfVar from_stack_1.global_70
  loc_B4B4F5: NextI2 var_168, loc_B4B4B2
  loc_B4B4FA: FLdRfVar var_15C
  loc_B4B4FD: FLdPr Me
  loc_B4B500: VCallAd Control_ID_lblTotalSeleccionado
  loc_B4B503: FStAdFunc var_88
  loc_B4B506: FLdPr var_88
  loc_B4B509:  = Me.Caption
  loc_B4B50E: FLdRfVar var_160
  loc_B4B511: FLdPr Me
  loc_B4B514: VCallAd Control_ID_lblTotalSeleccionado
  loc_B4B517: FStAdFunc var_8C
  loc_B4B51A: FLdPr var_8C
  loc_B4B51D:  = Me.Caption
  loc_B4B522: FLdZeroAd var_160
  loc_B4B525: CVarStr var_D0
  loc_B4B528: LitVarI2 var_B0, 0
  loc_B4B52D: ILdRf var_15C
  loc_B4B530: LitStr vbNullString
  loc_B4B533: EqStr
  loc_B4B535: CVarBoolI2 var_9C
  loc_B4B539: FLdRfVar var_104
  loc_B4B53C: ImpAdCallFPR4  = IIf(, , )
  loc_B4B541: FLdPr Me
  loc_B4B544: VCallAd Control_ID_DevengadoFlex
  loc_B4B547: FStAdFunc var_A0
  loc_B4B54A: FLdPr var_A0
  loc_B4B54D: LateIdLdVar var_158 DispID_10 0
  loc_B4B554: CI4Var
  loc_B4B556: CVarI4
  loc_B4B55A: PopAdLdVar
  loc_B4B55B: LitVarI4
  loc_B4B563: PopAdLdVar
  loc_B4B564: FLdPr Me
  loc_B4B567: VCallAd Control_ID_DevengadoFlex
  loc_B4B56A: FStAdFunc var_148
  loc_B4B56D: FLdPr var_148
  loc_B4B570: LateIdCallLdVar
  loc_B4B57A: PopAd
  loc_B4B57C: LitI4 1
  loc_B4B581: LitI4 1
  loc_B4B586: LitVarStr var_144, "currency"
  loc_B4B58B: FStVarCopyObj var_19C
  loc_B4B58E: FLdRfVar var_19C
  loc_B4B591: FLdRfVar var_104
  loc_B4B594: FnCDblVar
  loc_B4B596: FLdRfVar var_178
  loc_B4B599: CStrVarTmp
  loc_B4B59A: FStStrNoPop var_17C
  loc_B4B59D: CR8Str
  loc_B4B59F: AddR8
  loc_B4B5A0: CVarR8
  loc_B4B5A4: ImpAdCallI2 Format$(, )
  loc_B4B5A9: FStStrNoPop var_1A0
  loc_B4B5AC: FLdPr Me
  loc_B4B5AF: VCallAd Control_ID_lblTotalSeleccionado
  loc_B4B5B2: FStAdFunc var_1A4
  loc_B4B5B5: FLdPr var_1A4
  loc_B4B5B8: Me.Caption = from_stack_1
  loc_B4B5BD: FFreeStr var_15C = "": var_17C = ""
  loc_B4B5C6: FFreeAd var_88 = "": var_8C = "": var_A0 = "": var_148 = ""
  loc_B4B5D3: FFreeVar var_9C = "": var_B0 = "": var_D0 = "": var_104 = "": var_104 = "": var_158 = "": var_178 = "": var_18C = ""
  loc_B4B5E8: FLdPr Me
  loc_B4B5EB: MemLdStr global_84
  loc_B4B5EE: FLdPr Me
  loc_B4B5F1: VCallAd Control_ID_DevengadoFlex
  loc_B4B5F4: FStAdFunc var_88
  loc_B4B5F7: FLdPr var_88
  loc_B4B5FA: LateIdLdVar var_B0 DispID_10 0
  loc_B4B601: CI4Var
  loc_B4B603: CVarI4
  loc_B4B607: PopAdLdVar
  loc_B4B608: LitVarI4
  loc_B4B610: PopAdLdVar
  loc_B4B611: FLdPr Me
  loc_B4B614: VCallAd Control_ID_DevengadoFlex
  loc_B4B617: FStAdFunc var_8C
  loc_B4B61A: FLdPr var_8C
  loc_B4B61D: LateIdCallLdVar
  loc_B4B627: CStrVarTmp
  loc_B4B628: FStStrNoPop var_15C
  loc_B4B62B: CI2Str
  loc_B4B62D: CI4UI1
  loc_B4B62E: AddI4
  loc_B4B62F: FLdPr Me
  loc_B4B632: MemStI4 global_84
  loc_B4B635: FFree1Str var_15C
  loc_B4B638: FFreeAd var_88 = ""
  loc_B4B63F: FFreeVar var_B0 = ""
  loc_B4B646: FLdPr Me
  loc_B4B649: VCallAd Control_ID_DevengadoFlex
  loc_B4B64C: FStAdFunc var_88
  loc_B4B64F: FLdPr var_88
  loc_B4B652: LateIdLdVar var_B0 DispID_10 0
  loc_B4B659: CI4Var
  loc_B4B65B: CVarI4
  loc_B4B65F: PopAdLdVar
  loc_B4B660: LitVarI4
  loc_B4B668: PopAdLdVar
  loc_B4B669: FLdPr Me
  loc_B4B66C: VCallAd Control_ID_DevengadoFlex
  loc_B4B66F: FStAdFunc var_8C
  loc_B4B672: FLdPr var_8C
  loc_B4B675: LateIdCallLdVar
  loc_B4B67F: CStrVarTmp
  loc_B4B680: FStStrNoPop var_15C
  loc_B4B683: LitStr "0"
  loc_B4B686: EqStr
  loc_B4B688: FLdRfVar var_160
  loc_B4B68B: FLdPr Me
  loc_B4B68E: VCallAd Control_ID_DetaLiquTxt
  loc_B4B691: FStAdFunc var_A0
  loc_B4B694: FLdPr var_A0
  loc_B4B697:  = Me.Text
  loc_B4B69C: ILdRf var_160
  loc_B4B69F: LitStr vbNullString
  loc_B4B6A2: EqStr
  loc_B4B6A4: AndI4
  loc_B4B6A5: FFreeStr var_15C = ""
  loc_B4B6AC: FFreeAd var_88 = "": var_8C = ""
  loc_B4B6B5: FFreeVar var_B0 = ""
  loc_B4B6BC: BranchF loc_B4B720
  loc_B4B6BF: FLdPr Me
  loc_B4B6C2: VCallAd Control_ID_DevengadoFlex
  loc_B4B6C5: FStAdFunc var_88
  loc_B4B6C8: FLdPr var_88
  loc_B4B6CB: LateIdLdVar var_B0 DispID_10 0
  loc_B4B6D2: CI4Var
  loc_B4B6D4: CVarI4
  loc_B4B6D8: PopAdLdVar
  loc_B4B6D9: LitVarI4
  loc_B4B6E1: PopAdLdVar
  loc_B4B6E2: FLdPr Me
  loc_B4B6E5: VCallAd Control_ID_DevengadoFlex
  loc_B4B6E8: FStAdFunc var_8C
  loc_B4B6EB: FLdPr var_8C
  loc_B4B6EE: LateIdCallLdVar
  loc_B4B6F8: CStrVarTmp
  loc_B4B6F9: FStStrNoPop var_15C
  loc_B4B6FC: FLdPr Me
  loc_B4B6FF: VCallAd Control_ID_DetaLiquTxt
  loc_B4B702: FStAdFunc var_A0
  loc_B4B705: FLdPr var_A0
  loc_B4B708: Me.Text = from_stack_1
  loc_B4B70D: FFree1Str var_15C
  loc_B4B710: FFreeAd var_88 = "": var_8C = ""
  loc_B4B719: FFreeVar var_B0 = ""
  loc_B4B720: Branch loc_B4BDA6
  loc_B4B723: FLdRfVar var_B0
  loc_B4B726: FLdRfVar var_A0
  loc_B4B729: LitVarStr var_9C, "Tipo"
  loc_B4B72E: PopAdLdVar
  loc_B4B72F: FLdRfVar var_8C
  loc_B4B732: FLdRfVar var_88
  loc_B4B735: FLdPr Me
  loc_B4B738: MemLdRfVar from_stack_1.global_52
  loc_B4B73B: NewIfNullPr clsimputacion
  loc_B4B73E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B4B743: FLdPr var_88
  loc_B4B746:  = Me.Fields
  loc_B4B74B: FLdPr var_8C
  loc_B4B74E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4B753: FLdPr var_A0
  loc_B4B756:  = Me.Value
  loc_B4B75B: FLdRfVar var_B0
  loc_B4B75E: LitVarStr var_C0, "Debito"
  loc_B4B763: HardType
  loc_B4B764: EqVarBool
  loc_B4B766: FFreeAd var_88 = "": var_8C = ""
  loc_B4B76F: FFree1Var var_B0 = ""
  loc_B4B772: BranchF loc_B4BDA6
  loc_B4B775: FLdPr Me
  loc_B4B778: VCallAd Control_ID_DevengadoFlex
  loc_B4B77B: FStAdFunc var_88
  loc_B4B77E: FLdPr var_88
  loc_B4B781: LateIdLdVar var_B0 DispID_10 0
  loc_B4B788: CI4Var
  loc_B4B78A: CVarI4
  loc_B4B78E: PopAdLdVar
  loc_B4B78F: LitVarI4
  loc_B4B797: PopAdLdVar
  loc_B4B798: FLdPr Me
  loc_B4B79B: VCallAd Control_ID_DevengadoFlex
  loc_B4B79E: FStAdFunc var_8C
  loc_B4B7A1: FLdPr var_8C
  loc_B4B7A4: LateIdCallLdVar
  loc_B4B7AE: CStrVarTmp
  loc_B4B7AF: FStStrNoPop var_15C
  loc_B4B7B2: LitStr vbNullString
  loc_B4B7B5: NeStr
  loc_B4B7B7: FFree1Str var_15C
  loc_B4B7BA: FFreeAd var_88 = ""
  loc_B4B7C1: FFreeVar var_B0 = ""
  loc_B4B7C8: BranchF loc_B4BAC1
  loc_B4B7CB: FLdRfVar var_D2
  loc_B4B7CE: from_stack_1v = Proc_119_27_A69CE0()
  loc_B4B7D3: FLdI2 var_D2
  loc_B4B7D6: BranchF loc_B4BABE
  loc_B4B7D9: FLdPr Me
  loc_B4B7DC: VCallAd Control_ID_DevengadoFlex
  loc_B4B7DF: FStAdFunc var_88
  loc_B4B7E2: FLdPr var_88
  loc_B4B7E5: LateIdLdVar var_B0 DispID_10 0
  loc_B4B7EC: CI4Var
  loc_B4B7EE: CVarI4
  loc_B4B7F2: PopAdLdVar
  loc_B4B7F3: LitVarI4
  loc_B4B7FB: PopAdLdVar
  loc_B4B7FC: LitVarStr var_114, "Si"
  loc_B4B801: PopAdLdVar
  loc_B4B802: FLdPr Me
  loc_B4B805: VCallAd Control_ID_DevengadoFlex
  loc_B4B808: FStAdFunc var_8C
  loc_B4B80B: FLdPr var_8C
  loc_B4B80E: LateIdCallSt
  loc_B4B816: FFreeAd var_88 = ""
  loc_B4B81D: FFree1Var var_B0 = ""
  loc_B4B820: LitI2_Byte 1
  loc_B4B822: FLdPr Me
  loc_B4B825: MemLdRfVar from_stack_1.global_70
  loc_B4B828: FLdPr Me
  loc_B4B82B: VCallAd Control_ID_DevengadoFlex
  loc_B4B82E: FStAdFunc var_88
  loc_B4B831: FLdPr var_88
  loc_B4B834: LateIdLdVar var_B0 DispID_5 0
  loc_B4B83B: CI4Var
  loc_B4B83D: LitI4 2
  loc_B4B842: SubI4
  loc_B4B843: CI2I4
  loc_B4B844: FFree1Ad var_88
  loc_B4B847: FFree1Var var_B0 = ""
  loc_B4B84A: ForI2 var_1A8
  loc_B4B850: FLdPr Me
  loc_B4B853: MemLdI2 global_70
  loc_B4B856: CI4UI1
  loc_B4B857: CVarI4
  loc_B4B85B: PopAdLdVar
  loc_B4B85C: FLdPr Me
  loc_B4B85F: VCallAd Control_ID_DevengadoFlex
  loc_B4B862: FStAdFunc var_88
  loc_B4B865: FLdPr var_88
  loc_B4B868: LateIdSt
  loc_B4B86D: FFree1Ad var_88
  loc_B4B870: LitVarI4
  loc_B4B878: PopAdLdVar
  loc_B4B879: FLdPr Me
  loc_B4B87C: VCallAd Control_ID_DevengadoFlex
  loc_B4B87F: FStAdFunc var_88
  loc_B4B882: FLdPr var_88
  loc_B4B885: LateIdSt
  loc_B4B88A: FFree1Ad var_88
  loc_B4B88D: FLdPr Me
  loc_B4B890: MemLdRfVar from_stack_1.global_70
  loc_B4B893: NextI2 var_1A8, loc_B4B850
  loc_B4B898: FLdRfVar var_15C
  loc_B4B89B: FLdPr Me
  loc_B4B89E: VCallAd Control_ID_lblTotalSeleccionado
  loc_B4B8A1: FStAdFunc var_88
  loc_B4B8A4: FLdPr var_88
  loc_B4B8A7:  = Me.Caption
  loc_B4B8AC: FLdRfVar var_160
  loc_B4B8AF: FLdPr Me
  loc_B4B8B2: VCallAd Control_ID_lblTotalSeleccionado
  loc_B4B8B5: FStAdFunc var_8C
  loc_B4B8B8: FLdPr var_8C
  loc_B4B8BB:  = Me.Caption
  loc_B4B8C0: FLdZeroAd var_160
  loc_B4B8C3: CVarStr var_D0
  loc_B4B8C6: LitVarI2 var_B0, 0
  loc_B4B8CB: ILdRf var_15C
  loc_B4B8CE: LitStr vbNullString
  loc_B4B8D1: EqStr
  loc_B4B8D3: CVarBoolI2 var_9C
  loc_B4B8D7: FLdRfVar var_104
  loc_B4B8DA: ImpAdCallFPR4  = IIf(, , )
  loc_B4B8DF: FLdPr Me
  loc_B4B8E2: VCallAd Control_ID_DevengadoFlex
  loc_B4B8E5: FStAdFunc var_A0
  loc_B4B8E8: FLdPr var_A0
  loc_B4B8EB: LateIdLdVar var_158 DispID_10 0
  loc_B4B8F2: CI4Var
  loc_B4B8F4: CVarI4
  loc_B4B8F8: PopAdLdVar
  loc_B4B8F9: LitVarI4
  loc_B4B901: PopAdLdVar
  loc_B4B902: FLdPr Me
  loc_B4B905: VCallAd Control_ID_DevengadoFlex
  loc_B4B908: FStAdFunc var_148
  loc_B4B90B: FLdPr var_148
  loc_B4B90E: LateIdCallLdVar
  loc_B4B918: PopAd
  loc_B4B91A: LitI4 1
  loc_B4B91F: LitI4 1
  loc_B4B924: LitVarStr var_144, "currency"
  loc_B4B929: FStVarCopyObj var_19C
  loc_B4B92C: FLdRfVar var_19C
  loc_B4B92F: FLdRfVar var_104
  loc_B4B932: FnCDblVar
  loc_B4B934: FLdRfVar var_178
  loc_B4B937: CStrVarTmp
  loc_B4B938: FStStrNoPop var_17C
  loc_B4B93B: CR8Str
  loc_B4B93D: AddR8
  loc_B4B93E: CVarR8
  loc_B4B942: ImpAdCallI2 Format$(, )
  loc_B4B947: FStStrNoPop var_1A0
  loc_B4B94A: FLdPr Me
  loc_B4B94D: VCallAd Control_ID_lblTotalSeleccionado
  loc_B4B950: FStAdFunc var_1A4
  loc_B4B953: FLdPr var_1A4
  loc_B4B956: Me.Caption = from_stack_1
  loc_B4B95B: FFreeStr var_15C = "": var_17C = ""
  loc_B4B964: FFreeAd var_88 = "": var_8C = "": var_A0 = "": var_148 = ""
  loc_B4B971: FFreeVar var_9C = "": var_B0 = "": var_D0 = "": var_104 = "": var_104 = "": var_158 = "": var_178 = "": var_18C = ""
  loc_B4B986: FLdPr Me
  loc_B4B989: MemLdStr global_84
  loc_B4B98C: FLdPr Me
  loc_B4B98F: VCallAd Control_ID_DevengadoFlex
  loc_B4B992: FStAdFunc var_88
  loc_B4B995: FLdPr var_88
  loc_B4B998: LateIdLdVar var_B0 DispID_10 0
  loc_B4B99F: CI4Var
  loc_B4B9A1: CVarI4
  loc_B4B9A5: PopAdLdVar
  loc_B4B9A6: LitVarI4
  loc_B4B9AE: PopAdLdVar
  loc_B4B9AF: FLdPr Me
  loc_B4B9B2: VCallAd Control_ID_DevengadoFlex
  loc_B4B9B5: FStAdFunc var_8C
  loc_B4B9B8: FLdPr var_8C
  loc_B4B9BB: LateIdCallLdVar
  loc_B4B9C5: CStrVarTmp
  loc_B4B9C6: FStStrNoPop var_15C
  loc_B4B9C9: CI2Str
  loc_B4B9CB: CI4UI1
  loc_B4B9CC: AddI4
  loc_B4B9CD: FLdPr Me
  loc_B4B9D0: MemStI4 global_84
  loc_B4B9D3: FFree1Str var_15C
  loc_B4B9D6: FFreeAd var_88 = ""
  loc_B4B9DD: FFreeVar var_B0 = ""
  loc_B4B9E4: FLdPr Me
  loc_B4B9E7: VCallAd Control_ID_DevengadoFlex
  loc_B4B9EA: FStAdFunc var_88
  loc_B4B9ED: FLdPr var_88
  loc_B4B9F0: LateIdLdVar var_B0 DispID_10 0
  loc_B4B9F7: CI4Var
  loc_B4B9F9: CVarI4
  loc_B4B9FD: PopAdLdVar
  loc_B4B9FE: LitVarI4
  loc_B4BA06: PopAdLdVar
  loc_B4BA07: FLdPr Me
  loc_B4BA0A: VCallAd Control_ID_DevengadoFlex
  loc_B4BA0D: FStAdFunc var_8C
  loc_B4BA10: FLdPr var_8C
  loc_B4BA13: LateIdCallLdVar
  loc_B4BA1D: CStrVarTmp
  loc_B4BA1E: FStStrNoPop var_15C
  loc_B4BA21: LitStr "0"
  loc_B4BA24: EqStr
  loc_B4BA26: FLdRfVar var_160
  loc_B4BA29: FLdPr Me
  loc_B4BA2C: VCallAd Control_ID_DetaLiquTxt
  loc_B4BA2F: FStAdFunc var_A0
  loc_B4BA32: FLdPr var_A0
  loc_B4BA35:  = Me.Text
  loc_B4BA3A: ILdRf var_160
  loc_B4BA3D: LitStr vbNullString
  loc_B4BA40: EqStr
  loc_B4BA42: AndI4
  loc_B4BA43: FFreeStr var_15C = ""
  loc_B4BA4A: FFreeAd var_88 = "": var_8C = ""
  loc_B4BA53: FFreeVar var_B0 = ""
  loc_B4BA5A: BranchF loc_B4BABE
  loc_B4BA5D: FLdPr Me
  loc_B4BA60: VCallAd Control_ID_DevengadoFlex
  loc_B4BA63: FStAdFunc var_88
  loc_B4BA66: FLdPr var_88
  loc_B4BA69: LateIdLdVar var_B0 DispID_10 0
  loc_B4BA70: CI4Var
  loc_B4BA72: CVarI4
  loc_B4BA76: PopAdLdVar
  loc_B4BA77: LitVarI4
  loc_B4BA7F: PopAdLdVar
  loc_B4BA80: FLdPr Me
  loc_B4BA83: VCallAd Control_ID_DevengadoFlex
  loc_B4BA86: FStAdFunc var_8C
  loc_B4BA89: FLdPr var_8C
  loc_B4BA8C: LateIdCallLdVar
  loc_B4BA96: CStrVarTmp
  loc_B4BA97: FStStrNoPop var_15C
  loc_B4BA9A: FLdPr Me
  loc_B4BA9D: VCallAd Control_ID_DetaLiquTxt
  loc_B4BAA0: FStAdFunc var_A0
  loc_B4BAA3: FLdPr var_A0
  loc_B4BAA6: Me.Text = from_stack_1
  loc_B4BAAB: FFree1Str var_15C
  loc_B4BAAE: FFreeAd var_88 = "": var_8C = ""
  loc_B4BAB7: FFreeVar var_B0 = ""
  loc_B4BABE: Branch loc_B4BDA6
  loc_B4BAC1: FLdPr Me
  loc_B4BAC4: VCallAd Control_ID_DevengadoFlex
  loc_B4BAC7: FStAdFunc var_88
  loc_B4BACA: FLdPr var_88
  loc_B4BACD: LateIdLdVar var_B0 DispID_10 0
  loc_B4BAD4: CI4Var
  loc_B4BAD6: CVarI4
  loc_B4BADA: PopAdLdVar
  loc_B4BADB: LitVarI4
  loc_B4BAE3: PopAdLdVar
  loc_B4BAE4: LitVarStr var_114, "Si"
  loc_B4BAE9: PopAdLdVar
  loc_B4BAEA: FLdPr Me
  loc_B4BAED: VCallAd Control_ID_DevengadoFlex
  loc_B4BAF0: FStAdFunc var_8C
  loc_B4BAF3: FLdPr var_8C
  loc_B4BAF6: LateIdCallSt
  loc_B4BAFE: FFreeAd var_88 = ""
  loc_B4BB05: FFree1Var var_B0 = ""
  loc_B4BB08: LitI2_Byte 1
  loc_B4BB0A: FLdPr Me
  loc_B4BB0D: MemLdRfVar from_stack_1.global_70
  loc_B4BB10: FLdPr Me
  loc_B4BB13: VCallAd Control_ID_DevengadoFlex
  loc_B4BB16: FStAdFunc var_88
  loc_B4BB19: FLdPr var_88
  loc_B4BB1C: LateIdLdVar var_B0 DispID_5 0
  loc_B4BB23: CI4Var
  loc_B4BB25: LitI4 2
  loc_B4BB2A: SubI4
  loc_B4BB2B: CI2I4
  loc_B4BB2C: FFree1Ad var_88
  loc_B4BB2F: FFree1Var var_B0 = ""
  loc_B4BB32: ForI2 var_1AC
  loc_B4BB38: FLdPr Me
  loc_B4BB3B: MemLdI2 global_70
  loc_B4BB3E: CI4UI1
  loc_B4BB3F: CVarI4
  loc_B4BB43: PopAdLdVar
  loc_B4BB44: FLdPr Me
  loc_B4BB47: VCallAd Control_ID_DevengadoFlex
  loc_B4BB4A: FStAdFunc var_88
  loc_B4BB4D: FLdPr var_88
  loc_B4BB50: LateIdSt
  loc_B4BB55: FFree1Ad var_88
  loc_B4BB58: LitVarI4
  loc_B4BB60: PopAdLdVar
  loc_B4BB61: FLdPr Me
  loc_B4BB64: VCallAd Control_ID_DevengadoFlex
  loc_B4BB67: FStAdFunc var_88
  loc_B4BB6A: FLdPr var_88
  loc_B4BB6D: LateIdSt
  loc_B4BB72: FFree1Ad var_88
  loc_B4BB75: FLdPr Me
  loc_B4BB78: MemLdRfVar from_stack_1.global_70
  loc_B4BB7B: NextI2 var_1AC, loc_B4BB38
  loc_B4BB80: FLdRfVar var_15C
  loc_B4BB83: FLdPr Me
  loc_B4BB86: VCallAd Control_ID_lblTotalSeleccionado
  loc_B4BB89: FStAdFunc var_88
  loc_B4BB8C: FLdPr var_88
  loc_B4BB8F:  = Me.Caption
  loc_B4BB94: FLdRfVar var_160
  loc_B4BB97: FLdPr Me
  loc_B4BB9A: VCallAd Control_ID_lblTotalSeleccionado
  loc_B4BB9D: FStAdFunc var_8C
  loc_B4BBA0: FLdPr var_8C
  loc_B4BBA3:  = Me.Caption
  loc_B4BBA8: FLdZeroAd var_160
  loc_B4BBAB: CVarStr var_D0
  loc_B4BBAE: LitVarI2 var_B0, 0
  loc_B4BBB3: ILdRf var_15C
  loc_B4BBB6: LitStr vbNullString
  loc_B4BBB9: EqStr
  loc_B4BBBB: CVarBoolI2 var_9C
  loc_B4BBBF: FLdRfVar var_104
  loc_B4BBC2: ImpAdCallFPR4  = IIf(, , )
  loc_B4BBC7: FLdPr Me
  loc_B4BBCA: VCallAd Control_ID_DevengadoFlex
  loc_B4BBCD: FStAdFunc var_A0
  loc_B4BBD0: FLdPr var_A0
  loc_B4BBD3: LateIdLdVar var_158 DispID_10 0
  loc_B4BBDA: CI4Var
  loc_B4BBDC: CVarI4
  loc_B4BBE0: PopAdLdVar
  loc_B4BBE1: LitVarI4
  loc_B4BBE9: PopAdLdVar
  loc_B4BBEA: FLdPr Me
  loc_B4BBED: VCallAd Control_ID_DevengadoFlex
  loc_B4BBF0: FStAdFunc var_148
  loc_B4BBF3: FLdPr var_148
  loc_B4BBF6: LateIdCallLdVar
  loc_B4BC00: PopAd
  loc_B4BC02: LitI4 1
  loc_B4BC07: LitI4 1
  loc_B4BC0C: LitVarStr var_144, "currency"
  loc_B4BC11: FStVarCopyObj var_19C
  loc_B4BC14: FLdRfVar var_19C
  loc_B4BC17: FLdRfVar var_104
  loc_B4BC1A: FnCDblVar
  loc_B4BC1C: FLdRfVar var_178
  loc_B4BC1F: CStrVarTmp
  loc_B4BC20: FStStrNoPop var_17C
  loc_B4BC23: CR8Str
  loc_B4BC25: AddR8
  loc_B4BC26: CVarR8
  loc_B4BC2A: ImpAdCallI2 Format$(, )
  loc_B4BC2F: FStStrNoPop var_1A0
  loc_B4BC32: FLdPr Me
  loc_B4BC35: VCallAd Control_ID_lblTotalSeleccionado
  loc_B4BC38: FStAdFunc var_1A4
  loc_B4BC3B: FLdPr var_1A4
  loc_B4BC3E: Me.Caption = from_stack_1
  loc_B4BC43: FFreeStr var_15C = "": var_17C = ""
  loc_B4BC4C: FFreeAd var_88 = "": var_8C = "": var_A0 = "": var_148 = ""
  loc_B4BC59: FFreeVar var_9C = "": var_B0 = "": var_D0 = "": var_104 = "": var_104 = "": var_158 = "": var_178 = "": var_18C = ""
  loc_B4BC6E: FLdPr Me
  loc_B4BC71: MemLdStr global_84
  loc_B4BC74: FLdPr Me
  loc_B4BC77: VCallAd Control_ID_DevengadoFlex
  loc_B4BC7A: FStAdFunc var_88
  loc_B4BC7D: FLdPr var_88
  loc_B4BC80: LateIdLdVar var_B0 DispID_10 0
  loc_B4BC87: CI4Var
  loc_B4BC89: CVarI4
  loc_B4BC8D: PopAdLdVar
  loc_B4BC8E: LitVarI4
  loc_B4BC96: PopAdLdVar
  loc_B4BC97: FLdPr Me
  loc_B4BC9A: VCallAd Control_ID_DevengadoFlex
  loc_B4BC9D: FStAdFunc var_8C
  loc_B4BCA0: FLdPr var_8C
  loc_B4BCA3: LateIdCallLdVar
  loc_B4BCAD: CStrVarTmp
  loc_B4BCAE: FStStrNoPop var_15C
  loc_B4BCB1: CI2Str
  loc_B4BCB3: CI4UI1
  loc_B4BCB4: AddI4
  loc_B4BCB5: FLdPr Me
  loc_B4BCB8: MemStI4 global_84
  loc_B4BCBB: FFree1Str var_15C
  loc_B4BCBE: FFreeAd var_88 = ""
  loc_B4BCC5: FFreeVar var_B0 = ""
  loc_B4BCCC: FLdPr Me
  loc_B4BCCF: VCallAd Control_ID_DevengadoFlex
  loc_B4BCD2: FStAdFunc var_88
  loc_B4BCD5: FLdPr var_88
  loc_B4BCD8: LateIdLdVar var_B0 DispID_10 0
  loc_B4BCDF: CI4Var
  loc_B4BCE1: CVarI4
  loc_B4BCE5: PopAdLdVar
  loc_B4BCE6: LitVarI4
  loc_B4BCEE: PopAdLdVar
  loc_B4BCEF: FLdPr Me
  loc_B4BCF2: VCallAd Control_ID_DevengadoFlex
  loc_B4BCF5: FStAdFunc var_8C
  loc_B4BCF8: FLdPr var_8C
  loc_B4BCFB: LateIdCallLdVar
  loc_B4BD05: CStrVarTmp
  loc_B4BD06: FStStrNoPop var_15C
  loc_B4BD09: LitStr "0"
  loc_B4BD0C: EqStr
  loc_B4BD0E: FLdRfVar var_160
  loc_B4BD11: FLdPr Me
  loc_B4BD14: VCallAd Control_ID_DetaLiquTxt
  loc_B4BD17: FStAdFunc var_A0
  loc_B4BD1A: FLdPr var_A0
  loc_B4BD1D:  = Me.Text
  loc_B4BD22: ILdRf var_160
  loc_B4BD25: LitStr vbNullString
  loc_B4BD28: EqStr
  loc_B4BD2A: AndI4
  loc_B4BD2B: FFreeStr var_15C = ""
  loc_B4BD32: FFreeAd var_88 = "": var_8C = ""
  loc_B4BD3B: FFreeVar var_B0 = ""
  loc_B4BD42: BranchF loc_B4BDA6
  loc_B4BD45: FLdPr Me
  loc_B4BD48: VCallAd Control_ID_DevengadoFlex
  loc_B4BD4B: FStAdFunc var_88
  loc_B4BD4E: FLdPr var_88
  loc_B4BD51: LateIdLdVar var_B0 DispID_10 0
  loc_B4BD58: CI4Var
  loc_B4BD5A: CVarI4
  loc_B4BD5E: PopAdLdVar
  loc_B4BD5F: LitVarI4
  loc_B4BD67: PopAdLdVar
  loc_B4BD68: FLdPr Me
  loc_B4BD6B: VCallAd Control_ID_DevengadoFlex
  loc_B4BD6E: FStAdFunc var_8C
  loc_B4BD71: FLdPr var_8C
  loc_B4BD74: LateIdCallLdVar
  loc_B4BD7E: CStrVarTmp
  loc_B4BD7F: FStStrNoPop var_15C
  loc_B4BD82: FLdPr Me
  loc_B4BD85: VCallAd Control_ID_DetaLiquTxt
  loc_B4BD88: FStAdFunc var_A0
  loc_B4BD8B: FLdPr var_A0
  loc_B4BD8E: Me.Text = from_stack_1
  loc_B4BD93: FFree1Str var_15C
  loc_B4BD96: FFreeAd var_88 = "": var_8C = ""
  loc_B4BD9F: FFreeVar var_B0 = ""
  loc_B4BDA6: ExitProcHresult
End Function

Private Function Proc_119_31_A38E14() 'A38E14
  'Data Table: 4AE690
  loc_A38C08: FLdPr Me
  loc_A38C0B: VCallAd Control_ID_DevengadoFlex
  loc_A38C0E: FStAdFunc var_88
  loc_A38C11: FLdPr var_88
  loc_A38C14: LateIdLdVar var_98 DispID_10 0
  loc_A38C1B: CI4Var
  loc_A38C1D: CVarI4
  loc_A38C21: PopAdLdVar
  loc_A38C22: LitVarI4
  loc_A38C2A: PopAdLdVar
  loc_A38C2B: LitVarStr var_E8, "No"
  loc_A38C30: PopAdLdVar
  loc_A38C31: FLdPr Me
  loc_A38C34: VCallAd Control_ID_DevengadoFlex
  loc_A38C37: FStAdFunc var_FC
  loc_A38C3A: FLdPr var_FC
  loc_A38C3D: LateIdCallSt
  loc_A38C45: FFreeAd var_88 = ""
  loc_A38C4C: FFree1Var var_98 = ""
  loc_A38C4F: LitI2_Byte 1
  loc_A38C51: FLdPr Me
  loc_A38C54: MemLdRfVar from_stack_1.global_70
  loc_A38C57: FLdPr Me
  loc_A38C5A: VCallAd Control_ID_DevengadoFlex
  loc_A38C5D: FStAdFunc var_88
  loc_A38C60: FLdPr var_88
  loc_A38C63: LateIdLdVar var_98 DispID_5 0
  loc_A38C6A: CI4Var
  loc_A38C6C: LitI4 2
  loc_A38C71: SubI4
  loc_A38C72: CI2I4
  loc_A38C73: FFree1Ad var_88
  loc_A38C76: FFree1Var var_98 = ""
  loc_A38C79: ForI2 var_100
  loc_A38C7F: FLdPr Me
  loc_A38C82: MemLdI2 global_70
  loc_A38C85: CI4UI1
  loc_A38C86: CVarI4
  loc_A38C8A: PopAdLdVar
  loc_A38C8B: FLdPr Me
  loc_A38C8E: VCallAd Control_ID_DevengadoFlex
  loc_A38C91: FStAdFunc var_88
  loc_A38C94: FLdPr var_88
  loc_A38C97: LateIdSt
  loc_A38C9C: FFree1Ad var_88
  loc_A38C9F: LitVarI4
  loc_A38CA7: PopAdLdVar
  loc_A38CA8: FLdPr Me
  loc_A38CAB: VCallAd Control_ID_DevengadoFlex
  loc_A38CAE: FStAdFunc var_88
  loc_A38CB1: FLdPr var_88
  loc_A38CB4: LateIdSt
  loc_A38CB9: FFree1Ad var_88
  loc_A38CBC: FLdPr Me
  loc_A38CBF: MemLdRfVar from_stack_1.global_70
  loc_A38CC2: NextI2 var_100, loc_A38C7F
  loc_A38CC7: FLdRfVar var_104
  loc_A38CCA: FLdPr Me
  loc_A38CCD: VCallAd Control_ID_lblTotalSeleccionado
  loc_A38CD0: FStAdFunc var_88
  loc_A38CD3: FLdPr var_88
  loc_A38CD6:  = Me.Caption
  loc_A38CDB: ILdRf var_104
  loc_A38CDE: LitStr vbNullString
  loc_A38CE1: NeStr
  loc_A38CE3: FFree1Str var_104
  loc_A38CE6: FFree1Ad var_88
  loc_A38CE9: BranchF loc_A38D9B
  loc_A38CEC: FLdRfVar var_104
  loc_A38CEF: FLdPr Me
  loc_A38CF2: VCallAd Control_ID_lblTotalSeleccionado
  loc_A38CF5: FStAdFunc var_88
  loc_A38CF8: FLdPr var_88
  loc_A38CFB:  = Me.Caption
  loc_A38D00: FLdPr Me
  loc_A38D03: VCallAd Control_ID_DevengadoFlex
  loc_A38D06: FStAdFunc var_FC
  loc_A38D09: FLdPr var_FC
  loc_A38D0C: LateIdLdVar var_98 DispID_10 0
  loc_A38D13: CI4Var
  loc_A38D15: CVarI4
  loc_A38D19: PopAdLdVar
  loc_A38D1A: LitVarI4
  loc_A38D22: PopAdLdVar
  loc_A38D23: FLdPr Me
  loc_A38D26: VCallAd Control_ID_DevengadoFlex
  loc_A38D29: FStAdFunc var_108
  loc_A38D2C: FLdPr var_108
  loc_A38D2F: LateIdCallLdVar
  loc_A38D39: PopAd
  loc_A38D3B: LitI4 1
  loc_A38D40: LitI4 1
  loc_A38D45: LitVarStr var_F8, "currency"
  loc_A38D4A: FStVarCopyObj var_13C
  loc_A38D4D: FLdRfVar var_13C
  loc_A38D50: ILdRf var_104
  loc_A38D53: CR8Str
  loc_A38D55: FLdRfVar var_118
  loc_A38D58: CStrVarTmp
  loc_A38D59: FStStrNoPop var_11C
  loc_A38D5C: CR8Str
  loc_A38D5E: SubR4
  loc_A38D5F: CVarR8
  loc_A38D63: ImpAdCallI2 Format$(, )
  loc_A38D68: FStStrNoPop var_140
  loc_A38D6B: FLdPr Me
  loc_A38D6E: VCallAd Control_ID_lblTotalSeleccionado
  loc_A38D71: FStAdFunc var_144
  loc_A38D74: FLdPr var_144
  loc_A38D77: Me.Caption = from_stack_1
  loc_A38D7C: FFreeStr var_104 = "": var_11C = ""
  loc_A38D85: FFreeAd var_88 = "": var_FC = "": var_108 = ""
  loc_A38D90: FFreeVar var_98 = "": var_118 = "": var_12C = ""
  loc_A38D9B: FLdPr Me
  loc_A38D9E: MemLdStr global_84
  loc_A38DA1: FLdPr Me
  loc_A38DA4: VCallAd Control_ID_DevengadoFlex
  loc_A38DA7: FStAdFunc var_88
  loc_A38DAA: FLdPr var_88
  loc_A38DAD: LateIdLdVar var_98 DispID_10 0
  loc_A38DB4: CI4Var
  loc_A38DB6: CVarI4
  loc_A38DBA: PopAdLdVar
  loc_A38DBB: LitVarI4
  loc_A38DC3: PopAdLdVar
  loc_A38DC4: FLdPr Me
  loc_A38DC7: VCallAd Control_ID_DevengadoFlex
  loc_A38DCA: FStAdFunc var_FC
  loc_A38DCD: FLdPr var_FC
  loc_A38DD0: LateIdCallLdVar
  loc_A38DDA: CStrVarTmp
  loc_A38DDB: FStStrNoPop var_104
  loc_A38DDE: CI2Str
  loc_A38DE0: CI4UI1
  loc_A38DE1: SubI4
  loc_A38DE2: FLdPr Me
  loc_A38DE5: MemStI4 global_84
  loc_A38DE8: FFree1Str var_104
  loc_A38DEB: FFreeAd var_88 = ""
  loc_A38DF2: FFreeVar var_98 = ""
  loc_A38DF9: LitStr vbNullString
  loc_A38DFC: FLdPr Me
  loc_A38DFF: VCallAd Control_ID_lblTotalSeleccionado
  loc_A38E02: FStAdFunc var_88
  loc_A38E05: FLdPr var_88
  loc_A38E08: Me.Caption = from_stack_1
  loc_A38E0D: FFree1Ad var_88
  loc_A38E10: ExitProcHresult
  loc_A38E11: ExitProc
End Function
