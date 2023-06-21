.class Lcom/kingroot/kinguser/anu$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 226
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$16;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$16;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->JR()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->aB(J)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$16;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->c(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/auf$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$16;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/anu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auf$a;->j(Landroid/app/Activity;)V

    .line 234
    return-void
.end method
