.class Lcom/kingroot/kinguser/aeg$1$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aeg$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeS:Lcom/kingroot/kinguser/aeg$1$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aeg$1$1;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/kingroot/kinguser/aeg$1$1$3;->aeS:Lcom/kingroot/kinguser/aeg$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kingroot/kinguser/aeg$1$1$3;->aeS:Lcom/kingroot/kinguser/aeg$1$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/aeg$1$1;->aeR:Lcom/kingroot/kinguser/aeg$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/aeg$1;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/kingroot/kinguser/activitys/KUCommonSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lcom/kingroot/kinguser/aeg$1$1$3;->aeS:Lcom/kingroot/kinguser/aeg$1$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/aeg$1$1;->aeR:Lcom/kingroot/kinguser/aeg$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/aeg$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 238
    return-void
.end method
