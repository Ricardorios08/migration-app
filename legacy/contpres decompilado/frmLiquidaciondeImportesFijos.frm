VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmLiquidaciondeImportesFijos
  Caption = "Liquidación de Importes Fijos"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmLiquidaciondeImportesFijos.frx":0000
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
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "frmLiquidaciondeImportesFijos.frx":08CA
    End
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 120
    Top = 3120
    Width = 12735
    Height = 495
    Visible = 0   'False
    TabIndex = 4
    OleObjectBlob = "frmLiquidaciondeImportesFijos.frx":092A
  End
  Begin VB.CheckBox SeleTodoChk
    Caption = "Selecciona Todo"
    Left = 7920
    Top = 4680
    Width = 2175
    Height = 255
    TabIndex = 12
  End
  Begin VB.TextBox DetaLiquTxt
    ForeColor = &HC00000&
    Left = 1080
    Top = 4680
    Width = 6615
    Height = 735
    TabIndex = 11
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 200
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 12735
    Height = 1935
    TabIndex = 3
    OleObjectBlob = "frmLiquidaciondeImportesFijos.frx":0992
  End
  Begin MSFlexGridLib.MSFlexGrid DevengadoFlex
    Left = 120
    Top = 5640
    Width = 12855
    Height = 2895
    TabIndex = 13
    OleObjectBlob = "frmLiquidaciondeImportesFijos.frx":0D42
  End
  Begin MSMask.MaskEdBox FechLiquMsk
    Left = 1080
    Top = 4200
    Width = 1455
    Height = 360
    TabIndex = 7
    OleObjectBlob = "frmLiquidaciondeImportesFijos.frx":0E2E
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmLiquidaciondeImportesFijos.frx":0EDE
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15300
    Height = 660
    TabIndex = 14
    OleObjectBlob = "frmLiquidaciondeImportesFijos.frx":8A5C
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 15
      TabStop = 0   'False
      Picture = "frmLiquidaciondeImportesFijos.frx":8FB8
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label Label5
    Caption = "Liquidación de Importes Fijos"
    Left = 120
    Top = 3720
    Width = 3540
    Height = 300
    TabIndex = 5
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
    Left = 10440
    Top = 4200
    Width = 360
    Height = 360
    TabIndex = 9
    BorderStyle = 1 'Fixed Single
    AutoSize = -1  'True
  End
  Begin VB.Label Label3
    Caption = "Total del Exp. de Pago:"
    Left = 7920
    Top = 4200
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
    TabIndex = 10
    AutoSize = -1  'True
  End
  Begin VB.Label Label1
    Caption = "Fecha:"
    Left = 225
    Top = 4200
    Width = 735
    Height = 300
    TabIndex = 6
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

Attribute VB_Name = "frmLiquidaciondeImportesFijos"


Private Sub DevengadoFlex_UnknownEvent_8 'AF3A30
  'Data Table: 46B458
  loc_AF330C: FLdPr Me
  loc_AF330F: VCallAd Control_ID_DevengadoFlex
  loc_AF3312: FStAdFunc var_88
  loc_AF3315: FLdPr var_88
  loc_AF3318: LateIdLdVar var_98 DispID_13 -32767
  loc_AF331F: CBoolVar
  loc_AF3321: FFree1Ad var_88
  loc_AF3324: FFree1Var var_98 = ""
  loc_AF3327: BranchF loc_AF3A2E
  loc_AF332A: FLdPr Me
  loc_AF332D: VCallAd Control_ID_DevengadoFlex
  loc_AF3330: FStAdFunc var_88
  loc_AF3333: FLdPr var_88
  loc_AF3336: LateIdLdVar var_98 DispID_11 0
  loc_AF333D: CI4Var
  loc_AF333F: LitI4 8
  loc_AF3344: EqI4
  loc_AF3345: FFree1Ad var_88
  loc_AF3348: FFree1Var var_98 = ""
  loc_AF334B: BranchF loc_AF3867
  loc_AF334E: FLdPr Me
  loc_AF3351: VCallAd Control_ID_DevengadoFlex
  loc_AF3354: FStAdFunc var_88
  loc_AF3357: FLdPr var_88
  loc_AF335A: LateIdLdVar var_98 DispID_10 0
  loc_AF3361: CI4Var
  loc_AF3363: CVarI4
  loc_AF3367: PopAdLdVar
  loc_AF3368: LitVarI4
  loc_AF3370: PopAdLdVar
  loc_AF3371: FLdPr Me
  loc_AF3374: VCallAd Control_ID_DevengadoFlex
  loc_AF3377: FStAdFunc var_DC
  loc_AF337A: FLdPr var_DC
  loc_AF337D: LateIdCallLdVar
  loc_AF3387: CStrVarTmp
  loc_AF3388: CVarStr var_FC
  loc_AF338B: ImpAdCallI2 IsNumeric()
  loc_AF3390: FFreeAd var_88 = ""
  loc_AF3397: FFreeVar var_98 = "": var_EC = ""
  loc_AF33A0: BranchF loc_AF369F
  loc_AF33A3: FLdPr Me
  loc_AF33A6: VCallAd Control_ID_DevengadoFlex
  loc_AF33A9: FStAdFunc var_88
  loc_AF33AC: FLdPr var_88
  loc_AF33AF: LateIdLdVar var_98 DispID_10 0
  loc_AF33B6: CI4Var
  loc_AF33B8: CVarI4
  loc_AF33BC: PopAdLdVar
  loc_AF33BD: LitVarI4
  loc_AF33C5: PopAdLdVar
  loc_AF33C6: FLdPr Me
  loc_AF33C9: VCallAd Control_ID_DevengadoFlex
  loc_AF33CC: FStAdFunc var_DC
  loc_AF33CF: FLdPr var_DC
  loc_AF33D2: LateIdCallLdVar
  loc_AF33DC: PopAd
  loc_AF33DE: LitStr "0"
  loc_AF33E1: LitI2_Byte &HFF
  loc_AF33E3: LitI2_Byte 0
  loc_AF33E5: LitI2_Byte 0
  loc_AF33E7: FLdRfVar var_EC
  loc_AF33EA: CStrVarTmp
  loc_AF33EB: FStStrNoPop var_100
  loc_AF33EE: LitStr "importe"
  loc_AF33F1: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_AF33F6: FStStrNoPop var_104
  loc_AF33F9: FLdPr Me
  loc_AF33FC: MemStStrCopy
  loc_AF3400: FFreeStr var_100 = ""
  loc_AF3407: FFreeAd var_88 = ""
  loc_AF340E: FFreeVar var_98 = ""
  loc_AF3415: FLdPr Me
  loc_AF3418: MemLdStr global_64
  loc_AF341B: LitStr vbNullString
  loc_AF341E: NeStr
  loc_AF3420: BranchF loc_AF3450
  loc_AF3423: LitI4 0
  loc_AF3428: FLdPr Me
  loc_AF342B: MemLdStr global_64
  loc_AF342E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF3433: FLdPr Me
  loc_AF3436: VCallAd Control_ID_DevengadoFlex
  loc_AF3439: FStAdFunc var_88
  loc_AF343C: FLdPr var_88
  loc_AF343F: LateIdCall
  loc_AF3447: FFree1Ad var_88
  loc_AF344A: LitI2_Byte &HFF
  loc_AF344C: IStI2 KeyCode
  loc_AF344F: ExitProcHresult
  loc_AF3450: FLdPr Me
  loc_AF3453: VCallAd Control_ID_DevengadoFlex
  loc_AF3456: FStAdFunc var_108
  loc_AF3459: FLdPr var_108
  loc_AF345C: LateIdLdVar var_FC DispID_10 0
  loc_AF3463: CI4Var
  loc_AF3465: CVarI4
  loc_AF3469: PopAdLdVar
  loc_AF346A: LitVarI4
  loc_AF3472: PopAdLdVar
  loc_AF3473: FLdPr Me
  loc_AF3476: VCallAd Control_ID_DevengadoFlex
  loc_AF3479: FStAdFunc var_14C
  loc_AF347C: FLdPr var_14C
  loc_AF347F: LateIdCallLdVar
  loc_AF3489: PopAd
  loc_AF348B: FLdPr Me
  loc_AF348E: VCallAd Control_ID_DevengadoFlex
  loc_AF3491: FStAdFunc var_88
  loc_AF3494: FLdPr var_88
  loc_AF3497: LateIdLdVar var_98 DispID_10 0
  loc_AF349E: CI4Var
  loc_AF34A0: CVarI4
  loc_AF34A4: PopAdLdVar
  loc_AF34A5: LitVarI4
  loc_AF34AD: PopAdLdVar
  loc_AF34AE: FLdPr Me
  loc_AF34B1: VCallAd Control_ID_DevengadoFlex
  loc_AF34B4: FStAdFunc var_DC
  loc_AF34B7: FLdPr var_DC
  loc_AF34BA: LateIdCallLdVar
  loc_AF34C4: CStrVarTmp
  loc_AF34C5: FStStrNoPop var_100
  loc_AF34C8: CR8Str
  loc_AF34CA: FLdRfVar var_15C
  loc_AF34CD: CStrVarTmp
  loc_AF34CE: FStStrNoPop var_104
  loc_AF34D1: CR8Str
  loc_AF34D3: GtR4
  loc_AF34D4: FFreeStr var_100 = ""
  loc_AF34DB: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AF34E6: FFreeVar var_98 = "": var_EC = "": var_FC = ""
  loc_AF34F1: BranchF loc_AF369C
  loc_AF34F4: FLdPr Me
  loc_AF34F7: VCallAd Control_ID_DevengadoFlex
  loc_AF34FA: FStAdFunc var_88
  loc_AF34FD: FLdPr var_88
  loc_AF3500: LateIdLdVar var_98 DispID_10 0
  loc_AF3507: CI4Var
  loc_AF3509: CVarI4
  loc_AF350D: PopAdLdVar
  loc_AF350E: LitVarI4
  loc_AF3516: PopAdLdVar
  loc_AF3517: FLdPr Me
  loc_AF351A: VCallAd Control_ID_DevengadoFlex
  loc_AF351D: FStAdFunc var_DC
  loc_AF3520: FLdPr var_DC
  loc_AF3523: LateIdCallLdVar
  loc_AF352D: PopAd
  loc_AF352F: LitVarStr var_138, "El importe no debe ser mayor al valor inicial: "
  loc_AF3534: LitI4 1
  loc_AF3539: LitI4 1
  loc_AF353E: LitVarStr var_128, "0.00"
  loc_AF3543: FStVarCopyObj var_15C
  loc_AF3546: FLdRfVar var_15C
  loc_AF3549: FLdRfVar var_EC
  loc_AF354C: CStrVarTmp
  loc_AF354D: FStStrNoPop var_100
  loc_AF3550: CR8Str
  loc_AF3552: CVarR8
  loc_AF3556: FLdRfVar var_16C
  loc_AF3559: ImpAdCallFPR4  = Format(, )
  loc_AF355E: FLdRfVar var_16C
  loc_AF3561: ConcatVar var_17C
  loc_AF3565: LitVarStr var_148, ". Verifique..."
  loc_AF356A: ConcatVar var_18C
  loc_AF356E: CStrVarTmp
  loc_AF356F: FStStrNoPop var_104
  loc_AF3572: FLdPr Me
  loc_AF3575: MemStStrCopy
  loc_AF3579: FFreeStr var_100 = ""
  loc_AF3580: FFreeAd var_88 = ""
  loc_AF3587: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_15C = "": var_16C = "": var_17C = ""
  loc_AF3598: LitI4 0
  loc_AF359D: FLdPr Me
  loc_AF35A0: MemLdStr global_64
  loc_AF35A3: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF35A8: FLdPr Me
  loc_AF35AB: VCallAd Control_ID_DevengadoFlex
  loc_AF35AE: FStAdFunc var_88
  loc_AF35B1: FLdPr var_88
  loc_AF35B4: LateIdLdVar var_98 DispID_10 0
  loc_AF35BB: CI4Var
  loc_AF35BD: CVarI4
  loc_AF35C1: PopAdLdVar
  loc_AF35C2: LitVarI4
  loc_AF35CA: PopAdLdVar
  loc_AF35CB: FLdPr Me
  loc_AF35CE: VCallAd Control_ID_DevengadoFlex
  loc_AF35D1: FStAdFunc var_DC
  loc_AF35D4: FLdPr var_DC
  loc_AF35D7: LateIdCallLdVar
  loc_AF35E1: PopAd
  loc_AF35E3: FLdPr Me
  loc_AF35E6: VCallAd Control_ID_DevengadoFlex
  loc_AF35E9: FStAdFunc var_108
  loc_AF35EC: FLdPr var_108
  loc_AF35EF: LateIdLdVar var_17C DispID_10 0
  loc_AF35F6: CI4Var
  loc_AF35F8: CVarI4
  loc_AF35FC: PopAdLdVar
  loc_AF35FD: LitVarI4
  loc_AF3605: PopAdLdVar
  loc_AF3606: LitI4 1
  loc_AF360B: LitI4 1
  loc_AF3610: LitVarStr var_118, "0.00"
  loc_AF3615: FStVarCopyObj var_15C
  loc_AF3618: FLdRfVar var_15C
  loc_AF361B: FLdRfVar var_EC
  loc_AF361E: CStrVarTmp
  loc_AF361F: CVarStr var_FC
  loc_AF3622: FLdRfVar var_16C
  loc_AF3625: ImpAdCallFPR4  = Format(, )
  loc_AF362A: FLdRfVar var_16C
  loc_AF362D: CStrVarTmp
  loc_AF362E: CVarStr var_18C
  loc_AF3631: PopAdLdVar
  loc_AF3632: FLdPr Me
  loc_AF3635: VCallAd Control_ID_DevengadoFlex
  loc_AF3638: FStAdFunc var_14C
  loc_AF363B: FLdPr var_14C
  loc_AF363E: LateIdCallSt
  loc_AF3646: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AF3651: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_15C = "": var_17C = "": var_16C = ""
  loc_AF3662: LitVarI4
  loc_AF366A: PopAdLdVar
  loc_AF366B: FLdPr Me
  loc_AF366E: VCallAd Control_ID_DevengadoFlex
  loc_AF3671: FStAdFunc var_88
  loc_AF3674: FLdPr var_88
  loc_AF3677: LateIdSt
  loc_AF367C: FFree1Ad var_88
  loc_AF367F: FLdPr Me
  loc_AF3682: VCallAd Control_ID_DevengadoFlex
  loc_AF3685: FStAdFunc var_88
  loc_AF3688: FLdPr var_88
  loc_AF368B: LateIdCall
  loc_AF3693: FFree1Ad var_88
  loc_AF3696: LitI2_Byte &HFF
  loc_AF3698: IStI2 KeyCode
  loc_AF369B: ExitProcHresult
  loc_AF369C: Branch loc_AF37AD
  loc_AF369F: LitStr "Ingrese un importe valido. Verifique..."
  loc_AF36A2: FLdPr Me
  loc_AF36A5: MemStStrCopy
  loc_AF36A9: LitI4 0
  loc_AF36AE: FLdPr Me
  loc_AF36B1: MemLdStr global_64
  loc_AF36B4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF36B9: FLdPr Me
  loc_AF36BC: VCallAd Control_ID_DevengadoFlex
  loc_AF36BF: FStAdFunc var_88
  loc_AF36C2: FLdPr var_88
  loc_AF36C5: LateIdLdVar var_98 DispID_10 0
  loc_AF36CC: CI4Var
  loc_AF36CE: CVarI4
  loc_AF36D2: PopAdLdVar
  loc_AF36D3: LitVarI4
  loc_AF36DB: PopAdLdVar
  loc_AF36DC: FLdPr Me
  loc_AF36DF: VCallAd Control_ID_DevengadoFlex
  loc_AF36E2: FStAdFunc var_DC
  loc_AF36E5: FLdPr var_DC
  loc_AF36E8: LateIdCallLdVar
  loc_AF36F2: PopAd
  loc_AF36F4: FLdPr Me
  loc_AF36F7: VCallAd Control_ID_DevengadoFlex
  loc_AF36FA: FStAdFunc var_108
  loc_AF36FD: FLdPr var_108
  loc_AF3700: LateIdLdVar var_17C DispID_10 0
  loc_AF3707: CI4Var
  loc_AF3709: CVarI4
  loc_AF370D: PopAdLdVar
  loc_AF370E: LitVarI4
  loc_AF3716: PopAdLdVar
  loc_AF3717: LitI4 1
  loc_AF371C: LitI4 1
  loc_AF3721: LitVarStr var_118, "0.00"
  loc_AF3726: FStVarCopyObj var_15C
  loc_AF3729: FLdRfVar var_15C
  loc_AF372C: FLdRfVar var_EC
  loc_AF372F: CStrVarTmp
  loc_AF3730: CVarStr var_FC
  loc_AF3733: FLdRfVar var_16C
  loc_AF3736: ImpAdCallFPR4  = Format(, )
  loc_AF373B: FLdRfVar var_16C
  loc_AF373E: CStrVarTmp
  loc_AF373F: CVarStr var_18C
  loc_AF3742: PopAdLdVar
  loc_AF3743: FLdPr Me
  loc_AF3746: VCallAd Control_ID_DevengadoFlex
  loc_AF3749: FStAdFunc var_14C
  loc_AF374C: FLdPr var_14C
  loc_AF374F: LateIdCallSt
  loc_AF3757: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AF3762: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_15C = "": var_17C = "": var_16C = ""
  loc_AF3773: LitVarI4
  loc_AF377B: PopAdLdVar
  loc_AF377C: FLdPr Me
  loc_AF377F: VCallAd Control_ID_DevengadoFlex
  loc_AF3782: FStAdFunc var_88
  loc_AF3785: FLdPr var_88
  loc_AF3788: LateIdSt
  loc_AF378D: FFree1Ad var_88
  loc_AF3790: FLdPr Me
  loc_AF3793: VCallAd Control_ID_DevengadoFlex
  loc_AF3796: FStAdFunc var_88
  loc_AF3799: FLdPr var_88
  loc_AF379C: LateIdCall
  loc_AF37A4: FFree1Ad var_88
  loc_AF37A7: LitI2_Byte &HFF
  loc_AF37A9: IStI2 KeyCode
  loc_AF37AC: ExitProcHresult
  loc_AF37AD: FLdPr Me
  loc_AF37B0: VCallAd Control_ID_DevengadoFlex
  loc_AF37B3: FStAdFunc var_88
  loc_AF37B6: FLdPr var_88
  loc_AF37B9: LateIdLdVar var_98 DispID_10 0
  loc_AF37C0: CI4Var
  loc_AF37C2: CVarI4
  loc_AF37C6: PopAdLdVar
  loc_AF37C7: LitVarI4
  loc_AF37CF: PopAdLdVar
  loc_AF37D0: FLdPr Me
  loc_AF37D3: VCallAd Control_ID_DevengadoFlex
  loc_AF37D6: FStAdFunc var_DC
  loc_AF37D9: FLdPr var_DC
  loc_AF37DC: LateIdCallLdVar
  loc_AF37E6: PopAd
  loc_AF37E8: FLdPr Me
  loc_AF37EB: VCallAd Control_ID_DevengadoFlex
  loc_AF37EE: FStAdFunc var_108
  loc_AF37F1: FLdPr var_108
  loc_AF37F4: LateIdLdVar var_17C DispID_10 0
  loc_AF37FB: CI4Var
  loc_AF37FD: CVarI4
  loc_AF3801: PopAdLdVar
  loc_AF3802: LitVarI4
  loc_AF380A: PopAdLdVar
  loc_AF380B: LitI4 1
  loc_AF3810: LitI4 1
  loc_AF3815: LitVarStr var_118, "###,###,##0.00"
  loc_AF381A: FStVarCopyObj var_15C
  loc_AF381D: FLdRfVar var_15C
  loc_AF3820: FLdRfVar var_EC
  loc_AF3823: CStrVarTmp
  loc_AF3824: CVarStr var_FC
  loc_AF3827: FLdRfVar var_16C
  loc_AF382A: ImpAdCallFPR4  = Format(, )
  loc_AF382F: FLdRfVar var_16C
  loc_AF3832: CStrVarTmp
  loc_AF3833: CVarStr var_18C
  loc_AF3836: PopAdLdVar
  loc_AF3837: FLdPr Me
  loc_AF383A: VCallAd Control_ID_DevengadoFlex
  loc_AF383D: FStAdFunc var_14C
  loc_AF3840: FLdPr var_14C
  loc_AF3843: LateIdCallSt
  loc_AF384B: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AF3856: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_15C = "": var_17C = "": var_16C = ""
  loc_AF3867: LitI2_Byte 1
  loc_AF3869: FLdPr Me
  loc_AF386C: MemLdRfVar from_stack_1.global_68
  loc_AF386F: FLdPr Me
  loc_AF3872: VCallAd Control_ID_DevengadoFlex
  loc_AF3875: FStAdFunc var_88
  loc_AF3878: FLdPr var_88
  loc_AF387B: LateIdLdVar var_98 DispID_4 0
  loc_AF3882: CI4Var
  loc_AF3884: LitI4 1
  loc_AF3889: SubI4
  loc_AF388A: CI2I4
  loc_AF388B: FFree1Ad var_88
  loc_AF388E: FFree1Var var_98 = ""
  loc_AF3891: ForI2 var_1B0
  loc_AF3897: FLdPr Me
  loc_AF389A: MemLdI2 global_68
  loc_AF389D: CI4UI1
  loc_AF389E: CVarI4
  loc_AF38A2: PopAdLdVar
  loc_AF38A3: LitVarI4
  loc_AF38AB: PopAdLdVar
  loc_AF38AC: FLdPr Me
  loc_AF38AF: VCallAd Control_ID_DevengadoFlex
  loc_AF38B2: FStAdFunc var_88
  loc_AF38B5: FLdPr var_88
  loc_AF38B8: LateIdCallLdVar
  loc_AF38C2: CStrVarTmp
  loc_AF38C3: FStStrNoPop var_100
  loc_AF38C6: LitStr "Si"
  loc_AF38C9: EqStr
  loc_AF38CB: FFree1Str var_100
  loc_AF38CE: FFree1Ad var_88
  loc_AF38D1: FFree1Var var_98 = ""
  loc_AF38D4: BranchF loc_AF3A23
  loc_AF38D7: FLdPr Me
  loc_AF38DA: MemLdI2 global_68
  loc_AF38DD: CI4UI1
  loc_AF38DE: CVarI4
  loc_AF38E2: PopAdLdVar
  loc_AF38E3: LitVarI4
  loc_AF38EB: PopAdLdVar
  loc_AF38EC: FLdPr Me
  loc_AF38EF: VCallAd Control_ID_DevengadoFlex
  loc_AF38F2: FStAdFunc var_DC
  loc_AF38F5: FLdPr var_DC
  loc_AF38F8: LateIdCallLdVar
  loc_AF3902: PopAd
  loc_AF3904: FLdPr Me
  loc_AF3907: MemLdI2 global_68
  loc_AF390A: CI4UI1
  loc_AF390B: CVarI4
  loc_AF390F: PopAdLdVar
  loc_AF3910: LitVarI4
  loc_AF3918: PopAdLdVar
  loc_AF3919: FLdPr Me
  loc_AF391C: VCallAd Control_ID_DevengadoFlex
  loc_AF391F: FStAdFunc var_88
  loc_AF3922: FLdPr var_88
  loc_AF3925: LateIdCallLdVar
  loc_AF392F: CStrVarTmp
  loc_AF3930: FStStrNoPop var_100
  loc_AF3933: CR8Str
  loc_AF3935: FLdRfVar var_EC
  loc_AF3938: CStrVarTmp
  loc_AF3939: FStStrNoPop var_104
  loc_AF393C: CR8Str
  loc_AF393E: GtR4
  loc_AF393F: FFreeStr var_100 = ""
  loc_AF3946: FFreeAd var_88 = ""
  loc_AF394D: FFreeVar var_98 = ""
  loc_AF3954: BranchF loc_AF3A23
  loc_AF3957: FLdPr Me
  loc_AF395A: MemLdI2 global_68
  loc_AF395D: CI4UI1
  loc_AF395E: CVarI4
  loc_AF3962: PopAdLdVar
  loc_AF3963: LitVarI4
  loc_AF396B: PopAdLdVar
  loc_AF396C: FLdPr Me
  loc_AF396F: VCallAd Control_ID_DevengadoFlex
  loc_AF3972: FStAdFunc var_88
  loc_AF3975: FLdPr var_88
  loc_AF3978: LateIdCallLdVar
  loc_AF3982: PopAd
  loc_AF3984: LitStr "El importe no debe ser mayor al valor inicial: "
  loc_AF3987: LitI4 1
  loc_AF398C: LitI4 1
  loc_AF3991: LitVarStr var_128, "0.00"
  loc_AF3996: FStVarCopyObj var_FC
  loc_AF3999: FLdRfVar var_FC
  loc_AF399C: FLdRfVar var_98
  loc_AF399F: CStrVarTmp
  loc_AF39A0: FStStrNoPop var_100
  loc_AF39A3: CR8Str
  loc_AF39A5: CVarR8
  loc_AF39A9: ImpAdCallI2 Format$(, )
  loc_AF39AE: FStStrNoPop var_104
  loc_AF39B1: ConcatStr
  loc_AF39B2: FStStrNoPop var_1B4
  loc_AF39B5: LitStr ". En la fila Numero: "
  loc_AF39B8: ConcatStr
  loc_AF39B9: FStStrNoPop var_1B8
  loc_AF39BC: FLdPr Me
  loc_AF39BF: MemLdI2 global_68
  loc_AF39C2: CStrUI1
  loc_AF39C4: FStStrNoPop var_1BC
  loc_AF39C7: ConcatStr
  loc_AF39C8: FStStrNoPop var_1C0
  loc_AF39CB: LitStr ". Verifique..."
  loc_AF39CE: ConcatStr
  loc_AF39CF: FStStrNoPop var_1C4
  loc_AF39D2: FLdPr Me
  loc_AF39D5: MemStStrCopy
  loc_AF39D9: FFreeStr var_100 = "": var_104 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = ""
  loc_AF39EA: FFree1Ad var_88
  loc_AF39ED: FFreeVar var_98 = "": var_EC = ""
  loc_AF39F6: LitI4 0
  loc_AF39FB: FLdPr Me
  loc_AF39FE: MemLdStr global_64
  loc_AF3A01: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF3A06: FLdPr Me
  loc_AF3A09: VCallAd Control_ID_DevengadoFlex
  loc_AF3A0C: FStAdFunc var_88
  loc_AF3A0F: FLdPr var_88
  loc_AF3A12: LateIdCall
  loc_AF3A1A: FFree1Ad var_88
  loc_AF3A1D: LitI2_Byte &HFF
  loc_AF3A1F: IStI2 KeyCode
  loc_AF3A22: ExitProcHresult
  loc_AF3A23: FLdPr Me
  loc_AF3A26: MemLdRfVar from_stack_1.global_68
  loc_AF3A29: NextI2 var_1B0, loc_AF3897
  loc_AF3A2E: ExitProcHresult
End Sub

Private Sub DevengadoFlex_Click() '9DA43C
  'Data Table: 46B458
  loc_9DA340: FLdPr Me
  loc_9DA343: VCallAd Control_ID_DevengadoFlex
  loc_9DA346: FStAdFunc var_88
  loc_9DA349: FLdPr var_88
  loc_9DA34C: LateIdLdVar var_98 DispID_13 -32767
  loc_9DA353: CBoolVar
  loc_9DA355: FFree1Ad var_88
  loc_9DA358: FFree1Var var_98 = ""
  loc_9DA35B: BranchF loc_9DA43B
  loc_9DA35E: FLdPr Me
  loc_9DA361: VCallAd Control_ID_DevengadoFlex
  loc_9DA364: FStAdFunc var_88
  loc_9DA367: FLdPr var_88
  loc_9DA36A: LateIdLdVar var_98 DispID_11 0
  loc_9DA371: CI4Var
  loc_9DA373: LitI4 8
  loc_9DA378: NeI4
  loc_9DA379: FFree1Ad var_88
  loc_9DA37C: FFree1Var var_98 = ""
  loc_9DA37F: BranchF loc_9DA43B
  loc_9DA382: FLdPr Me
  loc_9DA385: VCallAd Control_ID_DevengadoFlex
  loc_9DA388: FStAdFunc var_88
  loc_9DA38B: FLdPr var_88
  loc_9DA38E: LateIdLdVar var_98 DispID_10 0
  loc_9DA395: CI4Var
  loc_9DA397: CVarI4
  loc_9DA39B: PopAdLdVar
  loc_9DA39C: LitVarI4
  loc_9DA3A4: PopAdLdVar
  loc_9DA3A5: FLdPr Me
  loc_9DA3A8: VCallAd Control_ID_DevengadoFlex
  loc_9DA3AB: FStAdFunc var_DC
  loc_9DA3AE: FLdPr var_DC
  loc_9DA3B1: LateIdCallLdVar
  loc_9DA3BB: CStrVarTmp
  loc_9DA3BC: FStStrNoPop var_F0
  loc_9DA3BF: LitStr "No"
  loc_9DA3C2: EqStr
  loc_9DA3C4: FFree1Str var_F0
  loc_9DA3C7: FFreeAd var_88 = ""
  loc_9DA3CE: FFreeVar var_98 = ""
  loc_9DA3D5: BranchF loc_9DA3E0
  loc_9DA3D8: Call Proc_121_26_A1B7B4()
  loc_9DA3DD: Branch loc_9DA43B
  loc_9DA3E0: FLdPr Me
  loc_9DA3E3: VCallAd Control_ID_DevengadoFlex
  loc_9DA3E6: FStAdFunc var_88
  loc_9DA3E9: FLdPr var_88
  loc_9DA3EC: LateIdLdVar var_98 DispID_10 0
  loc_9DA3F3: CI4Var
  loc_9DA3F5: CVarI4
  loc_9DA3F9: PopAdLdVar
  loc_9DA3FA: LitVarI4
  loc_9DA402: PopAdLdVar
  loc_9DA403: FLdPr Me
  loc_9DA406: VCallAd Control_ID_DevengadoFlex
  loc_9DA409: FStAdFunc var_DC
  loc_9DA40C: FLdPr var_DC
  loc_9DA40F: LateIdCallLdVar
  loc_9DA419: CStrVarTmp
  loc_9DA41A: FStStrNoPop var_F0
  loc_9DA41D: LitStr "Si"
  loc_9DA420: EqStr
  loc_9DA422: FFree1Str var_F0
  loc_9DA425: FFreeAd var_88 = ""
  loc_9DA42C: FFreeVar var_98 = ""
  loc_9DA433: BranchF loc_9DA43B
  loc_9DA436: Call Proc_121_27_9BCBAC()
  loc_9DA43B: ExitProcHresult
End Sub

Private Sub DevengadoFlex_KeyPress(KeyAscii As Integer) 'A36CB0
  'Data Table: 46B458
  loc_A36AAC: ILdI2 KeyAscii
  loc_A36AAF: CI4UI1
  loc_A36AB0: LitI4 &H20
  loc_A36AB5: EqI4
  loc_A36AB6: BranchF loc_A36ABE
  loc_A36AB9: Call DevengadoFlex_Click()
  loc_A36ABE: FLdPr Me
  loc_A36AC1: VCallAd Control_ID_DevengadoFlex
  loc_A36AC4: FStAdFunc var_88
  loc_A36AC7: FLdPr var_88
  loc_A36ACA: LateIdLdVar var_98 DispID_10 0
  loc_A36AD1: CI4Var
  loc_A36AD3: CVarI4
  loc_A36AD7: PopAdLdVar
  loc_A36AD8: LitVarI4
  loc_A36AE0: PopAdLdVar
  loc_A36AE1: FLdPr Me
  loc_A36AE4: VCallAd Control_ID_DevengadoFlex
  loc_A36AE7: FStAdFunc var_DC
  loc_A36AEA: FLdPr var_DC
  loc_A36AED: LateIdCallLdVar
  loc_A36AF7: CStrVarTmp
  loc_A36AF8: FStStrNoPop var_F0
  loc_A36AFB: LitStr "Si"
  loc_A36AFE: EqStr
  loc_A36B00: FFree1Str var_F0
  loc_A36B03: FFreeAd var_88 = ""
  loc_A36B0A: FFreeVar var_98 = ""
  loc_A36B11: BranchF loc_A36CAC
  loc_A36B14: ILdI2 KeyAscii
  loc_A36B17: LitI2_Byte 8
  loc_A36B19: EqI2
  loc_A36B1A: BranchF loc_A36BD9
  loc_A36B1D: FLdPr Me
  loc_A36B20: VCallAd Control_ID_DevengadoFlex
  loc_A36B23: FStAdFunc var_88
  loc_A36B26: FLdPr var_88
  loc_A36B29: LateIdLdVar var_98 DispID_11 0
  loc_A36B30: CI4Var
  loc_A36B32: LitI4 8
  loc_A36B37: EqI4
  loc_A36B38: FFree1Ad var_88
  loc_A36B3B: FFree1Var var_98 = ""
  loc_A36B3E: BranchF loc_A36BD6
  loc_A36B41: FLdPr Me
  loc_A36B44: VCallAd Control_ID_DevengadoFlex
  loc_A36B47: FStAdFunc var_88
  loc_A36B4A: FLdPr var_88
  loc_A36B4D: LateIdLdVar var_98 DispID_0 0
  loc_A36B54: CStrVarTmp
  loc_A36B55: FStStrNoPop var_F0
  loc_A36B58: LitStr vbNullString
  loc_A36B5B: NeStr
  loc_A36B5D: FFree1Str var_F0
  loc_A36B60: FFree1Ad var_88
  loc_A36B63: FFree1Var var_98 = ""
  loc_A36B66: BranchF loc_A36BD6
  loc_A36B69: FLdPr Me
  loc_A36B6C: VCallAd Control_ID_DevengadoFlex
  loc_A36B6F: FStAdFunc var_88
  loc_A36B72: FLdPr var_88
  loc_A36B75: LateIdLdVar var_98 DispID_0 0
  loc_A36B7C: PopAd
  loc_A36B7E: FLdPr Me
  loc_A36B81: VCallAd Control_ID_DevengadoFlex
  loc_A36B84: FStAdFunc var_DC
  loc_A36B87: FLdPr var_DC
  loc_A36B8A: LateIdLdVar var_EC DispID_0 0
  loc_A36B91: CStrVarTmp
  loc_A36B92: FStStrNoPop var_F0
  loc_A36B95: FnLenStr
  loc_A36B96: LitI4 1
  loc_A36B9B: SubI4
  loc_A36B9C: FLdRfVar var_98
  loc_A36B9F: CStrVarTmp
  loc_A36BA0: FStStrNoPop var_F4
  loc_A36BA3: ImpAdCallI2 Left$(, )
  loc_A36BA8: CVarStr var_104
  loc_A36BAB: PopAdLdVar
  loc_A36BAC: FLdPr Me
  loc_A36BAF: VCallAd Control_ID_DevengadoFlex
  loc_A36BB2: FStAdFunc var_108
  loc_A36BB5: FLdPr var_108
  loc_A36BB8: LateIdSt
  loc_A36BBD: FFreeStr var_F0 = ""
  loc_A36BC4: FFreeAd var_88 = "": var_DC = ""
  loc_A36BCD: FFreeVar var_98 = "": var_EC = ""
  loc_A36BD6: Branch loc_A36CAC
  loc_A36BD9: FLdPr Me
  loc_A36BDC: VCallAd Control_ID_DevengadoFlex
  loc_A36BDF: FStAdFunc var_88
  loc_A36BE2: FLdPr var_88
  loc_A36BE5: LateIdLdVar var_98 DispID_11 0
  loc_A36BEC: CI4Var
  loc_A36BEE: LitI4 8
  loc_A36BF3: EqI4
  loc_A36BF4: FFree1Ad var_88
  loc_A36BF7: FFree1Var var_98 = ""
  loc_A36BFA: BranchF loc_A36CAC
  loc_A36BFD: FLdPr Me
  loc_A36C00: VCallAd Control_ID_DevengadoFlex
  loc_A36C03: FStAdFunc var_88
  loc_A36C06: FLdPr var_88
  loc_A36C09: LateIdLdVar var_98 DispID_0 0
  loc_A36C10: CStrVarTmp
  loc_A36C11: FStStrNoPop var_F0
  loc_A36C14: FnLenStr
  loc_A36C15: LitI4 &HC
  loc_A36C1A: LeI4
  loc_A36C1B: FFree1Str var_F0
  loc_A36C1E: FFree1Ad var_88
  loc_A36C21: FFree1Var var_98 = ""
  loc_A36C24: BranchF loc_A36CAC
  loc_A36C27: ILdI2 KeyAscii
  loc_A36C2A: LitStr "."
  loc_A36C2D: ImpAdCallI2 Asc()
  loc_A36C32: EqI2
  loc_A36C33: BranchF loc_A36C41
  loc_A36C36: LitStr ","
  loc_A36C39: ImpAdCallI2 Asc()
  loc_A36C3E: IStI2 KeyAscii
  loc_A36C41: LitStr "1234567890.,"
  loc_A36C44: FStStrCopy var_F0
  loc_A36C47: FLdRfVar var_F0
  loc_A36C4A: ILdRf KeyAscii
  loc_A36C4D: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_A36C52: IStI2 KeyAscii
  loc_A36C55: FFree1Str var_F0
  loc_A36C58: FLdPr Me
  loc_A36C5B: VCallAd Control_ID_DevengadoFlex
  loc_A36C5E: FStAdFunc var_88
  loc_A36C61: FLdPr var_88
  loc_A36C64: LateIdLdVar var_98 DispID_0 0
  loc_A36C6B: CStrVarTmp
  loc_A36C6C: CVarStr var_104
  loc_A36C6F: ILdI2 KeyAscii
  loc_A36C72: CI4UI1
  loc_A36C73: FLdRfVar var_EC
  loc_A36C76: ImpAdCallFPR4  = Chr()
  loc_A36C7B: FLdRfVar var_EC
  loc_A36C7E: AddVar var_118
  loc_A36C82: CStrVarTmp
  loc_A36C83: CVarStr var_128
  loc_A36C86: PopAdLdVar
  loc_A36C87: FLdPr Me
  loc_A36C8A: VCallAd Control_ID_DevengadoFlex
  loc_A36C8D: FStAdFunc var_DC
  loc_A36C90: FLdPr var_DC
  loc_A36C93: LateIdSt
  loc_A36C98: FFreeAd var_88 = ""
  loc_A36C9F: FFreeVar var_98 = "": var_104 = "": var_EC = "": var_118 = ""
  loc_A36CAC: ExitProcHresult
  loc_A36CAD: MemLdPr global_3071
End Sub

Private Sub DevengadoFlex_LeaveCell() 'AE3624
  'Data Table: 46B458
  loc_AE2F5C: FLdPr Me
  loc_AE2F5F: VCallAd Control_ID_DevengadoFlex
  loc_AE2F62: FStAdFunc var_88
  loc_AE2F65: FLdPr var_88
  loc_AE2F68: LateIdLdVar var_98 DispID_10 0
  loc_AE2F6F: CI4Var
  loc_AE2F71: CVarI4
  loc_AE2F75: PopAdLdVar
  loc_AE2F76: LitVarI4
  loc_AE2F7E: PopAdLdVar
  loc_AE2F7F: FLdPr Me
  loc_AE2F82: VCallAd Control_ID_DevengadoFlex
  loc_AE2F85: FStAdFunc var_DC
  loc_AE2F88: FLdPr var_DC
  loc_AE2F8B: LateIdCallLdVar
  loc_AE2F95: CStrVarTmp
  loc_AE2F96: FStStrNoPop var_F0
  loc_AE2F99: LitStr "Si"
  loc_AE2F9C: EqStr
  loc_AE2F9E: FFree1Str var_F0
  loc_AE2FA1: FFreeAd var_88 = ""
  loc_AE2FA8: FFreeVar var_98 = ""
  loc_AE2FAF: BranchF loc_AE3620
  loc_AE2FB2: FLdPr Me
  loc_AE2FB5: VCallAd Control_ID_DevengadoFlex
  loc_AE2FB8: FStAdFunc var_88
  loc_AE2FBB: FLdPr var_88
  loc_AE2FBE: LateIdLdVar var_98 DispID_11 0
  loc_AE2FC5: CI4Var
  loc_AE2FC7: LitI4 8
  loc_AE2FCC: EqI4
  loc_AE2FCD: FFree1Ad var_88
  loc_AE2FD0: FFree1Var var_98 = ""
  loc_AE2FD3: BranchF loc_AE3620
  loc_AE2FD6: FLdPr Me
  loc_AE2FD9: VCallAd Control_ID_DevengadoFlex
  loc_AE2FDC: FStAdFunc var_88
  loc_AE2FDF: FLdPr var_88
  loc_AE2FE2: LateIdLdVar var_98 DispID_10 0
  loc_AE2FE9: CI4Var
  loc_AE2FEB: CVarI4
  loc_AE2FEF: PopAdLdVar
  loc_AE2FF0: LitVarI4
  loc_AE2FF8: PopAdLdVar
  loc_AE2FF9: FLdPr Me
  loc_AE2FFC: VCallAd Control_ID_DevengadoFlex
  loc_AE2FFF: FStAdFunc var_DC
  loc_AE3002: FLdPr var_DC
  loc_AE3005: LateIdCallLdVar
  loc_AE300F: CStrVarTmp
  loc_AE3010: CVarStr var_100
  loc_AE3013: ImpAdCallI2 IsNumeric()
  loc_AE3018: FFreeAd var_88 = ""
  loc_AE301F: FFreeVar var_98 = "": var_EC = ""
  loc_AE3028: BranchF loc_AE339B
  loc_AE302B: FLdPr Me
  loc_AE302E: VCallAd Control_ID_DevengadoFlex
  loc_AE3031: FStAdFunc var_88
  loc_AE3034: FLdPr var_88
  loc_AE3037: LateIdLdVar var_98 DispID_10 0
  loc_AE303E: CI4Var
  loc_AE3040: CVarI4
  loc_AE3044: PopAdLdVar
  loc_AE3045: LitVarI4
  loc_AE304D: PopAdLdVar
  loc_AE304E: FLdPr Me
  loc_AE3051: VCallAd Control_ID_DevengadoFlex
  loc_AE3054: FStAdFunc var_DC
  loc_AE3057: FLdPr var_DC
  loc_AE305A: LateIdCallLdVar
  loc_AE3064: PopAd
  loc_AE3066: LitStr "0"
  loc_AE3069: LitI2_Byte &HFF
  loc_AE306B: LitI2_Byte 0
  loc_AE306D: LitI2_Byte 0
  loc_AE306F: FLdRfVar var_EC
  loc_AE3072: CStrVarTmp
  loc_AE3073: FStStrNoPop var_F0
  loc_AE3076: LitStr "Importe"
  loc_AE3079: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_AE307E: FStStrNoPop var_104
  loc_AE3081: FLdPr Me
  loc_AE3084: MemStStrCopy
  loc_AE3088: FFreeStr var_F0 = ""
  loc_AE308F: FFreeAd var_88 = ""
  loc_AE3096: FFreeVar var_98 = ""
  loc_AE309D: FLdPr Me
  loc_AE30A0: MemLdStr global_64
  loc_AE30A3: LitStr vbNullString
  loc_AE30A6: NeStr
  loc_AE30A8: BranchF loc_AE315E
  loc_AE30AB: LitI4 0
  loc_AE30B0: FLdPr Me
  loc_AE30B3: MemLdStr global_64
  loc_AE30B6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE30BB: FLdPr Me
  loc_AE30BE: VCallAd Control_ID_DevengadoFlex
  loc_AE30C1: FStAdFunc var_108
  loc_AE30C4: FLdPr var_108
  loc_AE30C7: LateIdLdVar var_100 DispID_10 0
  loc_AE30CE: CI4Var
  loc_AE30D0: CVarI4
  loc_AE30D4: PopAdLdVar
  loc_AE30D5: LitVarI4
  loc_AE30DD: PopAdLdVar
  loc_AE30DE: FLdPr Me
  loc_AE30E1: VCallAd Control_ID_DevengadoFlex
  loc_AE30E4: FStAdFunc var_88
  loc_AE30E7: FLdPr var_88
  loc_AE30EA: LateIdLdVar var_98 DispID_10 0
  loc_AE30F1: CI4Var
  loc_AE30F3: CVarI4
  loc_AE30F7: PopAdLdVar
  loc_AE30F8: LitVarI4
  loc_AE3100: PopAdLdVar
  loc_AE3101: FLdPr Me
  loc_AE3104: VCallAd Control_ID_DevengadoFlex
  loc_AE3107: FStAdFunc var_DC
  loc_AE310A: FLdPr var_DC
  loc_AE310D: LateIdCallLdVar
  loc_AE3117: CStrVarTmp
  loc_AE3118: CVarStr var_158
  loc_AE311B: PopAdLdVar
  loc_AE311C: FLdPr Me
  loc_AE311F: VCallAd Control_ID_DevengadoFlex
  loc_AE3122: FStAdFunc var_16C
  loc_AE3125: FLdPr var_16C
  loc_AE3128: LateIdCallSt
  loc_AE3130: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE313B: FFreeVar var_98 = "": var_EC = "": var_100 = ""
  loc_AE3146: FLdPr Me
  loc_AE3149: VCallAd Control_ID_DevengadoFlex
  loc_AE314C: FStAdFunc var_88
  loc_AE314F: FLdPr var_88
  loc_AE3152: LateIdCall
  loc_AE315A: FFree1Ad var_88
  loc_AE315D: ExitProcHresult
  loc_AE315E: FLdPr Me
  loc_AE3161: VCallAd Control_ID_DevengadoFlex
  loc_AE3164: FStAdFunc var_108
  loc_AE3167: FLdPr var_108
  loc_AE316A: LateIdLdVar var_100 DispID_10 0
  loc_AE3171: CI4Var
  loc_AE3173: CVarI4
  loc_AE3177: PopAdLdVar
  loc_AE3178: LitVarI4
  loc_AE3180: PopAdLdVar
  loc_AE3181: FLdPr Me
  loc_AE3184: VCallAd Control_ID_DevengadoFlex
  loc_AE3187: FStAdFunc var_16C
  loc_AE318A: FLdPr var_16C
  loc_AE318D: LateIdCallLdVar
  loc_AE3197: PopAd
  loc_AE3199: FLdPr Me
  loc_AE319C: VCallAd Control_ID_DevengadoFlex
  loc_AE319F: FStAdFunc var_88
  loc_AE31A2: FLdPr var_88
  loc_AE31A5: LateIdLdVar var_98 DispID_10 0
  loc_AE31AC: CI4Var
  loc_AE31AE: CVarI4
  loc_AE31B2: PopAdLdVar
  loc_AE31B3: LitVarI4
  loc_AE31BB: PopAdLdVar
  loc_AE31BC: FLdPr Me
  loc_AE31BF: VCallAd Control_ID_DevengadoFlex
  loc_AE31C2: FStAdFunc var_DC
  loc_AE31C5: FLdPr var_DC
  loc_AE31C8: LateIdCallLdVar
  loc_AE31D2: CStrVarTmp
  loc_AE31D3: FStStrNoPop var_F0
  loc_AE31D6: CR8Str
  loc_AE31D8: FLdRfVar var_158
  loc_AE31DB: CStrVarTmp
  loc_AE31DC: FStStrNoPop var_104
  loc_AE31DF: CR8Str
  loc_AE31E1: GtR4
  loc_AE31E2: FFreeStr var_F0 = ""
  loc_AE31E9: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE31F4: FFreeVar var_98 = "": var_EC = "": var_100 = ""
  loc_AE31FF: BranchF loc_AE3398
  loc_AE3202: FLdPr Me
  loc_AE3205: VCallAd Control_ID_DevengadoFlex
  loc_AE3208: FStAdFunc var_88
  loc_AE320B: FLdPr var_88
  loc_AE320E: LateIdLdVar var_98 DispID_10 0
  loc_AE3215: CI4Var
  loc_AE3217: CVarI4
  loc_AE321B: PopAdLdVar
  loc_AE321C: LitVarI4
  loc_AE3224: PopAdLdVar
  loc_AE3225: FLdPr Me
  loc_AE3228: VCallAd Control_ID_DevengadoFlex
  loc_AE322B: FStAdFunc var_DC
  loc_AE322E: FLdPr var_DC
  loc_AE3231: LateIdCallLdVar
  loc_AE323B: PopAd
  loc_AE323D: LitI4 1
  loc_AE3242: LitI4 1
  loc_AE3247: LitVarStr var_128, "0.00"
  loc_AE324C: FStVarCopyObj var_158
  loc_AE324F: FLdRfVar var_158
  loc_AE3252: FLdRfVar var_EC
  loc_AE3255: CStrVarTmp
  loc_AE3256: FStStrNoPop var_F0
  loc_AE3259: CR8Str
  loc_AE325B: CVarR8
  loc_AE325F: FLdRfVar var_17C
  loc_AE3262: ImpAdCallFPR4  = Format(, )
  loc_AE3267: LitI4 0
  loc_AE326C: LitVarStr var_138, "El importe no debe ser mayor al valor inicial: "
  loc_AE3271: FLdRfVar var_17C
  loc_AE3274: ConcatVar var_18C
  loc_AE3278: LitVarStr var_148, ". Verifique..."
  loc_AE327D: ConcatVar var_19C
  loc_AE3281: CStrVarVal var_104
  loc_AE3285: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE328A: FFreeStr var_F0 = ""
  loc_AE3291: FFreeAd var_88 = ""
  loc_AE3298: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_158 = "": var_17C = "": var_18C = ""
  loc_AE32A9: FLdPr Me
  loc_AE32AC: VCallAd Control_ID_DevengadoFlex
  loc_AE32AF: FStAdFunc var_88
  loc_AE32B2: FLdPr var_88
  loc_AE32B5: LateIdLdVar var_98 DispID_10 0
  loc_AE32BC: CI4Var
  loc_AE32BE: CVarI4
  loc_AE32C2: PopAdLdVar
  loc_AE32C3: LitVarI4
  loc_AE32CB: PopAdLdVar
  loc_AE32CC: FLdPr Me
  loc_AE32CF: VCallAd Control_ID_DevengadoFlex
  loc_AE32D2: FStAdFunc var_DC
  loc_AE32D5: FLdPr var_DC
  loc_AE32D8: LateIdCallLdVar
  loc_AE32E2: PopAd
  loc_AE32E4: FLdPr Me
  loc_AE32E7: VCallAd Control_ID_DevengadoFlex
  loc_AE32EA: FStAdFunc var_108
  loc_AE32ED: FLdPr var_108
  loc_AE32F0: LateIdLdVar var_18C DispID_10 0
  loc_AE32F7: CI4Var
  loc_AE32F9: CVarI4
  loc_AE32FD: PopAdLdVar
  loc_AE32FE: LitVarI4
  loc_AE3306: PopAdLdVar
  loc_AE3307: LitI4 1
  loc_AE330C: LitI4 1
  loc_AE3311: LitVarStr var_118, "###,###,##0.00"
  loc_AE3316: FStVarCopyObj var_158
  loc_AE3319: FLdRfVar var_158
  loc_AE331C: FLdRfVar var_EC
  loc_AE331F: CStrVarTmp
  loc_AE3320: CVarStr var_100
  loc_AE3323: FLdRfVar var_17C
  loc_AE3326: ImpAdCallFPR4  = Format(, )
  loc_AE332B: FLdRfVar var_17C
  loc_AE332E: CStrVarTmp
  loc_AE332F: CVarStr var_19C
  loc_AE3332: PopAdLdVar
  loc_AE3333: FLdPr Me
  loc_AE3336: VCallAd Control_ID_DevengadoFlex
  loc_AE3339: FStAdFunc var_16C
  loc_AE333C: FLdPr var_16C
  loc_AE333F: LateIdCallSt
  loc_AE3347: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE3352: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_158 = "": var_18C = "": var_17C = ""
  loc_AE3363: LitVarI4
  loc_AE336B: PopAdLdVar
  loc_AE336C: FLdPr Me
  loc_AE336F: VCallAd Control_ID_DevengadoFlex
  loc_AE3372: FStAdFunc var_88
  loc_AE3375: FLdPr var_88
  loc_AE3378: LateIdSt
  loc_AE337D: FFree1Ad var_88
  loc_AE3380: FLdPr Me
  loc_AE3383: VCallAd Control_ID_DevengadoFlex
  loc_AE3386: FStAdFunc var_88
  loc_AE3389: FLdPr var_88
  loc_AE338C: LateIdCall
  loc_AE3394: FFree1Ad var_88
  loc_AE3397: ExitProcHresult
  loc_AE3398: Branch loc_AE348E
  loc_AE339B: LitI4 0
  loc_AE33A0: LitStr "Ingrese un importe valido. Verifique..."
  loc_AE33A3: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE33A8: FLdPr Me
  loc_AE33AB: VCallAd Control_ID_DevengadoFlex
  loc_AE33AE: FStAdFunc var_88
  loc_AE33B1: FLdPr var_88
  loc_AE33B4: LateIdLdVar var_98 DispID_10 0
  loc_AE33BB: CI4Var
  loc_AE33BD: CVarI4
  loc_AE33C1: PopAdLdVar
  loc_AE33C2: LitVarI4
  loc_AE33CA: PopAdLdVar
  loc_AE33CB: FLdPr Me
  loc_AE33CE: VCallAd Control_ID_DevengadoFlex
  loc_AE33D1: FStAdFunc var_DC
  loc_AE33D4: FLdPr var_DC
  loc_AE33D7: LateIdCallLdVar
  loc_AE33E1: PopAd
  loc_AE33E3: FLdPr Me
  loc_AE33E6: VCallAd Control_ID_DevengadoFlex
  loc_AE33E9: FStAdFunc var_108
  loc_AE33EC: FLdPr var_108
  loc_AE33EF: LateIdLdVar var_17C DispID_10 0
  loc_AE33F6: CI4Var
  loc_AE33F8: CVarI4
  loc_AE33FC: PopAdLdVar
  loc_AE33FD: LitVarI4
  loc_AE3405: PopAdLdVar
  loc_AE3406: LitI4 1
  loc_AE340B: LitI4 1
  loc_AE3410: LitVarStr var_118, "###,###,##0.00"
  loc_AE3415: FStVarCopyObj var_158
  loc_AE3418: FLdRfVar var_158
  loc_AE341B: FLdRfVar var_EC
  loc_AE341E: CStrVarTmp
  loc_AE341F: CVarStr var_100
  loc_AE3422: ImpAdCallI2 Format$(, )
  loc_AE3427: CVarStr var_18C
  loc_AE342A: PopAdLdVar
  loc_AE342B: FLdPr Me
  loc_AE342E: VCallAd Control_ID_DevengadoFlex
  loc_AE3431: FStAdFunc var_16C
  loc_AE3434: FLdPr var_16C
  loc_AE3437: LateIdCallSt
  loc_AE343F: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE344A: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_158 = "": var_17C = ""
  loc_AE3459: LitVarI4
  loc_AE3461: PopAdLdVar
  loc_AE3462: FLdPr Me
  loc_AE3465: VCallAd Control_ID_DevengadoFlex
  loc_AE3468: FStAdFunc var_88
  loc_AE346B: FLdPr var_88
  loc_AE346E: LateIdSt
  loc_AE3473: FFree1Ad var_88
  loc_AE3476: FLdPr Me
  loc_AE3479: VCallAd Control_ID_DevengadoFlex
  loc_AE347C: FStAdFunc var_88
  loc_AE347F: FLdPr var_88
  loc_AE3482: LateIdCall
  loc_AE348A: FFree1Ad var_88
  loc_AE348D: ExitProcHresult
  loc_AE348E: FLdPr Me
  loc_AE3491: VCallAd Control_ID_DevengadoFlex
  loc_AE3494: FStAdFunc var_88
  loc_AE3497: FLdPr var_88
  loc_AE349A: LateIdLdVar var_98 DispID_10 0
  loc_AE34A1: CI4Var
  loc_AE34A3: CVarI4
  loc_AE34A7: PopAdLdVar
  loc_AE34A8: LitVarI4
  loc_AE34B0: PopAdLdVar
  loc_AE34B1: FLdPr Me
  loc_AE34B4: VCallAd Control_ID_DevengadoFlex
  loc_AE34B7: FStAdFunc var_DC
  loc_AE34BA: FLdPr var_DC
  loc_AE34BD: LateIdCallLdVar
  loc_AE34C7: PopAd
  loc_AE34C9: FLdPr Me
  loc_AE34CC: VCallAd Control_ID_DevengadoFlex
  loc_AE34CF: FStAdFunc var_108
  loc_AE34D2: FLdPr var_108
  loc_AE34D5: LateIdLdVar var_17C DispID_10 0
  loc_AE34DC: CI4Var
  loc_AE34DE: CVarI4
  loc_AE34E2: PopAdLdVar
  loc_AE34E3: LitVarI4
  loc_AE34EB: PopAdLdVar
  loc_AE34EC: LitI4 1
  loc_AE34F1: LitI4 1
  loc_AE34F6: LitVarStr var_118, "###,###,##0.00"
  loc_AE34FB: FStVarCopyObj var_158
  loc_AE34FE: FLdRfVar var_158
  loc_AE3501: FLdRfVar var_EC
  loc_AE3504: CStrVarTmp
  loc_AE3505: CVarStr var_100
  loc_AE3508: ImpAdCallI2 Format$(, )
  loc_AE350D: CVarStr var_18C
  loc_AE3510: PopAdLdVar
  loc_AE3511: FLdPr Me
  loc_AE3514: VCallAd Control_ID_DevengadoFlex
  loc_AE3517: FStAdFunc var_16C
  loc_AE351A: FLdPr var_16C
  loc_AE351D: LateIdCallSt
  loc_AE3525: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE3530: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_158 = "": var_17C = ""
  loc_AE353F: FLdPr Me
  loc_AE3542: VCallAd Control_ID_DevengadoFlex
  loc_AE3545: FStAdFunc var_108
  loc_AE3548: FLdPr var_108
  loc_AE354B: LateIdLdVar var_100 DispID_10 0
  loc_AE3552: CI4Var
  loc_AE3554: CVarI4
  loc_AE3558: PopAdLdVar
  loc_AE3559: LitVarI4
  loc_AE3561: PopAdLdVar
  loc_AE3562: FLdPr Me
  loc_AE3565: VCallAd Control_ID_DevengadoFlex
  loc_AE3568: FStAdFunc var_16C
  loc_AE356B: FLdPr var_16C
  loc_AE356E: LateIdCallLdVar
  loc_AE3578: PopAd
  loc_AE357A: FLdPr Me
  loc_AE357D: VCallAd Control_ID_DevengadoFlex
  loc_AE3580: FStAdFunc var_88
  loc_AE3583: FLdPr var_88
  loc_AE3586: LateIdLdVar var_98 DispID_10 0
  loc_AE358D: CI4Var
  loc_AE358F: CVarI4
  loc_AE3593: PopAdLdVar
  loc_AE3594: LitVarI4
  loc_AE359C: PopAdLdVar
  loc_AE359D: FLdPr Me
  loc_AE35A0: VCallAd Control_ID_DevengadoFlex
  loc_AE35A3: FStAdFunc var_DC
  loc_AE35A6: FLdPr var_DC
  loc_AE35A9: LateIdCallLdVar
  loc_AE35B3: CStrVarTmp
  loc_AE35B4: FStStrNoPop var_F0
  loc_AE35B7: CR8Str
  loc_AE35B9: FLdRfVar var_158
  loc_AE35BC: CStrVarTmp
  loc_AE35BD: FStStrNoPop var_104
  loc_AE35C0: CR8Str
  loc_AE35C2: LtR8
  loc_AE35C3: FFreeStr var_F0 = ""
  loc_AE35CA: FFreeAd var_88 = "": var_DC = "": var_108 = ""
  loc_AE35D5: FFreeVar var_98 = "": var_EC = "": var_100 = ""
  loc_AE35E0: BranchF loc_AE3603
  loc_AE35E3: LitVarI4
  loc_AE35EB: PopAdLdVar
  loc_AE35EC: FLdPr Me
  loc_AE35EF: VCallAd Control_ID_DevengadoFlex
  loc_AE35F2: FStAdFunc var_88
  loc_AE35F5: FLdPr var_88
  loc_AE35F8: LateIdSt
  loc_AE35FD: FFree1Ad var_88
  loc_AE3600: Branch loc_AE3620
  loc_AE3603: LitVarI4
  loc_AE360B: PopAdLdVar
  loc_AE360C: FLdPr Me
  loc_AE360F: VCallAd Control_ID_DevengadoFlex
  loc_AE3612: FStAdFunc var_88
  loc_AE3615: FLdPr var_88
  loc_AE3618: LateIdSt
  loc_AE361D: FFree1Ad var_88
  loc_AE3620: ExitProcHresult
End Sub

Private Sub FechLiquMsk_UnknownEvent_0 '94D838
  'Data Table: 46B458
  loc_94D824: FLdPr Me
  loc_94D827: VCallAd Control_ID_FechLiquMsk
  loc_94D82A: CVarAd
  loc_94D82E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D833: FFree1Var var_94 = ""
  loc_94D836: ExitProcHresult
End Sub

Private Function FechLiquMsk_UnknownEvent_8(arg_C) '9E2D30
  'Data Table: 46B458
  loc_9E2C30: FLdRfVar var_8A
  loc_9E2C33: FLdPr Me
  loc_9E2C36: VCallAd Control_ID_cmdCancelar
  loc_9E2C39: FStAdFunc var_88
  loc_9E2C3C: FLdPr var_88
  loc_9E2C3F:  = Me.Value
  loc_9E2C44: FLdI2 var_8A
  loc_9E2C47: NotI4
  loc_9E2C48: FLdPr Me
  loc_9E2C4B: VCallAd Control_ID_FechLiquMsk
  loc_9E2C4E: FStAdFunc var_90
  loc_9E2C51: FLdPr var_90
  loc_9E2C54: LateIdLdVar var_A0 DispID_13 -32767
  loc_9E2C5B: CBoolVar
  loc_9E2C5D: AndI4
  loc_9E2C5E: FFreeAd var_88 = ""
  loc_9E2C65: FFree1Var var_A0 = ""
  loc_9E2C68: BranchF loc_9E2D2E
  loc_9E2C6B: LitStr vbNullString
  loc_9E2C6E: FLdPr Me
  loc_9E2C71: MemStStrCopy
  loc_9E2C75: FLdPr Me
  loc_9E2C78: VCallAd Control_ID_FechLiquMsk
  loc_9E2C7B: FStAdFunc var_88
  loc_9E2C7E: FLdPr var_88
  loc_9E2C81: LateIdLdVar var_A0 DispID_15 0
  loc_9E2C88: PopAd
  loc_9E2C8A: FLdPr Me
  loc_9E2C8D: VCallAd Control_ID_FechLiquMsk
  loc_9E2C90: FStAdFunc var_90
  loc_9E2C93: FLdPr var_90
  loc_9E2C96: LateIdLdVar var_B0 DispID_11 -32767
  loc_9E2C9D: PopAd
  loc_9E2C9F: FLdPr Me
  loc_9E2CA2: VCallAd Control_ID_FechLiquMsk
  loc_9E2CA5: FStAdFunc var_C4
  loc_9E2CA8: LitI2_Byte &HFF
  loc_9E2CAA: PopTmpLdAd2 var_8A
  loc_9E2CAD: FLdZeroAd var_C4
  loc_9E2CB0: FStAdFunc var_BC
  loc_9E2CB3: FLdRfVar var_BC
  loc_9E2CB6: FLdRfVar var_B0
  loc_9E2CB9: CStrVarTmp
  loc_9E2CBA: FStStrNoPop var_B8
  loc_9E2CBD: LitI2_Byte &HFF
  loc_9E2CBF: LitI2_Byte &HFF
  loc_9E2CC1: FLdRfVar var_A0
  loc_9E2CC4: CStrVarTmp
  loc_9E2CC5: FStStrNoPop var_B4
  loc_9E2CC8: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9E2CCD: FStStrNoPop var_C0
  loc_9E2CD0: FLdPr Me
  loc_9E2CD3: MemStStrCopy
  loc_9E2CD7: FFreeStr var_B4 = "": var_B8 = ""
  loc_9E2CE0: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9E2CEB: FFreeVar var_A0 = ""
  loc_9E2CF2: FLdPr Me
  loc_9E2CF5: VCallAd Control_ID_FechLiquMsk
  loc_9E2CF8: FStAdFunc var_C4
  loc_9E2CFB: LitNothing
  loc_9E2CFD: CastAd
  loc_9E2D00: FStAdFunc var_BC
  loc_9E2D03: FLdRfVar var_BC
  loc_9E2D06: FLdZeroAd var_C4
  loc_9E2D09: FStAdFuncNoPop
  loc_9E2D0C: CastAd
  loc_9E2D0F: FStAdFunc var_90
  loc_9E2D12: FLdRfVar var_90
  loc_9E2D15: FLdPr Me
  loc_9E2D18: MemLdRfVar from_stack_1.global_64
  loc_9E2D1B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E2D20: IStI2 arg_C
  loc_9E2D23: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9E2D2E: ExitProcHresult
End Function

Private Sub FechLiquMsk_KeyPress(KeyAscii As Integer) '98CB58
  'Data Table: 46B458
  loc_98CB10: ILdI2 KeyAscii
  loc_98CB13: CI4UI1
  loc_98CB14: LitI4 &H20
  loc_98CB19: EqI4
  loc_98CB1A: BranchF loc_98CB57
  loc_98CB1D: LitVar_Missing var_A4
  loc_98CB20: PopAdLdVar
  loc_98CB21: LitVarI4
  loc_98CB29: PopAdLdVar
  loc_98CB2A: ImpAdLdRf MemVar_C3D9A8
  loc_98CB2D: NewIfNullPr frmCalendario
  loc_98CB30: frmCalendario.Show from_stack_1, from_stack_2
  loc_98CB35: ImpAdLdRf MemVar_C3D038
  loc_98CB38: CDargRef
  loc_98CB3C: FLdPr Me
  loc_98CB3F: VCallAd Control_ID_FechLiquMsk
  loc_98CB42: FStAdFunc var_A8
  loc_98CB45: FLdPr var_A8
  loc_98CB48: LateIdSt
  loc_98CB4D: FFree1Ad var_A8
  loc_98CB50: LitStr vbNullString
  loc_98CB53: ImpAdStStrCopy MemVar_C3D038
  loc_98CB57: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9FCC68
  'Data Table: 46B458
  loc_9FCB24: LitI2_Byte 0
  loc_9FCB26: CUI1I2
  loc_9FCB28: FLdPr Me
  loc_9FCB2B: MemStUI1
  loc_9FCB2F: ILdRf Me
  loc_9FCB32: CastAd
  loc_9FCB35: FStAdFunc var_88
  loc_9FCB38: FLdRfVar var_88
  loc_9FCB3B: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9FCB40: FFree1Ad var_88
  loc_9FCB43: LitI4 0
  loc_9FCB48: LitI4 0
  loc_9FCB4D: FLdRfVar var_8C
  loc_9FCB50: Redim
  loc_9FCB5A: FLdPr Me
  loc_9FCB5D: VCallAd Control_ID_dgdABMS
  loc_9FCB60: CVarAd
  loc_9FCB64: ParmAry1St
  loc_9FCB6A: FLdRfVar var_8C
  loc_9FCB6D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9FCB72: FLdRfVar var_8C
  loc_9FCB75: Erase
  loc_9FCB76: LitI4 0
  loc_9FCB7B: LitI4 0
  loc_9FCB80: FLdRfVar var_8C
  loc_9FCB83: Redim
  loc_9FCB8D: FLdPr Me
  loc_9FCB90: VCallAd Control_ID_DevengadoFlex
  loc_9FCB93: CVarAd
  loc_9FCB97: ParmAry1St
  loc_9FCB9D: FLdRfVar var_8C
  loc_9FCBA0: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9FCBA5: FLdRfVar var_8C
  loc_9FCBA8: Erase
  loc_9FCBA9: LitI2_Byte 0
  loc_9FCBAB: LitVarI2 var_9C, 0
  loc_9FCBB0: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_9FCBB5: FFree1Var var_9C = ""
  loc_9FCBB8: LitVarStr var_AC, vbNullString
  loc_9FCBBD: PopAdLdVar
  loc_9FCBBE: FLdPr Me
  loc_9FCBC1: VCallAd Control_ID_FechLiquMsk
  loc_9FCBC4: FStAdFunc var_88
  loc_9FCBC7: FLdPr var_88
  loc_9FCBCA: LateIdSt
  loc_9FCBCF: FFree1Ad var_88
  loc_9FCBD2: LitStr vbNullString
  loc_9FCBD5: FLdPr Me
  loc_9FCBD8: VCallAd Control_ID_DetaLiquTxt
  loc_9FCBDB: FStAdFunc var_88
  loc_9FCBDE: FLdPr var_88
  loc_9FCBE1: Me.Text = from_stack_1
  loc_9FCBE6: FFree1Ad var_88
  loc_9FCBE9: LitI2_Byte 0
  loc_9FCBEB: FLdPr Me
  loc_9FCBEE: VCallAd Control_ID_SeleTodoChk
  loc_9FCBF1: FStAdFunc var_88
  loc_9FCBF4: FLdPr var_88
  loc_9FCBF7: Me.Value = from_stack_1
  loc_9FCBFC: FFree1Ad var_88
  loc_9FCBFF: ILdRf Me
  loc_9FCC02: CastAd
  loc_9FCC05: FStAdFunc var_88
  loc_9FCC08: FLdRfVar var_88
  loc_9FCC0B: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9FCC10: FFree1Ad var_88
  loc_9FCC13: LitI2_Byte 0
  loc_9FCC15: CUI1I2
  loc_9FCC17: FLdPr Me
  loc_9FCC1A: MemStUI1
  loc_9FCC1E: FLdPr Me
  loc_9FCC21: VCallAd Control_ID_dgdABMS
  loc_9FCC24: FStAdFunc var_C4
  loc_9FCC27: LitStr "Devengado/s pendiente/s de Liquidación"
  loc_9FCC2A: FStStrCopy var_C0
  loc_9FCC2D: FLdRfVar var_C0
  loc_9FCC30: FLdPr Me
  loc_9FCC33: MemLdStr global_72
  loc_9FCC36: FLdZeroAd var_C4
  loc_9FCC39: FStAdFunc var_88
  loc_9FCC3C: FLdRfVar var_88
  loc_9FCC3F: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9FCC44: FFree1Str var_C0
  loc_9FCC47: FFreeAd var_88 = ""
  loc_9FCC4E: LitVar_FALSE
  loc_9FCC52: PopAdLdVar
  loc_9FCC53: FLdPr Me
  loc_9FCC56: VCallAd Control_ID_ProgressBar
  loc_9FCC59: FStAdFunc var_88
  loc_9FCC5C: FLdPr var_88
  loc_9FCC5F: LateIdSt
  loc_9FCC64: FFree1Ad var_88
  loc_9FCC67: ExitProcHresult
End Sub

Private Sub DetaLiquTxt_GotFocus() '94D910
  'Data Table: 46B458
  loc_94D8FC: FLdPr Me
  loc_94D8FF: VCallAd Control_ID_DetaLiquTxt
  loc_94D902: CVarAd
  loc_94D906: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D90B: FFree1Var var_94 = ""
  loc_94D90E: ExitProcHresult
End Sub

Private Sub DetaLiquTxt_Validate(Cancel As Boolean) '9BF6AC
  'Data Table: 46B458
  loc_9BF5F0: FLdRfVar var_8A
  loc_9BF5F3: FLdPr Me
  loc_9BF5F6: VCallAd Control_ID_cmdCancelar
  loc_9BF5F9: FStAdFunc var_88
  loc_9BF5FC: FLdPr var_88
  loc_9BF5FF:  = Me.Value
  loc_9BF604: FLdI2 var_8A
  loc_9BF607: NotI4
  loc_9BF608: FLdRfVar var_92
  loc_9BF60B: FLdPr Me
  loc_9BF60E: VCallAd Control_ID_DetaLiquTxt
  loc_9BF611: FStAdFunc var_90
  loc_9BF614: FLdPr var_90
  loc_9BF617:  = Me.Enabled
  loc_9BF61C: FLdI2 var_92
  loc_9BF61F: AndI4
  loc_9BF620: FFreeAd var_88 = ""
  loc_9BF627: BranchF loc_9BF6A8
  loc_9BF62A: FLdRfVar var_98
  loc_9BF62D: FLdPr Me
  loc_9BF630: VCallAd Control_ID_DetaLiquTxt
  loc_9BF633: FStAdFunc var_88
  loc_9BF636: FLdPr var_88
  loc_9BF639:  = Me.Text
  loc_9BF63E: LitI2_Byte 0
  loc_9BF640: PopTmpLdAd2 var_9A
  loc_9BF643: LitI2_Byte 0
  loc_9BF645: PopTmpLdAd2 var_92
  loc_9BF648: LitI2_Byte 0
  loc_9BF64A: PopTmpLdAd2 var_8A
  loc_9BF64D: ILdRf var_98
  loc_9BF650: LitStr "Detalle de Liquidación"
  loc_9BF653: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BF658: FStStrNoPop var_A0
  loc_9BF65B: FLdPr Me
  loc_9BF65E: MemStStrCopy
  loc_9BF662: FFreeStr var_98 = ""
  loc_9BF669: FFree1Ad var_88
  loc_9BF66C: FLdPr Me
  loc_9BF66F: VCallAd Control_ID_DetaLiquTxt
  loc_9BF672: FStAdFunc var_A8
  loc_9BF675: LitNothing
  loc_9BF677: CastAd
  loc_9BF67A: FStAdFunc var_A4
  loc_9BF67D: FLdRfVar var_A4
  loc_9BF680: FLdZeroAd var_A8
  loc_9BF683: FStAdFuncNoPop
  loc_9BF686: CastAd
  loc_9BF689: FStAdFunc var_90
  loc_9BF68C: FLdRfVar var_90
  loc_9BF68F: FLdPr Me
  loc_9BF692: MemLdRfVar from_stack_1.global_64
  loc_9BF695: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BF69A: IStI2 Cancel
  loc_9BF69D: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9BF6A8: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9650EC
  'Data Table: 46B458
  loc_9650D4: FLdPr Me
  loc_9650D7: VCallAd Control_ID_dgdABMS
  loc_9650DA: FStAdFunc var_88
  loc_9650DD: FLdRfVar var_88
  loc_9650E0: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_9650E5: FFree1Ad var_88
  loc_9650E8: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '965184
  'Data Table: 46B458
  loc_96516C: FLdPr Me
  loc_96516F: VCallAd Control_ID_dgdABMS
  loc_965172: FStAdFunc var_88
  loc_965175: FLdRfVar var_88
  loc_965178: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_96517D: FFree1Ad var_88
  loc_965180: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99ABC8
  'Data Table: 46B458
  loc_99AB6C: FLdRfVar var_B4
  loc_99AB6F: FLdRfVar var_B0
  loc_99AB72: FLdI2 ColIndex
  loc_99AB75: CVarI2 var_A8
  loc_99AB78: PopAdLdVar
  loc_99AB79: FLdPr Me
  loc_99AB7C: VCallAd Control_ID_dgdABMS
  loc_99AB7F: FStAdFunc var_88
  loc_99AB82: FLdPr var_88
  loc_99AB85: LateIdLdVar var_98 DispID_105 0
  loc_99AB8C: CastAdVar Me
  loc_99AB90: FStAdFunc var_AC
  loc_99AB93: FLdPr var_AC
  loc_99AB96: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99AB9B: FLdPr var_B0
  loc_99AB9E:  = Me.DataField
  loc_99ABA3: FLdZeroAd var_B4
  loc_99ABA6: PopTmpLdAdStr
  loc_99ABAA: FLdPr Me
  loc_99ABAD: MemLdRfVar from_stack_1.global_52
  loc_99ABB0: NewIfNullPr clsimputacion
  loc_99ABB3: Call clsimputacion.Sort(from_stack_1v)
  loc_99ABB8: FFree1Str var_B8
  loc_99ABBB: FFreeAd var_88 = "": var_AC = ""
  loc_99ABC4: FFree1Var var_98 = ""
  loc_99ABC7: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'BBF7C8
  'Data Table: 46B458
  loc_BBE710: FLdRfVar var_90
  loc_BBE713: FLdPr Me
  loc_BBE716: MemLdRfVar from_stack_1.global_52
  loc_BBE719: NewIfNullPr clsimputacion
  loc_BBE71C: from_stack_1 = clsimputacion.RecordCount
  loc_BBE721: ILdRf var_90
  loc_BBE724: LitI4 0
  loc_BBE729: LeI4
  loc_BBE72A: BranchF loc_BBE735
  loc_BBE72D: Call Proc_121_24_A1FA54()
  loc_BBE732: Branch loc_BBF7C4
  loc_BBE735: FLdPr Me
  loc_BBE738: MemLdStr global_80
  loc_BBE73B: CVarStr var_CC
  loc_BBE73E: HardType
  loc_BBE73F: FLdRfVar var_BC
  loc_BBE742: FLdRfVar var_AC
  loc_BBE745: LitVarStr var_A8, "ExpeImpu"
  loc_BBE74A: PopAdLdVar
  loc_BBE74B: FLdRfVar var_98
  loc_BBE74E: FLdRfVar var_94
  loc_BBE751: FLdPr Me
  loc_BBE754: MemLdRfVar from_stack_1.global_52
  loc_BBE757: NewIfNullPr clsimputacion
  loc_BBE75A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBE75F: FLdPr var_94
  loc_BBE762:  = Me.Fields
  loc_BBE767: FLdPr var_98
  loc_BBE76A: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE76F: FLdPr var_AC
  loc_BBE772:  = Me.Value
  loc_BBE777: FLdRfVar var_BC
  loc_BBE77A: NeVar var_DC
  loc_BBE77E: FLdPr Me
  loc_BBE781: MemLdStr global_84
  loc_BBE784: CVarStr var_118
  loc_BBE787: HardType
  loc_BBE788: FLdRfVar var_108
  loc_BBE78B: FLdRfVar var_F8
  loc_BBE78E: LitVarStr var_F4, "Tipo"
  loc_BBE793: PopAdLdVar
  loc_BBE794: FLdRfVar var_E4
  loc_BBE797: FLdRfVar var_E0
  loc_BBE79A: FLdPr Me
  loc_BBE79D: MemLdRfVar from_stack_1.global_52
  loc_BBE7A0: NewIfNullPr clsimputacion
  loc_BBE7A3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBE7A8: FLdPr var_E0
  loc_BBE7AB:  = Me.Fields
  loc_BBE7B0: FLdPr var_E4
  loc_BBE7B3: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE7B8: FLdPr var_F8
  loc_BBE7BB:  = Me.Value
  loc_BBE7C0: FLdRfVar var_108
  loc_BBE7C3: NeVar var_128
  loc_BBE7C7: OrVar var_138
  loc_BBE7CB: CBoolVarNull
  loc_BBE7CD: FFreeAd var_94 = "": var_98 = "": var_AC = "": var_E0 = "": var_E4 = ""
  loc_BBE7DC: FFreeVar var_BC = ""
  loc_BBE7E3: BranchF loc_BBF7C4
  loc_BBE7E6: Call Proc_121_24_A1FA54()
  loc_BBE7EB: FLdRfVar var_90
  loc_BBE7EE: FLdPr Me
  loc_BBE7F1: MemLdRfVar from_stack_1.global_52
  loc_BBE7F4: NewIfNullPr clsimputacion
  loc_BBE7F7: from_stack_1 = clsimputacion.RecordCount
  loc_BBE7FC: ILdRf var_90
  loc_BBE7FF: LitI4 0
  loc_BBE804: GtI4
  loc_BBE805: BranchF loc_BBF71A
  loc_BBE808: FLdRfVar var_13A
  loc_BBE80B: FLdPr Me
  loc_BBE80E: MemLdRfVar from_stack_1.global_52
  loc_BBE811: NewIfNullPr clsimputacion
  loc_BBE814: from_stack_1 = clsimputacion.BOF
  loc_BBE819: FLdI2 var_13A
  loc_BBE81C: BranchF loc_BBE82D
  loc_BBE81F: FLdPr Me
  loc_BBE822: MemLdRfVar from_stack_1.global_52
  loc_BBE825: NewIfNullPr clsimputacion
  loc_BBE828: Call clsimputacion.MoveFirst()
  loc_BBE82D: FLdRfVar var_13A
  loc_BBE830: FLdPr Me
  loc_BBE833: MemLdRfVar from_stack_1.global_52
  loc_BBE836: NewIfNullPr clsimputacion
  loc_BBE839: from_stack_1 = clsimputacion.EOF
  loc_BBE83E: FLdI2 var_13A
  loc_BBE841: BranchF loc_BBE852
  loc_BBE844: FLdPr Me
  loc_BBE847: MemLdRfVar from_stack_1.global_52
  loc_BBE84A: NewIfNullPr clsimputacion
  loc_BBE84D: Call clsimputacion.MoveLast()
  loc_BBE852: FLdRfVar var_BC
  loc_BBE855: FLdRfVar var_AC
  loc_BBE858: LitVarStr var_A8, "Tipo"
  loc_BBE85D: PopAdLdVar
  loc_BBE85E: FLdRfVar var_98
  loc_BBE861: FLdRfVar var_94
  loc_BBE864: FLdPr Me
  loc_BBE867: MemLdRfVar from_stack_1.global_52
  loc_BBE86A: NewIfNullPr clsimputacion
  loc_BBE86D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBE872: FLdPr var_94
  loc_BBE875:  = Me.Fields
  loc_BBE87A: FLdPr var_98
  loc_BBE87D: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE882: FLdPr var_AC
  loc_BBE885:  = Me.Value
  loc_BBE88A: FLdRfVar var_BC
  loc_BBE88D: LitVarStr var_CC, "Devengado"
  loc_BBE892: HardType
  loc_BBE893: EqVarBool
  loc_BBE895: FFreeAd var_94 = "": var_98 = ""
  loc_BBE89E: FFree1Var var_BC = ""
  loc_BBE8A1: BranchF loc_BBEFBD
  loc_BBE8A4: LitStr "SELECT '' TieneRete"
  loc_BBE8A7: LitStr ", i.*, DetaProv, DetaImpu, CodiOrco"
  loc_BBE8AA: ConcatStr
  loc_BBE8AB: FStStrNoPop var_140
  loc_BBE8AE: LitStr ", Left(NumeFact,3) TifaDeve, Substr(NumeFact,4,4) SufaDeve, Right(NumeFact,8) NufaDeve"
  loc_BBE8B1: ConcatStr
  loc_BBE8B2: FStStrNoPop var_144
  loc_BBE8B5: LitStr ", Sum(DeveImpu-LiquImpu) SaldDeve"
  loc_BBE8B8: ConcatStr
  loc_BBE8B9: FStStrNoPop var_148
  loc_BBE8BC: LitStr " FROM imputacion i"
  loc_BBE8BF: ConcatStr
  loc_BBE8C0: FStStrNoPop var_14C
  loc_BBE8C3: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = i.CucuPers"
  loc_BBE8C6: ConcatStr
  loc_BBE8C7: FStStrNoPop var_150
  loc_BBE8CA: LitStr " WHERE i.PeriInfo = "
  loc_BBE8CD: ConcatStr
  loc_BBE8CE: FStStrNoPop var_154
  loc_BBE8D1: ImpAdLdI2 MemVar_C3D064
  loc_BBE8D4: CStrUI1
  loc_BBE8D6: FStStrNoPop var_158
  loc_BBE8D9: ConcatStr
  loc_BBE8DA: FStStrNoPop var_15C
  loc_BBE8DD: LitStr " AND i.ExpeImpu = '"
  loc_BBE8E0: ConcatStr
  loc_BBE8E1: CVarStr var_DC
  loc_BBE8E4: FLdRfVar var_BC
  loc_BBE8E7: FLdRfVar var_AC
  loc_BBE8EA: LitVarStr var_A8, "ExpeImpu"
  loc_BBE8EF: PopAdLdVar
  loc_BBE8F0: FLdRfVar var_98
  loc_BBE8F3: FLdRfVar var_94
  loc_BBE8F6: FLdPr Me
  loc_BBE8F9: MemLdRfVar from_stack_1.global_52
  loc_BBE8FC: NewIfNullPr clsimputacion
  loc_BBE8FF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBE904: FLdPr var_94
  loc_BBE907:  = Me.Fields
  loc_BBE90C: FLdPr var_98
  loc_BBE90F: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE914: FLdPr var_AC
  loc_BBE917:  = Me.Value
  loc_BBE91C: FLdRfVar var_BC
  loc_BBE91F: ConcatVar var_108
  loc_BBE923: LitVarStr var_CC, "' AND (DeveImpu != 0 OR LiquImpu != 0)"
  loc_BBE928: ConcatVar var_128
  loc_BBE92C: LitVarStr var_F4, " GROUP BY i.PeriInfo, i.CodiPart, i.CodiOrga, i.CodiUnga, i.CodiInsu, i.CodiFifu, i.ExorImpu, i.ExpeImpu, i.CucuPers, i.CodiNope, i.Item, i.Altern, i.CodiOrco, i.CodiRece, i.NumeFact"
  loc_BBE931: ConcatVar var_138
  loc_BBE935: LitVarStr var_118, " HAVING SaldDeve > 0"
  loc_BBE93A: ConcatVar var_16C
  loc_BBE93E: LitVarStr var_17C, " ORDER BY i.ExpeImpu, DetaProv, i.CucuPers, i.ExorImpu, i.CodiPart, i.CodiOrga"
  loc_BBE943: ConcatVar var_18C
  loc_BBE947: CStrVarVal var_190
  loc_BBE94B: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BBE950: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_BBE965: FFreeAd var_94 = "": var_98 = ""
  loc_BBE96E: FFreeVar var_DC = "": var_BC = "": var_108 = "": var_128 = "": var_138 = "": var_16C = ""
  loc_BBE97F: FLdRfVar var_90
  loc_BBE982: ImpAdLdPr unk_46B49C
  loc_BBE985: MemLdPr global_0
  loc_BBE988:  = Me.RecordCount
  loc_BBE98D: ILdRf var_90
  loc_BBE990: LitI4 0
  loc_BBE995: GtI4
  loc_BBE996: BranchF loc_BBEFBA
  loc_BBE999: FLdRfVar var_90
  loc_BBE99C: ImpAdLdPr unk_46B49C
  loc_BBE99F: MemLdPr global_0
  loc_BBE9A2:  = Me.RecordCount
  loc_BBE9A7: ILdRf var_90
  loc_BBE9AA: CI2I4
  loc_BBE9AB: FLdPr Me
  loc_BBE9AE: MemStI2 global_70
  loc_BBE9B1: Call Proc_121_24_A1FA54()
  loc_BBE9B6: ImpAdLdPr unk_46B49C
  loc_BBE9B9: MemLdPr global_0
  loc_BBE9BC: Me.MoveFirst
  loc_BBE9C1: LitI2_Byte 1
  loc_BBE9C3: FLdPr Me
  loc_BBE9C6: MemLdRfVar from_stack_1.global_68
  loc_BBE9C9: FLdPr Me
  loc_BBE9CC: MemLdI2 global_70
  loc_BBE9CF: ForI2 var_194
  loc_BBE9D5: FLdRfVar var_25C
  loc_BBE9D8: LitVarStr var_258, "SufaDeve"
  loc_BBE9DD: PopAdLdVar
  loc_BBE9DE: FLdRfVar var_248
  loc_BBE9E1: ImpAdLdPr unk_46B49C
  loc_BBE9E4: MemLdPr global_0
  loc_BBE9E7:  = Me.Fields
  loc_BBE9EC: FLdPr var_248
  loc_BBE9EF: from_stack_2 = Me.Item(from_stack_1)
  loc_BBE9F4: FLdRfVar var_2C4
  loc_BBE9F7: LitVarStr var_2C0, "NufaDeve"
  loc_BBE9FC: PopAdLdVar
  loc_BBE9FD: FLdRfVar var_2B0
  loc_BBEA00: ImpAdLdPr unk_46B49C
  loc_BBEA03: MemLdPr global_0
  loc_BBEA06:  = Me.Fields
  loc_BBEA0B: FLdPr var_2B0
  loc_BBEA0E: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEA13: FLdRfVar var_454
  loc_BBEA16: LitVarStr var_450, "SaldDeve"
  loc_BBEA1B: PopAdLdVar
  loc_BBEA1C: FLdRfVar var_440
  loc_BBEA1F: ImpAdLdPr unk_46B49C
  loc_BBEA22: MemLdPr global_0
  loc_BBEA25:  = Me.Fields
  loc_BBEA2A: FLdPr var_440
  loc_BBEA2D: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEA32: FLdRfVar var_51C
  loc_BBEA35: LitVarStr var_518, "SaldDeve"
  loc_BBEA3A: PopAdLdVar
  loc_BBEA3B: FLdRfVar var_508
  loc_BBEA3E: ImpAdLdPr unk_46B49C
  loc_BBEA41: MemLdPr global_0
  loc_BBEA44:  = Me.Fields
  loc_BBEA49: FLdPr var_508
  loc_BBEA4C: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEA51: FLdRfVar var_DC
  loc_BBEA54: FLdRfVar var_98
  loc_BBEA57: LitVarStr var_A8, "TieneRete"
  loc_BBEA5C: PopAdLdVar
  loc_BBEA5D: FLdRfVar var_94
  loc_BBEA60: ImpAdLdPr unk_46B49C
  loc_BBEA63: MemLdPr global_0
  loc_BBEA66:  = Me.Fields
  loc_BBEA6B: FLdPr var_94
  loc_BBEA6E: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEA73: FLdPr var_98
  loc_BBEA76:  = Me.Value
  loc_BBEA7B: FLdRfVar var_DC
  loc_BBEA7E: LitI4 9
  loc_BBEA83: FLdRfVar var_BC
  loc_BBEA86: ImpAdCallFPR4  = Chr()
  loc_BBEA8B: FLdRfVar var_BC
  loc_BBEA8E: ConcatVar var_108
  loc_BBEA92: FLdRfVar var_128
  loc_BBEA95: FLdRfVar var_E0
  loc_BBEA98: LitVarStr var_CC, "CodiPart"
  loc_BBEA9D: PopAdLdVar
  loc_BBEA9E: FLdRfVar var_AC
  loc_BBEAA1: ImpAdLdPr unk_46B49C
  loc_BBEAA4: MemLdPr global_0
  loc_BBEAA7:  = Me.Fields
  loc_BBEAAC: FLdPr var_AC
  loc_BBEAAF: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEAB4: FLdPr var_E0
  loc_BBEAB7:  = Me.Value
  loc_BBEABC: FLdRfVar var_128
  loc_BBEABF: ConcatVar var_138
  loc_BBEAC3: LitI4 9
  loc_BBEAC8: FLdRfVar var_16C
  loc_BBEACB: ImpAdCallFPR4  = Chr()
  loc_BBEAD0: FLdRfVar var_16C
  loc_BBEAD3: ConcatVar var_18C
  loc_BBEAD7: FLdRfVar var_1A4
  loc_BBEADA: FLdRfVar var_F8
  loc_BBEADD: LitVarStr var_F4, "CodiOrga"
  loc_BBEAE2: PopAdLdVar
  loc_BBEAE3: FLdRfVar var_E4
  loc_BBEAE6: ImpAdLdPr unk_46B49C
  loc_BBEAE9: MemLdPr global_0
  loc_BBEAEC:  = Me.Fields
  loc_BBEAF1: FLdPr var_E4
  loc_BBEAF4: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEAF9: FLdPr var_F8
  loc_BBEAFC:  = Me.Value
  loc_BBEB01: FLdRfVar var_1A4
  loc_BBEB04: ConcatVar var_1B4
  loc_BBEB08: LitI4 9
  loc_BBEB0D: FLdRfVar var_1C4
  loc_BBEB10: ImpAdCallFPR4  = Chr()
  loc_BBEB15: FLdRfVar var_1C4
  loc_BBEB18: ConcatVar var_1D4
  loc_BBEB1C: FLdRfVar var_1EC
  loc_BBEB1F: FLdRfVar var_1DC
  loc_BBEB22: LitVarStr var_118, "IdImpu"
  loc_BBEB27: PopAdLdVar
  loc_BBEB28: FLdRfVar var_1D8
  loc_BBEB2B: ImpAdLdPr unk_46B49C
  loc_BBEB2E: MemLdPr global_0
  loc_BBEB31:  = Me.Fields
  loc_BBEB36: FLdPr var_1D8
  loc_BBEB39: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEB3E: FLdPr var_1DC
  loc_BBEB41:  = Me.Value
  loc_BBEB46: FLdRfVar var_1EC
  loc_BBEB49: ConcatVar var_1FC
  loc_BBEB4D: LitI4 9
  loc_BBEB52: FLdRfVar var_20C
  loc_BBEB55: ImpAdCallFPR4  = Chr()
  loc_BBEB5A: FLdRfVar var_20C
  loc_BBEB5D: ConcatVar var_21C
  loc_BBEB61: FLdRfVar var_234
  loc_BBEB64: FLdRfVar var_224
  loc_BBEB67: LitVarStr var_17C, "TifaDeve"
  loc_BBEB6C: PopAdLdVar
  loc_BBEB6D: FLdRfVar var_220
  loc_BBEB70: ImpAdLdPr unk_46B49C
  loc_BBEB73: MemLdPr global_0
  loc_BBEB76:  = Me.Fields
  loc_BBEB7B: FLdPr var_220
  loc_BBEB7E: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEB83: FLdPr var_224
  loc_BBEB86:  = Me.Value
  loc_BBEB8B: FLdRfVar var_234
  loc_BBEB8E: ConcatVar var_244
  loc_BBEB92: LitI4 1
  loc_BBEB97: LitI4 1
  loc_BBEB9C: LitVarStr var_27C, "0000"
  loc_BBEBA1: FStVarCopyObj var_28C
  loc_BBEBA4: FLdRfVar var_28C
  loc_BBEBA7: FLdZeroAd var_25C
  loc_BBEBAA: CVarAd
  loc_BBEBAE: ImpAdCallI2 Format$(, )
  loc_BBEBB3: CVarStr var_29C
  loc_BBEBB6: ConcatVar var_2AC
  loc_BBEBBA: LitI4 1
  loc_BBEBBF: LitI4 1
  loc_BBEBC4: LitVarStr var_2E4, "00000000"
  loc_BBEBC9: FStVarCopyObj var_2F4
  loc_BBEBCC: FLdRfVar var_2F4
  loc_BBEBCF: FLdZeroAd var_2C4
  loc_BBEBD2: CVarAd
  loc_BBEBD6: ImpAdCallI2 Format$(, )
  loc_BBEBDB: CVarStr var_304
  loc_BBEBDE: ConcatVar var_314
  loc_BBEBE2: LitI4 9
  loc_BBEBE7: FLdRfVar var_324
  loc_BBEBEA: ImpAdCallFPR4  = Chr()
  loc_BBEBEF: FLdRfVar var_324
  loc_BBEBF2: ConcatVar var_334
  loc_BBEBF6: FLdRfVar var_35C
  loc_BBEBF9: FLdRfVar var_34C
  loc_BBEBFC: LitVarStr var_348, "CucuPers"
  loc_BBEC01: PopAdLdVar
  loc_BBEC02: FLdRfVar var_338
  loc_BBEC05: ImpAdLdPr unk_46B49C
  loc_BBEC08: MemLdPr global_0
  loc_BBEC0B:  = Me.Fields
  loc_BBEC10: FLdPr var_338
  loc_BBEC13: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEC18: FLdPr var_34C
  loc_BBEC1B:  = Me.Value
  loc_BBEC20: FLdRfVar var_35C
  loc_BBEC23: ConcatVar var_36C
  loc_BBEC27: LitI4 9
  loc_BBEC2C: FLdRfVar var_37C
  loc_BBEC2F: ImpAdCallFPR4  = Chr()
  loc_BBEC34: FLdRfVar var_37C
  loc_BBEC37: ConcatVar var_38C
  loc_BBEC3B: FLdRfVar var_3B4
  loc_BBEC3E: FLdRfVar var_3A4
  loc_BBEC41: LitVarStr var_3A0, "DetaProv"
  loc_BBEC46: PopAdLdVar
  loc_BBEC47: FLdRfVar var_390
  loc_BBEC4A: ImpAdLdPr unk_46B49C
  loc_BBEC4D: MemLdPr global_0
  loc_BBEC50:  = Me.Fields
  loc_BBEC55: FLdPr var_390
  loc_BBEC58: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEC5D: FLdPr var_3A4
  loc_BBEC60:  = Me.Value
  loc_BBEC65: FLdRfVar var_3B4
  loc_BBEC68: ConcatVar var_3C4
  loc_BBEC6C: LitI4 9
  loc_BBEC71: FLdRfVar var_3D4
  loc_BBEC74: ImpAdCallFPR4  = Chr()
  loc_BBEC79: FLdRfVar var_3D4
  loc_BBEC7C: ConcatVar var_3E4
  loc_BBEC80: FLdRfVar var_40C
  loc_BBEC83: FLdRfVar var_3FC
  loc_BBEC86: LitVarStr var_3F8, "DetaImpu"
  loc_BBEC8B: PopAdLdVar
  loc_BBEC8C: FLdRfVar var_3E8
  loc_BBEC8F: ImpAdLdPr unk_46B49C
  loc_BBEC92: MemLdPr global_0
  loc_BBEC95:  = Me.Fields
  loc_BBEC9A: FLdPr var_3E8
  loc_BBEC9D: from_stack_2 = Me.Item(from_stack_1)
  loc_BBECA2: FLdPr var_3FC
  loc_BBECA5:  = Me.Value
  loc_BBECAA: FLdRfVar var_40C
  loc_BBECAD: ConcatVar var_41C
  loc_BBECB1: LitI4 9
  loc_BBECB6: FLdRfVar var_42C
  loc_BBECB9: ImpAdCallFPR4  = Chr()
  loc_BBECBE: FLdRfVar var_42C
  loc_BBECC1: ConcatVar var_43C
  loc_BBECC5: LitI4 1
  loc_BBECCA: LitI4 1
  loc_BBECCF: LitVarStr var_474, "0.00"
  loc_BBECD4: FStVarCopyObj var_484
  loc_BBECD7: FLdRfVar var_484
  loc_BBECDA: FLdZeroAd var_454
  loc_BBECDD: CVarAd
  loc_BBECE1: ImpAdCallI2 Format$(, )
  loc_BBECE6: CVarStr var_494
  loc_BBECE9: ConcatVar var_4A4
  loc_BBECED: LitI4 9
  loc_BBECF2: FLdRfVar var_4B4
  loc_BBECF5: ImpAdCallFPR4  = Chr()
  loc_BBECFA: FLdRfVar var_4B4
  loc_BBECFD: ConcatVar var_4C4
  loc_BBED01: LitVarStr var_4D4, "No"
  loc_BBED06: ConcatVar var_4E4
  loc_BBED0A: LitI4 9
  loc_BBED0F: FLdRfVar var_4F4
  loc_BBED12: ImpAdCallFPR4  = Chr()
  loc_BBED17: FLdRfVar var_4F4
  loc_BBED1A: ConcatVar var_504
  loc_BBED1E: LitI4 1
  loc_BBED23: LitI4 1
  loc_BBED28: LitVarStr var_53C, "0.00"
  loc_BBED2D: FStVarCopyObj var_54C
  loc_BBED30: FLdRfVar var_54C
  loc_BBED33: FLdZeroAd var_51C
  loc_BBED36: CVarAd
  loc_BBED3A: ImpAdCallI2 Format$(, )
  loc_BBED3F: CVarStr var_55C
  loc_BBED42: ConcatVar var_56C
  loc_BBED46: LitI4 9
  loc_BBED4B: FLdRfVar var_57C
  loc_BBED4E: ImpAdCallFPR4  = Chr()
  loc_BBED53: FLdRfVar var_57C
  loc_BBED56: ConcatVar var_58C
  loc_BBED5A: FLdRfVar var_5B4
  loc_BBED5D: FLdRfVar var_5A4
  loc_BBED60: LitVarStr var_5A0, "CodiOrco"
  loc_BBED65: PopAdLdVar
  loc_BBED66: FLdRfVar var_590
  loc_BBED69: ImpAdLdPr unk_46B49C
  loc_BBED6C: MemLdPr global_0
  loc_BBED6F:  = Me.Fields
  loc_BBED74: FLdPr var_590
  loc_BBED77: from_stack_2 = Me.Item(from_stack_1)
  loc_BBED7C: FLdPr var_5A4
  loc_BBED7F:  = Me.Value
  loc_BBED84: FLdRfVar var_5B4
  loc_BBED87: ConcatVar var_5C4
  loc_BBED8B: CStrVarTmp
  loc_BBED8C: CVarStr var_5D4
  loc_BBED8F: PopAdLdVar
  loc_BBED90: FLdPr Me
  loc_BBED93: VCallAd Control_ID_DevengadoFlex
  loc_BBED96: FStAdFunc var_5E8
  loc_BBED99: FLdPr var_5E8
  loc_BBED9C: LateIdCall
  loc_BBEDA4: FFreeAd var_94 = "": var_98 = "": var_AC = "": var_E0 = "": var_E4 = "": var_F8 = "": var_1D8 = "": var_1DC = "": var_220 = "": var_224 = "": var_248 = "": var_2B0 = "": var_338 = "": var_34C = "": var_390 = "": var_3A4 = "": var_3E8 = "": var_3FC = "": var_440 = "": var_508 = "": var_590 = "": var_5A4 = ""
  loc_BBEDD5: FFreeVar var_38C = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_40C = "": var_41C = "": var_42C = "": var_464 = "": var_484 = "": var_43C = "": var_494 = "": var_4A4 = "": var_4B4 = "": var_4C4 = "": var_4E4 = "": var_4F4 = "": var_52C = "": var_54C = "": var_504 = "": var_55C = "": var_56C = "": var_57C = "": var_58C = "": var_5B4 = "": var_5C4 = "": var_5D4 = "": var_DC = "": var_BC = "": var_108 = "": var_128 = "": var_138 = "": var_16C = "": var_18C = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_234 = "": var_26C = "": var_28C = "": var_244 = "": var_29C = "": var_2D4 = "": var_2F4 = "": var_2AC = "": var_304 = "": var_314 = "": var_324 = "": var_334 = "": var_35C = "": var_36C = ""
  loc_BBEE4A: FLdPr Me
  loc_BBEE4D: VCallAd Control_ID_DevengadoFlex
  loc_BBEE50: FStAdFunc var_94
  loc_BBEE53: FLdPr var_94
  loc_BBEE56: LateIdLdVar var_BC DispID_4 0
  loc_BBEE5D: CI4Var
  loc_BBEE5F: LitI4 1
  loc_BBEE64: SubI4
  loc_BBEE65: CVarI4
  loc_BBEE69: PopAdLdVar
  loc_BBEE6A: FLdPr Me
  loc_BBEE6D: VCallAd Control_ID_DevengadoFlex
  loc_BBEE70: FStAdFunc var_98
  loc_BBEE73: FLdPr var_98
  loc_BBEE76: LateIdSt
  loc_BBEE7B: FFreeAd var_94 = ""
  loc_BBEE82: FFree1Var var_BC = ""
  loc_BBEE85: LitVarI4
  loc_BBEE8D: PopAdLdVar
  loc_BBEE8E: FLdPr Me
  loc_BBEE91: VCallAd Control_ID_DevengadoFlex
  loc_BBEE94: FStAdFunc var_94
  loc_BBEE97: FLdPr var_94
  loc_BBEE9A: LateIdSt
  loc_BBEE9F: FFree1Ad var_94
  loc_BBEEA2: FLdRfVar var_BC
  loc_BBEEA5: FLdRfVar var_98
  loc_BBEEA8: LitVarStr var_A8, "TieneRete"
  loc_BBEEAD: PopAdLdVar
  loc_BBEEAE: FLdRfVar var_94
  loc_BBEEB1: ImpAdLdPr unk_46B49C
  loc_BBEEB4: MemLdPr global_0
  loc_BBEEB7:  = Me.Fields
  loc_BBEEBC: FLdPr var_94
  loc_BBEEBF: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEEC4: FLdPr var_98
  loc_BBEEC7:  = Me.Value
  loc_BBEECC: FLdRfVar var_BC
  loc_BBEECF: LitVarStr var_CC, "Si"
  loc_BBEED4: HardType
  loc_BBEED5: EqVarBool
  loc_BBEED7: FFreeAd var_94 = ""
  loc_BBEEDE: FFree1Var var_BC = ""
  loc_BBEEE1: BranchF loc_BBEF04
  loc_BBEEE4: LitVarI4
  loc_BBEEEC: PopAdLdVar
  loc_BBEEED: FLdPr Me
  loc_BBEEF0: VCallAd Control_ID_DevengadoFlex
  loc_BBEEF3: FStAdFunc var_94
  loc_BBEEF6: FLdPr var_94
  loc_BBEEF9: LateIdSt
  loc_BBEEFE: FFree1Ad var_94
  loc_BBEF01: Branch loc_BBEF21
  loc_BBEF04: LitVarI4
  loc_BBEF0C: PopAdLdVar
  loc_BBEF0D: FLdPr Me
  loc_BBEF10: VCallAd Control_ID_DevengadoFlex
  loc_BBEF13: FStAdFunc var_94
  loc_BBEF16: FLdPr var_94
  loc_BBEF19: LateIdSt
  loc_BBEF1E: FFree1Ad var_94
  loc_BBEF21: FLdFPR8 var_8C
  loc_BBEF24: CVarR8
  loc_BBEF28: FLdRfVar var_BC
  loc_BBEF2B: FLdRfVar var_98
  loc_BBEF2E: LitVarStr var_A8, "SaldDeve"
  loc_BBEF33: PopAdLdVar
  loc_BBEF34: FLdRfVar var_94
  loc_BBEF37: ImpAdLdPr unk_46B49C
  loc_BBEF3A: MemLdPr global_0
  loc_BBEF3D:  = Me.Fields
  loc_BBEF42: FLdPr var_94
  loc_BBEF45: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEF4A: FLdPr var_98
  loc_BBEF4D:  = Me.Value
  loc_BBEF52: FLdRfVar var_BC
  loc_BBEF55: AddVar var_DC
  loc_BBEF59: CR4Var
  loc_BBEF5A: FStFPR8 var_8C
  loc_BBEF5D: FFreeAd var_94 = ""
  loc_BBEF64: FFreeVar var_BC = ""
  loc_BBEF6B: ImpAdCallFPR4 Proc_266_19_9414E0()
  loc_BBEF70: FLdPr Me
  loc_BBEF73: MemLdRfVar from_stack_1.global_68
  loc_BBEF76: NextI2 var_194, loc_BBE9D5
  loc_BBEF7B: LitI4 1
  loc_BBEF80: LitI4 1
  loc_BBEF85: LitVarStr var_CC, "currency"
  loc_BBEF8A: FStVarCopyObj var_BC
  loc_BBEF8D: FLdRfVar var_BC
  loc_BBEF90: FLdRfVar var_8C
  loc_BBEF93: CVarRef
  loc_BBEF98: ImpAdCallI2 Format$(, )
  loc_BBEF9D: FStStrNoPop var_140
  loc_BBEFA0: FLdPr Me
  loc_BBEFA3: VCallAd Control_ID_lblTotalExpeImpu
  loc_BBEFA6: FStAdFunc var_94
  loc_BBEFA9: FLdPr var_94
  loc_BBEFAC: Me.Caption = from_stack_1
  loc_BBEFB1: FFree1Str var_140
  loc_BBEFB4: FFree1Ad var_94
  loc_BBEFB7: FFree1Var var_BC = ""
  loc_BBEFBA: Branch loc_BBF71A
  loc_BBEFBD: FLdRfVar var_BC
  loc_BBEFC0: FLdRfVar var_AC
  loc_BBEFC3: LitVarStr var_A8, "Tipo"
  loc_BBEFC8: PopAdLdVar
  loc_BBEFC9: FLdRfVar var_98
  loc_BBEFCC: FLdRfVar var_94
  loc_BBEFCF: FLdPr Me
  loc_BBEFD2: MemLdRfVar from_stack_1.global_52
  loc_BBEFD5: NewIfNullPr clsimputacion
  loc_BBEFD8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBEFDD: FLdPr var_94
  loc_BBEFE0:  = Me.Fields
  loc_BBEFE5: FLdPr var_98
  loc_BBEFE8: from_stack_2 = Me.Item(from_stack_1)
  loc_BBEFED: FLdPr var_AC
  loc_BBEFF0:  = Me.Value
  loc_BBEFF5: FLdRfVar var_BC
  loc_BBEFF8: LitVarStr var_CC, "Debito"
  loc_BBEFFD: HardType
  loc_BBEFFE: EqVarBool
  loc_BBF000: FFreeAd var_94 = "": var_98 = ""
  loc_BBF009: FFree1Var var_BC = ""
  loc_BBF00C: BranchF loc_BBF71A
  loc_BBF00F: LitStr "SELECT (SELECT IF(r.CucuPers IS NULL,'No','Si') FROM retexprov r WHERE r.PeriInfo = d.PeriInfo AND r.CucuPers = d.CucuPers GROUP BY r.CucuPers) TieneRete, d.*"
  loc_BBF012: LitStr ", Left(d.NumeFact,3) TifaDeve, Mid(d.NumeFact,4,4) SufaDeve, Right(d.NumeFact,8) NufaDeve"
  loc_BBF015: ConcatStr
  loc_BBF016: FStStrNoPop var_140
  loc_BBF019: LitStr ", DetaProv, 0 AS CodiOrco"
  loc_BBF01C: ConcatStr
  loc_BBF01D: FStStrNoPop var_144
  loc_BBF020: LitStr ", ImpoDebi-Sum(IF(ImpoImpu IS NULL,0,ImpoImpu)) saldo"
  loc_BBF023: ConcatStr
  loc_BBF024: FStStrNoPop var_148
  loc_BBF027: LitStr " FROM debito d USE INDEX (idxdebi02)"
  loc_BBF02A: ConcatStr
  loc_BBF02B: FStStrNoPop var_14C
  loc_BBF02E: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_BBF031: ConcatStr
  loc_BBF032: FStStrNoPop var_150
  loc_BBF035: LitStr " LEFT JOIN liquidadeta ld USE INDEX (idxlide02) ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi AND (SELECT FeanLiqu FROM liquidacion l WHERE l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu) IS NULL"
  loc_BBF038: ConcatStr
  loc_BBF039: FStStrNoPop var_154
  loc_BBF03C: LitStr " WHERE d.PeriInfo = "
  loc_BBF03F: ConcatStr
  loc_BBF040: FStStrNoPop var_158
  loc_BBF043: ImpAdLdI2 MemVar_C3D064
  loc_BBF046: CStrUI1
  loc_BBF048: FStStrNoPop var_15C
  loc_BBF04B: ConcatStr
  loc_BBF04C: FStStrNoPop var_190
  loc_BBF04F: LitStr " AND d.ExpeImpu = '"
  loc_BBF052: ConcatStr
  loc_BBF053: CVarStr var_DC
  loc_BBF056: FLdRfVar var_BC
  loc_BBF059: FLdRfVar var_AC
  loc_BBF05C: LitVarStr var_A8, "ExpeImpu"
  loc_BBF061: PopAdLdVar
  loc_BBF062: FLdRfVar var_98
  loc_BBF065: FLdRfVar var_94
  loc_BBF068: FLdPr Me
  loc_BBF06B: MemLdRfVar from_stack_1.global_52
  loc_BBF06E: NewIfNullPr clsimputacion
  loc_BBF071: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBF076: FLdPr var_94
  loc_BBF079:  = Me.Fields
  loc_BBF07E: FLdPr var_98
  loc_BBF081: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF086: FLdPr var_AC
  loc_BBF089:  = Me.Value
  loc_BBF08E: FLdRfVar var_BC
  loc_BBF091: ConcatVar var_108
  loc_BBF095: LitVarStr var_CC, "'"
  loc_BBF09A: ConcatVar var_128
  loc_BBF09E: LitVarStr var_F4, " AND FeanDebi Is Null"
  loc_BBF0A3: ConcatVar var_138
  loc_BBF0A7: LitVarStr var_118, " GROUP BY d.PeriInfo, d.NumeDebi"
  loc_BBF0AC: ConcatVar var_16C
  loc_BBF0B0: LitVarStr var_17C, " HAVING saldo > 0"
  loc_BBF0B5: ConcatVar var_18C
  loc_BBF0B9: LitVarStr var_258, " ORDER BY d.ExpeImpu, DetaProv, d.CucuPers, d.ExpeImpu, d.CodiCuco, d.NumeDebi"
  loc_BBF0BE: ConcatVar var_1A4
  loc_BBF0C2: CStrVarVal var_5EC
  loc_BBF0C6: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_BBF0CB: FFreeStr var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_190 = ""
  loc_BBF0E2: FFreeAd var_94 = "": var_98 = ""
  loc_BBF0EB: FFreeVar var_DC = "": var_BC = "": var_108 = "": var_128 = "": var_138 = "": var_16C = "": var_18C = ""
  loc_BBF0FE: FLdRfVar var_90
  loc_BBF101: ImpAdLdPr unk_46B49C
  loc_BBF104: MemLdPr global_0
  loc_BBF107:  = Me.RecordCount
  loc_BBF10C: ILdRf var_90
  loc_BBF10F: LitI4 0
  loc_BBF114: GtI4
  loc_BBF115: BranchF loc_BBF71A
  loc_BBF118: Call Proc_121_24_A1FA54()
  loc_BBF11D: ImpAdLdPr unk_46B49C
  loc_BBF120: MemLdPr global_0
  loc_BBF123: Me.MoveFirst
  loc_BBF128: FLdRfVar var_13A
  loc_BBF12B: ImpAdLdPr unk_46B49C
  loc_BBF12E: MemLdPr global_0
  loc_BBF131:  = Me.EOF
  loc_BBF136: FLdI2 var_13A
  loc_BBF139: NotI4
  loc_BBF13A: BranchF loc_BBF6DB
  loc_BBF13D: FLdRfVar var_25C
  loc_BBF140: LitVarStr var_258, "SufaDeve"
  loc_BBF145: PopAdLdVar
  loc_BBF146: FLdRfVar var_248
  loc_BBF149: ImpAdLdPr unk_46B49C
  loc_BBF14C: MemLdPr global_0
  loc_BBF14F:  = Me.Fields
  loc_BBF154: FLdPr var_248
  loc_BBF157: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF15C: FLdRfVar var_2C4
  loc_BBF15F: LitVarStr var_2C0, "NufaDeve"
  loc_BBF164: PopAdLdVar
  loc_BBF165: FLdRfVar var_2B0
  loc_BBF168: ImpAdLdPr unk_46B49C
  loc_BBF16B: MemLdPr global_0
  loc_BBF16E:  = Me.Fields
  loc_BBF173: FLdPr var_2B0
  loc_BBF176: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF17B: FLdRfVar var_454
  loc_BBF17E: LitVarStr var_450, "Saldo"
  loc_BBF183: PopAdLdVar
  loc_BBF184: FLdRfVar var_440
  loc_BBF187: ImpAdLdPr unk_46B49C
  loc_BBF18A: MemLdPr global_0
  loc_BBF18D:  = Me.Fields
  loc_BBF192: FLdPr var_440
  loc_BBF195: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF19A: FLdRfVar var_51C
  loc_BBF19D: LitVarStr var_518, "Saldo"
  loc_BBF1A2: PopAdLdVar
  loc_BBF1A3: FLdRfVar var_508
  loc_BBF1A6: ImpAdLdPr unk_46B49C
  loc_BBF1A9: MemLdPr global_0
  loc_BBF1AC:  = Me.Fields
  loc_BBF1B1: FLdPr var_508
  loc_BBF1B4: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF1B9: FLdRfVar var_DC
  loc_BBF1BC: FLdRfVar var_98
  loc_BBF1BF: LitVarStr var_A8, "TieneRete"
  loc_BBF1C4: PopAdLdVar
  loc_BBF1C5: FLdRfVar var_94
  loc_BBF1C8: ImpAdLdPr unk_46B49C
  loc_BBF1CB: MemLdPr global_0
  loc_BBF1CE:  = Me.Fields
  loc_BBF1D3: FLdPr var_94
  loc_BBF1D6: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF1DB: FLdPr var_98
  loc_BBF1DE:  = Me.Value
  loc_BBF1E3: FLdRfVar var_DC
  loc_BBF1E6: LitI4 9
  loc_BBF1EB: FLdRfVar var_BC
  loc_BBF1EE: ImpAdCallFPR4  = Chr()
  loc_BBF1F3: FLdRfVar var_BC
  loc_BBF1F6: ConcatVar var_108
  loc_BBF1FA: FLdRfVar var_128
  loc_BBF1FD: FLdRfVar var_E0
  loc_BBF200: LitVarStr var_CC, "CodiCuco"
  loc_BBF205: PopAdLdVar
  loc_BBF206: FLdRfVar var_AC
  loc_BBF209: ImpAdLdPr unk_46B49C
  loc_BBF20C: MemLdPr global_0
  loc_BBF20F:  = Me.Fields
  loc_BBF214: FLdPr var_AC
  loc_BBF217: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF21C: FLdPr var_E0
  loc_BBF21F:  = Me.Value
  loc_BBF224: FLdRfVar var_128
  loc_BBF227: ConcatVar var_138
  loc_BBF22B: LitI4 9
  loc_BBF230: FLdRfVar var_16C
  loc_BBF233: ImpAdCallFPR4  = Chr()
  loc_BBF238: FLdRfVar var_16C
  loc_BBF23B: ConcatVar var_18C
  loc_BBF23F: FLdRfVar var_1A4
  loc_BBF242: FLdRfVar var_F8
  loc_BBF245: LitVarStr var_F4, "CodiOrga"
  loc_BBF24A: PopAdLdVar
  loc_BBF24B: FLdRfVar var_E4
  loc_BBF24E: ImpAdLdPr unk_46B49C
  loc_BBF251: MemLdPr global_0
  loc_BBF254:  = Me.Fields
  loc_BBF259: FLdPr var_E4
  loc_BBF25C: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF261: FLdPr var_F8
  loc_BBF264:  = Me.Value
  loc_BBF269: FLdRfVar var_1A4
  loc_BBF26C: ConcatVar var_1B4
  loc_BBF270: LitI4 9
  loc_BBF275: FLdRfVar var_1C4
  loc_BBF278: ImpAdCallFPR4  = Chr()
  loc_BBF27D: FLdRfVar var_1C4
  loc_BBF280: ConcatVar var_1D4
  loc_BBF284: FLdRfVar var_1EC
  loc_BBF287: FLdRfVar var_1DC
  loc_BBF28A: LitVarStr var_118, "NumeDebi"
  loc_BBF28F: PopAdLdVar
  loc_BBF290: FLdRfVar var_1D8
  loc_BBF293: ImpAdLdPr unk_46B49C
  loc_BBF296: MemLdPr global_0
  loc_BBF299:  = Me.Fields
  loc_BBF29E: FLdPr var_1D8
  loc_BBF2A1: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF2A6: FLdPr var_1DC
  loc_BBF2A9:  = Me.Value
  loc_BBF2AE: FLdRfVar var_1EC
  loc_BBF2B1: ConcatVar var_1FC
  loc_BBF2B5: LitI4 9
  loc_BBF2BA: FLdRfVar var_20C
  loc_BBF2BD: ImpAdCallFPR4  = Chr()
  loc_BBF2C2: FLdRfVar var_20C
  loc_BBF2C5: ConcatVar var_21C
  loc_BBF2C9: FLdRfVar var_234
  loc_BBF2CC: FLdRfVar var_224
  loc_BBF2CF: LitVarStr var_17C, "TifaDeve"
  loc_BBF2D4: PopAdLdVar
  loc_BBF2D5: FLdRfVar var_220
  loc_BBF2D8: ImpAdLdPr unk_46B49C
  loc_BBF2DB: MemLdPr global_0
  loc_BBF2DE:  = Me.Fields
  loc_BBF2E3: FLdPr var_220
  loc_BBF2E6: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF2EB: FLdPr var_224
  loc_BBF2EE:  = Me.Value
  loc_BBF2F3: FLdRfVar var_234
  loc_BBF2F6: ConcatVar var_244
  loc_BBF2FA: LitI4 1
  loc_BBF2FF: LitI4 1
  loc_BBF304: LitVarStr var_27C, "0000"
  loc_BBF309: FStVarCopyObj var_28C
  loc_BBF30C: FLdRfVar var_28C
  loc_BBF30F: FLdZeroAd var_25C
  loc_BBF312: CVarAd
  loc_BBF316: ImpAdCallI2 Format$(, )
  loc_BBF31B: CVarStr var_29C
  loc_BBF31E: ConcatVar var_2AC
  loc_BBF322: LitI4 1
  loc_BBF327: LitI4 1
  loc_BBF32C: LitVarStr var_2E4, "00000000"
  loc_BBF331: FStVarCopyObj var_2F4
  loc_BBF334: FLdRfVar var_2F4
  loc_BBF337: FLdZeroAd var_2C4
  loc_BBF33A: CVarAd
  loc_BBF33E: ImpAdCallI2 Format$(, )
  loc_BBF343: CVarStr var_304
  loc_BBF346: ConcatVar var_314
  loc_BBF34A: LitI4 9
  loc_BBF34F: FLdRfVar var_324
  loc_BBF352: ImpAdCallFPR4  = Chr()
  loc_BBF357: FLdRfVar var_324
  loc_BBF35A: ConcatVar var_334
  loc_BBF35E: FLdRfVar var_35C
  loc_BBF361: FLdRfVar var_34C
  loc_BBF364: LitVarStr var_348, "CucuPers"
  loc_BBF369: PopAdLdVar
  loc_BBF36A: FLdRfVar var_338
  loc_BBF36D: ImpAdLdPr unk_46B49C
  loc_BBF370: MemLdPr global_0
  loc_BBF373:  = Me.Fields
  loc_BBF378: FLdPr var_338
  loc_BBF37B: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF380: FLdPr var_34C
  loc_BBF383:  = Me.Value
  loc_BBF388: FLdRfVar var_35C
  loc_BBF38B: ConcatVar var_36C
  loc_BBF38F: LitI4 9
  loc_BBF394: FLdRfVar var_37C
  loc_BBF397: ImpAdCallFPR4  = Chr()
  loc_BBF39C: FLdRfVar var_37C
  loc_BBF39F: ConcatVar var_38C
  loc_BBF3A3: FLdRfVar var_3B4
  loc_BBF3A6: FLdRfVar var_3A4
  loc_BBF3A9: LitVarStr var_3A0, "DetaProv"
  loc_BBF3AE: PopAdLdVar
  loc_BBF3AF: FLdRfVar var_390
  loc_BBF3B2: ImpAdLdPr unk_46B49C
  loc_BBF3B5: MemLdPr global_0
  loc_BBF3B8:  = Me.Fields
  loc_BBF3BD: FLdPr var_390
  loc_BBF3C0: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF3C5: FLdPr var_3A4
  loc_BBF3C8:  = Me.Value
  loc_BBF3CD: FLdRfVar var_3B4
  loc_BBF3D0: ConcatVar var_3C4
  loc_BBF3D4: LitI4 9
  loc_BBF3D9: FLdRfVar var_3D4
  loc_BBF3DC: ImpAdCallFPR4  = Chr()
  loc_BBF3E1: FLdRfVar var_3D4
  loc_BBF3E4: ConcatVar var_3E4
  loc_BBF3E8: FLdRfVar var_40C
  loc_BBF3EB: FLdRfVar var_3FC
  loc_BBF3EE: LitVarStr var_3F8, "DetaDebi"
  loc_BBF3F3: PopAdLdVar
  loc_BBF3F4: FLdRfVar var_3E8
  loc_BBF3F7: ImpAdLdPr unk_46B49C
  loc_BBF3FA: MemLdPr global_0
  loc_BBF3FD:  = Me.Fields
  loc_BBF402: FLdPr var_3E8
  loc_BBF405: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF40A: FLdPr var_3FC
  loc_BBF40D:  = Me.Value
  loc_BBF412: FLdRfVar var_40C
  loc_BBF415: ConcatVar var_41C
  loc_BBF419: LitI4 9
  loc_BBF41E: FLdRfVar var_42C
  loc_BBF421: ImpAdCallFPR4  = Chr()
  loc_BBF426: FLdRfVar var_42C
  loc_BBF429: ConcatVar var_43C
  loc_BBF42D: LitI4 1
  loc_BBF432: LitI4 1
  loc_BBF437: LitVarStr var_474, "0.00"
  loc_BBF43C: FStVarCopyObj var_484
  loc_BBF43F: FLdRfVar var_484
  loc_BBF442: FLdZeroAd var_454
  loc_BBF445: CVarAd
  loc_BBF449: ImpAdCallI2 Format$(, )
  loc_BBF44E: CVarStr var_494
  loc_BBF451: ConcatVar var_4A4
  loc_BBF455: LitI4 9
  loc_BBF45A: FLdRfVar var_4B4
  loc_BBF45D: ImpAdCallFPR4  = Chr()
  loc_BBF462: FLdRfVar var_4B4
  loc_BBF465: ConcatVar var_4C4
  loc_BBF469: LitVarStr var_4D4, "No"
  loc_BBF46E: ConcatVar var_4E4
  loc_BBF472: LitI4 9
  loc_BBF477: FLdRfVar var_4F4
  loc_BBF47A: ImpAdCallFPR4  = Chr()
  loc_BBF47F: FLdRfVar var_4F4
  loc_BBF482: ConcatVar var_504
  loc_BBF486: LitI4 1
  loc_BBF48B: LitI4 1
  loc_BBF490: LitVarStr var_53C, "0.00"
  loc_BBF495: FStVarCopyObj var_54C
  loc_BBF498: FLdRfVar var_54C
  loc_BBF49B: FLdZeroAd var_51C
  loc_BBF49E: CVarAd
  loc_BBF4A2: ImpAdCallI2 Format$(, )
  loc_BBF4A7: CVarStr var_55C
  loc_BBF4AA: ConcatVar var_56C
  loc_BBF4AE: LitI4 9
  loc_BBF4B3: FLdRfVar var_57C
  loc_BBF4B6: ImpAdCallFPR4  = Chr()
  loc_BBF4BB: FLdRfVar var_57C
  loc_BBF4BE: ConcatVar var_58C
  loc_BBF4C2: FLdRfVar var_5B4
  loc_BBF4C5: FLdRfVar var_5A4
  loc_BBF4C8: LitVarStr var_5A0, "CodiOrco"
  loc_BBF4CD: PopAdLdVar
  loc_BBF4CE: FLdRfVar var_590
  loc_BBF4D1: ImpAdLdPr unk_46B49C
  loc_BBF4D4: MemLdPr global_0
  loc_BBF4D7:  = Me.Fields
  loc_BBF4DC: FLdPr var_590
  loc_BBF4DF: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF4E4: FLdPr var_5A4
  loc_BBF4E7:  = Me.Value
  loc_BBF4EC: FLdRfVar var_5B4
  loc_BBF4EF: ConcatVar var_5C4
  loc_BBF4F3: CStrVarTmp
  loc_BBF4F4: CVarStr var_5D4
  loc_BBF4F7: PopAdLdVar
  loc_BBF4F8: FLdPr Me
  loc_BBF4FB: VCallAd Control_ID_DevengadoFlex
  loc_BBF4FE: FStAdFunc var_5E8
  loc_BBF501: FLdPr var_5E8
  loc_BBF504: LateIdCall
  loc_BBF50C: FFreeAd var_94 = "": var_98 = "": var_AC = "": var_E0 = "": var_E4 = "": var_F8 = "": var_1D8 = "": var_1DC = "": var_220 = "": var_224 = "": var_248 = "": var_2B0 = "": var_338 = "": var_34C = "": var_390 = "": var_3A4 = "": var_3E8 = "": var_3FC = "": var_440 = "": var_508 = "": var_590 = "": var_5A4 = ""
  loc_BBF53D: FFreeVar var_38C = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_40C = "": var_41C = "": var_42C = "": var_464 = "": var_484 = "": var_43C = "": var_494 = "": var_4A4 = "": var_4B4 = "": var_4C4 = "": var_4E4 = "": var_4F4 = "": var_52C = "": var_54C = "": var_504 = "": var_55C = "": var_56C = "": var_57C = "": var_58C = "": var_5B4 = "": var_5C4 = "": var_5D4 = "": var_DC = "": var_BC = "": var_108 = "": var_128 = "": var_138 = "": var_16C = "": var_18C = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_234 = "": var_26C = "": var_28C = "": var_244 = "": var_29C = "": var_2D4 = "": var_2F4 = "": var_2AC = "": var_304 = "": var_314 = "": var_324 = "": var_334 = "": var_35C = "": var_36C = ""
  loc_BBF5B2: FLdPr Me
  loc_BBF5B5: VCallAd Control_ID_DevengadoFlex
  loc_BBF5B8: FStAdFunc var_94
  loc_BBF5BB: FLdPr var_94
  loc_BBF5BE: LateIdLdVar var_BC DispID_4 0
  loc_BBF5C5: CI4Var
  loc_BBF5C7: LitI4 1
  loc_BBF5CC: SubI4
  loc_BBF5CD: CVarI4
  loc_BBF5D1: PopAdLdVar
  loc_BBF5D2: FLdPr Me
  loc_BBF5D5: VCallAd Control_ID_DevengadoFlex
  loc_BBF5D8: FStAdFunc var_98
  loc_BBF5DB: FLdPr var_98
  loc_BBF5DE: LateIdSt
  loc_BBF5E3: FFreeAd var_94 = ""
  loc_BBF5EA: FFree1Var var_BC = ""
  loc_BBF5ED: LitVarI4
  loc_BBF5F5: PopAdLdVar
  loc_BBF5F6: FLdPr Me
  loc_BBF5F9: VCallAd Control_ID_DevengadoFlex
  loc_BBF5FC: FStAdFunc var_94
  loc_BBF5FF: FLdPr var_94
  loc_BBF602: LateIdSt
  loc_BBF607: FFree1Ad var_94
  loc_BBF60A: FLdRfVar var_BC
  loc_BBF60D: FLdRfVar var_98
  loc_BBF610: LitVarStr var_A8, "TieneRete"
  loc_BBF615: PopAdLdVar
  loc_BBF616: FLdRfVar var_94
  loc_BBF619: ImpAdLdPr unk_46B49C
  loc_BBF61C: MemLdPr global_0
  loc_BBF61F:  = Me.Fields
  loc_BBF624: FLdPr var_94
  loc_BBF627: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF62C: FLdPr var_98
  loc_BBF62F:  = Me.Value
  loc_BBF634: FLdRfVar var_BC
  loc_BBF637: LitVarStr var_CC, "Si"
  loc_BBF63C: HardType
  loc_BBF63D: EqVarBool
  loc_BBF63F: FFreeAd var_94 = ""
  loc_BBF646: FFree1Var var_BC = ""
  loc_BBF649: BranchF loc_BBF66C
  loc_BBF64C: LitVarI4
  loc_BBF654: PopAdLdVar
  loc_BBF655: FLdPr Me
  loc_BBF658: VCallAd Control_ID_DevengadoFlex
  loc_BBF65B: FStAdFunc var_94
  loc_BBF65E: FLdPr var_94
  loc_BBF661: LateIdSt
  loc_BBF666: FFree1Ad var_94
  loc_BBF669: Branch loc_BBF689
  loc_BBF66C: LitVarI4
  loc_BBF674: PopAdLdVar
  loc_BBF675: FLdPr Me
  loc_BBF678: VCallAd Control_ID_DevengadoFlex
  loc_BBF67B: FStAdFunc var_94
  loc_BBF67E: FLdPr var_94
  loc_BBF681: LateIdSt
  loc_BBF686: FFree1Ad var_94
  loc_BBF689: FLdFPR8 var_8C
  loc_BBF68C: CVarR8
  loc_BBF690: FLdRfVar var_BC
  loc_BBF693: FLdRfVar var_98
  loc_BBF696: LitVarStr var_A8, "Saldo"
  loc_BBF69B: PopAdLdVar
  loc_BBF69C: FLdRfVar var_94
  loc_BBF69F: ImpAdLdPr unk_46B49C
  loc_BBF6A2: MemLdPr global_0
  loc_BBF6A5:  = Me.Fields
  loc_BBF6AA: FLdPr var_94
  loc_BBF6AD: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF6B2: FLdPr var_98
  loc_BBF6B5:  = Me.Value
  loc_BBF6BA: FLdRfVar var_BC
  loc_BBF6BD: AddVar var_DC
  loc_BBF6C1: CR4Var
  loc_BBF6C2: FStFPR8 var_8C
  loc_BBF6C5: FFreeAd var_94 = ""
  loc_BBF6CC: FFreeVar var_BC = ""
  loc_BBF6D3: ImpAdCallFPR4 Proc_266_19_9414E0()
  loc_BBF6D8: Branch loc_BBF128
  loc_BBF6DB: LitI4 1
  loc_BBF6E0: LitI4 1
  loc_BBF6E5: LitVarStr var_CC, "currency"
  loc_BBF6EA: FStVarCopyObj var_BC
  loc_BBF6ED: FLdRfVar var_BC
  loc_BBF6F0: FLdRfVar var_8C
  loc_BBF6F3: CVarRef
  loc_BBF6F8: ImpAdCallI2 Format$(, )
  loc_BBF6FD: FStStrNoPop var_140
  loc_BBF700: FLdPr Me
  loc_BBF703: VCallAd Control_ID_lblTotalExpeImpu
  loc_BBF706: FStAdFunc var_94
  loc_BBF709: FLdPr var_94
  loc_BBF70C: Me.Caption = from_stack_1
  loc_BBF711: FFree1Str var_140
  loc_BBF714: FFree1Ad var_94
  loc_BBF717: FFree1Var var_BC = ""
  loc_BBF71A: FLdRfVar var_BC
  loc_BBF71D: FLdRfVar var_AC
  loc_BBF720: LitVarStr var_A8, "ExpeImpu"
  loc_BBF725: PopAdLdVar
  loc_BBF726: FLdRfVar var_98
  loc_BBF729: FLdRfVar var_94
  loc_BBF72C: FLdPr Me
  loc_BBF72F: MemLdRfVar from_stack_1.global_52
  loc_BBF732: NewIfNullPr clsimputacion
  loc_BBF735: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBF73A: FLdPr var_94
  loc_BBF73D:  = Me.Fields
  loc_BBF742: FLdPr var_98
  loc_BBF745: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF74A: FLdPr var_AC
  loc_BBF74D:  = Me.Value
  loc_BBF752: FLdRfVar var_BC
  loc_BBF755: CStrVarTmp
  loc_BBF756: FStStrNoPop var_140
  loc_BBF759: FLdPr Me
  loc_BBF75C: MemStStrCopy
  loc_BBF760: FFree1Str var_140
  loc_BBF763: FFreeAd var_94 = "": var_98 = ""
  loc_BBF76C: FFree1Var var_BC = ""
  loc_BBF76F: FLdRfVar var_BC
  loc_BBF772: FLdRfVar var_AC
  loc_BBF775: LitVarStr var_A8, "Tipo"
  loc_BBF77A: PopAdLdVar
  loc_BBF77B: FLdRfVar var_98
  loc_BBF77E: FLdRfVar var_94
  loc_BBF781: FLdPr Me
  loc_BBF784: MemLdRfVar from_stack_1.global_52
  loc_BBF787: NewIfNullPr clsimputacion
  loc_BBF78A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BBF78F: FLdPr var_94
  loc_BBF792:  = Me.Fields
  loc_BBF797: FLdPr var_98
  loc_BBF79A: from_stack_2 = Me.Item(from_stack_1)
  loc_BBF79F: FLdPr var_AC
  loc_BBF7A2:  = Me.Value
  loc_BBF7A7: FLdRfVar var_BC
  loc_BBF7AA: CStrVarTmp
  loc_BBF7AB: FStStrNoPop var_140
  loc_BBF7AE: FLdPr Me
  loc_BBF7B1: MemStStrCopy
  loc_BBF7B5: FFree1Str var_140
  loc_BBF7B8: FFreeAd var_94 = "": var_98 = ""
  loc_BBF7C1: FFree1Var var_BC = ""
  loc_BBF7C4: ExitProcHresult
End Sub

Private Sub SeleTodoChk_Click() '9CAAFC
  'Data Table: 46B458
  loc_9CAA14: FLdRfVar var_8A
  loc_9CAA17: FLdPr Me
  loc_9CAA1A: VCallAd Control_ID_SeleTodoChk
  loc_9CAA1D: FStAdFunc var_88
  loc_9CAA20: FLdPr var_88
  loc_9CAA23:  = Me.Value
  loc_9CAA28: FLdI2 var_8A
  loc_9CAA2B: CI4UI1
  loc_9CAA2C: LitI4 0
  loc_9CAA31: EqI4
  loc_9CAA32: FFree1Ad var_88
  loc_9CAA35: BranchF loc_9CAA9B
  loc_9CAA38: LitI2_Byte 1
  loc_9CAA3A: FLdPr Me
  loc_9CAA3D: MemLdRfVar from_stack_1.global_68
  loc_9CAA40: FLdPr Me
  loc_9CAA43: VCallAd Control_ID_DevengadoFlex
  loc_9CAA46: FStAdFunc var_88
  loc_9CAA49: FLdPr var_88
  loc_9CAA4C: LateIdLdVar var_9C DispID_4 0
  loc_9CAA53: CI4Var
  loc_9CAA55: LitI4 1
  loc_9CAA5A: SubI4
  loc_9CAA5B: CI2I4
  loc_9CAA5C: FFree1Ad var_88
  loc_9CAA5F: FFree1Var var_9C = ""
  loc_9CAA62: ForI2 var_A0
  loc_9CAA68: FLdPr Me
  loc_9CAA6B: MemLdI2 global_68
  loc_9CAA6E: CI4UI1
  loc_9CAA6F: CVarI4
  loc_9CAA73: PopAdLdVar
  loc_9CAA74: FLdPr Me
  loc_9CAA77: VCallAd Control_ID_DevengadoFlex
  loc_9CAA7A: FStAdFunc var_88
  loc_9CAA7D: FLdPr var_88
  loc_9CAA80: LateIdSt
  loc_9CAA85: FFree1Ad var_88
  loc_9CAA88: Call Proc_121_27_9BCBAC()
  loc_9CAA8D: FLdPr Me
  loc_9CAA90: MemLdRfVar from_stack_1.global_68
  loc_9CAA93: NextI2 var_A0, loc_9CAA68
  loc_9CAA98: Branch loc_9CAAFB
  loc_9CAA9B: LitI2_Byte 1
  loc_9CAA9D: FLdPr Me
  loc_9CAAA0: MemLdRfVar from_stack_1.global_68
  loc_9CAAA3: FLdPr Me
  loc_9CAAA6: VCallAd Control_ID_DevengadoFlex
  loc_9CAAA9: FStAdFunc var_88
  loc_9CAAAC: FLdPr var_88
  loc_9CAAAF: LateIdLdVar var_9C DispID_4 0
  loc_9CAAB6: CI4Var
  loc_9CAAB8: LitI4 1
  loc_9CAABD: SubI4
  loc_9CAABE: CI2I4
  loc_9CAABF: FFree1Ad var_88
  loc_9CAAC2: FFree1Var var_9C = ""
  loc_9CAAC5: ForI2 var_C4
  loc_9CAACB: FLdPr Me
  loc_9CAACE: MemLdI2 global_68
  loc_9CAAD1: CI4UI1
  loc_9CAAD2: CVarI4
  loc_9CAAD6: PopAdLdVar
  loc_9CAAD7: FLdPr Me
  loc_9CAADA: VCallAd Control_ID_DevengadoFlex
  loc_9CAADD: FStAdFunc var_88
  loc_9CAAE0: FLdPr var_88
  loc_9CAAE3: LateIdSt
  loc_9CAAE8: FFree1Ad var_88
  loc_9CAAEB: Call Proc_121_26_A1B7B4()
  loc_9CAAF0: FLdPr Me
  loc_9CAAF3: MemLdRfVar from_stack_1.global_68
  loc_9CAAF6: NextI2 var_C4, loc_9CAACB
  loc_9CAAFB: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94D7F0
  'Data Table: 46B458
  loc_94D7DC: FLdPr Me
  loc_94D7DF: VCallAd Control_ID_FiltroMsk
  loc_94D7E2: CVarAd
  loc_94D7E6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D7EB: FFree1Var var_94 = ""
  loc_94D7EE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A7944C
  'Data Table: 46B458
  loc_A7907C: ILdRf Me
  loc_A7907F: CastAd
  loc_A79082: FStAdFunc var_88
  loc_A79085: FLdRfVar var_88
  loc_A79088: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A7908D: FFree1Ad var_88
  loc_A79090: FLdPr Me
  loc_A79093: VCallAd Control_ID_FiltroMsk
  loc_A79096: FStAdFunc var_88
  loc_A79099: FLdPr var_88
  loc_A7909C: LateIdLdVar var_98 DispID_22 0
  loc_A790A3: CStrVarTmp
  loc_A790A4: FStStrNoPop var_9C
  loc_A790A7: ImpAdCallI2 Trim$()
  loc_A790AC: FStStrNoPop var_A0
  loc_A790AF: LitStr vbNullString
  loc_A790B2: NeStr
  loc_A790B4: FFreeStr var_9C = ""
  loc_A790BB: FFree1Ad var_88
  loc_A790BE: FFree1Var var_98 = ""
  loc_A790C1: BranchF loc_A7931A
  loc_A790C4: FLdRfVar var_A2
  loc_A790C7: FLdPr Me
  loc_A790CA: VCallAd Control_ID_FiltroCbo
  loc_A790CD: FStAdFunc var_88
  loc_A790D0: FLdPr var_88
  loc_A790D3:  = Me.ListIndex
  loc_A790D8: FLdI2 var_A2
  loc_A790DB: LitI2_Byte 0
  loc_A790DD: EqI2
  loc_A790DE: FFree1Ad var_88
  loc_A790E1: BranchF loc_A7915C
  loc_A790E4: LitStr "ExpeImpu LIKE '"
  loc_A790E7: FLdPr Me
  loc_A790EA: VCallAd Control_ID_FiltroMsk
  loc_A790ED: FStAdFunc var_88
  loc_A790F0: FLdPr var_88
  loc_A790F3: LateIdLdVar var_98 DispID_22 0
  loc_A790FA: CStrVarTmp
  loc_A790FB: FStStrNoPop var_9C
  loc_A790FE: ConcatStr
  loc_A790FF: FStStrNoPop var_A0
  loc_A79102: LitStr Chr(37) & "'"
  loc_A79105: ConcatStr
  loc_A79106: PopTmpLdAdStr
  loc_A7910A: FLdPr Me
  loc_A7910D: MemLdRfVar from_stack_1.global_52
  loc_A79110: NewIfNullPr clsimputacion
  loc_A79113: Call clsimputacion.Filter(from_stack_1v)
  loc_A79118: FFreeStr var_9C = "": var_A0 = ""
  loc_A79121: FFree1Ad var_88
  loc_A79124: FFree1Var var_98 = ""
  loc_A79127: LitStr "Expediente de pago que comience con "
  loc_A7912A: FLdPr Me
  loc_A7912D: VCallAd Control_ID_FiltroMsk
  loc_A79130: FStAdFunc var_88
  loc_A79133: FLdPr var_88
  loc_A79136: LateIdLdVar var_98 DispID_22 0
  loc_A7913D: CStrVarTmp
  loc_A7913E: FStStrNoPop var_9C
  loc_A79141: ConcatStr
  loc_A79142: FStStrNoPop var_A0
  loc_A79145: FLdPr Me
  loc_A79148: MemStStrCopy
  loc_A7914C: FFreeStr var_9C = ""
  loc_A79153: FFree1Ad var_88
  loc_A79156: FFree1Var var_98 = ""
  loc_A79159: Branch loc_A79317
  loc_A7915C: FLdRfVar var_A2
  loc_A7915F: FLdPr Me
  loc_A79162: VCallAd Control_ID_FiltroCbo
  loc_A79165: FStAdFunc var_88
  loc_A79168: FLdPr var_88
  loc_A7916B:  = Me.ListIndex
  loc_A79170: FLdI2 var_A2
  loc_A79173: LitI2_Byte 1
  loc_A79175: EqI2
  loc_A79176: FFree1Ad var_88
  loc_A79179: BranchF loc_A791F4
  loc_A7917C: LitStr "ExorImpu LIKE '"
  loc_A7917F: FLdPr Me
  loc_A79182: VCallAd Control_ID_FiltroMsk
  loc_A79185: FStAdFunc var_88
  loc_A79188: FLdPr var_88
  loc_A7918B: LateIdLdVar var_98 DispID_22 0
  loc_A79192: CStrVarTmp
  loc_A79193: FStStrNoPop var_9C
  loc_A79196: ConcatStr
  loc_A79197: FStStrNoPop var_A0
  loc_A7919A: LitStr Chr(37) & "'"
  loc_A7919D: ConcatStr
  loc_A7919E: PopTmpLdAdStr
  loc_A791A2: FLdPr Me
  loc_A791A5: MemLdRfVar from_stack_1.global_52
  loc_A791A8: NewIfNullPr clsimputacion
  loc_A791AB: Call clsimputacion.Filter(from_stack_1v)
  loc_A791B0: FFreeStr var_9C = "": var_A0 = ""
  loc_A791B9: FFree1Ad var_88
  loc_A791BC: FFree1Var var_98 = ""
  loc_A791BF: LitStr "Expediente Original que comience con "
  loc_A791C2: FLdPr Me
  loc_A791C5: VCallAd Control_ID_FiltroMsk
  loc_A791C8: FStAdFunc var_88
  loc_A791CB: FLdPr var_88
  loc_A791CE: LateIdLdVar var_98 DispID_22 0
  loc_A791D5: CStrVarTmp
  loc_A791D6: FStStrNoPop var_9C
  loc_A791D9: ConcatStr
  loc_A791DA: FStStrNoPop var_A0
  loc_A791DD: FLdPr Me
  loc_A791E0: MemStStrCopy
  loc_A791E4: FFreeStr var_9C = ""
  loc_A791EB: FFree1Ad var_88
  loc_A791EE: FFree1Var var_98 = ""
  loc_A791F1: Branch loc_A79317
  loc_A791F4: FLdRfVar var_A2
  loc_A791F7: FLdPr Me
  loc_A791FA: VCallAd Control_ID_FiltroCbo
  loc_A791FD: FStAdFunc var_88
  loc_A79200: FLdPr var_88
  loc_A79203:  = Me.ListIndex
  loc_A79208: FLdI2 var_A2
  loc_A7920B: LitI2_Byte 2
  loc_A7920D: EqI2
  loc_A7920E: FFree1Ad var_88
  loc_A79211: BranchF loc_A7928C
  loc_A79214: LitStr "DetaProv LIKE '" & Chr(37)
  loc_A79217: FLdPr Me
  loc_A7921A: VCallAd Control_ID_FiltroMsk
  loc_A7921D: FStAdFunc var_88
  loc_A79220: FLdPr var_88
  loc_A79223: LateIdLdVar var_98 DispID_22 0
  loc_A7922A: CStrVarTmp
  loc_A7922B: FStStrNoPop var_9C
  loc_A7922E: ConcatStr
  loc_A7922F: FStStrNoPop var_A0
  loc_A79232: LitStr Chr(37) & "'"
  loc_A79235: ConcatStr
  loc_A79236: PopTmpLdAdStr
  loc_A7923A: FLdPr Me
  loc_A7923D: MemLdRfVar from_stack_1.global_52
  loc_A79240: NewIfNullPr clsimputacion
  loc_A79243: Call clsimputacion.Filter(from_stack_1v)
  loc_A79248: FFreeStr var_9C = "": var_A0 = ""
  loc_A79251: FFree1Ad var_88
  loc_A79254: FFree1Var var_98 = ""
  loc_A79257: LitStr "nombre del Proveedor contiene: "
  loc_A7925A: FLdPr Me
  loc_A7925D: VCallAd Control_ID_FiltroMsk
  loc_A79260: FStAdFunc var_88
  loc_A79263: FLdPr var_88
  loc_A79266: LateIdLdVar var_98 DispID_22 0
  loc_A7926D: CStrVarTmp
  loc_A7926E: FStStrNoPop var_9C
  loc_A79271: ConcatStr
  loc_A79272: FStStrNoPop var_A0
  loc_A79275: FLdPr Me
  loc_A79278: MemStStrCopy
  loc_A7927C: FFreeStr var_9C = ""
  loc_A79283: FFree1Ad var_88
  loc_A79286: FFree1Var var_98 = ""
  loc_A79289: Branch loc_A79317
  loc_A7928C: FLdRfVar var_A2
  loc_A7928F: FLdPr Me
  loc_A79292: VCallAd Control_ID_FiltroCbo
  loc_A79295: FStAdFunc var_88
  loc_A79298: FLdPr var_88
  loc_A7929B:  = Me.ListIndex
  loc_A792A0: FLdI2 var_A2
  loc_A792A3: LitI2_Byte 3
  loc_A792A5: EqI2
  loc_A792A6: FFree1Ad var_88
  loc_A792A9: BranchF loc_A792D3
  loc_A792AC: LitStr "Tipo = 'Devengado'"
  loc_A792AF: FStStrCopy var_9C
  loc_A792B2: FLdRfVar var_9C
  loc_A792B5: FLdPr Me
  loc_A792B8: MemLdRfVar from_stack_1.global_52
  loc_A792BB: NewIfNullPr clsimputacion
  loc_A792BE: Call clsimputacion.Filter(from_stack_1v)
  loc_A792C3: FFree1Str var_9C
  loc_A792C6: LitStr "Tipo de Liq. igual a Devengado"
  loc_A792C9: FLdPr Me
  loc_A792CC: MemStStrCopy
  loc_A792D0: Branch loc_A79317
  loc_A792D3: FLdRfVar var_A2
  loc_A792D6: FLdPr Me
  loc_A792D9: VCallAd Control_ID_FiltroCbo
  loc_A792DC: FStAdFunc var_88
  loc_A792DF: FLdPr var_88
  loc_A792E2:  = Me.ListIndex
  loc_A792E7: FLdI2 var_A2
  loc_A792EA: LitI2_Byte 4
  loc_A792EC: EqI2
  loc_A792ED: FFree1Ad var_88
  loc_A792F0: BranchF loc_A79317
  loc_A792F3: LitStr "Tipo = 'Debito'"
  loc_A792F6: FStStrCopy var_9C
  loc_A792F9: FLdRfVar var_9C
  loc_A792FC: FLdPr Me
  loc_A792FF: MemLdRfVar from_stack_1.global_52
  loc_A79302: NewIfNullPr clsimputacion
  loc_A79305: Call clsimputacion.Filter(from_stack_1v)
  loc_A7930A: FFree1Str var_9C
  loc_A7930D: LitStr "Tipo de Liq. igual a Débito"
  loc_A79310: FLdPr Me
  loc_A79313: MemStStrCopy
  loc_A79317: Branch loc_A7933E
  loc_A7931A: LitStr vbNullString
  loc_A7931D: FStStrCopy var_9C
  loc_A79320: FLdRfVar var_9C
  loc_A79323: FLdPr Me
  loc_A79326: MemLdRfVar from_stack_1.global_52
  loc_A79329: NewIfNullPr clsimputacion
  loc_A7932C: Call clsimputacion.Filter(from_stack_1v)
  loc_A79331: FFree1Str var_9C
  loc_A79334: LitStr vbNullString
  loc_A79337: FLdPr Me
  loc_A7933A: MemStStrCopy
  loc_A7933E: FLdRfVar var_AC
  loc_A79341: FLdPr Me
  loc_A79344: MemLdRfVar from_stack_1.global_52
  loc_A79347: NewIfNullPr clsimputacion
  loc_A7934A: from_stack_1 = clsimputacion.RecordCount
  loc_A7934F: ILdRf var_AC
  loc_A79352: LitI4 0
  loc_A79357: GtI4
  loc_A79358: BranchF loc_A79405
  loc_A7935B: FLdPr Me
  loc_A7935E: MemLdRfVar from_stack_1.global_52
  loc_A79361: NewIfNullAd
  loc_A79364: FStAd var_B0 
  loc_A79368: FLdRfVar var_B0
  loc_A7936B: CVarRef
  loc_A79370: ILdRf Me
  loc_A79373: CastAd
  loc_A79376: FStAdFunc var_88
  loc_A79379: FLdRfVar var_88
  loc_A7937C: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A79381: ILdRf var_B0
  loc_A79384: CastAd
  loc_A79387: FLdPr Me
  loc_A7938A: MemStAdFunc
  loc_A7938E: FFreeAd var_88 = ""
  loc_A79395: LitI4 0
  loc_A7939A: LitI4 1
  loc_A7939F: FLdRfVar var_C4
  loc_A793A2: Redim
  loc_A793AC: FLdPr Me
  loc_A793AF: MemLdRfVar from_stack_1.global_52
  loc_A793B2: NewIfNullAd
  loc_A793B5: FStAd var_88 
  loc_A793B9: FLdRfVar var_88
  loc_A793BC: CVarRef
  loc_A793C1: ParmAry1St
  loc_A793C7: FLdPr Me
  loc_A793CA: VCallAd Control_ID_dgdABMS
  loc_A793CD: CVarAd
  loc_A793D1: ParmAry1St
  loc_A793D7: FLdRfVar var_C4
  loc_A793DA: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A793DF: ILdRf var_88
  loc_A793E2: CastAd
  loc_A793E5: FLdPr Me
  loc_A793E8: MemStAdFunc
  loc_A793EC: FLdRfVar var_C4
  loc_A793EF: Erase
  loc_A793F0: FFree1Ad var_88
  loc_A793F3: LitI2_Byte 0
  loc_A793F5: LitVarI2 var_98, 0
  loc_A793FA: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A793FF: FFree1Var var_98 = ""
  loc_A79402: Branch loc_A79419
  loc_A79405: ILdRf Me
  loc_A79408: CastAd
  loc_A7940B: FStAdFunc var_88
  loc_A7940E: FLdRfVar var_88
  loc_A79411: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A79416: FFree1Ad var_88
  loc_A79419: FLdPr Me
  loc_A7941C: VCallAd Control_ID_dgdABMS
  loc_A7941F: FStAdFunc var_B0
  loc_A79422: LitStr "Devengado/s pendiente/s de Liquidación"
  loc_A79425: FStStrCopy var_9C
  loc_A79428: FLdRfVar var_9C
  loc_A7942B: FLdPr Me
  loc_A7942E: MemLdStr global_72
  loc_A79431: FLdZeroAd var_B0
  loc_A79434: FStAdFunc var_88
  loc_A79437: FLdRfVar var_88
  loc_A7943A: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A7943F: FFree1Str var_9C
  loc_A79442: FFreeAd var_88 = ""
  loc_A79449: ExitProcHresult
  loc_A7944A: CStr2Ansi
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '998484
  'Data Table: 46B458
  loc_998420: ILdI2 KeyAscii
  loc_998423: LitI2_Byte &H27
  loc_998425: EqI2
  loc_998426: BranchF loc_99842E
  loc_998429: LitI2_Byte 0
  loc_99842B: IStI2 KeyAscii
  loc_99842E: FLdRfVar var_88
  loc_998431: FLdPr Me
  loc_998434: MemLdRfVar from_stack_1.global_52
  loc_998437: NewIfNullPr clsimputacion
  loc_99843A: from_stack_1 = clsimputacion.RecordCount
  loc_99843F: ILdRf var_88
  loc_998442: LitI4 0
  loc_998447: EqI4
  loc_998448: ILdI2 KeyAscii
  loc_99844B: CI4UI1
  loc_99844C: LitI4 8
  loc_998451: NeI4
  loc_998452: AndI4
  loc_998453: FLdPr Me
  loc_998456: VCallAd Control_ID_FiltroMsk
  loc_998459: FStAdFunc var_8C
  loc_99845C: FLdPr var_8C
  loc_99845F: LateIdLdVar var_9C DispID_16 0
  loc_998466: CStrVarTmp
  loc_998467: FStStrNoPop var_A0
  loc_99846A: LitStr vbNullString
  loc_99846D: EqStr
  loc_99846F: AndI4
  loc_998470: FFree1Str var_A0
  loc_998473: FFree1Ad var_8C
  loc_998476: FFree1Var var_9C = ""
  loc_998479: BranchF loc_998481
  loc_99847C: LitI2_Byte 0
  loc_99847E: IStI2 KeyAscii
  loc_998481: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B0F4E0
  'Data Table: 46B458
  loc_B0ECD4: ILdRf Button
  loc_B0ECD7: FStAd var_88 
  loc_B0ECDB: FLdRfVar var_8C
  loc_B0ECDE: FLdPr var_88
  loc_B0ECE1:  = Me.Key
  loc_B0ECE6: FLdZeroAd var_8C
  loc_B0ECE9: FStStr var_90
  loc_B0ECEC: ILdRf var_90
  loc_B0ECEF: LitStr "btnCrear"
  loc_B0ECF2: EqStr
  loc_B0ECF4: BranchF loc_B0EF19
  loc_B0ECF7: FLdRfVar var_94
  loc_B0ECFA: FLdPr Me
  loc_B0ECFD: MemLdRfVar from_stack_1.global_52
  loc_B0ED00: NewIfNullPr clsimputacion
  loc_B0ED03: from_stack_1 = clsimputacion.RecordCount
  loc_B0ED08: ILdRf var_94
  loc_B0ED0B: LitI4 0
  loc_B0ED10: GtI4
  loc_B0ED11: BranchF loc_B0EF09
  loc_B0ED14: LitI2_Byte 1
  loc_B0ED16: FLdPr Me
  loc_B0ED19: MemStUI1
  loc_B0ED1D: ILdRf Me
  loc_B0ED20: CastAd
  loc_B0ED23: FStAdFunc var_98
  loc_B0ED26: FLdRfVar var_98
  loc_B0ED29: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B0ED2E: FFree1Ad var_98
  loc_B0ED31: LitI4 0
  loc_B0ED36: LitI4 0
  loc_B0ED3B: FLdRfVar var_9C
  loc_B0ED3E: Redim
  loc_B0ED48: FLdPr Me
  loc_B0ED4B: VCallAd Control_ID_dgdABMS
  loc_B0ED4E: CVarAd
  loc_B0ED52: ParmAry1St
  loc_B0ED58: FLdRfVar var_9C
  loc_B0ED5B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B0ED60: FLdRfVar var_9C
  loc_B0ED63: Erase
  loc_B0ED64: LitI4 0
  loc_B0ED69: LitI4 0
  loc_B0ED6E: FLdRfVar var_9C
  loc_B0ED71: Redim
  loc_B0ED7B: FLdPr Me
  loc_B0ED7E: VCallAd Control_ID_DevengadoFlex
  loc_B0ED81: CVarAd
  loc_B0ED85: ParmAry1St
  loc_B0ED8B: FLdRfVar var_9C
  loc_B0ED8E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B0ED93: FLdRfVar var_9C
  loc_B0ED96: Erase
  loc_B0ED97: FLdRfVar var_94
  loc_B0ED9A: FLdPr Me
  loc_B0ED9D: MemLdRfVar from_stack_1.global_52
  loc_B0EDA0: NewIfNullPr clsimputacion
  loc_B0EDA3: from_stack_1 = clsimputacion.RecordCount
  loc_B0EDA8: ILdRf var_94
  loc_B0EDAB: LitI4 0
  loc_B0EDB0: GtI4
  loc_B0EDB1: BranchF loc_B0EEB6
  loc_B0EDB4: FLdRfVar var_AC
  loc_B0EDB7: FLdRfVar var_C4
  loc_B0EDBA: LitVarStr var_C0, "ExpeImpu"
  loc_B0EDBF: PopAdLdVar
  loc_B0EDC0: FLdRfVar var_B0
  loc_B0EDC3: FLdRfVar var_98
  loc_B0EDC6: FLdPr Me
  loc_B0EDC9: MemLdRfVar from_stack_1.global_52
  loc_B0EDCC: NewIfNullPr clsimputacion
  loc_B0EDCF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0EDD4: FLdPr var_98
  loc_B0EDD7:  = Me.Fields
  loc_B0EDDC: FLdPr var_B0
  loc_B0EDDF: from_stack_2 = Me.Item(from_stack_1)
  loc_B0EDE4: FLdPr var_C4
  loc_B0EDE7:  = Me.Value
  loc_B0EDEC: FLdRfVar var_F0
  loc_B0EDEF: FLdRfVar var_E0
  loc_B0EDF2: LitVarStr var_DC, "Tipo"
  loc_B0EDF7: PopAdLdVar
  loc_B0EDF8: FLdRfVar var_CC
  loc_B0EDFB: FLdRfVar var_C8
  loc_B0EDFE: FLdPr Me
  loc_B0EE01: MemLdRfVar from_stack_1.global_52
  loc_B0EE04: NewIfNullPr clsimputacion
  loc_B0EE07: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0EE0C: FLdPr var_C8
  loc_B0EE0F:  = Me.Fields
  loc_B0EE14: FLdPr var_CC
  loc_B0EE17: from_stack_2 = Me.Item(from_stack_1)
  loc_B0EE1C: FLdPr var_E0
  loc_B0EE1F:  = Me.Value
  loc_B0EE24: FLdRfVar var_F8
  loc_B0EE27: FLdRfVar var_F0
  loc_B0EE2A: CStrVarTmp
  loc_B0EE2B: FStStrNoPop var_F4
  loc_B0EE2E: FLdRfVar var_AC
  loc_B0EE31: CStrVarTmp
  loc_B0EE32: FStStrNoPop var_8C
  loc_B0EE35: ImpAdLdI2 MemVar_C3D064
  loc_B0EE38: FLdPr Me
  loc_B0EE3B: MemLdRfVar from_stack_1.global_56
  loc_B0EE3E: NewIfNullPr clsliquidacion
  loc_B0EE41: from_stack_4v = clsliquidacion.UltimaFechLiqu(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B0EE46: FLdZeroAd var_F8
  loc_B0EE49: CVarStr var_108
  loc_B0EE4C: PopAdLdVar
  loc_B0EE4D: FLdPr Me
  loc_B0EE50: VCallAd Control_ID_FechLiquMsk
  loc_B0EE53: FStAdFunc var_11C
  loc_B0EE56: FLdPr var_11C
  loc_B0EE59: LateIdSt
  loc_B0EE5E: FFreeStr var_8C = ""
  loc_B0EE65: FFreeAd var_98 = "": var_B0 = "": var_C8 = "": var_CC = "": var_C4 = "": var_E0 = ""
  loc_B0EE76: FFreeVar var_AC = "": var_F0 = ""
  loc_B0EE7F: FLdPr Me
  loc_B0EE82: VCallAd Control_ID_FechLiquMsk
  loc_B0EE85: FStAdFunc var_98
  loc_B0EE88: FLdPr var_98
  loc_B0EE8B: LateIdLdVar var_AC DispID_11 -32767
  loc_B0EE92: CStrVarTmp
  loc_B0EE93: CVarStr var_F0
  loc_B0EE96: PopAdLdVar
  loc_B0EE97: FLdPr Me
  loc_B0EE9A: VCallAd Control_ID_FechLiquMsk
  loc_B0EE9D: FStAdFunc var_B0
  loc_B0EEA0: FLdPr var_B0
  loc_B0EEA3: LateIdSt
  loc_B0EEA8: FFreeAd var_98 = ""
  loc_B0EEAF: FFreeVar var_AC = ""
  loc_B0EEB6: ImpAdLdFPR8 MemVar_C3D04C
  loc_B0EEB9: CStrDate
  loc_B0EEBB: CVarStr var_AC
  loc_B0EEBE: PopAdLdVar
  loc_B0EEBF: FLdPr Me
  loc_B0EEC2: VCallAd Control_ID_FechLiquMsk
  loc_B0EEC5: FStAdFunc var_98
  loc_B0EEC8: FLdPr var_98
  loc_B0EECB: LateIdSt
  loc_B0EED0: FFree1Ad var_98
  loc_B0EED3: FFree1Var var_AC = ""
  loc_B0EED6: ILdRf Me
  loc_B0EED9: CastAd
  loc_B0EEDC: FStAdFunc var_98
  loc_B0EEDF: FLdRfVar var_98
  loc_B0EEE2: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_B0EEE7: FFree1Ad var_98
  loc_B0EEEA: LitStr vbNullString
  loc_B0EEED: FLdPr Me
  loc_B0EEF0: MemStStrCopy
  loc_B0EEF4: FLdPr Me
  loc_B0EEF7: VCallAd Control_ID_FechLiquMsk
  loc_B0EEFA: CVarAd
  loc_B0EEFE: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_B0EF03: FFree1Var var_AC = ""
  loc_B0EF06: Branch loc_B0EF16
  loc_B0EF09: LitI4 0
  loc_B0EF0E: LitStr "Seleccionar un expediente. Verifique..."
  loc_B0EF11: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B0EF16: Branch loc_B0F4DE
  loc_B0EF19: ILdRf var_90
  loc_B0EF1C: LitStr "btnModificar"
  loc_B0EF1F: EqStr
  loc_B0EF21: BranchF loc_B0EF27
  loc_B0EF24: Branch loc_B0F4DE
  loc_B0EF27: ILdRf var_90
  loc_B0EF2A: LitStr "btnEliminar"
  loc_B0EF2D: EqStr
  loc_B0EF2F: BranchF loc_B0EF35
  loc_B0EF32: Branch loc_B0F4DE
  loc_B0EF35: ILdRf var_90
  loc_B0EF38: LitStr "btnGuardar"
  loc_B0EF3B: EqStr
  loc_B0EF3D: BranchF loc_B0F32D
  loc_B0EF40: LitStr vbNullString
  loc_B0EF43: FLdPr Me
  loc_B0EF46: MemStStrCopy
  loc_B0EF4A: LitI2_Byte 0
  loc_B0EF4C: PopTmpLdAd2 var_11E
  loc_B0EF4F: from_stack_2v = FechLiquMsk_UnknownEvent_8(from_stack_1v)
  loc_B0EF54: FLdPr Me
  loc_B0EF57: MemLdStr global_64
  loc_B0EF5A: LitStr vbNullString
  loc_B0EF5D: NeStr
  loc_B0EF5F: BranchF loc_B0EF63
  loc_B0EF62: ExitProcHresult
  loc_B0EF63: LitI2_Byte 0
  loc_B0EF65: PopTmpLdAd2 var_11E
  loc_B0EF68: Call DetaLiquTxt_Validate(from_stack_1v)
  loc_B0EF6D: FLdPr Me
  loc_B0EF70: MemLdStr global_64
  loc_B0EF73: LitStr vbNullString
  loc_B0EF76: NeStr
  loc_B0EF78: BranchF loc_B0EF7C
  loc_B0EF7B: ExitProcHresult
  loc_B0EF7C: LitStr vbNullString
  loc_B0EF7F: FLdPr Me
  loc_B0EF82: MemStStrCopy
  loc_B0EF86: LitI2_Byte 0
  loc_B0EF88: PopTmpLdAd2 var_11E
  loc_B0EF8B: Call DevengadoFlex_UnknownEvent_8()
  loc_B0EF90: FLdPr Me
  loc_B0EF93: MemLdStr global_64
  loc_B0EF96: LitStr vbNullString
  loc_B0EF99: NeStr
  loc_B0EF9B: BranchF loc_B0EF9F
  loc_B0EF9E: ExitProcHresult
  loc_B0EF9F: FLdPr Me
  loc_B0EFA2: MemLdUI1 global_60
  loc_B0EFA6: FStUI1 var_120
  loc_B0EFAA: FLdUI1
  loc_B0EFAE: LitI2_Byte 2
  loc_B0EFB0: EqI2
  loc_B0EFB1: BranchF loc_B0EFB7
  loc_B0EFB4: Branch loc_B0F2EA
  loc_B0EFB7: FLdUI1
  loc_B0EFBB: LitI2_Byte 1
  loc_B0EFBD: EqI2
  loc_B0EFBE: BranchF loc_B0F2EA
  loc_B0EFC1: LitI2_Byte 0
  loc_B0EFC3: FStI2 var_124
  loc_B0EFC6: LitI2_Byte 1
  loc_B0EFC8: FLdPr Me
  loc_B0EFCB: MemLdRfVar from_stack_1.global_68
  loc_B0EFCE: FLdPr Me
  loc_B0EFD1: VCallAd Control_ID_DevengadoFlex
  loc_B0EFD4: FStAdFunc var_98
  loc_B0EFD7: FLdPr var_98
  loc_B0EFDA: LateIdLdVar var_AC DispID_4 0
  loc_B0EFE1: CI4Var
  loc_B0EFE3: LitI4 1
  loc_B0EFE8: SubI4
  loc_B0EFE9: CI2I4
  loc_B0EFEA: FFree1Ad var_98
  loc_B0EFED: FFree1Var var_AC = ""
  loc_B0EFF0: ForI2 var_128
  loc_B0EFF6: FLdPr Me
  loc_B0EFF9: MemLdI2 global_68
  loc_B0EFFC: CI4UI1
  loc_B0EFFD: CVarI4
  loc_B0F001: PopAdLdVar
  loc_B0F002: LitVarI4
  loc_B0F00A: PopAdLdVar
  loc_B0F00B: FLdPr Me
  loc_B0F00E: VCallAd Control_ID_DevengadoFlex
  loc_B0F011: FStAdFunc var_98
  loc_B0F014: FLdPr var_98
  loc_B0F017: LateIdCallLdVar
  loc_B0F021: CStrVarTmp
  loc_B0F022: FStStrNoPop var_8C
  loc_B0F025: LitStr "Si"
  loc_B0F028: EqStr
  loc_B0F02A: FFree1Str var_8C
  loc_B0F02D: FFree1Ad var_98
  loc_B0F030: FFree1Var var_AC = ""
  loc_B0F033: BranchF loc_B0F03E
  loc_B0F036: LitI2_Byte &HFF
  loc_B0F038: FStI2 var_124
  loc_B0F03B: Branch loc_B0F049
  loc_B0F03E: FLdPr Me
  loc_B0F041: MemLdRfVar from_stack_1.global_68
  loc_B0F044: NextI2 var_128, loc_B0EFF6
  loc_B0F049: FLdI2 var_124
  loc_B0F04C: LitI2_Byte 0
  loc_B0F04E: EqI2
  loc_B0F04F: BranchF loc_B0F060
  loc_B0F052: LitI4 0
  loc_B0F057: LitStr "Debe Seleccionar al menos un Devengado. Verifique..."
  loc_B0F05A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B0F05F: ExitProcHresult
  loc_B0F060: LitVar_TRUE var_C0
  loc_B0F063: PopAdLdVar
  loc_B0F064: FLdPr Me
  loc_B0F067: VCallAd Control_ID_ProgressBar
  loc_B0F06A: FStAdFunc var_98
  loc_B0F06D: FLdPr var_98
  loc_B0F070: LateIdSt
  loc_B0F075: FFree1Ad var_98
  loc_B0F078: FLdRfVar var_F0
  loc_B0F07B: FLdRfVar var_C4
  loc_B0F07E: LitVarStr var_C0, "ExpeImpu"
  loc_B0F083: PopAdLdVar
  loc_B0F084: FLdRfVar var_B0
  loc_B0F087: FLdRfVar var_98
  loc_B0F08A: FLdPr Me
  loc_B0F08D: MemLdRfVar from_stack_1.global_52
  loc_B0F090: NewIfNullPr clsimputacion
  loc_B0F093: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0F098: FLdPr var_98
  loc_B0F09B:  = Me.Fields
  loc_B0F0A0: FLdPr var_B0
  loc_B0F0A3: from_stack_2 = Me.Item(from_stack_1)
  loc_B0F0A8: FLdPr var_C4
  loc_B0F0AB:  = Me.Value
  loc_B0F0B0: FLdPr Me
  loc_B0F0B3: VCallAd Control_ID_FechLiquMsk
  loc_B0F0B6: FStAdFunc var_C8
  loc_B0F0B9: FLdPr var_C8
  loc_B0F0BC: LateIdLdVar var_AC DispID_15 0
  loc_B0F0C3: PopAd
  loc_B0F0C5: FLdRfVar var_140
  loc_B0F0C8: FLdPr Me
  loc_B0F0CB: VCallAd Control_ID_DetaLiquTxt
  loc_B0F0CE: FStAdFunc var_13C
  loc_B0F0D1: FLdPr var_13C
  loc_B0F0D4:  = Me.Text
  loc_B0F0D9: FLdRfVar var_108
  loc_B0F0DC: FLdRfVar var_11C
  loc_B0F0DF: LitVarStr var_DC, "Tipo"
  loc_B0F0E4: PopAdLdVar
  loc_B0F0E5: FLdRfVar var_E0
  loc_B0F0E8: FLdRfVar var_CC
  loc_B0F0EB: FLdPr Me
  loc_B0F0EE: MemLdRfVar from_stack_1.global_52
  loc_B0F0F1: NewIfNullPr clsimputacion
  loc_B0F0F4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0F0F9: FLdPr var_CC
  loc_B0F0FC:  = Me.Fields
  loc_B0F101: FLdPr var_E0
  loc_B0F104: from_stack_2 = Me.Item(from_stack_1)
  loc_B0F109: FLdPr var_11C
  loc_B0F10C:  = Me.Value
  loc_B0F111: FLdRfVar var_8C
  loc_B0F114: FLdPr Me
  loc_B0F117:  = Me.Name
  loc_B0F11C: FLdPr Me
  loc_B0F11F: VCallAd Control_ID_DevengadoFlex
  loc_B0F122: FStAdFunc var_14C
  loc_B0F125: FLdRfVar var_11E
  loc_B0F128: FLdZeroAd var_14C
  loc_B0F12B: FStAdFunc var_148
  loc_B0F12E: FLdRfVar var_148
  loc_B0F131: ILdRf var_8C
  loc_B0F134: FLdRfVar var_108
  loc_B0F137: CStrVarTmp
  loc_B0F138: FStStrNoPop var_144
  loc_B0F13B: ILdRf var_140
  loc_B0F13E: FLdRfVar var_AC
  loc_B0F141: CStrVarTmp
  loc_B0F142: FStStrNoPop var_F8
  loc_B0F145: FLdRfVar var_F0
  loc_B0F148: CStrVarTmp
  loc_B0F149: FStStrNoPop var_F4
  loc_B0F14C: FLdPr Me
  loc_B0F14F: MemLdRfVar from_stack_1.global_56
  loc_B0F152: NewIfNullPr clsliquidacion
  loc_B0F155: from_stack_7v = clsliquidacion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_B0F15A: FLdI2 var_11E
  loc_B0F15D: FStI2 var_122
  loc_B0F160: FFreeStr var_F4 = "": var_F8 = "": var_140 = "": var_144 = ""
  loc_B0F16D: FFreeAd var_98 = "": var_B0 = "": var_C8 = "": var_CC = "": var_E0 = "": var_C4 = "": var_13C = "": var_11C = "": var_148 = ""
  loc_B0F184: FFreeVar var_AC = "": var_F0 = ""
  loc_B0F18D: FLdI2 var_122
  loc_B0F190: LitI2_Byte 0
  loc_B0F192: GtI2
  loc_B0F193: BranchF loc_B0F2EA
  loc_B0F196: FLdRfVar var_AC
  loc_B0F199: FLdRfVar var_C4
  loc_B0F19C: LitVarStr var_C0, "ExpeImpu"
  loc_B0F1A1: PopAdLdVar
  loc_B0F1A2: FLdRfVar var_B0
  loc_B0F1A5: FLdRfVar var_98
  loc_B0F1A8: FLdPr Me
  loc_B0F1AB: MemLdRfVar from_stack_1.global_52
  loc_B0F1AE: NewIfNullPr clsimputacion
  loc_B0F1B1: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0F1B6: FLdPr var_98
  loc_B0F1B9:  = Me.Fields
  loc_B0F1BE: FLdPr var_B0
  loc_B0F1C1: from_stack_2 = Me.Item(from_stack_1)
  loc_B0F1C6: FLdPr var_C4
  loc_B0F1C9:  = Me.Value
  loc_B0F1CE: LitI2_Byte &HFF
  loc_B0F1D0: PopTmpLdAd2 var_19E
  loc_B0F1D3: LitI2_Byte 0
  loc_B0F1D5: PopTmpLdAd2 var_11E
  loc_B0F1D8: LitVarStr var_DC, "Se generó la Liquidación: "
  loc_B0F1DD: FLdRfVar var_AC
  loc_B0F1E0: ConcatVar var_F0
  loc_B0F1E4: LitVarStr var_118, " - Número: "
  loc_B0F1E9: ConcatVar var_108
  loc_B0F1ED: FLdI2 var_122
  loc_B0F1F0: CVarI2 var_138
  loc_B0F1F3: ConcatVar var_15C
  loc_B0F1F7: LitVarStr var_16C, vbCrLf
  loc_B0F1FC: ConcatVar var_17C
  loc_B0F200: LitVarStr var_18C, "¿Imprime el Volante de Liquidación del Gasto?"
  loc_B0F205: ConcatVar var_19C
  loc_B0F209: CStrVarVal var_8C
  loc_B0F20D: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B0F212: CI4UI1
  loc_B0F213: LitI4 6
  loc_B0F218: EqI4
  loc_B0F219: FFree1Str var_8C
  loc_B0F21C: FFreeAd var_98 = "": var_B0 = ""
  loc_B0F225: FFreeVar var_AC = "": var_F0 = "": var_108 = "": var_15C = "": var_17C = ""
  loc_B0F234: BranchF loc_B0F2EA
  loc_B0F237: ImpAdLdRf MemVar_C3DAC0
  loc_B0F23A: NewIfNullAd
  loc_B0F23D: CastAd
  loc_B0F240: FStAdFuncNoPop
  loc_B0F243: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B0F248: FFree1Ad var_98
  loc_B0F24B: FLdRfVar var_AC
  loc_B0F24E: FLdRfVar var_C4
  loc_B0F251: LitVarStr var_C0, "ExpeImpu"
  loc_B0F256: PopAdLdVar
  loc_B0F257: FLdRfVar var_B0
  loc_B0F25A: FLdRfVar var_98
  loc_B0F25D: FLdPr Me
  loc_B0F260: MemLdRfVar from_stack_1.global_52
  loc_B0F263: NewIfNullPr clsimputacion
  loc_B0F266: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0F26B: FLdPr var_98
  loc_B0F26E:  = Me.Fields
  loc_B0F273: FLdPr var_B0
  loc_B0F276: from_stack_2 = Me.Item(from_stack_1)
  loc_B0F27B: FLdPr var_C4
  loc_B0F27E:  = Me.Value
  loc_B0F283: FLdRfVar var_AC
  loc_B0F286: CStrVarTmp
  loc_B0F287: FStStrNoPop var_8C
  loc_B0F28A: ImpAdLdRf MemVar_C3DAC0
  loc_B0F28D: NewIfNullPr rptVolantedeLiquidacion
  loc_B0F290: VCallAd Control_ID_cboExpeImpu
  loc_B0F293: FStAdFunc var_C8
  loc_B0F296: FLdPr var_C8
  loc_B0F299: rptVolantedeLiquidacion.ComboBox.Text = from_stack_1
  loc_B0F29E: FFree1Str var_8C
  loc_B0F2A1: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B0F2AC: FFree1Var var_AC = ""
  loc_B0F2AF: FLdI2 var_122
  loc_B0F2B2: CStrUI1
  loc_B0F2B4: CVarStr var_AC
  loc_B0F2B7: PopAdLdVar
  loc_B0F2B8: ImpAdLdRf MemVar_C3DAC0
  loc_B0F2BB: NewIfNullPr rptVolantedeLiquidacion
  loc_B0F2BE: VCallAd Control_ID_NumeLiquMsk
  loc_B0F2C1: FStAdFunc var_98
  loc_B0F2C4: FLdPr var_98
  loc_B0F2C7: LateIdSt
  loc_B0F2CC: FFree1Ad var_98
  loc_B0F2CF: FFree1Var var_AC = ""
  loc_B0F2D2: LitVar_Missing var_DC
  loc_B0F2D5: PopAdLdVar
  loc_B0F2D6: LitVarI4
  loc_B0F2DE: PopAdLdVar
  loc_B0F2DF: ImpAdLdRf MemVar_C3DAC0
  loc_B0F2E2: NewIfNullPr rptVolantedeLiquidacion
  loc_B0F2E5: rptVolantedeLiquidacion.Show from_stack_1, from_stack_2
  loc_B0F2EA: LitVar_FALSE
  loc_B0F2EE: PopAdLdVar
  loc_B0F2EF: FLdPr Me
  loc_B0F2F2: VCallAd Control_ID_ProgressBar
  loc_B0F2F5: FStAdFunc var_98
  loc_B0F2F8: FLdPr var_98
  loc_B0F2FB: LateIdSt
  loc_B0F300: FFree1Ad var_98
  loc_B0F303: FLdPr Me
  loc_B0F306: MemLdRfVar from_stack_1.global_52
  loc_B0F309: NewIfNullPr clsimputacion
  loc_B0F30C: Call clsimputacion.Requery()
  loc_B0F311: LitStr vbNullString
  loc_B0F314: FLdPr Me
  loc_B0F317: MemStStrCopy
  loc_B0F31B: LitStr vbNullString
  loc_B0F31E: FLdPr Me
  loc_B0F321: MemStStrCopy
  loc_B0F325: Call cmdCancelar_Click()
  loc_B0F32A: Branch loc_B0F4DE
  loc_B0F32D: ILdRf var_90
  loc_B0F330: LitStr "btnCancelar"
  loc_B0F333: EqStr
  loc_B0F335: BranchF loc_B0F340
  loc_B0F338: Call cmdCancelar_Click()
  loc_B0F33D: Branch loc_B0F4DE
  loc_B0F340: ILdRf var_90
  loc_B0F343: LitStr "btnPrimero"
  loc_B0F346: EqStr
  loc_B0F348: BranchF loc_B0F35C
  loc_B0F34B: FLdPr Me
  loc_B0F34E: MemLdRfVar from_stack_1.global_52
  loc_B0F351: NewIfNullPr clsimputacion
  loc_B0F354: Call clsimputacion.MoveFirst()
  loc_B0F359: Branch loc_B0F4DE
  loc_B0F35C: ILdRf var_90
  loc_B0F35F: LitStr "btnAnterior"
  loc_B0F362: EqStr
  loc_B0F364: BranchF loc_B0F378
  loc_B0F367: FLdPr Me
  loc_B0F36A: MemLdRfVar from_stack_1.global_52
  loc_B0F36D: NewIfNullPr clsimputacion
  loc_B0F370: Call clsimputacion.MovePrevious()
  loc_B0F375: Branch loc_B0F4DE
  loc_B0F378: ILdRf var_90
  loc_B0F37B: LitStr "btnSiguiente"
  loc_B0F37E: EqStr
  loc_B0F380: BranchF loc_B0F394
  loc_B0F383: FLdPr Me
  loc_B0F386: MemLdRfVar from_stack_1.global_52
  loc_B0F389: NewIfNullPr clsimputacion
  loc_B0F38C: Call clsimputacion.MoveNext()
  loc_B0F391: Branch loc_B0F4DE
  loc_B0F394: ILdRf var_90
  loc_B0F397: LitStr "btnUltimo"
  loc_B0F39A: EqStr
  loc_B0F39C: BranchF loc_B0F3B0
  loc_B0F39F: FLdPr Me
  loc_B0F3A2: MemLdRfVar from_stack_1.global_52
  loc_B0F3A5: NewIfNullPr clsimputacion
  loc_B0F3A8: Call clsimputacion.MoveLast()
  loc_B0F3AD: Branch loc_B0F4DE
  loc_B0F3B0: ILdRf var_90
  loc_B0F3B3: LitStr "btnFiltrar"
  loc_B0F3B6: EqStr
  loc_B0F3B8: BranchF loc_B0F3BE
  loc_B0F3BB: Branch loc_B0F4DE
  loc_B0F3BE: ILdRf var_90
  loc_B0F3C1: LitStr "btnBuscar"
  loc_B0F3C4: EqStr
  loc_B0F3C6: BranchF loc_B0F3CC
  loc_B0F3C9: Branch loc_B0F4DE
  loc_B0F3CC: ILdRf var_90
  loc_B0F3CF: LitStr "btnImprimir"
  loc_B0F3D2: EqStr
  loc_B0F3D4: BranchF loc_B0F487
  loc_B0F3D7: ImpAdLdRf MemVar_C3DAC0
  loc_B0F3DA: NewIfNullAd
  loc_B0F3DD: CastAd
  loc_B0F3E0: FStAdFuncNoPop
  loc_B0F3E3: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B0F3E8: FFree1Ad var_98
  loc_B0F3EB: FLdRfVar var_94
  loc_B0F3EE: FLdPr Me
  loc_B0F3F1: MemLdRfVar from_stack_1.global_52
  loc_B0F3F4: NewIfNullPr clsimputacion
  loc_B0F3F7: from_stack_1 = clsimputacion.RecordCount
  loc_B0F3FC: ILdRf var_94
  loc_B0F3FF: LitI4 0
  loc_B0F404: GtI4
  loc_B0F405: BranchF loc_B0F46C
  loc_B0F408: FLdRfVar var_AC
  loc_B0F40B: FLdRfVar var_C4
  loc_B0F40E: LitVarStr var_C0, "ExpeImpu"
  loc_B0F413: PopAdLdVar
  loc_B0F414: FLdRfVar var_B0
  loc_B0F417: FLdRfVar var_98
  loc_B0F41A: FLdPr Me
  loc_B0F41D: MemLdRfVar from_stack_1.global_52
  loc_B0F420: NewIfNullPr clsimputacion
  loc_B0F423: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B0F428: FLdPr var_98
  loc_B0F42B:  = Me.Fields
  loc_B0F430: FLdPr var_B0
  loc_B0F433: from_stack_2 = Me.Item(from_stack_1)
  loc_B0F438: FLdPr var_C4
  loc_B0F43B:  = Me.Value
  loc_B0F440: FLdRfVar var_AC
  loc_B0F443: CStrVarTmp
  loc_B0F444: FStStrNoPop var_8C
  loc_B0F447: ImpAdLdRf MemVar_C3DAC0
  loc_B0F44A: NewIfNullPr rptVolantedeLiquidacion
  loc_B0F44D: VCallAd Control_ID_cboExpeImpu
  loc_B0F450: FStAdFunc var_C8
  loc_B0F453: FLdPr var_C8
  loc_B0F456: rptVolantedeLiquidacion.ComboBox.Text = from_stack_1
  loc_B0F45B: FFree1Str var_8C
  loc_B0F45E: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B0F469: FFree1Var var_AC = ""
  loc_B0F46C: LitVar_Missing var_DC
  loc_B0F46F: PopAdLdVar
  loc_B0F470: LitVarI4
  loc_B0F478: PopAdLdVar
  loc_B0F479: ImpAdLdRf MemVar_C3DAC0
  loc_B0F47C: NewIfNullPr rptVolantedeLiquidacion
  loc_B0F47F: rptVolantedeLiquidacion.Show from_stack_1, from_stack_2
  loc_B0F484: Branch loc_B0F4DE
  loc_B0F487: ILdRf var_90
  loc_B0F48A: LitStr "btnAyuda"
  loc_B0F48D: EqStr
  loc_B0F48F: BranchF loc_B0F4BE
  loc_B0F492: LitVar_Missing var_15C
  loc_B0F495: LitVar_Missing var_108
  loc_B0F498: LitVar_Missing var_F0
  loc_B0F49B: LitI4 0
  loc_B0F4A0: LitVarStr var_C0, "Opcion no disponible en esta version."
  loc_B0F4A5: FStVarCopyObj var_AC
  loc_B0F4A8: FLdRfVar var_AC
  loc_B0F4AB: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B0F4B0: FFreeVar var_AC = "": var_F0 = "": var_108 = ""
  loc_B0F4BB: Branch loc_B0F4DE
  loc_B0F4BE: ILdRf var_90
  loc_B0F4C1: LitStr "btnSalir"
  loc_B0F4C4: EqStr
  loc_B0F4C6: BranchF loc_B0F4DE
  loc_B0F4C9: ILdRf Me
  loc_B0F4CC: FStAdNoPop
  loc_B0F4D0: ImpAdLdRf MemVar_C44F9C
  loc_B0F4D3: NewIfNullPr Me
  loc_B0F4D6: Me.Global.Unload from_stack_1
  loc_B0F4DB: FFree1Ad var_98
  loc_B0F4DE: ExitProcHresult
End Sub

Private Sub Form_Load() 'A71904
  'Data Table: 46B458
  loc_A71598: ImpAdLdI2 MemVar_C3D064
  loc_A7159B: LitI2 2025
  loc_A7159E: LeI2
  loc_A7159F: BranchF loc_A715BF
  loc_A715A2: LitVarI4
  loc_A715AA: PopAdLdVar
  loc_A715AB: FLdPr Me
  loc_A715AE: VCallAd Control_ID_dgdABMS
  loc_A715B1: FStAdFunc var_A8
  loc_A715B4: FLdPr var_A8
  loc_A715B7: LateIdSt
  loc_A715BC: FFree1Ad var_A8
  loc_A715BF: LitI2_Byte 0
  loc_A715C1: CR8I2
  loc_A715C2: PopFPR4
  loc_A715C3: FLdPr Me
  loc_A715C6: Me.Left = from_stack_1s
  loc_A715CB: LitI2_Byte 0
  loc_A715CD: CR8I2
  loc_A715CE: PopFPR4
  loc_A715CF: FLdPr Me
  loc_A715D2: Me.Top = from_stack_1s
  loc_A715D7: FLdPr Me
  loc_A715DA: VCallAd Control_ID_DevengadoFlex
  loc_A715DD: FStAdFunc var_AC
  loc_A715E0: LitVarI4
  loc_A715E8: PopAdLdVar
  loc_A715E9: LitVarI4
  loc_A715F1: PopAdLdVar
  loc_A715F2: FLdPr var_AC
  loc_A715F5: LateIdCallSt
  loc_A715FD: LitVarI4
  loc_A71605: PopAdLdVar
  loc_A71606: LitVarI4
  loc_A7160E: PopAdLdVar
  loc_A7160F: FLdPr var_AC
  loc_A71612: LateIdCallSt
  loc_A7161A: LitVarI4
  loc_A71622: PopAdLdVar
  loc_A71623: LitVarI4
  loc_A7162B: PopAdLdVar
  loc_A7162C: FLdPr var_AC
  loc_A7162F: LateIdCallSt
  loc_A71637: LitVarI4
  loc_A7163F: PopAdLdVar
  loc_A71640: LitVarI4
  loc_A71648: PopAdLdVar
  loc_A71649: FLdPr var_AC
  loc_A7164C: LateIdCallSt
  loc_A71654: LitVarI4
  loc_A7165C: PopAdLdVar
  loc_A7165D: LitVarI4
  loc_A71665: PopAdLdVar
  loc_A71666: FLdPr var_AC
  loc_A71669: LateIdCallSt
  loc_A71671: LitVarI4
  loc_A71679: PopAdLdVar
  loc_A7167A: LitVarI4
  loc_A71682: PopAdLdVar
  loc_A71683: FLdPr var_AC
  loc_A71686: LateIdCallSt
  loc_A7168E: LitVarI4
  loc_A71696: PopAdLdVar
  loc_A71697: LitVarI4
  loc_A7169F: PopAdLdVar
  loc_A716A0: FLdPr var_AC
  loc_A716A3: LateIdCallSt
  loc_A716AB: LitVarI4
  loc_A716B3: PopAdLdVar
  loc_A716B4: LitVarI4
  loc_A716BC: PopAdLdVar
  loc_A716BD: FLdPr var_AC
  loc_A716C0: LateIdCallSt
  loc_A716C8: LitVarI4
  loc_A716D0: PopAdLdVar
  loc_A716D1: LitVarI4
  loc_A716D9: PopAdLdVar
  loc_A716DA: FLdPr var_AC
  loc_A716DD: LateIdCallSt
  loc_A716E5: LitVarI4
  loc_A716ED: PopAdLdVar
  loc_A716EE: LitVarI4
  loc_A716F6: PopAdLdVar
  loc_A716F7: FLdPr var_AC
  loc_A716FA: LateIdCallSt
  loc_A71702: LitVarI4
  loc_A7170A: PopAdLdVar
  loc_A7170B: LitVarI4
  loc_A71713: PopAdLdVar
  loc_A71714: FLdPr var_AC
  loc_A71717: LateIdCallSt
  loc_A7171F: LitNothing
  loc_A71721: FStAd var_AC 
  loc_A71725: Call Proc_121_24_A1FA54()
  loc_A7172A: LitStr "SELECT 'Devengado' Tipo, i.PeriInfo, i.ExpeImpu, i.ExorImpu, i.CucuPers, DetaProv, Sum(DeveImpu-LiquImpu) SaldDeve"
  loc_A7172D: LitStr " FROM imputacion i"
  loc_A71730: ConcatStr
  loc_A71731: FStStrNoPop var_D0
  loc_A71734: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = i.CucuPers"
  loc_A71737: ConcatStr
  loc_A71738: FStStrNoPop var_D4
  loc_A7173B: LitStr " WHERE i.PeriInfo = "
  loc_A7173E: ConcatStr
  loc_A7173F: FStStrNoPop var_D8
  loc_A71742: ImpAdLdI2 MemVar_C3D064
  loc_A71745: CStrUI1
  loc_A71747: FStStrNoPop var_DC
  loc_A7174A: ConcatStr
  loc_A7174B: FStStrNoPop var_E0
  loc_A7174E: LitStr " AND (DeveImpu != 0 OR LiquImpu != 0)"
  loc_A71751: ConcatStr
  loc_A71752: FStStrNoPop var_E4
  loc_A71755: LitStr " GROUP BY ExpeImpu, ExorImpu, CucuPers"
  loc_A71758: ConcatStr
  loc_A71759: FStStrNoPop var_E8
  loc_A7175C: LitStr " HAVING SaldDeve > 0 "
  loc_A7175F: ConcatStr
  loc_A71760: FStStrNoPop var_EC
  loc_A71763: LitStr " UNION ALL"
  loc_A71766: ConcatStr
  loc_A71767: FStStrNoPop var_F0
  loc_A7176A: LitStr " SELECT 'Debito' Tipo, d.PeriInfo, d.ExpeImpu, d.ExorImpu, d.CucuPers, DetaProv"
  loc_A7176D: ConcatStr
  loc_A7176E: FStStrNoPop var_F4
  loc_A71771: LitStr ", ImpoDebi-Sum(IF(ImpoImpu IS NULL,0,ImpoImpu)) saldo"
  loc_A71774: ConcatStr
  loc_A71775: FStStrNoPop var_F8
  loc_A71778: LitStr " FROM debito d USE INDEX (idxdebi02)"
  loc_A7177B: ConcatStr
  loc_A7177C: FStStrNoPop var_FC
  loc_A7177F: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = d.CucuPers"
  loc_A71782: ConcatStr
  loc_A71783: FStStrNoPop var_100
  loc_A71786: LitStr " LEFT JOIN liquidadeta ld USE INDEX (idxlide02) ON ld.PeriInfo = d.PeriInfo AND ld.NumeDebi = d.NumeDebi AND (SELECT FeanLiqu from liquidacion l where l.PeriInfo = ld.PeriInfo AND l.ExpeImpu = ld.ExpeImpu AND l.NumeLiqu = ld.NumeLiqu) IS NULL"
  loc_A71789: ConcatStr
  loc_A7178A: FStStrNoPop var_104
  loc_A7178D: LitStr " WHERE d.PeriInfo = "
  loc_A71790: ConcatStr
  loc_A71791: FStStrNoPop var_108
  loc_A71794: ImpAdLdI2 MemVar_C3D064
  loc_A71797: CStrUI1
  loc_A71799: FStStrNoPop var_10C
  loc_A7179C: ConcatStr
  loc_A7179D: FStStrNoPop var_110
  loc_A717A0: LitStr " AND FeanDebi Is Null"
  loc_A717A3: ConcatStr
  loc_A717A4: FStStrNoPop var_114
  loc_A717A7: LitStr " GROUP BY d.NumeDebi /* ExpeImpu, ExorImpu, CucuPers */"
  loc_A717AA: ConcatStr
  loc_A717AB: FStStrNoPop var_118
  loc_A717AE: LitStr " HAVING saldo > 0"
  loc_A717B1: ConcatStr
  loc_A717B2: FStStrNoPop var_11C
  loc_A717B5: LitStr " ORDER BY Tipo, ExpeImpu, ExorImpu, DetaProv;"
  loc_A717B8: ConcatStr
  loc_A717B9: FStStrNoPop var_120
  loc_A717BC: FLdPr Me
  loc_A717BF: MemLdRfVar from_stack_1.global_52
  loc_A717C2: NewIfNullPr clsimputacion
  loc_A717C5: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A717CA: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_A717F7: LitVarI2 var_94, 0
  loc_A717FC: PopAdLdVar
  loc_A717FD: LitStr "Expediente de Pago"
  loc_A71800: FLdPr Me
  loc_A71803: VCallAd Control_ID_FiltroCbo
  loc_A71806: FStAdFunc var_A8
  loc_A71809: FLdPr var_A8
  loc_A7180C: Me.AddItem from_stack_1, from_stack_2
  loc_A71811: FFree1Ad var_A8
  loc_A71814: LitVarI2 var_94, 1
  loc_A71819: PopAdLdVar
  loc_A7181A: LitStr "Expediente Original"
  loc_A7181D: FLdPr Me
  loc_A71820: VCallAd Control_ID_FiltroCbo
  loc_A71823: FStAdFunc var_A8
  loc_A71826: FLdPr var_A8
  loc_A71829: Me.AddItem from_stack_1, from_stack_2
  loc_A7182E: FFree1Ad var_A8
  loc_A71831: LitVarI2 var_94, 2
  loc_A71836: PopAdLdVar
  loc_A71837: LitStr "Proveedor (Nombre)"
  loc_A7183A: FLdPr Me
  loc_A7183D: VCallAd Control_ID_FiltroCbo
  loc_A71840: FStAdFunc var_A8
  loc_A71843: FLdPr var_A8
  loc_A71846: Me.AddItem from_stack_1, from_stack_2
  loc_A7184B: FFree1Ad var_A8
  loc_A7184E: LitVarI2 var_94, 3
  loc_A71853: PopAdLdVar
  loc_A71854: LitStr "Tipo: Devengado"
  loc_A71857: FLdPr Me
  loc_A7185A: VCallAd Control_ID_FiltroCbo
  loc_A7185D: FStAdFunc var_A8
  loc_A71860: FLdPr var_A8
  loc_A71863: Me.AddItem from_stack_1, from_stack_2
  loc_A71868: FFree1Ad var_A8
  loc_A7186B: LitVarI2 var_94, 4
  loc_A71870: PopAdLdVar
  loc_A71871: LitStr "Tipo: Débito"
  loc_A71874: FLdPr Me
  loc_A71877: VCallAd Control_ID_FiltroCbo
  loc_A7187A: FStAdFunc var_A8
  loc_A7187D: FLdPr var_A8
  loc_A71880: Me.AddItem from_stack_1, from_stack_2
  loc_A71885: FFree1Ad var_A8
  loc_A71888: LitI2_Byte 0
  loc_A7188A: FLdPr Me
  loc_A7188D: VCallAd Control_ID_FiltroCbo
  loc_A71890: FStAdFunc var_A8
  loc_A71893: FLdPr var_A8
  loc_A71896: Me.ListIndex = from_stack_1
  loc_A7189B: FFree1Ad var_A8
  loc_A7189E: Call cmdCancelar_Click()
  loc_A718A3: LitI4 0
  loc_A718A8: LitI4 1
  loc_A718AD: FLdRfVar var_124
  loc_A718B0: Redim
  loc_A718BA: FLdPr Me
  loc_A718BD: MemLdRfVar from_stack_1.global_52
  loc_A718C0: NewIfNullAd
  loc_A718C3: FStAd var_A8 
  loc_A718C7: FLdRfVar var_A8
  loc_A718CA: CVarRef
  loc_A718CF: ParmAry1St
  loc_A718D5: FLdPr Me
  loc_A718D8: VCallAd Control_ID_dgdABMS
  loc_A718DB: CVarAd
  loc_A718DF: ParmAry1St
  loc_A718E5: FLdRfVar var_124
  loc_A718E8: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A718ED: ILdRf var_A8
  loc_A718F0: CastAd
  loc_A718F3: FLdPr Me
  loc_A718F6: MemStAdFunc
  loc_A718FA: FLdRfVar var_124
  loc_A718FD: Erase
  loc_A718FE: FFree1Ad var_A8
  loc_A71901: ExitProcHresult
End Sub

Private Sub Form_Activate() '9A2F20
  'Data Table: 46B458
  loc_9A2EB0: LitStr vbNullString
  loc_9A2EB3: FLdPr Me
  loc_9A2EB6: MemStStrCopy
  loc_9A2EBA: LitStr vbNullString
  loc_9A2EBD: FLdPr Me
  loc_9A2EC0: MemStStrCopy
  loc_9A2EC4: FLdRfVar var_C2
  loc_9A2EC7: FLdRfVar var_C0
  loc_9A2ECA: LitVarI2 var_B8, 1
  loc_9A2ECF: FLdPr Me
  loc_9A2ED2: VCallAd Control_ID_tlbABMS
  loc_9A2ED5: FStAdFunc var_88
  loc_9A2ED8: FLdPr var_88
  loc_9A2EDB: LateIdLdVar var_98 DispID_3 0
  loc_9A2EE2: CastAdVar Me
  loc_9A2EE6: FStAdFunc var_BC
  loc_9A2EE9: FLdPr var_BC
  loc_9A2EEC:  = Me.Buttons.ControlDefault
  loc_9A2EF1: FLdPr var_C0
  loc_9A2EF4:  = Me.Enabled
  loc_9A2EF9: FLdI2 var_C2
  loc_9A2EFC: FFreeAd var_88 = "": var_BC = ""
  loc_9A2F05: FFreeVar var_98 = ""
  loc_9A2F0C: BranchF loc_9A2F1D
  loc_9A2F0F: FLdPr Me
  loc_9A2F12: MemLdRfVar from_stack_1.global_52
  loc_9A2F15: NewIfNullPr clsimputacion
  loc_9A2F18: Call clsimputacion.Requery()
  loc_9A2F1D: ExitProcHresult
  loc_9A2F1E: PopAd
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '93F670
  'Data Table: 46B458
  loc_93F66C: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95967C
  'Data Table: 46B458
  loc_959664: ILdI2 KeyCode
  loc_959667: ILdRf Me
  loc_95966A: CastAd
  loc_95966D: FStAdFunc var_88
  loc_959670: FLdRfVar var_88
  loc_959673: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_959678: FFree1Ad var_88
  loc_95967B: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A1D7D4
  'Data Table: 46B458
  loc_A1D628: LitVarStr var_94, vbNullString
  loc_A1D62D: PopAdLdVar
  loc_A1D62E: FLdPr Me
  loc_A1D631: VCallAd Control_ID_FiltroMsk
  loc_A1D634: FStAdFunc var_A8
  loc_A1D637: FLdPr var_A8
  loc_A1D63A: LateIdSt
  loc_A1D63F: FFree1Ad var_A8
  loc_A1D642: FLdRfVar var_AA
  loc_A1D645: FLdPr Me
  loc_A1D648: VCallAd Control_ID_FiltroCbo
  loc_A1D64B: FStAdFunc var_A8
  loc_A1D64E: FLdPr var_A8
  loc_A1D651:  = Me.ListIndex
  loc_A1D656: FLdI2 var_AA
  loc_A1D659: FStI2 var_AC
  loc_A1D65C: FFree1Ad var_A8
  loc_A1D65F: FLdI2 var_AC
  loc_A1D662: LitI2_Byte 0
  loc_A1D664: EqI2
  loc_A1D665: BranchF loc_A1D69F
  loc_A1D668: LitVarStr var_94, vbNullString
  loc_A1D66D: PopAdLdVar
  loc_A1D66E: FLdPr Me
  loc_A1D671: VCallAd Control_ID_FiltroMsk
  loc_A1D674: FStAdFunc var_A8
  loc_A1D677: FLdPr var_A8
  loc_A1D67A: LateIdSt
  loc_A1D67F: FFree1Ad var_A8
  loc_A1D682: LitStr "ExpeImpu"
  loc_A1D685: FStStrCopy var_B0
  loc_A1D688: FLdRfVar var_B0
  loc_A1D68B: FLdPr Me
  loc_A1D68E: MemLdRfVar from_stack_1.global_52
  loc_A1D691: NewIfNullPr clsimputacion
  loc_A1D694: Call clsimputacion.Sort(from_stack_1v)
  loc_A1D699: FFree1Str var_B0
  loc_A1D69C: Branch loc_A1D7D0
  loc_A1D69F: FLdI2 var_AC
  loc_A1D6A2: LitI2_Byte 1
  loc_A1D6A4: EqI2
  loc_A1D6A5: BranchF loc_A1D6DF
  loc_A1D6A8: LitVarStr var_94, vbNullString
  loc_A1D6AD: PopAdLdVar
  loc_A1D6AE: FLdPr Me
  loc_A1D6B1: VCallAd Control_ID_FiltroMsk
  loc_A1D6B4: FStAdFunc var_A8
  loc_A1D6B7: FLdPr var_A8
  loc_A1D6BA: LateIdSt
  loc_A1D6BF: FFree1Ad var_A8
  loc_A1D6C2: LitStr "ExorImpu"
  loc_A1D6C5: FStStrCopy var_B0
  loc_A1D6C8: FLdRfVar var_B0
  loc_A1D6CB: FLdPr Me
  loc_A1D6CE: MemLdRfVar from_stack_1.global_52
  loc_A1D6D1: NewIfNullPr clsimputacion
  loc_A1D6D4: Call clsimputacion.Sort(from_stack_1v)
  loc_A1D6D9: FFree1Str var_B0
  loc_A1D6DC: Branch loc_A1D7D0
  loc_A1D6DF: FLdI2 var_AC
  loc_A1D6E2: LitI2_Byte 2
  loc_A1D6E4: EqI2
  loc_A1D6E5: BranchF loc_A1D71F
  loc_A1D6E8: LitVarStr var_94, vbNullString
  loc_A1D6ED: PopAdLdVar
  loc_A1D6EE: FLdPr Me
  loc_A1D6F1: VCallAd Control_ID_FiltroMsk
  loc_A1D6F4: FStAdFunc var_A8
  loc_A1D6F7: FLdPr var_A8
  loc_A1D6FA: LateIdSt
  loc_A1D6FF: FFree1Ad var_A8
  loc_A1D702: LitStr "DetaProv"
  loc_A1D705: FStStrCopy var_B0
  loc_A1D708: FLdRfVar var_B0
  loc_A1D70B: FLdPr Me
  loc_A1D70E: MemLdRfVar from_stack_1.global_52
  loc_A1D711: NewIfNullPr clsimputacion
  loc_A1D714: Call clsimputacion.Sort(from_stack_1v)
  loc_A1D719: FFree1Str var_B0
  loc_A1D71C: Branch loc_A1D7D0
  loc_A1D71F: FLdI2 var_AC
  loc_A1D722: LitI2_Byte 3
  loc_A1D724: EqI2
  loc_A1D725: BranchF loc_A1D779
  loc_A1D728: LitVarStr var_94, vbNullString
  loc_A1D72D: PopAdLdVar
  loc_A1D72E: FLdPr Me
  loc_A1D731: VCallAd Control_ID_FiltroMsk
  loc_A1D734: FStAdFunc var_A8
  loc_A1D737: FLdPr var_A8
  loc_A1D73A: LateIdSt
  loc_A1D73F: FFree1Ad var_A8
  loc_A1D742: LitStr "Tipo"
  loc_A1D745: FStStrCopy var_B0
  loc_A1D748: FLdRfVar var_B0
  loc_A1D74B: FLdPr Me
  loc_A1D74E: MemLdRfVar from_stack_1.global_52
  loc_A1D751: NewIfNullPr clsimputacion
  loc_A1D754: Call clsimputacion.Sort(from_stack_1v)
  loc_A1D759: FFree1Str var_B0
  loc_A1D75C: LitVarStr var_94, "Devengado"
  loc_A1D761: PopAdLdVar
  loc_A1D762: FLdPr Me
  loc_A1D765: VCallAd Control_ID_FiltroMsk
  loc_A1D768: FStAdFunc var_A8
  loc_A1D76B: FLdPr var_A8
  loc_A1D76E: LateIdSt
  loc_A1D773: FFree1Ad var_A8
  loc_A1D776: Branch loc_A1D7D0
  loc_A1D779: FLdI2 var_AC
  loc_A1D77C: LitI2_Byte 4
  loc_A1D77E: EqI2
  loc_A1D77F: BranchF loc_A1D7D0
  loc_A1D782: LitVarStr var_94, vbNullString
  loc_A1D787: PopAdLdVar
  loc_A1D788: FLdPr Me
  loc_A1D78B: VCallAd Control_ID_FiltroMsk
  loc_A1D78E: FStAdFunc var_A8
  loc_A1D791: FLdPr var_A8
  loc_A1D794: LateIdSt
  loc_A1D799: FFree1Ad var_A8
  loc_A1D79C: LitStr "Tipo"
  loc_A1D79F: FStStrCopy var_B0
  loc_A1D7A2: FLdRfVar var_B0
  loc_A1D7A5: FLdPr Me
  loc_A1D7A8: MemLdRfVar from_stack_1.global_52
  loc_A1D7AB: NewIfNullPr clsimputacion
  loc_A1D7AE: Call clsimputacion.Sort(from_stack_1v)
  loc_A1D7B3: FFree1Str var_B0
  loc_A1D7B6: LitVarStr var_94, "Débito"
  loc_A1D7BB: PopAdLdVar
  loc_A1D7BC: FLdPr Me
  loc_A1D7BF: VCallAd Control_ID_FiltroMsk
  loc_A1D7C2: FStAdFunc var_A8
  loc_A1D7C5: FLdPr var_A8
  loc_A1D7C8: LateIdSt
  loc_A1D7CD: FFree1Ad var_A8
  loc_A1D7D0: ExitProcHresult
End Sub

Private Function Proc_121_24_A1FA54() 'A1FA54
  'Data Table: 46B458
  loc_A1F89C: FLdPr Me
  loc_A1F89F: VCallAd Control_ID_DevengadoFlex
  loc_A1F8A2: FStAdFunc var_88
  loc_A1F8A5: FLdPr var_88
  loc_A1F8A8: LateIdCall
  loc_A1F8B0: LitVarI4
  loc_A1F8B8: PopAdLdVar
  loc_A1F8B9: FLdPr var_88
  loc_A1F8BC: LateIdSt
  loc_A1F8C1: LitVarI4
  loc_A1F8C9: PopAdLdVar
  loc_A1F8CA: LitVarI4
  loc_A1F8D2: PopAdLdVar
  loc_A1F8D3: LitVarStr var_D8, "Periodo"
  loc_A1F8D8: PopAdLdVar
  loc_A1F8D9: FLdPr var_88
  loc_A1F8DC: LateIdCallSt
  loc_A1F8E4: LitVarI4
  loc_A1F8EC: PopAdLdVar
  loc_A1F8ED: LitVarI4
  loc_A1F8F5: PopAdLdVar
  loc_A1F8F6: LitVarStr var_D8, "Partida"
  loc_A1F8FB: PopAdLdVar
  loc_A1F8FC: FLdPr var_88
  loc_A1F8FF: LateIdCallSt
  loc_A1F907: LitVarI4
  loc_A1F90F: PopAdLdVar
  loc_A1F910: LitVarI4
  loc_A1F918: PopAdLdVar
  loc_A1F919: LitVarStr var_D8, "Organigrama"
  loc_A1F91E: PopAdLdVar
  loc_A1F91F: FLdPr var_88
  loc_A1F922: LateIdCallSt
  loc_A1F92A: LitVarI4
  loc_A1F932: PopAdLdVar
  loc_A1F933: LitVarI4
  loc_A1F93B: PopAdLdVar
  loc_A1F93C: LitVarStr var_D8, "Imput."
  loc_A1F941: PopAdLdVar
  loc_A1F942: FLdPr var_88
  loc_A1F945: LateIdCallSt
  loc_A1F94D: LitVarI4
  loc_A1F955: PopAdLdVar
  loc_A1F956: LitVarI4
  loc_A1F95E: PopAdLdVar
  loc_A1F95F: LitVarStr var_D8, "Nro. de Factura"
  loc_A1F964: PopAdLdVar
  loc_A1F965: FLdPr var_88
  loc_A1F968: LateIdCallSt
  loc_A1F970: LitVarI4
  loc_A1F978: PopAdLdVar
  loc_A1F979: LitVarI4
  loc_A1F981: PopAdLdVar
  loc_A1F982: LitVarStr var_D8, "CUIT/CUIL"
  loc_A1F987: PopAdLdVar
  loc_A1F988: FLdPr var_88
  loc_A1F98B: LateIdCallSt
  loc_A1F993: LitVarI4
  loc_A1F99B: PopAdLdVar
  loc_A1F99C: LitVarI4
  loc_A1F9A4: PopAdLdVar
  loc_A1F9A5: LitVarStr var_D8, "Proveedor"
  loc_A1F9AA: PopAdLdVar
  loc_A1F9AB: FLdPr var_88
  loc_A1F9AE: LateIdCallSt
  loc_A1F9B6: LitVarI4
  loc_A1F9BE: PopAdLdVar
  loc_A1F9BF: LitVarI4
  loc_A1F9C7: PopAdLdVar
  loc_A1F9C8: LitVarStr var_D8, "Detalle"
  loc_A1F9CD: PopAdLdVar
  loc_A1F9CE: FLdPr var_88
  loc_A1F9D1: LateIdCallSt
  loc_A1F9D9: LitVarI4
  loc_A1F9E1: PopAdLdVar
  loc_A1F9E2: LitVarI4
  loc_A1F9EA: PopAdLdVar
  loc_A1F9EB: LitVarStr var_D8, "Importe"
  loc_A1F9F0: PopAdLdVar
  loc_A1F9F1: FLdPr var_88
  loc_A1F9F4: LateIdCallSt
  loc_A1F9FC: LitVarI4
  loc_A1FA04: PopAdLdVar
  loc_A1FA05: LitVarI4
  loc_A1FA0D: PopAdLdVar
  loc_A1FA0E: LitVarStr var_D8, "Sel"
  loc_A1FA13: PopAdLdVar
  loc_A1FA14: FLdPr var_88
  loc_A1FA17: LateIdCallSt
  loc_A1FA1F: LitVarI4
  loc_A1FA27: PopAdLdVar
  loc_A1FA28: LitVarI4
  loc_A1FA30: PopAdLdVar
  loc_A1FA31: LitVarStr var_D8, "Imp. Ini"
  loc_A1FA36: PopAdLdVar
  loc_A1FA37: FLdPr var_88
  loc_A1FA3A: LateIdCallSt
  loc_A1FA42: FLdPr var_88
  loc_A1FA45: LateIdCall
  loc_A1FA4D: LitNothing
  loc_A1FA4F: FStAd var_88 
  loc_A1FA53: ExitProcHresult
End Function

Private Function Proc_121_25_A285B0() 'A285B0
  'Data Table: 46B458
  loc_A283E8: FLdRfVar var_B4
  loc_A283EB: FLdRfVar var_A4
  loc_A283EE: LitVarStr var_A0, "Tipo"
  loc_A283F3: PopAdLdVar
  loc_A283F4: FLdRfVar var_90
  loc_A283F7: FLdRfVar var_8C
  loc_A283FA: FLdPr Me
  loc_A283FD: MemLdRfVar from_stack_1.global_52
  loc_A28400: NewIfNullPr clsimputacion
  loc_A28403: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A28408: FLdPr var_8C
  loc_A2840B:  = Me.Fields
  loc_A28410: FLdPr var_90
  loc_A28413: from_stack_2 = Me.Item(from_stack_1)
  loc_A28418: FLdPr var_A4
  loc_A2841B:  = Me.Value
  loc_A28420: FLdRfVar var_B4
  loc_A28423: LitVarStr var_C4, "Devengado"
  loc_A28428: HardType
  loc_A28429: EqVarBool
  loc_A2842B: FFreeAd var_8C = "": var_90 = ""
  loc_A28434: FFree1Var var_B4 = ""
  loc_A28437: BranchF loc_A28553
  loc_A2843A: FLdPr Me
  loc_A2843D: MemLdStr global_76
  loc_A28440: LitStr vbNullString
  loc_A28443: EqStr
  loc_A28445: BranchF loc_A284BD
  loc_A28448: FLdPr Me
  loc_A2844B: VCallAd Control_ID_DevengadoFlex
  loc_A2844E: FStAdFunc var_8C
  loc_A28451: FLdPr var_8C
  loc_A28454: LateIdLdVar var_B4 DispID_10 0
  loc_A2845B: CI4Var
  loc_A2845D: CVarI4
  loc_A28461: PopAdLdVar
  loc_A28462: LitVarI4
  loc_A2846A: PopAdLdVar
  loc_A2846B: FLdPr Me
  loc_A2846E: VCallAd Control_ID_DevengadoFlex
  loc_A28471: FStAdFunc var_90
  loc_A28474: FLdPr var_90
  loc_A28477: LateIdCallLdVar
  loc_A28481: PopAd
  loc_A28483: FLdRfVar var_FC
  loc_A28486: FLdRfVar var_D4
  loc_A28489: CStrVarTmp
  loc_A2848A: FStStrNoPop var_F8
  loc_A2848D: ImpAdLdI2 MemVar_C3D064
  loc_A28490: FLdPr Me
  loc_A28493: MemLdRfVar from_stack_1.global_52
  loc_A28496: NewIfNullPr clsimputacion
  loc_A28499: from_stack_3v = clsimputacion.TipoPago(from_stack_1v, from_stack_2v)
  loc_A2849E: ILdRf var_FC
  loc_A284A1: FLdPr Me
  loc_A284A4: MemStStrCopy
  loc_A284A8: FFreeStr var_F8 = ""
  loc_A284AF: FFreeAd var_8C = ""
  loc_A284B6: FFreeVar var_B4 = ""
  loc_A284BD: FLdPr Me
  loc_A284C0: VCallAd Control_ID_DevengadoFlex
  loc_A284C3: FStAdFunc var_8C
  loc_A284C6: FLdPr var_8C
  loc_A284C9: LateIdLdVar var_B4 DispID_10 0
  loc_A284D0: CI4Var
  loc_A284D2: CVarI4
  loc_A284D6: PopAdLdVar
  loc_A284D7: LitVarI4
  loc_A284DF: PopAdLdVar
  loc_A284E0: FLdPr Me
  loc_A284E3: VCallAd Control_ID_DevengadoFlex
  loc_A284E6: FStAdFunc var_90
  loc_A284E9: FLdPr var_90
  loc_A284EC: LateIdCallLdVar
  loc_A284F6: PopAd
  loc_A284F8: FLdPr Me
  loc_A284FB: MemLdStr global_76
  loc_A284FE: FLdRfVar var_FC
  loc_A28501: FLdRfVar var_D4
  loc_A28504: CStrVarTmp
  loc_A28505: FStStrNoPop var_F8
  loc_A28508: ImpAdLdI2 MemVar_C3D064
  loc_A2850B: FLdPr Me
  loc_A2850E: MemLdRfVar from_stack_1.global_52
  loc_A28511: NewIfNullPr clsimputacion
  loc_A28514: from_stack_3v = clsimputacion.TipoPago(from_stack_1v, from_stack_2v)
  loc_A28519: ILdRf var_FC
  loc_A2851C: EqStr
  loc_A2851E: FFreeStr var_F8 = ""
  loc_A28525: FFreeAd var_8C = ""
  loc_A2852C: FFreeVar var_B4 = ""
  loc_A28533: BranchF loc_A2853E
  loc_A28536: LitI2_Byte &HFF
  loc_A28538: FStI2 var_86
  loc_A2853B: Branch loc_A28550
  loc_A2853E: LitI4 0
  loc_A28543: LitStr "Debe seleccionar un solo tipo de pago (Presupuestario,Extrapresup.,Residuo presup,Residuo extrapresup.). Verifique..."
  loc_A28546: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A2854B: LitI2_Byte 0
  loc_A2854D: FStI2 var_86
  loc_A28550: Branch loc_A285AA
  loc_A28553: FLdRfVar var_B4
  loc_A28556: FLdRfVar var_A4
  loc_A28559: LitVarStr var_A0, "Tipo"
  loc_A2855E: PopAdLdVar
  loc_A2855F: FLdRfVar var_90
  loc_A28562: FLdRfVar var_8C
  loc_A28565: FLdPr Me
  loc_A28568: MemLdRfVar from_stack_1.global_52
  loc_A2856B: NewIfNullPr clsimputacion
  loc_A2856E: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A28573: FLdPr var_8C
  loc_A28576:  = Me.Fields
  loc_A2857B: FLdPr var_90
  loc_A2857E: from_stack_2 = Me.Item(from_stack_1)
  loc_A28583: FLdPr var_A4
  loc_A28586:  = Me.Value
  loc_A2858B: FLdRfVar var_B4
  loc_A2858E: LitVarStr var_C4, "Debito"
  loc_A28593: HardType
  loc_A28594: EqVarBool
  loc_A28596: FFreeAd var_8C = "": var_90 = ""
  loc_A2859F: FFree1Var var_B4 = ""
  loc_A285A2: BranchF loc_A285AA
  loc_A285A5: LitI2_Byte &HFF
  loc_A285A7: FStI2 var_86
  loc_A285AA: ExitProcCbHresult
End Function

Private Function Proc_121_26_A1B7B4() 'A1B7B4
  'Data Table: 46B458
  loc_A1B62C: FLdPr Me
  loc_A1B62F: VCallAd Control_ID_DevengadoFlex
  loc_A1B632: FStAdFunc var_88
  loc_A1B635: FLdPr var_88
  loc_A1B638: LateIdLdVar var_98 DispID_10 0
  loc_A1B63F: CI4Var
  loc_A1B641: CVarI4
  loc_A1B645: PopAdLdVar
  loc_A1B646: LitVarI4
  loc_A1B64E: PopAdLdVar
  loc_A1B64F: FLdPr Me
  loc_A1B652: VCallAd Control_ID_DevengadoFlex
  loc_A1B655: FStAdFunc var_DC
  loc_A1B658: FLdPr var_DC
  loc_A1B65B: LateIdCallLdVar
  loc_A1B665: PopAd
  loc_A1B667: FLdPr Me
  loc_A1B66A: VCallAd Control_ID_DevengadoFlex
  loc_A1B66D: FStAdFunc var_F0
  loc_A1B670: FLdPr var_F0
  loc_A1B673: LateIdLdVar var_100 DispID_10 0
  loc_A1B67A: CI4Var
  loc_A1B67C: CVarI4
  loc_A1B680: PopAdLdVar
  loc_A1B681: LitVarI4
  loc_A1B689: PopAdLdVar
  loc_A1B68A: FLdPr Me
  loc_A1B68D: VCallAd Control_ID_DevengadoFlex
  loc_A1B690: FStAdFunc var_144
  loc_A1B693: FLdPr var_144
  loc_A1B696: LateIdCallLdVar
  loc_A1B6A0: PopAd
  loc_A1B6A2: FLdRfVar var_15E
  loc_A1B6A5: FLdRfVar var_154
  loc_A1B6A8: CStrVarTmp
  loc_A1B6A9: FStStrNoPop var_15C
  loc_A1B6AC: CI4Str
  loc_A1B6AD: FLdRfVar var_EC
  loc_A1B6B0: CStrVarTmp
  loc_A1B6B1: FStStrNoPop var_158
  loc_A1B6B4: FLdPr Me
  loc_A1B6B7: MemLdRfVar from_stack_1.global_52
  loc_A1B6BA: NewIfNullPr clsimputacion
  loc_A1B6BD: from_stack_3v = clsimputacion.ValidoElInventario(from_stack_1v, from_stack_2v)
  loc_A1B6C2: FLdI2 var_15E
  loc_A1B6C5: FLdRfVar var_160
  loc_A1B6C8: from_stack_1v = Proc_121_25_A285B0()
  loc_A1B6CD: FLdI2 var_160
  loc_A1B6D0: AndI4
  loc_A1B6D1: FFreeStr var_158 = ""
  loc_A1B6D8: FFreeAd var_88 = "": var_DC = "": var_F0 = ""
  loc_A1B6E3: FFreeVar var_98 = "": var_EC = "": var_100 = ""
  loc_A1B6EE: BranchF loc_A1B7B0
  loc_A1B6F1: FLdPr Me
  loc_A1B6F4: VCallAd Control_ID_DevengadoFlex
  loc_A1B6F7: FStAdFunc var_88
  loc_A1B6FA: FLdPr var_88
  loc_A1B6FD: LateIdLdVar var_98 DispID_10 0
  loc_A1B704: CI4Var
  loc_A1B706: CVarI4
  loc_A1B70A: PopAdLdVar
  loc_A1B70B: LitVarI4
  loc_A1B713: PopAdLdVar
  loc_A1B714: LitVarStr var_110, "Si"
  loc_A1B719: PopAdLdVar
  loc_A1B71A: FLdPr Me
  loc_A1B71D: VCallAd Control_ID_DevengadoFlex
  loc_A1B720: FStAdFunc var_DC
  loc_A1B723: FLdPr var_DC
  loc_A1B726: LateIdCallSt
  loc_A1B72E: FFreeAd var_88 = ""
  loc_A1B735: FFree1Var var_98 = ""
  loc_A1B738: LitI2_Byte 1
  loc_A1B73A: FLdPr Me
  loc_A1B73D: MemLdRfVar from_stack_1.global_70
  loc_A1B740: FLdPr Me
  loc_A1B743: VCallAd Control_ID_DevengadoFlex
  loc_A1B746: FStAdFunc var_88
  loc_A1B749: FLdPr var_88
  loc_A1B74C: LateIdLdVar var_98 DispID_5 0
  loc_A1B753: CI4Var
  loc_A1B755: LitI4 1
  loc_A1B75A: SubI4
  loc_A1B75B: CI2I4
  loc_A1B75C: FFree1Ad var_88
  loc_A1B75F: FFree1Var var_98 = ""
  loc_A1B762: ForI2 var_164
  loc_A1B768: FLdPr Me
  loc_A1B76B: MemLdI2 global_70
  loc_A1B76E: CI4UI1
  loc_A1B76F: CVarI4
  loc_A1B773: PopAdLdVar
  loc_A1B774: FLdPr Me
  loc_A1B777: VCallAd Control_ID_DevengadoFlex
  loc_A1B77A: FStAdFunc var_88
  loc_A1B77D: FLdPr var_88
  loc_A1B780: LateIdSt
  loc_A1B785: FFree1Ad var_88
  loc_A1B788: LitVarI4
  loc_A1B790: PopAdLdVar
  loc_A1B791: FLdPr Me
  loc_A1B794: VCallAd Control_ID_DevengadoFlex
  loc_A1B797: FStAdFunc var_88
  loc_A1B79A: FLdPr var_88
  loc_A1B79D: LateIdSt
  loc_A1B7A2: FFree1Ad var_88
  loc_A1B7A5: FLdPr Me
  loc_A1B7A8: MemLdRfVar from_stack_1.global_70
  loc_A1B7AB: NextI2 var_164, loc_A1B768
  loc_A1B7B0: ExitProcHresult
  loc_A1B7B1: Assert
End Function

Private Function Proc_121_27_9BCBAC() '9BCBAC
  'Data Table: 46B458
  loc_9BCAEC: FLdPr Me
  loc_9BCAEF: VCallAd Control_ID_DevengadoFlex
  loc_9BCAF2: FStAdFunc var_88
  loc_9BCAF5: FLdPr var_88
  loc_9BCAF8: LateIdLdVar var_98 DispID_10 0
  loc_9BCAFF: CI4Var
  loc_9BCB01: CVarI4
  loc_9BCB05: PopAdLdVar
  loc_9BCB06: LitVarI4
  loc_9BCB0E: PopAdLdVar
  loc_9BCB0F: LitVarStr var_E8, "No"
  loc_9BCB14: PopAdLdVar
  loc_9BCB15: FLdPr Me
  loc_9BCB18: VCallAd Control_ID_DevengadoFlex
  loc_9BCB1B: FStAdFunc var_FC
  loc_9BCB1E: FLdPr var_FC
  loc_9BCB21: LateIdCallSt
  loc_9BCB29: FFreeAd var_88 = ""
  loc_9BCB30: FFree1Var var_98 = ""
  loc_9BCB33: LitI2_Byte 1
  loc_9BCB35: FLdPr Me
  loc_9BCB38: MemLdRfVar from_stack_1.global_70
  loc_9BCB3B: FLdPr Me
  loc_9BCB3E: VCallAd Control_ID_DevengadoFlex
  loc_9BCB41: FStAdFunc var_88
  loc_9BCB44: FLdPr var_88
  loc_9BCB47: LateIdLdVar var_98 DispID_5 0
  loc_9BCB4E: CI4Var
  loc_9BCB50: LitI4 1
  loc_9BCB55: SubI4
  loc_9BCB56: CI2I4
  loc_9BCB57: FFree1Ad var_88
  loc_9BCB5A: FFree1Var var_98 = ""
  loc_9BCB5D: ForI2 var_100
  loc_9BCB63: FLdPr Me
  loc_9BCB66: MemLdI2 global_70
  loc_9BCB69: CI4UI1
  loc_9BCB6A: CVarI4
  loc_9BCB6E: PopAdLdVar
  loc_9BCB6F: FLdPr Me
  loc_9BCB72: VCallAd Control_ID_DevengadoFlex
  loc_9BCB75: FStAdFunc var_88
  loc_9BCB78: FLdPr var_88
  loc_9BCB7B: LateIdSt
  loc_9BCB80: FFree1Ad var_88
  loc_9BCB83: LitVarI4
  loc_9BCB8B: PopAdLdVar
  loc_9BCB8C: FLdPr Me
  loc_9BCB8F: VCallAd Control_ID_DevengadoFlex
  loc_9BCB92: FStAdFunc var_88
  loc_9BCB95: FLdPr var_88
  loc_9BCB98: LateIdSt
  loc_9BCB9D: FFree1Ad var_88
  loc_9BCBA0: FLdPr Me
  loc_9BCBA3: MemLdRfVar from_stack_1.global_70
  loc_9BCBA6: NextI2 var_100, loc_9BCB63
  loc_9BCBAB: ExitProcHresult
End Function
