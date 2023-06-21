.class Lcom/kingroot/kinguser/cfq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cci;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfq;->amB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cdx:Lcom/kingroot/kinguser/cfq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfq;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/kingroot/kinguser/cfq$1;->cdx:Lcom/kingroot/kinguser/cfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 83
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 86
    check-cast p5, Lcom/kingroot/kinguser/bd;

    .line 87
    iget-object v0, p5, Lcom/kingroot/kinguser/bd;->kj:Ljava/lang/String;

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/kingroot/kinguser/cfq$1;->cdx:Lcom/kingroot/kinguser/cfq;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/cfq;->a(Lcom/kingroot/kinguser/cfq;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/kingroot/kinguser/cfq$1;->cdx:Lcom/kingroot/kinguser/cfq;

    invoke-static {v1}, Lcom/kingroot/kinguser/cfq;->a(Lcom/kingroot/kinguser/cfq;)Lcom/kingroot/kinguser/cff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/ceu;->h(Ljava/lang/String;Z)V

    .line 92
    iget-object v1, p0, Lcom/kingroot/kinguser/cfq$1;->cdx:Lcom/kingroot/kinguser/cfq;

    invoke-static {v1}, Lcom/kingroot/kinguser/cfq;->a(Lcom/kingroot/kinguser/cfq;)Lcom/kingroot/kinguser/cff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/ceu;->i(Ljava/lang/String;Z)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfq$1;->cdx:Lcom/kingroot/kinguser/cfq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cfq;->a(Lcom/kingroot/kinguser/cfq;Z)Z

    .line 101
    return-void
.end method
