VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmGeneracionCuentaCorrienteAntena
  Caption = "Generación  en la Cuenta Corriente de Antena"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 348
  ClientWidth = 13560
  ClientHeight = 9300
  Begin VB.CommandButton cmdSalir
    Left = 12360
    Top = 600
    Width = 975
    Height = 855
    TabIndex = 2
    Picture = "frmGeneracionCuentaCorrienteAntena.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame3
    Caption = "GENERACION DEL AFORO EN LA CUENTA CORRIENTE"
    Left = 600
    Top = 480
    Width = 11175
    Height = 3855
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,6
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton CalculoCmd
      Left = 4800
      Top = 3120
      Width = 1335
      Height = 495
      TabIndex = 3
      Picture = "frmGeneracionCuentaCorrienteAntena.frx":0252
      Style = 1
    End
    Begin MSDataGridLib.DataGrid dgdABMS
      Left = 720
      Top = 480
      Width = 9360
      Height = 1515
      TabIndex = 1
      OleObjectBlob = "frmGeneracionCuentaCorrienteAntena.frx":0580
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 720
      Top = 2280
      Width = 9345
      Height = 495
      Visible = 0   'False
      TabIndex = 4
      OleObjectBlob = "frmGeneracionCuentaCorrienteAntena.frx":0886
    End
  End
End

Attribute VB_Name = "frmGeneracionCuentaCorrienteAntena"


Private Sub CalculoCmd_Click() 'BC428C
  'Data Table: 408EE0
  loc_BC3C34: LitI4 0
  loc_BC3C39: FStR4 var_8C
  loc_BC3C3C: FLdRfVar var_A2
  loc_BC3C3F: FLdPr Me
  loc_BC3C42: MemLdRfVar from_stack_1.global_52
  loc_BC3C45: NewIfNullPr clsliquidacion
  loc_BC3C48: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BC3C4D: LitVar_Missing var_118
  loc_BC3C50: LitVar_Missing var_F8
  loc_BC3C53: LitVar_Missing var_D8
  loc_BC3C56: LitI4 4
  loc_BC3C5B: LitStr "Esta seguro que desea generar en la cuenta corriente la emisión masiva. Para el período: "
  loc_BC3C5E: FLdI2 var_A2
  loc_BC3C61: CStrUI1
  loc_BC3C63: FStStrNoPop var_A8
  loc_BC3C66: ConcatStr
  loc_BC3C67: CVarStr var_B8
  loc_BC3C6A: ImpAdCallI2 MsgBox(, , , , )
  loc_BC3C6F: LitI4 6
  loc_BC3C74: EqI4
  loc_BC3C75: FFree1Str var_A8
  loc_BC3C78: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_BC3C83: BranchF loc_BC4288
  loc_BC3C86: FLdRfVar var_A2
  loc_BC3C89: FLdPr Me
  loc_BC3C8C: MemLdRfVar from_stack_1.global_52
  loc_BC3C8F: NewIfNullPr clsliquidacion
  loc_BC3C92: from_stack_1 = clsliquidacion.CodiTili
  loc_BC3C97: FLdUI1
  loc_BC3C9B: LitI2_Byte 7
  loc_BC3C9D: CUI1I2
  loc_BC3C9F: ImpAdCallFPR4  = Proc_270_72_A8BDBC()
  loc_BC3CA4: FStFPR8 var_A0
  loc_BC3CA7: LitStr "SELECT SUM(TotaLian) as TotaBole, PeriLiqu, CodiTili, NumeLiqu, CodiCome, TipoVenc, CucuPers, ActuLian, FeveLian, TipoLian FROM liquante "
  loc_BC3CAA: LitStr " WHERE PeriLiqu = "
  loc_BC3CAD: ConcatStr
  loc_BC3CAE: FStStrNoPop var_A8
  loc_BC3CB1: FLdRfVar var_A2
  loc_BC3CB4: FLdPr Me
  loc_BC3CB7: MemLdRfVar from_stack_1.global_52
  loc_BC3CBA: NewIfNullPr clsliquidacion
  loc_BC3CBD: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BC3CC2: FLdI2 var_A2
  loc_BC3CC5: CStrUI1
  loc_BC3CC7: FStStrNoPop var_11C
  loc_BC3CCA: ConcatStr
  loc_BC3CCB: FStStrNoPop var_120
  loc_BC3CCE: LitStr " AND CodiTili = "
  loc_BC3CD1: ConcatStr
  loc_BC3CD2: FStStrNoPop var_128
  loc_BC3CD5: FLdRfVar var_122
  loc_BC3CD8: FLdPr Me
  loc_BC3CDB: MemLdRfVar from_stack_1.global_52
  loc_BC3CDE: NewIfNullPr clsliquidacion
  loc_BC3CE1: from_stack_1 = clsliquidacion.CodiTili
  loc_BC3CE6: FLdUI1
  loc_BC3CEA: CStrI2
  loc_BC3CEC: FStStrNoPop var_12C
  loc_BC3CEF: ConcatStr
  loc_BC3CF0: FStStrNoPop var_130
  loc_BC3CF3: LitStr " AND NumeLiqu = "
  loc_BC3CF6: ConcatStr
  loc_BC3CF7: FStStrNoPop var_138
  loc_BC3CFA: FLdRfVar var_132
  loc_BC3CFD: FLdPr Me
  loc_BC3D00: MemLdRfVar from_stack_1.global_52
  loc_BC3D03: NewIfNullPr clsliquidacion
  loc_BC3D06: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BC3D0B: FLdI2 var_132
  loc_BC3D0E: CStrUI1
  loc_BC3D10: FStStrNoPop var_13C
  loc_BC3D13: ConcatStr
  loc_BC3D14: FStStrNoPop var_140
  loc_BC3D17: LitStr " AND ActuLian = 'No' "
  loc_BC3D1A: ConcatStr
  loc_BC3D1B: FStStrNoPop var_144
  loc_BC3D1E: LitStr " GROUP BY CodiCome"
  loc_BC3D21: ConcatStr
  loc_BC3D22: FStStrNoPop var_148
  loc_BC3D25: LitStr " ORDER BY LocaLian, CallLian, NucaLian"
  loc_BC3D28: ConcatStr
  loc_BC3D29: FStStrNoPop var_14C
  loc_BC3D2C: FLdPr Me
  loc_BC3D2F: MemLdRfVar from_stack_1.global_56
  loc_BC3D32: NewIfNullPr clsliquante
  loc_BC3D35: Call clsliquante.RedefineRS(from_stack_1v)
  loc_BC3D3A: FFreeStr var_A8 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_130 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_BC3D55: FLdRfVar var_154
  loc_BC3D58: FLdRfVar var_150
  loc_BC3D5B: FLdPr Me
  loc_BC3D5E: MemLdRfVar from_stack_1.global_56
  loc_BC3D61: NewIfNullPr clsliquante
  loc_BC3D64: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC3D69: FLdPr var_150
  loc_BC3D6C:  = Me.RecordCount
  loc_BC3D71: ILdRf var_154
  loc_BC3D74: LitI4 0
  loc_BC3D79: GtI4
  loc_BC3D7A: FFree1Ad var_150
  loc_BC3D7D: BranchF loc_BC41C5
  loc_BC3D80: LitI2_Byte 0
  loc_BC3D82: FLdPr Me
  loc_BC3D85: VCallAd Control_ID_CalculoCmd
  loc_BC3D88: FStAdFunc var_150
  loc_BC3D8B: FLdPr var_150
  loc_BC3D8E: Me.Enabled = from_stack_1b
  loc_BC3D93: FFree1Ad var_150
  loc_BC3D96: LitVar_TRUE var_C8
  loc_BC3D99: PopAdLdVar
  loc_BC3D9A: FLdPr Me
  loc_BC3D9D: VCallAd Control_ID_ProgressBar
  loc_BC3DA0: FStAdFunc var_150
  loc_BC3DA3: FLdPr var_150
  loc_BC3DA6: LateIdSt
  loc_BC3DAB: FFree1Ad var_150
  loc_BC3DAE: LitI2_Byte 0
  loc_BC3DB0: CR8I2
  loc_BC3DB1: CVarR4
  loc_BC3DB5: PopAdLdVar
  loc_BC3DB6: FLdPr Me
  loc_BC3DB9: VCallAd Control_ID_ProgressBar
  loc_BC3DBC: FStAdFunc var_150
  loc_BC3DBF: FLdPr var_150
  loc_BC3DC2: LateIdSt
  loc_BC3DC7: FFree1Ad var_150
  loc_BC3DCA: FLdRfVar var_154
  loc_BC3DCD: FLdRfVar var_150
  loc_BC3DD0: FLdPr Me
  loc_BC3DD3: MemLdRfVar from_stack_1.global_56
  loc_BC3DD6: NewIfNullPr clsliquante
  loc_BC3DD9: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC3DDE: FLdPr var_150
  loc_BC3DE1:  = Me.RecordCount
  loc_BC3DE6: ILdRf var_154
  loc_BC3DE9: CR8I4
  loc_BC3DEA: CVarR4
  loc_BC3DEE: PopAdLdVar
  loc_BC3DEF: FLdPr Me
  loc_BC3DF2: VCallAd Control_ID_ProgressBar
  loc_BC3DF5: FStAdFunc var_158
  loc_BC3DF8: FLdPr var_158
  loc_BC3DFB: LateIdSt
  loc_BC3E00: FFreeAd var_150 = ""
  loc_BC3E07: LitI2_Byte 0
  loc_BC3E09: CR8I2
  loc_BC3E0A: CVarR4
  loc_BC3E0E: PopAdLdVar
  loc_BC3E0F: FLdPr Me
  loc_BC3E12: VCallAd Control_ID_ProgressBar
  loc_BC3E15: FStAdFunc var_150
  loc_BC3E18: FLdPr var_150
  loc_BC3E1B: LateIdSt
  loc_BC3E20: FFree1Ad var_150
  loc_BC3E23: FLdRfVar var_150
  loc_BC3E26: FLdPr Me
  loc_BC3E29: MemLdRfVar from_stack_1.global_56
  loc_BC3E2C: NewIfNullPr clsliquante
  loc_BC3E2F: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC3E34: FLdPr var_150
  loc_BC3E37: Me.MoveFirst
  loc_BC3E3C: FFree1Ad var_150
  loc_BC3E3F: LitVarStr var_E8, " UPDATE liquidacion SET ActuLiqu = 'Si' WHERE PeriLiqu = "
  loc_BC3E44: FLdRfVar var_B8
  loc_BC3E47: FLdRfVar var_15C
  loc_BC3E4A: LitVarStr var_C8, "PeriLiqu"
  loc_BC3E4F: PopAdLdVar
  loc_BC3E50: FLdRfVar var_158
  loc_BC3E53: FLdRfVar var_150
  loc_BC3E56: FLdPr Me
  loc_BC3E59: MemLdRfVar from_stack_1.global_56
  loc_BC3E5C: NewIfNullPr clsliquante
  loc_BC3E5F: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC3E64: FLdPr var_150
  loc_BC3E67:  = Me.Fields
  loc_BC3E6C: FLdPr var_158
  loc_BC3E6F: from_stack_2 = Me.Item(from_stack_1)
  loc_BC3E74: FLdPr var_15C
  loc_BC3E77:  = Me.Value
  loc_BC3E7C: FLdRfVar var_B8
  loc_BC3E7F: ConcatVar var_D8
  loc_BC3E83: LitVarStr var_108, " AND CodiOfic = 7 AND CodiTili = "
  loc_BC3E88: ConcatVar var_F8
  loc_BC3E8C: FLdRfVar var_118
  loc_BC3E8F: FLdRfVar var_178
  loc_BC3E92: LitVarStr var_174, "CodiTili"
  loc_BC3E97: PopAdLdVar
  loc_BC3E98: FLdRfVar var_164
  loc_BC3E9B: FLdRfVar var_160
  loc_BC3E9E: FLdPr Me
  loc_BC3EA1: MemLdRfVar from_stack_1.global_56
  loc_BC3EA4: NewIfNullPr clsliquante
  loc_BC3EA7: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC3EAC: FLdPr var_160
  loc_BC3EAF:  = Me.Fields
  loc_BC3EB4: FLdPr var_164
  loc_BC3EB7: from_stack_2 = Me.Item(from_stack_1)
  loc_BC3EBC: FLdPr var_178
  loc_BC3EBF:  = Me.Value
  loc_BC3EC4: FLdRfVar var_118
  loc_BC3EC7: ConcatVar var_188
  loc_BC3ECB: LitVarStr var_198, " AND NumeLiqu = "
  loc_BC3ED0: ConcatVar var_1A8
  loc_BC3ED4: FLdRfVar var_1D4
  loc_BC3ED7: FLdRfVar var_1C4
  loc_BC3EDA: LitVarStr var_1C0, "NumeLiqu"
  loc_BC3EDF: PopAdLdVar
  loc_BC3EE0: FLdRfVar var_1B0
  loc_BC3EE3: FLdRfVar var_1AC
  loc_BC3EE6: FLdPr Me
  loc_BC3EE9: MemLdRfVar from_stack_1.global_56
  loc_BC3EEC: NewIfNullPr clsliquante
  loc_BC3EEF: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC3EF4: FLdPr var_1AC
  loc_BC3EF7:  = Me.Fields
  loc_BC3EFC: FLdPr var_1B0
  loc_BC3EFF: from_stack_2 = Me.Item(from_stack_1)
  loc_BC3F04: FLdPr var_1C4
  loc_BC3F07:  = Me.Value
  loc_BC3F0C: FLdRfVar var_1D4
  loc_BC3F0F: ConcatVar var_1E4
  loc_BC3F13: LitVarStr var_1F4, ";"
  loc_BC3F18: ConcatVar var_204
  loc_BC3F1C: CStrVarVal var_A8
  loc_BC3F20: FLdPr Me
  loc_BC3F23: MemLdRfVar from_stack_1.global_56
  loc_BC3F26: NewIfNullPr clsliquante
  loc_BC3F29: Call clsliquante.EjecutarRsCls(from_stack_1v)
  loc_BC3F2E: FFree1Str var_A8
  loc_BC3F31: FFreeAd var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_178 = "": var_1AC = "": var_1B0 = ""
  loc_BC3F46: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_188 = "": var_1A8 = "": var_1D4 = "": var_1E4 = ""
  loc_BC3F5B: FLdRfVar var_B8
  loc_BC3F5E: FLdRfVar var_15C
  loc_BC3F61: LitVarStr var_C8, "PeriLiqu"
  loc_BC3F66: PopAdLdVar
  loc_BC3F67: FLdRfVar var_158
  loc_BC3F6A: FLdRfVar var_150
  loc_BC3F6D: FLdPr Me
  loc_BC3F70: MemLdRfVar from_stack_1.global_56
  loc_BC3F73: NewIfNullPr clsliquante
  loc_BC3F76: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC3F7B: FLdPr var_150
  loc_BC3F7E:  = Me.Fields
  loc_BC3F83: FLdPr var_158
  loc_BC3F86: from_stack_2 = Me.Item(from_stack_1)
  loc_BC3F8B: FLdPr var_15C
  loc_BC3F8E:  = Me.Value
  loc_BC3F93: FLdRfVar var_B8
  loc_BC3F96: CI2Var
  loc_BC3F97: FStI2 var_92
  loc_BC3F9A: FFreeAd var_150 = "": var_158 = ""
  loc_BC3FA3: FFree1Var var_B8 = ""
  loc_BC3FA6: FLdRfVar var_A2
  loc_BC3FA9: FLdRfVar var_150
  loc_BC3FAC: FLdPr Me
  loc_BC3FAF: MemLdRfVar from_stack_1.global_56
  loc_BC3FB2: NewIfNullPr clsliquante
  loc_BC3FB5: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC3FBA: FLdPr var_150
  loc_BC3FBD:  = Me.EOF
  loc_BC3FC2: FLdI2 var_A2
  loc_BC3FC5: NotI4
  loc_BC3FC6: FFree1Ad var_150
  loc_BC3FC9: BranchF loc_BC41C5
  loc_BC3FCC: ILdRf var_98
  loc_BC3FCF: CR8I4
  loc_BC3FD0: CVarR4
  loc_BC3FD4: PopAdLdVar
  loc_BC3FD5: ImpAdLdRf MemVar_D937AC
  loc_BC3FD8: NewIfNullPr frmGeneracionCuentaCorrienteComercio
  loc_BC3FDB: VCallAd Control_ID_ProgressBar
  loc_BC3FDE: FStAdFunc var_150
  loc_BC3FE1: FLdPr var_150
  loc_BC3FE4: LateIdSt
  loc_BC3FE9: FFree1Ad var_150
  loc_BC3FEC: ILdRf var_98
  loc_BC3FEF: LitI4 1
  loc_BC3FF4: AddI4
  loc_BC3FF5: FStR4 var_98
  loc_BC3FF8: FLdRfVar var_B8
  loc_BC3FFB: FLdRfVar var_15C
  loc_BC3FFE: LitVarStr var_C8, "TotaBole"
  loc_BC4003: PopAdLdVar
  loc_BC4004: FLdRfVar var_158
  loc_BC4007: FLdRfVar var_150
  loc_BC400A: FLdPr Me
  loc_BC400D: MemLdRfVar from_stack_1.global_56
  loc_BC4010: NewIfNullPr clsliquante
  loc_BC4013: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC4018: FLdPr var_150
  loc_BC401B:  = Me.Fields
  loc_BC4020: FLdPr var_158
  loc_BC4023: from_stack_2 = Me.Item(from_stack_1)
  loc_BC4028: FLdPr var_15C
  loc_BC402B:  = Me.Value
  loc_BC4030: FLdRfVar var_B8
  loc_BC4033: LitVarI2 var_E8, 0
  loc_BC4038: HardType
  loc_BC4039: GtVarBool
  loc_BC403B: FFreeAd var_150 = "": var_158 = ""
  loc_BC4044: FFree1Var var_B8 = ""
  loc_BC4047: BranchF loc_BC405F
  loc_BC404A: ILdRf var_8C
  loc_BC404D: LitI4 1
  loc_BC4052: AddI4
  loc_BC4053: FStR4 var_8C
  loc_BC4056: ILdRf var_8C
  loc_BC4059: FStR4 var_90
  loc_BC405C: Branch loc_BC4067
  loc_BC405F: LitI4 0
  loc_BC4064: FStR4 var_90
  loc_BC4067: FLdRfVar var_B8
  loc_BC406A: FLdRfVar var_15C
  loc_BC406D: LitVarStr var_C8, "PeriLiqu"
  loc_BC4072: PopAdLdVar
  loc_BC4073: FLdRfVar var_158
  loc_BC4076: FLdRfVar var_150
  loc_BC4079: FLdPr Me
  loc_BC407C: MemLdRfVar from_stack_1.global_56
  loc_BC407F: NewIfNullPr clsliquante
  loc_BC4082: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC4087: FLdPr var_150
  loc_BC408A:  = Me.Fields
  loc_BC408F: FLdPr var_158
  loc_BC4092: from_stack_2 = Me.Item(from_stack_1)
  loc_BC4097: FLdPr var_15C
  loc_BC409A:  = Me.Value
  loc_BC409F: FLdRfVar var_D8
  loc_BC40A2: FLdRfVar var_178
  loc_BC40A5: LitVarStr var_E8, "CodiTili"
  loc_BC40AA: PopAdLdVar
  loc_BC40AB: FLdRfVar var_164
  loc_BC40AE: FLdRfVar var_160
  loc_BC40B1: FLdPr Me
  loc_BC40B4: MemLdRfVar from_stack_1.global_56
  loc_BC40B7: NewIfNullPr clsliquante
  loc_BC40BA: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC40BF: FLdPr var_160
  loc_BC40C2:  = Me.Fields
  loc_BC40C7: FLdPr var_164
  loc_BC40CA: from_stack_2 = Me.Item(from_stack_1)
  loc_BC40CF: FLdPr var_178
  loc_BC40D2:  = Me.Value
  loc_BC40D7: FLdRfVar var_F8
  loc_BC40DA: FLdRfVar var_1C4
  loc_BC40DD: LitVarStr var_108, "NumeLiqu"
  loc_BC40E2: PopAdLdVar
  loc_BC40E3: FLdRfVar var_1B0
  loc_BC40E6: FLdRfVar var_1AC
  loc_BC40E9: FLdPr Me
  loc_BC40EC: MemLdRfVar from_stack_1.global_56
  loc_BC40EF: NewIfNullPr clsliquante
  loc_BC40F2: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC40F7: FLdPr var_1AC
  loc_BC40FA:  = Me.Fields
  loc_BC40FF: FLdPr var_1B0
  loc_BC4102: from_stack_2 = Me.Item(from_stack_1)
  loc_BC4107: FLdPr var_1C4
  loc_BC410A:  = Me.Value
  loc_BC410F: FLdRfVar var_118
  loc_BC4112: FLdRfVar var_210
  loc_BC4115: LitVarStr var_174, "CodiCome"
  loc_BC411A: PopAdLdVar
  loc_BC411B: FLdRfVar var_20C
  loc_BC411E: FLdRfVar var_208
  loc_BC4121: FLdPr Me
  loc_BC4124: MemLdRfVar from_stack_1.global_56
  loc_BC4127: NewIfNullPr clsliquante
  loc_BC412A: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC412F: FLdPr var_208
  loc_BC4132:  = Me.Fields
  loc_BC4137: FLdPr var_20C
  loc_BC413A: from_stack_2 = Me.Item(from_stack_1)
  loc_BC413F: FLdPr var_210
  loc_BC4142:  = Me.Value
  loc_BC4147: ILdRf var_88
  loc_BC414A: FLdRfVar var_A8
  loc_BC414D: FLdR8 var_A0
  loc_BC4150: FLdI2 var_92
  loc_BC4153: ILdRf var_90
  loc_BC4156: FLdRfVar var_118
  loc_BC4159: CI4Var
  loc_BC415B: FLdRfVar var_F8
  loc_BC415E: CI2Var
  loc_BC415F: FLdRfVar var_D8
  loc_BC4162: CUI1Var
  loc_BC4164: FLdRfVar var_B8
  loc_BC4167: CI2Var
  loc_BC4168: FLdPr Me
  loc_BC416B: MemLdRfVar from_stack_1.global_56
  loc_BC416E: NewIfNullPr clsliquante
  loc_BC4171: from_stack_8v = clsliquante.GeneracionCuentaCorriente(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BC4176: ILdRf var_A8
  loc_BC4179: ConcatStr
  loc_BC417A: FStStr var_88
  loc_BC417D: FFree1Str var_A8
  loc_BC4180: FFreeAd var_150 = "": var_158 = "": var_160 = "": var_164 = "": var_1AC = "": var_1B0 = "": var_208 = "": var_20C = "": var_15C = "": var_178 = "": var_1C4 = ""
  loc_BC419B: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_BC41A6: FLdRfVar var_150
  loc_BC41A9: FLdPr Me
  loc_BC41AC: MemLdRfVar from_stack_1.global_56
  loc_BC41AF: NewIfNullPr clsliquante
  loc_BC41B2: from_stack_1v = clsliquante.RsFrmGet()
  loc_BC41B7: FLdPr var_150
  loc_BC41BA: Me.MoveNext
  loc_BC41BF: FFree1Ad var_150
  loc_BC41C2: Branch loc_BC3FA6
  loc_BC41C5: ILdRf var_88
  loc_BC41C8: LitStr vbNullString
  loc_BC41CB: NeStr
  loc_BC41CD: BranchF loc_BC41D8
  loc_BC41D0: ILdRf var_88
  loc_BC41D3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC41D8: LitVar_FALSE
  loc_BC41DC: PopAdLdVar
  loc_BC41DD: FLdPr Me
  loc_BC41E0: VCallAd Control_ID_ProgressBar
  loc_BC41E3: FStAdFunc var_150
  loc_BC41E6: FLdPr var_150
  loc_BC41E9: LateIdSt
  loc_BC41EE: FFree1Ad var_150
  loc_BC41F1: LitStr "Proceso Terminado. Verifique en la cuenta corriente la generación de los aforos"
  loc_BC41F4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC41F9: LitI2_Byte &HFF
  loc_BC41FB: FLdPr Me
  loc_BC41FE: VCallAd Control_ID_CalculoCmd
  loc_BC4201: FStAdFunc var_150
  loc_BC4204: FLdPr var_150
  loc_BC4207: Me.Enabled = from_stack_1b
  loc_BC420C: FFree1Ad var_150
  loc_BC420F: LitStr "SELECT liquidacion.PeriLiqu, liquidacion.CodiTili, tipoliqu.DetaTili, liquidacion.NumeLiqu, liquidacion.ActuLiqu, liquidacion.FealLiqu FROM liquidacion "
  loc_BC4212: LitStr " LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili WHERE liquidacion.CodiOfic = 7 AND liquidacion.ActuLiqu = 'No' ORDER BY liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, liquidacion.NumeLiqu"
  loc_BC4215: ConcatStr
  loc_BC4216: FStStrNoPop var_A8
  loc_BC4219: FLdPr Me
  loc_BC421C: MemLdRfVar from_stack_1.global_52
  loc_BC421F: NewIfNullPr clsliquidacion
  loc_BC4222: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_BC4227: FFree1Str var_A8
  loc_BC422A: LitI4 0
  loc_BC422F: LitI4 1
  loc_BC4234: FLdRfVar var_214
  loc_BC4237: Redim
  loc_BC4241: FLdPr Me
  loc_BC4244: MemLdRfVar from_stack_1.global_52
  loc_BC4247: NewIfNullAd
  loc_BC424A: FStAd var_150 
  loc_BC424E: FLdRfVar var_150
  loc_BC4251: CVarRef
  loc_BC4256: ParmAry1St
  loc_BC425C: FLdPr Me
  loc_BC425F: VCallAd Control_ID_dgdABMS
  loc_BC4262: CVarAd
  loc_BC4266: ParmAry1St
  loc_BC426C: FLdRfVar var_214
  loc_BC426F: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_BC4274: ILdRf var_150
  loc_BC4277: CastAd
  loc_BC427A: FLdPr Me
  loc_BC427D: MemStAdFunc
  loc_BC4281: FLdRfVar var_214
  loc_BC4284: Erase
  loc_BC4285: FFree1Ad var_150
  loc_BC4288: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8F994
  'Data Table: 408EE0
  loc_A8F904: LitStr "SELECT liquidacion.PeriLiqu, liquidacion.CodiTili, tipoliqu.DetaTili, liquidacion.NumeLiqu, liquidacion.ActuLiqu, liquidacion.FealLiqu FROM liquidacion "
  loc_A8F907: LitStr " LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili "
  loc_A8F90A: ConcatStr
  loc_A8F90B: FStStrNoPop var_88
  loc_A8F90E: LitStr " WHERE liquidacion.CodiOfic = 7 AND liquidacion.ActuLiqu = 'No' "
  loc_A8F911: ConcatStr
  loc_A8F912: FStStrNoPop var_8C
  loc_A8F915: LitStr " ORDER BY liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, liquidacion.NumeLiqu"
  loc_A8F918: ConcatStr
  loc_A8F919: FStStrNoPop var_90
  loc_A8F91C: FLdPr Me
  loc_A8F91F: MemLdRfVar from_stack_1.global_52
  loc_A8F922: NewIfNullPr clsliquidacion
  loc_A8F925: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A8F92A: FFreeStr var_88 = "": var_8C = ""
  loc_A8F933: LitI4 0
  loc_A8F938: LitI4 1
  loc_A8F93D: FLdRfVar var_94
  loc_A8F940: Redim
  loc_A8F94A: FLdPr Me
  loc_A8F94D: MemLdRfVar from_stack_1.global_52
  loc_A8F950: NewIfNullAd
  loc_A8F953: FStAd var_98 
  loc_A8F957: FLdRfVar var_98
  loc_A8F95A: CVarRef
  loc_A8F95F: ParmAry1St
  loc_A8F965: FLdPr Me
  loc_A8F968: VCallAd Control_ID_dgdABMS
  loc_A8F96B: CVarAd
  loc_A8F96F: ParmAry1St
  loc_A8F975: FLdRfVar var_94
  loc_A8F978: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8F97D: ILdRf var_98
  loc_A8F980: CastAd
  loc_A8F983: FLdPr Me
  loc_A8F986: MemStAdFunc
  loc_A8F98A: FLdRfVar var_94
  loc_A8F98D: Erase
  loc_A8F98E: FFree1Ad var_98
  loc_A8F991: ExitProcHresult
  loc_A8F992: FnCDblR8
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA590
  'Data Table: 408EE0
  loc_9BA57C: ILdI2 KeyCode
  loc_9BA57F: CI4UI1
  loc_9BA580: LitI4 &H78
  loc_9BA585: EqI4
  loc_9BA586: BranchF loc_9BA58E
  loc_9BA589: Call cmdSalir_Click()
  loc_9BA58E: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9D2C70
  'Data Table: 408EE0
  loc_9D2C58: ILdRf Me
  loc_9D2C5B: FStAdNoPop
  loc_9D2C5F: ImpAdLdRf MemVar_D9C5D8
  loc_9D2C62: NewIfNullPr Global
  loc_9D2C65: Global.Unload from_stack_1
  loc_9D2C6A: FFree1Ad var_88
  loc_9D2C6D: ExitProcHresult
End Sub
