VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmEjecutar
  Caption = "Ejecución de Procesos Auxiliares"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmEjecutar.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 13545
  ClientHeight = 9135
  Begin VB.CommandButton cmdGenerarEjecxProv
    Caption = "Generar Ejec. x Prov"
    Left = 360
    Top = 7080
    Width = 5175
    Height = 255
    TabIndex = 12
  End
  Begin VB.CommandButton cmdEnviaEmail
    Caption = "Envia Email"
    Left = 5760
    Top = 7080
    Width = 5175
    Height = 255
    TabIndex = 11
  End
  Begin VB.Frame FrameDgd
    Caption = " Procesos que usan el datagrid "
    Left = 120
    Top = 3840
    Width = 11055
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton OPsinChequeCmd
      Caption = "O.P. sin Cheque"
      Left = 5640
      Top = 240
      Width = 5175
      Height = 255
      TabIndex = 10
    End
    Begin VB.CommandButton ExorImpucondiferencias
      Caption = "ExorImpu con Diferencias"
      Left = 240
      Top = 600
      Width = 5175
      Height = 255
      TabIndex = 9
    End
    Begin VB.CommandButton cmdRevisaLiquidanetovsCheque
      Caption = "Revisa Liquidaneto vs Cheque"
      Left = 240
      Top = 240
      Width = 5175
      Height = 255
      TabIndex = 8
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 120
    Width = 13095
    Height = 3135
    TabIndex = 0
    OleObjectBlob = "frmEjecutar.frx":08CA
  End
  Begin VB.CommandButton RevisaCuitCuil
    Caption = "Revisa Cuil-Cuit"
    Left = 360
    Top = 6600
    Width = 5175
    Height = 255
    TabIndex = 5
  End
  Begin VB.CommandButton RevisaCodiCucoCmd
    Caption = "Revisa CodiCuco"
    Left = 360
    Top = 5640
    Width = 5175
    Height = 255
    TabIndex = 3
  End
  Begin VB.CommandButton ImputaSueldos
    Caption = "Imputa Sueldos"
    Left = 360
    Top = 6120
    Width = 5175
    Height = 255
    TabIndex = 4
  End
  Begin VB.CommandButton RevisaImpuPartCmd
    Caption = "Revisa ImpuPart"
    Left = 360
    Top = 5160
    Width = 5175
    Height = 255
    TabIndex = 2
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 120
    Top = 3360
    Width = 13095
    Height = 375
    TabIndex = 1
    OleObjectBlob = "frmEjecutar.frx":0A76
  End
  Begin VB.CommandButton cmdSalir
    Left = 7440
    Top = 8040
    Width = 855
    Height = 615
    TabIndex = 6
    Picture = "frmEjecutar.frx":0ADE
    Style = 1
  End
End

Attribute VB_Name = "frmEjecutar"


Private Sub cmdSalir_Click() '956B24
  'Data Table: 43A46C
  loc_956B0C: ILdRf Me
  loc_956B0F: FStAdNoPop
  loc_956B13: ImpAdLdRf MemVar_C44F9C
  loc_956B16: NewIfNullPr Me
  loc_956B19: Me.Global.Unload from_stack_1
  loc_956B1E: FFree1Ad var_88
  loc_956B21: ExitProcHresult
  loc_956B22: ExitProcCy
End Sub

Private Sub RevisaCodiCucoCmd_Click() 'A44AD0
  'Data Table: 43A46C
  loc_A448A0: ILdRf Me
  loc_A448A3: CastAd
  loc_A448A6: FStAdFunc var_90
  loc_A448A9: FLdRfVar var_90
  loc_A448AC: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A448B1: FFree1Ad var_90
  loc_A448B4: LitStr "SELECT * FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_A448B7: ImpAdLdI2 MemVar_C3D064
  loc_A448BA: CStrUI1
  loc_A448BC: FStStrNoPop var_94
  loc_A448BF: ConcatStr
  loc_A448C0: FStStrNoPop var_98
  loc_A448C3: FLdRfVar var_88
  loc_A448C6: NewIfNullPr clscuentacontable
  loc_A448C9: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A448CE: FFreeStr var_94 = ""
  loc_A448D5: FLdRfVar var_9C
  loc_A448D8: FLdRfVar var_88
  loc_A448DB: NewIfNullPr clscuentacontable
  loc_A448DE: from_stack_1 = clscuentacontable.RecordCount
  loc_A448E3: ILdRf var_9C
  loc_A448E6: LitI4 0
  loc_A448EB: GtI4
  loc_A448EC: BranchF loc_A44AAE
  loc_A448EF: FLdRfVar var_88
  loc_A448F2: NewIfNullPr clscuentacontable
  loc_A448F5: Call clscuentacontable.MoveFirst()
  loc_A448FA: FLdRfVar var_9E
  loc_A448FD: FLdRfVar var_88
  loc_A44900: NewIfNullPr clscuentacontable
  loc_A44903: from_stack_1 = clscuentacontable.EOF
  loc_A44908: FLdI2 var_9E
  loc_A4490B: NotI4
  loc_A4490C: BranchF loc_A44AAE
  loc_A4490F: FLdRfVar var_9E
  loc_A44912: FLdRfVar var_C8
  loc_A44915: FLdRfVar var_B8
  loc_A44918: LitVarStr var_B4, "CodiCuco"
  loc_A4491D: PopAdLdVar
  loc_A4491E: FLdRfVar var_A4
  loc_A44921: FLdRfVar var_90
  loc_A44924: FLdRfVar var_88
  loc_A44927: NewIfNullPr clscuentacontable
  loc_A4492A: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A4492F: FLdPr var_90
  loc_A44932:  = Me.Fields
  loc_A44937: FLdPr var_A4
  loc_A4493A: from_stack_2 = Me.Item(from_stack_1)
  loc_A4493F: FLdPr var_B8
  loc_A44942:  = Me.Value
  loc_A44947: FLdRfVar var_C8
  loc_A4494A: CStrVarTmp
  loc_A4494B: FStStrNoPop var_94
  loc_A4494E: FLdRfVar var_88
  loc_A44951: NewIfNullPr clscuentacontable
  loc_A44954: from_stack_2v = clscuentacontable.NivelCuentaContable(from_stack_1v)
  loc_A44959: FLdUI1
  loc_A4495D: CI2UI1
  loc_A4495F: LitI2_Byte 1
  loc_A44961: GtI2
  loc_A44962: FFree1Str var_94
  loc_A44965: FFreeAd var_90 = "": var_A4 = ""
  loc_A4496E: FFree1Var var_C8 = ""
  loc_A44971: BranchF loc_A44AA0
  loc_A44974: FLdRfVar var_160
  loc_A44977: FLdRfVar var_124
  loc_A4497A: LitVarStr var_120, "CodiCuco"
  loc_A4497F: PopAdLdVar
  loc_A44980: FLdRfVar var_110
  loc_A44983: FLdRfVar var_10C
  loc_A44986: FLdRfVar var_88
  loc_A44989: NewIfNullPr clscuentacontable
  loc_A4498C: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A44991: FLdPr var_10C
  loc_A44994:  = Me.Fields
  loc_A44999: FLdPr var_110
  loc_A4499C: from_stack_2 = Me.Item(from_stack_1)
  loc_A449A1: FLdPr var_124
  loc_A449A4:  = Me.Value
  loc_A449A9: FLdRfVar var_150
  loc_A449AC: FLdRfVar var_140
  loc_A449AF: LitVarStr var_13C, "CodiCuco"
  loc_A449B4: PopAdLdVar
  loc_A449B5: FLdRfVar var_12C
  loc_A449B8: FLdRfVar var_128
  loc_A449BB: FLdRfVar var_88
  loc_A449BE: NewIfNullPr clscuentacontable
  loc_A449C1: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A449C6: FLdPr var_128
  loc_A449C9:  = Me.Fields
  loc_A449CE: FLdPr var_12C
  loc_A449D1: from_stack_2 = Me.Item(from_stack_1)
  loc_A449D6: FLdPr var_140
  loc_A449D9:  = Me.Value
  loc_A449DE: FLdRfVar var_9E
  loc_A449E1: FLdRfVar var_150
  loc_A449E4: CStrVarTmp
  loc_A449E5: FStStrNoPop var_94
  loc_A449E8: FLdRfVar var_88
  loc_A449EB: NewIfNullPr clscuentacontable
  loc_A449EE: from_stack_2v = clscuentacontable.NivelCuentaContable(from_stack_1v)
  loc_A449F3: LitVarStr var_D8, "UPDATE infogov.cuentacontable SET ImpuCuco = 0 WHERE PeriInfo = "
  loc_A449F8: FLdRfVar var_C8
  loc_A449FB: FLdRfVar var_B8
  loc_A449FE: LitVarStr var_B4, "PeriInfo"
  loc_A44A03: PopAdLdVar
  loc_A44A04: FLdRfVar var_A4
  loc_A44A07: FLdRfVar var_90
  loc_A44A0A: FLdRfVar var_88
  loc_A44A0D: NewIfNullPr clscuentacontable
  loc_A44A10: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A44A15: FLdPr var_90
  loc_A44A18:  = Me.Fields
  loc_A44A1D: FLdPr var_A4
  loc_A44A20: from_stack_2 = Me.Item(from_stack_1)
  loc_A44A25: FLdPr var_B8
  loc_A44A28:  = Me.Value
  loc_A44A2D: FLdRfVar var_C8
  loc_A44A30: ConcatVar var_E8
  loc_A44A34: LitVarStr var_F8, " AND CodiCuco = "
  loc_A44A39: ConcatVar var_108
  loc_A44A3D: FLdRfVar var_164
  loc_A44A40: FLdUI1
  loc_A44A44: CI2UI1
  loc_A44A46: FLdRfVar var_160
  loc_A44A49: CStrVarTmp
  loc_A44A4A: FStStrNoPop var_98
  loc_A44A4D: FLdRfVar var_88
  loc_A44A50: NewIfNullPr clscuentacontable
  loc_A44A53: from_stack_3v = clscuentacontable.CuentaContableNivelSuperior(from_stack_1v, from_stack_2v)
  loc_A44A58: FLdZeroAd var_164
  loc_A44A5B: CVarStr var_174
  loc_A44A5E: ConcatVar var_184
  loc_A44A62: CStrVarVal var_188
  loc_A44A66: FLdRfVar var_8C
  loc_A44A69: NewIfNullPr clscuentacontable
  loc_A44A6C: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A44A71: FFreeStr var_94 = "": var_98 = ""
  loc_A44A7A: FFreeAd var_90 = "": var_A4 = "": var_B8 = "": var_10C = "": var_110 = "": var_128 = "": var_12C = "": var_140 = ""
  loc_A44A8F: FFreeVar var_C8 = "": var_E8 = "": var_150 = "": var_160 = "": var_108 = "": var_174 = ""
  loc_A44AA0: FLdRfVar var_88
  loc_A44AA3: NewIfNullPr clscuentacontable
  loc_A44AA6: Call clscuentacontable.MoveSiguiente()
  loc_A44AAB: Branch loc_A448FA
  loc_A44AAE: LitI4 0
  loc_A44AB3: LitStr "EL PROCESO HA TERMINADO"
  loc_A44AB6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A44ABB: ILdRf Me
  loc_A44ABE: CastAd
  loc_A44AC1: FStAdFunc var_90
  loc_A44AC4: FLdRfVar var_90
  loc_A44AC7: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_A44ACC: FFree1Ad var_90
  loc_A44ACF: ExitProcHresult
End Sub

Private Sub cmdEnviaEmail_Click() '9A5150
  'Data Table: 43A46C
  loc_9A50E0: FLdRfVar var_88
  loc_9A50E3: NewIfNullRf
  loc_9A50E7: LitI2_Byte 6
  loc_9A50E9: CStrUI1
  loc_9A50EB: FStStrNoPop var_90
  loc_9A50EE: ImpAdCallFPR4 Proc_259_32_AE0B0C(, )
  loc_9A50F3: FFree1Str var_90
  loc_9A50F6: FLdRfVar var_90
  loc_9A50F9: FLdRfVar var_88
  loc_9A50FC: NewIfNullPr tbltipocompra
  loc_9A50FF: from_stack_1v = tbltipocompra.MareTicoGet()
  loc_9A5104: FLdRfVar var_94
  loc_9A5107: FLdRfVar var_88
  loc_9A510A: NewIfNullPr tbltipocompra
  loc_9A510D: from_stack_1v = tbltipocompra.DetaPersGet()
  loc_9A5112: FLdRfVar var_A4
  loc_9A5115: ImpAdCallFPR4  = Now
  loc_9A511A: FLdRfVar var_8C
  loc_9A511D: NewIfNullRf
  loc_9A5121: LitVarStr var_B4, "Esto es una prueba de INFOGOV S.A.<br>Enviado: "
  loc_9A5126: FLdRfVar var_A4
  loc_9A5129: ConcatVar var_C4
  loc_9A512D: CStrVarVal var_C8
  loc_9A5131: LitStr "Prueba InfoGov"
  loc_9A5134: ILdRf var_94
  loc_9A5137: ILdRf var_90
  loc_9A513A: ImpAdCallFPR4 Proc_261_72_A07AE8(, , , , )
  loc_9A513F: FFreeStr var_90 = "": var_94 = ""
  loc_9A5148: FFreeVar var_A4 = ""
  loc_9A514F: ExitProcHresult
End Sub

Private Sub RevisaCuitCuil_Click() 'A2AF5C
  'Data Table: 43A46C
  loc_A2ADD0: LitStr "SELECT * FROM migracion.plan_trabajar_2 WHERE LENGTH(dni) = 8;"
  loc_A2ADD3: FLdRfVar var_88
  loc_A2ADD6: NewIfNullPr clspersonas
  loc_A2ADD9: Call clspersonas.RedefineRS(from_stack_1v)
  loc_A2ADDE: FLdRfVar var_88
  loc_A2ADE1: NewIfNullPr clspersonas
  loc_A2ADE4: Call clspersonas.MoveFirst()
  loc_A2ADE9: FLdRfVar var_8A
  loc_A2ADEC: FLdRfVar var_88
  loc_A2ADEF: NewIfNullPr clspersonas
  loc_A2ADF2: from_stack_1 = clspersonas.EOF
  loc_A2ADF7: FLdI2 var_8A
  loc_A2ADFA: NotI4
  loc_A2ADFB: BranchF loc_A2AF4C
  loc_A2ADFE: FLdRfVar var_B8
  loc_A2AE01: FLdRfVar var_A8
  loc_A2AE04: LitVarStr var_A4, "sexo"
  loc_A2AE09: PopAdLdVar
  loc_A2AE0A: FLdRfVar var_94
  loc_A2AE0D: FLdRfVar var_90
  loc_A2AE10: FLdRfVar var_88
  loc_A2AE13: NewIfNullPr clspersonas
  loc_A2AE16: from_stack_1v = clspersonas.RsFrmGet()
  loc_A2AE1B: FLdPr var_90
  loc_A2AE1E:  = Me.Fields
  loc_A2AE23: FLdPr var_94
  loc_A2AE26: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AE2B: FLdPr var_A8
  loc_A2AE2E:  = Me.Value
  loc_A2AE33: LitVar_FALSE
  loc_A2AE37: LitVar_TRUE var_108
  loc_A2AE3A: FLdRfVar var_B8
  loc_A2AE3D: LitVarStr var_C8, "M"
  loc_A2AE42: HardType
  loc_A2AE43: EqVar var_D8
  loc_A2AE47: FStVar var_E8
  loc_A2AE4B: FLdRfVar var_E8
  loc_A2AE4E: FLdRfVar var_138
  loc_A2AE51: ImpAdCallFPR4  = IIf(, , )
  loc_A2AE56: FLdRfVar var_168
  loc_A2AE59: FLdRfVar var_154
  loc_A2AE5C: LitVarStr var_150, "DNI"
  loc_A2AE61: PopAdLdVar
  loc_A2AE62: FLdRfVar var_140
  loc_A2AE65: FLdRfVar var_13C
  loc_A2AE68: FLdRfVar var_88
  loc_A2AE6B: NewIfNullPr clspersonas
  loc_A2AE6E: from_stack_1v = clspersonas.RsFrmGet()
  loc_A2AE73: FLdPr var_13C
  loc_A2AE76:  = Me.Fields
  loc_A2AE7B: FLdPr var_140
  loc_A2AE7E: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AE83: FLdPr var_154
  loc_A2AE86:  = Me.Value
  loc_A2AE8B: LitStr "UPDATE migracion.plan_trabajar_2 SET CucuPers = "
  loc_A2AE8E: FLdRfVar var_170
  loc_A2AE91: FLdRfVar var_168
  loc_A2AE94: CStrVarTmp
  loc_A2AE95: PopTmpLdAdStr
  loc_A2AE99: FLdRfVar var_138
  loc_A2AE9C: CBoolVar
  loc_A2AE9E: PopTmpLdAd2 var_156
  loc_A2AEA1: LitI2_Byte &HFF
  loc_A2AEA3: PopTmpLdAd2 var_8A
  loc_A2AEA6: Call Proc_112_13_A682E0()
  loc_A2AEAB: ILdRf var_170
  loc_A2AEAE: ConcatStr
  loc_A2AEAF: FStStrNoPop var_174
  loc_A2AEB2: LitStr " WHERE DNI = "
  loc_A2AEB5: ConcatStr
  loc_A2AEB6: CVarStr var_1B0
  loc_A2AEB9: FLdRfVar var_1A0
  loc_A2AEBC: FLdRfVar var_190
  loc_A2AEBF: LitVarStr var_18C, "DNI"
  loc_A2AEC4: PopAdLdVar
  loc_A2AEC5: FLdRfVar var_17C
  loc_A2AEC8: FLdRfVar var_178
  loc_A2AECB: FLdRfVar var_88
  loc_A2AECE: NewIfNullPr clspersonas
  loc_A2AED1: from_stack_1v = clspersonas.RsFrmGet()
  loc_A2AED6: FLdPr var_178
  loc_A2AED9:  = Me.Fields
  loc_A2AEDE: FLdPr var_17C
  loc_A2AEE1: from_stack_2 = Me.Item(from_stack_1)
  loc_A2AEE6: FLdPr var_190
  loc_A2AEE9:  = Me.Value
  loc_A2AEEE: FLdRfVar var_1A0
  loc_A2AEF1: ConcatVar var_1C0
  loc_A2AEF5: LitVarStr var_1D0, ";"
  loc_A2AEFA: ConcatVar var_1E0
  loc_A2AEFE: CStrVarVal var_1E4
  loc_A2AF02: Call Proc_112_11_9935EC()
  loc_A2AF07: FFreeStr var_16C = "": var_170 = "": var_174 = ""
  loc_A2AF12: FFreeAd var_90 = "": var_94 = "": var_A8 = "": var_13C = "": var_140 = "": var_154 = "": var_178 = "": var_17C = ""
  loc_A2AF27: FFreeVar var_B8 = "": var_E8 = "": var_108 = "": var_128 = "": var_138 = "": var_168 = "": var_1B0 = "": var_1A0 = "": var_1C0 = ""
  loc_A2AF3E: FLdRfVar var_88
  loc_A2AF41: NewIfNullPr clspersonas
  loc_A2AF44: Call clspersonas.MoveSiguiente()
  loc_A2AF49: Branch loc_A2ADE9
  loc_A2AF4C: LitI4 0
  loc_A2AF51: LitStr "Termino la actualizacion..."
  loc_A2AF54: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A2AF59: ExitProcHresult
End Sub

Private Sub ImputaSueldos_Click() 'B30428
  'Data Table: 43A46C
  loc_B2FB34: LitVar_Missing var_188
  loc_B2FB37: LitVar_Missing var_168
  loc_B2FB3A: LitVar_Missing var_148
  loc_B2FB3D: LitVar_Missing var_128
  loc_B2FB40: LitVar_Missing var_108
  loc_B2FB43: LitVarStr var_D8, "Expediente Original"
  loc_B2FB48: FStVarCopyObj var_E8
  loc_B2FB4B: FLdRfVar var_E8
  loc_B2FB4E: LitVarStr var_B8, "Ingrese el expediente original..."
  loc_B2FB53: FStVarCopyObj var_C8
  loc_B2FB56: FLdRfVar var_C8
  loc_B2FB59: ImpAdCallI2 InputBox(, , , , , , )
  loc_B2FB5E: FStStr var_9C
  loc_B2FB61: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_B2FB72: LitI2_Byte 0
  loc_B2FB74: PopTmpLdAd2 var_18E
  loc_B2FB77: LitI2_Byte 0
  loc_B2FB79: PopTmpLdAd2 var_18C
  loc_B2FB7C: LitI2_Byte 0
  loc_B2FB7E: PopTmpLdAd2 var_18A
  loc_B2FB81: ILdRf var_9C
  loc_B2FB84: LitStr "Expediente Original"
  loc_B2FB87: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_B2FB8C: FStStr var_A8
  loc_B2FB8F: ILdRf var_A8
  loc_B2FB92: LitStr vbNullString
  loc_B2FB95: NeStr
  loc_B2FB97: BranchF loc_B2FBA8
  loc_B2FB9A: LitI4 0
  loc_B2FB9F: LitStr "Revise el expediente original"
  loc_B2FBA2: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B2FBA7: ExitProcHresult
  loc_B2FBA8: LitVar_Missing var_188
  loc_B2FBAB: LitVar_Missing var_168
  loc_B2FBAE: LitVar_Missing var_148
  loc_B2FBB1: LitVar_Missing var_128
  loc_B2FBB4: LitVar_Missing var_108
  loc_B2FBB7: LitVarStr var_D8, "Detalle Imputacion"
  loc_B2FBBC: FStVarCopyObj var_E8
  loc_B2FBBF: FLdRfVar var_E8
  loc_B2FBC2: LitVarStr var_B8, "Ingrese el detalle imputacion ..."
  loc_B2FBC7: FStVarCopyObj var_C8
  loc_B2FBCA: FLdRfVar var_C8
  loc_B2FBCD: ImpAdCallI2 InputBox(, , , , , , )
  loc_B2FBD2: FStStr var_94
  loc_B2FBD5: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_B2FBE6: LitI2_Byte 0
  loc_B2FBE8: PopTmpLdAd2 var_18E
  loc_B2FBEB: LitI2_Byte 0
  loc_B2FBED: PopTmpLdAd2 var_18C
  loc_B2FBF0: LitI2_Byte 0
  loc_B2FBF2: PopTmpLdAd2 var_18A
  loc_B2FBF5: ILdRf var_94
  loc_B2FBF8: LitStr "Detalle imputacion"
  loc_B2FBFB: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_B2FC00: FStStr var_A8
  loc_B2FC03: ILdRf var_A8
  loc_B2FC06: LitStr vbNullString
  loc_B2FC09: NeStr
  loc_B2FC0B: BranchF loc_B2FC1C
  loc_B2FC0E: LitI4 0
  loc_B2FC13: LitStr "Revise el detalle imputacion"
  loc_B2FC16: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B2FC1B: ExitProcHresult
  loc_B2FC1C: LitVar_Missing var_188
  loc_B2FC1F: LitVar_Missing var_168
  loc_B2FC22: LitVar_Missing var_148
  loc_B2FC25: LitVar_Missing var_128
  loc_B2FC28: LitVar_Missing var_108
  loc_B2FC2B: LitVarStr var_D8, "Fecha Imputacion"
  loc_B2FC30: FStVarCopyObj var_E8
  loc_B2FC33: FLdRfVar var_E8
  loc_B2FC36: LitVarStr var_B8, "Ingrese la fecha imputacion ..."
  loc_B2FC3B: FStVarCopyObj var_C8
  loc_B2FC3E: FLdRfVar var_C8
  loc_B2FC41: ImpAdCallI2 InputBox(, , , , , , )
  loc_B2FC46: FStStr var_98
  loc_B2FC49: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = "": var_168 = ""
  loc_B2FC5A: LitI2_Byte 0
  loc_B2FC5C: PopTmpLdAd2 var_18E
  loc_B2FC5F: LitI2_Byte 0
  loc_B2FC61: PopTmpLdAd2 var_18C
  loc_B2FC64: LitI2_Byte 0
  loc_B2FC66: PopTmpLdAd2 var_18A
  loc_B2FC69: ILdRf var_98
  loc_B2FC6C: LitStr "Fecha imputacion"
  loc_B2FC6F: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_B2FC74: FStStr var_A8
  loc_B2FC77: ILdRf var_A8
  loc_B2FC7A: LitStr vbNullString
  loc_B2FC7D: NeStr
  loc_B2FC7F: BranchF loc_B2FC90
  loc_B2FC82: LitI4 0
  loc_B2FC87: LitStr "Revise la fecha imputacion"
  loc_B2FC8A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B2FC8F: ExitProcHresult
  loc_B2FC90: LitI2_Byte &HFF
  loc_B2FC92: PopTmpLdAd2 var_18A
  loc_B2FC95: LitNothing
  loc_B2FC97: CastAd
  loc_B2FC9A: FStAdFunc var_194
  loc_B2FC9D: FLdRfVar var_194
  loc_B2FCA0: LitStr "01/01/2018"
  loc_B2FCA3: LitI2_Byte &HFF
  loc_B2FCA5: LitI2_Byte &HFF
  loc_B2FCA7: ILdRf var_98
  loc_B2FCAA: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_B2FCAF: FStStr var_A8
  loc_B2FCB2: FFree1Ad var_194
  loc_B2FCB5: ILdRf var_A8
  loc_B2FCB8: LitStr vbNullString
  loc_B2FCBB: NeStr
  loc_B2FCBD: BranchF loc_B2FCD8
  loc_B2FCC0: LitI4 0
  loc_B2FCC5: LitStr "Revise la fecha imputacion "
  loc_B2FCC8: ILdRf var_A8
  loc_B2FCCB: ConcatStr
  loc_B2FCCC: FStStrNoPop var_198
  loc_B2FCCF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B2FCD4: FFree1Str var_198
  loc_B2FCD7: ExitProcHresult
  loc_B2FCD8: LitStr "Municipalidad de Guaymallén"
  loc_B2FCDB: FStStrCopy var_19C
  loc_B2FCDE: ILdRf var_19C
  loc_B2FCE1: LitStr "Municipalidad de Tunuyán"
  loc_B2FCE4: EqStr
  loc_B2FCE6: BranchF loc_B2FD05
  loc_B2FCE9: LitI4 0
  loc_B2FCEE: ILdRf var_9C
  loc_B2FCF1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B2FCF6: LitStr "010900"
  loc_B2FCF9: FStStrCopy var_A0
  loc_B2FCFC: LitStr "30999169569"
  loc_B2FCFF: FStStrCopy var_A4
  loc_B2FD02: Branch loc_B2FD1C
  loc_B2FD05: ILdRf var_19C
  loc_B2FD08: LitStr "Municipalidad de Malargüe"
  loc_B2FD0B: EqStr
  loc_B2FD0D: BranchF loc_B2FD1C
  loc_B2FD10: LitStr "019000"
  loc_B2FD13: FStStrCopy var_A0
  loc_B2FD16: LitStr "20319858092"
  loc_B2FD19: FStStrCopy var_A4
  loc_B2FD1C: LitStr "SELECT CodiPart, CodiOrga, Sum(ImpoImpu) AS ImpoImpu, ExorImpu"
  loc_B2FD1F: LitStr " FROM imputasueldos"
  loc_B2FD22: ConcatStr
  loc_B2FD23: FStStrNoPop var_198
  loc_B2FD26: LitStr " WHERE ExorImpu = '"
  loc_B2FD29: ConcatStr
  loc_B2FD2A: FStStrNoPop var_1A0
  loc_B2FD2D: ILdRf var_9C
  loc_B2FD30: ConcatStr
  loc_B2FD31: FStStrNoPop var_1A4
  loc_B2FD34: LitStr "'"
  loc_B2FD37: ConcatStr
  loc_B2FD38: FStStrNoPop var_1A8
  loc_B2FD3B: LitStr " GROUP BY CodiPart, CodiOrga"
  loc_B2FD3E: ConcatStr
  loc_B2FD3F: FStStrNoPop var_1AC
  loc_B2FD42: LitStr " ORDER BY CodiPart, CodiOrga;"
  loc_B2FD45: ConcatStr
  loc_B2FD46: FStStrNoPop var_1B0
  loc_B2FD49: FLdRfVar var_88
  loc_B2FD4C: NewIfNullPr clsbase
  loc_B2FD4F: Call clsbase.RedefineRS(from_stack_1v)
  loc_B2FD54: FFreeStr var_198 = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = ""
  loc_B2FD63: FLdRfVar var_88
  loc_B2FD66: NewIfNullAd
  loc_B2FD69: FStAd var_1B4 
  loc_B2FD6D: FLdRfVar var_1B8
  loc_B2FD70: FLdPr var_1B4
  loc_B2FD73: from_stack_1 = clsbase.RecordCount
  loc_B2FD78: ILdRf var_1B8
  loc_B2FD7B: LitI4 0
  loc_B2FD80: GtI4
  loc_B2FD81: BranchF loc_B30412
  loc_B2FD84: ILdRf Me
  loc_B2FD87: CastAd
  loc_B2FD8A: FStAdFunc var_194
  loc_B2FD8D: FLdRfVar var_194
  loc_B2FD90: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_B2FD95: FFree1Ad var_194
  loc_B2FD98: LitI2_Byte 0
  loc_B2FD9A: CR8I2
  loc_B2FD9B: CVarR4
  loc_B2FD9F: PopAdLdVar
  loc_B2FDA0: FLdPr Me
  loc_B2FDA3: VCallAd Control_ID_ProgressBar
  loc_B2FDA6: FStAdFunc var_194
  loc_B2FDA9: FLdPr var_194
  loc_B2FDAC: LateIdSt
  loc_B2FDB1: FFree1Ad var_194
  loc_B2FDB4: FLdRfVar var_1B8
  loc_B2FDB7: FLdPr var_1B4
  loc_B2FDBA: from_stack_1 = clsbase.RecordCount
  loc_B2FDBF: ILdRf var_1B8
  loc_B2FDC2: CR8I4
  loc_B2FDC3: CVarR4
  loc_B2FDC7: PopAdLdVar
  loc_B2FDC8: FLdPr Me
  loc_B2FDCB: VCallAd Control_ID_ProgressBar
  loc_B2FDCE: FStAdFunc var_194
  loc_B2FDD1: FLdPr var_194
  loc_B2FDD4: LateIdSt
  loc_B2FDD9: FFree1Ad var_194
  loc_B2FDDC: LitI2_Byte &HFF
  loc_B2FDDE: PopTmpLdAd2 var_18C
  loc_B2FDE1: LitI2_Byte &HFF
  loc_B2FDE3: PopTmpLdAd2 var_18A
  loc_B2FDE6: LitStr "Comienza la imputacion automática de "
  loc_B2FDE9: FLdRfVar var_1B8
  loc_B2FDEC: FLdPr var_1B4
  loc_B2FDEF: from_stack_1 = clsbase.RecordCount
  loc_B2FDF4: ILdRf var_1B8
  loc_B2FDF7: CStrI4
  loc_B2FDF9: FStStrNoPop var_198
  loc_B2FDFC: ConcatStr
  loc_B2FDFD: FStStrNoPop var_1A0
  loc_B2FE00: LitStr " registros. Espere..."
  loc_B2FE03: ConcatStr
  loc_B2FE04: FStStrNoPop var_1A4
  loc_B2FE07: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B2FE0C: CI4UI1
  loc_B2FE0D: LitI4 6
  loc_B2FE12: EqI4
  loc_B2FE13: FFreeStr var_198 = "": var_1A0 = ""
  loc_B2FE1C: BranchF loc_B303D2
  loc_B2FE1F: FLdPr var_1B4
  loc_B2FE22: Call clsbase.MoveFirst()
  loc_B2FE27: FLdRfVar var_18A
  loc_B2FE2A: FLdPr var_1B4
  loc_B2FE2D: from_stack_1 = clsbase.EOF
  loc_B2FE32: FLdI2 var_18A
  loc_B2FE35: NotI4
  loc_B2FE36: BranchF loc_B303CF
  loc_B2FE39: FLdRfVar var_1B8
  loc_B2FE3C: FLdPr var_1B4
  loc_B2FE3F: from_stack_1 = clsbase.AbsolutePosition
  loc_B2FE44: ILdRf var_1B8
  loc_B2FE47: CR8I4
  loc_B2FE48: CVarR4
  loc_B2FE4C: PopAdLdVar
  loc_B2FE4D: FLdPr Me
  loc_B2FE50: VCallAd Control_ID_ProgressBar
  loc_B2FE53: FStAdFunc var_194
  loc_B2FE56: FLdPr var_194
  loc_B2FE59: LateIdSt
  loc_B2FE5E: FFree1Ad var_194
  loc_B2FE61: FLdRfVar var_C8
  loc_B2FE64: FLdRfVar var_1C0
  loc_B2FE67: LitVarStr var_B8, "CodiPart"
  loc_B2FE6C: PopAdLdVar
  loc_B2FE6D: FLdRfVar var_1BC
  loc_B2FE70: FLdRfVar var_194
  loc_B2FE73: FLdPr var_1B4
  loc_B2FE76: from_stack_1v = clsbase.RsFrmGet()
  loc_B2FE7B: FLdPr var_194
  loc_B2FE7E:  = Me.Fields
  loc_B2FE83: FLdPr var_1BC
  loc_B2FE86: from_stack_2 = Me.Item(from_stack_1)
  loc_B2FE8B: FLdPr var_1C0
  loc_B2FE8E:  = Me.Value
  loc_B2FE93: FLdRfVar var_E8
  loc_B2FE96: FLdRfVar var_1CC
  loc_B2FE99: LitVarStr var_D8, "CodiOrga"
  loc_B2FE9E: PopAdLdVar
  loc_B2FE9F: FLdRfVar var_1C8
  loc_B2FEA2: FLdRfVar var_1C4
  loc_B2FEA5: FLdPr var_1B4
  loc_B2FEA8: from_stack_1v = clsbase.RsFrmGet()
  loc_B2FEAD: FLdPr var_1C4
  loc_B2FEB0:  = Me.Fields
  loc_B2FEB5: FLdPr var_1C8
  loc_B2FEB8: from_stack_2 = Me.Item(from_stack_1)
  loc_B2FEBD: FLdPr var_1CC
  loc_B2FEC0:  = Me.Value
  loc_B2FEC5: FLdRfVar var_108
  loc_B2FEC8: FLdRfVar var_1D8
  loc_B2FECB: LitVarStr var_F8, "ExorImpu"
  loc_B2FED0: PopAdLdVar
  loc_B2FED1: FLdRfVar var_1D4
  loc_B2FED4: FLdRfVar var_1D0
  loc_B2FED7: FLdPr var_1B4
  loc_B2FEDA: from_stack_1v = clsbase.RsFrmGet()
  loc_B2FEDF: FLdPr var_1D0
  loc_B2FEE2:  = Me.Fields
  loc_B2FEE7: FLdPr var_1D4
  loc_B2FEEA: from_stack_2 = Me.Item(from_stack_1)
  loc_B2FEEF: FLdPr var_1D8
  loc_B2FEF2:  = Me.Value
  loc_B2FEF7: FLdRfVar var_128
  loc_B2FEFA: FLdRfVar var_1E4
  loc_B2FEFD: LitVarStr var_118, "ImpoImpu"
  loc_B2FF02: PopAdLdVar
  loc_B2FF03: FLdRfVar var_1E0
  loc_B2FF06: FLdRfVar var_1DC
  loc_B2FF09: FLdPr var_1B4
  loc_B2FF0C: from_stack_1v = clsbase.RsFrmGet()
  loc_B2FF11: FLdPr var_1DC
  loc_B2FF14:  = Me.Fields
  loc_B2FF19: FLdPr var_1E0
  loc_B2FF1C: from_stack_2 = Me.Item(from_stack_1)
  loc_B2FF21: FLdPr var_1E4
  loc_B2FF24:  = Me.Value
  loc_B2FF29: FLdRfVar var_148
  loc_B2FF2C: FLdRfVar var_1F0
  loc_B2FF2F: LitVarStr var_138, "ImpoImpu"
  loc_B2FF34: PopAdLdVar
  loc_B2FF35: FLdRfVar var_1EC
  loc_B2FF38: FLdRfVar var_1E8
  loc_B2FF3B: FLdPr var_1B4
  loc_B2FF3E: from_stack_1v = clsbase.RsFrmGet()
  loc_B2FF43: FLdPr var_1E8
  loc_B2FF46:  = Me.Fields
  loc_B2FF4B: FLdPr var_1EC
  loc_B2FF4E: from_stack_2 = Me.Item(from_stack_1)
  loc_B2FF53: FLdPr var_1F0
  loc_B2FF56:  = Me.Value
  loc_B2FF5B: FLdRfVar var_1B8
  loc_B2FF5E: LitI2_Byte 0
  loc_B2FF60: LitI2_Byte 0
  loc_B2FF62: LitI2_Byte 0
  loc_B2FF64: LitI4 0
  loc_B2FF69: LitI2_Byte 0
  loc_B2FF6B: LitI4 0
  loc_B2FF70: ILdRf var_94
  loc_B2FF73: FLdRfVar var_148
  loc_B2FF76: CR4Var
  loc_B2FF77: PopFPR8
  loc_B2FF78: FLdRfVar var_128
  loc_B2FF7B: CR4Var
  loc_B2FF7C: PopFPR8
  loc_B2FF7D: LitI2_Byte 1
  loc_B2FF7F: CR8I2
  loc_B2FF80: PopFPR8
  loc_B2FF81: FLdRfVar var_108
  loc_B2FF84: CStrVarTmp
  loc_B2FF85: FStStrNoPop var_1A4
  loc_B2FF88: ILdRf var_98
  loc_B2FF8B: ILdRf var_A0
  loc_B2FF8E: LitI4 1
  loc_B2FF93: LitI2_Byte 1
  loc_B2FF95: FLdRfVar var_E8
  loc_B2FF98: CStrVarTmp
  loc_B2FF99: FStStrNoPop var_1A0
  loc_B2FF9C: FLdRfVar var_C8
  loc_B2FF9F: CStrVarTmp
  loc_B2FFA0: FStStrNoPop var_198
  loc_B2FFA3: FLdRfVar var_8C
  loc_B2FFA6: NewIfNullPr clsimputacion
  loc_B2FFA9: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B2FFAE: ILdRf var_1B8
  loc_B2FFB1: FStR4 var_90
  loc_B2FFB4: FFreeStr var_198 = "": var_1A0 = ""
  loc_B2FFBD: FFreeAd var_194 = "": var_1BC = "": var_1C4 = "": var_1C8 = "": var_1D0 = "": var_1D4 = "": var_1DC = "": var_1E0 = "": var_1E8 = "": var_1EC = "": var_1C0 = "": var_1CC = "": var_1D8 = "": var_1E4 = ""
  loc_B2FFDE: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = ""
  loc_B2FFEB: ILdRf var_90
  loc_B2FFEE: LitI4 0
  loc_B2FFF3: EqI4
  loc_B2FFF4: BranchF loc_B30004
  loc_B2FFF7: LitI4 0
  loc_B2FFFC: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B2FFFF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B30004: FLdRfVar var_C8
  loc_B30007: FLdRfVar var_1C0
  loc_B3000A: LitVarStr var_B8, "CodiPart"
  loc_B3000F: PopAdLdVar
  loc_B30010: FLdRfVar var_1BC
  loc_B30013: FLdRfVar var_194
  loc_B30016: FLdPr var_1B4
  loc_B30019: from_stack_1v = clsbase.RsFrmGet()
  loc_B3001E: FLdPr var_194
  loc_B30021:  = Me.Fields
  loc_B30026: FLdPr var_1BC
  loc_B30029: from_stack_2 = Me.Item(from_stack_1)
  loc_B3002E: FLdPr var_1C0
  loc_B30031:  = Me.Value
  loc_B30036: FLdRfVar var_E8
  loc_B30039: FLdRfVar var_1CC
  loc_B3003C: LitVarStr var_D8, "CodiOrga"
  loc_B30041: PopAdLdVar
  loc_B30042: FLdRfVar var_1C8
  loc_B30045: FLdRfVar var_1C4
  loc_B30048: FLdPr var_1B4
  loc_B3004B: from_stack_1v = clsbase.RsFrmGet()
  loc_B30050: FLdPr var_1C4
  loc_B30053:  = Me.Fields
  loc_B30058: FLdPr var_1C8
  loc_B3005B: from_stack_2 = Me.Item(from_stack_1)
  loc_B30060: FLdPr var_1CC
  loc_B30063:  = Me.Value
  loc_B30068: FLdRfVar var_108
  loc_B3006B: FLdRfVar var_1D8
  loc_B3006E: LitVarStr var_F8, "ExorImpu"
  loc_B30073: PopAdLdVar
  loc_B30074: FLdRfVar var_1D4
  loc_B30077: FLdRfVar var_1D0
  loc_B3007A: FLdPr var_1B4
  loc_B3007D: from_stack_1v = clsbase.RsFrmGet()
  loc_B30082: FLdPr var_1D0
  loc_B30085:  = Me.Fields
  loc_B3008A: FLdPr var_1D4
  loc_B3008D: from_stack_2 = Me.Item(from_stack_1)
  loc_B30092: FLdPr var_1D8
  loc_B30095:  = Me.Value
  loc_B3009A: FLdRfVar var_128
  loc_B3009D: FLdRfVar var_1E4
  loc_B300A0: LitVarStr var_118, "ImpoImpu"
  loc_B300A5: PopAdLdVar
  loc_B300A6: FLdRfVar var_1E0
  loc_B300A9: FLdRfVar var_1DC
  loc_B300AC: FLdPr var_1B4
  loc_B300AF: from_stack_1v = clsbase.RsFrmGet()
  loc_B300B4: FLdPr var_1DC
  loc_B300B7:  = Me.Fields
  loc_B300BC: FLdPr var_1E0
  loc_B300BF: from_stack_2 = Me.Item(from_stack_1)
  loc_B300C4: FLdPr var_1E4
  loc_B300C7:  = Me.Value
  loc_B300CC: FLdRfVar var_148
  loc_B300CF: FLdRfVar var_1F0
  loc_B300D2: LitVarStr var_138, "ImpoImpu"
  loc_B300D7: PopAdLdVar
  loc_B300D8: FLdRfVar var_1EC
  loc_B300DB: FLdRfVar var_1E8
  loc_B300DE: FLdPr var_1B4
  loc_B300E1: from_stack_1v = clsbase.RsFrmGet()
  loc_B300E6: FLdPr var_1E8
  loc_B300E9:  = Me.Fields
  loc_B300EE: FLdPr var_1EC
  loc_B300F1: from_stack_2 = Me.Item(from_stack_1)
  loc_B300F6: FLdPr var_1F0
  loc_B300F9:  = Me.Value
  loc_B300FE: FLdRfVar var_1B8
  loc_B30101: LitI2_Byte 0
  loc_B30103: LitI2_Byte 0
  loc_B30105: LitI2_Byte 0
  loc_B30107: LitI4 0
  loc_B3010C: ILdRf var_A4
  loc_B3010F: LitI2_Byte 0
  loc_B30111: CUI1I2
  loc_B30113: LitI2_Byte 0
  loc_B30115: LitI4 0
  loc_B3011A: LitI4 0
  loc_B3011F: ILdRf var_94
  loc_B30122: FLdRfVar var_148
  loc_B30125: CR4Var
  loc_B30126: PopFPR8
  loc_B30127: FLdRfVar var_128
  loc_B3012A: CR4Var
  loc_B3012B: PopFPR8
  loc_B3012C: LitI2_Byte 1
  loc_B3012E: CR8I2
  loc_B3012F: PopFPR8
  loc_B30130: FLdRfVar var_108
  loc_B30133: CStrVarTmp
  loc_B30134: FStStrNoPop var_1A4
  loc_B30137: ILdRf var_98
  loc_B3013A: ILdRf var_A0
  loc_B3013D: LitI4 1
  loc_B30142: LitI2_Byte 1
  loc_B30144: FLdRfVar var_E8
  loc_B30147: CStrVarTmp
  loc_B30148: FStStrNoPop var_1A0
  loc_B3014B: FLdRfVar var_C8
  loc_B3014E: CStrVarTmp
  loc_B3014F: FStStrNoPop var_198
  loc_B30152: FLdRfVar var_8C
  loc_B30155: NewIfNullPr clsimputacion
  loc_B30158: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B3015D: ILdRf var_1B8
  loc_B30160: FStR4 var_90
  loc_B30163: FFreeStr var_198 = "": var_1A0 = ""
  loc_B3016C: FFreeAd var_194 = "": var_1BC = "": var_1C4 = "": var_1C8 = "": var_1D0 = "": var_1D4 = "": var_1DC = "": var_1E0 = "": var_1E8 = "": var_1EC = "": var_1C0 = "": var_1CC = "": var_1D8 = "": var_1E4 = ""
  loc_B3018D: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = ""
  loc_B3019A: ILdRf var_90
  loc_B3019D: LitI4 0
  loc_B301A2: EqI4
  loc_B301A3: BranchF loc_B301B3
  loc_B301A6: LitI4 0
  loc_B301AB: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B301AE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B301B3: FLdRfVar var_C8
  loc_B301B6: FLdRfVar var_1C0
  loc_B301B9: LitVarStr var_B8, "CodiPart"
  loc_B301BE: PopAdLdVar
  loc_B301BF: FLdRfVar var_1BC
  loc_B301C2: FLdRfVar var_194
  loc_B301C5: FLdPr var_1B4
  loc_B301C8: from_stack_1v = clsbase.RsFrmGet()
  loc_B301CD: FLdPr var_194
  loc_B301D0:  = Me.Fields
  loc_B301D5: FLdPr var_1BC
  loc_B301D8: from_stack_2 = Me.Item(from_stack_1)
  loc_B301DD: FLdPr var_1C0
  loc_B301E0:  = Me.Value
  loc_B301E5: FLdRfVar var_E8
  loc_B301E8: FLdRfVar var_1CC
  loc_B301EB: LitVarStr var_D8, "CodiOrga"
  loc_B301F0: PopAdLdVar
  loc_B301F1: FLdRfVar var_1C8
  loc_B301F4: FLdRfVar var_1C4
  loc_B301F7: FLdPr var_1B4
  loc_B301FA: from_stack_1v = clsbase.RsFrmGet()
  loc_B301FF: FLdPr var_1C4
  loc_B30202:  = Me.Fields
  loc_B30207: FLdPr var_1C8
  loc_B3020A: from_stack_2 = Me.Item(from_stack_1)
  loc_B3020F: FLdPr var_1CC
  loc_B30212:  = Me.Value
  loc_B30217: FLdRfVar var_108
  loc_B3021A: FLdRfVar var_1D8
  loc_B3021D: LitVarStr var_F8, "ExorImpu"
  loc_B30222: PopAdLdVar
  loc_B30223: FLdRfVar var_1D4
  loc_B30226: FLdRfVar var_1D0
  loc_B30229: FLdPr var_1B4
  loc_B3022C: from_stack_1v = clsbase.RsFrmGet()
  loc_B30231: FLdPr var_1D0
  loc_B30234:  = Me.Fields
  loc_B30239: FLdPr var_1D4
  loc_B3023C: from_stack_2 = Me.Item(from_stack_1)
  loc_B30241: FLdPr var_1D8
  loc_B30244:  = Me.Value
  loc_B30249: FLdRfVar var_128
  loc_B3024C: FLdRfVar var_1E4
  loc_B3024F: LitVarStr var_118, "ExorImpu"
  loc_B30254: PopAdLdVar
  loc_B30255: FLdRfVar var_1E0
  loc_B30258: FLdRfVar var_1DC
  loc_B3025B: FLdPr var_1B4
  loc_B3025E: from_stack_1v = clsbase.RsFrmGet()
  loc_B30263: FLdPr var_1DC
  loc_B30266:  = Me.Fields
  loc_B3026B: FLdPr var_1E0
  loc_B3026E: from_stack_2 = Me.Item(from_stack_1)
  loc_B30273: FLdPr var_1E4
  loc_B30276:  = Me.Value
  loc_B3027B: FLdRfVar var_148
  loc_B3027E: FLdRfVar var_1F0
  loc_B30281: LitVarStr var_138, "ImpoImpu"
  loc_B30286: PopAdLdVar
  loc_B30287: FLdRfVar var_1EC
  loc_B3028A: FLdRfVar var_1E8
  loc_B3028D: FLdPr var_1B4
  loc_B30290: from_stack_1v = clsbase.RsFrmGet()
  loc_B30295: FLdPr var_1E8
  loc_B30298:  = Me.Fields
  loc_B3029D: FLdPr var_1EC
  loc_B302A0: from_stack_2 = Me.Item(from_stack_1)
  loc_B302A5: FLdPr var_1F0
  loc_B302A8:  = Me.Value
  loc_B302AD: FLdRfVar var_168
  loc_B302B0: FLdRfVar var_1FC
  loc_B302B3: LitVarStr var_158, "ImpoImpu"
  loc_B302B8: PopAdLdVar
  loc_B302B9: FLdRfVar var_1F8
  loc_B302BC: FLdRfVar var_1F4
  loc_B302BF: FLdPr var_1B4
  loc_B302C2: from_stack_1v = clsbase.RsFrmGet()
  loc_B302C7: FLdPr var_1F4
  loc_B302CA:  = Me.Fields
  loc_B302CF: FLdPr var_1F8
  loc_B302D2: from_stack_2 = Me.Item(from_stack_1)
  loc_B302D7: FLdPr var_1FC
  loc_B302DA:  = Me.Value
  loc_B302DF: FLdRfVar var_1B8
  loc_B302E2: LitI2_Byte 0
  loc_B302E4: LitI2_Byte 0
  loc_B302E6: LitI2_Byte 0
  loc_B302E8: LitStr vbNullString
  loc_B302EB: LitI4 0
  loc_B302F0: LitStr "S/F000000000000"
  loc_B302F3: ILdRf var_A4
  loc_B302F6: LitI2_Byte 0
  loc_B302F8: CStrUI1
  loc_B302FA: FStStrNoPop var_204
  loc_B302FD: LitI2_Byte 0
  loc_B302FF: CStrUI1
  loc_B30301: FStStrNoPop var_200
  loc_B30304: LitI2_Byte 0
  loc_B30306: LitI2_Byte 0
  loc_B30308: CStrUI1
  loc_B3030A: FStStrNoPop var_1B0
  loc_B3030D: LitI2_Byte 0
  loc_B3030F: CStrUI1
  loc_B30311: FStStrNoPop var_1AC
  loc_B30314: ILdRf var_94
  loc_B30317: FLdRfVar var_168
  loc_B3031A: CR4Var
  loc_B3031B: PopFPR8
  loc_B3031C: FLdRfVar var_148
  loc_B3031F: CR4Var
  loc_B30320: PopFPR8
  loc_B30321: LitI2_Byte 1
  loc_B30323: CR8I2
  loc_B30324: PopFPR8
  loc_B30325: FLdRfVar var_128
  loc_B30328: CStrVarTmp
  loc_B30329: FStStrNoPop var_1A8
  loc_B3032C: FLdRfVar var_108
  loc_B3032F: CStrVarTmp
  loc_B30330: FStStrNoPop var_1A4
  loc_B30333: ILdRf var_98
  loc_B30336: ILdRf var_98
  loc_B30339: ILdRf var_A0
  loc_B3033C: LitI4 1
  loc_B30341: LitI2_Byte 1
  loc_B30343: FLdRfVar var_E8
  loc_B30346: CStrVarTmp
  loc_B30347: FStStrNoPop var_1A0
  loc_B3034A: FLdRfVar var_C8
  loc_B3034D: CStrVarTmp
  loc_B3034E: FStStrNoPop var_198
  loc_B30351: FLdRfVar var_8C
  loc_B30354: NewIfNullPr clsimputacion
  loc_B30357: from_stack_16v = clsimputacion.AddNewDevengado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_B3035C: ILdRf var_1B8
  loc_B3035F: FStR4 var_90
  loc_B30362: FFreeStr var_198 = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_200 = ""
  loc_B30375: FFreeAd var_194 = "": var_1BC = "": var_1C4 = "": var_1C8 = "": var_1D0 = "": var_1D4 = "": var_1DC = "": var_1E0 = "": var_1E8 = "": var_1EC = "": var_1F4 = "": var_1F8 = "": var_1C0 = "": var_1CC = "": var_1D8 = "": var_1E4 = "": var_1F0 = ""
  loc_B3039C: FFreeVar var_C8 = "": var_E8 = "": var_108 = "": var_128 = "": var_148 = ""
  loc_B303AB: ILdRf var_90
  loc_B303AE: LitI4 0
  loc_B303B3: EqI4
  loc_B303B4: BranchF loc_B303C4
  loc_B303B7: LitI4 0
  loc_B303BC: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_B303BF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B303C4: FLdPr var_1B4
  loc_B303C7: Call clsbase.MoveSiguiente()
  loc_B303CC: Branch loc_B2FE27
  loc_B303CF: Branch loc_B303D2
  loc_B303D2: LitI4 0
  loc_B303D7: LitStr "El Proceso ha Terminado..."
  loc_B303DA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B303DF: LitI2_Byte 0
  loc_B303E1: CR8I2
  loc_B303E2: CVarR4
  loc_B303E6: PopAdLdVar
  loc_B303E7: FLdPr Me
  loc_B303EA: VCallAd Control_ID_ProgressBar
  loc_B303ED: FStAdFunc var_194
  loc_B303F0: FLdPr var_194
  loc_B303F3: LateIdSt
  loc_B303F8: FFree1Ad var_194
  loc_B303FB: ILdRf Me
  loc_B303FE: CastAd
  loc_B30401: FStAdFunc var_194
  loc_B30404: FLdRfVar var_194
  loc_B30407: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_B3040C: FFree1Ad var_194
  loc_B3040F: Branch loc_B3041F
  loc_B30412: LitI4 0
  loc_B30417: LitStr "No existen registros. Verifique..."
  loc_B3041A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B3041F: LitNothing
  loc_B30421: FStAd var_1B4 
  loc_B30425: ExitProcHresult
  loc_B30426: FLdPr var_C00
End Sub

Private Sub cmdGenerarEjecxProv_Click() 'A35760
  'Data Table: 43A46C
  loc_A35594: ILdRf Me
  loc_A35597: CastAd
  loc_A3559A: FStAdFunc var_88
  loc_A3559D: FLdRfVar var_88
  loc_A355A0: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A355A5: FFree1Ad var_88
  loc_A355A8: LitI4 0
  loc_A355AD: LitStr "Comienza el proceso..."
  loc_A355B0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A355B5: LitStr "SET @FechaDesde='2011-01-01', @FechaHasta='2013-06-30';"
  loc_A355B8: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp;"
  loc_A355BB: ConcatStr
  loc_A355BC: FStStrNoPop var_8C
  loc_A355BF: LitStr " CREATE TEMPORARY TABLE mp` ("
  loc_A355C2: ConcatStr
  loc_A355C3: FStStrNoPop var_90
  loc_A355C6: LitStr "   eriInfo` year(4) NOT NULL default '0000',"
  loc_A355C9: ConcatStr
  loc_A355CA: FStStrNoPop var_94
  loc_A355CD: LitStr "   odiPart` varchar(8) NOT NULL default '',"
  loc_A355D0: ConcatStr
  loc_A355D1: FStStrNoPop var_98
  loc_A355D4: LitStr "   odiOrga` varchar(6) NOT NULL default '',"
  loc_A355D7: ConcatStr
  loc_A355D8: FStStrNoPop var_9C
  loc_A355DB: LitStr "   es` tinyint(2) NOT NULL default '0',"
  loc_A355DE: ConcatStr
  loc_A355DF: FStStrNoPop var_A0
  loc_A355E2: LitStr "   ucuPers` bigint(11) unsigned NOT NULL DEFAULT '0',"
  loc_A355E5: ConcatStr
  loc_A355E6: FStStrNoPop var_A4
  loc_A355E9: LitStr "   efiImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_A355EC: ConcatStr
  loc_A355ED: FStStrNoPop var_A8
  loc_A355F0: LitStr "   eveImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_A355F3: ConcatStr
  loc_A355F4: FStStrNoPop var_AC
  loc_A355F7: LitStr "   apaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_A355FA: ConcatStr
  loc_A355FB: FStStrNoPop var_B0
  loc_A355FE: LitStr "   agaImpu` decimal(14,2) NOT NULL default '0.00'"
  loc_A35601: ConcatStr
  loc_A35602: FStStrNoPop var_B4
  loc_A35605: LitStr " ) ENGINE=MyISAM ;"
  loc_A35608: ConcatStr
  loc_A35609: FStStrNoPop var_B8
  loc_A3560C: LitStr " TRUNCATE infogov.jexprov`;"
  loc_A3560F: ConcatStr
  loc_A35610: FStStrNoPop var_BC
  loc_A35613: Call Proc_112_11_9935EC()
  loc_A35618: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A35635: LitStr "INSERT INTO tmp (PeriInfo,CodiPart,CodiOrga,Mes,CucuPers,DefiImpu,DeveImpu,MapaImpu,PagaImpu)"
  loc_A35638: LitStr " SELECT PeriInfo, CodiPart, CodiOrga, Month(FechImpu), CucuPers, Sum(DefiImpu), Sum(DeveImpu), Sum(MapaImpu), Sum(PagaImpu)"
  loc_A3563B: ConcatStr
  loc_A3563C: FStStrNoPop var_8C
  loc_A3563F: LitStr " From imputacion"
  loc_A35642: ConcatStr
  loc_A35643: FStStrNoPop var_90
  loc_A35646: LitStr " WHERE FechImpu >= @FechaDesde"
  loc_A35649: ConcatStr
  loc_A3564A: FStStrNoPop var_94
  loc_A3564D: LitStr " AND FechImpu <= @FechaHasta"
  loc_A35650: ConcatStr
  loc_A35651: FStStrNoPop var_98
  loc_A35654: LitStr " AND (DefiImpu<>0 OR DeveImpu<>0 OR MapaImpu<>0 OR PagaImpu<>0)"
  loc_A35657: ConcatStr
  loc_A35658: FStStrNoPop var_9C
  loc_A3565B: LitStr " GROUP BY PeriInfo, CodiPart, CodiOrga, Month(FechImpu), CucuPers;"
  loc_A3565E: ConcatStr
  loc_A3565F: FStStrNoPop var_A0
  loc_A35662: Call Proc_112_11_9935EC()
  loc_A35667: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A35676: LitStr "INSERT INTO infogov.ejexprov (Periodo,Seccion,Sector,Partida_Principal,Partida_Parcial,Partida_Subparcial,Partida_Analitica,Jurisdiccion,Intendencia_y_Secretarias,Direcciones,Departamentos,Oficinas,Mes,CucuPers,DetaProv,Total_Definitivas,Total_Devengados,Total_Mandados_a_pagar,Total_Pagados,Total_Reapropiacion,Total_Residuos_Pasivos,Total_Deuda_Exigible)"
  loc_A35679: LitStr " SELECT tmp.PeriInfo,"
  loc_A3567C: ConcatStr
  loc_A3567D: FStStrNoPop var_8C
  loc_A35680: LitStr " part1.DetaPart, part2.DetaPart, part3.DetaPart, part4.DetaPart, part5.DetaPart, part6.DetaPart,"
  loc_A35683: ConcatStr
  loc_A35684: FStStrNoPop var_90
  loc_A35687: LitStr " orga1.DetaOrga, orga2.DetaOrga, orga3.DetaOrga, orga4.DetaOrga, orga5.DetaOrga,"
  loc_A3568A: ConcatStr
  loc_A3568B: FStStrNoPop var_94
  loc_A3568E: LitStr " CASE Mes WHEN 1 THEN 'Enero' WHEN 2 THEN 'Febrero' WHEN 3 THEN 'Marzo' WHEN 4 THEN 'Abril' WHEN 5 THEN 'Mayo' WHEN 6 THEN 'Junio' WHEN 7 THEN 'Julio' WHEN 8 THEN 'Agosto' WHEN 9 THEN 'Septiembre' WHEN 10 THEN 'Octubre' WHEN 11 THEN 'Noviembre' WHEN 12 THEN 'Diciembre' END,"
  loc_A35691: ConcatStr
  loc_A35692: FStStrNoPop var_98
  loc_A35695: LitStr " tmp.CucuPers, DetaProv,"
  loc_A35698: ConcatStr
  loc_A35699: FStStrNoPop var_9C
  loc_A3569C: LitStr " sum(DefiImpu), sum(DeveImpu), sum(MapaImpu), sum(PagaImpu)"
  loc_A3569F: ConcatStr
  loc_A356A0: FStStrNoPop var_A0
  loc_A356A3: LitStr " ,Sum(DefiImpu)-Sum(DeveImpu),Sum(DeveImpu)-Sum(MapaImpu),Sum(MapaImpu)-Sum(PagaImpu)"
  loc_A356A6: ConcatStr
  loc_A356A7: FStStrNoPop var_A4
  loc_A356AA: LitStr " From Tmp"
  loc_A356AD: ConcatStr
  loc_A356AE: FStStrNoPop var_A8
  loc_A356B1: LitStr " INNER JOIN partida part1 ON part1.PeriInfo = tmp.PeriInfo AND part1.CodiPart = CONCAT(Left(tmp.CodiPart,1),'0000000')"
  loc_A356B4: ConcatStr
  loc_A356B5: FStStrNoPop var_AC
  loc_A356B8: LitStr " INNER JOIN partida part2 ON part2.PeriInfo = tmp.PeriInfo AND part2.CodiPart = CONCAT(Left(tmp.CodiPart,2),'000000')"
  loc_A356BB: ConcatStr
  loc_A356BC: FStStrNoPop var_B0
  loc_A356BF: LitStr " INNER JOIN partida part3 ON part3.PeriInfo = tmp.PeriInfo AND part3.CodiPart = CONCAT(Left(tmp.CodiPart,3),'00000')"
  loc_A356C2: ConcatStr
  loc_A356C3: FStStrNoPop var_B4
  loc_A356C6: LitStr " INNER JOIN partida part4 ON part4.PeriInfo = tmp.PeriInfo AND part4.CodiPart = CONCAT(Left(tmp.CodiPart,4),'0000')"
  loc_A356C9: ConcatStr
  loc_A356CA: FStStrNoPop var_B8
  loc_A356CD: LitStr " INNER JOIN partida part5 ON part5.PeriInfo = tmp.PeriInfo AND part5.CodiPart = CONCAT(Left(tmp.CodiPart,6),'00')"
  loc_A356D0: ConcatStr
  loc_A356D1: FStStrNoPop var_BC
  loc_A356D4: LitStr " INNER JOIN partida part6 ON part6.PeriInfo = tmp.PeriInfo AND part6.CodiPart = tmp.CodiPart"
  loc_A356D7: ConcatStr
  loc_A356D8: FStStrNoPop var_C0
  loc_A356DB: LitStr " INNER JOIN infogov.organigrama orga1 ON orga1.PeriInfo = tmp.PeriInfo AND orga1.CodiOrga = CONCAT(Left(tmp.CodiOrga,1),'00000')"
  loc_A356DE: ConcatStr
  loc_A356DF: FStStrNoPop var_C4
  loc_A356E2: LitStr " inner JOIN infogov.organigrama orga2 ON orga2.PeriInfo = tmp.PeriInfo AND orga2.CodiOrga = CONCAT(Left(tmp.CodiOrga,2),'0000')"
  loc_A356E5: ConcatStr
  loc_A356E6: FStStrNoPop var_C8
  loc_A356E9: LitStr " inner JOIN infogov.organigrama orga3 ON orga3.PeriInfo = tmp.PeriInfo AND orga3.CodiOrga = CONCAT(Left(tmp.CodiOrga,3),'000')"
  loc_A356EC: ConcatStr
  loc_A356ED: FStStrNoPop var_CC
  loc_A356F0: LitStr " inner JOIN infogov.organigrama orga4 ON orga4.PeriInfo = tmp.PeriInfo AND orga4.CodiOrga = CONCAT(Left(tmp.CodiOrga,4),'00')"
  loc_A356F3: ConcatStr
  loc_A356F4: FStStrNoPop var_D0
  loc_A356F7: LitStr " INNER JOIN infogov.organigrama orga5 ON orga5.PeriInfo = tmp.PeriInfo AND orga5.CodiOrga = tmp.CodiOrga"
  loc_A356FA: ConcatStr
  loc_A356FB: FStStrNoPop var_D4
  loc_A356FE: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = tmp.CucuPers"
  loc_A35701: ConcatStr
  loc_A35702: FStStrNoPop var_D8
  loc_A35705: LitStr " GROUP BY tmp.PeriInfo, tmp.CodiPart, tmp.CodiOrga, tmp.Mes, tmp.CucuPers;"
  loc_A35708: ConcatStr
  loc_A35709: FStStrNoPop var_DC
  loc_A3570C: Call Proc_112_11_9935EC()
  loc_A35711: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_A3573E: LitI4 0
  loc_A35743: LitStr "Fin del proceso..."
  loc_A35746: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A3574B: ILdRf Me
  loc_A3574E: CastAd
  loc_A35751: FStAdFunc var_88
  loc_A35754: FLdRfVar var_88
  loc_A35757: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_A3575C: FFree1Ad var_88
  loc_A3575F: ExitProcHresult
End Sub

Private Sub cmdRevisaLiquidanetovsCheque_Click() 'A2585C
  'Data Table: 43A46C
  loc_A256DC: ILdRf Me
  loc_A256DF: CastAd
  loc_A256E2: FStAdFunc var_88
  loc_A256E5: FLdRfVar var_88
  loc_A256E8: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A256ED: FFree1Ad var_88
  loc_A256F0: LitI4 0
  loc_A256F5: LitStr "Comienza el proceso..."
  loc_A256F8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A256FD: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_A25700: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_A25703: ConcatStr
  loc_A25704: FStStrNoPop var_8C
  loc_A25707: LitStr " SELECT liquidaneto.ExpeImpu, liquidaneto.NumeLiqu, CucuPers, Sum(ImpoLine) ImpoLine, 000000000.00 AS ImpoCheq"
  loc_A2570A: ConcatStr
  loc_A2570B: FStStrNoPop var_90
  loc_A2570E: LitStr " FROM liquidaneto"
  loc_A25711: ConcatStr
  loc_A25712: FStStrNoPop var_94
  loc_A25715: LitStr " WHERE PeriInfo = "
  loc_A25718: ConcatStr
  loc_A25719: FStStrNoPop var_98
  loc_A2571C: ImpAdLdI2 MemVar_C3D064
  loc_A2571F: CStrUI1
  loc_A25721: FStStrNoPop var_9C
  loc_A25724: ConcatStr
  loc_A25725: FStStrNoPop var_A0
  loc_A25728: LitStr " AND CodiRete = 0"
  loc_A2572B: ConcatStr
  loc_A2572C: FStStrNoPop var_A4
  loc_A2572F: LitStr " GROUP BY ExpeImpu, NumeLiqu, CucuPers;"
  loc_A25732: ConcatStr
  loc_A25733: FStStrNoPop var_A8
  loc_A25736: LitStr " INSERT tmovi(ExpeImpu, NumeLiqu, CucuPers, ImpoLine, ImpoCheq)"
  loc_A25739: ConcatStr
  loc_A2573A: FStStrNoPop var_AC
  loc_A2573D: LitStr " SELECT cheque.ExpeImpu, cheque.NumeLiqu, cheque.CucuPers, 0 AS ImpoLine, Sum(ImpoCheq) ImpoCheq"
  loc_A25740: ConcatStr
  loc_A25741: FStStrNoPop var_B0
  loc_A25744: LitStr " FROM cheque"
  loc_A25747: ConcatStr
  loc_A25748: FStStrNoPop var_B4
  loc_A2574B: LitStr " LEFT JOIN ordenpago ON ordenpago.PeriInfo = cheque.PeriInfo AND ordenpago.NumeOrpa = cheque.NumeOrpa"
  loc_A2574E: ConcatStr
  loc_A2574F: FStStrNoPop var_B8
  loc_A25752: LitStr " WHERE cheque.PeriInfo = "
  loc_A25755: ConcatStr
  loc_A25756: FStStrNoPop var_BC
  loc_A25759: ImpAdLdI2 MemVar_C3D064
  loc_A2575C: CStrUI1
  loc_A2575E: FStStrNoPop var_C0
  loc_A25761: ConcatStr
  loc_A25762: FStStrNoPop var_C4
  loc_A25765: LitStr " AND TipoOrpa = 'Devengado'"
  loc_A25768: ConcatStr
  loc_A25769: FStStrNoPop var_C8
  loc_A2576C: LitStr " AND FeanOrpa IS NULL"
  loc_A2576F: ConcatStr
  loc_A25770: FStStrNoPop var_CC
  loc_A25773: LitStr " AND FeanCheq IS NULL"
  loc_A25776: ConcatStr
  loc_A25777: FStStrNoPop var_D0
  loc_A2577A: LitStr " GROUP BY cheque.ExpeImpu, cheque.NumeLiqu, cheque.CucuPers;"
  loc_A2577D: ConcatStr
  loc_A2577E: FStStrNoPop var_D4
  loc_A25781: Call Proc_112_11_9935EC()
  loc_A25786: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A257AF: LitStr "SELECT ExpeImpu, NumeLiqu, Sum(ImpoLine) ImpoLine, Sum(ImpoCheq) ImpoCheq, Sum(ImpoLine)-Sum(ImpoCheq) diferencia"
  loc_A257B2: LitStr " FROM tmovi"
  loc_A257B5: ConcatStr
  loc_A257B6: FStStrNoPop var_8C
  loc_A257B9: LitStr " GROUP BY ExpeImpu, NumeLiqu"
  loc_A257BC: ConcatStr
  loc_A257BD: FStStrNoPop var_90
  loc_A257C0: LitStr " HAVING ImpoCheq > 0 AND ImpoLine <> ImpoCheq"
  loc_A257C3: ConcatStr
  loc_A257C4: FStStrNoPop var_94
  loc_A257C7: Call Proc_112_11_9935EC()
  loc_A257CC: FFreeStr var_8C = "": var_90 = ""
  loc_A257D5: FLdRfVar var_D8
  loc_A257D8: FLdPr Me
  loc_A257DB: MemLdPr global_52
  loc_A257DE:  = Me.RecordCount
  loc_A257E3: ILdRf var_D8
  loc_A257E6: CStrI4
  loc_A257E8: FStStrNoPop var_8C
  loc_A257EB: LitStr " registro/s"
  loc_A257EE: ConcatStr
  loc_A257EF: CVarStr var_E8
  loc_A257F2: PopAdLdVar
  loc_A257F3: FLdPr Me
  loc_A257F6: VCallAd Control_ID_dgdABMS
  loc_A257F9: FStAdFunc var_88
  loc_A257FC: FLdPr var_88
  loc_A257FF: LateIdSt
  loc_A25804: FFree1Str var_8C
  loc_A25807: FFree1Ad var_88
  loc_A2580A: FFree1Var var_E8 = ""
  loc_A2580D: FLdPr Me
  loc_A25810: MemLdStr global_52
  loc_A25813: CastAd
  loc_A25816: CVarUnk
  loc_A2581A: PopAdLdVar
  loc_A2581B: VerifyVarObj
  loc_A2581D: FLdPr Me
  loc_A25820: VCallAd Control_ID_dgdABMS
  loc_A25823: FStAdFunc var_88
  loc_A25826: FLdPr var_88
  loc_A25829: LateIdStAd
  loc_A25831: FFree1Ad var_88
  loc_A25834: FFree1Var var_E8 = ""
  loc_A25837: LitI4 0
  loc_A2583C: LitStr "Fin del proceso..."
  loc_A2583F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A25844: ILdRf Me
  loc_A25847: CastAd
  loc_A2584A: FStAdFunc var_88
  loc_A2584D: FLdRfVar var_88
  loc_A25850: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_A25855: FFree1Ad var_88
  loc_A25858: ExitProcHresult
  loc_A25859: UMiI4
End Sub

Private Sub RevisaImpuPartCmd_Click() 'A44D88
  'Data Table: 43A46C
  loc_A44B58: ILdRf Me
  loc_A44B5B: CastAd
  loc_A44B5E: FStAdFunc var_90
  loc_A44B61: FLdRfVar var_90
  loc_A44B64: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A44B69: FFree1Ad var_90
  loc_A44B6C: LitStr "SELECT * FROM partida WHERE PeriInfo = "
  loc_A44B6F: ImpAdLdI2 MemVar_C3D064
  loc_A44B72: CStrUI1
  loc_A44B74: FStStrNoPop var_94
  loc_A44B77: ConcatStr
  loc_A44B78: FStStrNoPop var_98
  loc_A44B7B: FLdRfVar var_88
  loc_A44B7E: NewIfNullPr clspartida
  loc_A44B81: Call clspartida.RedefineRS(from_stack_1v)
  loc_A44B86: FFreeStr var_94 = ""
  loc_A44B8D: FLdRfVar var_9C
  loc_A44B90: FLdRfVar var_88
  loc_A44B93: NewIfNullPr clspartida
  loc_A44B96: from_stack_1 = clspartida.RecordCount
  loc_A44B9B: ILdRf var_9C
  loc_A44B9E: LitI4 0
  loc_A44BA3: GtI4
  loc_A44BA4: BranchF loc_A44D66
  loc_A44BA7: FLdRfVar var_88
  loc_A44BAA: NewIfNullPr clspartida
  loc_A44BAD: Call clspartida.MoveFirst()
  loc_A44BB2: FLdRfVar var_9E
  loc_A44BB5: FLdRfVar var_88
  loc_A44BB8: NewIfNullPr clspartida
  loc_A44BBB: from_stack_1 = clspartida.EOF
  loc_A44BC0: FLdI2 var_9E
  loc_A44BC3: NotI4
  loc_A44BC4: BranchF loc_A44D66
  loc_A44BC7: FLdRfVar var_9E
  loc_A44BCA: FLdRfVar var_C8
  loc_A44BCD: FLdRfVar var_B8
  loc_A44BD0: LitVarStr var_B4, "CodiPart"
  loc_A44BD5: PopAdLdVar
  loc_A44BD6: FLdRfVar var_A4
  loc_A44BD9: FLdRfVar var_90
  loc_A44BDC: FLdRfVar var_88
  loc_A44BDF: NewIfNullPr clspartida
  loc_A44BE2: from_stack_1v = clspartida.RsFrmGet()
  loc_A44BE7: FLdPr var_90
  loc_A44BEA:  = Me.Fields
  loc_A44BEF: FLdPr var_A4
  loc_A44BF2: from_stack_2 = Me.Item(from_stack_1)
  loc_A44BF7: FLdPr var_B8
  loc_A44BFA:  = Me.Value
  loc_A44BFF: FLdRfVar var_C8
  loc_A44C02: CStrVarTmp
  loc_A44C03: FStStrNoPop var_94
  loc_A44C06: FLdRfVar var_88
  loc_A44C09: NewIfNullPr clspartida
  loc_A44C0C: from_stack_2v = clspartida.NivelPartida(from_stack_1v)
  loc_A44C11: FLdUI1
  loc_A44C15: CI2UI1
  loc_A44C17: LitI2_Byte 1
  loc_A44C19: GtI2
  loc_A44C1A: FFree1Str var_94
  loc_A44C1D: FFreeAd var_90 = "": var_A4 = ""
  loc_A44C26: FFree1Var var_C8 = ""
  loc_A44C29: BranchF loc_A44D58
  loc_A44C2C: FLdRfVar var_160
  loc_A44C2F: FLdRfVar var_124
  loc_A44C32: LitVarStr var_120, "CodiPart"
  loc_A44C37: PopAdLdVar
  loc_A44C38: FLdRfVar var_110
  loc_A44C3B: FLdRfVar var_10C
  loc_A44C3E: FLdRfVar var_88
  loc_A44C41: NewIfNullPr clspartida
  loc_A44C44: from_stack_1v = clspartida.RsFrmGet()
  loc_A44C49: FLdPr var_10C
  loc_A44C4C:  = Me.Fields
  loc_A44C51: FLdPr var_110
  loc_A44C54: from_stack_2 = Me.Item(from_stack_1)
  loc_A44C59: FLdPr var_124
  loc_A44C5C:  = Me.Value
  loc_A44C61: FLdRfVar var_150
  loc_A44C64: FLdRfVar var_140
  loc_A44C67: LitVarStr var_13C, "CodiPart"
  loc_A44C6C: PopAdLdVar
  loc_A44C6D: FLdRfVar var_12C
  loc_A44C70: FLdRfVar var_128
  loc_A44C73: FLdRfVar var_88
  loc_A44C76: NewIfNullPr clspartida
  loc_A44C79: from_stack_1v = clspartida.RsFrmGet()
  loc_A44C7E: FLdPr var_128
  loc_A44C81:  = Me.Fields
  loc_A44C86: FLdPr var_12C
  loc_A44C89: from_stack_2 = Me.Item(from_stack_1)
  loc_A44C8E: FLdPr var_140
  loc_A44C91:  = Me.Value
  loc_A44C96: FLdRfVar var_9E
  loc_A44C99: FLdRfVar var_150
  loc_A44C9C: CStrVarTmp
  loc_A44C9D: FStStrNoPop var_94
  loc_A44CA0: FLdRfVar var_88
  loc_A44CA3: NewIfNullPr clspartida
  loc_A44CA6: from_stack_2v = clspartida.NivelPartida(from_stack_1v)
  loc_A44CAB: LitVarStr var_D8, "UPDATE partida SET ImpuPart=0 WHERE PeriInfo = "
  loc_A44CB0: FLdRfVar var_C8
  loc_A44CB3: FLdRfVar var_B8
  loc_A44CB6: LitVarStr var_B4, "PeriInfo"
  loc_A44CBB: PopAdLdVar
  loc_A44CBC: FLdRfVar var_A4
  loc_A44CBF: FLdRfVar var_90
  loc_A44CC2: FLdRfVar var_88
  loc_A44CC5: NewIfNullPr clspartida
  loc_A44CC8: from_stack_1v = clspartida.RsFrmGet()
  loc_A44CCD: FLdPr var_90
  loc_A44CD0:  = Me.Fields
  loc_A44CD5: FLdPr var_A4
  loc_A44CD8: from_stack_2 = Me.Item(from_stack_1)
  loc_A44CDD: FLdPr var_B8
  loc_A44CE0:  = Me.Value
  loc_A44CE5: FLdRfVar var_C8
  loc_A44CE8: ConcatVar var_E8
  loc_A44CEC: LitVarStr var_F8, " AND CodiPart = "
  loc_A44CF1: ConcatVar var_108
  loc_A44CF5: FLdRfVar var_164
  loc_A44CF8: FLdUI1
  loc_A44CFC: CI2UI1
  loc_A44CFE: FLdRfVar var_160
  loc_A44D01: CStrVarTmp
  loc_A44D02: FStStrNoPop var_98
  loc_A44D05: FLdRfVar var_88
  loc_A44D08: NewIfNullPr clspartida
  loc_A44D0B: from_stack_3v = clspartida.PartidaNivelSuperior(from_stack_1v, from_stack_2v)
  loc_A44D10: FLdZeroAd var_164
  loc_A44D13: CVarStr var_174
  loc_A44D16: ConcatVar var_184
  loc_A44D1A: CStrVarVal var_188
  loc_A44D1E: FLdRfVar var_8C
  loc_A44D21: NewIfNullPr clspartida
  loc_A44D24: Call clspartida.RedefineRS(from_stack_1v)
  loc_A44D29: FFreeStr var_94 = "": var_98 = ""
  loc_A44D32: FFreeAd var_90 = "": var_A4 = "": var_B8 = "": var_10C = "": var_110 = "": var_128 = "": var_12C = "": var_140 = ""
  loc_A44D47: FFreeVar var_C8 = "": var_E8 = "": var_150 = "": var_160 = "": var_108 = "": var_174 = ""
  loc_A44D58: FLdRfVar var_88
  loc_A44D5B: NewIfNullPr clspartida
  loc_A44D5E: Call clspartida.MoveSiguiente()
  loc_A44D63: Branch loc_A44BB2
  loc_A44D66: LitI4 0
  loc_A44D6B: LitStr "EL PROCESO HA TERMINADO"
  loc_A44D6E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A44D73: ILdRf Me
  loc_A44D76: CastAd
  loc_A44D79: FStAdFunc var_90
  loc_A44D7C: FLdRfVar var_90
  loc_A44D7F: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_A44D84: FFree1Ad var_90
  loc_A44D87: ExitProcHresult
End Sub

Private Sub OPsinChequeCmd_Click() 'A37148
  'Data Table: 43A46C
  loc_A36F64: ILdRf Me
  loc_A36F67: CastAd
  loc_A36F6A: FStAdFunc var_88
  loc_A36F6D: FLdRfVar var_88
  loc_A36F70: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A36F75: FFree1Ad var_88
  loc_A36F78: LitI4 0
  loc_A36F7D: LitStr "Comienza el proceso..."
  loc_A36F80: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A36F85: LitStr "DROP TEMPORARY TABLE IF EXISTS tliqu;"
  loc_A36F88: LitStr " CREATE TEMPORARY TABLE liqu` ("
  loc_A36F8B: ConcatStr
  loc_A36F8C: FStStrNoPop var_8C
  loc_A36F8F: LitStr " xpeImpu` varchar(15) NOT NULL default '',"
  loc_A36F92: ConcatStr
  loc_A36F93: FStStrNoPop var_90
  loc_A36F96: LitStr " umeLiqu` SMALLINT(4) unsigned NOT NULL default '0',"
  loc_A36F99: ConcatStr
  loc_A36F9A: FStStrNoPop var_94
  loc_A36F9D: LitStr " otaLine` decimal(12,2) NOT NULL default '0.00'"
  loc_A36FA0: ConcatStr
  loc_A36FA1: FStStrNoPop var_98
  loc_A36FA4: LitStr " ) ENGINE=MyISAM ;"
  loc_A36FA7: ConcatStr
  loc_A36FA8: FStStrNoPop var_9C
  loc_A36FAB: LitStr " INSERT tliqu(ExpeImpu, NumeLiqu, TotaLine)"
  loc_A36FAE: ConcatStr
  loc_A36FAF: FStStrNoPop var_A0
  loc_A36FB2: LitStr " SELECT ExpeImpu, NumeLiqu, Sum(ImpoLine) AS TotaLine"
  loc_A36FB5: ConcatStr
  loc_A36FB6: FStStrNoPop var_A4
  loc_A36FB9: LitStr " FROM liquidaneto"
  loc_A36FBC: ConcatStr
  loc_A36FBD: FStStrNoPop var_A8
  loc_A36FC0: LitStr " WHERE PeriInfo = "
  loc_A36FC3: ConcatStr
  loc_A36FC4: FStStrNoPop var_AC
  loc_A36FC7: ImpAdLdI2 MemVar_C3D064
  loc_A36FCA: CStrUI1
  loc_A36FCC: FStStrNoPop var_B0
  loc_A36FCF: ConcatStr
  loc_A36FD0: FStStrNoPop var_B4
  loc_A36FD3: LitStr " AND CodiRete = 0"
  loc_A36FD6: ConcatStr
  loc_A36FD7: FStStrNoPop var_B8
  loc_A36FDA: LitStr " GROUP BY ExpeImpu, NumeLiqu;"
  loc_A36FDD: ConcatStr
  loc_A36FDE: FStStrNoPop var_BC
  loc_A36FE1: Call Proc_112_11_9935EC()
  loc_A36FE6: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A37003: LitStr "DROP TEMPORARY TABLE IF EXISTS torpa;"
  loc_A37006: LitStr " CREATE TEMPORARY TABLE orpa` ("
  loc_A37009: ConcatStr
  loc_A3700A: FStStrNoPop var_8C
  loc_A3700D: LitStr " xpeImpu` varchar(15) NOT NULL default '',"
  loc_A37010: ConcatStr
  loc_A37011: FStStrNoPop var_90
  loc_A37014: LitStr " umeLiqu` SMALLINT(4) unsigned NOT NULL default '0',"
  loc_A37017: ConcatStr
  loc_A37018: FStStrNoPop var_94
  loc_A3701B: LitStr " umeOrpa` smallint(4) NOT NULL default '0',"
  loc_A3701E: ConcatStr
  loc_A3701F: FStStrNoPop var_98
  loc_A37022: LitStr " otaCheq` decimal(12,2) NOT NULL default '0.00'"
  loc_A37025: ConcatStr
  loc_A37026: FStStrNoPop var_9C
  loc_A37029: LitStr " ) ENGINE=MyISAM ;"
  loc_A3702C: ConcatStr
  loc_A3702D: FStStrNoPop var_A0
  loc_A37030: LitStr " INSERT torpa(ExpeImpu, NumeLiqu, NumeOrpa, TotaCheq)"
  loc_A37033: ConcatStr
  loc_A37034: FStStrNoPop var_A4
  loc_A37037: LitStr " SELECT cheque.ExpeImpu, cheque.NumeLiqu, cheque.NumeOrpa, Sum(ImpoCheq) AS TotaCheq"
  loc_A3703A: ConcatStr
  loc_A3703B: FStStrNoPop var_A8
  loc_A3703E: LitStr " FROM Cheque"
  loc_A37041: ConcatStr
  loc_A37042: FStStrNoPop var_AC
  loc_A37045: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = cheque.PeriInfo AND ordenpago.NumeOrpa = cheque.NumeOrpa"
  loc_A37048: ConcatStr
  loc_A37049: FStStrNoPop var_B0
  loc_A3704C: LitStr " WHERE Cheque.PeriInfo = "
  loc_A3704F: ConcatStr
  loc_A37050: FStStrNoPop var_B4
  loc_A37053: ImpAdLdI2 MemVar_C3D064
  loc_A37056: CStrUI1
  loc_A37058: FStStrNoPop var_B8
  loc_A3705B: ConcatStr
  loc_A3705C: FStStrNoPop var_BC
  loc_A3705F: LitStr " AND FeanCheq IS NULL"
  loc_A37062: ConcatStr
  loc_A37063: FStStrNoPop var_C0
  loc_A37066: LitStr " AND TipoOrpa = 'Devengado'"
  loc_A37069: ConcatStr
  loc_A3706A: FStStrNoPop var_C4
  loc_A3706D: LitStr " GROUP BY ExpeImpu, NumeLiqu, NumeOrpa;"
  loc_A37070: ConcatStr
  loc_A37071: FStStrNoPop var_C8
  loc_A37074: Call Proc_112_11_9935EC()
  loc_A37079: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_A3709C: LitStr "SELECT tliqu.ExpeImpu, tliqu.NumeLiqu, NumeOrpa, TotaLine, TotaCheq"
  loc_A3709F: LitStr " FROM tliqu"
  loc_A370A2: ConcatStr
  loc_A370A3: FStStrNoPop var_8C
  loc_A370A6: LitStr " LEFT JOIN torpa ON torpa.ExpeImpu = tliqu.ExpeImpu AND torpa.NumeLiqu = tliqu.NumeLiqu"
  loc_A370A9: ConcatStr
  loc_A370AA: FStStrNoPop var_90
  loc_A370AD: LitStr " WHERE TotaLine <> TotaCheq"
  loc_A370B0: ConcatStr
  loc_A370B1: FStStrNoPop var_94
  loc_A370B4: Call Proc_112_11_9935EC()
  loc_A370B9: FFreeStr var_8C = "": var_90 = ""
  loc_A370C2: FLdRfVar var_CC
  loc_A370C5: FLdPr Me
  loc_A370C8: MemLdPr global_52
  loc_A370CB:  = Me.RecordCount
  loc_A370D0: ILdRf var_CC
  loc_A370D3: CStrI4
  loc_A370D5: FStStrNoPop var_8C
  loc_A370D8: LitStr " registro/s"
  loc_A370DB: ConcatStr
  loc_A370DC: CVarStr var_DC
  loc_A370DF: PopAdLdVar
  loc_A370E0: FLdPr Me
  loc_A370E3: VCallAd Control_ID_dgdABMS
  loc_A370E6: FStAdFunc var_88
  loc_A370E9: FLdPr var_88
  loc_A370EC: LateIdSt
  loc_A370F1: FFree1Str var_8C
  loc_A370F4: FFree1Ad var_88
  loc_A370F7: FFree1Var var_DC = ""
  loc_A370FA: FLdPr Me
  loc_A370FD: MemLdStr global_52
  loc_A37100: CastAd
  loc_A37103: CVarUnk
  loc_A37107: PopAdLdVar
  loc_A37108: VerifyVarObj
  loc_A3710A: FLdPr Me
  loc_A3710D: VCallAd Control_ID_dgdABMS
  loc_A37110: FStAdFunc var_88
  loc_A37113: FLdPr var_88
  loc_A37116: LateIdStAd
  loc_A3711E: FFree1Ad var_88
  loc_A37121: FFree1Var var_DC = ""
  loc_A37124: LitI4 0
  loc_A37129: LitStr "Fin del proceso..."
  loc_A3712C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A37131: ILdRf Me
  loc_A37134: CastAd
  loc_A37137: FStAdFunc var_88
  loc_A3713A: FLdRfVar var_88
  loc_A3713D: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_A37142: FFree1Ad var_88
  loc_A37145: ExitProcHresult
  loc_A37146: LitStr "SELECT NumeOrpa FROM movibanco mb WHERE mb.PeriInfo = "
End Sub

Private Sub ExorImpucondiferencias_Click() '9FB1DC
  'Data Table: 43A46C
  loc_9FB0AC: ILdRf Me
  loc_9FB0AF: CastAd
  loc_9FB0B2: FStAdFunc var_88
  loc_9FB0B5: FLdRfVar var_88
  loc_9FB0B8: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9FB0BD: FFree1Ad var_88
  loc_9FB0C0: LitI4 0
  loc_9FB0C5: LitStr "Comienza el proceso..."
  loc_9FB0C8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9FB0CD: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_9FB0D0: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_9FB0D3: ConcatStr
  loc_9FB0D4: FStStrNoPop var_8C
  loc_9FB0D7: LitStr " SELECT ExorImpu, CodiPart, CodiOrga,"
  loc_9FB0DA: ConcatStr
  loc_9FB0DB: FStStrNoPop var_90
  loc_9FB0DE: LitStr " Sum(PrevImpu) PrevImpu, Sum(DefiImpu) DefiImpu, Sum(DeveImpu) DeveImpu,"
  loc_9FB0E1: ConcatStr
  loc_9FB0E2: FStStrNoPop var_94
  loc_9FB0E5: LitStr " Sum(MapaImpu) MapaImpu, Sum(PagaImpu) PagaImpu"
  loc_9FB0E8: ConcatStr
  loc_9FB0E9: FStStrNoPop var_98
  loc_9FB0EC: LitStr " FROM imputacion"
  loc_9FB0EF: ConcatStr
  loc_9FB0F0: FStStrNoPop var_9C
  loc_9FB0F3: LitStr " WHERE PeriInfo = "
  loc_9FB0F6: ConcatStr
  loc_9FB0F7: FStStrNoPop var_A0
  loc_9FB0FA: ImpAdLdI2 MemVar_C3D064
  loc_9FB0FD: CStrUI1
  loc_9FB0FF: FStStrNoPop var_A4
  loc_9FB102: ConcatStr
  loc_9FB103: FStStrNoPop var_A8
  loc_9FB106: LitStr " GROUP BY ExorImpu, CodiPart, CodiOrga;"
  loc_9FB109: ConcatStr
  loc_9FB10A: FStStrNoPop var_AC
  loc_9FB10D: Call Proc_112_11_9935EC()
  loc_9FB112: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9FB127: LitStr " SELECT * FROM tmovi"
  loc_9FB12A: LitStr " WHERE (DefiImpu > PrevImpu"
  loc_9FB12D: ConcatStr
  loc_9FB12E: FStStrNoPop var_8C
  loc_9FB131: LitStr " OR  DeveImpu > DefiImpu"
  loc_9FB134: ConcatStr
  loc_9FB135: FStStrNoPop var_90
  loc_9FB138: LitStr " OR  MapaImpu > DeveImpu"
  loc_9FB13B: ConcatStr
  loc_9FB13C: FStStrNoPop var_94
  loc_9FB13F: LitStr " OR  PagaImpu > MapaImpu)"
  loc_9FB142: ConcatStr
  loc_9FB143: FStStrNoPop var_98
  loc_9FB146: Call Proc_112_11_9935EC()
  loc_9FB14B: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_9FB156: FLdRfVar var_B0
  loc_9FB159: FLdPr Me
  loc_9FB15C: MemLdPr global_52
  loc_9FB15F:  = Me.RecordCount
  loc_9FB164: ILdRf var_B0
  loc_9FB167: CStrI4
  loc_9FB169: FStStrNoPop var_8C
  loc_9FB16C: LitStr " registro/s"
  loc_9FB16F: ConcatStr
  loc_9FB170: CVarStr var_C0
  loc_9FB173: PopAdLdVar
  loc_9FB174: FLdPr Me
  loc_9FB177: VCallAd Control_ID_dgdABMS
  loc_9FB17A: FStAdFunc var_88
  loc_9FB17D: FLdPr var_88
  loc_9FB180: LateIdSt
  loc_9FB185: FFree1Str var_8C
  loc_9FB188: FFree1Ad var_88
  loc_9FB18B: FFree1Var var_C0 = ""
  loc_9FB18E: FLdPr Me
  loc_9FB191: MemLdStr global_52
  loc_9FB194: CastAd
  loc_9FB197: CVarUnk
  loc_9FB19B: PopAdLdVar
  loc_9FB19C: VerifyVarObj
  loc_9FB19E: FLdPr Me
  loc_9FB1A1: VCallAd Control_ID_dgdABMS
  loc_9FB1A4: FStAdFunc var_88
  loc_9FB1A7: FLdPr var_88
  loc_9FB1AA: LateIdStAd
  loc_9FB1B2: FFree1Ad var_88
  loc_9FB1B5: FFree1Var var_C0 = ""
  loc_9FB1B8: LitI4 0
  loc_9FB1BD: LitStr "Fin del proceso..."
  loc_9FB1C0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9FB1C5: ILdRf Me
  loc_9FB1C8: CastAd
  loc_9FB1CB: FStAdFunc var_88
  loc_9FB1CE: FLdRfVar var_88
  loc_9FB1D1: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_9FB1D6: FFree1Ad var_88
  loc_9FB1D9: ExitProcHresult
End Sub

Private Sub Form_Load() '956D3C
  'Data Table: 43A46C
  loc_956D20: LitI2_Byte 0
  loc_956D22: CR8I2
  loc_956D23: PopFPR4
  loc_956D24: FLdPr Me
  loc_956D27: Me.Left = from_stack_1s
  loc_956D2C: LitI2_Byte 0
  loc_956D2E: CR8I2
  loc_956D2F: PopFPR4
  loc_956D30: FLdPr Me
  loc_956D33: Me.Top = from_stack_1s
  loc_956D38: ExitProcHresult
  loc_956D39: FStAd var_B90 
End Sub

Private Function Proc_112_11_9935EC(arg_C) '9935EC
  'Data Table: 43A46C
  loc_993598: ILdRf arg_C
  loc_99359B: FStStrCopy var_88
  loc_99359E: LitNothing
  loc_9935A0: CastAd
  loc_9935A3: FStAdFuncNoPop
  loc_9935A6: FLdPr Me
  loc_9935A9: MemStAd
  loc_9935AD: FFree1Ad var_8C
  loc_9935B0: New Recordset
  loc_9935B4: FStAdFuncNoPop
  loc_9935B7: FLdPr Me
  loc_9935BA: MemStAd
  loc_9935BE: FFree1Ad var_8C
  loc_9935C1: LitI4 -1
  loc_9935C6: LitI4 3
  loc_9935CB: LitI4 3
  loc_9935D0: ImpAdLdI4 MemVar_C3D030
  loc_9935D3: CVarAd
  loc_9935D7: PopAdLdVar
  loc_9935D8: ILdRf var_88
  loc_9935DB: CVarStr var_9C
  loc_9935DE: PopAdLdVar
  loc_9935DF: FLdPr Me
  loc_9935E2: MemLdPr global_52
  loc_9935E5: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_9935EA: ExitProcHresult
End Function

Private Function Proc_112_12_9934D4(arg_C) '9934D4
  'Data Table: 43A46C
  loc_993480: ILdRf arg_C
  loc_993483: FStStrCopy var_88
  loc_993486: LitNothing
  loc_993488: CastAd
  loc_99348B: FStAdFuncNoPop
  loc_99348E: FLdPr Me
  loc_993491: MemStAd
  loc_993495: FFree1Ad var_8C
  loc_993498: New Recordset
  loc_99349C: FStAdFuncNoPop
  loc_99349F: FLdPr Me
  loc_9934A2: MemStAd
  loc_9934A6: FFree1Ad var_8C
  loc_9934A9: LitI4 -1
  loc_9934AE: LitI4 3
  loc_9934B3: LitI4 3
  loc_9934B8: ImpAdLdI4 MemVar_C3D030
  loc_9934BB: CVarAd
  loc_9934BF: PopAdLdVar
  loc_9934C0: ILdRf var_88
  loc_9934C3: CVarStr var_9C
  loc_9934C6: PopAdLdVar
  loc_9934C7: FLdPr Me
  loc_9934CA: MemLdPr global_56
  loc_9934CD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_9934D2: ExitProcHresult
End Function

Private Function Proc_112_13_A682E0(arg_C, arg_10, arg_14) 'A682E0
  'Data Table: 43A46C
  loc_A67FB8: ZeroRetVal
  loc_A67FBA: LitVarI2 var_F8, 3
  loc_A67FBF: LitVarI2 var_D8, 2
  loc_A67FC4: ILdRf arg_C
  loc_A67FC7: CVarRef
  loc_A67FCC: FLdRfVar var_108
  loc_A67FCF: ImpAdCallFPR4  = IIf(, , )
  loc_A67FD4: FLdRfVar var_108
  loc_A67FD7: CI2Var
  loc_A67FD8: LitI4 1
  loc_A67FDD: FLdRfVar var_A0
  loc_A67FE0: Ary1StI2
  loc_A67FE1: FFreeVar var_D8 = "": var_F8 = ""
  loc_A67FEA: LitVarI2 var_F8, 7
  loc_A67FEF: LitVarI2 var_D8, 0
  loc_A67FF4: ILdRf arg_10
  loc_A67FF7: CVarRef
  loc_A67FFC: FLdRfVar var_108
  loc_A67FFF: ImpAdCallFPR4  = IIf(, , )
  loc_A68004: LitVarI2 var_138, 0
  loc_A68009: FLdRfVar var_108
  loc_A6800C: ILdRf arg_C
  loc_A6800F: CVarRef
  loc_A68014: FLdRfVar var_148
  loc_A68017: ImpAdCallFPR4  = IIf(, , )
  loc_A6801C: FLdRfVar var_148
  loc_A6801F: CI2Var
  loc_A68020: LitI4 2
  loc_A68025: FLdRfVar var_A0
  loc_A68028: Ary1StI2
  loc_A68029: FFreeVar var_D8 = "": var_F8 = "": var_108 = "": var_138 = ""
  loc_A68036: LitI2_Byte 1
  loc_A68038: CUI1I2
  loc_A6803A: FLdRfVar var_A6
  loc_A6803D: LitI2_Byte 8
  loc_A6803F: CUI1I2
  loc_A68041: LitI2_Byte 1
  loc_A68043: CUI1I2
  loc_A68045: ForStepUI1 var_14C
  loc_A6804B: LitVarI2 var_D8, 1
  loc_A68050: FLdUI1
  loc_A68054: CI4UI1
  loc_A68055: ILdRf arg_14
  loc_A68058: CVarRef
  loc_A6805D: FLdRfVar var_F8
  loc_A68060: ImpAdCallFPR4  = Mid(, , )
  loc_A68065: FLdRfVar var_F8
  loc_A68068: FnCIntVar
  loc_A6806A: FLdUI1
  loc_A6806E: CI2UI1
  loc_A68070: LitI2_Byte 2
  loc_A68072: AddI2
  loc_A68073: CI4UI1
  loc_A68074: FLdRfVar var_A0
  loc_A68077: Ary1StI2
  loc_A68078: FFreeVar var_D8 = "": var_F8 = ""
  loc_A68081: FLdRfVar var_A6
  loc_A68084: NextStepUI1 var_14C
  loc_A6808A: LitI2_Byte 6
  loc_A6808C: LitI4 1
  loc_A68091: FLdRfVar var_A0
  loc_A68094: Ary1LdI2
  loc_A68095: MulI2
  loc_A68096: LitI2_Byte 7
  loc_A68098: LitI4 2
  loc_A6809D: FLdRfVar var_A0
  loc_A680A0: Ary1LdI2
  loc_A680A1: MulI2
  loc_A680A2: AddI2
  loc_A680A3: LitI2_Byte 8
  loc_A680A5: LitI4 3
  loc_A680AA: FLdRfVar var_A0
  loc_A680AD: Ary1LdI2
  loc_A680AE: MulI2
  loc_A680AF: AddI2
  loc_A680B0: LitI2_Byte 9
  loc_A680B2: LitI4 4
  loc_A680B7: FLdRfVar var_A0
  loc_A680BA: Ary1LdI2
  loc_A680BB: MulI2
  loc_A680BC: AddI2
  loc_A680BD: LitI2_Byte 4
  loc_A680BF: LitI4 5
  loc_A680C4: FLdRfVar var_A0
  loc_A680C7: Ary1LdI2
  loc_A680C8: MulI2
  loc_A680C9: AddI2
  loc_A680CA: LitI2_Byte 5
  loc_A680CC: LitI4 6
  loc_A680D1: FLdRfVar var_A0
  loc_A680D4: Ary1LdI2
  loc_A680D5: MulI2
  loc_A680D6: AddI2
  loc_A680D7: LitI2_Byte 6
  loc_A680D9: LitI4 7
  loc_A680DE: FLdRfVar var_A0
  loc_A680E1: Ary1LdI2
  loc_A680E2: MulI2
  loc_A680E3: AddI2
  loc_A680E4: LitI2_Byte 7
  loc_A680E6: LitI4 8
  loc_A680EB: FLdRfVar var_A0
  loc_A680EE: Ary1LdI2
  loc_A680EF: MulI2
  loc_A680F0: AddI2
  loc_A680F1: LitI2_Byte 8
  loc_A680F3: LitI4 9
  loc_A680F8: FLdRfVar var_A0
  loc_A680FB: Ary1LdI2
  loc_A680FC: MulI2
  loc_A680FD: AddI2
  loc_A680FE: LitI2_Byte 9
  loc_A68100: LitI4 &HA
  loc_A68105: FLdRfVar var_A0
  loc_A68108: Ary1LdI2
  loc_A68109: MulI2
  loc_A6810A: AddI2
  loc_A6810B: FStI2 var_14E
  loc_A6810E: FLdI2 var_14E
  loc_A68111: CR8I2
  loc_A68112: LitI2_Byte &HB
  loc_A68114: CR8I2
  loc_A68115: DivR8
  loc_A68116: FStFPR8 var_158
  loc_A68119: FLdI2 var_14E
  loc_A6811C: CR8I2
  loc_A6811D: FLdFPR8 var_158
  loc_A68120: FnFixR8
  loc_A68122: LitI2_Byte &HB
  loc_A68124: CR8I2
  loc_A68125: MulR8
  loc_A68126: SubR4
  loc_A68127: CI2R8
  loc_A68128: FStI2 var_15A
  loc_A6812B: FLdI2 var_15A
  loc_A6812E: LitI2_Byte &HA
  loc_A68130: LtI2
  loc_A68131: BranchF loc_A68143
  loc_A68134: FLdI2 var_15A
  loc_A68137: LitI4 &HB
  loc_A6813C: FLdRfVar var_A0
  loc_A6813F: Ary1StI2
  loc_A68140: Branch loc_A68225
  loc_A68143: LitVarI2 var_D8, 3
  loc_A68148: FLdRfVar var_15A
  loc_A6814B: CVarRef
  loc_A68150: FLdI2 var_15A
  loc_A68153: LitI2_Byte &HA
  loc_A68155: LtI2
  loc_A68156: CVarBoolI2 var_B8
  loc_A6815A: FLdRfVar var_F8
  loc_A6815D: ImpAdCallFPR4  = IIf(, , )
  loc_A68162: FLdRfVar var_F8
  loc_A68165: CI2Var
  loc_A68166: LitI4 2
  loc_A6816B: FLdRfVar var_A0
  loc_A6816E: Ary1StI2
  loc_A6816F: FFreeVar var_B8 = "": var_D8 = ""
  loc_A68178: LitI2_Byte 6
  loc_A6817A: LitI4 1
  loc_A6817F: FLdRfVar var_A0
  loc_A68182: Ary1LdI2
  loc_A68183: MulI2
  loc_A68184: LitI2_Byte 7
  loc_A68186: LitI4 2
  loc_A6818B: FLdRfVar var_A0
  loc_A6818E: Ary1LdI2
  loc_A6818F: MulI2
  loc_A68190: AddI2
  loc_A68191: LitI2_Byte 8
  loc_A68193: LitI4 3
  loc_A68198: FLdRfVar var_A0
  loc_A6819B: Ary1LdI2
  loc_A6819C: MulI2
  loc_A6819D: AddI2
  loc_A6819E: LitI2_Byte 9
  loc_A681A0: LitI4 4
  loc_A681A5: FLdRfVar var_A0
  loc_A681A8: Ary1LdI2
  loc_A681A9: MulI2
  loc_A681AA: AddI2
  loc_A681AB: LitI2_Byte 4
  loc_A681AD: LitI4 5
  loc_A681B2: FLdRfVar var_A0
  loc_A681B5: Ary1LdI2
  loc_A681B6: MulI2
  loc_A681B7: AddI2
  loc_A681B8: LitI2_Byte 5
  loc_A681BA: LitI4 6
  loc_A681BF: FLdRfVar var_A0
  loc_A681C2: Ary1LdI2
  loc_A681C3: MulI2
  loc_A681C4: AddI2
  loc_A681C5: LitI2_Byte 6
  loc_A681C7: LitI4 7
  loc_A681CC: FLdRfVar var_A0
  loc_A681CF: Ary1LdI2
  loc_A681D0: MulI2
  loc_A681D1: AddI2
  loc_A681D2: LitI2_Byte 7
  loc_A681D4: LitI4 8
  loc_A681D9: FLdRfVar var_A0
  loc_A681DC: Ary1LdI2
  loc_A681DD: MulI2
  loc_A681DE: AddI2
  loc_A681DF: LitI2_Byte 8
  loc_A681E1: LitI4 9
  loc_A681E6: FLdRfVar var_A0
  loc_A681E9: Ary1LdI2
  loc_A681EA: MulI2
  loc_A681EB: AddI2
  loc_A681EC: LitI2_Byte 9
  loc_A681EE: LitI4 &HA
  loc_A681F3: FLdRfVar var_A0
  loc_A681F6: Ary1LdI2
  loc_A681F7: MulI2
  loc_A681F8: AddI2
  loc_A681F9: FStI2 var_14E
  loc_A681FC: FLdI2 var_14E
  loc_A681FF: CR8I2
  loc_A68200: LitI2_Byte &HB
  loc_A68202: CR8I2
  loc_A68203: DivR8
  loc_A68204: FStFPR8 var_158
  loc_A68207: FLdI2 var_14E
  loc_A6820A: CR8I2
  loc_A6820B: FLdFPR8 var_158
  loc_A6820E: FnFixR8
  loc_A68210: LitI2_Byte &HB
  loc_A68212: CR8I2
  loc_A68213: MulR8
  loc_A68214: SubR4
  loc_A68215: CI2R8
  loc_A68216: FStI2 var_15A
  loc_A68219: FLdI2 var_15A
  loc_A6821C: LitI4 &HB
  loc_A68221: FLdRfVar var_A0
  loc_A68224: Ary1StI2
  loc_A68225: ILdRf var_88
  loc_A68228: LitI4 1
  loc_A6822D: FLdRfVar var_A0
  loc_A68230: Ary1LdI2
  loc_A68231: CStrUI1
  loc_A68233: FStStrNoPop var_160
  loc_A68236: ConcatStr
  loc_A68237: FStStrNoPop var_164
  loc_A6823A: LitI4 2
  loc_A6823F: FLdRfVar var_A0
  loc_A68242: Ary1LdI2
  loc_A68243: CStrUI1
  loc_A68245: FStStrNoPop var_168
  loc_A68248: ConcatStr
  loc_A68249: FStStrNoPop var_16C
  loc_A6824C: LitStr "-"
  loc_A6824F: ConcatStr
  loc_A68250: FStStr var_88
  loc_A68253: FFreeStr var_160 = "": var_164 = "": var_168 = ""
  loc_A6825E: LitI2_Byte 3
  loc_A68260: CUI1I2
  loc_A68262: FLdRfVar var_A8
  loc_A68265: LitI2_Byte &HA
  loc_A68267: CUI1I2
  loc_A68269: LitI2_Byte 1
  loc_A6826B: CUI1I2
  loc_A6826D: ForStepUI1 var_170
  loc_A68273: ILdRf var_88
  loc_A68276: FLdUI1
  loc_A6827A: CI4UI1
  loc_A6827B: FLdRfVar var_A0
  loc_A6827E: Ary1LdI2
  loc_A6827F: CStrUI1
  loc_A68281: FStStrNoPop var_160
  loc_A68284: ConcatStr
  loc_A68285: FStStr var_88
  loc_A68288: FFree1Str var_160
  loc_A6828B: FLdRfVar var_A8
  loc_A6828E: NextStepUI1 var_170
  loc_A68294: ILdRf var_88
  loc_A68297: LitStr "-"
  loc_A6829A: ConcatStr
  loc_A6829B: FStStrNoPop var_160
  loc_A6829E: LitI4 &HB
  loc_A682A3: FLdRfVar var_A0
  loc_A682A6: Ary1LdI2
  loc_A682A7: CStrUI1
  loc_A682A9: FStStrNoPop var_164
  loc_A682AC: ConcatStr
  loc_A682AD: FStStr var_88
  loc_A682B0: FFreeStr var_160 = ""
  loc_A682B7: LitI4 0
  loc_A682BC: LitI4 -1
  loc_A682C1: LitI4 1
  loc_A682C6: LitStr vbNullString
  loc_A682C9: LitStr "-"
  loc_A682CC: ILdRf var_88
  loc_A682CF: ImpAdCallI2 Replace(, , , , , )
  loc_A682D4: FStStr var_88
  loc_A682D7: ExitProcCbHresult
  loc_A682DD: IStI2 arg_5C2
End Function
