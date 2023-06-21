.class public final Lcom/kingroot/kinguser/pt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fileName:Ljava/lang/String;

.field public mf:Ljava/lang/String;

.field public pi:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public zd:I

.field public ze:Ljava/lang/String;

.field public zf:I

.field public zg:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/pt;->url:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/kingroot/kinguser/pt;->zd:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/pt;->mf:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/pt;->ze:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/pt;->pi:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/pt;->fileName:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/kingroot/kinguser/pt;->zf:I

    .line 17
    iput v1, p0, Lcom/kingroot/kinguser/pt;->zg:I

    return-void
.end method
