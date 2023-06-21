.class Lcom/kingroot/kinguser/bfk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bwh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfk;->aaf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmQ:Lcom/kingroot/kinguser/bfk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfk;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/kingroot/kinguser/bfk$4;->bmQ:Lcom/kingroot/kinguser/bfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/byi;)Lcom/kingroot/kinguser/byq;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/bfk$4;->bmQ:Lcom/kingroot/kinguser/bfk;

    new-instance v1, Lcom/kingroot/kinguser/byq;

    invoke-direct {v1}, Lcom/kingroot/kinguser/byq;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/kingroot/kinguser/bfk;->a(Lcom/kingroot/kinguser/bfk;ILcom/kingroot/kinguser/byi;Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byq;

    .line 165
    iget-object v1, v0, Lcom/kingroot/kinguser/byq;->bUG:Lcom/kingroot/kinguser/byo;

    if-eqz v1, :cond_0

    .line 168
    :cond_0
    return-object v0
.end method

.method public b(ILcom/kingroot/kinguser/byi;)Lcom/kingroot/kinguser/byp;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/bfk$4;->bmQ:Lcom/kingroot/kinguser/bfk;

    new-instance v1, Lcom/kingroot/kinguser/byp;

    invoke-direct {v1}, Lcom/kingroot/kinguser/byp;-><init>()V

    invoke-static {v0, p1, p2, v1}, Lcom/kingroot/kinguser/bfk;->a(Lcom/kingroot/kinguser/bfk;ILcom/kingroot/kinguser/byi;Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byp;

    .line 175
    return-object v0
.end method

.method public onError(I)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method
