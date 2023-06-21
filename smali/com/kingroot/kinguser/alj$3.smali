.class Lcom/kingroot/kinguser/alj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alj;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axi:Lcom/kingroot/kinguser/alj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alj;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$3;->axi:Lcom/kingroot/kinguser/alj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    const-string v1, "key_click_btn_from_app_update_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    iget-object v1, p0, Lcom/kingroot/kinguser/alj$3;->axi:Lcom/kingroot/kinguser/alj;

    invoke-static {v1}, Lcom/kingroot/kinguser/alj;->b(Lcom/kingroot/kinguser/alj;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 441
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sO()V

    .line 442
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18974

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 443
    return-void
.end method
