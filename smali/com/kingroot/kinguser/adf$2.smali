.class Lcom/kingroot/kinguser/adf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/adf;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic acq:Lcom/kingroot/kinguser/adf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adf;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kingroot/kinguser/adf$2;->acq:Lcom/kingroot/kinguser/adf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/adf$2;->acq:Lcom/kingroot/kinguser/adf;

    invoke-static {v0}, Lcom/kingroot/kinguser/adf;->b(Lcom/kingroot/kinguser/adf;)Lcom/kingroot/kinguser/adf$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/adf$2;->acq:Lcom/kingroot/kinguser/adf;

    invoke-static {v0}, Lcom/kingroot/kinguser/adf;->b(Lcom/kingroot/kinguser/adf;)Lcom/kingroot/kinguser/adf$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/adf$b;->m(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/adf$2;->acq:Lcom/kingroot/kinguser/adf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adf;->dismiss()V

    goto :goto_0
.end method
