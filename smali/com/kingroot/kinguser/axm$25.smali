.class Lcom/kingroot/kinguser/axm$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$25;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$25;->this$0:Lcom/kingroot/kinguser/axm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axm;->a(Lcom/kingroot/kinguser/axm;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 393
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axm$25;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v1}, Lcom/kingroot/kinguser/axm;->g(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bannerId:J

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->ax(J)V

    .line 394
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->aw(J)V

    .line 395
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18964

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 396
    return-void
.end method
