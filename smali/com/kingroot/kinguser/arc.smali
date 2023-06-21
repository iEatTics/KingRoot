.class public Lcom/kingroot/kinguser/arc;
.super Lcom/kingroot/kinguser/aqy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/aqy",
        "<",
        "Lcom/kingroot/kinguser/arr;",
        ">;"
    }
.end annotation


# instance fields
.field private aLK:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqy;-><init>()V

    .line 17
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/arc;->aLK:Ljava/lang/String;

    .line 18
    const-class v0, Lcom/kingroot/kinguser/arr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/arq;->a(Ljava/lang/Class;Z)Lcom/kingroot/kinguser/aqb;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/arr;

    iput-object v0, p0, Lcom/kingroot/kinguser/arc;->aLz:Lcom/kingroot/kinguser/arl;

    .line 19
    return-void
.end method


# virtual methods
.method public MK()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0xa

    return v0
.end method

.method public Nb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/arc;->aLK:Ljava/lang/String;

    return-object v0
.end method

.method public Nc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/arc;->aLK:Ljava/lang/String;

    return-object v0
.end method

.method public Nd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/arc;->aLK:Ljava/lang/String;

    return-object v0
.end method

.method public Nf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/arc;->aLK:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method
