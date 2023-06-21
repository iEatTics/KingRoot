.class Lcom/kingroot/kinguser/atx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/atw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atx;->jh(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aQM:Lcom/kingroot/kinguser/atx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atx;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kingroot/kinguser/atx$1;->aQM:Lcom/kingroot/kinguser/atx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PC()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/atx$1;->aQM:Lcom/kingroot/kinguser/atx;

    invoke-static {v0}, Lcom/kingroot/kinguser/atx;->b(Lcom/kingroot/kinguser/atx;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atx$1;->aQM:Lcom/kingroot/kinguser/atx;

    invoke-static {v1}, Lcom/kingroot/kinguser/atx;->a(Lcom/kingroot/kinguser/atx;)Lcom/kingroot/kinguser/atw;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/atx$1;->aQM:Lcom/kingroot/kinguser/atx;

    invoke-static {v0}, Lcom/kingroot/kinguser/atx;->c(Lcom/kingroot/kinguser/atx;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/atx$1;->aQM:Lcom/kingroot/kinguser/atx;

    invoke-static {v0}, Lcom/kingroot/kinguser/atx;->c(Lcom/kingroot/kinguser/atx;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 55
    :cond_0
    return-void
.end method
