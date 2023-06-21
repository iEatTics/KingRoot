.class Lcom/kingroot/kinguser/anl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ProgressWhell$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anl;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anl;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/kingroot/kinguser/anl$2;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 171
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/anl$2;->this$0:Lcom/kingroot/kinguser/anl;

    iget-object v0, v0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/anl$2;->this$0:Lcom/kingroot/kinguser/anl;

    iget-object v0, v0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    goto :goto_0
.end method
