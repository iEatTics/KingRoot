.class Lcom/kingroot/kinguser/anu$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ProgressWhell$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$19;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 261
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$19;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->e(Lcom/kingroot/kinguser/anu;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$19;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->e(Lcom/kingroot/kinguser/anu;)Lcom/kingcore/uilib/ProgressWhell;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    goto :goto_0
.end method
