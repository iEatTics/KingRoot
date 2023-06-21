.class Lcom/kingroot/kinguser/axh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYH:Lcom/kingroot/kinguser/axh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axh;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kingroot/kinguser/axh$1;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$1;->aYH:Lcom/kingroot/kinguser/axh;

    iget-object v1, p0, Lcom/kingroot/kinguser/axh$1;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v1}, Lcom/kingroot/kinguser/axh;->a(Lcom/kingroot/kinguser/axh;)Lcom/kingroot/kinguser/aqa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aqa;->Mw()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axh;->a(Lcom/kingroot/kinguser/axh;Landroid/support/v7/widget/RecyclerView;)V

    .line 92
    return-void
.end method
