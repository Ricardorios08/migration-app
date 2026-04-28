VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmGeneracionCuentaCorrientePublicidad
  Caption = "Generación  en la Cuenta Corriente de Publicidad"
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
    Picture = "frmGeneracionCuentaCorrientePublicidad.frx":0000
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
      Picture = "frmGeneracionCuentaCorrientePublicidad.frx":0252
      Style = 1
    End
    Begin MSDataGridLib.DataGrid dgdABMS
      Left = 720
      Top = 480
      Width = 9360
      Height = 1515
      TabIndex = 1
      OleObjectBlob = "frmGeneracionCuentaCorrientePublicidad.frx":0580
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 720
      Top = 2280
      Width = 9345
      Height = 495
      Visible = 0   'False
      TabIndex = 4
      OleObjectBlob = "frmGeneracionCuentaCorrientePublicidad.frx":0886
    End
  End
End

Attribute VB_Name = "frmGeneracionCuentaCorrientePublicidad"


Private Sub CalculoCmd_Click() 'BC5F0C
  'Data Table: 409414
  loc_BC58AC: LitI4 0
  loc_BC58B1: FStR4 var_8C
  loc_BC58B4: FLdRfVar var_A2
  loc_BC58B7: FLdPr Me
  loc_BC58BA: MemLdRfVar from_stack_1.global_52
  loc_BC58BD: NewIfNullPr clsliquidacion
  loc_BC58C0: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BC58C5: LitVar_Missing var_118
  loc_BC58C8: LitVar_Missing var_F8
  loc_BC58CB: LitVar_Missing var_D8
  loc_BC58CE: LitI4 4
  loc_BC58D3: LitStr "Esta seguro que desea generar en la cuenta corriente la emisión masiva. Para el período: "
  loc_BC58D6: FLdI2 var_A2
  loc_BC58D9: CStrUI1
  loc_BC58DB: FStStrNoPop var_A8
  loc_BC58DE: ConcatStr
  loc_BC58DF: CVarStr var_B8
  loc_BC58E2: ImpAdCallI2 MsgBox(, , , , )
  loc_BC58E7: LitI4 6
  loc_BC58EC: EqI4
  loc_BC58ED: FFree1Str var_A8
  loc_BC58F0: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_BC58FB: BranchF loc_BC5F09
  loc_BC58FE: FLdRfVar var_A2
  loc_BC5901: FLdPr Me
  loc_BC5904: MemLdRfVar from_stack_1.global_52
  loc_BC5907: NewIfNullPr clsliquidacion
  loc_BC590A: from_stack_1 = clsliquidacion.CodiTili
  loc_BC590F: FLdUI1
  loc_BC5913: LitI2_Byte 6
  loc_BC5915: CUI1I2
  loc_BC5917: ImpAdCallFPR4 Proc_270_72_A8BDBC(, )
  loc_BC591C: FStFPR8 var_A0
  loc_BC591F: LitStr "SELECT SUM(TotaLipu) as TotaBole, PeriLiqu, CodiTili, NumeLiqu, CodiCome, TipoVenc, liqupubl.CucuPers, ActuLipu, FeveLipu, TipoLipu FROM liqupubl "
  loc_BC5922: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = liqupubl.CucuPers"
  loc_BC5925: ConcatStr
  loc_BC5926: FStStrNoPop var_A8
  loc_BC5929: LitStr " WHERE PeriLiqu = "
  loc_BC592C: ConcatStr
  loc_BC592D: FStStrNoPop var_11C
  loc_BC5930: FLdRfVar var_A2
  loc_BC5933: FLdPr Me
  loc_BC5936: MemLdRfVar from_stack_1.global_52
  loc_BC5939: NewIfNullPr clsliquidacion
  loc_BC593C: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BC5941: FLdI2 var_A2
  loc_BC5944: CStrUI1
  loc_BC5946: FStStrNoPop var_120
  loc_BC5949: ConcatStr
  loc_BC594A: FStStrNoPop var_124
  loc_BC594D: LitStr " AND CodiTili = "
  loc_BC5950: ConcatStr
  loc_BC5951: FStStrNoPop var_12C
  loc_BC5954: FLdRfVar var_126
  loc_BC5957: FLdPr Me
  loc_BC595A: MemLdRfVar from_stack_1.global_52
  loc_BC595D: NewIfNullPr clsliquidacion
  loc_BC5960: from_stack_1 = clsliquidacion.CodiTili
  loc_BC5965: FLdUI1
  loc_BC5969: CStrI2
  loc_BC596B: FStStrNoPop var_130
  loc_BC596E: ConcatStr
  loc_BC596F: FStStrNoPop var_134
  loc_BC5972: LitStr " AND NumeLiqu = "
  loc_BC5975: ConcatStr
  loc_BC5976: FStStrNoPop var_13C
  loc_BC5979: FLdRfVar var_136
  loc_BC597C: FLdPr Me
  loc_BC597F: MemLdRfVar from_stack_1.global_52
  loc_BC5982: NewIfNullPr clsliquidacion
  loc_BC5985: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BC598A: FLdI2 var_136
  loc_BC598D: CStrUI1
  loc_BC598F: FStStrNoPop var_140
  loc_BC5992: ConcatStr
  loc_BC5993: FStStrNoPop var_144
  loc_BC5996: LitStr " AND ActuLipu = 'No' "
  loc_BC5999: ConcatStr
  loc_BC599A: FStStrNoPop var_148
  loc_BC599D: LitStr " GROUP BY CodiCome"
  loc_BC59A0: ConcatStr
  loc_BC59A1: FStStrNoPop var_14C
  loc_BC59A4: LitStr " ORDER BY liqupubl.Orden"
  loc_BC59A7: ConcatStr
  loc_BC59A8: FStStrNoPop var_150
  loc_BC59AB: FLdPr Me
  loc_BC59AE: MemLdRfVar from_stack_1.global_56
  loc_BC59B1: NewIfNullPr clsliqupubl
  loc_BC59B4: Call clsliqupubl.RedefineRS(from_stack_1v)
  loc_BC59B9: FFreeStr var_A8 = "": var_11C = "": var_120 = "": var_124 = "": var_12C = "": var_130 = "": var_134 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_BC59D6: FLdRfVar var_158
  loc_BC59D9: FLdRfVar var_154
  loc_BC59DC: FLdPr Me
  loc_BC59DF: MemLdRfVar from_stack_1.global_56
  loc_BC59E2: NewIfNullPr clsliqupubl
  loc_BC59E5: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC59EA: FLdPr var_154
  loc_BC59ED:  = Me.RecordCount
  loc_BC59F2: ILdRf var_158
  loc_BC59F5: LitI4 0
  loc_BC59FA: GtI4
  loc_BC59FB: FFree1Ad var_154
  loc_BC59FE: BranchF loc_BC5E46
  loc_BC5A01: LitI2_Byte 0
  loc_BC5A03: FLdPr Me
  loc_BC5A06: VCallAd Control_ID_CalculoCmd
  loc_BC5A09: FStAdFunc var_154
  loc_BC5A0C: FLdPr var_154
  loc_BC5A0F: Me.Enabled = from_stack_1b
  loc_BC5A14: FFree1Ad var_154
  loc_BC5A17: LitVar_TRUE var_C8
  loc_BC5A1A: PopAdLdVar
  loc_BC5A1B: FLdPr Me
  loc_BC5A1E: VCallAd Control_ID_ProgressBar
  loc_BC5A21: FStAdFunc var_154
  loc_BC5A24: FLdPr var_154
  loc_BC5A27: LateIdSt
  loc_BC5A2C: FFree1Ad var_154
  loc_BC5A2F: LitI2_Byte 0
  loc_BC5A31: CR8I2
  loc_BC5A32: CVarR4
  loc_BC5A36: PopAdLdVar
  loc_BC5A37: FLdPr Me
  loc_BC5A3A: VCallAd Control_ID_ProgressBar
  loc_BC5A3D: FStAdFunc var_154
  loc_BC5A40: FLdPr var_154
  loc_BC5A43: LateIdSt
  loc_BC5A48: FFree1Ad var_154
  loc_BC5A4B: FLdRfVar var_158
  loc_BC5A4E: FLdRfVar var_154
  loc_BC5A51: FLdPr Me
  loc_BC5A54: MemLdRfVar from_stack_1.global_56
  loc_BC5A57: NewIfNullPr clsliqupubl
  loc_BC5A5A: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5A5F: FLdPr var_154
  loc_BC5A62:  = Me.RecordCount
  loc_BC5A67: ILdRf var_158
  loc_BC5A6A: CR8I4
  loc_BC5A6B: CVarR4
  loc_BC5A6F: PopAdLdVar
  loc_BC5A70: FLdPr Me
  loc_BC5A73: VCallAd Control_ID_ProgressBar
  loc_BC5A76: FStAdFunc var_15C
  loc_BC5A79: FLdPr var_15C
  loc_BC5A7C: LateIdSt
  loc_BC5A81: FFreeAd var_154 = ""
  loc_BC5A88: LitI2_Byte 0
  loc_BC5A8A: CR8I2
  loc_BC5A8B: CVarR4
  loc_BC5A8F: PopAdLdVar
  loc_BC5A90: FLdPr Me
  loc_BC5A93: VCallAd Control_ID_ProgressBar
  loc_BC5A96: FStAdFunc var_154
  loc_BC5A99: FLdPr var_154
  loc_BC5A9C: LateIdSt
  loc_BC5AA1: FFree1Ad var_154
  loc_BC5AA4: FLdRfVar var_154
  loc_BC5AA7: FLdPr Me
  loc_BC5AAA: MemLdRfVar from_stack_1.global_56
  loc_BC5AAD: NewIfNullPr clsliqupubl
  loc_BC5AB0: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5AB5: FLdPr var_154
  loc_BC5AB8: Me.MoveFirst
  loc_BC5ABD: FFree1Ad var_154
  loc_BC5AC0: LitVarStr var_E8, " UPDATE liquidacion SET ActuLiqu = 'Si' WHERE PeriLiqu = "
  loc_BC5AC5: FLdRfVar var_B8
  loc_BC5AC8: FLdRfVar var_160
  loc_BC5ACB: LitVarStr var_C8, "PeriLiqu"
  loc_BC5AD0: PopAdLdVar
  loc_BC5AD1: FLdRfVar var_15C
  loc_BC5AD4: FLdRfVar var_154
  loc_BC5AD7: FLdPr Me
  loc_BC5ADA: MemLdRfVar from_stack_1.global_56
  loc_BC5ADD: NewIfNullPr clsliqupubl
  loc_BC5AE0: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5AE5: FLdPr var_154
  loc_BC5AE8:  = Me.Fields
  loc_BC5AED: FLdPr var_15C
  loc_BC5AF0: from_stack_2 = Me.Item(from_stack_1)
  loc_BC5AF5: FLdPr var_160
  loc_BC5AF8:  = Me.Value
  loc_BC5AFD: FLdRfVar var_B8
  loc_BC5B00: ConcatVar var_D8
  loc_BC5B04: LitVarStr var_108, " AND CodiOfic = 6 AND CodiTili = "
  loc_BC5B09: ConcatVar var_F8
  loc_BC5B0D: FLdRfVar var_118
  loc_BC5B10: FLdRfVar var_17C
  loc_BC5B13: LitVarStr var_178, "CodiTili"
  loc_BC5B18: PopAdLdVar
  loc_BC5B19: FLdRfVar var_168
  loc_BC5B1C: FLdRfVar var_164
  loc_BC5B1F: FLdPr Me
  loc_BC5B22: MemLdRfVar from_stack_1.global_56
  loc_BC5B25: NewIfNullPr clsliqupubl
  loc_BC5B28: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5B2D: FLdPr var_164
  loc_BC5B30:  = Me.Fields
  loc_BC5B35: FLdPr var_168
  loc_BC5B38: from_stack_2 = Me.Item(from_stack_1)
  loc_BC5B3D: FLdPr var_17C
  loc_BC5B40:  = Me.Value
  loc_BC5B45: FLdRfVar var_118
  loc_BC5B48: ConcatVar var_18C
  loc_BC5B4C: LitVarStr var_19C, " AND NumeLiqu = "
  loc_BC5B51: ConcatVar var_1AC
  loc_BC5B55: FLdRfVar var_1D8
  loc_BC5B58: FLdRfVar var_1C8
  loc_BC5B5B: LitVarStr var_1C4, "NumeLiqu"
  loc_BC5B60: PopAdLdVar
  loc_BC5B61: FLdRfVar var_1B4
  loc_BC5B64: FLdRfVar var_1B0
  loc_BC5B67: FLdPr Me
  loc_BC5B6A: MemLdRfVar from_stack_1.global_56
  loc_BC5B6D: NewIfNullPr clsliqupubl
  loc_BC5B70: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5B75: FLdPr var_1B0
  loc_BC5B78:  = Me.Fields
  loc_BC5B7D: FLdPr var_1B4
  loc_BC5B80: from_stack_2 = Me.Item(from_stack_1)
  loc_BC5B85: FLdPr var_1C8
  loc_BC5B88:  = Me.Value
  loc_BC5B8D: FLdRfVar var_1D8
  loc_BC5B90: ConcatVar var_1E8
  loc_BC5B94: LitVarStr var_1F8, ";"
  loc_BC5B99: ConcatVar var_208
  loc_BC5B9D: CStrVarVal var_A8
  loc_BC5BA1: FLdPr Me
  loc_BC5BA4: MemLdRfVar from_stack_1.global_56
  loc_BC5BA7: NewIfNullPr clsliqupubl
  loc_BC5BAA: Call clsliqupubl.EjecutarRsCls(from_stack_1v)
  loc_BC5BAF: FFree1Str var_A8
  loc_BC5BB2: FFreeAd var_154 = "": var_15C = "": var_160 = "": var_164 = "": var_168 = "": var_17C = "": var_1B0 = "": var_1B4 = ""
  loc_BC5BC7: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_18C = "": var_1AC = "": var_1D8 = "": var_1E8 = ""
  loc_BC5BDC: FLdRfVar var_B8
  loc_BC5BDF: FLdRfVar var_160
  loc_BC5BE2: LitVarStr var_C8, "PeriLiqu"
  loc_BC5BE7: PopAdLdVar
  loc_BC5BE8: FLdRfVar var_15C
  loc_BC5BEB: FLdRfVar var_154
  loc_BC5BEE: FLdPr Me
  loc_BC5BF1: MemLdRfVar from_stack_1.global_56
  loc_BC5BF4: NewIfNullPr clsliqupubl
  loc_BC5BF7: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5BFC: FLdPr var_154
  loc_BC5BFF:  = Me.Fields
  loc_BC5C04: FLdPr var_15C
  loc_BC5C07: from_stack_2 = Me.Item(from_stack_1)
  loc_BC5C0C: FLdPr var_160
  loc_BC5C0F:  = Me.Value
  loc_BC5C14: FLdRfVar var_B8
  loc_BC5C17: CI2Var
  loc_BC5C18: FStI2 var_92
  loc_BC5C1B: FFreeAd var_154 = "": var_15C = ""
  loc_BC5C24: FFree1Var var_B8 = ""
  loc_BC5C27: FLdRfVar var_A2
  loc_BC5C2A: FLdRfVar var_154
  loc_BC5C2D: FLdPr Me
  loc_BC5C30: MemLdRfVar from_stack_1.global_56
  loc_BC5C33: NewIfNullPr clsliqupubl
  loc_BC5C36: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5C3B: FLdPr var_154
  loc_BC5C3E:  = Me.EOF
  loc_BC5C43: FLdI2 var_A2
  loc_BC5C46: NotI4
  loc_BC5C47: FFree1Ad var_154
  loc_BC5C4A: BranchF loc_BC5E46
  loc_BC5C4D: ILdRf var_98
  loc_BC5C50: CR8I4
  loc_BC5C51: CVarR4
  loc_BC5C55: PopAdLdVar
  loc_BC5C56: ImpAdLdRf MemVar_D93590
  loc_BC5C59: NewIfNullPr frmGeneracionCuentaCorrientePublicidad
  loc_BC5C5C: VCallAd Control_ID_ProgressBar
  loc_BC5C5F: FStAdFunc var_154
  loc_BC5C62: FLdPr var_154
  loc_BC5C65: LateIdSt
  loc_BC5C6A: FFree1Ad var_154
  loc_BC5C6D: ILdRf var_98
  loc_BC5C70: LitI4 1
  loc_BC5C75: AddI4
  loc_BC5C76: FStR4 var_98
  loc_BC5C79: FLdRfVar var_B8
  loc_BC5C7C: FLdRfVar var_160
  loc_BC5C7F: LitVarStr var_C8, "TotaBole"
  loc_BC5C84: PopAdLdVar
  loc_BC5C85: FLdRfVar var_15C
  loc_BC5C88: FLdRfVar var_154
  loc_BC5C8B: FLdPr Me
  loc_BC5C8E: MemLdRfVar from_stack_1.global_56
  loc_BC5C91: NewIfNullPr clsliqupubl
  loc_BC5C94: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5C99: FLdPr var_154
  loc_BC5C9C:  = Me.Fields
  loc_BC5CA1: FLdPr var_15C
  loc_BC5CA4: from_stack_2 = Me.Item(from_stack_1)
  loc_BC5CA9: FLdPr var_160
  loc_BC5CAC:  = Me.Value
  loc_BC5CB1: FLdRfVar var_B8
  loc_BC5CB4: LitVarI2 var_E8, 0
  loc_BC5CB9: HardType
  loc_BC5CBA: GtVarBool
  loc_BC5CBC: FFreeAd var_154 = "": var_15C = ""
  loc_BC5CC5: FFree1Var var_B8 = ""
  loc_BC5CC8: BranchF loc_BC5CE0
  loc_BC5CCB: ILdRf var_8C
  loc_BC5CCE: LitI4 1
  loc_BC5CD3: AddI4
  loc_BC5CD4: FStR4 var_8C
  loc_BC5CD7: ILdRf var_8C
  loc_BC5CDA: FStR4 var_90
  loc_BC5CDD: Branch loc_BC5CE8
  loc_BC5CE0: LitI4 0
  loc_BC5CE5: FStR4 var_90
  loc_BC5CE8: FLdRfVar var_B8
  loc_BC5CEB: FLdRfVar var_160
  loc_BC5CEE: LitVarStr var_C8, "PeriLiqu"
  loc_BC5CF3: PopAdLdVar
  loc_BC5CF4: FLdRfVar var_15C
  loc_BC5CF7: FLdRfVar var_154
  loc_BC5CFA: FLdPr Me
  loc_BC5CFD: MemLdRfVar from_stack_1.global_56
  loc_BC5D00: NewIfNullPr clsliqupubl
  loc_BC5D03: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5D08: FLdPr var_154
  loc_BC5D0B:  = Me.Fields
  loc_BC5D10: FLdPr var_15C
  loc_BC5D13: from_stack_2 = Me.Item(from_stack_1)
  loc_BC5D18: FLdPr var_160
  loc_BC5D1B:  = Me.Value
  loc_BC5D20: FLdRfVar var_D8
  loc_BC5D23: FLdRfVar var_17C
  loc_BC5D26: LitVarStr var_E8, "CodiTili"
  loc_BC5D2B: PopAdLdVar
  loc_BC5D2C: FLdRfVar var_168
  loc_BC5D2F: FLdRfVar var_164
  loc_BC5D32: FLdPr Me
  loc_BC5D35: MemLdRfVar from_stack_1.global_56
  loc_BC5D38: NewIfNullPr clsliqupubl
  loc_BC5D3B: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5D40: FLdPr var_164
  loc_BC5D43:  = Me.Fields
  loc_BC5D48: FLdPr var_168
  loc_BC5D4B: from_stack_2 = Me.Item(from_stack_1)
  loc_BC5D50: FLdPr var_17C
  loc_BC5D53:  = Me.Value
  loc_BC5D58: FLdRfVar var_F8
  loc_BC5D5B: FLdRfVar var_1C8
  loc_BC5D5E: LitVarStr var_108, "NumeLiqu"
  loc_BC5D63: PopAdLdVar
  loc_BC5D64: FLdRfVar var_1B4
  loc_BC5D67: FLdRfVar var_1B0
  loc_BC5D6A: FLdPr Me
  loc_BC5D6D: MemLdRfVar from_stack_1.global_56
  loc_BC5D70: NewIfNullPr clsliqupubl
  loc_BC5D73: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5D78: FLdPr var_1B0
  loc_BC5D7B:  = Me.Fields
  loc_BC5D80: FLdPr var_1B4
  loc_BC5D83: from_stack_2 = Me.Item(from_stack_1)
  loc_BC5D88: FLdPr var_1C8
  loc_BC5D8B:  = Me.Value
  loc_BC5D90: FLdRfVar var_118
  loc_BC5D93: FLdRfVar var_214
  loc_BC5D96: LitVarStr var_178, "CodiCome"
  loc_BC5D9B: PopAdLdVar
  loc_BC5D9C: FLdRfVar var_210
  loc_BC5D9F: FLdRfVar var_20C
  loc_BC5DA2: FLdPr Me
  loc_BC5DA5: MemLdRfVar from_stack_1.global_56
  loc_BC5DA8: NewIfNullPr clsliqupubl
  loc_BC5DAB: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5DB0: FLdPr var_20C
  loc_BC5DB3:  = Me.Fields
  loc_BC5DB8: FLdPr var_210
  loc_BC5DBB: from_stack_2 = Me.Item(from_stack_1)
  loc_BC5DC0: FLdPr var_214
  loc_BC5DC3:  = Me.Value
  loc_BC5DC8: ILdRf var_88
  loc_BC5DCB: FLdRfVar var_A8
  loc_BC5DCE: FLdR8 var_A0
  loc_BC5DD1: FLdI2 var_92
  loc_BC5DD4: ILdRf var_90
  loc_BC5DD7: FLdRfVar var_118
  loc_BC5DDA: CI4Var
  loc_BC5DDC: FLdRfVar var_F8
  loc_BC5DDF: CI2Var
  loc_BC5DE0: FLdRfVar var_D8
  loc_BC5DE3: CUI1Var
  loc_BC5DE5: FLdRfVar var_B8
  loc_BC5DE8: CI2Var
  loc_BC5DE9: FLdPr Me
  loc_BC5DEC: MemLdRfVar from_stack_1.global_56
  loc_BC5DEF: NewIfNullPr clsliqupubl
  loc_BC5DF2: from_stack_8v = clsliqupubl.GeneracionCuentaCorriente(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BC5DF7: ILdRf var_A8
  loc_BC5DFA: ConcatStr
  loc_BC5DFB: FStStr var_88
  loc_BC5DFE: FFree1Str var_A8
  loc_BC5E01: FFreeAd var_154 = "": var_15C = "": var_164 = "": var_168 = "": var_1B0 = "": var_1B4 = "": var_20C = "": var_210 = "": var_160 = "": var_17C = "": var_1C8 = ""
  loc_BC5E1C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_BC5E27: FLdRfVar var_154
  loc_BC5E2A: FLdPr Me
  loc_BC5E2D: MemLdRfVar from_stack_1.global_56
  loc_BC5E30: NewIfNullPr clsliqupubl
  loc_BC5E33: from_stack_1v = clsliqupubl.RsFrmGet()
  loc_BC5E38: FLdPr var_154
  loc_BC5E3B: Me.MoveNext
  loc_BC5E40: FFree1Ad var_154
  loc_BC5E43: Branch loc_BC5C27
  loc_BC5E46: ILdRf var_88
  loc_BC5E49: LitStr vbNullString
  loc_BC5E4C: NeStr
  loc_BC5E4E: BranchF loc_BC5E59
  loc_BC5E51: ILdRf var_88
  loc_BC5E54: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC5E59: LitVar_FALSE
  loc_BC5E5D: PopAdLdVar
  loc_BC5E5E: FLdPr Me
  loc_BC5E61: VCallAd Control_ID_ProgressBar
  loc_BC5E64: FStAdFunc var_154
  loc_BC5E67: FLdPr var_154
  loc_BC5E6A: LateIdSt
  loc_BC5E6F: FFree1Ad var_154
  loc_BC5E72: LitStr "Proceso Terminado. Verifique en la cuenta corriente la generación de los aforos"
  loc_BC5E75: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC5E7A: LitI2_Byte &HFF
  loc_BC5E7C: FLdPr Me
  loc_BC5E7F: VCallAd Control_ID_CalculoCmd
  loc_BC5E82: FStAdFunc var_154
  loc_BC5E85: FLdPr var_154
  loc_BC5E88: Me.Enabled = from_stack_1b
  loc_BC5E8D: FFree1Ad var_154
  loc_BC5E90: LitStr "SELECT liquidacion.PeriLiqu, liquidacion.CodiTili, tipoliqu.DetaTili, liquidacion.NumeLiqu, liquidacion.ActuLiqu, liquidacion.FealLiqu FROM liquidacion "
  loc_BC5E93: LitStr " LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili WHERE liquidacion.CodiOfic = 7 AND liquidacion.ActuLiqu = 'No' ORDER BY liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, liquidacion.NumeLiqu"
  loc_BC5E96: ConcatStr
  loc_BC5E97: FStStrNoPop var_A8
  loc_BC5E9A: FLdPr Me
  loc_BC5E9D: MemLdRfVar from_stack_1.global_52
  loc_BC5EA0: NewIfNullPr clsliquidacion
  loc_BC5EA3: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_BC5EA8: FFree1Str var_A8
  loc_BC5EAB: LitI4 0
  loc_BC5EB0: LitI4 1
  loc_BC5EB5: FLdRfVar var_218
  loc_BC5EB8: Redim
  loc_BC5EC2: FLdPr Me
  loc_BC5EC5: MemLdRfVar from_stack_1.global_52
  loc_BC5EC8: NewIfNullAd
  loc_BC5ECB: FStAd var_154 
  loc_BC5ECF: FLdRfVar var_154
  loc_BC5ED2: CVarRef
  loc_BC5ED7: ParmAry1St
  loc_BC5EDD: FLdPr Me
  loc_BC5EE0: VCallAd Control_ID_dgdABMS
  loc_BC5EE3: CVarAd
  loc_BC5EE7: ParmAry1St
  loc_BC5EED: FLdRfVar var_218
  loc_BC5EF0: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_BC5EF5: ILdRf var_154
  loc_BC5EF8: CastAd
  loc_BC5EFB: FLdPr Me
  loc_BC5EFE: MemStAdFunc
  loc_BC5F02: FLdRfVar var_218
  loc_BC5F05: Erase
  loc_BC5F06: FFree1Ad var_154
  loc_BC5F09: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8E8F4
  'Data Table: 409414
  loc_A8E864: LitStr "SELECT liquidacion.PeriLiqu, liquidacion.CodiTili, tipoliqu.DetaTili, liquidacion.NumeLiqu, liquidacion.ActuLiqu, liquidacion.FealLiqu FROM liquidacion "
  loc_A8E867: LitStr " LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili "
  loc_A8E86A: ConcatStr
  loc_A8E86B: FStStrNoPop var_88
  loc_A8E86E: LitStr " WHERE liquidacion.CodiOfic = 6 AND liquidacion.ActuLiqu = 'No' "
  loc_A8E871: ConcatStr
  loc_A8E872: FStStrNoPop var_8C
  loc_A8E875: LitStr " ORDER BY liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, liquidacion.NumeLiqu"
  loc_A8E878: ConcatStr
  loc_A8E879: FStStrNoPop var_90
  loc_A8E87C: FLdPr Me
  loc_A8E87F: MemLdRfVar from_stack_1.global_52
  loc_A8E882: NewIfNullPr clsliquidacion
  loc_A8E885: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A8E88A: FFreeStr var_88 = "": var_8C = ""
  loc_A8E893: LitI4 0
  loc_A8E898: LitI4 1
  loc_A8E89D: FLdRfVar var_94
  loc_A8E8A0: Redim
  loc_A8E8AA: FLdPr Me
  loc_A8E8AD: MemLdRfVar from_stack_1.global_52
  loc_A8E8B0: NewIfNullAd
  loc_A8E8B3: FStAd var_98 
  loc_A8E8B7: FLdRfVar var_98
  loc_A8E8BA: CVarRef
  loc_A8E8BF: ParmAry1St
  loc_A8E8C5: FLdPr Me
  loc_A8E8C8: VCallAd Control_ID_dgdABMS
  loc_A8E8CB: CVarAd
  loc_A8E8CF: ParmAry1St
  loc_A8E8D5: FLdRfVar var_94
  loc_A8E8D8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8E8DD: ILdRf var_98
  loc_A8E8E0: CastAd
  loc_A8E8E3: FLdPr Me
  loc_A8E8E6: MemStAdFunc
  loc_A8E8EA: FLdRfVar var_94
  loc_A8E8ED: Erase
  loc_A8E8EE: FFree1Ad var_98
  loc_A8E8F1: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB140
  'Data Table: 409414
  loc_9BB12C: ILdI2 KeyCode
  loc_9BB12F: CI4UI1
  loc_9BB130: LitI4 &H78
  loc_9BB135: EqI4
  loc_9BB136: BranchF loc_9BB13E
  loc_9BB139: Call cmdSalir_Click()
  loc_9BB13E: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9CA180
  'Data Table: 409414
  loc_9CA168: ILdRf Me
  loc_9CA16B: FStAdNoPop
  loc_9CA16F: ImpAdLdRf MemVar_D9C5D8
  loc_9CA172: NewIfNullPr Global
  loc_9CA175: Global.Unload from_stack_1
  loc_9CA17A: FFree1Ad var_88
  loc_9CA17D: ExitProcHresult
  loc_9CA17E: FLdRfVar var_6394
End Sub
