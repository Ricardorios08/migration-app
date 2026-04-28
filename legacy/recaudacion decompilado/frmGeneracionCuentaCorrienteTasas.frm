VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmGeneracionCuentaCorrienteTasas
  Caption = "Generacion  en la Cuenta Corriente de tasas a la propiedad raíz"
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
  ClientWidth = 11700
  ClientHeight = 9300
  Begin VB.CommandButton cmdSalir
    Left = 10800
    Top = 720
    Width = 975
    Height = 855
    TabIndex = 2
    Picture = "frmGeneracionCuentaCorrienteTasas.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame3
    Caption = "GENERACION DEL AFORO EN LA CUENTA CORRIENTE 11-01"
    Left = 600
    Top = 480
    Width = 9375
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
      Left = 3960
      Top = 3120
      Width = 1335
      Height = 495
      TabIndex = 3
      Picture = "frmGeneracionCuentaCorrienteTasas.frx":0252
      Style = 1
    End
    Begin MSDataGridLib.DataGrid dgdABMS
      Left = 720
      Top = 480
      Width = 8400
      Height = 1515
      TabIndex = 1
      OleObjectBlob = "frmGeneracionCuentaCorrienteTasas.frx":0580
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 720
      Top = 2280
      Width = 8385
      Height = 495
      Visible = 0   'False
      TabIndex = 4
      OleObjectBlob = "frmGeneracionCuentaCorrienteTasas.frx":0886
    End
  End
End

Attribute VB_Name = "frmGeneracionCuentaCorrienteTasas"


Private Sub CalculoCmd_Click() 'B8A5B8
  'Data Table: 407A6C
  loc_B8A0A8: LitI2_Byte 0
  loc_B8A0AA: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B8A0AF: FStFPR8 var_A8
  loc_B8A0B2: FLdRfVar var_AA
  loc_B8A0B5: FLdPr Me
  loc_B8A0B8: MemLdRfVar from_stack_1.global_52
  loc_B8A0BB: NewIfNullPr clsliquidacion
  loc_B8A0BE: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B8A0C3: FLdI2 var_AA
  loc_B8A0C6: ImpAdLdI2 MemVar_D93034
  loc_B8A0C9: NeI2
  loc_B8A0CA: BranchF loc_B8A0F9
  loc_B8A0CD: LitStr "02/01/"
  loc_B8A0D0: FLdRfVar var_AA
  loc_B8A0D3: FLdPr Me
  loc_B8A0D6: MemLdRfVar from_stack_1.global_52
  loc_B8A0D9: NewIfNullPr clsliquidacion
  loc_B8A0DC: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B8A0E1: FLdI2 var_AA
  loc_B8A0E4: CStrUI1
  loc_B8A0E6: FStStrNoPop var_B0
  loc_B8A0E9: ConcatStr
  loc_B8A0EA: FStStrNoPop var_B4
  loc_B8A0ED: CDateStr
  loc_B8A0EF: FStFPR8 var_A8
  loc_B8A0F2: FFreeStr var_B0 = ""
  loc_B8A0F9: FLdRfVar var_AA
  loc_B8A0FC: FLdPr Me
  loc_B8A0FF: MemLdRfVar from_stack_1.global_52
  loc_B8A102: NewIfNullPr clsliquidacion
  loc_B8A105: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B8A10A: FLdRfVar var_B6
  loc_B8A10D: FLdPr Me
  loc_B8A110: MemLdRfVar from_stack_1.global_52
  loc_B8A113: NewIfNullPr clsliquidacion
  loc_B8A116: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B8A11B: LitVar_Missing var_130
  loc_B8A11E: LitVar_Missing var_110
  loc_B8A121: LitVar_Missing var_F0
  loc_B8A124: LitI4 4
  loc_B8A129: LitStr "Esta seguro que desea generar en la cuenta corriente la emision masiva. Para el período: "
  loc_B8A12C: FLdI2 var_AA
  loc_B8A12F: CStrUI1
  loc_B8A131: FStStrNoPop var_B0
  loc_B8A134: ConcatStr
  loc_B8A135: FStStrNoPop var_B4
  loc_B8A138: LitStr " Numero: "
  loc_B8A13B: ConcatStr
  loc_B8A13C: FStStrNoPop var_BC
  loc_B8A13F: FLdI2 var_B6
  loc_B8A142: CStrUI1
  loc_B8A144: FStStrNoPop var_C0
  loc_B8A147: ConcatStr
  loc_B8A148: CVarStr var_D0
  loc_B8A14B: ImpAdCallI2 MsgBox(, , , , )
  loc_B8A150: LitI4 6
  loc_B8A155: EqI4
  loc_B8A156: FFreeStr var_B0 = "": var_B4 = "": var_BC = ""
  loc_B8A161: FFreeVar var_D0 = "": var_F0 = "": var_110 = ""
  loc_B8A16C: BranchF loc_B8A5B4
  loc_B8A16F: LitI4 0
  loc_B8A174: FStR4 var_8C
  loc_B8A177: FLdRfVar var_AA
  loc_B8A17A: FLdPr Me
  loc_B8A17D: MemLdRfVar from_stack_1.global_52
  loc_B8A180: NewIfNullPr clsliquidacion
  loc_B8A183: from_stack_1 = clsliquidacion.CodiTili
  loc_B8A188: FLdUI1
  loc_B8A18C: LitI2_Byte 1
  loc_B8A18E: CUI1I2
  loc_B8A190: ImpAdCallFPR4 Proc_270_72_A8BDBC(, )
  loc_B8A195: FStFPR8 var_A0
  loc_B8A198: LitStr "SELECT SUM(TotaLita) as TotaBole, PeriLiqu, BimeLiqu, CodiTili, TipoVenc, NumeLiqu, CodiInmu, CucuPers, ActuLita, FeveLita, TipoLita, EmitLita FROM liqutasa "
  loc_B8A19B: LitStr " WHERE PeriLiqu = "
  loc_B8A19E: ConcatStr
  loc_B8A19F: FStStrNoPop var_B0
  loc_B8A1A2: FLdRfVar var_AA
  loc_B8A1A5: FLdPr Me
  loc_B8A1A8: MemLdRfVar from_stack_1.global_52
  loc_B8A1AB: NewIfNullPr clsliquidacion
  loc_B8A1AE: from_stack_1 = clsliquidacion.PeriLiqu
  loc_B8A1B3: FLdI2 var_AA
  loc_B8A1B6: CStrUI1
  loc_B8A1B8: FStStrNoPop var_B4
  loc_B8A1BB: ConcatStr
  loc_B8A1BC: FStStrNoPop var_BC
  loc_B8A1BF: LitStr " AND CodiTili = "
  loc_B8A1C2: ConcatStr
  loc_B8A1C3: FStStrNoPop var_C0
  loc_B8A1C6: FLdRfVar var_B6
  loc_B8A1C9: FLdPr Me
  loc_B8A1CC: MemLdRfVar from_stack_1.global_52
  loc_B8A1CF: NewIfNullPr clsliquidacion
  loc_B8A1D2: from_stack_1 = clsliquidacion.CodiTili
  loc_B8A1D7: FLdUI1
  loc_B8A1DB: CStrI2
  loc_B8A1DD: FStStrNoPop var_134
  loc_B8A1E0: ConcatStr
  loc_B8A1E1: FStStrNoPop var_138
  loc_B8A1E4: LitStr " AND NumeLiqu = "
  loc_B8A1E7: ConcatStr
  loc_B8A1E8: FStStrNoPop var_140
  loc_B8A1EB: FLdRfVar var_13A
  loc_B8A1EE: FLdPr Me
  loc_B8A1F1: MemLdRfVar from_stack_1.global_52
  loc_B8A1F4: NewIfNullPr clsliquidacion
  loc_B8A1F7: from_stack_1 = clsliquidacion.NumeLiqu
  loc_B8A1FC: FLdI2 var_13A
  loc_B8A1FF: CStrUI1
  loc_B8A201: FStStrNoPop var_144
  loc_B8A204: ConcatStr
  loc_B8A205: FStStrNoPop var_148
  loc_B8A208: LitStr " AND ActuLita = 'No' "
  loc_B8A20B: ConcatStr
  loc_B8A20C: FStStrNoPop var_14C
  loc_B8A20F: LitStr " GROUP BY CodiInmu"
  loc_B8A212: ConcatStr
  loc_B8A213: FStStrNoPop var_150
  loc_B8A216: LitStr " ORDER BY LocaLita, CallLita, NucaLita"
  loc_B8A219: ConcatStr
  loc_B8A21A: FStStrNoPop var_154
  loc_B8A21D: FLdPr Me
  loc_B8A220: MemLdRfVar from_stack_1.global_56
  loc_B8A223: NewIfNullPr clsliqutasa
  loc_B8A226: Call clsliqutasa.RedefineRS(from_stack_1v)
  loc_B8A22B: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_C0 = "": var_134 = "": var_138 = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_B8A246: FLdRfVar var_158
  loc_B8A249: FLdPr Me
  loc_B8A24C: MemLdRfVar from_stack_1.global_56
  loc_B8A24F: NewIfNullPr clsliqutasa
  loc_B8A252: from_stack_1 = clsliqutasa.RecordCount
  loc_B8A257: ILdRf var_158
  loc_B8A25A: LitI4 0
  loc_B8A25F: GtI4
  loc_B8A260: BranchF loc_B8A5B4
  loc_B8A263: LitI2_Byte 0
  loc_B8A265: FLdPr Me
  loc_B8A268: VCallAd Control_ID_CalculoCmd
  loc_B8A26B: FStAdFunc var_15C
  loc_B8A26E: FLdPr var_15C
  loc_B8A271: Me.Enabled = from_stack_1b
  loc_B8A276: FFree1Ad var_15C
  loc_B8A279: LitVar_TRUE var_E0
  loc_B8A27C: PopAdLdVar
  loc_B8A27D: FLdPr Me
  loc_B8A280: VCallAd Control_ID_ProgressBar
  loc_B8A283: FStAdFunc var_15C
  loc_B8A286: FLdPr var_15C
  loc_B8A289: LateIdSt
  loc_B8A28E: FFree1Ad var_15C
  loc_B8A291: LitI2_Byte 0
  loc_B8A293: CR8I2
  loc_B8A294: CVarR4
  loc_B8A298: PopAdLdVar
  loc_B8A299: FLdPr Me
  loc_B8A29C: VCallAd Control_ID_ProgressBar
  loc_B8A29F: FStAdFunc var_15C
  loc_B8A2A2: FLdPr var_15C
  loc_B8A2A5: LateIdSt
  loc_B8A2AA: FFree1Ad var_15C
  loc_B8A2AD: FLdRfVar var_158
  loc_B8A2B0: FLdPr Me
  loc_B8A2B3: MemLdRfVar from_stack_1.global_56
  loc_B8A2B6: NewIfNullPr clsliqutasa
  loc_B8A2B9: from_stack_1 = clsliqutasa.RecordCount
  loc_B8A2BE: ILdRf var_158
  loc_B8A2C1: CR8I4
  loc_B8A2C2: CVarR4
  loc_B8A2C6: PopAdLdVar
  loc_B8A2C7: FLdPr Me
  loc_B8A2CA: VCallAd Control_ID_ProgressBar
  loc_B8A2CD: FStAdFunc var_15C
  loc_B8A2D0: FLdPr var_15C
  loc_B8A2D3: LateIdSt
  loc_B8A2D8: FFree1Ad var_15C
  loc_B8A2DB: LitI2_Byte 0
  loc_B8A2DD: CR8I2
  loc_B8A2DE: CVarR4
  loc_B8A2E2: PopAdLdVar
  loc_B8A2E3: FLdPr Me
  loc_B8A2E6: VCallAd Control_ID_ProgressBar
  loc_B8A2E9: FStAdFunc var_15C
  loc_B8A2EC: FLdPr var_15C
  loc_B8A2EF: LateIdSt
  loc_B8A2F4: FFree1Ad var_15C
  loc_B8A2F7: FLdPr Me
  loc_B8A2FA: MemLdRfVar from_stack_1.global_56
  loc_B8A2FD: NewIfNullPr clsliqutasa
  loc_B8A300: Call clsliqutasa.MoveFirst()
  loc_B8A305: LitStr "UPDATE liquidacion SET ActuLiqu = 'Si' WHERE PeriLiqu = "
  loc_B8A308: FLdRfVar var_AA
  loc_B8A30B: FLdPr Me
  loc_B8A30E: MemLdRfVar from_stack_1.global_56
  loc_B8A311: NewIfNullPr clsliqutasa
  loc_B8A314: from_stack_1 = clsliqutasa.PeriLiqu
  loc_B8A319: FLdI2 var_AA
  loc_B8A31C: CStrUI1
  loc_B8A31E: FStStrNoPop var_B0
  loc_B8A321: ConcatStr
  loc_B8A322: FStStrNoPop var_B4
  loc_B8A325: LitStr " AND CodiOfic = 1 AND CodiTili = "
  loc_B8A328: ConcatStr
  loc_B8A329: FStStrNoPop var_BC
  loc_B8A32C: FLdRfVar var_B6
  loc_B8A32F: FLdPr Me
  loc_B8A332: MemLdRfVar from_stack_1.global_56
  loc_B8A335: NewIfNullPr clsliqutasa
  loc_B8A338: from_stack_1 = clsliqutasa.CodiTili
  loc_B8A33D: FLdUI1
  loc_B8A341: CStrI2
  loc_B8A343: FStStrNoPop var_C0
  loc_B8A346: ConcatStr
  loc_B8A347: FStStrNoPop var_134
  loc_B8A34A: LitStr " AND NumeLiqu = "
  loc_B8A34D: ConcatStr
  loc_B8A34E: FStStrNoPop var_138
  loc_B8A351: FLdRfVar var_13A
  loc_B8A354: FLdPr Me
  loc_B8A357: MemLdRfVar from_stack_1.global_56
  loc_B8A35A: NewIfNullPr clsliqutasa
  loc_B8A35D: from_stack_1 = clsliqutasa.NumeLiqu
  loc_B8A362: FLdUI1
  loc_B8A366: CStrI2
  loc_B8A368: FStStrNoPop var_140
  loc_B8A36B: ConcatStr
  loc_B8A36C: FStStrNoPop var_144
  loc_B8A36F: LitStr ";"
  loc_B8A372: ConcatStr
  loc_B8A373: FStStrNoPop var_148
  loc_B8A376: FLdPr Me
  loc_B8A379: MemLdRfVar from_stack_1.global_56
  loc_B8A37C: NewIfNullPr clsliqutasa
  loc_B8A37F: Call clsliqutasa.EjecutarRsCls(from_stack_1v)
  loc_B8A384: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_C0 = "": var_134 = "": var_138 = "": var_140 = "": var_144 = ""
  loc_B8A399: FLdRfVar var_AA
  loc_B8A39C: FLdPr Me
  loc_B8A39F: MemLdRfVar from_stack_1.global_56
  loc_B8A3A2: NewIfNullPr clsliqutasa
  loc_B8A3A5: from_stack_1 = clsliqutasa.PeriLiqu
  loc_B8A3AA: FLdI2 var_AA
  loc_B8A3AD: FStI2 var_92
  loc_B8A3B0: FLdRfVar var_AA
  loc_B8A3B3: FLdPr Me
  loc_B8A3B6: MemLdRfVar from_stack_1.global_56
  loc_B8A3B9: NewIfNullPr clsliqutasa
  loc_B8A3BC: from_stack_1 = clsliqutasa.EOF
  loc_B8A3C1: FLdI2 var_AA
  loc_B8A3C4: NotI4
  loc_B8A3C5: BranchF loc_B8A4E6
  loc_B8A3C8: ILdRf var_98
  loc_B8A3CB: CR8I4
  loc_B8A3CC: CVarR4
  loc_B8A3D0: PopAdLdVar
  loc_B8A3D1: FLdPr Me
  loc_B8A3D4: VCallAd Control_ID_ProgressBar
  loc_B8A3D7: FStAdFunc var_15C
  loc_B8A3DA: FLdPr var_15C
  loc_B8A3DD: LateIdSt
  loc_B8A3E2: FFree1Ad var_15C
  loc_B8A3E5: ILdRf var_98
  loc_B8A3E8: LitI4 1
  loc_B8A3ED: AddI4
  loc_B8A3EE: FStR4 var_98
  loc_B8A3F1: FLdRfVar var_164
  loc_B8A3F4: FLdPr Me
  loc_B8A3F7: MemLdRfVar from_stack_1.global_56
  loc_B8A3FA: NewIfNullPr clsliqutasa
  loc_B8A3FD: from_stack_1 = clsliqutasa.TotaBole
  loc_B8A402: FLdFPR8 var_164
  loc_B8A405: LitI2_Byte 0
  loc_B8A407: CR8I2
  loc_B8A408: GtR4
  loc_B8A409: FLdRfVar var_AA
  loc_B8A40C: FLdPr Me
  loc_B8A40F: MemLdRfVar from_stack_1.global_56
  loc_B8A412: NewIfNullPr clsliqutasa
  loc_B8A415: from_stack_1 = clsliqutasa.EmitLita
  loc_B8A41A: FLdUI1
  loc_B8A41E: CI2UI1
  loc_B8A420: LitI2_Byte 1
  loc_B8A422: EqI2
  loc_B8A423: AndI4
  loc_B8A424: BranchF loc_B8A43C
  loc_B8A427: ILdRf var_8C
  loc_B8A42A: LitI4 1
  loc_B8A42F: AddI4
  loc_B8A430: FStR4 var_8C
  loc_B8A433: ILdRf var_8C
  loc_B8A436: FStR4 var_90
  loc_B8A439: Branch loc_B8A444
  loc_B8A43C: LitI4 0
  loc_B8A441: FStR4 var_90
  loc_B8A444: FLdRfVar var_AA
  loc_B8A447: FLdPr Me
  loc_B8A44A: MemLdRfVar from_stack_1.global_56
  loc_B8A44D: NewIfNullPr clsliqutasa
  loc_B8A450: from_stack_1 = clsliqutasa.PeriLiqu
  loc_B8A455: FLdRfVar var_B6
  loc_B8A458: FLdPr Me
  loc_B8A45B: MemLdRfVar from_stack_1.global_56
  loc_B8A45E: NewIfNullPr clsliqutasa
  loc_B8A461: from_stack_1 = clsliqutasa.BimeLiqu
  loc_B8A466: FLdRfVar var_13A
  loc_B8A469: FLdPr Me
  loc_B8A46C: MemLdRfVar from_stack_1.global_56
  loc_B8A46F: NewIfNullPr clsliqutasa
  loc_B8A472: from_stack_1 = clsliqutasa.CodiTili
  loc_B8A477: FLdRfVar var_166
  loc_B8A47A: FLdPr Me
  loc_B8A47D: MemLdRfVar from_stack_1.global_56
  loc_B8A480: NewIfNullPr clsliqutasa
  loc_B8A483: from_stack_1 = clsliqutasa.NumeLiqu
  loc_B8A488: FLdRfVar var_158
  loc_B8A48B: FLdPr Me
  loc_B8A48E: MemLdRfVar from_stack_1.global_56
  loc_B8A491: NewIfNullPr clsliqutasa
  loc_B8A494: from_stack_1 = clsliqutasa.CodiInmu
  loc_B8A499: ILdRf var_88
  loc_B8A49C: FLdRfVar var_B0
  loc_B8A49F: FLdR8 var_A8
  loc_B8A4A2: FLdR8 var_A0
  loc_B8A4A5: FLdI2 var_92
  loc_B8A4A8: ILdRf var_90
  loc_B8A4AB: ILdRf var_158
  loc_B8A4AE: FLdUI1
  loc_B8A4B2: FLdUI1
  loc_B8A4B6: FLdUI1
  loc_B8A4BA: FLdI2 var_AA
  loc_B8A4BD: FLdPr Me
  loc_B8A4C0: MemLdRfVar from_stack_1.global_56
  loc_B8A4C3: NewIfNullPr clsliqutasa
  loc_B8A4C6: from_stack_10v = clsliqutasa.GeneracionCuentaCorriente(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_B8A4CB: ILdRf var_B0
  loc_B8A4CE: ConcatStr
  loc_B8A4CF: FStStr var_88
  loc_B8A4D2: FFree1Str var_B0
  loc_B8A4D5: FLdPr Me
  loc_B8A4D8: MemLdRfVar from_stack_1.global_56
  loc_B8A4DB: NewIfNullPr clsliqutasa
  loc_B8A4DE: Call clsliqutasa.MoveSiguiente()
  loc_B8A4E3: Branch loc_B8A3B0
  loc_B8A4E6: ILdRf var_88
  loc_B8A4E9: LitStr vbNullString
  loc_B8A4EC: NeStr
  loc_B8A4EE: BranchF loc_B8A4F9
  loc_B8A4F1: ILdRf var_88
  loc_B8A4F4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B8A4F9: LitVar_FALSE
  loc_B8A4FD: PopAdLdVar
  loc_B8A4FE: FLdPr Me
  loc_B8A501: VCallAd Control_ID_ProgressBar
  loc_B8A504: FStAdFunc var_15C
  loc_B8A507: FLdPr var_15C
  loc_B8A50A: LateIdSt
  loc_B8A50F: FFree1Ad var_15C
  loc_B8A512: LitStr "Proceso Terminado. Verifique en la cuenta corriente la generación de los aforos"
  loc_B8A515: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B8A51A: LitI2_Byte &HFF
  loc_B8A51C: FLdPr Me
  loc_B8A51F: VCallAd Control_ID_CalculoCmd
  loc_B8A522: FStAdFunc var_15C
  loc_B8A525: FLdPr var_15C
  loc_B8A528: Me.Enabled = from_stack_1b
  loc_B8A52D: FFree1Ad var_15C
  loc_B8A530: LitStr "SELECT liquidacion.PeriLiqu, liquidacion.CodiTili, tipoliqu.DetaTili, liquidacion.NumeLiqu, liquidacion.ActuLiqu, liquidacion.FealLiqu FROM liquidacion "
  loc_B8A533: LitStr " LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili "
  loc_B8A536: ConcatStr
  loc_B8A537: FStStrNoPop var_B0
  loc_B8A53A: LitStr " WHERE liquidacion.CodiOfic = 1 AND liquidacion.ActuLiqu = 'No' ORDER BY liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, liquidacion.NumeLiqu"
  loc_B8A53D: ConcatStr
  loc_B8A53E: FStStrNoPop var_B4
  loc_B8A541: FLdPr Me
  loc_B8A544: MemLdRfVar from_stack_1.global_52
  loc_B8A547: NewIfNullPr clsliquidacion
  loc_B8A54A: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_B8A54F: FFreeStr var_B0 = ""
  loc_B8A556: LitI4 0
  loc_B8A55B: LitI4 1
  loc_B8A560: FLdRfVar var_16C
  loc_B8A563: Redim
  loc_B8A56D: FLdPr Me
  loc_B8A570: MemLdRfVar from_stack_1.global_52
  loc_B8A573: NewIfNullAd
  loc_B8A576: FStAd var_15C 
  loc_B8A57A: FLdRfVar var_15C
  loc_B8A57D: CVarRef
  loc_B8A582: ParmAry1St
  loc_B8A588: FLdPr Me
  loc_B8A58B: VCallAd Control_ID_dgdABMS
  loc_B8A58E: CVarAd
  loc_B8A592: ParmAry1St
  loc_B8A598: FLdRfVar var_16C
  loc_B8A59B: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B8A5A0: ILdRf var_15C
  loc_B8A5A3: CastAd
  loc_B8A5A6: FLdPr Me
  loc_B8A5A9: MemStAdFunc
  loc_B8A5AD: FLdRfVar var_16C
  loc_B8A5B0: Erase
  loc_B8A5B1: FFree1Ad var_15C
  loc_B8A5B4: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8994C
  'Data Table: 407A6C
  loc_A898C4: LitStr "SELECT liquidacion.PeriLiqu, liquidacion.CodiTili, tipoliqu.DetaTili, liquidacion.NumeLiqu, liquidacion.ActuLiqu, liquidacion.FealLiqu FROM liquidacion "
  loc_A898C7: LitStr " LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili "
  loc_A898CA: ConcatStr
  loc_A898CB: FStStrNoPop var_88
  loc_A898CE: LitStr " WHERE liquidacion.CodiOfic = 1 AND liquidacion.ActuLiqu = 'No' ORDER BY liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, liquidacion.NumeLiqu"
  loc_A898D1: ConcatStr
  loc_A898D2: FStStrNoPop var_8C
  loc_A898D5: FLdPr Me
  loc_A898D8: MemLdRfVar from_stack_1.global_52
  loc_A898DB: NewIfNullPr clsliquidacion
  loc_A898DE: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A898E3: FFreeStr var_88 = ""
  loc_A898EA: LitI4 0
  loc_A898EF: LitI4 1
  loc_A898F4: FLdRfVar var_90
  loc_A898F7: Redim
  loc_A89901: FLdPr Me
  loc_A89904: MemLdRfVar from_stack_1.global_52
  loc_A89907: NewIfNullAd
  loc_A8990A: FStAd var_94 
  loc_A8990E: FLdRfVar var_94
  loc_A89911: CVarRef
  loc_A89916: ParmAry1St
  loc_A8991C: FLdPr Me
  loc_A8991F: VCallAd Control_ID_dgdABMS
  loc_A89922: CVarAd
  loc_A89926: ParmAry1St
  loc_A8992C: FLdRfVar var_90
  loc_A8992F: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A89934: ILdRf var_94
  loc_A89937: CastAd
  loc_A8993A: FLdPr Me
  loc_A8993D: MemStAdFunc
  loc_A89941: FLdRfVar var_90
  loc_A89944: Erase
  loc_A89945: FFree1Ad var_94
  loc_A89948: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B9380
  'Data Table: 407A6C
  loc_9B936C: ILdI2 KeyCode
  loc_9B936F: CI4UI1
  loc_9B9370: LitI4 &H78
  loc_9B9375: EqI4
  loc_9B9376: BranchF loc_9B937E
  loc_9B9379: Call cmdSalir_Click()
  loc_9B937E: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9D8878
  'Data Table: 407A6C
  loc_9D8860: ILdRf Me
  loc_9D8863: FStAdNoPop
  loc_9D8867: ImpAdLdRf MemVar_D9C5D8
  loc_9D886A: NewIfNullPr Global
  loc_9D886D: Global.Unload from_stack_1
  loc_9D8872: FFree1Ad var_88
  loc_9D8875: ExitProcHresult
End Sub
