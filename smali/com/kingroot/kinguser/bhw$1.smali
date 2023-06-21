.class Lcom/kingroot/kinguser/bhw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhw;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bsc:Lcom/kingroot/kinguser/bhw;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bhw;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/bhw$1;->bsc:Lcom/kingroot/kinguser/bhw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/bhw$1;->bsc:Lcom/kingroot/kinguser/bhw;

    invoke-static {v0}, Lcom/kingroot/kinguser/bhw;->a(Lcom/kingroot/kinguser/bhw;)Lcom/kingroot/kinguser/bhw$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bhw$1;->bsc:Lcom/kingroot/kinguser/bhw;

    invoke-static {v0}, Lcom/kingroot/kinguser/bhw;->a(Lcom/kingroot/kinguser/bhw;)Lcom/kingroot/kinguser/bhw$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bhw$a;->F(Landroid/view/View;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bhw$1;->bsc:Lcom/kingroot/kinguser/bhw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bhw;->dismiss()V

    .line 48
    return-void
.end method
