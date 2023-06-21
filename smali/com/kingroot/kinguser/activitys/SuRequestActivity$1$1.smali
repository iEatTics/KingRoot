.class Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aje:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

.field final synthetic ajf:Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;->ajf:Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;->aje:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;->ajf:Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;->ajf:Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    new-instance v1, Lcom/kingroot/kinguser/bik;

    iget-object v2, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;->ajf:Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    const v3, 0x7f0d0070

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/bik;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->a(Lcom/kingroot/kinguser/activitys/SuRequestActivity;Lcom/kingroot/kinguser/bik;)Lcom/kingroot/kinguser/bik;

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;->ajf:Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->b(Lcom/kingroot/kinguser/activitys/SuRequestActivity;)Lcom/kingroot/kinguser/bik;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;->ajf:Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bik;->a(Lcom/kingroot/kinguser/bik$a;)V

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;->ajf:Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->b(Lcom/kingroot/kinguser/activitys/SuRequestActivity;)Lcom/kingroot/kinguser/bik;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;->aje:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bik;->i(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1$1;->ajf:Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;->ajd:Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->b(Lcom/kingroot/kinguser/activitys/SuRequestActivity;)Lcom/kingroot/kinguser/bik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bik;->show()V

    goto :goto_0
.end method
