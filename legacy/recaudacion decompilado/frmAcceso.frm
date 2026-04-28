VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmAcceso
  Caption = "Accesos de Usuarios"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmAcceso.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 14220
  ClientHeight = 9600
  Begin VB.CommandButton SalirCmd
    Left = 13080
    Top = 360
    Width = 810
    Height = 615
    TabIndex = 5
    Picture = "frmAcceso.frx":08CA
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton ImprimirCmd
    Left = 13080
    Top = 1200
    Width = 810
    Height = 615
    TabIndex = 4
    Picture = "frmAcceso.frx":0B1C
    Style = 1
  End
  Begin VB.Frame Frame2
    Caption = "Usuarios"
    Left = 120
    Top = 120
    Width = 12735
    Height = 4215
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
    Begin MSDataGridLib.DataGrid dgdUsuarios
      Left = 240
      Top = 480
      Width = 12375
      Height = 3465
      TabIndex = 1
      OleObjectBlob = "frmAcceso.frx":0C1E
    End
  End
  Begin VB.Frame fraABMS
    Caption = "Accesos"
    Left = 0
    Top = 4440
    Width = 13935
    Height = 4935
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
    Begin MSFlexGridLib.MSFlexGrid AccesoFlex
      Left = 120
      Top = 360
      Width = 13815
      Height = 4455
      TabIndex = 3
      OleObjectBlob = "frmAcceso.frx":0FC0
      Appearance = 0 'Flat
    End
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmAcceso.frx":10AC
    Left = 11640
    Top = 840
  End
End

Attribute VB_Name = "frmAcceso"


Private Sub dgdUsuarios_UnknownEvent_0 '9D40A0
  'Data Table: 416210
  loc_9D4088: FLdPr Me
  loc_9D408B: VCallAd Control_ID_dgdUsuarios
  loc_9D408E: FStAdFunc var_88
  loc_9D4091: FLdRfVar var_88
  loc_9D4094: ImpAdCallFPR4 Proc_58_0_9FD654()
  loc_9D4099: FFree1Ad var_88
  loc_9D409C: ExitProcHresult
  loc_9D409D: Ary1LdPr
End Sub

Private Sub dgdUsuarios_UnknownEvent_1 '9D3344
  'Data Table: 416210
  loc_9D332C: FLdPr Me
  loc_9D332F: VCallAd Control_ID_dgdUsuarios
  loc_9D3332: FStAdFunc var_88
  loc_9D3335: FLdRfVar var_88
  loc_9D3338: ImpAdCallFPR4 Proc_58_1_9EAB78()
  loc_9D333D: FFree1Ad var_88
  loc_9D3340: ExitProcHresult
  loc_9D3341: FLdRfVar arg_6400
End Sub

Private Sub dgdUsuarios_RowColChange(LastRow As Variant, LastCol As Integer) 'BCF15C
  'Data Table: 416210
  loc_BCEAAC: Call Proc_21_11_ACBF40()
  loc_BCEAB1: LitI2_Byte 1
  loc_BCEAB3: FLdRfVar var_86
  loc_BCEAB6: ImpAdLdI4 MemVar_D93094
  loc_BCEAB9: LitI2_Byte 1
  loc_BCEABB: FnUBound
  loc_BCEABD: CI2I4
  loc_BCEABE: ForI2 var_CC
  loc_BCEAC4: FLdRfVar var_C8
  loc_BCEAC7: FLdI2 var_86
  loc_BCEACA: CI4UI1
  loc_BCEACB: ImpAdLdI4 MemVar_D93094
  loc_BCEACE: Ary1LdPr
  loc_BCEACF: MemLdStr global_0
  loc_BCEAD2: ImpAdCallI2 Proc_270_5_B14CC8(, )
  loc_BCEAD7: LitI2_Byte &HFF
  loc_BCEAD9: EqI2
  loc_BCEADA: BranchF loc_BCEBEB
  loc_BCEADD: FLdI2 var_86
  loc_BCEAE0: CI4UI1
  loc_BCEAE1: ImpAdLdI4 MemVar_D93094
  loc_BCEAE4: Ary1LdPr
  loc_BCEAE5: MemLdStr global_8
  loc_BCEAE8: CVarStr var_EC
  loc_BCEAEB: LitI4 9
  loc_BCEAF0: FLdRfVar var_DC
  loc_BCEAF3: ImpAdCallFPR4  = Chr()
  loc_BCEAF8: FLdRfVar var_DC
  loc_BCEAFB: ConcatVar var_FC
  loc_BCEAFF: FLdI2 var_86
  loc_BCEB02: CI4UI1
  loc_BCEB03: ImpAdLdI4 MemVar_D93094
  loc_BCEB06: Ary1LdPr
  loc_BCEB07: MemLdStr global_0
  loc_BCEB0A: CVarStr var_10C
  loc_BCEB0D: ConcatVar var_11C
  loc_BCEB11: LitI4 9
  loc_BCEB16: FLdRfVar var_12C
  loc_BCEB19: ImpAdCallFPR4  = Chr()
  loc_BCEB1E: FLdRfVar var_12C
  loc_BCEB21: ConcatVar var_13C
  loc_BCEB25: LitVarStr var_14C, "No"
  loc_BCEB2A: ConcatVar var_15C
  loc_BCEB2E: LitI4 9
  loc_BCEB33: FLdRfVar var_16C
  loc_BCEB36: ImpAdCallFPR4  = Chr()
  loc_BCEB3B: FLdRfVar var_16C
  loc_BCEB3E: ConcatVar var_17C
  loc_BCEB42: LitVarStr var_18C, "No"
  loc_BCEB47: ConcatVar var_19C
  loc_BCEB4B: LitI4 9
  loc_BCEB50: FLdRfVar var_1AC
  loc_BCEB53: ImpAdCallFPR4  = Chr()
  loc_BCEB58: FLdRfVar var_1AC
  loc_BCEB5B: ConcatVar var_1BC
  loc_BCEB5F: LitVarStr var_1CC, "No"
  loc_BCEB64: ConcatVar var_1DC
  loc_BCEB68: LitI4 9
  loc_BCEB6D: FLdRfVar var_1EC
  loc_BCEB70: ImpAdCallFPR4  = Chr()
  loc_BCEB75: FLdRfVar var_1EC
  loc_BCEB78: ConcatVar var_1FC
  loc_BCEB7C: LitVarStr var_20C, "No"
  loc_BCEB81: ConcatVar var_21C
  loc_BCEB85: LitI4 9
  loc_BCEB8A: FLdRfVar var_22C
  loc_BCEB8D: ImpAdCallFPR4  = Chr()
  loc_BCEB92: FLdRfVar var_22C
  loc_BCEB95: ConcatVar var_23C
  loc_BCEB99: ILdRf var_C0
  loc_BCEB9C: CVarStr var_24C
  loc_BCEB9F: ConcatVar var_25C
  loc_BCEBA3: CStrVarTmp
  loc_BCEBA4: CVarStr var_26C
  loc_BCEBA7: PopAdLdVar
  loc_BCEBA8: FLdPr Me
  loc_BCEBAB: VCallAd Control_ID_AccesoFlex
  loc_BCEBAE: FStAdFunc var_280
  loc_BCEBB1: FLdPr var_280
  loc_BCEBB4: LateIdCall
  loc_BCEBBC: FFree1Ad var_280
  loc_BCEBBF: FFreeVar var_DC = "": var_FC = "": var_11C = "": var_12C = "": var_13C = "": var_15C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1DC = "": var_1EC = "": var_1FC = "": var_21C = "": var_22C = "": var_23C = "": var_25C = ""
  loc_BCEBE8: Branch loc_BCECE3
  loc_BCEBEB: LitVarStr var_EC, "El menu no esta cargado correctamente.Verifique..."
  loc_BCEBF0: LitI4 9
  loc_BCEBF5: FLdRfVar var_DC
  loc_BCEBF8: ImpAdCallFPR4  = Chr()
  loc_BCEBFD: FLdRfVar var_DC
  loc_BCEC00: ConcatVar var_FC
  loc_BCEC04: LitVarStr var_10C, " "
  loc_BCEC09: ConcatVar var_11C
  loc_BCEC0D: LitI4 9
  loc_BCEC12: FLdRfVar var_12C
  loc_BCEC15: ImpAdCallFPR4  = Chr()
  loc_BCEC1A: FLdRfVar var_12C
  loc_BCEC1D: ConcatVar var_13C
  loc_BCEC21: LitVarStr var_14C, "No"
  loc_BCEC26: ConcatVar var_15C
  loc_BCEC2A: LitI4 9
  loc_BCEC2F: FLdRfVar var_16C
  loc_BCEC32: ImpAdCallFPR4  = Chr()
  loc_BCEC37: FLdRfVar var_16C
  loc_BCEC3A: ConcatVar var_17C
  loc_BCEC3E: LitVarStr var_18C, "No"
  loc_BCEC43: ConcatVar var_19C
  loc_BCEC47: LitI4 9
  loc_BCEC4C: FLdRfVar var_1AC
  loc_BCEC4F: ImpAdCallFPR4  = Chr()
  loc_BCEC54: FLdRfVar var_1AC
  loc_BCEC57: ConcatVar var_1BC
  loc_BCEC5B: LitVarStr var_1CC, "No"
  loc_BCEC60: ConcatVar var_1DC
  loc_BCEC64: LitI4 9
  loc_BCEC69: FLdRfVar var_1EC
  loc_BCEC6C: ImpAdCallFPR4  = Chr()
  loc_BCEC71: FLdRfVar var_1EC
  loc_BCEC74: ConcatVar var_1FC
  loc_BCEC78: LitVarStr var_20C, "No"
  loc_BCEC7D: ConcatVar var_21C
  loc_BCEC81: LitI4 9
  loc_BCEC86: FLdRfVar var_22C
  loc_BCEC89: ImpAdCallFPR4  = Chr()
  loc_BCEC8E: FLdRfVar var_22C
  loc_BCEC91: ConcatVar var_23C
  loc_BCEC95: LitVarStr var_24C, "0"
  loc_BCEC9A: ConcatVar var_25C
  loc_BCEC9E: CStrVarTmp
  loc_BCEC9F: CVarStr var_26C
  loc_BCECA2: PopAdLdVar
  loc_BCECA3: FLdPr Me
  loc_BCECA6: VCallAd Control_ID_AccesoFlex
  loc_BCECA9: FStAdFunc var_280
  loc_BCECAC: FLdPr var_280
  loc_BCECAF: LateIdCall
  loc_BCECB7: FFree1Ad var_280
  loc_BCECBA: FFreeVar var_DC = "": var_FC = "": var_11C = "": var_12C = "": var_13C = "": var_15C = "": var_16C = "": var_17C = "": var_19C = "": var_1AC = "": var_1BC = "": var_1DC = "": var_1EC = "": var_1FC = "": var_21C = "": var_22C = "": var_23C = "": var_25C = ""
  loc_BCECE3: FLdRfVar var_DC
  loc_BCECE6: FLdRfVar var_288
  loc_BCECE9: LitVarStr var_EC, "CodiUsua"
  loc_BCECEE: PopAdLdVar
  loc_BCECEF: FLdRfVar var_284
  loc_BCECF2: FLdRfVar var_280
  loc_BCECF5: FLdPr Me
  loc_BCECF8: MemLdRfVar from_stack_1.global_52
  loc_BCECFB: NewIfNullPr clsusuario
  loc_BCECFE: from_stack_1v = clsusuario.RsFrmGet()
  loc_BCED03: FLdPr var_280
  loc_BCED06:  = Me.Fields
  loc_BCED0B: FLdPr var_284
  loc_BCED0E: from_stack_2 = Me.Item(from_stack_1)
  loc_BCED13: FLdPr var_288
  loc_BCED16:  = Me.Value
  loc_BCED1B: FLdRfVar var_AC
  loc_BCED1E: FLdI2 var_86
  loc_BCED21: CI4UI1
  loc_BCED22: ImpAdLdI4 MemVar_D93094
  loc_BCED25: Ary1LdPr
  loc_BCED26: MemLdStr global_0
  loc_BCED29: LitI2_Byte 2
  loc_BCED2B: FLdRfVar var_DC
  loc_BCED2E: CStrVarTmp
  loc_BCED2F: FStStrNoPop var_28C
  loc_BCED32: ImpAdCallI2 Proc_270_4_B3D5F8(, , , )
  loc_BCED37: FFree1Str var_28C
  loc_BCED3A: FFreeAd var_280 = "": var_284 = ""
  loc_BCED43: FFree1Var var_DC = ""
  loc_BCED46: BranchF loc_BCEFB4
  loc_BCED49: FLdI2 var_86
  loc_BCED4C: CI4UI1
  loc_BCED4D: CVarI4
  loc_BCED51: PopAdLdVar
  loc_BCED52: LitVarI4
  loc_BCED5A: PopAdLdVar
  loc_BCED5B: FLdPr Me
  loc_BCED5E: VCallAd Control_ID_AccesoFlex
  loc_BCED61: FStAdFunc var_280
  loc_BCED64: FLdPr var_280
  loc_BCED67: LateIdCallLdVar
  loc_BCED71: CStrVarTmp
  loc_BCED72: FStStrNoPop var_28C
  loc_BCED75: LitStr "Si"
  loc_BCED78: NeStr
  loc_BCED7A: FFree1Str var_28C
  loc_BCED7D: FFree1Ad var_280
  loc_BCED80: FFree1Var var_DC = ""
  loc_BCED83: BranchF loc_BCEFB1
  loc_BCED86: FLdI2 var_86
  loc_BCED89: CI4UI1
  loc_BCED8A: CVarI4
  loc_BCED8E: PopAdLdVar
  loc_BCED8F: FLdPr Me
  loc_BCED92: VCallAd Control_ID_AccesoFlex
  loc_BCED95: FStAdFunc var_280
  loc_BCED98: FLdPr var_280
  loc_BCED9B: LateIdSt
  loc_BCEDA0: FFree1Ad var_280
  loc_BCEDA3: LitI2_Byte 0
  loc_BCEDA5: CUI1I2
  loc_BCEDA7: FLdRfVar var_88
  loc_BCEDAA: FLdPr Me
  loc_BCEDAD: VCallAd Control_ID_AccesoFlex
  loc_BCEDB0: FStAdFunc var_280
  loc_BCEDB3: FLdPr var_280
  loc_BCEDB6: LateIdLdVar var_DC DispID_5 0
  loc_BCEDBD: CI4Var
  loc_BCEDBF: LitI4 1
  loc_BCEDC4: SubI4
  loc_BCEDC5: CUI1I4
  loc_BCEDC7: FFree1Ad var_280
  loc_BCEDCA: FFree1Var var_DC = ""
  loc_BCEDCD: ForUI1 var_290
  loc_BCEDD3: FLdUI1
  loc_BCEDD7: CI4UI1
  loc_BCEDD8: CVarI4
  loc_BCEDDC: PopAdLdVar
  loc_BCEDDD: FLdPr Me
  loc_BCEDE0: VCallAd Control_ID_AccesoFlex
  loc_BCEDE3: FStAdFunc var_280
  loc_BCEDE6: FLdPr var_280
  loc_BCEDE9: LateIdSt
  loc_BCEDEE: FFree1Ad var_280
  loc_BCEDF1: LitVarI4
  loc_BCEDF9: PopAdLdVar
  loc_BCEDFA: FLdPr Me
  loc_BCEDFD: VCallAd Control_ID_AccesoFlex
  loc_BCEE00: FStAdFunc var_280
  loc_BCEE03: FLdPr var_280
  loc_BCEE06: LateIdSt
  loc_BCEE0B: FFree1Ad var_280
  loc_BCEE0E: FLdI2 var_86
  loc_BCEE11: CI4UI1
  loc_BCEE12: CVarI4
  loc_BCEE16: PopAdLdVar
  loc_BCEE17: LitVarI4
  loc_BCEE1F: PopAdLdVar
  loc_BCEE20: LitVarStr var_14C, "No"
  loc_BCEE25: FStVarCopyObj var_FC
  loc_BCEE28: FLdRfVar var_FC
  loc_BCEE2B: LitVarStr var_10C, "Si"
  loc_BCEE30: FStVarCopyObj var_DC
  loc_BCEE33: FLdRfVar var_DC
  loc_BCEE36: ILdRf var_A0
  loc_BCEE39: CR8Str
  loc_BCEE3B: LitI2_Byte 1
  loc_BCEE3D: CR8I2
  loc_BCEE3E: EqR4
  loc_BCEE3F: CVarBoolI2 var_EC
  loc_BCEE43: FLdRfVar var_11C
  loc_BCEE46: ImpAdCallFPR4  = IIf(, , )
  loc_BCEE4B: FLdRfVar var_11C
  loc_BCEE4E: CStrVarTmp
  loc_BCEE4F: CVarStr var_12C
  loc_BCEE52: PopAdLdVar
  loc_BCEE53: FLdPr Me
  loc_BCEE56: VCallAd Control_ID_AccesoFlex
  loc_BCEE59: FStAdFunc var_280
  loc_BCEE5C: FLdPr var_280
  loc_BCEE5F: LateIdCallSt
  loc_BCEE67: FFree1Ad var_280
  loc_BCEE6A: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_BCEE77: FLdI2 var_86
  loc_BCEE7A: CI4UI1
  loc_BCEE7B: CVarI4
  loc_BCEE7F: PopAdLdVar
  loc_BCEE80: LitVarI4
  loc_BCEE88: PopAdLdVar
  loc_BCEE89: LitVarStr var_14C, "No"
  loc_BCEE8E: FStVarCopyObj var_FC
  loc_BCEE91: FLdRfVar var_FC
  loc_BCEE94: LitVarStr var_10C, "Si"
  loc_BCEE99: FStVarCopyObj var_DC
  loc_BCEE9C: FLdRfVar var_DC
  loc_BCEE9F: ILdRf var_98
  loc_BCEEA2: CR8Str
  loc_BCEEA4: LitI2_Byte 1
  loc_BCEEA6: CR8I2
  loc_BCEEA7: EqR4
  loc_BCEEA8: CVarBoolI2 var_EC
  loc_BCEEAC: FLdRfVar var_11C
  loc_BCEEAF: ImpAdCallFPR4  = IIf(, , )
  loc_BCEEB4: FLdRfVar var_11C
  loc_BCEEB7: CStrVarTmp
  loc_BCEEB8: CVarStr var_12C
  loc_BCEEBB: PopAdLdVar
  loc_BCEEBC: FLdPr Me
  loc_BCEEBF: VCallAd Control_ID_AccesoFlex
  loc_BCEEC2: FStAdFunc var_280
  loc_BCEEC5: FLdPr var_280
  loc_BCEEC8: LateIdCallSt
  loc_BCEED0: FFree1Ad var_280
  loc_BCEED3: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_BCEEE0: FLdI2 var_86
  loc_BCEEE3: CI4UI1
  loc_BCEEE4: CVarI4
  loc_BCEEE8: PopAdLdVar
  loc_BCEEE9: LitVarI4
  loc_BCEEF1: PopAdLdVar
  loc_BCEEF2: LitVarStr var_14C, "No"
  loc_BCEEF7: FStVarCopyObj var_FC
  loc_BCEEFA: FLdRfVar var_FC
  loc_BCEEFD: LitVarStr var_10C, "Si"
  loc_BCEF02: FStVarCopyObj var_DC
  loc_BCEF05: FLdRfVar var_DC
  loc_BCEF08: ILdRf var_9C
  loc_BCEF0B: CR8Str
  loc_BCEF0D: LitI2_Byte 1
  loc_BCEF0F: CR8I2
  loc_BCEF10: EqR4
  loc_BCEF11: CVarBoolI2 var_EC
  loc_BCEF15: FLdRfVar var_11C
  loc_BCEF18: ImpAdCallFPR4  = IIf(, , )
  loc_BCEF1D: FLdRfVar var_11C
  loc_BCEF20: CStrVarTmp
  loc_BCEF21: CVarStr var_12C
  loc_BCEF24: PopAdLdVar
  loc_BCEF25: FLdPr Me
  loc_BCEF28: VCallAd Control_ID_AccesoFlex
  loc_BCEF2B: FStAdFunc var_280
  loc_BCEF2E: FLdPr var_280
  loc_BCEF31: LateIdCallSt
  loc_BCEF39: FFree1Ad var_280
  loc_BCEF3C: FFreeVar var_EC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_BCEF49: FLdI2 var_86
  loc_BCEF4C: CI4UI1
  loc_BCEF4D: CVarI4
  loc_BCEF51: PopAdLdVar
  loc_BCEF52: LitVarI4
  loc_BCEF5A: PopAdLdVar
  loc_BCEF5B: LitVarStr var_1CC, "Si"
  loc_BCEF60: PopAdLdVar
  loc_BCEF61: FLdPr Me
  loc_BCEF64: VCallAd Control_ID_AccesoFlex
  loc_BCEF67: FStAdFunc var_280
  loc_BCEF6A: FLdPr var_280
  loc_BCEF6D: LateIdCallSt
  loc_BCEF75: FFree1Ad var_280
  loc_BCEF78: FLdI2 var_86
  loc_BCEF7B: CI4UI1
  loc_BCEF7C: CVarI4
  loc_BCEF80: PopAdLdVar
  loc_BCEF81: LitVarI4
  loc_BCEF89: PopAdLdVar
  loc_BCEF8A: FLdRfVar var_A4
  loc_BCEF8D: CDargRef
  loc_BCEF91: FLdPr Me
  loc_BCEF94: VCallAd Control_ID_AccesoFlex
  loc_BCEF97: FStAdFunc var_280
  loc_BCEF9A: FLdPr var_280
  loc_BCEF9D: LateIdCallSt
  loc_BCEFA5: FFree1Ad var_280
  loc_BCEFA8: FLdRfVar var_88
  loc_BCEFAB: NextUI1
  loc_BCEFB1: Branch loc_BCF150
  loc_BCEFB4: FLdI2 var_86
  loc_BCEFB7: CI4UI1
  loc_BCEFB8: CVarI4
  loc_BCEFBC: PopAdLdVar
  loc_BCEFBD: LitVarI4
  loc_BCEFC5: PopAdLdVar
  loc_BCEFC6: FLdPr Me
  loc_BCEFC9: VCallAd Control_ID_AccesoFlex
  loc_BCEFCC: FStAdFunc var_280
  loc_BCEFCF: FLdPr var_280
  loc_BCEFD2: LateIdCallLdVar
  loc_BCEFDC: CStrVarTmp
  loc_BCEFDD: FStStrNoPop var_28C
  loc_BCEFE0: LitStr "No"
  loc_BCEFE3: NeStr
  loc_BCEFE5: FFree1Str var_28C
  loc_BCEFE8: FFree1Ad var_280
  loc_BCEFEB: FFree1Var var_DC = ""
  loc_BCEFEE: BranchF loc_BCF082
  loc_BCEFF1: FLdI2 var_86
  loc_BCEFF4: CI4UI1
  loc_BCEFF5: CVarI4
  loc_BCEFF9: PopAdLdVar
  loc_BCEFFA: FLdPr Me
  loc_BCEFFD: VCallAd Control_ID_AccesoFlex
  loc_BCF000: FStAdFunc var_280
  loc_BCF003: FLdPr var_280
  loc_BCF006: LateIdSt
  loc_BCF00B: FFree1Ad var_280
  loc_BCF00E: LitI2_Byte 0
  loc_BCF010: CUI1I2
  loc_BCF012: FLdRfVar var_88
  loc_BCF015: FLdPr Me
  loc_BCF018: VCallAd Control_ID_AccesoFlex
  loc_BCF01B: FStAdFunc var_280
  loc_BCF01E: FLdPr var_280
  loc_BCF021: LateIdLdVar var_DC DispID_5 0
  loc_BCF028: CI4Var
  loc_BCF02A: LitI4 1
  loc_BCF02F: SubI4
  loc_BCF030: CUI1I4
  loc_BCF032: FFree1Ad var_280
  loc_BCF035: FFree1Var var_DC = ""
  loc_BCF038: ForUI1 var_294
  loc_BCF03E: FLdUI1
  loc_BCF042: CI4UI1
  loc_BCF043: CVarI4
  loc_BCF047: PopAdLdVar
  loc_BCF048: FLdPr Me
  loc_BCF04B: VCallAd Control_ID_AccesoFlex
  loc_BCF04E: FStAdFunc var_280
  loc_BCF051: FLdPr var_280
  loc_BCF054: LateIdSt
  loc_BCF059: FFree1Ad var_280
  loc_BCF05C: LitVarI4
  loc_BCF064: PopAdLdVar
  loc_BCF065: FLdPr Me
  loc_BCF068: VCallAd Control_ID_AccesoFlex
  loc_BCF06B: FStAdFunc var_280
  loc_BCF06E: FLdPr var_280
  loc_BCF071: LateIdSt
  loc_BCF076: FFree1Ad var_280
  loc_BCF079: FLdRfVar var_88
  loc_BCF07C: NextUI1
  loc_BCF082: FLdI2 var_86
  loc_BCF085: CI4UI1
  loc_BCF086: CVarI4
  loc_BCF08A: PopAdLdVar
  loc_BCF08B: LitVarI4
  loc_BCF093: PopAdLdVar
  loc_BCF094: FLdPr Me
  loc_BCF097: VCallAd Control_ID_AccesoFlex
  loc_BCF09A: FStAdFunc var_280
  loc_BCF09D: FLdPr var_280
  loc_BCF0A0: LateIdCallLdVar
  loc_BCF0AA: CStrVarTmp
  loc_BCF0AB: FStStrNoPop var_28C
  loc_BCF0AE: LitStr "0"
  loc_BCF0B1: EqStr
  loc_BCF0B3: FFree1Str var_28C
  loc_BCF0B6: FFree1Ad var_280
  loc_BCF0B9: FFree1Var var_DC = ""
  loc_BCF0BC: BranchF loc_BCF150
  loc_BCF0BF: FLdI2 var_86
  loc_BCF0C2: CI4UI1
  loc_BCF0C3: CVarI4
  loc_BCF0C7: PopAdLdVar
  loc_BCF0C8: FLdPr Me
  loc_BCF0CB: VCallAd Control_ID_AccesoFlex
  loc_BCF0CE: FStAdFunc var_280
  loc_BCF0D1: FLdPr var_280
  loc_BCF0D4: LateIdSt
  loc_BCF0D9: FFree1Ad var_280
  loc_BCF0DC: LitI2_Byte 0
  loc_BCF0DE: CUI1I2
  loc_BCF0E0: FLdRfVar var_88
  loc_BCF0E3: FLdPr Me
  loc_BCF0E6: VCallAd Control_ID_AccesoFlex
  loc_BCF0E9: FStAdFunc var_280
  loc_BCF0EC: FLdPr var_280
  loc_BCF0EF: LateIdLdVar var_DC DispID_5 0
  loc_BCF0F6: CI4Var
  loc_BCF0F8: LitI4 1
  loc_BCF0FD: SubI4
  loc_BCF0FE: CUI1I4
  loc_BCF100: FFree1Ad var_280
  loc_BCF103: FFree1Var var_DC = ""
  loc_BCF106: ForUI1 var_298
  loc_BCF10C: FLdUI1
  loc_BCF110: CI4UI1
  loc_BCF111: CVarI4
  loc_BCF115: PopAdLdVar
  loc_BCF116: FLdPr Me
  loc_BCF119: VCallAd Control_ID_AccesoFlex
  loc_BCF11C: FStAdFunc var_280
  loc_BCF11F: FLdPr var_280
  loc_BCF122: LateIdSt
  loc_BCF127: FFree1Ad var_280
  loc_BCF12A: LitVarI4
  loc_BCF132: PopAdLdVar
  loc_BCF133: FLdPr Me
  loc_BCF136: VCallAd Control_ID_AccesoFlex
  loc_BCF139: FStAdFunc var_280
  loc_BCF13C: FLdPr var_280
  loc_BCF13F: LateIdSt
  loc_BCF144: FFree1Ad var_280
  loc_BCF147: FLdRfVar var_88
  loc_BCF14A: NextUI1
  loc_BCF150: FLdRfVar var_86
  loc_BCF153: NextI2 var_CC, loc_BCEAC4
  loc_BCF158: ExitProcHresult
  loc_BCF159: FLdPr arg_0
End Sub

Private Sub AccesoFlex_UnknownEvent_0 'A09174
  'Data Table: 416210
  loc_A09140: FLdPr Me
  loc_A09143: VCallAd Control_ID_AccesoFlex
  loc_A09146: FStAdFunc var_88
  loc_A09149: FLdPr var_88
  loc_A0914C: LateIdLdVar var_98 DispID_13 -32767
  loc_A09153: CBoolVar
  loc_A09155: FFree1Ad var_88
  loc_A09158: FFree1Var var_98 = ""
  loc_A0915B: BranchF loc_A09172
  loc_A0915E: FLdPr Me
  loc_A09161: VCallAd Control_ID_AccesoFlex
  loc_A09164: FStAdFunc var_88
  loc_A09167: FLdRfVar var_88
  loc_A0916A: ImpAdCallFPR4 Proc_58_0_9FD654()
  loc_A0916F: FFree1Ad var_88
  loc_A09172: ExitProcHresult
End Sub

Private Sub AccesoFlex_UnknownEvent_1 'A091E0
  'Data Table: 416210
  loc_A091AC: FLdPr Me
  loc_A091AF: VCallAd Control_ID_AccesoFlex
  loc_A091B2: FStAdFunc var_88
  loc_A091B5: FLdPr var_88
  loc_A091B8: LateIdLdVar var_98 DispID_13 -32767
  loc_A091BF: CBoolVar
  loc_A091C1: FFree1Ad var_88
  loc_A091C4: FFree1Var var_98 = ""
  loc_A091C7: BranchF loc_A091DE
  loc_A091CA: FLdPr Me
  loc_A091CD: VCallAd Control_ID_AccesoFlex
  loc_A091D0: FStAdFunc var_88
  loc_A091D3: FLdRfVar var_88
  loc_A091D6: ImpAdCallFPR4 Proc_58_1_9EAB78()
  loc_A091DB: FFree1Ad var_88
  loc_A091DE: ExitProcHresult
End Sub

Private Sub AccesoFlex_Click() 'C23924
  'Data Table: 416210
  loc_C22EE4: FLdPr Me
  loc_C22EE7: VCallAd Control_ID_AccesoFlex
  loc_C22EEA: FStAdFunc var_8C
  loc_C22EED: FLdPr var_8C
  loc_C22EF0: LateIdLdVar var_9C DispID_10 0
  loc_C22EF7: CI4Var
  loc_C22EF9: CVarI4
  loc_C22EFD: PopAdLdVar
  loc_C22EFE: LitVarI4
  loc_C22F06: PopAdLdVar
  loc_C22F07: FLdPr Me
  loc_C22F0A: VCallAd Control_ID_AccesoFlex
  loc_C22F0D: FStAdFunc var_E0
  loc_C22F10: FLdPr var_E0
  loc_C22F13: LateIdCallLdVar
  loc_C22F1D: CStrVarTmp
  loc_C22F1E: FStStrNoPop var_F4
  loc_C22F21: LitStr "0"
  loc_C22F24: NeStr
  loc_C22F26: FFree1Str var_F4
  loc_C22F29: FFreeAd var_8C = ""
  loc_C22F30: FFreeVar var_9C = ""
  loc_C22F37: BranchF loc_C23923
  loc_C22F3A: FLdPr Me
  loc_C22F3D: VCallAd Control_ID_AccesoFlex
  loc_C22F40: FStAdFunc var_8C
  loc_C22F43: FLdPr var_8C
  loc_C22F46: LateIdLdVar var_9C DispID_10 0
  loc_C22F4D: CI4Var
  loc_C22F4F: CVarI4
  loc_C22F53: PopAdLdVar
  loc_C22F54: LitVarI4
  loc_C22F5C: PopAdLdVar
  loc_C22F5D: FLdPr Me
  loc_C22F60: VCallAd Control_ID_AccesoFlex
  loc_C22F63: FStAdFunc var_E0
  loc_C22F66: FLdPr var_E0
  loc_C22F69: LateIdCallLdVar
  loc_C22F73: CStrVarTmp
  loc_C22F74: FStStrNoPop var_F4
  loc_C22F77: LitStr "Si"
  loc_C22F7A: EqStr
  loc_C22F7C: FFree1Str var_F4
  loc_C22F7F: FFreeAd var_8C = ""
  loc_C22F86: FFreeVar var_9C = ""
  loc_C22F8D: BranchF loc_C233B3
  loc_C22F90: FLdPr Me
  loc_C22F93: VCallAd Control_ID_AccesoFlex
  loc_C22F96: FStAdFunc var_8C
  loc_C22F99: FLdPr var_8C
  loc_C22F9C: LateIdLdVar var_9C DispID_11 0
  loc_C22FA3: CI4Var
  loc_C22FA5: LitI4 2
  loc_C22FAA: EqI4
  loc_C22FAB: FFree1Ad var_8C
  loc_C22FAE: FFree1Var var_9C = ""
  loc_C22FB1: BranchF loc_C230F1
  loc_C22FB4: FLdPr Me
  loc_C22FB7: VCallAd Control_ID_AccesoFlex
  loc_C22FBA: FStAdFunc var_8C
  loc_C22FBD: FLdPr var_8C
  loc_C22FC0: LateIdLdVar var_9C DispID_10 0
  loc_C22FC7: CI4Var
  loc_C22FC9: CVarI4
  loc_C22FCD: PopAdLdVar
  loc_C22FCE: LitVarI4
  loc_C22FD6: PopAdLdVar
  loc_C22FD7: FLdPr Me
  loc_C22FDA: VCallAd Control_ID_AccesoFlex
  loc_C22FDD: FStAdFunc var_E0
  loc_C22FE0: FLdPr var_E0
  loc_C22FE3: LateIdCallLdVar
  loc_C22FED: CStrVarTmp
  loc_C22FEE: FStStrNoPop var_F4
  loc_C22FF1: LitStr "Si"
  loc_C22FF4: EqStr
  loc_C22FF6: FFree1Str var_F4
  loc_C22FF9: FFreeAd var_8C = ""
  loc_C23000: FFreeVar var_9C = ""
  loc_C23007: BranchF loc_C23054
  loc_C2300A: FLdPr Me
  loc_C2300D: VCallAd Control_ID_AccesoFlex
  loc_C23010: FStAdFunc var_8C
  loc_C23013: FLdPr var_8C
  loc_C23016: LateIdLdVar var_9C DispID_10 0
  loc_C2301D: CI4Var
  loc_C2301F: CVarI4
  loc_C23023: PopAdLdVar
  loc_C23024: LitVarI4
  loc_C2302C: PopAdLdVar
  loc_C2302D: LitVarStr var_104, "No"
  loc_C23032: PopAdLdVar
  loc_C23033: FLdPr Me
  loc_C23036: VCallAd Control_ID_AccesoFlex
  loc_C23039: FStAdFunc var_E0
  loc_C2303C: FLdPr var_E0
  loc_C2303F: LateIdCallSt
  loc_C23047: FFreeAd var_8C = ""
  loc_C2304E: FFree1Var var_9C = ""
  loc_C23051: Branch loc_C230F1
  loc_C23054: FLdPr Me
  loc_C23057: VCallAd Control_ID_AccesoFlex
  loc_C2305A: FStAdFunc var_8C
  loc_C2305D: FLdPr var_8C
  loc_C23060: LateIdLdVar var_9C DispID_10 0
  loc_C23067: CI4Var
  loc_C23069: CVarI4
  loc_C2306D: PopAdLdVar
  loc_C2306E: LitVarI4
  loc_C23076: PopAdLdVar
  loc_C23077: FLdPr Me
  loc_C2307A: VCallAd Control_ID_AccesoFlex
  loc_C2307D: FStAdFunc var_E0
  loc_C23080: FLdPr var_E0
  loc_C23083: LateIdCallLdVar
  loc_C2308D: CStrVarTmp
  loc_C2308E: FStStrNoPop var_F4
  loc_C23091: LitStr "No"
  loc_C23094: EqStr
  loc_C23096: FFree1Str var_F4
  loc_C23099: FFreeAd var_8C = ""
  loc_C230A0: FFreeVar var_9C = ""
  loc_C230A7: BranchF loc_C230F1
  loc_C230AA: FLdPr Me
  loc_C230AD: VCallAd Control_ID_AccesoFlex
  loc_C230B0: FStAdFunc var_8C
  loc_C230B3: FLdPr var_8C
  loc_C230B6: LateIdLdVar var_9C DispID_10 0
  loc_C230BD: CI4Var
  loc_C230BF: CVarI4
  loc_C230C3: PopAdLdVar
  loc_C230C4: LitVarI4
  loc_C230CC: PopAdLdVar
  loc_C230CD: LitVarStr var_104, "Si"
  loc_C230D2: PopAdLdVar
  loc_C230D3: FLdPr Me
  loc_C230D6: VCallAd Control_ID_AccesoFlex
  loc_C230D9: FStAdFunc var_E0
  loc_C230DC: FLdPr var_E0
  loc_C230DF: LateIdCallSt
  loc_C230E7: FFreeAd var_8C = ""
  loc_C230EE: FFree1Var var_9C = ""
  loc_C230F1: FLdPr Me
  loc_C230F4: VCallAd Control_ID_AccesoFlex
  loc_C230F7: FStAdFunc var_8C
  loc_C230FA: FLdPr var_8C
  loc_C230FD: LateIdLdVar var_9C DispID_11 0
  loc_C23104: CI4Var
  loc_C23106: LitI4 3
  loc_C2310B: EqI4
  loc_C2310C: FFree1Ad var_8C
  loc_C2310F: FFree1Var var_9C = ""
  loc_C23112: BranchF loc_C23252
  loc_C23115: FLdPr Me
  loc_C23118: VCallAd Control_ID_AccesoFlex
  loc_C2311B: FStAdFunc var_8C
  loc_C2311E: FLdPr var_8C
  loc_C23121: LateIdLdVar var_9C DispID_10 0
  loc_C23128: CI4Var
  loc_C2312A: CVarI4
  loc_C2312E: PopAdLdVar
  loc_C2312F: LitVarI4
  loc_C23137: PopAdLdVar
  loc_C23138: FLdPr Me
  loc_C2313B: VCallAd Control_ID_AccesoFlex
  loc_C2313E: FStAdFunc var_E0
  loc_C23141: FLdPr var_E0
  loc_C23144: LateIdCallLdVar
  loc_C2314E: CStrVarTmp
  loc_C2314F: FStStrNoPop var_F4
  loc_C23152: LitStr "Si"
  loc_C23155: EqStr
  loc_C23157: FFree1Str var_F4
  loc_C2315A: FFreeAd var_8C = ""
  loc_C23161: FFreeVar var_9C = ""
  loc_C23168: BranchF loc_C231B5
  loc_C2316B: FLdPr Me
  loc_C2316E: VCallAd Control_ID_AccesoFlex
  loc_C23171: FStAdFunc var_8C
  loc_C23174: FLdPr var_8C
  loc_C23177: LateIdLdVar var_9C DispID_10 0
  loc_C2317E: CI4Var
  loc_C23180: CVarI4
  loc_C23184: PopAdLdVar
  loc_C23185: LitVarI4
  loc_C2318D: PopAdLdVar
  loc_C2318E: LitVarStr var_104, "No"
  loc_C23193: PopAdLdVar
  loc_C23194: FLdPr Me
  loc_C23197: VCallAd Control_ID_AccesoFlex
  loc_C2319A: FStAdFunc var_E0
  loc_C2319D: FLdPr var_E0
  loc_C231A0: LateIdCallSt
  loc_C231A8: FFreeAd var_8C = ""
  loc_C231AF: FFree1Var var_9C = ""
  loc_C231B2: Branch loc_C23252
  loc_C231B5: FLdPr Me
  loc_C231B8: VCallAd Control_ID_AccesoFlex
  loc_C231BB: FStAdFunc var_8C
  loc_C231BE: FLdPr var_8C
  loc_C231C1: LateIdLdVar var_9C DispID_10 0
  loc_C231C8: CI4Var
  loc_C231CA: CVarI4
  loc_C231CE: PopAdLdVar
  loc_C231CF: LitVarI4
  loc_C231D7: PopAdLdVar
  loc_C231D8: FLdPr Me
  loc_C231DB: VCallAd Control_ID_AccesoFlex
  loc_C231DE: FStAdFunc var_E0
  loc_C231E1: FLdPr var_E0
  loc_C231E4: LateIdCallLdVar
  loc_C231EE: CStrVarTmp
  loc_C231EF: FStStrNoPop var_F4
  loc_C231F2: LitStr "No"
  loc_C231F5: EqStr
  loc_C231F7: FFree1Str var_F4
  loc_C231FA: FFreeAd var_8C = ""
  loc_C23201: FFreeVar var_9C = ""
  loc_C23208: BranchF loc_C23252
  loc_C2320B: FLdPr Me
  loc_C2320E: VCallAd Control_ID_AccesoFlex
  loc_C23211: FStAdFunc var_8C
  loc_C23214: FLdPr var_8C
  loc_C23217: LateIdLdVar var_9C DispID_10 0
  loc_C2321E: CI4Var
  loc_C23220: CVarI4
  loc_C23224: PopAdLdVar
  loc_C23225: LitVarI4
  loc_C2322D: PopAdLdVar
  loc_C2322E: LitVarStr var_104, "Si"
  loc_C23233: PopAdLdVar
  loc_C23234: FLdPr Me
  loc_C23237: VCallAd Control_ID_AccesoFlex
  loc_C2323A: FStAdFunc var_E0
  loc_C2323D: FLdPr var_E0
  loc_C23240: LateIdCallSt
  loc_C23248: FFreeAd var_8C = ""
  loc_C2324F: FFree1Var var_9C = ""
  loc_C23252: FLdPr Me
  loc_C23255: VCallAd Control_ID_AccesoFlex
  loc_C23258: FStAdFunc var_8C
  loc_C2325B: FLdPr var_8C
  loc_C2325E: LateIdLdVar var_9C DispID_11 0
  loc_C23265: CI4Var
  loc_C23267: LitI4 4
  loc_C2326C: EqI4
  loc_C2326D: FFree1Ad var_8C
  loc_C23270: FFree1Var var_9C = ""
  loc_C23273: BranchF loc_C233B3
  loc_C23276: FLdPr Me
  loc_C23279: VCallAd Control_ID_AccesoFlex
  loc_C2327C: FStAdFunc var_8C
  loc_C2327F: FLdPr var_8C
  loc_C23282: LateIdLdVar var_9C DispID_10 0
  loc_C23289: CI4Var
  loc_C2328B: CVarI4
  loc_C2328F: PopAdLdVar
  loc_C23290: LitVarI4
  loc_C23298: PopAdLdVar
  loc_C23299: FLdPr Me
  loc_C2329C: VCallAd Control_ID_AccesoFlex
  loc_C2329F: FStAdFunc var_E0
  loc_C232A2: FLdPr var_E0
  loc_C232A5: LateIdCallLdVar
  loc_C232AF: CStrVarTmp
  loc_C232B0: FStStrNoPop var_F4
  loc_C232B3: LitStr "Si"
  loc_C232B6: EqStr
  loc_C232B8: FFree1Str var_F4
  loc_C232BB: FFreeAd var_8C = ""
  loc_C232C2: FFreeVar var_9C = ""
  loc_C232C9: BranchF loc_C23316
  loc_C232CC: FLdPr Me
  loc_C232CF: VCallAd Control_ID_AccesoFlex
  loc_C232D2: FStAdFunc var_8C
  loc_C232D5: FLdPr var_8C
  loc_C232D8: LateIdLdVar var_9C DispID_10 0
  loc_C232DF: CI4Var
  loc_C232E1: CVarI4
  loc_C232E5: PopAdLdVar
  loc_C232E6: LitVarI4
  loc_C232EE: PopAdLdVar
  loc_C232EF: LitVarStr var_104, "No"
  loc_C232F4: PopAdLdVar
  loc_C232F5: FLdPr Me
  loc_C232F8: VCallAd Control_ID_AccesoFlex
  loc_C232FB: FStAdFunc var_E0
  loc_C232FE: FLdPr var_E0
  loc_C23301: LateIdCallSt
  loc_C23309: FFreeAd var_8C = ""
  loc_C23310: FFree1Var var_9C = ""
  loc_C23313: Branch loc_C233B3
  loc_C23316: FLdPr Me
  loc_C23319: VCallAd Control_ID_AccesoFlex
  loc_C2331C: FStAdFunc var_8C
  loc_C2331F: FLdPr var_8C
  loc_C23322: LateIdLdVar var_9C DispID_10 0
  loc_C23329: CI4Var
  loc_C2332B: CVarI4
  loc_C2332F: PopAdLdVar
  loc_C23330: LitVarI4
  loc_C23338: PopAdLdVar
  loc_C23339: FLdPr Me
  loc_C2333C: VCallAd Control_ID_AccesoFlex
  loc_C2333F: FStAdFunc var_E0
  loc_C23342: FLdPr var_E0
  loc_C23345: LateIdCallLdVar
  loc_C2334F: CStrVarTmp
  loc_C23350: FStStrNoPop var_F4
  loc_C23353: LitStr "No"
  loc_C23356: EqStr
  loc_C23358: FFree1Str var_F4
  loc_C2335B: FFreeAd var_8C = ""
  loc_C23362: FFreeVar var_9C = ""
  loc_C23369: BranchF loc_C233B3
  loc_C2336C: FLdPr Me
  loc_C2336F: VCallAd Control_ID_AccesoFlex
  loc_C23372: FStAdFunc var_8C
  loc_C23375: FLdPr var_8C
  loc_C23378: LateIdLdVar var_9C DispID_10 0
  loc_C2337F: CI4Var
  loc_C23381: CVarI4
  loc_C23385: PopAdLdVar
  loc_C23386: LitVarI4
  loc_C2338E: PopAdLdVar
  loc_C2338F: LitVarStr var_104, "Si"
  loc_C23394: PopAdLdVar
  loc_C23395: FLdPr Me
  loc_C23398: VCallAd Control_ID_AccesoFlex
  loc_C2339B: FStAdFunc var_E0
  loc_C2339E: FLdPr var_E0
  loc_C233A1: LateIdCallSt
  loc_C233A9: FFreeAd var_8C = ""
  loc_C233B0: FFree1Var var_9C = ""
  loc_C233B3: FLdPr Me
  loc_C233B6: VCallAd Control_ID_AccesoFlex
  loc_C233B9: FStAdFunc var_8C
  loc_C233BC: FLdPr var_8C
  loc_C233BF: LateIdLdVar var_9C DispID_11 0
  loc_C233C6: CI4Var
  loc_C233C8: LitI4 0
  loc_C233CD: EqI4
  loc_C233CE: FLdPr Me
  loc_C233D1: VCallAd Control_ID_AccesoFlex
  loc_C233D4: FStAdFunc var_E0
  loc_C233D7: FLdPr var_E0
  loc_C233DA: LateIdLdVar var_F0 DispID_11 0
  loc_C233E1: CI4Var
  loc_C233E3: LitI4 1
  loc_C233E8: EqI4
  loc_C233E9: OrI4
  loc_C233EA: FFreeAd var_8C = ""
  loc_C233F1: FFreeVar var_9C = ""
  loc_C233F8: BranchF loc_C23541
  loc_C233FB: LitI2_Byte 0
  loc_C233FD: CUI1I2
  loc_C233FF: FLdRfVar var_86
  loc_C23402: FLdPr Me
  loc_C23405: VCallAd Control_ID_AccesoFlex
  loc_C23408: FStAdFunc var_8C
  loc_C2340B: FLdPr var_8C
  loc_C2340E: LateIdLdVar var_9C DispID_5 0
  loc_C23415: CI4Var
  loc_C23417: LitI4 1
  loc_C2341C: SubI4
  loc_C2341D: CUI1I4
  loc_C2341F: FFree1Ad var_8C
  loc_C23422: FFree1Var var_9C = ""
  loc_C23425: ForUI1 var_118
  loc_C2342B: FLdUI1
  loc_C2342F: CI4UI1
  loc_C23430: CVarI4
  loc_C23434: PopAdLdVar
  loc_C23435: FLdPr Me
  loc_C23438: VCallAd Control_ID_AccesoFlex
  loc_C2343B: FStAdFunc var_8C
  loc_C2343E: FLdPr var_8C
  loc_C23441: LateIdSt
  loc_C23446: FFree1Ad var_8C
  loc_C23449: FLdPr Me
  loc_C2344C: VCallAd Control_ID_AccesoFlex
  loc_C2344F: FStAdFunc var_8C
  loc_C23452: FLdPr var_8C
  loc_C23455: LateIdLdVar var_9C DispID_38 0
  loc_C2345C: CI4Var
  loc_C2345E: LitI4 &HFFFF80
  loc_C23463: EqI4
  loc_C23464: FFree1Ad var_8C
  loc_C23467: FFree1Var var_9C = ""
  loc_C2346A: BranchF loc_C234D4
  loc_C2346D: LitVarI4
  loc_C23475: PopAdLdVar
  loc_C23476: FLdPr Me
  loc_C23479: VCallAd Control_ID_AccesoFlex
  loc_C2347C: FStAdFunc var_8C
  loc_C2347F: FLdPr var_8C
  loc_C23482: LateIdSt
  loc_C23487: FFree1Ad var_8C
  loc_C2348A: FLdPr Me
  loc_C2348D: VCallAd Control_ID_AccesoFlex
  loc_C23490: FStAdFunc var_8C
  loc_C23493: FLdPr var_8C
  loc_C23496: LateIdLdVar var_9C DispID_10 0
  loc_C2349D: CI4Var
  loc_C2349F: CVarI4
  loc_C234A3: PopAdLdVar
  loc_C234A4: LitVarI4
  loc_C234AC: PopAdLdVar
  loc_C234AD: LitVarStr var_104, "No"
  loc_C234B2: PopAdLdVar
  loc_C234B3: FLdPr Me
  loc_C234B6: VCallAd Control_ID_AccesoFlex
  loc_C234B9: FStAdFunc var_E0
  loc_C234BC: FLdPr var_E0
  loc_C234BF: LateIdCallSt
  loc_C234C7: FFreeAd var_8C = ""
  loc_C234CE: FFree1Var var_9C = ""
  loc_C234D1: Branch loc_C23538
  loc_C234D4: LitVarI4
  loc_C234DC: PopAdLdVar
  loc_C234DD: FLdPr Me
  loc_C234E0: VCallAd Control_ID_AccesoFlex
  loc_C234E3: FStAdFunc var_8C
  loc_C234E6: FLdPr var_8C
  loc_C234E9: LateIdSt
  loc_C234EE: FFree1Ad var_8C
  loc_C234F1: FLdPr Me
  loc_C234F4: VCallAd Control_ID_AccesoFlex
  loc_C234F7: FStAdFunc var_8C
  loc_C234FA: FLdPr var_8C
  loc_C234FD: LateIdLdVar var_9C DispID_10 0
  loc_C23504: CI4Var
  loc_C23506: CVarI4
  loc_C2350A: PopAdLdVar
  loc_C2350B: LitVarI4
  loc_C23513: PopAdLdVar
  loc_C23514: LitVarStr var_104, "Si"
  loc_C23519: PopAdLdVar
  loc_C2351A: FLdPr Me
  loc_C2351D: VCallAd Control_ID_AccesoFlex
  loc_C23520: FStAdFunc var_E0
  loc_C23523: FLdPr var_E0
  loc_C23526: LateIdCallSt
  loc_C2352E: FFreeAd var_8C = ""
  loc_C23535: FFree1Var var_9C = ""
  loc_C23538: FLdRfVar var_86
  loc_C2353B: NextUI1
  loc_C23541: FLdPr Me
  loc_C23544: VCallAd Control_ID_AccesoFlex
  loc_C23547: FStAdFunc var_8C
  loc_C2354A: FLdPr var_8C
  loc_C2354D: LateIdLdVar var_9C DispID_10 0
  loc_C23554: CI4Var
  loc_C23556: CVarI4
  loc_C2355A: PopAdLdVar
  loc_C2355B: LitVarI4
  loc_C23563: PopAdLdVar
  loc_C23564: FLdPr Me
  loc_C23567: VCallAd Control_ID_AccesoFlex
  loc_C2356A: FStAdFunc var_E0
  loc_C2356D: FLdPr var_E0
  loc_C23570: LateIdCallLdVar
  loc_C2357A: CStrVarTmp
  loc_C2357B: FStStrNoPop var_F4
  loc_C2357E: LitStr "No"
  loc_C23581: EqStr
  loc_C23583: FFree1Str var_F4
  loc_C23586: FFreeAd var_8C = ""
  loc_C2358D: FFreeVar var_9C = ""
  loc_C23594: BranchF loc_C23658
  loc_C23597: LitVarStr var_BC, "DELETE FROM infogov.acceso WHERE CodiUsua = '"
  loc_C2359C: FLdRfVar var_9C
  loc_C2359F: FLdRfVar var_11C
  loc_C235A2: LitVarStr var_AC, "CodiUsua"
  loc_C235A7: PopAdLdVar
  loc_C235A8: FLdRfVar var_E0
  loc_C235AB: FLdRfVar var_8C
  loc_C235AE: FLdPr Me
  loc_C235B1: MemLdRfVar from_stack_1.global_52
  loc_C235B4: NewIfNullPr clsusuario
  loc_C235B7: from_stack_1v = clsusuario.RsFrmGet()
  loc_C235BC: FLdPr var_8C
  loc_C235BF:  = Me.Fields
  loc_C235C4: FLdPr var_E0
  loc_C235C7: from_stack_2 = Me.Item(from_stack_1)
  loc_C235CC: FLdPr var_11C
  loc_C235CF:  = Me.Value
  loc_C235D4: FLdRfVar var_9C
  loc_C235D7: ConcatVar var_F0
  loc_C235DB: LitVarStr var_CC, "' AND CodiMenu = "
  loc_C235E0: ConcatVar var_12C
  loc_C235E4: FLdPr Me
  loc_C235E7: VCallAd Control_ID_AccesoFlex
  loc_C235EA: FStAdFunc var_130
  loc_C235ED: FLdPr var_130
  loc_C235F0: LateIdLdVar var_140 DispID_10 0
  loc_C235F7: CI4Var
  loc_C235F9: CVarI4
  loc_C235FD: PopAdLdVar
  loc_C235FE: LitVarI4
  loc_C23606: PopAdLdVar
  loc_C23607: FLdPr Me
  loc_C2360A: VCallAd Control_ID_AccesoFlex
  loc_C2360D: FStAdFunc var_154
  loc_C23610: FLdPr var_154
  loc_C23613: LateIdCallLdVar
  loc_C2361D: CStrVarTmp
  loc_C2361E: CVarStr var_174
  loc_C23621: ConcatVar var_184
  loc_C23625: CStrVarVal var_F4
  loc_C23629: FLdPr Me
  loc_C2362C: MemLdRfVar from_stack_1.global_56
  loc_C2362F: NewIfNullPr clsacceso
  loc_C23632: Call clsacceso.EjecutarRsCls(from_stack_1v)
  loc_C23637: FFree1Str var_F4
  loc_C2363A: FFreeAd var_8C = "": var_E0 = "": var_11C = "": var_130 = ""
  loc_C23647: FFreeVar var_9C = "": var_F0 = "": var_140 = "": var_164 = "": var_12C = "": var_174 = ""
  loc_C23658: FLdPr Me
  loc_C2365B: VCallAd Control_ID_AccesoFlex
  loc_C2365E: FStAdFunc var_8C
  loc_C23661: FLdPr var_8C
  loc_C23664: LateIdLdVar var_9C DispID_10 0
  loc_C2366B: CI4Var
  loc_C2366D: CVarI4
  loc_C23671: PopAdLdVar
  loc_C23672: LitVarI4
  loc_C2367A: PopAdLdVar
  loc_C2367B: FLdPr Me
  loc_C2367E: VCallAd Control_ID_AccesoFlex
  loc_C23681: FStAdFunc var_E0
  loc_C23684: FLdPr var_E0
  loc_C23687: LateIdCallLdVar
  loc_C23691: CStrVarTmp
  loc_C23692: FStStrNoPop var_F4
  loc_C23695: LitStr "Si"
  loc_C23698: EqStr
  loc_C2369A: FFree1Str var_F4
  loc_C2369D: FFreeAd var_8C = ""
  loc_C236A4: FFreeVar var_9C = ""
  loc_C236AB: BranchF loc_C23923
  loc_C236AE: FLdPr Me
  loc_C236B1: VCallAd Control_ID_AccesoFlex
  loc_C236B4: FStAdFunc var_1A8
  loc_C236B7: FLdPr var_1A8
  loc_C236BA: LateIdLdVar var_1B8 DispID_10 0
  loc_C236C1: CI4Var
  loc_C236C3: CVarI4
  loc_C236C7: PopAdLdVar
  loc_C236C8: LitVarI4
  loc_C236D0: PopAdLdVar
  loc_C236D1: FLdPr Me
  loc_C236D4: VCallAd Control_ID_AccesoFlex
  loc_C236D7: FStAdFunc var_1FC
  loc_C236DA: FLdPr var_1FC
  loc_C236DD: LateIdCallLdVar
  loc_C236E7: PopAd
  loc_C236E9: FLdPr Me
  loc_C236EC: VCallAd Control_ID_AccesoFlex
  loc_C236EF: FStAdFunc var_2A0
  loc_C236F2: FLdPr var_2A0
  loc_C236F5: LateIdLdVar var_2B0 DispID_10 0
  loc_C236FC: CI4Var
  loc_C236FE: CVarI4
  loc_C23702: PopAdLdVar
  loc_C23703: LitVarI4
  loc_C2370B: PopAdLdVar
  loc_C2370C: FLdPr Me
  loc_C2370F: VCallAd Control_ID_AccesoFlex
  loc_C23712: FStAdFunc var_2F4
  loc_C23715: FLdPr var_2F4
  loc_C23718: LateIdCallLdVar
  loc_C23722: PopAd
  loc_C23724: FLdPr Me
  loc_C23727: VCallAd Control_ID_AccesoFlex
  loc_C2372A: FStAdFunc var_39C
  loc_C2372D: FLdPr var_39C
  loc_C23730: LateIdLdVar var_3AC DispID_10 0
  loc_C23737: CI4Var
  loc_C23739: CVarI4
  loc_C2373D: PopAdLdVar
  loc_C2373E: LitVarI4
  loc_C23746: PopAdLdVar
  loc_C23747: FLdPr Me
  loc_C2374A: VCallAd Control_ID_AccesoFlex
  loc_C2374D: FStAdFunc var_3F0
  loc_C23750: FLdPr var_3F0
  loc_C23753: LateIdCallLdVar
  loc_C2375D: PopAd
  loc_C2375F: LitStr "REPLACE INTO infogov.acceso (CodiUsua,CodiMenu,AltaAcce,ModiAcce,BajaAcce,AudiAcce,ImprAcce,AltaUsua) "
  loc_C23762: LitStr "  VALUES ('"
  loc_C23765: ConcatStr
  loc_C23766: CVarStr var_F0
  loc_C23769: FLdRfVar var_9C
  loc_C2376C: FLdRfVar var_11C
  loc_C2376F: LitVarStr var_AC, "CodiUsua"
  loc_C23774: PopAdLdVar
  loc_C23775: FLdRfVar var_E0
  loc_C23778: FLdRfVar var_8C
  loc_C2377B: FLdPr Me
  loc_C2377E: MemLdRfVar from_stack_1.global_52
  loc_C23781: NewIfNullPr clsusuario
  loc_C23784: from_stack_1v = clsusuario.RsFrmGet()
  loc_C23789: FLdPr var_8C
  loc_C2378C:  = Me.Fields
  loc_C23791: FLdPr var_E0
  loc_C23794: from_stack_2 = Me.Item(from_stack_1)
  loc_C23799: FLdPr var_11C
  loc_C2379C:  = Me.Value
  loc_C237A1: FLdRfVar var_9C
  loc_C237A4: ConcatVar var_12C
  loc_C237A8: LitVarStr var_BC, "',"
  loc_C237AD: ConcatVar var_140
  loc_C237B1: FLdPr Me
  loc_C237B4: VCallAd Control_ID_AccesoFlex
  loc_C237B7: FStAdFunc var_130
  loc_C237BA: FLdPr var_130
  loc_C237BD: LateIdLdVar var_164 DispID_10 0
  loc_C237C4: CI4Var
  loc_C237C6: CVarI4
  loc_C237CA: PopAdLdVar
  loc_C237CB: LitVarI4
  loc_C237D3: PopAdLdVar
  loc_C237D4: FLdPr Me
  loc_C237D7: VCallAd Control_ID_AccesoFlex
  loc_C237DA: FStAdFunc var_154
  loc_C237DD: FLdPr var_154
  loc_C237E0: LateIdCallLdVar
  loc_C237EA: CStrVarTmp
  loc_C237EB: CVarStr var_184
  loc_C237EE: ConcatVar var_194
  loc_C237F2: LitVarStr var_150, ","
  loc_C237F7: ConcatVar var_1A4
  loc_C237FB: LitVarI2 var_25C, 1
  loc_C23800: LitVarI2 var_23C, 0
  loc_C23805: FLdRfVar var_20C
  loc_C23808: CStrVarTmp
  loc_C23809: FStStrNoPop var_F4
  loc_C2380C: LitStr "No"
  loc_C2380F: EqStr
  loc_C23811: CVarBoolI2 var_21C
  loc_C23815: FLdRfVar var_26C
  loc_C23818: ImpAdCallFPR4  = IIf(, , )
  loc_C2381D: FLdRfVar var_26C
  loc_C23820: ConcatVar var_27C
  loc_C23824: LitVarStr var_28C, ","
  loc_C23829: ConcatVar var_29C
  loc_C2382D: LitVarI2 var_358, 1
  loc_C23832: LitVarI2 var_338, 0
  loc_C23837: FLdRfVar var_304
  loc_C2383A: CStrVarTmp
  loc_C2383B: FStStrNoPop var_308
  loc_C2383E: LitStr "No"
  loc_C23841: EqStr
  loc_C23843: CVarBoolI2 var_318
  loc_C23847: FLdRfVar var_368
  loc_C2384A: ImpAdCallFPR4  = IIf(, , )
  loc_C2384F: FLdRfVar var_368
  loc_C23852: ConcatVar var_378
  loc_C23856: LitVarStr var_388, ","
  loc_C2385B: ConcatVar var_398
  loc_C2385F: LitVarI2 var_454, 1
  loc_C23864: LitVarI2 var_434, 0
  loc_C23869: FLdRfVar var_400
  loc_C2386C: CStrVarTmp
  loc_C2386D: FStStrNoPop var_404
  loc_C23870: LitStr "No"
  loc_C23873: EqStr
  loc_C23875: CVarBoolI2 var_414
  loc_C23879: FLdRfVar var_464
  loc_C2387C: ImpAdCallFPR4  = IIf(, , )
  loc_C23881: FLdRfVar var_464
  loc_C23884: ConcatVar var_474
  loc_C23888: LitVarStr var_484, ",0,0,'"
  loc_C2388D: ConcatVar var_494
  loc_C23891: ImpAdLdI4 MemVar_D9302C
  loc_C23894: CVarStr var_4A4
  loc_C23897: ConcatVar var_4B4
  loc_C2389B: LitVarStr var_4C4, "')"
  loc_C238A0: ConcatVar var_4D4
  loc_C238A4: CStrVarVal var_4D8
  loc_C238A8: FLdPr Me
  loc_C238AB: MemLdRfVar from_stack_1.global_56
  loc_C238AE: NewIfNullPr clsacceso
  loc_C238B1: Call clsacceso.EjecutarRsCls(from_stack_1v)
  loc_C238B6: FFreeStr var_F4 = "": var_308 = "": var_404 = ""
  loc_C238C1: FFreeAd var_8C = "": var_E0 = "": var_11C = "": var_130 = "": var_154 = "": var_1A8 = "": var_1FC = "": var_2A0 = "": var_2F4 = "": var_39C = ""
  loc_C238DA: FFreeVar var_464 = "": var_474 = "": var_494 = "": var_4B4 = "": var_4D4 = "": var_F0 = "": var_9C = "": var_12C = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1B8 = "": var_20C = "": var_21C = "": var_23C = "": var_25C = "": var_1A4 = "": var_26C = "": var_27C = "": var_2B0 = "": var_304 = "": var_318 = "": var_338 = "": var_358 = "": var_29C = "": var_368 = "": var_378 = "": var_3AC = "": var_400 = "": var_414 = "": var_434 = "": var_454 = ""
  loc_C23923: ExitProcHresult
End Sub

Private Sub AccesoFlex_KeyPress(KeyAscii As Integer) '9B5B78
  'Data Table: 416210
  loc_9B5B68: ILdI2 KeyAscii
  loc_9B5B6B: LitI2_Byte &H20
  loc_9B5B6D: EqI2
  loc_9B5B6E: BranchF loc_9B5B76
  loc_9B5B71: Call AccesoFlex_Click()
  loc_9B5B76: ExitProcHresult
End Sub

Private Sub Form_Load() 'B1B7EC
  'Data Table: 416210
  loc_B1B570: LitI2_Byte 0
  loc_B1B572: CR8I2
  loc_B1B573: PopFPR4
  loc_B1B574: FLdPr Me
  loc_B1B577: Me.Left = from_stack_1s
  loc_B1B57C: LitI2_Byte 0
  loc_B1B57E: CR8I2
  loc_B1B57F: PopFPR4
  loc_B1B580: FLdPr Me
  loc_B1B583: Me.Top = from_stack_1s
  loc_B1B588: LitStr "SELECT usuario.CodiUsua, usuario.CucuPers, DetaPers, FeveUsua, IFNULL(usuario.BajaFeho,'No') AS BajaFeho, InhaUsua"
  loc_B1B58B: LitStr " FROM infogov.usuario"
  loc_B1B58E: ConcatStr
  loc_B1B58F: FStStrNoPop var_88
  loc_B1B592: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers"
  loc_B1B595: ConcatStr
  loc_B1B596: FStStrNoPop var_8C
  loc_B1B599: LitStr " ORDER BY usuario.CodiUsua"
  loc_B1B59C: ConcatStr
  loc_B1B59D: FStStrNoPop var_90
  loc_B1B5A0: FLdPr Me
  loc_B1B5A3: MemLdRfVar from_stack_1.global_52
  loc_B1B5A6: NewIfNullPr clsusuario
  loc_B1B5A9: Call clsusuario.RedefineRS(from_stack_1v)
  loc_B1B5AE: FFreeStr var_88 = "": var_8C = ""
  loc_B1B5B7: FLdPr Me
  loc_B1B5BA: VCallAd Control_ID_AccesoFlex
  loc_B1B5BD: FStAdFunc var_94
  loc_B1B5C0: LitVarI4
  loc_B1B5C8: PopAdLdVar
  loc_B1B5C9: LitVarI4
  loc_B1B5D1: PopAdLdVar
  loc_B1B5D2: FLdPr var_94
  loc_B1B5D5: LateIdCallSt
  loc_B1B5DD: LitVarI4
  loc_B1B5E5: PopAdLdVar
  loc_B1B5E6: LitVarI4
  loc_B1B5EE: PopAdLdVar
  loc_B1B5EF: FLdPr var_94
  loc_B1B5F2: LateIdCallSt
  loc_B1B5FA: LitVarI4
  loc_B1B602: PopAdLdVar
  loc_B1B603: LitVarI4
  loc_B1B60B: PopAdLdVar
  loc_B1B60C: FLdPr var_94
  loc_B1B60F: LateIdCallSt
  loc_B1B617: LitVarI4
  loc_B1B61F: PopAdLdVar
  loc_B1B620: LitVarI4
  loc_B1B628: PopAdLdVar
  loc_B1B629: FLdPr var_94
  loc_B1B62C: LateIdCallSt
  loc_B1B634: LitVarI4
  loc_B1B63C: PopAdLdVar
  loc_B1B63D: LitVarI4
  loc_B1B645: PopAdLdVar
  loc_B1B646: FLdPr var_94
  loc_B1B649: LateIdCallSt
  loc_B1B651: LitVarI4
  loc_B1B659: PopAdLdVar
  loc_B1B65A: LitVarI4
  loc_B1B662: PopAdLdVar
  loc_B1B663: FLdPr var_94
  loc_B1B666: LateIdCallSt
  loc_B1B66E: LitVarI4
  loc_B1B676: PopAdLdVar
  loc_B1B677: LitVarI4
  loc_B1B67F: PopAdLdVar
  loc_B1B680: FLdPr var_94
  loc_B1B683: LateIdCallSt
  loc_B1B68B: LitVarI4
  loc_B1B693: PopAdLdVar
  loc_B1B694: LitVarI4
  loc_B1B69C: PopAdLdVar
  loc_B1B69D: LitVarStr var_E4, "Ubicación"
  loc_B1B6A2: PopAdLdVar
  loc_B1B6A3: FLdPr var_94
  loc_B1B6A6: LateIdCallSt
  loc_B1B6AE: LitVarI4
  loc_B1B6B6: PopAdLdVar
  loc_B1B6B7: LitVarI4
  loc_B1B6BF: PopAdLdVar
  loc_B1B6C0: LitVarStr var_E4, "Procedimiento"
  loc_B1B6C5: PopAdLdVar
  loc_B1B6C6: FLdPr var_94
  loc_B1B6C9: LateIdCallSt
  loc_B1B6D1: LitVarI4
  loc_B1B6D9: PopAdLdVar
  loc_B1B6DA: LitVarI4
  loc_B1B6E2: PopAdLdVar
  loc_B1B6E3: LitVarStr var_E4, "Alta"
  loc_B1B6E8: PopAdLdVar
  loc_B1B6E9: FLdPr var_94
  loc_B1B6EC: LateIdCallSt
  loc_B1B6F4: LitVarI4
  loc_B1B6FC: PopAdLdVar
  loc_B1B6FD: LitVarI4
  loc_B1B705: PopAdLdVar
  loc_B1B706: LitVarStr var_E4, "Modi"
  loc_B1B70B: PopAdLdVar
  loc_B1B70C: FLdPr var_94
  loc_B1B70F: LateIdCallSt
  loc_B1B717: LitVarI4
  loc_B1B71F: PopAdLdVar
  loc_B1B720: LitVarI4
  loc_B1B728: PopAdLdVar
  loc_B1B729: LitVarStr var_E4, "Baja"
  loc_B1B72E: PopAdLdVar
  loc_B1B72F: FLdPr var_94
  loc_B1B732: LateIdCallSt
  loc_B1B73A: LitVarI4
  loc_B1B742: PopAdLdVar
  loc_B1B743: LitVarI4
  loc_B1B74B: PopAdLdVar
  loc_B1B74C: LitVarStr var_E4, vbNullString
  loc_B1B751: PopAdLdVar
  loc_B1B752: FLdPr var_94
  loc_B1B755: LateIdCallSt
  loc_B1B75D: LitVarI4
  loc_B1B765: PopAdLdVar
  loc_B1B766: LitVarI4
  loc_B1B76E: PopAdLdVar
  loc_B1B76F: LitVarStr var_E4, vbNullString
  loc_B1B774: PopAdLdVar
  loc_B1B775: FLdPr var_94
  loc_B1B778: LateIdCallSt
  loc_B1B780: LitNothing
  loc_B1B782: FStAd var_94 
  loc_B1B786: LitI4 0
  loc_B1B78B: LitI4 1
  loc_B1B790: FLdRfVar var_F8
  loc_B1B793: Redim
  loc_B1B79D: FLdPr Me
  loc_B1B7A0: MemLdRfVar from_stack_1.global_52
  loc_B1B7A3: NewIfNullAd
  loc_B1B7A6: FStAd var_FC 
  loc_B1B7AA: FLdRfVar var_FC
  loc_B1B7AD: CVarRef
  loc_B1B7B2: ParmAry1St
  loc_B1B7B8: FLdPr Me
  loc_B1B7BB: VCallAd Control_ID_dgdUsuarios
  loc_B1B7BE: CVarAd
  loc_B1B7C2: ParmAry1St
  loc_B1B7C8: FLdRfVar var_F8
  loc_B1B7CB: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B1B7D0: ILdRf var_FC
  loc_B1B7D3: CastAd
  loc_B1B7D6: FLdPr Me
  loc_B1B7D9: MemStAdFunc
  loc_B1B7DD: FLdRfVar var_F8
  loc_B1B7E0: Erase
  loc_B1B7E1: FFree1Ad var_FC
  loc_B1B7E4: Call Proc_21_10_A933B8()
  loc_B1B7E9: ExitProcHresult
End Sub

Private Sub ImprimirCmd_Click() 'A00754
  'Data Table: 416210
  loc_A00724: ImpAdLdRf MemVar_D9400C
  loc_A00727: NewIfNullAd
  loc_A0072A: CastAd
  loc_A0072D: FStAdFuncNoPop
  loc_A00730: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_A00735: FFree1Ad var_88
  loc_A00738: LitVar_Missing var_A8
  loc_A0073B: PopAdLdVar
  loc_A0073C: LitVarI4
  loc_A00744: PopAdLdVar
  loc_A00745: ImpAdLdRf MemVar_D9400C
  loc_A00748: NewIfNullPr rptListadodeAccesos
  loc_A0074B: rptListadodeAccesos.Show from_stack_1, from_stack_2
  loc_A00750: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9D4DFC
  'Data Table: 416210
  loc_9D4DE4: ILdRf Me
  loc_9D4DE7: FStAdNoPop
  loc_9D4DEB: ImpAdLdRf MemVar_D9C5D8
  loc_9D4DEE: NewIfNullPr Global
  loc_9D4DF1: Global.Unload from_stack_1
  loc_9D4DF6: FFree1Ad var_88
  loc_9D4DF9: ExitProcHresult
End Sub

Private Function Proc_21_10_A933B8() 'A933B8
  'Data Table: 416210
  loc_A93318: LitI2_Byte 0
  loc_A9331A: CUI1I2
  loc_A9331C: FLdPr Me
  loc_A9331F: MemStUI1
  loc_A93323: LitI2_Byte 0
  loc_A93325: ILdRf Me
  loc_A93328: CastAd
  loc_A9332B: FStAdFunc var_88
  loc_A9332E: FLdRfVar var_88
  loc_A93331: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A93336: FFree1Ad var_88
  loc_A93339: LitI2_Byte 0
  loc_A9333B: LitVarI2 var_A8, 0
  loc_A93340: Call dgdUsuarios_RowColChange(from_stack_1v, from_stack_2v)
  loc_A93345: FFree1Var var_A8 = ""
  loc_A93348: LitI4 0
  loc_A9334D: LitI4 0
  loc_A93352: FLdRfVar var_AC
  loc_A93355: Redim
  loc_A9335F: FLdPr Me
  loc_A93362: VCallAd Control_ID_dgdUsuarios
  loc_A93365: CVarAd
  loc_A93369: ParmAry1St
  loc_A9336F: FLdRfVar var_AC
  loc_A93372: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A93377: FLdRfVar var_AC
  loc_A9337A: Erase
  loc_A9337B: FLdPr Me
  loc_A9337E: MemLdRfVar from_stack_1.global_52
  loc_A93381: NewIfNullAd
  loc_A93384: FStAd var_B0 
  loc_A93388: FLdRfVar var_B0
  loc_A9338B: CVarRef
  loc_A93390: ILdRf Me
  loc_A93393: CastAd
  loc_A93396: FStAdFunc var_88
  loc_A93399: FLdRfVar var_88
  loc_A9339C: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_A933A1: ILdRf var_B0
  loc_A933A4: CastAd
  loc_A933A7: FLdPr Me
  loc_A933AA: MemStAdFunc
  loc_A933AE: FFreeAd var_88 = ""
  loc_A933B5: ExitProcHresult
End Function

Private Function Proc_21_11_ACBF40() 'ACBF40
  'Data Table: 416210
  loc_ACBE14: FLdPr Me
  loc_ACBE17: VCallAd Control_ID_AccesoFlex
  loc_ACBE1A: FStAdFunc var_88
  loc_ACBE1D: FLdPr var_88
  loc_ACBE20: LateIdCall
  loc_ACBE28: LitVarI4
  loc_ACBE30: PopAdLdVar
  loc_ACBE31: FLdPr var_88
  loc_ACBE34: LateIdSt
  loc_ACBE39: LitVarI4
  loc_ACBE41: PopAdLdVar
  loc_ACBE42: LitVarI4
  loc_ACBE4A: PopAdLdVar
  loc_ACBE4B: LitVarStr var_D8, "Ubicación"
  loc_ACBE50: PopAdLdVar
  loc_ACBE51: FLdPr var_88
  loc_ACBE54: LateIdCallSt
  loc_ACBE5C: LitVarI4
  loc_ACBE64: PopAdLdVar
  loc_ACBE65: LitVarI4
  loc_ACBE6D: PopAdLdVar
  loc_ACBE6E: LitVarStr var_D8, "Procedimiento"
  loc_ACBE73: PopAdLdVar
  loc_ACBE74: FLdPr var_88
  loc_ACBE77: LateIdCallSt
  loc_ACBE7F: LitVarI4
  loc_ACBE87: PopAdLdVar
  loc_ACBE88: LitVarI4
  loc_ACBE90: PopAdLdVar
  loc_ACBE91: LitVarStr var_D8, "Alta"
  loc_ACBE96: PopAdLdVar
  loc_ACBE97: FLdPr var_88
  loc_ACBE9A: LateIdCallSt
  loc_ACBEA2: LitVarI4
  loc_ACBEAA: PopAdLdVar
  loc_ACBEAB: LitVarI4
  loc_ACBEB3: PopAdLdVar
  loc_ACBEB4: LitVarStr var_D8, "Modi"
  loc_ACBEB9: PopAdLdVar
  loc_ACBEBA: FLdPr var_88
  loc_ACBEBD: LateIdCallSt
  loc_ACBEC5: LitVarI4
  loc_ACBECD: PopAdLdVar
  loc_ACBECE: LitVarI4
  loc_ACBED6: PopAdLdVar
  loc_ACBED7: LitVarStr var_D8, "Baja"
  loc_ACBEDC: PopAdLdVar
  loc_ACBEDD: FLdPr var_88
  loc_ACBEE0: LateIdCallSt
  loc_ACBEE8: LitVarI4
  loc_ACBEF0: PopAdLdVar
  loc_ACBEF1: LitVarI4
  loc_ACBEF9: PopAdLdVar
  loc_ACBEFA: LitVarStr var_D8, vbNullString
  loc_ACBEFF: PopAdLdVar
  loc_ACBF00: FLdPr var_88
  loc_ACBF03: LateIdCallSt
  loc_ACBF0B: LitVarI4
  loc_ACBF13: PopAdLdVar
  loc_ACBF14: LitVarI4
  loc_ACBF1C: PopAdLdVar
  loc_ACBF1D: LitVarStr var_D8, vbNullString
  loc_ACBF22: PopAdLdVar
  loc_ACBF23: FLdPr var_88
  loc_ACBF26: LateIdCallSt
  loc_ACBF2E: FLdPr var_88
  loc_ACBF31: LateIdCall
  loc_ACBF39: LitNothing
  loc_ACBF3B: FStAd var_88 
  loc_ACBF3F: ExitProcHresult
End Function
