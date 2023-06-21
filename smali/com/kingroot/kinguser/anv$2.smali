.class Lcom/kingroot/kinguser/anv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ProgressWhell$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anv;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEs:Lcom/kingroot/kinguser/anv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anv;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kingroot/kinguser/anv$2;->aEs:Lcom/kingroot/kinguser/anv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 109
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$2;->aEs:Lcom/kingroot/kinguser/anv;

    invoke-static {v0}, Lcom/kingroot/kinguser/anv;->a(Lcom/kingroot/kinguser/anv;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/anv$2;->aEs:Lcom/kingroot/kinguser/anv;

    invoke-static {v0}, Lcom/kingroot/kinguser/anv;->a(Lcom/kingroot/kinguser/anv;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    goto :goto_0
.end method
