.class Lcom/kingroot/kinguser/cfq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cci;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfq;->L(IZ)V
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
    .line 126
    iput-object p1, p0, Lcom/kingroot/kinguser/cfq$2;->cdx:Lcom/kingroot/kinguser/cfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 129
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 132
    check-cast p5, Lcom/kingroot/kinguser/be;

    .line 133
    iget-object v0, p5, Lcom/kingroot/kinguser/be;->kj:Ljava/lang/String;

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/kingroot/kinguser/cfq$2;->cdx:Lcom/kingroot/kinguser/cfq;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/cfq;->a(Lcom/kingroot/kinguser/cfq;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/kingroot/kinguser/cfq$2;->cdx:Lcom/kingroot/kinguser/cfq;

    invoke-static {v1}, Lcom/kingroot/kinguser/cfq;->a(Lcom/kingroot/kinguser/cfq;)Lcom/kingroot/kinguser/cff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/ceu;->h(Ljava/lang/String;Z)V

    .line 138
    iget-object v1, p0, Lcom/kingroot/kinguser/cfq$2;->cdx:Lcom/kingroot/kinguser/cfq;

    invoke-static {v1}, Lcom/kingroot/kinguser/cfq;->a(Lcom/kingroot/kinguser/cfq;)Lcom/kingroot/kinguser/cff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/ceu;->i(Ljava/lang/String;Z)V

    .line 146
    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/cfd;->alE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vid is empty: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
