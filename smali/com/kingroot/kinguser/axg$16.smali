.class Lcom/kingroot/kinguser/axg$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYv:Lcom/kingroot/kinguser/axg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axg;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/kingroot/kinguser/axg$16;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 416
    check-cast p1, Landroid/widget/TextView;

    .line 417
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/kingroot/kinguser/axg$16;->aYv:Lcom/kingroot/kinguser/axg;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bgc;->A(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 422
    return v4
.end method
