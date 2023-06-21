.class final Lcom/kingroot/kinguser/anf$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aAA:Ljava/util/List;

.field final synthetic aAB:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

.field final synthetic aAC:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

.field final synthetic ahp:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/kingroot/kinguser/anf$1;->ahp:Ljava/util/List;

    iput-object p2, p0, Lcom/kingroot/kinguser/anf$1;->aAA:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/anf$1;->aAB:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    iput-object p4, p0, Lcom/kingroot/kinguser/anf$1;->aAC:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/kingroot/kinguser/anf$1;->ahp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 412
    iget-object v2, p0, Lcom/kingroot/kinguser/anf$1;->aAA:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/anf$1;->aAB:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    invoke-virtual {v2, v0, v3}, Lcom/kingroot/kinguser/amz;->a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 417
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/anf$1;->aAC:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    invoke-virtual {v2, v0, v3}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0

    .line 420
    :cond_1
    return-void
.end method
