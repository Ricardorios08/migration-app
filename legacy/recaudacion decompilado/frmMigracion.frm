VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmMigracion
  Caption = "Migracion"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 14592
  ClientHeight = 8916
  Begin VB.CommandButton Notificacion_de_DeudaCmd
    Caption = "Notificacion de Deuda 03-08 - 1"
    Index = 1
    Left = 480
    Top = 7800
    Width = 2535
    Height = 615
    TabIndex = 34
  End
  Begin VB.CommandButton Crea_Aforos_BoletosCmd
    Caption = "Crea Aforos Boletos 17-01-2026 Estructura"
    Index = 0
    Left = 3360
    Top = 7800
    Width = 2535
    Height = 615
    TabIndex = 33
  End
  Begin VB.CommandButton CreaBoletosCmd
    Caption = "Crea Boletos problema 27 03"
    Index = 1
    Left = 11640
    Top = 2520
    Width = 2535
    Height = 615
    TabIndex = 32
  End
  Begin VB.CommandButton BajadeFacialidaddePagoConNovacionCmd
    Caption = "Baja de Facialidad de Pago Con novacion Inmueble-1"
    Index = 0
    Left = 11640
    Top = 3360
    Width = 2535
    Height = 615
    TabIndex = 31
  End
  Begin VB.CommandButton DetectaFacilidadSinDeudaCmd
    Caption = "Detectas Facilidades Activas SIN deuda en ctacte 27/02/2021"
    Index = 0
    Left = 11640
    Top = 4200
    Width = 2535
    Height = 615
    TabIndex = 30
  End
  Begin VB.CommandButton BajadeFacildiaddePagoCmd
    Caption = "Baja de Facildiad de Pago 06/02/2021"
    Index = 1
    Left = 11640
    Top = 5040
    Width = 2535
    Height = 615
    TabIndex = 29
  End
  Begin VB.CommandButton Crea_Deudores_VariosCmd
    Caption = "Crea Deudores Varios 27/12/2021"
    Index = 1
    Left = 11640
    Top = 6120
    Width = 2535
    Height = 615
    TabIndex = 28
  End
  Begin VB.CommandButton Migra_Pago_transitoCmd
    Caption = "Migra Pago Transito"
    Index = 1
    Left = 11640
    Top = 7800
    Width = 2535
    Height = 615
    TabIndex = 27
  End
  Begin VB.CommandButton Creditos_ManualesCmd
    Caption = "Creditos Manuales"
    Index = 0
    Left = 11640
    Top = 6960
    Width = 2535
    Height = 615
    TabIndex = 26
  End
  Begin VB.CommandButton BuscaLibreDeDeudaInmuebleEstado26Cmd
    Caption = "BuscaLibre de Deuda estado 26"
    Left = 9000
    Top = 7800
    Width = 2535
    Height = 615
    TabIndex = 25
  End
  Begin VB.CommandButton CreaPersonasdelaBasedeGisCmd
    Caption = "Crea Personas de la Base de GIS 11"
    Left = 6240
    Top = 7800
    Width = 2535
    Height = 615
    TabIndex = 24
  End
  Begin VB.CommandButton ArreglaEximicionCtaCteEmisionMasivaCmd
    Caption = "Arregla Exencion del 50 % Emision Masiva"
    Index = 1
    Left = 6240
    Top = 6960
    Width = 2535
    Height = 615
    TabIndex = 23
  End
  Begin VB.CommandButton ArreglaNumeCtctComercioCreditos
    Caption = "Arreglar NumeCtct de Comercio Creditos Mal Generados"
    Index = 0
    Left = 9000
    Top = 5040
    Width = 2535
    Height = 615
    TabIndex = 22
  End
  Begin VB.CommandButton BorraGrupoActualizadoCmd
    Caption = "BorraGrupoActualizado 30-01-2022"
    Left = 9000
    Top = 6120
    Width = 2535
    Height = 615
    TabIndex = 21
  End
  Begin VB.CommandButton ArreglaEstadodeApremioCmd
    Caption = "Arregla Estado de Apremio"
    Left = 9000
    Top = 6960
    Width = 2535
    Height = 615
    TabIndex = 20
  End
  Begin VB.CommandButton ArreglaNumeCtctPublicidadCmd
    Caption = "ArreglaNumeCtct Publicidad"
    Left = 9000
    Top = 4200
    Width = 2535
    Height = 615
    TabIndex = 19
  End
  Begin VB.CommandButton MigraDeudoresVariosCmd
    Caption = "Migra Deudores Varios 23"
    Left = 3360
    Top = 6960
    Width = 2535
    Height = 615
    TabIndex = 18
  End
  Begin VB.CommandButton MigraFaciaApreCmd
    Caption = "MigraFaciapre"
    Left = 9000
    Top = 3360
    Width = 2535
    Height = 615
    TabIndex = 17
  End
  Begin VB.CommandButton ArreglaNumeCtctCementerioCmd
    Caption = "ArreglaNumeCtct Difunto"
    Left = 6240
    Top = 6120
    Width = 2535
    Height = 615
    TabIndex = 16
  End
  Begin VB.CommandButton MigraDeudadeCementerioCmd
    Caption = "MigraDeudadeCementerio"
    Left = 3360
    Top = 6120
    Width = 2535
    Height = 615
    TabIndex = 15
  End
  Begin VB.CommandButton MigraDifuntoCmd
    Caption = "MigraDifunto"
    Left = 3360
    Top = 5160
    Width = 2535
    Height = 615
    TabIndex = 14
  End
  Begin VB.CommandButton ArreglaNumeCtctInmuebleCmd
    Caption = "ArreglaNumeCtct Inmueble"
    Left = 6240
    Top = 4200
    Width = 2535
    Height = 615
    TabIndex = 13
  End
  Begin VB.CommandButton MigraDeudadeInmuebleCmd
    Caption = "MigraDeudadeInmueble 31-05-2019"
    Left = 3360
    Top = 4200
    Width = 2535
    Height = 615
    TabIndex = 12
  End
  Begin VB.CommandButton ArreglaNumeCtctComercioCmd
    Caption = "ArreglaNumeCtct Comercio 16-09 V4"
    Left = 6240
    Top = 3360
    Width = 2535
    Height = 615
    TabIndex = 11
  End
  Begin VB.CommandButton MigraTipodeFacilidadCmd
    Caption = "Migra Tipo de Facilidad"
    Left = 9000
    Top = 2520
    Width = 2535
    Height = 615
    TabIndex = 10
  End
  Begin VB.CommandButton MIgraFacilidadCmd
    Caption = "MigraFacilidad"
    Left = 6240
    Top = 2520
    Width = 2535
    Height = 615
    TabIndex = 9
  End
  Begin VB.CommandButton MigraEstaComeCmd
    Caption = "MigraEstaCome"
    Left = 11640
    Top = 1800
    Width = 2535
    Height = 615
    TabIndex = 8
  End
  Begin VB.CommandButton MigraRubroCmd
    Caption = "MigraRubro"
    Left = 9000
    Top = 1800
    Width = 2535
    Height = 615
    TabIndex = 7
  End
  Begin VB.CommandButton MigraSubrubroCmd
    Caption = "MigraSubrubro"
    Left = 6240
    Top = 1800
    Width = 2535
    Height = 615
    TabIndex = 6
  End
  Begin VB.CommandButton MigraComercioCmd
    Caption = "MigraComercio 31-05-2019"
    Left = 3360
    Top = 1800
    Width = 2535
    Height = 615
    TabIndex = 5
  End
  Begin VB.CommandButton MigraApremioCmd
    Caption = "MigraApremio"
    Index = 0
    Left = 6240
    Top = 5040
    Width = 2535
    Height = 615
    TabIndex = 4
  End
  Begin VB.CommandButton MigraDeudadeComercioCmd
    Caption = "MigraDeudadeComercio 31-05-2019"
    Left = 3360
    Top = 2520
    Width = 2535
    Height = 615
    TabIndex = 3
  End
  Begin VB.CommandButton MigraInmuebleCmd
    Caption = "MigraInmueble"
    Left = 3360
    Top = 3360
    Width = 2535
    Height = 615
    TabIndex = 2
  End
  Begin VB.CommandButton cmdSalir
    Left = 11880
    Top = 720
    Width = 975
    Height = 855
    TabIndex = 0
    Picture = "frmMigracion.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 480
    Top = 360
    Width = 9015
    Height = 495
    Visible = 0   'False
    TabIndex = 1
    OleObjectBlob = "frmMigracion.frx":0252
  End
End

Attribute VB_Name = "frmMigracion"


Private Sub ArreglaNumeCtctInmuebleCmd_Click() '9E5B2C
  'Data Table: 4DFF18
  loc_9E5B08: LitI2_Byte &HB
  loc_9E5B0A: FLdPr Me
  loc_9E5B0D: Me.MousePointer = from_stack_1
  loc_9E5B12: FLdPr Me
  loc_9E5B15: MemLdRfVar from_stack_1.global_52
  loc_9E5B18: NewIfNullPr clsmigracion
  loc_9E5B1B: Call clsmigracion.ArreglaNumeCtctInmueble()
  loc_9E5B20: LitI2_Byte 0
  loc_9E5B22: FLdPr Me
  loc_9E5B25: Me.MousePointer = from_stack_1
  loc_9E5B2A: ExitProcHresult
End Sub

Private Sub Migra_Pago_transitoCmd_Click() '9E60C0
  'Data Table: 4DFF18
  loc_9E609C: LitI2_Byte &HB
  loc_9E609E: FLdPr Me
  loc_9E60A1: Me.MousePointer = from_stack_1
  loc_9E60A6: FLdPr Me
  loc_9E60A9: MemLdRfVar from_stack_1.global_52
  loc_9E60AC: NewIfNullPr clsmigracion
  loc_9E60AF: Call clsmigracion.MigraPagosTransito()
  loc_9E60B4: LitI2_Byte 0
  loc_9E60B6: FLdPr Me
  loc_9E60B9: Me.MousePointer = from_stack_1
  loc_9E60BE: ExitProcHresult
End Sub

Private Sub Creditos_ManualesCmd_Click() '9E5FC4
  'Data Table: 4DFF18
  loc_9E5FA0: LitI2_Byte &HB
  loc_9E5FA2: FLdPr Me
  loc_9E5FA5: Me.MousePointer = from_stack_1
  loc_9E5FAA: FLdPr Me
  loc_9E5FAD: MemLdRfVar from_stack_1.global_52
  loc_9E5FB0: NewIfNullPr clsmigracion
  loc_9E5FB3: Call clsmigracion.CreditosManuales()
  loc_9E5FB8: LitI2_Byte 0
  loc_9E5FBA: FLdPr Me
  loc_9E5FBD: Me.MousePointer = from_stack_1
  loc_9E5FC2: ExitProcHresult
End Sub

Private Sub ArreglaNumeCtctPublicidadCmd_Click() '9E5B80
  'Data Table: 4DFF18
  loc_9E5B5C: LitI2_Byte &HB
  loc_9E5B5E: FLdPr Me
  loc_9E5B61: Me.MousePointer = from_stack_1
  loc_9E5B66: FLdPr Me
  loc_9E5B69: MemLdRfVar from_stack_1.global_52
  loc_9E5B6C: NewIfNullPr clsmigracion
  loc_9E5B6F: Call clsmigracion.ArreglaNumeCtctPublicidad()
  loc_9E5B74: LitI2_Byte 0
  loc_9E5B76: FLdPr Me
  loc_9E5B79: Me.MousePointer = from_stack_1
  loc_9E5B7E: ExitProcHresult
End Sub

Private Sub BuscaLibreDeDeudaInmuebleEstado26Cmd_Click() 'AFFC88
  'Data Table: 4DFF18
  loc_AFFAB4: LitI2_Byte 0
  loc_AFFAB6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AFFABB: FStFPR8 var_98
  loc_AFFABE: FLdRfVar var_B0
  loc_AFFAC1: LitI2_Byte 0
  loc_AFFAC3: LitI2_Byte &HFF
  loc_AFFAC5: LitStr "c:\temp\librededeuda-estado26.txt"
  loc_AFFAC8: FLdRfVar var_9C
  loc_AFFACB: NewIfNullPr IFileSystem3
  loc_AFFACE: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_AFFAD3: FLdZeroAd var_B0
  loc_AFFAD6: FStVarAdFunc
  loc_AFFADA: LitStr "Ofic"
  loc_AFFADD: LitStr ";"
  loc_AFFAE0: ConcatStr
  loc_AFFAE1: FStStrNoPop var_B4
  loc_AFFAE4: LitStr "Cuenta"
  loc_AFFAE7: ConcatStr
  loc_AFFAE8: CVarStr var_C4
  loc_AFFAEB: PopAdLdVar
  loc_AFFAEC: FLdRfVar var_AC
  loc_AFFAEF: LdPrVar
  loc_AFFAF1: LateMemCall
  loc_AFFAF7: FFree1Str var_B4
  loc_AFFAFA: FFree1Var var_C4 = ""
  loc_AFFAFD: LitStr "SELECT vpadrones_parcela.nro_padron"
  loc_AFFB00: LitStr " FROM vpadrones_parcela"
  loc_AFFB03: ConcatStr
  loc_AFFB04: FStStrNoPop var_B4
  loc_AFFB07: LitStr " WHERE parcela_estado_codigo = 26"
  loc_AFFB0A: ConcatStr
  loc_AFFB0B: FStStrNoPop var_D8
  loc_AFFB0E: LitStr " GROUP BY vpadrones_parcela.nro_padron"
  loc_AFFB11: ConcatStr
  loc_AFFB12: FStStrNoPop var_DC
  loc_AFFB15: FLdRfVar var_88
  loc_AFFB18: NewIfNullPr clsboleto
  loc_AFFB1B: Call clsboleto.RedefineRS(from_stack_1v)
  loc_AFFB20: FFreeStr var_B4 = "": var_D8 = ""
  loc_AFFB29: FLdRfVar var_E0
  loc_AFFB2C: FLdRfVar var_B0
  loc_AFFB2F: FLdRfVar var_88
  loc_AFFB32: NewIfNullPr clsboleto
  loc_AFFB35: from_stack_1v = clsboleto.RsFrmGet()
  loc_AFFB3A: FLdPr var_B0
  loc_AFFB3D:  = Me.RecordCount
  loc_AFFB42: ILdRf var_E0
  loc_AFFB45: LitI4 0
  loc_AFFB4A: GtI4
  loc_AFFB4B: FFree1Ad var_B0
  loc_AFFB4E: BranchF loc_AFFC7A
  loc_AFFB51: FLdRfVar var_B0
  loc_AFFB54: FLdRfVar var_88
  loc_AFFB57: NewIfNullPr clsboleto
  loc_AFFB5A: from_stack_1v = clsboleto.RsFrmGet()
  loc_AFFB5F: FLdPr var_B0
  loc_AFFB62: Me.MoveFirst
  loc_AFFB67: FFree1Ad var_B0
  loc_AFFB6A: FLdRfVar var_E2
  loc_AFFB6D: FLdRfVar var_B0
  loc_AFFB70: FLdRfVar var_88
  loc_AFFB73: NewIfNullPr clsboleto
  loc_AFFB76: from_stack_1v = clsboleto.RsFrmGet()
  loc_AFFB7B: FLdPr var_B0
  loc_AFFB7E:  = Me.EOF
  loc_AFFB83: FLdI2 var_E2
  loc_AFFB86: NotI4
  loc_AFFB87: FFree1Ad var_B0
  loc_AFFB8A: BranchF loc_AFFC7A
  loc_AFFB8D: FLdRfVar var_C4
  loc_AFFB90: FLdRfVar var_EC
  loc_AFFB93: LitVarStr var_D4, "nro_padron"
  loc_AFFB98: PopAdLdVar
  loc_AFFB99: FLdRfVar var_E8
  loc_AFFB9C: FLdRfVar var_B0
  loc_AFFB9F: FLdRfVar var_88
  loc_AFFBA2: NewIfNullPr clsboleto
  loc_AFFBA5: from_stack_1v = clsboleto.RsFrmGet()
  loc_AFFBAA: FLdPr var_B0
  loc_AFFBAD:  = Me.Fields
  loc_AFFBB2: FLdPr var_E8
  loc_AFFBB5: from_stack_2 = Me.Item(from_stack_1)
  loc_AFFBBA: FLdPr var_EC
  loc_AFFBBD:  = Me.Value
  loc_AFFBC2: FLdFPR8 var_98
  loc_AFFBC5: CStrDate
  loc_AFFBC7: FStStrNoPop var_D8
  loc_AFFBCA: FLdRfVar var_C4
  loc_AFFBCD: CStrVarTmp
  loc_AFFBCE: FStStrNoPop var_B4
  loc_AFFBD1: LitI2_Byte 1
  loc_AFFBD3: CUI1I2
  loc_AFFBD5: ImpAdCallFPR4 Proc_270_104_B20D90(, , )
  loc_AFFBDA: FStFPR8 var_90
  loc_AFFBDD: FFreeStr var_B4 = ""
  loc_AFFBE4: FFreeAd var_B0 = "": var_E8 = ""
  loc_AFFBED: FFree1Var var_C4 = ""
  loc_AFFBF0: FLdFPR8 var_90
  loc_AFFBF3: LitI2_Byte 0
  loc_AFFBF5: CR8I2
  loc_AFFBF6: LeR8
  loc_AFFBF7: BranchF loc_AFFC5E
  loc_AFFBFA: LitStr "1"
  loc_AFFBFD: LitStr ";"
  loc_AFFC00: ConcatStr
  loc_AFFC01: CVarStr var_FC
  loc_AFFC04: FLdRfVar var_C4
  loc_AFFC07: FLdRfVar var_EC
  loc_AFFC0A: LitVarStr var_D4, "nro_padron"
  loc_AFFC0F: PopAdLdVar
  loc_AFFC10: FLdRfVar var_E8
  loc_AFFC13: FLdRfVar var_B0
  loc_AFFC16: FLdRfVar var_88
  loc_AFFC19: NewIfNullPr clsboleto
  loc_AFFC1C: from_stack_1v = clsboleto.RsFrmGet()
  loc_AFFC21: FLdPr var_B0
  loc_AFFC24:  = Me.Fields
  loc_AFFC29: FLdPr var_E8
  loc_AFFC2C: from_stack_2 = Me.Item(from_stack_1)
  loc_AFFC31: FLdPr var_EC
  loc_AFFC34:  = Me.Value
  loc_AFFC39: FLdRfVar var_C4
  loc_AFFC3C: ConcatVar var_10C
  loc_AFFC40: PopAdLdVar
  loc_AFFC41: FLdRfVar var_AC
  loc_AFFC44: LdPrVar
  loc_AFFC46: LateMemCall
  loc_AFFC4C: FFreeAd var_B0 = "": var_E8 = ""
  loc_AFFC55: FFreeVar var_FC = "": var_C4 = ""
  loc_AFFC5E: FLdRfVar var_B0
  loc_AFFC61: FLdRfVar var_88
  loc_AFFC64: NewIfNullPr clsboleto
  loc_AFFC67: from_stack_1v = clsboleto.RsFrmGet()
  loc_AFFC6C: FLdPr var_B0
  loc_AFFC6F: Me.MoveNext
  loc_AFFC74: FFree1Ad var_B0
  loc_AFFC77: Branch loc_AFFB6A
  loc_AFFC7A: FLdRfVar var_AC
  loc_AFFC7D: LdPrVar
  loc_AFFC7F: LateMemCall
  loc_AFFC85: ExitProcHresult
End Sub

Private Sub MIgraFacilidadCmd_Click() '9E67A4
  'Data Table: 4DFF18
  loc_9E6780: LitI2_Byte &HB
  loc_9E6782: FLdPr Me
  loc_9E6785: Me.MousePointer = from_stack_1
  loc_9E678A: FLdPr Me
  loc_9E678D: MemLdRfVar from_stack_1.global_52
  loc_9E6790: NewIfNullPr clsmigracion
  loc_9E6793: Call clsmigracion.MigraFacilidad()
  loc_9E6798: LitI2_Byte 0
  loc_9E679A: FLdPr Me
  loc_9E679D: Me.MousePointer = from_stack_1
  loc_9E67A2: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9CD490
  'Data Table: 4DFF18
  loc_9CD478: ILdRf Me
  loc_9CD47B: FStAdNoPop
  loc_9CD47F: ImpAdLdRf MemVar_D9C5D8
  loc_9CD482: NewIfNullPr Global
  loc_9CD485: Global.Unload from_stack_1
  loc_9CD48A: FFree1Ad var_88
  loc_9CD48D: ExitProcHresult
End Sub

Private Sub CreaBoletosCmd_Click() '9E5E74
  'Data Table: 4DFF18
  loc_9E5E50: LitI2_Byte &HB
  loc_9E5E52: FLdPr Me
  loc_9E5E55: Me.MousePointer = from_stack_1
  loc_9E5E5A: FLdPr Me
  loc_9E5E5D: MemLdRfVar from_stack_1.global_52
  loc_9E5E60: NewIfNullPr clsmigracion
  loc_9E5E63: Call clsmigracion.CreaBoletosProblema27022023()
  loc_9E5E68: LitI2_Byte 0
  loc_9E5E6A: FLdPr Me
  loc_9E5E6D: Me.MousePointer = from_stack_1
  loc_9E5E72: ExitProcHresult
End Sub

Private Sub MigraApremioCmd_Click() '9E6114
  'Data Table: 4DFF18
  loc_9E60F0: LitI2_Byte &HB
  loc_9E60F2: FLdPr Me
  loc_9E60F5: Me.MousePointer = from_stack_1
  loc_9E60FA: FLdPr Me
  loc_9E60FD: MemLdRfVar from_stack_1.global_52
  loc_9E6100: NewIfNullPr clsmigracion
  loc_9E6103: Call clsmigracion.MigraApremio()
  loc_9E6108: LitI2_Byte 0
  loc_9E610A: FLdPr Me
  loc_9E610D: Me.MousePointer = from_stack_1
  loc_9E6112: ExitProcHresult
End Sub

Private Sub ArreglaEstadodeApremioCmd_Click() '9E5BD4
  'Data Table: 4DFF18
  loc_9E5BB0: LitI2_Byte &HB
  loc_9E5BB2: FLdPr Me
  loc_9E5BB5: Me.MousePointer = from_stack_1
  loc_9E5BBA: FLdPr Me
  loc_9E5BBD: MemLdRfVar from_stack_1.global_52
  loc_9E5BC0: NewIfNullPr clsmigracion
  loc_9E5BC3: Call clsmigracion.ArreglaEstadodeApremioPagado()
  loc_9E5BC8: LitI2_Byte 0
  loc_9E5BCA: FLdPr Me
  loc_9E5BCD: Me.MousePointer = from_stack_1
  loc_9E5BD2: ExitProcHresult
End Sub

Private Sub ArreglaEximicionCtaCteEmisionMasivaCmd_Click() '9C53DC
  'Data Table: 4DFF18
  loc_9C53C4: LitI2_Byte &HB
  loc_9C53C6: FLdPr Me
  loc_9C53C9: Me.MousePointer = from_stack_1
  loc_9C53CE: LitI2_Byte 0
  loc_9C53D0: FLdPr Me
  loc_9C53D3: Me.MousePointer = from_stack_1
  loc_9C53D8: ExitProcHresult
End Sub

Private Sub BajadeFacildiaddePagoCmd_Click() '9E5A84
  'Data Table: 4DFF18
  loc_9E5A60: LitI2_Byte &HB
  loc_9E5A62: FLdPr Me
  loc_9E5A65: Me.MousePointer = from_stack_1
  loc_9E5A6A: FLdPr Me
  loc_9E5A6D: MemLdRfVar from_stack_1.global_52
  loc_9E5A70: NewIfNullPr clsmigracion
  loc_9E5A73: Call clsmigracion.BajadeFacildiaddePago()
  loc_9E5A78: LitI2_Byte 0
  loc_9E5A7A: FLdPr Me
  loc_9E5A7D: Me.MousePointer = from_stack_1
  loc_9E5A82: ExitProcHresult
End Sub

Private Sub MigraDeudadeCementerioCmd_Click() '9E6558
  'Data Table: 4DFF18
  loc_9E6534: LitI2_Byte &HB
  loc_9E6536: FLdPr Me
  loc_9E6539: Me.MousePointer = from_stack_1
  loc_9E653E: FLdPr Me
  loc_9E6541: MemLdRfVar from_stack_1.global_52
  loc_9E6544: NewIfNullPr clsmigracion
  loc_9E6547: Call clsmigracion.MigraDeudadeCementerio()
  loc_9E654C: LitI2_Byte 0
  loc_9E654E: FLdPr Me
  loc_9E6551: Me.MousePointer = from_stack_1
  loc_9E6556: ExitProcHresult
End Sub

Private Sub MigraEstaComeCmd_Click() '9E6750
  'Data Table: 4DFF18
  loc_9E672C: LitI2_Byte &HB
  loc_9E672E: FLdPr Me
  loc_9E6731: Me.MousePointer = from_stack_1
  loc_9E6736: FLdPr Me
  loc_9E6739: MemLdRfVar from_stack_1.global_52
  loc_9E673C: NewIfNullPr clsmigracion
  loc_9E673F: Call clsmigracion.MigraEstaCome()
  loc_9E6744: LitI2_Byte 0
  loc_9E6746: FLdPr Me
  loc_9E6749: Me.MousePointer = from_stack_1
  loc_9E674E: ExitProcHresult
End Sub

Private Sub MigraFaciaApreCmd_Click() '9E64B0
  'Data Table: 4DFF18
  loc_9E648C: LitI2_Byte &HB
  loc_9E648E: FLdPr Me
  loc_9E6491: Me.MousePointer = from_stack_1
  loc_9E6496: FLdPr Me
  loc_9E6499: MemLdRfVar from_stack_1.global_52
  loc_9E649C: NewIfNullPr clsmigracion
  loc_9E649F: Call clsmigracion.MigraFaciApre()
  loc_9E64A4: LitI2_Byte 0
  loc_9E64A6: FLdPr Me
  loc_9E64A9: Me.MousePointer = from_stack_1
  loc_9E64AE: ExitProcHresult
End Sub

Private Sub Notificacion_de_DeudaCmd_Click() '9E6AEC
  'Data Table: 4DFF18
  loc_9E6AC8: LitI2_Byte &HB
  loc_9E6ACA: FLdPr Me
  loc_9E6ACD: Me.MousePointer = from_stack_1
  loc_9E6AD2: FLdPr Me
  loc_9E6AD5: MemLdRfVar from_stack_1.global_52
  loc_9E6AD8: NewIfNullPr clsmigracion
  loc_9E6ADB: Call clsmigracion.Notificacion_de_Deuda()
  loc_9E6AE0: LitI2_Byte 0
  loc_9E6AE2: FLdPr Me
  loc_9E6AE5: Me.MousePointer = from_stack_1
  loc_9E6AEA: ExitProcHresult
End Sub

Private Sub MigraDeudadeInmuebleCmd_Click() '9E6600
  'Data Table: 4DFF18
  loc_9E65DC: LitI2_Byte &HB
  loc_9E65DE: FLdPr Me
  loc_9E65E1: Me.MousePointer = from_stack_1
  loc_9E65E6: FLdPr Me
  loc_9E65E9: MemLdRfVar from_stack_1.global_52
  loc_9E65EC: NewIfNullPr clsmigracion
  loc_9E65EF: Call clsmigracion.MigraDeudadeInmueble()
  loc_9E65F4: LitI2_Byte 0
  loc_9E65F6: FLdPr Me
  loc_9E65F9: Me.MousePointer = from_stack_1
  loc_9E65FE: ExitProcHresult
End Sub

Private Sub CreaPersonasdelaBasedeGisCmd_Click() '9E5EC8
  'Data Table: 4DFF18
  loc_9E5EA4: LitI2_Byte &HB
  loc_9E5EA6: FLdPr Me
  loc_9E5EA9: Me.MousePointer = from_stack_1
  loc_9E5EAE: FLdPr Me
  loc_9E5EB1: MemLdRfVar from_stack_1.global_52
  loc_9E5EB4: NewIfNullPr clsmigracion
  loc_9E5EB7: Call clsmigracion.CreaTitulardelaBaseGis()
  loc_9E5EBC: LitI2_Byte 0
  loc_9E5EBE: FLdPr Me
  loc_9E5EC1: Me.MousePointer = from_stack_1
  loc_9E5EC6: ExitProcHresult
End Sub

Private Sub MigraSubrubroCmd_Click() '9E684C
  'Data Table: 4DFF18
  loc_9E6828: LitI2_Byte &HB
  loc_9E682A: FLdPr Me
  loc_9E682D: Me.MousePointer = from_stack_1
  loc_9E6832: FLdPr Me
  loc_9E6835: MemLdRfVar from_stack_1.global_52
  loc_9E6838: NewIfNullPr clsmigracion
  loc_9E683B: Call clsmigracion.MigraSubrubro()
  loc_9E6840: LitI2_Byte 0
  loc_9E6842: FLdPr Me
  loc_9E6845: Me.MousePointer = from_stack_1
  loc_9E684A: ExitProcHresult
End Sub

Private Sub Crea_Deudores_VariosCmd_Click() '9E5E20
  'Data Table: 4DFF18
  loc_9E5DFC: LitI2_Byte &HB
  loc_9E5DFE: FLdPr Me
  loc_9E5E01: Me.MousePointer = from_stack_1
  loc_9E5E06: FLdPr Me
  loc_9E5E09: MemLdRfVar from_stack_1.global_52
  loc_9E5E0C: NewIfNullPr clsmigracion
  loc_9E5E0F: Call clsmigracion.CreaDeudoresVarios()
  loc_9E5E14: LitI2_Byte 0
  loc_9E5E16: FLdPr Me
  loc_9E5E19: Me.MousePointer = from_stack_1
  loc_9E5E1E: ExitProcHresult
End Sub

Private Sub ArreglaNumeCtctCementerioCmd_Click() '9E5790
  'Data Table: 4DFF18
  loc_9E576C: LitI2_Byte &HB
  loc_9E576E: FLdPr Me
  loc_9E5771: Me.MousePointer = from_stack_1
  loc_9E5776: FLdPr Me
  loc_9E5779: MemLdRfVar from_stack_1.global_52
  loc_9E577C: NewIfNullPr clsmigracion
  loc_9E577F: Call clsmigracion.ArreglaNumeCtctCementerio()
  loc_9E5784: LitI2_Byte 0
  loc_9E5786: FLdPr Me
  loc_9E5789: Me.MousePointer = from_stack_1
  loc_9E578E: ExitProcHresult
End Sub

Private Sub MigraInmuebleCmd_Click() '9E699C
  'Data Table: 4DFF18
  loc_9E6978: LitI2_Byte &HB
  loc_9E697A: FLdPr Me
  loc_9E697D: Me.MousePointer = from_stack_1
  loc_9E6982: FLdPr Me
  loc_9E6985: MemLdRfVar from_stack_1.global_52
  loc_9E6988: NewIfNullPr clsmigracion
  loc_9E698B: Call clsmigracion.MigraInmueble()
  loc_9E6990: LitI2_Byte 0
  loc_9E6992: FLdPr Me
  loc_9E6995: Me.MousePointer = from_stack_1
  loc_9E699A: ExitProcHresult
End Sub

Private Sub Crea_Aforos_BoletosCmd_Click() '9E5D78
  'Data Table: 4DFF18
  loc_9E5D54: LitI2_Byte &HB
  loc_9E5D56: FLdPr Me
  loc_9E5D59: Me.MousePointer = from_stack_1
  loc_9E5D5E: FLdPr Me
  loc_9E5D61: MemLdRfVar from_stack_1.global_52
  loc_9E5D64: NewIfNullPr clsmigracion
  loc_9E5D67: Call clsmigracion.Creditos_ctacte_boletos()
  loc_9E5D6C: LitI2_Byte 0
  loc_9E5D6E: FLdPr Me
  loc_9E5D71: Me.MousePointer = from_stack_1
  loc_9E5D76: ExitProcHresult
End Sub

Private Sub MigraTipodeFacilidadCmd_Click() '9E6A98
  'Data Table: 4DFF18
  loc_9E6A74: LitI2_Byte &HB
  loc_9E6A76: FLdPr Me
  loc_9E6A79: Me.MousePointer = from_stack_1
  loc_9E6A7E: FLdPr Me
  loc_9E6A81: MemLdRfVar from_stack_1.global_52
  loc_9E6A84: NewIfNullPr clsmigracion
  loc_9E6A87: Call clsmigracion.MigraTipoFacilidad()
  loc_9E6A8C: LitI2_Byte 0
  loc_9E6A8E: FLdPr Me
  loc_9E6A91: Me.MousePointer = from_stack_1
  loc_9E6A96: ExitProcHresult
End Sub

Private Sub BajadeFacialidaddePagoConNovacionCmd_Click() '9E5988
  'Data Table: 4DFF18
  loc_9E5964: LitI2_Byte &HB
  loc_9E5966: FLdPr Me
  loc_9E5969: Me.MousePointer = from_stack_1
  loc_9E596E: FLdPr Me
  loc_9E5971: MemLdRfVar from_stack_1.global_52
  loc_9E5974: NewIfNullPr clsmigracion
  loc_9E5977: Call clsmigracion.BajadeFacildiaddePagoCONnovacion()
  loc_9E597C: LitI2_Byte 0
  loc_9E597E: FLdPr Me
  loc_9E5981: Me.MousePointer = from_stack_1
  loc_9E5986: ExitProcHresult
End Sub

Private Sub MigraRubroCmd_Click() '9E67F8
  'Data Table: 4DFF18
  loc_9E67D4: LitI2_Byte &HB
  loc_9E67D6: FLdPr Me
  loc_9E67D9: Me.MousePointer = from_stack_1
  loc_9E67DE: FLdPr Me
  loc_9E67E1: MemLdRfVar from_stack_1.global_52
  loc_9E67E4: NewIfNullPr clsmigracion
  loc_9E67E7: Call clsmigracion.MigraRubro()
  loc_9E67EC: LitI2_Byte 0
  loc_9E67EE: FLdPr Me
  loc_9E67F1: Me.MousePointer = from_stack_1
  loc_9E67F6: ExitProcHresult
End Sub

Private Sub BorraGrupoActualizadoCmd_Click() '9E5C28
  'Data Table: 4DFF18
  loc_9E5C04: LitI2_Byte &HB
  loc_9E5C06: FLdPr Me
  loc_9E5C09: Me.MousePointer = from_stack_1
  loc_9E5C0E: FLdPr Me
  loc_9E5C11: MemLdRfVar from_stack_1.global_52
  loc_9E5C14: NewIfNullPr clsmigracion
  loc_9E5C17: Call clsmigracion.BorraGrupoActualizado()
  loc_9E5C1C: LitI2_Byte 0
  loc_9E5C1E: FLdPr Me
  loc_9E5C21: Me.MousePointer = from_stack_1
  loc_9E5C26: ExitProcHresult
End Sub

Private Sub MigraDifuntoCmd_Click() '9E66A8
  'Data Table: 4DFF18
  loc_9E6684: LitI2_Byte &HB
  loc_9E6686: FLdPr Me
  loc_9E6689: Me.MousePointer = from_stack_1
  loc_9E668E: FLdPr Me
  loc_9E6691: MemLdRfVar from_stack_1.global_52
  loc_9E6694: NewIfNullPr clsmigracion
  loc_9E6697: Call clsmigracion.MigraDifunto()
  loc_9E669C: LitI2_Byte 0
  loc_9E669E: FLdPr Me
  loc_9E66A1: Me.MousePointer = from_stack_1
  loc_9E66A6: ExitProcHresult
End Sub

Private Sub ArreglaNumeCtctComercioCmd_Click() '9E57E4
  'Data Table: 4DFF18
  loc_9E57C0: LitI2_Byte &HB
  loc_9E57C2: FLdPr Me
  loc_9E57C5: Me.MousePointer = from_stack_1
  loc_9E57CA: FLdPr Me
  loc_9E57CD: MemLdRfVar from_stack_1.global_52
  loc_9E57D0: NewIfNullPr clsmigracion
  loc_9E57D3: Call clsmigracion.ArreglaNumeCtctComercio()
  loc_9E57D8: LitI2_Byte 0
  loc_9E57DA: FLdPr Me
  loc_9E57DD: Me.MousePointer = from_stack_1
  loc_9E57E2: ExitProcHresult
End Sub

Private Sub DetectaFacilidadSinDeudaCmd_Click() '9E6018
  'Data Table: 4DFF18
  loc_9E5FF4: LitI2_Byte &HB
  loc_9E5FF6: FLdPr Me
  loc_9E5FF9: Me.MousePointer = from_stack_1
  loc_9E5FFE: FLdPr Me
  loc_9E6001: MemLdRfVar from_stack_1.global_52
  loc_9E6004: NewIfNullPr clsmigracion
  loc_9E6007: Call clsmigracion.DetectaFacildiadActivaSinDeudaenCtacte()
  loc_9E600C: LitI2_Byte 0
  loc_9E600E: FLdPr Me
  loc_9E6011: Me.MousePointer = from_stack_1
  loc_9E6016: ExitProcHresult
End Sub

Private Sub MigraDeudoresVariosCmd_Click() '9E61BC
  'Data Table: 4DFF18
  loc_9E6198: LitI2_Byte &HB
  loc_9E619A: FLdPr Me
  loc_9E619D: Me.MousePointer = from_stack_1
  loc_9E61A2: FLdPr Me
  loc_9E61A5: MemLdRfVar from_stack_1.global_52
  loc_9E61A8: NewIfNullPr clsmigracion
  loc_9E61AB: Call clsmigracion.MigraDeudoresVarios()
  loc_9E61B0: LitI2_Byte 0
  loc_9E61B2: FLdPr Me
  loc_9E61B5: Me.MousePointer = from_stack_1
  loc_9E61BA: ExitProcHresult
End Sub

Private Sub ArreglaNumeCtctComercioCreditos_Click() '9E58E0
  'Data Table: 4DFF18
  loc_9E58BC: LitI2_Byte &HB
  loc_9E58BE: FLdPr Me
  loc_9E58C1: Me.MousePointer = from_stack_1
  loc_9E58C6: FLdPr Me
  loc_9E58C9: MemLdRfVar from_stack_1.global_52
  loc_9E58CC: NewIfNullPr clsmigracion
  loc_9E58CF: Call clsmigracion.ArreglaNumeCtctComercioCreditos()
  loc_9E58D4: LitI2_Byte 0
  loc_9E58D6: FLdPr Me
  loc_9E58D9: Me.MousePointer = from_stack_1
  loc_9E58DE: ExitProcHresult
End Sub

Private Sub MigraDeudadeComercioCmd_Click() '9E68F4
  'Data Table: 4DFF18
  loc_9E68D0: LitI2_Byte &HB
  loc_9E68D2: FLdPr Me
  loc_9E68D5: Me.MousePointer = from_stack_1
  loc_9E68DA: FLdPr Me
  loc_9E68DD: MemLdRfVar from_stack_1.global_52
  loc_9E68E0: NewIfNullPr clsmigracion
  loc_9E68E3: Call clsmigracion.MigraDeudadeComercio()
  loc_9E68E8: LitI2_Byte 0
  loc_9E68EA: FLdPr Me
  loc_9E68ED: Me.MousePointer = from_stack_1
  loc_9E68F2: ExitProcHresult
End Sub

Private Sub MigraComercioCmd_Click() '9E68A0
  'Data Table: 4DFF18
  loc_9E687C: LitI2_Byte &HB
  loc_9E687E: FLdPr Me
  loc_9E6881: Me.MousePointer = from_stack_1
  loc_9E6886: FLdPr Me
  loc_9E6889: MemLdRfVar from_stack_1.global_52
  loc_9E688C: NewIfNullPr clsmigracion
  loc_9E688F: Call clsmigracion.MigraComercio()
  loc_9E6894: LitI2_Byte 0
  loc_9E6896: FLdPr Me
  loc_9E6899: Me.MousePointer = from_stack_1
  loc_9E689E: ExitProcHresult
End Sub

Private Function Proc_144_34_9E5934() '9E5934
  'Data Table: 4DFF18
  loc_9E5910: LitI2_Byte &HB
  loc_9E5912: FLdPr Me
  loc_9E5915: Me.MousePointer = from_stack_1
  loc_9E591A: FLdPr Me
  loc_9E591D: MemLdRfVar from_stack_1.global_52
  loc_9E5920: NewIfNullPr clsmigracion
  loc_9E5923: Call clsmigracion.BorraGrupoActualizado()
  loc_9E5928: LitI2_Byte 0
  loc_9E592A: FLdPr Me
  loc_9E592D: Me.MousePointer = from_stack_1
  loc_9E5932: ExitProcHresult
End Function
