.class Lcom/kingroot/kinguser/axm$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic baq:Lcom/kingroot/kinguser/axm$22;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm$22;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$22$1;->baq:Lcom/kingroot/kinguser/axm$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 337
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingroot/kinguser/axm$22$1;->baq:Lcom/kingroot/kinguser/axm$22;

    iget-object v2, v2, Lcom/kingroot/kinguser/axm$22;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v2}, Lcom/kingroot/kinguser/axm;->f(Lcom/kingroot/kinguser/axm;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bwl;->a(Landroid/content/Context;ILandroid/view/View;)Z

    .line 338
    return-void
.end method
