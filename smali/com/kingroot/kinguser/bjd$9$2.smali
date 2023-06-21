.class Lcom/kingroot/kinguser/bjd$9$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd$9;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwp:Lcom/kingroot/kinguser/bjd$9;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd$9;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$9$2;->bwp:Lcom/kingroot/kinguser/bjd$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9$2;->bwp:Lcom/kingroot/kinguser/bjd$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjd$9;->bwl:Lcom/kingroot/common/uilib/KBaseListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/KBaseListView;->setEnabled(Z)V

    .line 747
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9$2;->bwp:Lcom/kingroot/kinguser/bjd$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->e(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/kinguser/bjd$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$9$2;->bwp:Lcom/kingroot/kinguser/bjd$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjd$9;->bwa:Lcom/kingroot/kinguser/bjd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjd;->e(Lcom/kingroot/kinguser/bjd;)Lcom/kingroot/kinguser/bjd$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjd$9$2;->bwp:Lcom/kingroot/kinguser/bjd$9;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjd$9;->bwo:Lcom/kingroot/kinguser/bji;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bjd$b;->e(Lcom/kingroot/kinguser/bji;)V

    .line 750
    :cond_0
    return-void
.end method
