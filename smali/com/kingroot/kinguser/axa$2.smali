.class Lcom/kingroot/kinguser/axa$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axa;->be(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXc:Lcom/kingroot/kinguser/axa;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axa;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/kingroot/kinguser/axa$2;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 965
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 966
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->getRebootStat()Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    .line 967
    if-eqz v0, :cond_0

    .line 968
    iget v0, v0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    .line 971
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->et(I)V

    .line 972
    return-void
.end method
