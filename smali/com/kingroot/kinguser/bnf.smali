.class public final Lcom/kingroot/kinguser/bnf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bCQ:[Lcom/kingroot/kinguser/bnf;

.field public static final bCT:Lcom/kingroot/kinguser/bnf;


# instance fields
.field private bCR:I

.field private bCS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 9
    const-class v0, Lcom/kingroot/kinguser/bnf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    .line 11
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/kingroot/kinguser/bnf;

    sput-object v0, Lcom/kingroot/kinguser/bnf;->bCQ:[Lcom/kingroot/kinguser/bnf;

    .line 16
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const-string v1, "ESP_NONE"

    invoke-direct {v0, v2, v2, v1}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 18
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/4 v1, 0x1

    const/16 v2, 0x65

    const-string v3, "ESP_Symbian_V3"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 20
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/4 v1, 0x2

    const/16 v2, 0x66

    const-string v3, "ESP_Symbian_V5"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 22
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/4 v1, 0x3

    const/16 v2, 0x67

    const-string v3, "ESP_Symbian_V2"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 24
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/4 v1, 0x4

    const/16 v2, 0x68

    const-string v3, "ESP_Symbian_3"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 26
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/4 v1, 0x5

    const/16 v2, 0xc9

    const-string v3, "ESP_Android_General"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/kingroot/kinguser/bnf;->bCT:Lcom/kingroot/kinguser/bnf;

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/4 v1, 0x6

    const/16 v2, 0xca

    const-string v3, "ESP_Android_Pad"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/4 v1, 0x7

    const/16 v2, 0xcb

    const-string v3, "ESP_Android_HD"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 32
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0x8

    const/16 v2, 0x12d

    const-string v3, "ESP_Iphone_General"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0x9

    const/16 v2, 0x12e

    const-string v3, "ESP_Ipad"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0xa

    const/16 v2, 0x12f

    const-string v3, "ESP_Ipod"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 38
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0xb

    const/16 v2, 0x191

    const-string v3, "ESP_Kjava_General"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 40
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0xc

    const/16 v2, 0x192

    const-string v3, "ESP_NK_Kjava_General"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 42
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0xd

    const/16 v2, 0x1f5

    const-string v3, "ESP_Server_General"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 44
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0xe

    const/16 v2, 0x259

    const-string v3, "ESP_WinPhone_General"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0xf

    const/16 v2, 0x25a

    const-string v3, "ESP_WinPhone_Tablet"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 48
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0x10

    const/16 v2, 0x2bd

    const-string v3, "ESP_MTK_General"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 50
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0x11

    const/16 v2, 0x321

    const-string v3, "ESP_BB_General"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 52
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0x12

    const/16 v2, 0x385

    const-string v3, "ESP_PC_WindowsGeneral"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    .line 54
    new-instance v0, Lcom/kingroot/kinguser/bnf;

    const/16 v1, 0x13

    const/16 v2, 0x386

    const-string v3, "ESP_END"

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnf;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bnf;->bCS:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/kingroot/kinguser/bnf;->bCS:Ljava/lang/String;

    .line 95
    iput p2, p0, Lcom/kingroot/kinguser/bnf;->bCR:I

    .line 96
    sget-object v0, Lcom/kingroot/kinguser/bnf;->bCQ:[Lcom/kingroot/kinguser/bnf;

    aput-object p0, v0, p1

    .line 97
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/bnf;->bCS:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/kingroot/kinguser/bnf;->bCR:I

    return v0
.end method
